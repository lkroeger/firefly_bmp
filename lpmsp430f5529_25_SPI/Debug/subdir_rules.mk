################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
SPI.o: C:/school\ 2016/energia-0101E0017/hardware/msp430/libraries/SPI/SPI.cpp $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Compiler'
	"C:/school 2016/energia-0101E0017/hardware/tools/msp430/bin/msp430-gcc.exe" -c -mmcu=msp430f5529 -DF_CPU=25000000L -DARDUINO=101 -DENERGIA=13 -I"C:/school 2016/energia-0101E0017/hardware/msp430/cores/msp430" -I"C:/school 2016/energia-0101E0017/hardware/msp430/variants/launchpad_f5529" -I"C:/school 2016/energia-0101E0017/hardware/tools/msp430/msp430/include" -I"C:/school 2016/energia-0101E0017/hardware/msp430/libraries/SPI" -I"C:/school 2016/energia-0101E0017/hardware/msp430/libraries/SPI/utility" -Os -ffunction-sections -fdata-sections -g -gdwarf-3 -gstrict-dwarf -Wall -MMD -MP -MF"SPI.d" -MT"SPI.d" -o"$@" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


