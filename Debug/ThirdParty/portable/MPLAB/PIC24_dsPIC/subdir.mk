################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThirdParty/portable/MPLAB/PIC24_dsPIC/port.c 

S_UPPER_SRCS += \
../ThirdParty/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S \
../ThirdParty/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S 

OBJS += \
./ThirdParty/portable/MPLAB/PIC24_dsPIC/port.o \
./ThirdParty/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o \
./ThirdParty/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o 

S_UPPER_DEPS += \
./ThirdParty/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.d \
./ThirdParty/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.d 

C_DEPS += \
./ThirdParty/portable/MPLAB/PIC24_dsPIC/port.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdParty/portable/MPLAB/PIC24_dsPIC/%.o ThirdParty/portable/MPLAB/PIC24_dsPIC/%.su: ../ThirdParty/portable/MPLAB/PIC24_dsPIC/%.c ThirdParty/portable/MPLAB/PIC24_dsPIC/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F446RETx -DSTM32F446xx -c -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Device" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/CMSIS/Include" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Core/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/Peripherals/Inc" -I"C:/Users/ilker/Desktop/STM32_Tutorial/006/01_FreeRTOS/01_Tasks/User/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdParty/portable/MPLAB/PIC24_dsPIC/%.o: ../ThirdParty/portable/MPLAB/PIC24_dsPIC/%.S ThirdParty/portable/MPLAB/PIC24_dsPIC/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-ThirdParty-2f-portable-2f-MPLAB-2f-PIC24_dsPIC

clean-ThirdParty-2f-portable-2f-MPLAB-2f-PIC24_dsPIC:
	-$(RM) ./ThirdParty/portable/MPLAB/PIC24_dsPIC/port.d ./ThirdParty/portable/MPLAB/PIC24_dsPIC/port.o ./ThirdParty/portable/MPLAB/PIC24_dsPIC/port.su ./ThirdParty/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.d ./ThirdParty/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o ./ThirdParty/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.d ./ThirdParty/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.o

.PHONY: clean-ThirdParty-2f-portable-2f-MPLAB-2f-PIC24_dsPIC

