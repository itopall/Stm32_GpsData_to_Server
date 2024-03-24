#include "my_wifi.h"

void MyWifi::wifi_Init(void)
{
    WiFi.begin(ssid, password);
}
void MyWifi::wifi_Connect(void)
{
    int i = 0;
    while (WiFi.status() != WL_CONNECTED)
    {
        delay(1000);
        Serial.println(++i);
        Serial.println(' ');
    }
    Serial.println("success!");
    Serial.print("IP Address is: ");
    Serial.println(WiFi.localIP());
}
