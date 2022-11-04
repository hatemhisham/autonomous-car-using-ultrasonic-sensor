################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MCAL/INTERRUPT/EXTI_prog.c \
../MCAL/INTERRUPT/GIE_prog.c 

OBJS += \
./MCAL/INTERRUPT/EXTI_prog.o \
./MCAL/INTERRUPT/GIE_prog.o 

C_DEPS += \
./MCAL/INTERRUPT/EXTI_prog.d \
./MCAL/INTERRUPT/GIE_prog.d 


# Each subdirectory must supply rules for building sources it contributes
MCAL/INTERRUPT/%.o: ../MCAL/INTERRUPT/%.c MCAL/INTERRUPT/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


