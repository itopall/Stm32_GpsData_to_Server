################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../ThirdParty/portable/IAR/ARM_CM55/secure/secure_context_port_asm.s 

C_SRCS += \
../ThirdParty/portable/IAR/ARM_CM55/secure/secure_context.c \
../ThirdParty/portable/IAR/ARM_CM55/secure/secure_heap.c \
../ThirdParty/portable/IAR/ARM_CM55/secure/secure_init.c 

OBJS += \
./ThirdParty/portable/IAR/ARM_CM55/secure/secure_context.o \
./ThirdParty/portable/IAR/ARM_CM55/secure/secure_context_port_asm.o \
./ThirdParty/portable/IAR/ARM_CM55/secure/secure_heap.o \
./ThirdParty/portable/IAR/ARM_CM55/secure/secure_init.o 

S_DEPS += \
./ThirdParty/portable/IAR/ARM_CM55/secure/secure_context_port_asm.d 

C_DEPS += \
./ThirdParty/portable/IAR/ARM_CM55/secure/secure_context.d \
./ThirdParty/portable/IAR/ARM_CM55/secure/secure_heap.d \
./ThirdParty/portable/IAR/ARM_CM55/secure/secure_init.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/IAR/ARM_CM55/secure/%.o ThirdParty/portable/IAR/ARM_CM55/secure/%.su: ../ThirdParty/portable/IAR/ARM_CM55/secure/%.c ThirdParty/portable/IAR/ARM_CM55/secure/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdParty/portable/IAR/ARM_CM55/secure/%.o: ../ThirdParty/portable/IAR/ARM_CM55/secure/%.s ThirdParty/portable/IAR/ARM_CM55/secure/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-ThirdParty-2f-portable-2f-IAR-2f-ARM_CM55-2f-secure

clean-ThirdParty-2f-portable-2f-IAR-2f-ARM_CM55-2f-secure:
	-$(RM) ./ThirdParty/portable/IAR/ARM_CM55/secure/secure_context.d ./ThirdParty/portable/IAR/ARM_CM55/secure/secure_context.o ./ThirdParty/portable/IAR/ARM_CM55/secure/secure_context.su ./ThirdParty/portable/IAR/ARM_CM55/secure/secure_context_port_asm.d ./ThirdParty/portable/IAR/ARM_CM55/secure/secure_context_port_asm.o ./ThirdParty/portable/IAR/ARM_CM55/secure/secure_heap.d ./ThirdParty/portable/IAR/ARM_CM55/secure/secure_heap.o ./ThirdParty/portable/IAR/ARM_CM55/secure/secure_heap.su ./ThirdParty/portable/IAR/ARM_CM55/secure/secure_init.d ./ThirdParty/portable/IAR/ARM_CM55/secure/secure_init.o ./ThirdParty/portable/IAR/ARM_CM55/secure/secure_init.su

.PHONY: clean-ThirdParty-2f-portable-2f-IAR-2f-ARM_CM55-2f-secure

