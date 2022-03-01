/*
 * Timer_CTC_APP.c
 *
 * Created: 1/31/2022 7:30:33 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#include <Timer0.h>
#include <GPIO.h>
#include <LED.h>

void LED_Control(void);
Led_Data LED_ = {Port_D,PIN0,LED_FW_OFF};
void Timer_CTC_APP_Init()
{
	TIMER_DataType counter_1 = {Timer0,CTC_mode,Clk_8,Timer_OutPut_Compare_match};
	Led_Start(LED_);
	TIMER_Init(counter_1,250);
	Timer0_CompareMatch_Callback(&LED_Control);
	
}
void LED_Control(void)
{
	static uint_16 counter=0;
	counter++;
	if(counter == 4000)
	{
		Led_Toggle(LED_);
	}
	
}
