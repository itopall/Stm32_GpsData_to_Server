################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/portable/MemMang/heap_4.c 

OBJS += \
./ThirdParty/portable/MemMang/heap_4.o 

C_DEPS += \
./ThirdParty/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/MemMang/%.o ThirdParty/portable/MemMang/%.su: ../ThirdParty/portable/MemMang/%.c ThirdParty/portable/MemMang/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/ThirdParty/include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/ThirdParty" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/ThirdParty/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-portable-2f-MemMang

clean-ThirdParty-2f-portable-2f-MemMang:
	-$(RM) ./ThirdParty/portable/MemMang/heap_4.d ./ThirdParty/portable/MemMang/heap_4.o ./ThirdParty/portable/MemMang/heap_4.su

.PHONY: clean-ThirdParty-2f-portable-2f-MemMang

