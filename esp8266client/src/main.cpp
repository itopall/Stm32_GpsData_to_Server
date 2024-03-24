

#include "myuart.h"
#include "SoftwareSerial.h"
#include "my_wifi.h"
#include "socket_manager.h"
// MyUART mySerial(15, 13);
MyWifi my_wifi;
SocketManager m_socketManager;

String inputString = ""; // a String to hold incoming data
bool stringComplete = false;

void setup()
{
  // Start the Serial communication to send messages to the computer
  // delay(10);
  Serial.begin(9600);
  my_wifi.wifi_Init();
  my_wifi.wifi_Connect();
  m_socketManager.connect();
}

void loop()
{
  m_socketManager.loop();
  if (stringComplete)
  {

    m_socketManager.emit("gps_event", "coord", inputString);
    Serial.println(inputString);
    // clear the string:
    inputString = "";
    stringComplete = false;
  }
}

void serialEvent()
{
  while (Serial.available())
  {
    // get the new byte:
    char inChar = (char)Serial.read();
    // add it to the inputString:
    inputString += inChar;
    // if the incoming character is a newline, set a flag so the main loop can
    // do something about it:
    if (inChar == '\n')
    {
      stringComplete = true;
    }
  }
}