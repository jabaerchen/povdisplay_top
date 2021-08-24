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


64 LEDs x 32 Positions


Anzahl der Positionen * Rotationsf * AnzahlFarben * 2^(Farbtiefe) * BreiteDesSR = Datentaktfrequenz
32 * 24 Hz * 3 * 2^(4) * 16 = 589.824 kHz
32 * 5 Hz * 3 * 2^(4) * 16 = 1.228800 MHz

Welche Pins Brauchen wir?
 - Motor PWM
 - Motor sensor
 - 4 * DataAnode in SR
 - 3 * RGB Kathode und SDK SR (2 mit Dekoder)
   - 00 : R
   - 01 : G
   - 10 : B
   - 11 : RCK SR
 - CLK SR

![image](https://user-images.githubusercontent.com/67058718/130693555-f13dcc01-4277-45be-98ea-02239eeb6b89.png)
- RST
- ADC0
- Enable
- GPIO16 CLK (**no Interrupt**)
- GPIO14 Anode2 
- GPIO12 Anode0 
- GPIO13 Anode1 
- VCC
- ....
- ....
- ....
- ....
- ....
- ....
- GND
- GPIO15 Anode3 (**pulled**)
- GPIO02 Decoder0 (**pulled**)
- GPIO00 Decoder1 (**pulled**)
- GPIO04 Motor PWM
- GPIO05 Motor Sensor
- GPIO03 (**RX**)
- GPIO01 (**TX**)

Connector to RingOfFire:
 - 4 * DataAnode in SR
 - 3 * RGB Kathode und SDK SR (2 mit Dekoder)
 - CLK SR
 - VCC
 - GND
=> 9
