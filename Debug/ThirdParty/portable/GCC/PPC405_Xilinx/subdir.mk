################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/portable/GCC/PPC405_Xilinx/port.c 

S_UPPER_SRCS += \
../ThirdParty/portable/GCC/PPC405_Xilinx/portasm.S 

OBJS += \
./ThirdParty/portable/GCC/PPC405_Xilinx/port.o \
./ThirdParty/portable/GCC/PPC405_Xilinx/portasm.o 

S_UPPER_DEPS += \
./ThirdParty/portable/GCC/PPC405_Xilinx/portasm.d 

C_DEPS += \
./ThirdParty/portable/GCC/PPC405_Xilinx/port.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/GCC/PPC405_Xilinx/%.o ThirdParty/portable/GCC/PPC405_Xilinx/%.su: ../ThirdParty/portable/GCC/PPC405_Xilinx/%.c ThirdParty/portable/GCC/PPC405_Xilinx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdParty/portable/GCC/PPC405_Xilinx/%.o: ../ThirdParty/portable/GCC/PPC405_Xilinx/%.S ThirdParty/portable/GCC/PPC405_Xilinx/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-ThirdParty-2f-portable-2f-GCC-2f-PPC405_Xilinx

clean-ThirdParty-2f-portable-2f-GCC-2f-PPC405_Xilinx:
	-$(RM) ./ThirdParty/portable/GCC/PPC405_Xilinx/port.d ./ThirdParty/portable/GCC/PPC405_Xilinx/port.o ./ThirdParty/portable/GCC/PPC405_Xilinx/port.su ./ThirdParty/portable/GCC/PPC405_Xilinx/portasm.d ./ThirdParty/portable/GCC/PPC405_Xilinx/portasm.o

.PHONY: clean-ThirdParty-2f-portable-2f-GCC-2f-PPC405_Xilinx

