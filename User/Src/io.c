/*
 * io.c
 *
 *  Created on: Jul 3, 2023
 *      Author: ilker
 */
#define _IOS_
#include "io.h"


void IO_Init(int idx, int mode)
{

	GPIO_InitTypeDef GPIO_InitStructure;

	switch (mode) {
		case IO_MODE_INPUT:
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			break;
		case IO_MODE_INPUT_PD:
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_DOWN;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			break;
		case IO_MODE_INPUT_PU:
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			break;
		case IO_MODE_OUTPUT:
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			break;
		case IO_MODE_OUTPUT_OD:
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_OD;
			break;
		case IO_MODE_ALTERNATE:
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			break;
		case IO_MODE_ALTERNATE_PU:
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			break;
		case IO_MODE_ALTERNATE_OD:
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_OD;
			break;
		case IO_MODE_ALTERNATE_OD_PU:
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_OD;
			break;
		case IO_MODE_ANALOG:
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AN;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			break;
	}
	GPIO_InitStructure.GPIO_Pin = (1 << _ios[idx].pin);
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;

	GPIO_Init(GPIO_Ports[_ios[idx].port], &GPIO_InitStructure);
}


void IO_Write(int idx, int val)
{
	if (val)
	{
		GPIO_Ports[_ios[idx].port]->ODR |= (1 << _ios[idx].pin);
	}
	else
	{
		GPIO_Ports[_ios[idx].port]->ODR &= ~(1 << _ios[idx].pin);
	}
}

int IO_Read(int idx)
{
	GPIO_TypeDef *port = GPIO_Ports[_ios[idx].port];

	return (port->IDR & (1 << _ios[idx].pin)) != 0;
}
