/*
 * spi.h
 *
 *  Created on: Jul 9, 2023
 *      Author: ilker
 */

#ifndef USER_INC_SPI_H_
#define USER_INC_SPI_H_

#include "stm32f4xx_spi.h"
#include "system.h"
#include "io.h"

void SSPI_Start(void);
int SSPI_Data(int val);
void HSPI_Start(void);
unsigned char HSPI_Data(int val);


#endif /* USER_INC_SPI_H_ */
