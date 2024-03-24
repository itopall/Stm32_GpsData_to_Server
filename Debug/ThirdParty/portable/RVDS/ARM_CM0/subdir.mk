################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/portable/RVDS/ARM_CM0/port.c 

OBJS += \
./ThirdParty/portable/RVDS/ARM_CM0/port.o 

C_DEPS += \
./ThirdParty/portable/RVDS/ARM_CM0/port.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/RVDS/ARM_CM0/%.o ThirdParty/portable/RVDS/ARM_CM0/%.su: ../ThirdParty/portable/RVDS/ARM_CM0/%.c ThirdParty/portable/RVDS/ARM_CM0/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-portable-2f-RVDS-2f-ARM_CM0

clean-ThirdParty-2f-portable-2f-RVDS-2f-ARM_CM0:
	-$(RM) ./ThirdParty/portable/RVDS/ARM_CM0/port.d ./ThirdParty/portable/RVDS/ARM_CM0/port.o ./ThirdParty/portable/RVDS/ARM_CM0/port.su

.PHONY: clean-ThirdParty-2f-portable-2f-RVDS-2f-ARM_CM0

