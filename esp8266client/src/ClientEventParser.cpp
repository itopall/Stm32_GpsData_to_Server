#include "./ClientEventParser.h"
#include "ArduinoJson.h"

ClientEventParser::ClientEventParser() {}

template <typename T>
String ClientEventParser:: parse(ISocketClientEvent<T> event)
{
    DynamicJsonDocument doc(1024);
    JsonArray array = doc.to<JsonArray>();

    std::string eventName = getEventName(event.getEventType());
    array.add(eventName);

    JsonObject bodyParam = array.createNestedObject();

    bodyParam["body"] = getBodyMessage(event.getMessage());

    String output;

    serializeJson(doc, output);
    return output;
}

String ClientEventParser::getEventName(ClientEventType eventType)
{
    switch (eventType)
    {
    case ClientEventType::NON:
        return "non";
    case ClientEventType::SEND_FEED_WEIGHT:
        return "SEND_FEED_WEIGHT";
    default:
        return "UNKNOWN";
    }
}

String ClientEventParser::getBodyMessage(ITBaseJsonModel &model)
{
    DynamicJsonDocument bodyDoc(1024);
    JsonObject bodyObj = bodyDoc.to<JsonObject>();
    model.toJson(bodyObj);

    String bodyStr;
    serializeJson(bodyDoc, bodyStr);
    return bodyStr;
}
