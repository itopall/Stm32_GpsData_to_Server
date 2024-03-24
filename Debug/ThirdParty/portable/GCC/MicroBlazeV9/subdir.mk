################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/portable/GCC/MicroBlazeV9/port.c \
../ThirdParty/portable/GCC/MicroBlazeV9/port_exceptions.c 

S_UPPER_SRCS += \
../ThirdParty/portable/GCC/MicroBlazeV9/portasm.S 

OBJS += \
./ThirdParty/portable/GCC/MicroBlazeV9/port.o \
./ThirdParty/portable/GCC/MicroBlazeV9/port_exceptions.o \
./ThirdParty/portable/GCC/MicroBlazeV9/portasm.o 

S_UPPER_DEPS += \
./ThirdParty/portable/GCC/MicroBlazeV9/portasm.d 

C_DEPS += \
./ThirdParty/portable/GCC/MicroBlazeV9/port.d \
./ThirdParty/portable/GCC/MicroBlazeV9/port_exceptions.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/GCC/MicroBlazeV9/%.o ThirdParty/portable/GCC/MicroBlazeV9/%.su: ../ThirdParty/portable/GCC/MicroBlazeV9/%.c ThirdParty/portable/GCC/MicroBlazeV9/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdParty/portable/GCC/MicroBlazeV9/%.o: ../ThirdParty/portable/GCC/MicroBlazeV9/%.S ThirdParty/portable/GCC/MicroBlazeV9/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-ThirdParty-2f-portable-2f-GCC-2f-MicroBlazeV9

clean-ThirdParty-2f-portable-2f-GCC-2f-MicroBlazeV9:
	-$(RM) ./ThirdParty/portable/GCC/MicroBlazeV9/port.d ./ThirdParty/portable/GCC/MicroBlazeV9/port.o ./ThirdParty/portable/GCC/MicroBlazeV9/port.su ./ThirdParty/portable/GCC/MicroBlazeV9/port_exceptions.d ./ThirdParty/portable/GCC/MicroBlazeV9/port_exceptions.o ./ThirdParty/portable/GCC/MicroBlazeV9/port_exceptions.su ./ThirdParty/portable/GCC/MicroBlazeV9/portasm.d ./ThirdParty/portable/GCC/MicroBlazeV9/portasm.o

.PHONY: clean-ThirdParty-2f-portable-2f-GCC-2f-MicroBlazeV9

