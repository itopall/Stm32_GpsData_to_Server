/*
 * uart.h
 *
 *  Created on: Jul 8, 2023
 *      Author: ilker
 */

#ifndef USER_INC_UART_H_
#define USER_INC_UART_H_

#include "stm32f4xx_usart.h"

#define SZ_PRNBUF	256

enum {
	UART_1,
	UART_2,
	UART_3,
	UART_4,
	UART_5,
	UART_6,
};

void UART_Init(int idx, int baud);
void UART_Send(int idx, unsigned char ch);
unsigned char UART_Recv(int idx);


void UART_putch(uint8_t c);
int UART_puts(const uint8_t *str);
int UART_printf(const char *fmt, ...);

extern int g_conUART;

#endif /* USER_INC_UART_H_ */
