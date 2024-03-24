/*
 * iuart.h
 *
 *  Created on: 5 Mar 2024
 *      Author: ilker
 */

#ifndef USER_INC_IUART_H_
#define USER_INC_IUART_H_

void IUART_Init(void);
void IUART_SendData(const void *buf, int len);

void Task_IUART(void);

#endif /* USER_INC_IUART_H_ */
