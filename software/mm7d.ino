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

#define DEV_NAME "MM7D Air quality measuring device"
#define DEV_INFO1 "(C) 2020 Pozsár Zsolt <pozsar.zsolt@szerafingomba.hu>"
#define DEV_INFO2 "LICENCE: EUPL v1.1"
#define DEV_INFO3 "Homepage: http://www.szerafingomba.hu/equipments/"
#define TYP_SENSOR1 DHT11

// constanst
const char* wifi_ssid     = "PozsiNet";
const char* wifi_password = "kukutyin";
const int   prt_led_act   = 2;
const int   prt_relay     = 0;
const int   prt_sensor1   = 12;

// variables
float humidity, temperature, co2level;
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
  Serial.println(DEV_NAME);
  Serial.println(DEV_INFO1);
  Serial.println(DEV_INFO2);
  Serial.println(DEV_INFO3);
  // connect to wireless network
  Serial.print("* Connecting to wireless network");
  WiFi.begin(wifi_ssid,wifi_password);
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(300);
    Serial.print(".");
  }
  Serial.println("connected.");
  Serial.print("* IP address: ");
  Serial.println(WiFi.localIP());
  // start webserver
  server.on("/",[]()
  {
    blinkactled();
    server.send(200,"text/plain",DEV_NAME "\n" DEV_INFO1 "\n" DEV_INFO2 "\n" DEV_INFO3);
    delay(100);
  });
  server.on("/all", []()
  {
    blinkactled();
    getco2level();
    gettemphum();
    server.send(200,"text/plain",String((int)co2level)+"\n"+String((int)humidity)+"\n"+String((int)temperature));
  });
  server.on("/co2level", []()
  {
    blinkactled();
    getco2level();
    server.send(200,"text/plain",String((int)co2level));
  });
  server.on("/humidity", []()
  {
    blinkactled();
    gettemphum();
    server.send(200,"text/plain",String((int)humidity));
  });
  server.on("/temperature",[]()
  {
    blinkactled();
    gettemphum();
    server.send(200,"text/plain",String((int)temperature));
  });
  server.begin();
  Serial.println("* Webserver started");
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
      digitalWrite(prt_relay,LOW);
      temperature=999;
      humidity=999;
      return;
    }
  }
}
