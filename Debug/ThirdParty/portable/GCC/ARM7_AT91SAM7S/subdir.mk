################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/portable/GCC/ARM7_AT91SAM7S/lib_AT91SAM7X256.c \
../ThirdParty/portable/GCC/ARM7_AT91SAM7S/port.c \
../ThirdParty/portable/GCC/ARM7_AT91SAM7S/portISR.c 

OBJS += \
./ThirdParty/portable/GCC/ARM7_AT91SAM7S/lib_AT91SAM7X256.o \
./ThirdParty/portable/GCC/ARM7_AT91SAM7S/port.o \
./ThirdParty/portable/GCC/ARM7_AT91SAM7S/portISR.o 

C_DEPS += \
./ThirdParty/portable/GCC/ARM7_AT91SAM7S/lib_AT91SAM7X256.d \
./ThirdParty/portable/GCC/ARM7_AT91SAM7S/port.d \
./ThirdParty/portable/GCC/ARM7_AT91SAM7S/portISR.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/GCC/ARM7_AT91SAM7S/%.o ThirdParty/portable/GCC/ARM7_AT91SAM7S/%.su: ../ThirdParty/portable/GCC/ARM7_AT91SAM7S/%.c ThirdParty/portable/GCC/ARM7_AT91SAM7S/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-portable-2f-GCC-2f-ARM7_AT91SAM7S

clean-ThirdParty-2f-portable-2f-GCC-2f-ARM7_AT91SAM7S:
	-$(RM) ./ThirdParty/portable/GCC/ARM7_AT91SAM7S/lib_AT91SAM7X256.d ./ThirdParty/portable/GCC/ARM7_AT91SAM7S/lib_AT91SAM7X256.o ./ThirdParty/portable/GCC/ARM7_AT91SAM7S/lib_AT91SAM7X256.su ./ThirdParty/portable/GCC/ARM7_AT91SAM7S/port.d ./ThirdParty/portable/GCC/ARM7_AT91SAM7S/port.o ./ThirdParty/portable/GCC/ARM7_AT91SAM7S/port.su ./ThirdParty/portable/GCC/ARM7_AT91SAM7S/portISR.d ./ThirdParty/portable/GCC/ARM7_AT91SAM7S/portISR.o ./ThirdParty/portable/GCC/ARM7_AT91SAM7S/portISR.su

.PHONY: clean-ThirdParty-2f-portable-2f-GCC-2f-ARM7_AT91SAM7S

