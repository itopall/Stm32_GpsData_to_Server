################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/croutine.c \
../ThirdParty/event_groups.c \
../ThirdParty/list.c \
../ThirdParty/queue.c \
../ThirdParty/stream_buffer.c \
../ThirdParty/tasks.c \
../ThirdParty/timers.c 

OBJS += \
./ThirdParty/croutine.o \
./ThirdParty/event_groups.o \
./ThirdParty/list.o \
./ThirdParty/queue.o \
./ThirdParty/stream_buffer.o \
./ThirdParty/tasks.o \
./ThirdParty/timers.o 

C_DEPS += \
./ThirdParty/croutine.d \
./ThirdParty/event_groups.d \
./ThirdParty/list.d \
./ThirdParty/queue.d \
./ThirdParty/stream_buffer.d \
./ThirdParty/tasks.d \
./ThirdParty/timers.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/%.o ThirdParty/%.su: ../ThirdParty/%.c ThirdParty/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/ThirdParty/include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/ThirdParty" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/ThirdParty/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdParty

clean-ThirdParty:
	-$(RM) ./ThirdParty/croutine.d ./ThirdParty/croutine.o ./ThirdParty/croutine.su ./ThirdParty/event_groups.d ./ThirdParty/event_groups.o ./ThirdParty/event_groups.su ./ThirdParty/list.d ./ThirdParty/list.o ./ThirdParty/list.su ./ThirdParty/queue.d ./ThirdParty/queue.o ./ThirdParty/queue.su ./ThirdParty/stream_buffer.d ./ThirdParty/stream_buffer.o ./ThirdParty/stream_buffer.su ./ThirdParty/tasks.d ./ThirdParty/tasks.o ./ThirdParty/tasks.su ./ThirdParty/timers.d ./ThirdParty/timers.o ./ThirdParty/timers.su

.PHONY: clean-ThirdParty

