/*
 * Multi_7Segment.c
 *
 * Created: 2/1/2022 2:25:33 PM
 *  Author: Mahm Oud Sa Ad
 */ 



#include <GPIO.h>
#include <Direct_7-Segment.h>
#include <Timer0.h>


TIMER_DataType counter_app_2 = {Timer0,CTC_mode,Clk_1024,Timer_OutPut_Compare_match};
volatile uint_8 counter_1Sec=0;
volatile uint_8 counter_10mSec=0;
volatile unsigned char Display_Counter = 0;
void ISR_CTC_Timer_1(void);
void Multi_7_Segment_Init_System()
{
	TIMER_Init(counter_app_2,80);
	Timer0_CompareMatch_Callback(&ISR_CTC_Timer_1);
	Seven_Seg_Init(Port_D);
	GPIO_Pin_Configuration(Port_C,PIN6,OUTPUT);
	GPIO_Pin_Configuration(Port_C,PIN7,OUTPUT);
	
}
void Multi_7_Segment_Control_System()
{
	GPIO_Pin_Write(Port_C,PIN7,LOW);
	GPIO_Pin_Write(Port_C,PIN6,HIGH);
	Seven_Seg_Write(Port_D,Common_Cathode,(Display_Counter%10));
	while(counter_10mSec == 0);
	counter_10mSec=0;
	GPIO_Pin_Write(Port_C,PIN6,LOW);
	GPIO_Pin_Write(Port_C,PIN7,HIGH);
	Seven_Seg_Write(Port_D,Common_Cathode,(Display_Counter/10));
	while(counter_10mSec == 0);
	counter_10mSec=0;
	if (counter_1Sec>100)
	{
		counter_1Sec=0;
		Display_Counter++;
		if(Display_Counter>=21)
		{
			Display_Counter=0;
		}
	}
}


void ISR_CTC_Timer_1(void)
{
	counter_1Sec++;
	counter_10mSec=1;
	
}