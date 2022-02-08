/*
 * LM35.h
 *
 * Created: 1/25/2022 10:47:16 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef LM35_H_
#define LM35_H_

#include <ADC_file.h>

#define LM34_MAX_TEMPERATURE       150
#define LM35_MAX_VOLT_VALUE        1.5

void LM35_Init(GPIO_pin_number LM35_Pin);
uint_8 Read_LM35_Temp( GPIO_pin_number LM35_Pin);
#endif /* LM35_H_ */