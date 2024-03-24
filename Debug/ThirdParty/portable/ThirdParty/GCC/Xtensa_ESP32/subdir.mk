################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.c \
../ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port.c \
../ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.c \
../ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.c \
../ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.c \
../ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.c 

S_UPPER_SRCS += \
../ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.S \
../ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.S \
../ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.S \
../ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.S \
../ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.S 

OBJS += \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.o \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port.o \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.o \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.o \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.o \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.o \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.o \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.o \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.o \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.o \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.o 

S_UPPER_DEPS += \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.d \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.d \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.d \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.d \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.d 

C_DEPS += \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.d \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port.d \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.d \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.d \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.d \
./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/%.o ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/%.su: ../ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/%.c ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/%.o: ../ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/%.S ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-ThirdParty-2f-portable-2f-ThirdParty-2f-GCC-2f-Xtensa_ESP32

clean-ThirdParty-2f-portable-2f-ThirdParty-2f-GCC-2f-Xtensa_ESP32:
	-$(RM) ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.d ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.o ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.su ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port.d ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port.o ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port.su ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.d ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.o ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port_common.su ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.d ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.o ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/port_systick.su ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.d ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.o ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.d ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.o ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.d ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.o ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.su ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.d ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.o ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.d ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.o ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.su ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.d ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.o ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.d ./ThirdParty/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.o

.PHONY: clean-ThirdParty-2f-portable-2f-ThirdParty-2f-GCC-2f-Xtensa_ESP32

