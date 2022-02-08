/*
 * LM35.c
 *
 * Created: 1/25/2022 10:47:37 AM
 *  Author: Mahm Oud Sa Ad
 */ 

#include <LM35.h>

void LM35_Init(GPIO_pin_number LM35_Pin)
{
	ADC_Pin_Data ADC_data={LM35_Pin,ADC_Disabled_INT,Internal_Volt,ADC_Clk_64,FreeRunningMode,Adjust_Right};
	ADC_Init(ADC_data);
}
uint_8 Read_LM35_Temp(GPIO_pin_number LM35_Pin)
{
	ADC_Pin_Data ADC_data={LM35_Pin,ADC_Disabled_INT,Internal_Volt,ADC_Clk_64,FreeRunningMode,Adjust_Right};
	uint_8 Tempreture = 0x00;
	Tempreture =(ADC_Read(ADC_data)*025);
	//Tempreture =((ADC_Read(ADC_data))*(((Internal_Voltage*1000)/Level_Num)*10));
	return Tempreture;
}