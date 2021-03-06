/***************************************************************************
  This is a library for the BMP280 humidity, temperature & pressure sensor

  Designed specifically to work with the Adafruit BMEP280 Breakout 
  ----> http://www.adafruit.com/products/2651

  These sensors use I2C or SPI to communicate, 2 or 4 pins are required 
  to interface.

  Adafruit invests time and resources providing this open source code,
  please support Adafruit andopen-source hardware by purchasing products
  from Adafruit!

  Written by Limor Fried & Kevin Townsend for Adafruit Industries.  
  BSD license, all text above must be included in any redistribution
 ***************************************************************************/

#include <Wire.h>
//#include <SPI.h>
#include <Adafruit_BMP280.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

//#define BMP_SCK 13
//#define BMP_MISO 12
//#define BMP_MOSI 11
//#define BMP_CS 10

Adafruit_BMP280 bmp; // I2C
//Adafruit_BMP280 bme(BMP_CS); // hardware SPI
//Adafruit_BMP280 bme(BMP_CS, BMP_MOSI, BMP_MISO,  BMP_SCK);

static float initialAlt;
int32_t temp;
int64_t pressure;
float altitude;
char *Flash_ptr = (char*)0x008400;
int j, i;

void setup() {
  Serial.begin(9600);

  if (!bmp.begin()) {
    Serial.println(F("Could not find a valid BMP280 sensor, check wiring!"));
    while (1);
  }
  else {
	  initialAlt = bmp.readAltitude();
  }

}

void loop() {

//	__delay_cycles(10000);
    altitude = bmp.readAltitude(1013.25)-initialAlt;

    while (FCTL3 & BUSY);  //Check busy bit
    FCTL3 = FWKEY;    		//clear lock bit
    FCTL1 = FWKEY + ERASE;   //set erase bit
    *Flash_ptr = 0;			//dummy write
    FCTL1 = FWKEY + WRT;   //Set WRT bit for write operation

    while(1) {
//    	__delay_cycles(10000);
    	__delay_cycles(100);

//    	temp = bmp.readTemperature();		//read temperature
    	pressure = bmp.readPressure();		//read pressure

//    	*Flash_ptr++ = temp;				//write temp to flash
    	*Flash_ptr++ = pressure >> 16;		//write pressure to flash
    	*Flash_ptr++ = pressure >> 8;
    	*Flash_ptr++ = pressure;

    	altitude = bmp.readAltitude(1013.25)-initialAlt;

    }

    FCTL1 = FWKEY;    //clear WRT bit
    FCTL3 = FWKEY + LOCK;   //Set lock bit

}
