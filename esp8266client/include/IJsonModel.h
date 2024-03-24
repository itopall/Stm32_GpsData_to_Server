#include <ArduinoJson.h>

class ITBaseJsonModel
{
public:
    virtual ~ITBaseJsonModel() = default;

    // Bu modeli bir JSON nesnesine dönüştürür
    virtual void toJson(JsonObject obj) const = 0;

    // Verilen JSON nesnesini bu modelle doldurur
    virtual void fromJson(const JsonObject obj) = 0;
};