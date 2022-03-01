/*
 * Timer_APP.c
 *
 * Created: 1/26/2022 3:43:00 PM
 *  Author: Mahm Oud Sa Ad
 */ 


#include <Timer_APP.h>

Led_Data LED_1 = {Port_B,PIN0,LED_FW_OFF};
TIMER_DataType counter = {Normal_mode,Clk_1024};
void Timer_APP_INIT()
{
	
	Led_Start(LED_1);
	
	TIMER_Init(counter,250);
}

void Timer_APP_Control()
{
	Led_State_Control(LED_1,LED_FW_ON);
	TIMER_Delay(counter ,0x00);
	Led_State_Control(LED_1,LED_FW_OFF);
	TIMER_Delay(counter ,0x00);
}
