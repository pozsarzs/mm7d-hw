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
const String loc_id         = "TH11";
const char* wifi_ssid       = "SzerafinGomba";
const char* wifi_password   = "halacskamacska";
const String www_username   = "username";
const String www_password   = "password";
const String allowedaddress = "192.168.1.11";

// GPIO ports
const int prt_buzzer        = 14;
const int prt_led_blue      = 2;
const int prt_led_green     = 0;
const int prt_led_red       = 4;
const int prt_led_yellow    = 5;
const int prt_sensor1       = 12;
// ADC input
const int prt_sensor2       = 0;

// messages
const String msg01          = "MM7D v0.1 * Air quality measuring device";
const String msg02          = "(C) 2020 Pozsar Zsolt";
const String msg03          = "pozsar.zsolt@szerafingomba.hu";
const String msg04          = "http://www.szerafingomba.hu/equipments/";
const String msg05          = "* Initializing GPIO ports...";
const String msg06          = "* Initializing sensors...";
const String msg07          = "* Connecting to wireless network";
const String msg08          = "done.";
const String msg09          = "  my IP address:      ";
const String msg10          = "  subnet mask:        ";
const String msg11          = "  gateway IP address: ";
const String msg12          = "* Starting webserver...";
const String msg13          = "* HTTP request received from: ";
const String msg14          = "* E01: Failed to read CO2 sensor!";
const String msg15          = "* E02: Failed to read T/RH sensor!";
const String msg16          = "";
const String msg17          = "Authentication error!";
const String msg18          = "* E03: Authentication error!";
const String msg19          = "Not allowed client IP address!";
const String msg20          = "* E04: Not allowed client IP address!";
const String msg21          = "* Green";
const String msg22          = "* Red";
const String msg23          = "* Yellow";
const String msg24          = " LED is switched ";
const String msg25          = "on.";
const String msg26          = "off.";
const String msg27          = "Done.";

// general constants
const int maxadcvalue       = 1024;
const long interval         = 2000;

// variables
float humidity, temperature, unwantedgaslevel;
int adcvalue                = 0;
String clientaddress;
String line;
String localipaddress;
unsigned long prevtime1     = 0;
unsigned long prevtime2     = 0;

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
  pinMode(prt_buzzer, OUTPUT);
  pinMode(prt_led_blue, OUTPUT);
  pinMode(prt_led_green, OUTPUT);
  pinMode(prt_led_red, OUTPUT);
  pinMode(prt_led_yellow, OUTPUT);
  digitalWrite(prt_led_blue, LOW);
  digitalWrite(prt_led_green, LOW);
  digitalWrite(prt_led_red, LOW);
  digitalWrite(prt_led_yellow, LOW);
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
    Serial.println(msg13 + server.client().remoteIP().toString() + ".");
    blinkblueled();
    line = "<html><head><title>" + msg01 + "</title></head>"
           "<body bgcolor=\"#e2f4fd\"><h2>" + msg01 + "</h2>""<br>" + msg02 + " <a href=\"mailto:" + msg03 + "\">" + msg03 + "</a><br>"
           "Homepage: <a href=\"" + msg04 + "\">" + msg04 + "</a><br><br>"
           "Location: " + loc_id + "<br>"
           "<hr><h3>Plain text data and control pages:</h3><br><br>"
           "<table border=\"0\" cellpadding=\"5\">"
           "<tr><td><a href=\"http://" + localipaddress + "/get/all\">http://" + localipaddress + "/get/all</a></td><td>Get all data with location ID</td></tr>"
           "<tr><td><a href=\"http://" + localipaddress + "/get/unwantedgaslevel\">http://" + localipaddress + "/get/unwantedgaslevel</a></td><td>Get relative level of unwanted gases in %</td></tr>"
           "<tr><td><a href=\"http://" + localipaddress + "/get/humidity\">http://" + localipaddress + "/get/humidity</a></td><td>Get relative humidity in %</td></tr>"
           "<tr><td><a href=\"http://" + localipaddress + "/get/temperature\">http://" + localipaddress + "/get/temperature</a></td><td>Get temperature in &deg;C</td></tr>"
           "<tr><td><a href=\"http://" + localipaddress + "/set/all/off\">http://" + localipaddress + "/set/all/off</a></td><td>Switch off all LEDs</td></tr>"
           "<tr><td><a href=\"http://" + localipaddress + "/set/greenled/off\">http://" + localipaddress + "/set/greenled/off</a></td><td>Switch off green LED</td></tr>"
           "<tr><td><a href=\"http://" + localipaddress + "/set/greenled/on\">http://" + localipaddress + "/set/greenled/on</a></td><td>Switch on green LED</td></tr>"
           "<tr><td><a href=\"http://" + localipaddress + "/set/redled/off\">http://" + localipaddress + "/set/redled/off</a></td><td>Switch off red LED</td></tr>"
           "<tr><td><a href=\"http://" + localipaddress + "/set/redled/on\">http://" + localipaddress + "/set/redled/on</a></td><td>Switch on red LED</td></tr>"
           "<tr><td><a href=\"http://" + localipaddress + "/set/yellowled/off\">http://" + localipaddress + "/set/yellowled/off</a></td><td>Switch off yellow LED</td></tr>"
           "<tr><td><a href=\"http://" + localipaddress + "/set/yellowled/on\">http://" + localipaddress + "/set/yellowled/on</a></td><td>Switch on yellow LED</td></tr>"
           "</table><br>Use <i>username</i> and <i>password</i> arguments!<br><body></html>";
    server.send(200, "text/html", line);
    delay(100);
  });
  server.on("/get/all", []()
  {
    blinkblueled();
    clientaddress = server.client().remoteIP().toString();
    Serial.println(msg13 + clientaddress + ".");
    if (clientaddress == allowedaddress)
    {
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
    } else
    {
      server.send(401, "text/plain", msg19);
      beep();
      beep();
      beep();
      Serial.println(msg20);
    }
  });
  server.on("/get/unwantedgaslevel", []()
  {
    clientaddress = server.client().remoteIP().toString();
    Serial.println(msg13 + clientaddress + ".");
    if (clientaddress == allowedaddress)
    {
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
    } else
    {
      server.send(401, "text/plain", msg19);
      beep();
      beep();
      beep();
      Serial.println(msg20);
    }
  });
  server.on("/get/humidity", []()
  {
    clientaddress = server.client().remoteIP().toString();
    Serial.println(msg13 + clientaddress + ".");
    if (clientaddress == allowedaddress)
    {
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
    } else
    {
      server.send(401, "text/plain", msg19);
      beep();
      beep();
      beep();
      Serial.println(msg20);
    }
  });
  server.on("/get/temperature", []()
  {
    clientaddress = server.client().remoteIP().toString();
    Serial.println(msg13 + clientaddress + ".");
    if (clientaddress == allowedaddress)
    {
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
    } else
    {
      server.send(401, "text/plain", msg19);
      beep();
      beep();
      beep();
      Serial.println(msg20);
    }
  });
  server.on("/set/all/off", []()
  {
    blinkblueled();
    clientaddress = server.client().remoteIP().toString();
    Serial.println(msg13 + clientaddress + ".");
    if (clientaddress == allowedaddress)
    {
      if (checkusernameandpassword() == 1)
      {
        greenled(0);
        redled(0);
        yellowled(0);
        server.send(200, "text/plain", msg27);
      } else
      {
        server.send(401, "text/plain", msg17);
        Serial.println(msg18);
      }
    } else
    {
      server.send(401, "text/plain", msg19);
      beep();
      beep();
      beep();
      Serial.println(msg20);
    }
  });
  server.on("/set/greenled/off", []()
  {
    blinkblueled();
    clientaddress = server.client().remoteIP().toString();
    Serial.println(msg13 + clientaddress + ".");
    if (clientaddress == allowedaddress)
    {
      if (checkusernameandpassword() == 1)
      {
        greenled(0);
        server.send(200, "text/plain", msg27);
      } else
      {
        server.send(401, "text/plain", msg17);
        Serial.println(msg18);
      }
    } else
    {
      server.send(401, "text/plain", msg19);
      beep();
      beep();
      beep();
      Serial.println(msg20);
    }
  });
  server.on("/set/greenled/on", []()
  {
    blinkblueled();
    clientaddress = server.client().remoteIP().toString();
    Serial.println(msg13 + clientaddress + ".");
    if (clientaddress == allowedaddress)
    {
      if (checkusernameandpassword() == 1)
      {
        greenled(1);
        server.send(200, "text/plain", msg27);
      } else
      {
        server.send(401, "text/plain", msg17);
        Serial.println(msg18);
      }
    } else
    {
      server.send(401, "text/plain", msg19);
      beep();
      beep();
      beep();
      Serial.println(msg20);
    }
  });
  server.on("/set/redled/off", []()
  {
    blinkblueled();
    clientaddress = server.client().remoteIP().toString();
    Serial.println(msg13 + clientaddress + ".");
    if (clientaddress == allowedaddress)
    {
      if (checkusernameandpassword() == 1)
      {
        redled(0);
        server.send(200, "text/plain", msg27);
      } else
      {
        server.send(401, "text/plain", msg17);
        Serial.println(msg18);
      }
    } else
    {
      server.send(401, "text/plain", msg19);
      beep();
      beep();
      beep();
      Serial.println(msg20);
    }
  });
  server.on("/set/redled/on", []()
  {
    blinkblueled();
    clientaddress = server.client().remoteIP().toString();
    Serial.println(msg13 + clientaddress + ".");
    if (clientaddress == allowedaddress)
    {
      if (checkusernameandpassword() == 1)
      {
        redled(1);
        server.send(200, "text/plain", msg27);
      } else
      {
        server.send(401, "text/plain", msg17);
        Serial.println(msg18);
      }
    } else
    {
      server.send(401, "text/plain", msg19);
      beep();
      beep();
      beep();
      Serial.println(msg20);
    }
  });
  server.on("/set/yellowled/off", []()
  {
    blinkblueled();
    clientaddress = server.client().remoteIP().toString();
    Serial.println(msg13 + clientaddress + ".");
    if (clientaddress == allowedaddress)
    {
      if (checkusernameandpassword() == 1)
      {
        yellowled(0);
        server.send(200, "text/plain", msg27);
      } else
      {
        server.send(401, "text/plain", msg17);
        Serial.println(msg18);
      }
    } else
    {
      server.send(401, "text/plain", msg19);
      beep();
      beep();
      beep();
      Serial.println(msg20);
    }
  });
  server.on("/set/yellowled/on", []()
  {
    blinkblueled();
    clientaddress = server.client().remoteIP().toString();
    Serial.println(msg13 + clientaddress + ".");
    if (clientaddress == allowedaddress)
    {
      if (checkusernameandpassword() == 1)
      {
        yellowled(1);
        server.send(200, "text/plain", msg27);
      } else
      {
        server.send(401, "text/plain", msg17);
        Serial.println(msg18);
      }
    } else
    {
      server.send(401, "text/plain", msg19);
      beep();
      beep();
      beep();
      Serial.println(msg20);
    }
  });
  server.begin();
  Serial.println(msg08);
  beep();
}

// loop function
void loop(void)
{
  server.handleClient();
}

// blink blue LED
void blinkblueled()
{
  digitalWrite(prt_led_blue, HIGH);
  delay(500);
  digitalWrite(prt_led_blue, LOW);
}

// switch on/off green LED
void greenled(int i)
{
  if (i == 0)
  {
    digitalWrite(prt_led_green, LOW);
    Serial.println(msg21 + msg24 + msg26);
  } else
  {
    digitalWrite(prt_led_green, HIGH);
    Serial.println(msg21 + msg24 + msg25);
  }
}

// switch on/off red LED
void redled(int i)
{
  if (i == 0)
  {
    digitalWrite(prt_led_red, LOW);
    Serial.println(msg22 + msg24 + msg26);
  } else
  {
    digitalWrite(prt_led_red, HIGH);
    Serial.println(msg22 + msg24 + msg25);
  }
}

// switch on/off yellow LED
void yellowled(int i)
{
  if (i == 0)
  {
    digitalWrite(prt_led_yellow, LOW);
    Serial.println(msg23 + msg24 + msg26);
  } else
  {
    digitalWrite(prt_led_yellow, HIGH);
    Serial.println(msg23 + msg24 + msg25);
  }
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
      beep();
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
      beep();
      Serial.println(msg15);
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
    beep();
    beep();
    return 0;
  }
}

// beep
void beep()
{
  tone(prt_buzzer, 880);
  delay (100);
  noTone(prt_buzzer);
  delay (100);
}
