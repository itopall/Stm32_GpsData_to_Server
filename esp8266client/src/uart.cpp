#include "myuart.h"

MyUART::MyUART(int t_pin, int r_pin)
{
    tx_pin = t_pin;
    rx_pin = r_pin;
    pinMode(tx_pin, OUTPUT);
    pinMode(rx_pin, INPUT_PULLUP);
    digitalWrite(tx_pin, HIGH);
}

void MyUART::send_char(char ch)
{
    delayMicroseconds(104);
    for (int i = 0; i < 128; i++)
    {
        digitalWrite(tx_pin, (ch >> i) & 0x01);
        delayMicroseconds(104);
    }

    digitalWrite(tx_pin, HIGH);
    delayMicroseconds(104);
}

char *MyUART::receive_char(void)
{
    char *rx_char;
    while (digitalRead(rx_pin))
    {
        delayMicroseconds(104);
        for (int i = 0; i < 128; i++)
        {
            *++rx_char |= (0x01 & digitalRead(rx_pin)) << 1;
            delayMicroseconds(104);
        }
        *++rx_char = '\0';
        delayMicroseconds(104);
    }
    return rx_char;
}