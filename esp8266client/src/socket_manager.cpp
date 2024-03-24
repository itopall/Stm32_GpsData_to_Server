#include "socket_manager.h"
#include <WebSocketsClient.h>
#include <string>

SocketManager::SocketManager() {}
void SocketManager::connect()
{
    const char *pload = "hello from esp";
    socketIO.begin("192.168.0.20", 3000, "/socket.io/?EIO=4");
    socketIO.onEvent([this](socketIOmessageType_t type, uint8_t *payload, size_t length)
                     { this->socketIOEvent(type, payload, length); });
}

void SocketManager::disconnect() {}

void SocketManager::loop()
{
    socketIO.loop();
}

// template <typename T>
// void SocketManager::emit(ISocketClientEvent<T> &event)
// {
//     String message_to_send = m_clientEventParser.parse(event);
//     socketIO.sendEVENT(message_to_send);
// }
void SocketManager::emit(String event_name, String param, String message)
{
    DynamicJsonDocument doc(1024);
    JsonArray array = doc.to<JsonArray>();

    // add evnet name
    // Hint: socket.on('event_name', ....
    array.add(event_name);

    // add payload (parameters) for the event
    JsonObject param1 = array.createNestedObject();
    param1[param] = message;

    // JSON to String (serializion)
    String output;
    serializeJson(doc, output);

    // Send event
    socketIO.sendEVENT(output);
}

void SocketManager::socketIOEvent(socketIOmessageType_t type, uint8_t *payload, size_t length)
{
    switch (type)
    {
    case sIOtype_CONNECT:
        socketIO.send(sIOtype_CONNECT, "/");
        break;
    case sIOtype_EVENT:
        DynamicJsonDocument doc(1024);
        DeserializationError error = deserializeJson(doc, payload, length);
        if (error)
        {
            return;
        }
        String eventName = doc[0];
        Serial.println(eventName);
        if (eventName == "connection")
        {
            String receivedMessage = doc[1]["message"];
            Serial.println(receivedMessage);
        }
        else if (eventName == "turnOFF")
        {
            String receivedMessage = doc[1]["message"];
            Serial.println(receivedMessage);
        }
        break;
    }
}