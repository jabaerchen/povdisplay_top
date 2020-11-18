#include "Arduino.h"
//#include <Adafruit_NeoPixel.h>

#include "POVManager.h"

#include <GDBStub.h>

#define PIN            6
#define NUMPIXELS      10

//Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);
POVManager& povM = POVManager::getInstance();

int delayval = 500;


void setup() {
	//pixels.begin();

	Serial.begin(115200);
	gdbstub_init();
	Serial.printf("Starting...\n");
	while (!Serial) {
		; // wait for serial port to connect. Needed for native USB port only
	}

	povM.init();

}

void loop() {
	/*
  for(int i=0;i<NUMPIXELS;i++){
    pixels.setPixelColor(i, pixels.Color(255,255,255)); // Moderately bright green color.
    pixels.show(); // This sends the updated pixel color to the hardware.
    delay(delayval); // Delay for a period of time (in milliseconds).
  }
	 */
}
