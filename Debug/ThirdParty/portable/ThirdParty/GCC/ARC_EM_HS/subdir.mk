################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/arc_support.s 

C_SRCS += \
../ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/arc_freertos_exceptions.c \
../ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/freertos_tls.c \
../ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/port.c 

OBJS += \
./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/arc_freertos_exceptions.o \
./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/arc_support.o \
./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/freertos_tls.o \
./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/port.o 

S_DEPS += \
./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/arc_support.d 

C_DEPS += \
./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/arc_freertos_exceptions.d \
./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/freertos_tls.d \
./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/port.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/%.o ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/%.su: ../ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/%.c ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/%.o: ../ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/%.s ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-ThirdParty-2f-portable-2f-ThirdParty-2f-GCC-2f-ARC_EM_HS

clean-ThirdParty-2f-portable-2f-ThirdParty-2f-GCC-2f-ARC_EM_HS:
	-$(RM) ./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/arc_freertos_exceptions.d ./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/arc_freertos_exceptions.o ./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/arc_freertos_exceptions.su ./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/arc_support.d ./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/arc_support.o ./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/freertos_tls.d ./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/freertos_tls.o ./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/freertos_tls.su ./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/port.d ./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/port.o ./ThirdParty/portable/ThirdParty/GCC/ARC_EM_HS/port.su

.PHONY: clean-ThirdParty-2f-portable-2f-ThirdParty-2f-GCC-2f-ARC_EM_HS

