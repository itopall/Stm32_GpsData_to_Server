#include <Arduino.h>

class MyUART
{
private:
    int tx_pin;
    int rx_pin;

public:
    MyUART(int t_pin, int r_pin);
    void send_char(char ch);
    char *receive_char(void);
};