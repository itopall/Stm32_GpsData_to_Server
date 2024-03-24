################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/portable/Softune/MB91460/__STD_LIB_sbrk.c \
../ThirdParty/portable/Softune/MB91460/port.c 

OBJS += \
./ThirdParty/portable/Softune/MB91460/__STD_LIB_sbrk.o \
./ThirdParty/portable/Softune/MB91460/port.o 

C_DEPS += \
./ThirdParty/portable/Softune/MB91460/__STD_LIB_sbrk.d \
./ThirdParty/portable/Softune/MB91460/port.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/Softune/MB91460/%.o ThirdParty/portable/Softune/MB91460/%.su: ../ThirdParty/portable/Softune/MB91460/%.c ThirdParty/portable/Softune/MB91460/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty-2f-portable-2f-Softune-2f-MB91460

clean-ThirdParty-2f-portable-2f-Softune-2f-MB91460:
	-$(RM) ./ThirdParty/portable/Softune/MB91460/__STD_LIB_sbrk.d ./ThirdParty/portable/Softune/MB91460/__STD_LIB_sbrk.o ./ThirdParty/portable/Softune/MB91460/__STD_LIB_sbrk.su ./ThirdParty/portable/Softune/MB91460/port.d ./ThirdParty/portable/Softune/MB91460/port.o ./ThirdParty/portable/Softune/MB91460/port.su

.PHONY: clean-ThirdParty-2f-portable-2f-Softune-2f-MB91460

