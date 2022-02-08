/*
 * Timer_FastPWM.c
 *
 * Created: 1/31/2022 4:49:38 PM
 *  Author: Mahm Oud Sa Ad
 */ 


#include <Timer0.h>
#include <GPIO.h>


void Timer_Inverting_FastPWM_Init()
{
	TIMER_DataType counter_3 = {Timer0,FastPWM_mode,Clk_1024,Timer_No_Interrupt,inverting_mode};
	TIMER_Init(counter_3,64);
}
void Timer_NonInverting_FastPWM_Init()
{
	TIMER_DataType counter_3 = {Timer0,FastPWM_mode,Clk_1024,Timer_No_Interrupt,NON_inverting_mode};
	TIMER_Init(counter_3,64);
}