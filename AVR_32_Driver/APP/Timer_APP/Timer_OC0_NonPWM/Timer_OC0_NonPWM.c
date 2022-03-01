/*
 * Timer_OC0_NonPWM.c
 *
 * Created: 1/31/2022 7:30:55 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#include <Timer0.h>
#include <GPIO.h>

void Timer_OC0_NonPWM()
{
	TIMER_DataType Counter_2 = {Timer0,CTC_mode,No_Prescaling,Timer_OutPut_Compare_match,OC_Toggle};
	TIMER_Init(Counter_2,250);
}