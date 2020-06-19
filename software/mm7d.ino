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

#define LOC_ID "TH11"
#define DEV_INFO1 "MM7D v0.1 * Air quality measuring device"
#define DEV_INFO2 "(C) 2020 Pozsár Zsolt"
#define DEV_INFO3 "pozsar.zsolt@szerafingomba.hu"
#define DEV_INFO4 "http://www.szerafingomba.hu/equipments/"
#define TYP_SENSOR1 DHT11

// constanst
const char* wifi_ssid     = "";
const char* wifi_password = "";
const int   prt_led_act   = 2;
const int   prt_relay     = 0;
const int   prt_sensor1   = 12;

// variables
float humidity, temperature, co2level;
String line;
String localipaddress;
unsigned long prevtime1 = 0;
unsigned long prevtime2 = 0;
const long interval = 2000;

DHT dht(prt_sensor1,TYP_SENSOR1,11);
ESP8266WebServer server(80);

void setup(void)
{
  // initializing ports
  pinMode(prt_led_act,OUTPUT);
  pinMode(prt_relay,OUTPUT);
  digitalWrite(prt_led_act,LOW);
  digitalWrite(prt_relay,LOW);
  // initializing sensors
  dht.begin();
  // setting serial port
  Serial.begin(115200);
  Serial.println("");
  Serial.println("");
  Serial.println(DEV_INFO1);
  Serial.println(DEV_INFO2 " <" DEV_INFO3 ">");
  // connect to wireless network
  Serial.print("* Connecting to wireless network");
  WiFi.begin(wifi_ssid,wifi_password);
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(300);
    Serial.print(".");
  }
  Serial.println("connected.");
  localipaddress=WiFi.localIP().toString();
  Serial.println("* IP address: "+localipaddress);
  // start webserver
  server.on("/",[]()
  {
    Serial.println("* HTTP request received.");
    blinkactled();
    line="<html><head><title>" DEV_INFO1 "</title></head>"
    "<body><b>" DEV_INFO1 "</b>""<br>" DEV_INFO2 " <a href=\"mailto:" DEV_INFO3 "\">" DEV_INFO3 "</a><br>"
         "Homepage: <a href=\"" DEV_INFO4 "\">" DEV_INFO4 "</a><br><br>"
         "Location: " LOC_ID "<br>"
         "<hr><b>Plain text data pages:</b><br><br>"
         "<table border=\"0\" cellpadding=\"5\">"
         "<tr><td><a href=\"http://"+localipaddress+"/all\">http://"+localipaddress+"/all</a></td><td>All data with location ID</td></tr>"
         "<tr><td><a href=\"http://"+localipaddress+"/co2level\">http://"+localipaddress+"/co2level</a></td><td>CO<sub>2</sub> level</td></tr>"
         "<tr><td><a href=\"http://"+localipaddress+"/humidity\">http://"+localipaddress+"/humidity</a></td><td>Relative humidity in %</td></tr>"
         "<tr><td><a href=\"http://"+localipaddress+"/temperature\">http://"+localipaddress+"/temperature</a></td><td>Temperature in &deg;C</td></tr>"
         "</table><body></html>";
    server.send(200,"text/html",line);
    delay(100);
  });
  server.on("/all", []()
  {
    Serial.println("* HTTP request received.");
    blinkactled();
    getco2level();
    gettemphum();
    line=LOC_ID "\n"+String((int)co2level)+"\n"+String((int)humidity)+"\n"+String((int)temperature);
    server.send(200,"text/plain",line);
  });
  server.on("/co2level", []()
  {
    Serial.println("* HTTP request received.");
    blinkactled();
    getco2level();
    line=String((int)co2level);
    server.send(200,"text/plain",line);
  });
  server.on("/humidity", []()
  {
    Serial.println("* HTTP request received.");
    blinkactled();
    gettemphum();
    line=String((int)humidity);
    server.send(200,"text/plain",line);
  });
  server.on("/temperature",[]()
  {
    blinkactled();
    gettemphum();
    line=String((int)temperature);
    server.send(200,"text/plain",line);
  });
  server.begin();
  Serial.println("* Webserver started.");
}

void loop(void)
{
  server.handleClient();
}

void blinkactled()
{
  digitalWrite(prt_led_act,HIGH);
  delay(500);
  digitalWrite(prt_led_act,LOW);
}

void getco2level()
{
  unsigned long currtime1=millis();
  if(currtime1-prevtime1>=interval)
  {
    prevtime1=currtime1;
    Serial.println("* E01: Failed to read CO2 sensor!");
    co2level=999;
    return;
  }
}

void gettemphum()
{
  unsigned long currtime2=millis();
  if(currtime2-prevtime2>=interval)
  {
    prevtime2=currtime2;
    humidity=dht.readHumidity();
    temperature=dht.readTemperature(false);
    if (isnan(humidity) || isnan(temperature))
    {
      Serial.println("* E02: Failed to read T/RH sensor!");
      digitalWrite(prt_relay,HIGH);
      delay(1000);
      Serial.println("* Resetting T/RH sensor!");
      digitalWrite(prt_relay,LOW);
      temperature=999;
      humidity=999;
      return;
    }
  }
}
