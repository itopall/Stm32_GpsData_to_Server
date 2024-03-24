#include "ClientEventType.h"

template <typename T>
class ISocketClientEvent
{
public:
    // Sanal destruktor - İyi uygulama
    virtual ~ISocketClientEvent() {}

    // Sanal fonksiyonlar - Türetilen sınıfların bu fonksiyonları uygulaması gerekiyor
    virtual const T &getMessage();
    virtual ClientEventType getEventType() const = 0;
};