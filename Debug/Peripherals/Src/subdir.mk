################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Peripherals/Src/stm32f4xx_can.c \
../Peripherals/Src/stm32f4xx_gpio.c \
../Peripherals/Src/stm32f4xx_i2c.c \
../Peripherals/Src/stm32f4xx_rcc.c \
../Peripherals/Src/stm32f4xx_spi.c \
../Peripherals/Src/stm32f4xx_usart.c 

OBJS += \
./Peripherals/Src/stm32f4xx_can.o \
./Peripherals/Src/stm32f4xx_gpio.o \
./Peripherals/Src/stm32f4xx_i2c.o \
./Peripherals/Src/stm32f4xx_rcc.o \
./Peripherals/Src/stm32f4xx_spi.o \
./Peripherals/Src/stm32f4xx_usart.o 

C_DEPS += \
./Peripherals/Src/stm32f4xx_can.d \
./Peripherals/Src/stm32f4xx_gpio.d \
./Peripherals/Src/stm32f4xx_i2c.d \
./Peripherals/Src/stm32f4xx_rcc.d \
./Peripherals/Src/stm32f4xx_spi.d \
./Peripherals/Src/stm32f4xx_usart.d 


# Each subdirectory must supply rules for building sources it contributes
Peripherals/Src/%.o Peripherals/Src/%.su: ../Peripherals/Src/%.c Peripherals/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/User/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/ThirdParty/FreeRTOS/include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/ThirdParty/FreeRTOS" -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Peripherals-2f-Src

clean-Peripherals-2f-Src:
	-$(RM) ./Peripherals/Src/stm32f4xx_can.d ./Peripherals/Src/stm32f4xx_can.o ./Peripherals/Src/stm32f4xx_can.su ./Peripherals/Src/stm32f4xx_gpio.d ./Peripherals/Src/stm32f4xx_gpio.o ./Peripherals/Src/stm32f4xx_gpio.su ./Peripherals/Src/stm32f4xx_i2c.d ./Peripherals/Src/stm32f4xx_i2c.o ./Peripherals/Src/stm32f4xx_i2c.su ./Peripherals/Src/stm32f4xx_rcc.d ./Peripherals/Src/stm32f4xx_rcc.o ./Peripherals/Src/stm32f4xx_rcc.su ./Peripherals/Src/stm32f4xx_spi.d ./Peripherals/Src/stm32f4xx_spi.o ./Peripherals/Src/stm32f4xx_spi.su ./Peripherals/Src/stm32f4xx_usart.d ./Peripherals/Src/stm32f4xx_usart.o ./Peripherals/Src/stm32f4xx_usart.su

.PHONY: clean-Peripherals-2f-Src

