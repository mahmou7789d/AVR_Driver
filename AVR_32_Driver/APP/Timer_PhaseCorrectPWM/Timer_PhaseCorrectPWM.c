/*
 * Timer_PhaseCorrectPWM.c
 *
 * Created: 1/31/2022 5:26:57 PM
 *  Author: Mahm Oud Sa Ad
 */ 


#include <Timer0.h>
#include <GPIO.h>


void Timer_PhaseCorrect_Init()
{
	TIMER_DataType counter_4 = {Timer0,PhaseCorrectPWM_mode,Clk_1024,Timer_No_Interrupt,Set_upCount_Clear_DownCount};
	TIMER_Init(counter_4,64);
}