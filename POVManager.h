/*
 * POVManager.h
 *
 *  Created on: 27.10.2020
 *      Author: z003hc9s
 */

#ifndef POVMANAGER_H_
#define POVMANAGER_H_

#include <ESP8266WiFi.h>

#define FRAMEBUFFER_SIZE_X 64
#define FRAMEBUFFER_SIZE_Y 32

class POVManager {
private:

	static POVManager singelton_instance;

	uint32_t framebuffer[FRAMEBUFFER_SIZE_X][FRAMEBUFFER_SIZE_Y];

	uint8_t currentX;
	uint16_t rpm;

	POVManager();

public:

	POVManager(POVManager& pov) = delete;
	virtual ~POVManager(){}

	static POVManager& getInstance();

	void init();
	static void tick();
	void setPixel(uint8_t x, uint8_t y, uint32_t color);
    void setRPM(uint16_t rpm);
    void sync();
    void test();

};

#endif /* POVMANAGER_H_ */
