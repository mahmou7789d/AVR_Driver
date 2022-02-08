/*
 * LM35OnLCD.h
 *
 * Created: 1/25/2022 4:12:53 PM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef LM35ONLCD_H_
#define LM35ONLCD_H_

#include <ADC_File.h>
#include <LCD.h>
#include <LM35.h>
#include <util/delay.h>
void LM35OnLCD_INIT();
void LM35OnLCD_Control();


/*
void LM35OnLCD_INIT(GPIO_pin_number LM35_Channel);
void LM35OnLCD_Control(GPIO_pin_number LM35_Channel);
*/

#endif /* LM35ONLCD_H_ */