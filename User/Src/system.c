/*
 * system.c
 *
 *  Created on: Jul 3, 2023
 *      Author: ilker
 */

#include "system.h"
volatile clock_t		g_TmTick = 0;



static const int GPIO_Clocks[] =
{
		RCC_AHB1Periph_GPIOA,
		RCC_AHB1Periph_GPIOB,
		RCC_AHB1Periph_GPIOC,
		RCC_AHB1Periph_GPIOD,
		RCC_AHB1Periph_GPIOE,
		RCC_AHB1Periph_GPIOF,
		RCC_AHB1Periph_GPIOG,
		RCC_AHB1Periph_GPIOH,
		RCC_AHB1Periph_GPIOI,
		RCC_AHB1Periph_GPIOJ,
		RCC_AHB1Periph_GPIOK,
};

#define N_PORTS		(sizeof(GPIO_Clocks) / sizeof(int))

void Sys_IoInit(void)
{
	int i;

	for (i = 0; i < N_PORTS; ++i)
		RCC_AHB1PeriphClockCmd(GPIO_Clocks[i], ENABLE);
}

void Sys_ClockTick(void)
{
	++g_TmTick;
}

void Sys_ClockInit(void)
{
	SysTick_Config(SystemCoreClock / CLOCK_PER_SEC);
}

clock_t clock(void)
{
	return g_TmTick;
}

