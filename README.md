sifrai# think on resistant -> povdisplay_top
## esp12 F Overview
https://randomnerdtutorials.com/esp8266-pinout-reference-gpios/
## Bootmodes
### Just follow this
-> https://robertoostenveld.nl/esp-12-bootloader-modes/
### For more infos
https://github.com/esp8266/esp8266-wiki/wiki/Boot-Process#esp-boot-modes
MTDO	GPIO0	GPIO2	Mode	Description
L		L		H		UART	Download code from UART
L		H		H		Flash	Boot from SPI Flash
H		x		x		SDIO	Boot from SD-card
In the bootup message 'boot mode:(x,y)' three low bits of x are {MTDO, GPIO0, GPIO2}.

We need "Download code from UART" -> we need (1:x)

### what y means
Hi, I think the 'y' value is the location of the boot file that was used.

From the end of this document. http://esp8266.ru/esp8266-pin-register-strapping/

7 SDIO HighSpeed V2 IO Uart1 Booting
6 SDIO LowSpeed V1 IO Uart1 Booting
5 SDIO HighSpeed V1 IO Uart1 Booting
4 SDIO LowSpeed V2 IO Uart1 Booting
3 FLASH BOOT
2 Jump Boot
1 UART Boot
0 Remapping



## Calculating of LED rate

Bitrate 800 kHz

800 k /24 ->33.3k

33,3k / 64 -> 520 Zeilen pro s

520/ 32 -> 16 Hz updaterate

-> 64 x 64 @ 16,3 Hz

## □  q.e.d :)



