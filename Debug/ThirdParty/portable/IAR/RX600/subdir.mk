################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../ThirdParty/portable/IAR/RX600/port_asm.s 

C_SRCS += \
../ThirdParty/portable/IAR/RX600/port.c 

OBJS += \
./ThirdParty/portable/IAR/RX600/port.o \
./ThirdParty/portable/IAR/RX600/port_asm.o 

S_DEPS += \
./ThirdParty/portable/IAR/RX600/port_asm.d 

C_DEPS += \
./ThirdParty/portable/IAR/RX600/port.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/IAR/RX600/%.o ThirdParty/portable/IAR/RX600/%.su: ../ThirdParty/portable/IAR/RX600/%.c ThirdParty/portable/IAR/RX600/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdParty/portable/IAR/RX600/%.o: ../ThirdParty/portable/IAR/RX600/%.s ThirdParty/portable/IAR/RX600/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-ThirdParty-2f-portable-2f-IAR-2f-RX600

clean-ThirdParty-2f-portable-2f-IAR-2f-RX600:
	-$(RM) ./ThirdParty/portable/IAR/RX600/port.d ./ThirdParty/portable/IAR/RX600/port.o ./ThirdParty/portable/IAR/RX600/port.su ./ThirdParty/portable/IAR/RX600/port_asm.d ./ThirdParty/portable/IAR/RX600/port_asm.o

.PHONY: clean-ThirdParty-2f-portable-2f-IAR-2f-RX600

