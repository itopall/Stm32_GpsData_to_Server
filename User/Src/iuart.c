/*
 * iuart.c
 *
 *  Created on: 5 Mar 2024
 *      Author: ilker
 */
#include <stdio.h>
#include <stdint.h>
#include <stdarg.h>

#include "system.h"
#include "io.h"
#include "uart.h"
#include "fifo.h"

#define SZ_BUF  256

#define IUART_ST        USART2
#define IUART           UART_2
#define IUART_IRQn      USART2_IRQn

static unsigned char _RxBuf[SZ_BUF];
static unsigned char _TxBuf[SZ_BUF];

static FIFO     _RxFifo, _TxFifo;

void IUART_Init(void)
{
  // IUART baþlangýç
  UART_Init(IUART, 115200);

  // FIFO baþlangýç
  FIFO_Init(&_RxFifo, _RxBuf, SZ_BUF);
  FIFO_Init(&_TxFifo, _TxBuf, SZ_BUF);

  // Interrupt ayarlarý
  // a) ST yakasý
  USART_ITConfig(IUART_ST, USART_IT_RXNE, ENABLE);
  //USART_ITConfig(IUART_ST, USART_IT_TXE, ENABLE); // Kapalý olmalý

  // b) ARM takasý
  NVIC_SetPriority(IUART_IRQn, 3);
  NVIC_EnableIRQ(IUART_IRQn);
}

volatile static int _txFlag;

void USART2_IRQHandler(void)
{
  unsigned char c;

  if (USART_GetITStatus(IUART_ST, USART_IT_RXNE)) {
    // gelen veriyi alýyoruz
    c = USART_ReceiveData(IUART_ST);

    // FIFO buffer'a ekliyoruz
    FIFO_SetData(&_RxFifo, c);
  }

  if (USART_GetITStatus(IUART_ST, USART_IT_TXE)) {
    // Tx FIFO'dan veri çekiyoruz
    c = FIFO_GetData(&_TxFifo);

    // Veriyi TDR'a yüklüyoruz
    USART_SendData(IUART_ST, c);

    // Gönderilecek veri kalmadýysa TX kesme kaynaðý kapatýlmalý
    if (FIFO_IsEmpty(&_TxFifo)) {
      USART_ITConfig(IUART_ST, USART_IT_TXE, DISABLE);
      _txFlag = 0;
    }
  }
}

void IUART_SendData(const void *buf, int len)
{
  const unsigned char *ptr = (const unsigned char *)buf;

  // Önce Tx FIFO'ya göndereceðimiz veriyi yüklüyoruz
  while (!FIFO_IsFull(&_TxFifo) && (len-- > 0))
    FIFO_SetData(&_TxFifo, *ptr++);

  _txFlag = 1;
  // Gönderme kesmesini açýyoruz
  USART_ITConfig(IUART_ST, USART_IT_TXE, ENABLE);
}

void Task_IUART(void)
{
  char str[256];
  unsigned char lineBuf[256];
  int len;
  static unsigned long count;

  if (FIFO_GetLine(&_RxFifo, lineBuf)) {
    printf("%s", lineBuf);
  }

  if (!_txFlag) {
    len = sprintf(str, "Bu deneme kesmeli amacli gonderme islemi: %lu\r\n",
            ++count);
    IUART_SendData(str, len);
  }
}
