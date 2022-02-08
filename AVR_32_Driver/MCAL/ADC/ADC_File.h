/*
 * ADC_File.h
 *
 * Created: 1/25/2022 4:21:00 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef ADC_FILE_H_
#define ADC_FILE_H_


#include <GPIO.h>
#include <util/delay.h>

#define Level_Num 1024
#define Internal_Voltage 2.56
typedef enum 
{
	VREF_Volt,
	VACC_Volt,
	Internal_Volt,
}Voltage_Referance_Source;

typedef enum
{
	ADC_Clk_2,
	ADC_Clk_4,
	ADC_Clk_8,
	ADC_Clk_16,
	ADC_Clk_32,
	ADC_Clk_64,
	ADC_Clk_128,
}ADC_Prescalar_Value;

typedef enum
{
	ADC_Enabled_INT,
	ADC_Disabled_INT,
}ADC_Inerrupt_state;

typedef enum
{
	FreeRunningMode,
	AnalogComparator,
	ExternalInterruptRequest0,
	TimerCounter0CompareMatch,
	TimerCounter0Overflow,
	TimerCounterCompareMatchB,
	TimerCounter1Overflow,
	TimerCounter1CaptureEvent,
}Auto_Trigger_Source;

typedef enum
{
	Adjust_Right,
	Adjust_Left,
}ADLAR_Adjust_Results;

typedef struct
{
	GPIO_pin_number ADC_Pin;
	ADC_Inerrupt_state ADC_INT_State;
	Voltage_Referance_Source Vref;
	ADC_Prescalar_Value ADC_Prescaler;
	Auto_Trigger_Source ADC_Conversion_Types;
	ADLAR_Adjust_Results ADC_Adjust;
}ADC_Pin_Data;

void ADC_Init(ADC_Pin_Data ADC_Data);
uint_16 ADC_Read(ADC_Pin_Data ADC_Data );
void ADC_INT();


#endif /* ADC_FILE_H_ */