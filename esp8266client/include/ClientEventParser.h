#include "IJsonModel.h"
#include "ISocketClientEvent.h"
#include "string"

class ClientEventParser
{
private:
    String getEventName(ClientEventType eventType);
    String getBodyMessage(ITBaseJsonModel &model);

public:
    ClientEventParser();
    template <typename T>
    String parse(ISocketClientEvent<T> event);
};