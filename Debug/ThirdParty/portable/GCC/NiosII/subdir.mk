################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/portable/GCC/NiosII/port.c 

S_UPPER_SRCS += \
../ThirdParty/portable/GCC/NiosII/port_asm.S 

OBJS += \
./ThirdParty/portable/GCC/NiosII/port.o \
./ThirdParty/portable/GCC/NiosII/port_asm.o 

S_UPPER_DEPS += \
./ThirdParty/portable/GCC/NiosII/port_asm.d 

C_DEPS += \
./ThirdParty/portable/GCC/NiosII/port.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/GCC/NiosII/%.o ThirdParty/portable/GCC/NiosII/%.su: ../ThirdParty/portable/GCC/NiosII/%.c ThirdParty/portable/GCC/NiosII/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdParty/portable/GCC/NiosII/%.o: ../ThirdParty/portable/GCC/NiosII/%.S ThirdParty/portable/GCC/NiosII/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-ThirdParty-2f-portable-2f-GCC-2f-NiosII

clean-ThirdParty-2f-portable-2f-GCC-2f-NiosII:
	-$(RM) ./ThirdParty/portable/GCC/NiosII/port.d ./ThirdParty/portable/GCC/NiosII/port.o ./ThirdParty/portable/GCC/NiosII/port.su ./ThirdParty/portable/GCC/NiosII/port_asm.d ./ThirdParty/portable/GCC/NiosII/port_asm.o

.PHONY: clean-ThirdParty-2f-portable-2f-GCC-2f-NiosII

