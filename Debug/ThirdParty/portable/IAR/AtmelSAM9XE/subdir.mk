################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/portable/IAR/AtmelSAM9XE/port.c 

OBJS += \
./ThirdParty/portable/IAR/AtmelSAM9XE/port.o 

C_DEPS += \
./ThirdParty/portable/IAR/AtmelSAM9XE/port.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/IAR/AtmelSAM9XE/%.o ThirdParty/portable/IAR/AtmelSAM9XE/%.su: ../ThirdParty/portable/IAR/AtmelSAM9XE/%.c ThirdParty/portable/IAR/AtmelSAM9XE/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-portable-2f-IAR-2f-AtmelSAM9XE

clean-ThirdParty-2f-portable-2f-IAR-2f-AtmelSAM9XE:
	-$(RM) ./ThirdParty/portable/IAR/AtmelSAM9XE/port.d ./ThirdParty/portable/IAR/AtmelSAM9XE/port.o ./ThirdParty/portable/IAR/AtmelSAM9XE/port.su

.PHONY: clean-ThirdParty-2f-portable-2f-IAR-2f-AtmelSAM9XE

