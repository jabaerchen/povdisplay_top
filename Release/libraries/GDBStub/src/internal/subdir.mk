################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.7.4\libraries\GDBStub\src\internal\gdbstub-entry.S 

C_SRCS += \
C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.7.4\libraries\GDBStub\src\internal\gdbstub.c 

C_DEPS += \
.\libraries\GDBStub\src\internal\gdbstub.c.d 

LINK_OBJ += \
.\libraries\GDBStub\src\internal\gdbstub-entry.S.o \
.\libraries\GDBStub\src\internal\gdbstub.c.o 

S_UPPER_DEPS += \
.\libraries\GDBStub\src\internal\gdbstub-entry.S.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\GDBStub\src\internal\gdbstub-entry.S.o: C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.7.4\libraries\GDBStub\src\internal\gdbstub-entry.S
	@echo 'Building file: $<'
	@echo 'Starting S compile'
	"C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\tools\xtensa-lx106-elf-gcc\2.5.0-4-b40a506/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\cpp-2020-06\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.7.4/tools/sdk/include" "-IC:\cpp-2020-06\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.7.4/tools/sdk/lwip2/include" "-IC:\cpp-2020-06\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.7.4/tools/sdk/libc/xtensa-lx106-elf/include" "-IC:\Arduino_WS\Test\Release/core" -c -g -x assembler-with-cpp -MMD -mlongcalls -DNONOSDK22x_190703=1 -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=536 -DLWIP_FEATURES=1 -DLWIP_IPV6=0   -DARDUINO=10812 -DARDUINO_ESP8266_GENERIC -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_GENERIC\"" -DLED_BUILTIN=2 -DFLASHMODE_DOUT  -DESP8266   -I"C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.7.4\cores\esp8266" -I"C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.7.4\variants\generic" -I"C:\cpp-2020-06\eclipse\arduinoPlugin\libraries\Adafruit_NeoPixel\1.6.0" -I"C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.7.4\libraries\Ticker\src" -I"C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.7.4\libraries\ESP8266WiFi\src" -I"C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.7.4\libraries\GDBStub\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)"  "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\GDBStub\src\internal\gdbstub.c.o: C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.7.4\libraries\GDBStub\src\internal\gdbstub.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\tools\xtensa-lx106-elf-gcc\2.5.0-4-b40a506/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\cpp-2020-06\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.7.4/tools/sdk/include" "-IC:\cpp-2020-06\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.7.4/tools/sdk/lwip2/include" "-IC:\cpp-2020-06\eclipse\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.7.4/tools/sdk/libc/xtensa-lx106-elf/include" "-IC:\Arduino_WS\Test\Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -fno-exceptions  -DNONOSDK22x_190703=1 -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=536 -DLWIP_FEATURES=1 -DLWIP_IPV6=0   -DARDUINO=10812 -DARDUINO_ESP8266_GENERIC -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_GENERIC\"" -DLED_BUILTIN=2 -DFLASHMODE_DOUT  -DESP8266   -I"C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.7.4\cores\esp8266" -I"C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.7.4\variants\generic" -I"C:\cpp-2020-06\eclipse\arduinoPlugin\libraries\Adafruit_NeoPixel\1.6.0" -I"C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.7.4\libraries\Ticker\src" -I"C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.7.4\libraries\ESP8266WiFi\src" -I"C:\cpp-2020-06\eclipse\arduinoPlugin\packages\esp8266\hardware\esp8266\2.7.4\libraries\GDBStub\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '


