################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/portable/ThirdParty/XCC/Xtensa/port.c \
../ThirdParty/portable/ThirdParty/XCC/Xtensa/portclib.c \
../ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_init.c \
../ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_intr.c \
../ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_overlay_os_hook.c 

S_UPPER_SRCS += \
../ThirdParty/portable/ThirdParty/XCC/Xtensa/portasm.S \
../ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_context.S \
../ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_intr_asm.S \
../ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_vectors.S 

OBJS += \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/port.o \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/portasm.o \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/portclib.o \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_context.o \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_init.o \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_intr.o \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_intr_asm.o \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_overlay_os_hook.o \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_vectors.o 

S_UPPER_DEPS += \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/portasm.d \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_context.d \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_intr_asm.d \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_vectors.d 

C_DEPS += \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/port.d \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/portclib.d \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_init.d \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_intr.d \
./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_overlay_os_hook.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/ThirdParty/XCC/Xtensa/%.o ThirdParty/portable/ThirdParty/XCC/Xtensa/%.su: ../ThirdParty/portable/ThirdParty/XCC/Xtensa/%.c ThirdParty/portable/ThirdParty/XCC/Xtensa/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdParty/portable/ThirdParty/XCC/Xtensa/%.o: ../ThirdParty/portable/ThirdParty/XCC/Xtensa/%.S ThirdParty/portable/ThirdParty/XCC/Xtensa/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-ThirdParty-2f-portable-2f-ThirdParty-2f-XCC-2f-Xtensa

clean-ThirdParty-2f-portable-2f-ThirdParty-2f-XCC-2f-Xtensa:
	-$(RM) ./ThirdParty/portable/ThirdParty/XCC/Xtensa/port.d ./ThirdParty/portable/ThirdParty/XCC/Xtensa/port.o ./ThirdParty/portable/ThirdParty/XCC/Xtensa/port.su ./ThirdParty/portable/ThirdParty/XCC/Xtensa/portasm.d ./ThirdParty/portable/ThirdParty/XCC/Xtensa/portasm.o ./ThirdParty/portable/ThirdParty/XCC/Xtensa/portclib.d ./ThirdParty/portable/ThirdParty/XCC/Xtensa/portclib.o ./ThirdParty/portable/ThirdParty/XCC/Xtensa/portclib.su ./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_context.d ./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_context.o ./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_init.d ./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_init.o ./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_init.su ./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_intr.d ./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_intr.o ./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_intr.su ./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_intr_asm.d ./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_intr_asm.o ./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_overlay_os_hook.d ./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_overlay_os_hook.o ./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_overlay_os_hook.su ./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_vectors.d ./ThirdParty/portable/ThirdParty/XCC/Xtensa/xtensa_vectors.o

.PHONY: clean-ThirdParty-2f-portable-2f-ThirdParty-2f-XCC-2f-Xtensa

