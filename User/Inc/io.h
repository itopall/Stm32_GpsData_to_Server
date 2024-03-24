/*
 * io.h
 *
 *  Created on: Jul 3, 2023
 *      Author: ilker
 */

#ifndef INC_IO_H_
#define INC_IO_H_

#include "stm32f4xx_gpio.h"

enum {
	IO_MODE_INPUT,
	IO_MODE_OUTPUT,
	IO_MODE_ALTERNATE,
	IO_MODE_ANALOG,

	IO_MODE_INPUT_PD,
	IO_MODE_INPUT_PU,
	IO_MODE_OUTPUT_OD,
	IO_MODE_ALTERNATE_PU,
	IO_MODE_ALTERNATE_OD,
	IO_MODE_ALTERNATE_OD_PU,
};


enum {
	IO_PORT_A,
	IO_PORT_B,
	IO_PORT_C,
	IO_PORT_D,
	IO_PORT_E,
	IO_PORT_F,
	IO_PORT_G,
	IO_PORT_H,
	IO_PORT_I,
	IO_PORT_J,
	IO_PORT_K,
};

enum {
	IOP_LED,	//Nucleo LED

	IOP_U1TX,
	IOP_U1RX,
	IOP_U2TX,
	IOP_U2RX,
	IOP_U3TX,
	IOP_U3RX,
	IOP_U4TX,
	IOP_U4RX,
	IOP_U5TX,
	IOP_U5RX,
	IOP_U6TX,
	IOP_U6RX,
};


typedef struct {
	int port;
	int pin;
}IO_PIN;


void IO_Init(int idx, int mode);
void IO_Write(int idx, int val);
int IO_Read(int idx);

#ifdef _IOS_
IO_PIN _ios[] = {
		{IO_PORT_A, 5},		//LED port and pin

		{IO_PORT_A, 9},		//TX1
		{IO_PORT_A, 10},	//RX1
		{IO_PORT_A, 2},		//TX2
		{IO_PORT_A, 3},		//RX2
		{IO_PORT_B, 10},	//TX3
		{IO_PORT_C, 5},		//RX3
		{IO_PORT_A, 0},		//TX4
		{IO_PORT_A, 1},		//RX4
		{IO_PORT_C, 12},	//TX5
		{IO_PORT_D, 2},		//RX5
		{IO_PORT_C, 6},		//TX6
		{IO_PORT_C, 7},		//RX6
};


GPIO_TypeDef *GPIO_Ports[] = {
		GPIOA,
		GPIOB,
		GPIOC,
		GPIOD,
		GPIOE,
		GPIOF,
		GPIOG,
		GPIOH,
		GPIOI,
		GPIOJ,
		GPIOK,
};

#else
extern IO_PIN _ios[];
extern GPIO_TypeDef *GPIO_Ports[];
#endif

#endif /* INC_IO_H_ */
