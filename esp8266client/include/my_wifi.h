#include <ESP8266WiFi.h> // Include the Wi-Fi library
#include <ESP8266WiFiMulti.h>
#include "debug.h"
#include <ArduinoJson.h>

class MyWifi
{
private:
    const char *ssid = "TURKSAT-KABLONET-EC93-2.4G";
    const char *password = "dbaf92c7";

public:
    void wifi_Init(void);
    void wifi_Connect(void);
};
