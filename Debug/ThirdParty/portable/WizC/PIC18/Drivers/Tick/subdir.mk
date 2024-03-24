################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/portable/WizC/PIC18/Drivers/Tick/Tick.c \
../ThirdParty/portable/WizC/PIC18/Drivers/Tick/isrTick.c 

OBJS += \
./ThirdParty/portable/WizC/PIC18/Drivers/Tick/Tick.o \
./ThirdParty/portable/WizC/PIC18/Drivers/Tick/isrTick.o 

C_DEPS += \
./ThirdParty/portable/WizC/PIC18/Drivers/Tick/Tick.d \
./ThirdParty/portable/WizC/PIC18/Drivers/Tick/isrTick.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/WizC/PIC18/Drivers/Tick/%.o ThirdParty/portable/WizC/PIC18/Drivers/Tick/%.su: ../ThirdParty/portable/WizC/PIC18/Drivers/Tick/%.c ThirdParty/portable/WizC/PIC18/Drivers/Tick/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-portable-2f-WizC-2f-PIC18-2f-Drivers-2f-Tick

clean-ThirdParty-2f-portable-2f-WizC-2f-PIC18-2f-Drivers-2f-Tick:
	-$(RM) ./ThirdParty/portable/WizC/PIC18/Drivers/Tick/Tick.d ./ThirdParty/portable/WizC/PIC18/Drivers/Tick/Tick.o ./ThirdParty/portable/WizC/PIC18/Drivers/Tick/Tick.su ./ThirdParty/portable/WizC/PIC18/Drivers/Tick/isrTick.d ./ThirdParty/portable/WizC/PIC18/Drivers/Tick/isrTick.o ./ThirdParty/portable/WizC/PIC18/Drivers/Tick/isrTick.su

.PHONY: clean-ThirdParty-2f-portable-2f-WizC-2f-PIC18-2f-Drivers-2f-Tick

