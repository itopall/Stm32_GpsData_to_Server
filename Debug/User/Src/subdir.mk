################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/Src/fifo.c \
../User/Src/gnss.c \
../User/Src/io.c \
../User/Src/iuart.c \
../User/Src/spi.c \
../User/Src/system.c \
../User/Src/uart.c 

OBJS += \
./User/Src/fifo.o \
./User/Src/gnss.o \
./User/Src/io.o \
./User/Src/iuart.o \
./User/Src/spi.o \
./User/Src/system.o \
./User/Src/uart.o 

C_DEPS += \
./User/Src/fifo.d \
./User/Src/gnss.d \
./User/Src/io.d \
./User/Src/iuart.d \
./User/Src/spi.d \
./User/Src/system.d \
./User/Src/uart.d 


# Each subdirectory must supply rules for building sources it contributes
User/Src/%.o User/Src/%.su: ../User/Src/%.c User/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/User/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/ThirdParty/FreeRTOS/include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/ThirdParty/FreeRTOS" -I"C:/Users/ilker/Desktop/STM32_Tutorial/gps_to_pc/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-User-2f-Src

clean-User-2f-Src:
	-$(RM) ./User/Src/fifo.d ./User/Src/fifo.o ./User/Src/fifo.su ./User/Src/gnss.d ./User/Src/gnss.o ./User/Src/gnss.su ./User/Src/io.d ./User/Src/io.o ./User/Src/io.su ./User/Src/iuart.d ./User/Src/iuart.o ./User/Src/iuart.su ./User/Src/spi.d ./User/Src/spi.o ./User/Src/spi.su ./User/Src/system.d ./User/Src/system.o ./User/Src/system.su ./User/Src/uart.d ./User/Src/uart.o ./User/Src/uart.su

.PHONY: clean-User-2f-Src

