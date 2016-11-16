################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Compiler'
	"C:/ti/ccsv6/tools/compiler/gcc_msp430_4.9.14r1_167/bin/msp430-elf-gcc.exe" -c -mmcu=msp430f5529 -DF_CPU=25000000L -DARDUINO=101 -DENERGIA=13 -I"/hardware/msp430/cores/msp430" -I"/hardware/msp430/variants/launchpad_f5529" -I"C:/ti/ccsv6/tools/compiler/gcc_msp430_4.9.14r1_167/msp430-elf/include" -I"C:/old school stuff/School Junior Year/schmalzel/Firefly_BMP/bmp280test" -I"/hardware/msp430/libraries/SPI" -Os -ffunction-sections -fdata-sections -g -gdwarf-3 -gstrict-dwarf -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

bmp280test.cpp: ../bmp280test.ino
	@echo 'Building file: $<'
	@echo 'Invoking: Resource Custom Build Step'
	
	@echo 'Finished building: $<'
	@echo ' '

%.o: ./%.cpp $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Compiler'
	"C:/ti/ccsv6/tools/compiler/gcc_msp430_4.9.14r1_167/bin/msp430-elf-gcc.exe" -c -mmcu=msp430f5529 -DF_CPU=25000000L -DARDUINO=101 -DENERGIA=13 -I"/hardware/msp430/cores/msp430" -I"/hardware/msp430/variants/launchpad_f5529" -I"C:/ti/ccsv6/tools/compiler/gcc_msp430_4.9.14r1_167/msp430-elf/include" -I"C:/old school stuff/School Junior Year/schmalzel/Firefly_BMP/bmp280test" -I"/hardware/msp430/libraries/SPI" -Os -ffunction-sections -fdata-sections -g -gdwarf-3 -gstrict-dwarf -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


