#include "ClientEventParser.h"
#include "SocketIOclient.h"

class SocketManager
{
private:
    ClientEventParser m_clientEventParser = ClientEventParser();
    SocketIOclient socketIO;
    void socketIOEvent(socketIOmessageType_t type, uint8_t *payload, size_t length);

public:
    SocketManager();

    void connect();
    void disconnect();
    void loop();

    void emit(String event_name, String param, String message);
    // template <typename T>
    // void emit(ISocketClientEvent<T> &event);
};
