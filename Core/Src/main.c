#include <stdio.h>
#include "system.h"
#include "io.h"
#include "uart.h"
#include "iuart.h"
#include "gnss.h"

/**
 * Clock yollarının açılması için fonksiyon yazılacak
 * Sistem saati kullanılacak
 *
 */


void init(void)
{
	Sys_ClockInit();

	Sys_IoInit();

	UART_Init(UART_1, 9600);
	IO_Write(IOP_LED, 0);
	IO_Init(IOP_LED, IO_MODE_OUTPUT);

}

void Task_LED(void)
{
	static enum {
		S_LED_OFF,
		S_LED_ON
	}state = S_LED_OFF;

	static clock_t t0 = 0, t1;

	t1 = clock();

	switch (state) {
		case S_LED_OFF:
			if (t1 >= t0 + CLOCK_PER_SEC / 10)
			{
				IO_Write(IOP_LED, 1);
				t0 = t1;
				state = S_LED_ON;
			}
			break;
		case S_LED_ON:
			if (t1 >= t0 + 6 * CLOCK_PER_SEC / 10)
			{
				IO_Write(IOP_LED, 0);
				t0 = t1;
				state = S_LED_OFF;
			}
			break;
	}
}

void Task_Print(void)
{
  static unsigned count;

  printf("SAYI:%10u\n", ++count);
  UART_printf("Count: %10lu\r", ++count);
}

int main(void)
{


	init();

	//IUART_Init();
//	IUART_SendData("Den", 3);

	while(1)
	{
		//UART_puts(data);
//		Task_LED();
		//Task_Print();
		//Task_IUART();
//		OLED_Test();
		Task_GNSS();
	}
}
