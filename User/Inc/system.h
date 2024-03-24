/*
 * system.h
 *
 *  Created on: Jul 3, 2023
 *      Author: ilker
 */

#ifndef INC_SYSTEM_H_
#define INC_SYSTEM_H_

#include "stm32f4xx_rcc.h"

void __delay(unsigned long ncy);
int __ints(int stat);

#define CLOCK_PER_SEC		1000

#define CLOCK_FREQ		100000000
#define INSTR_FREQ		(CLOCK_FREQ * 4 / 3)
#define US_CYCLES		(INSTR_FREQ / 1000000)
#define MS_CYCLES		(INSTR_FREQ / 1000)

#define DelayUs(us)		__delay((us) * US_CYCLES)
#define DelayMs(ms)		__delay((ms) * MS_CYCLES)

typedef unsigned long	clock_t;

void Sys_IoInit(void);
void Sys_ClockInit(void);
void Sys_ConsoleInit(void);

clock_t clock(void);


#endif /* INC_SYSTEM_H_ */
