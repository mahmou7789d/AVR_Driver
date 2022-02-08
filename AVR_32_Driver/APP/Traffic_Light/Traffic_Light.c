/*
 * Traffic_Light.c
 *
 * Created: 2/1/2022 11:31:26 AM
 *  Author: Mahm Oud Sa Ad
 */ 

/*
#include <Timer0.h>
#include <util/delay.h>
#include <LCD.h>
#include <LED.h>


TIMER_DataType counter_app1 = {Timer0,CTC_mode,Clk_1024,Timer_OutPut_Compare_match};
Led_Data Red_Led    ={Port_D,PIN0,LED_FW_OFF};	
Led_Data Yellow_Led ={Port_D,PIN1,LED_FW_OFF};	
Led_Data Green_Led  ={Port_D,PIN2,LED_FW_OFF};		
volatile uint_16 counterdown;
void ISR_CTC_Timer(void);

void Traffic_Light_Init_System()
{
	TIMER_Init(counter_app1,78);
	Led_Start(Red_Led);
	Led_Start(Yellow_Led);
	Led_Start(Green_Led);
	Timer0_CompareMatch_Callback(&ISR_CTC_Timer);
}
void Traffic_Light_Control_System()
{
	
}

void ISR_CTC_Timer(void)
{
	counterdown++;
}
*/