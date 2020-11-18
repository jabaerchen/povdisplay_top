/*
 * POVManager.cpp
 *
 *  Created on: 27.10.2020
 *      Author: z003hc9s
 */
#include "Arduino.h"
#include "POVManager.h"
#include <ESP8266WiFi.h>

	POVManager POVManager::singelton_instance;


POVManager::POVManager() {

	currentX = 0;
	rpm = 0;

	for(uint8_t y = 0; y < FRAMEBUFFER_SIZE_Y; y++){
		for(uint8_t x = 0; x < FRAMEBUFFER_SIZE_Y; x++){
			framebuffer[y][x] = 0;
		}
	}
}


POVManager& POVManager::getInstance(){
	return POVManager::singelton_instance;
}

void POVManager::init(){
	Serial.print("Initialize POV Manager v0.1...");

	timer1_attachInterrupt(POVManager::tick);
	timer1_enable(TIM_DIV16, TIM_EDGE, TIM_SINGLE);
	timer1_write(600000); //120000 us
}

void POVManager::tick(){
	digitalWrite(LED_BUILTIN, !digitalRead(LED_BUILTIN));
}

void POVManager::setPixel(uint8_t x, uint8_t y, uint32_t color){
	framebuffer[x][y] = color;
}

void POVManager::setRPM(uint16_t rpm){
	this->rpm = rpm;

}

void POVManager::sync(){
	currentX = 0;
}
