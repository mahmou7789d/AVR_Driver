/*
 * LED_Relay_Buzzer_Button_SevenSegment_Control.c
 *
 * Created: 12/20/2021 8:02:52 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#include <GPIO_APP.h>
#include <GPIO.h>
#include <LED.h>
#include <Interrupt.h>


Led_Data LED_8 = {Port_A,PIN0,LED_FW_OFF};
//Push_Sw_Datatype Button_2 = {Port_C,PIN1,INPUT_Pullup};
//Sev_Seg_Datatype Display_1 ={Port_B,PIN1,PIN2,PIN3,PIN4};

void GPIO_APP_init(void)
{
	Led_Start(LED_8);
	//Butt_Switch_init(&Button_2);
	//Sev_Seg_Start(Display_1);
	EXTINT_InterruptInit(EXINT_INT1,EXINT_FallingEdge);
	EXT_INT0_ISR = GPIO_APP_Control;
	GLOBAL_INT_ENABLE();
}
void GPIO_APP_Control(void)
{
	Led_Toggle(LED_8);	
}


#if 0
void GPIO_APP_Control(void)
{
	uint_8 counter;	
	if (Butt_Switch_Read(&Button_2) == Pressed)
	{
		Led_Toggle(LED_8);
		for(counter=0;counter<10;counter++)
		{
			Sev_Seg_Write(Display_1,counter);
			_delay_ms(100);
		}
		
	}

}
#endif