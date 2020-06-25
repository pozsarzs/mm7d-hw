// +---------------------------------------------------------------------------+
// | MM7D v0.1 * Air quality measuring device                                  |
// | Copyright (C) 2020 Pozsár Zsolt <pozsar.zsolt@szerafingomba.hu>           |
// | mm7d.ino                                                                  |
// | Program for ESP8266 Huzzah Breakout                                       |
// +---------------------------------------------------------------------------+

//   This program is free software: you can redistribute it and/or modify it
// under the terms of the European Union Public License 1.1 version.
//
//   This program is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
// FOR A PARTICULAR PURPOSE.

#include <DHT.h>
#include <ESP8266WebServer.h>
#include <ESP8266WiFi.h>
#include <WiFiClient.h>

#define TYP_SENSOR1 DHT11

// settings
const String loc_id       = "TH11";
const char* wifi_ssid     = "SzerafinGomba";
const char* wifi_password = "halacskamacska";
const String www_username = "username";
const String www_password = "password";

// GPIO ports
const int prt_led_act     = 2;
const int prt_relay       = 0;
const int prt_sensor1     = 12;
const int prt_sensor2     = 0;

// messages
const String msg01        = "MM7D v0.1 * Air quality measuring device";
const String msg02        = "(C) 2020 Pozsar Zsolt";
const String msg03        = "pozsar.zsolt@szerafingomba.hu";
const String msg04        = "http://www.szerafingomba.hu/equipments/";
const String msg05        = "* Initializing GPIO ports...";
const String msg06        = "* Initializing sensors...";
const String msg07        = "* Connecting to wireless network";
const String msg08        = "OK";
const String msg09        = "  my IP address:      ";
const String msg10        = "  subnet mask:        ";
const String msg11        = "  gateway IP address: ";
const String msg12        = "* Starting webserver...";
const String msg13        = "* HTTP request received.";
const String msg14        = "* E01: Failed to read CO2 sensor!";
const String msg15        = "* E02: Failed to read T/RH sensor!";
const String msg16        = "* Resetting T/RH sensor...";
const String msg17        = "Authentication error!";
const String msg18        = "* E03: Authentication error!";

// general constants
const int maxadcvalue     = 1024;
const long interval       = 2000;

// variables
float humidity, temperature, unwantedgaslevel;
int adcvalue              = 0;
String line;
String localipaddress;
unsigned long prevtime1   = 0;
unsigned long prevtime2   = 0;

DHT dht(prt_sensor1, TYP_SENSOR1, 11);
ESP8266WebServer server(80);

// initializing function
void setup(void)
{
  // setting serial port
  Serial.begin(115200);
  Serial.println("");
  Serial.println("");
  Serial.println(msg01);
  Serial.println(msg02 + " <" + msg03 + ">");
  // initializing ports
  Serial.print(msg05);
  pinMode(prt_led_act, OUTPUT);
  pinMode(prt_relay, OUTPUT);
  digitalWrite(prt_led_act, LOW);
  digitalWrite(prt_relay, LOW);
  Serial.println(msg08);
  // initializing sensors
  Serial.print(msg06);
  dht.begin();
  Serial.println(msg08);
  // connect to wireless network
  Serial.print(msg07);
  WiFi.begin(wifi_ssid, wifi_password);
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(300);
    Serial.print(".");
  }
  Serial.println(msg08);
  localipaddress = WiFi.localIP().toString();
  Serial.println(msg09 + localipaddress);
  Serial.println(msg10 + WiFi.subnetMask().toString());
  Serial.println(msg11 + WiFi.gatewayIP().toString());
  // start webserver
  Serial.print(msg12);
  server.on("/", []()
  {
    Serial.println(msg13);
    blinkactled();
    line = "<html><head><title>" + msg01 + "</title></head>"
           "<body><b>" + msg01 + "</b>""<br>" + msg02 + " <a href=\"mailto:" + msg03 + "\">" + msg03 + "</a><br>"
           "Homepage: <a href=\"" + msg04 + "\">" + msg04 + "</a><br><br>"
           "Location: " + loc_id + "<br>"
           "<hr><b>Plain text data pages:</b><br><br>"
           "<table border=\"0\" cellpadding=\"5\">"
           "<tr><td><a href=\"http://" + localipaddress + "/get/all\">http://" + localipaddress + "/get/all</a></td><td>All data with location ID</td></tr>"
           "<tr><td><a href=\"http://" + localipaddress + "/get/unwantedgaslevel\">http://" + localipaddress + "/get/unwantedgaslevel</a></td><td>Relative level of unwanted gases in %</td></tr>"
           "<tr><td><a href=\"http://" + localipaddress + "/get/humidity\">http://" + localipaddress + "/get/humidity</a></td><td>Relative humidity in %</td></tr>"
           "<tr><td><a href=\"http://" + localipaddress + "/get/temperature\">http://" + localipaddress + "/get/temperature</a></td><td>Temperature in &deg;C</td></tr>"
           "</table><br>Use <i>username</i> and <i>password</i> arguments!<br><body></html>";
    server.send(200, "text/html", line);
    delay(100);
  });
  server.on("/get/all", []()
  {
    Serial.println(msg13);
    blinkactled();
    if (checkusernameandpassword() == 1)
    {
      getunwantedgaslevel();
      gettemphum();
      line = loc_id + "\n" + String((int)unwantedgaslevel) + "\n" + String((int)humidity) + "\n" + String((int)temperature);
      server.send(200, "text/plain", line);
    } else
    {
      server.send(401, "text/plain", msg17);
      Serial.println(msg18);
    }
  });
  server.on("/get/unwantedgaslevel", []()
  {
    Serial.println(msg13);
    blinkactled();
    if (checkusernameandpassword() == 1)
    {
    getunwantedgaslevel();
    line = String((int)unwantedgaslevel);
    server.send(200, "text/plain", line);
  } else
    {
      server.send(401, "text/plain", msg17);
      Serial.println(msg18);
    }
  });
  server.on("/get/humidity", []()
  {
    Serial.println(msg13);
    blinkactled();
    if (checkusernameandpassword() == 1)
    {
    gettemphum();
    line = String((int)humidity);
    server.send(200, "text/plain", line);
  } else
    {
      server.send(401, "text/plain", msg17);
      Serial.println(msg18);
    }
  });
  server.on("/get/temperature", []()
  {
    Serial.println(msg13);
    blinkactled();
    if (checkusernameandpassword() == 1)
    {
    gettemphum();
    line = String((int)temperature);
    server.send(200, "text/plain", line);
  } else
    {
      server.send(401, "text/plain", msg17);
      Serial.println(msg18);
    }
  });
  server.begin();
  Serial.println(msg08);
}

// loop function
void loop(void)
{
  server.handleClient();
}

// blink blue "ACT" LED
void blinkactled()
{
  digitalWrite(prt_led_act, HIGH);
  delay(500);
  digitalWrite(prt_led_act, LOW);
}

// get air quality
void getunwantedgaslevel()
{
  unsigned long currtime1 = millis();
  if (currtime1 - prevtime1 >= interval)
  {
    prevtime1 = currtime1;
    adcvalue = analogRead(prt_sensor2);
    unwantedgaslevel = adcvalue / (maxadcvalue / 100);
    if (unwantedgaslevel > 100)
    {
      Serial.println(msg14);
      unwantedgaslevel = 999;
      return;
    }
  }
}

// get temperature and relative humidity
void gettemphum()
{
  unsigned long currtime2 = millis();
  if (currtime2 - prevtime2 >= interval)
  {
    prevtime2 = currtime2;
    humidity = dht.readHumidity();
    temperature = dht.readTemperature(false);
    if (isnan(humidity) || isnan(temperature))
    {
      Serial.println(msg15);
      Serial.print(msg16);
      digitalWrite(prt_relay, HIGH);
      delay(1000);
      Serial.println(msg16);
      digitalWrite(prt_relay, LOW);
      Serial.println(msg08);
      temperature = 999;
      humidity = 999;
      return;
    }
  }
}

// authentication
int checkusernameandpassword()
{
  if (server.arg("username") == www_username && server.arg("password") == www_password)
  {
    return 1;
  } else
  {
    return 0;
  }
}
