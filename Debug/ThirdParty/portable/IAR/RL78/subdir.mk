################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../ThirdParty/portable/IAR/RL78/portasm.s 

C_SRCS += \
../ThirdParty/portable/IAR/RL78/port.c 

OBJS += \
./ThirdParty/portable/IAR/RL78/port.o \
./ThirdParty/portable/IAR/RL78/portasm.o 

S_DEPS += \
./ThirdParty/portable/IAR/RL78/portasm.d 

C_DEPS += \
./ThirdParty/portable/IAR/RL78/port.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/IAR/RL78/%.o ThirdParty/portable/IAR/RL78/%.su: ../ThirdParty/portable/IAR/RL78/%.c ThirdParty/portable/IAR/RL78/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdParty/portable/IAR/RL78/%.o: ../ThirdParty/portable/IAR/RL78/%.s ThirdParty/portable/IAR/RL78/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-ThirdParty-2f-portable-2f-IAR-2f-RL78

clean-ThirdParty-2f-portable-2f-IAR-2f-RL78:
	-$(RM) ./ThirdParty/portable/IAR/RL78/port.d ./ThirdParty/portable/IAR/RL78/port.o ./ThirdParty/portable/IAR/RL78/port.su ./ThirdParty/portable/IAR/RL78/portasm.d ./ThirdParty/portable/IAR/RL78/portasm.o

.PHONY: clean-ThirdParty-2f-portable-2f-IAR-2f-RL78

