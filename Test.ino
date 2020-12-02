#include "Arduino.h"
#include <Adafruit_NeoPixel.h>

#include "POVManager.h"

#include <GDBStub.h>

#define PIN           0
#define NUMPIXELS      144

Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);
POVManager& povM = POVManager::getInstance();

int delayval = 5;
unsigned long befor_time, after_time;

void setup() {
	pixels.begin();

	Serial.begin(115200);
	gdbstub_init();
	while (!Serial) {
		; // wait for serial port to connect. Needed for native USB port only
	}

	Serial.printf("Starting...\n");

	povM.init();

}

void loop() {
	static uint16_t color = 0;
	color += 100;
	befor_time = micros();
	for(int i=0;i<NUMPIXELS;i++){
		uint32_t mColor = pixels.ColorHSV(color);

		pixels.setPixelColor(i, mColor); // Moderately bright green color.
		//delay(delayval); // Delay for a period of time (in milliseconds).

		//Serial.printf("Hi = %i\n", i);
	}

	pixels.show(); // This sends the updated pixel color to the hardware.
	after_time = micros();
	Serial.printf("Diff = %i us", (after_time - befor_time));
}
