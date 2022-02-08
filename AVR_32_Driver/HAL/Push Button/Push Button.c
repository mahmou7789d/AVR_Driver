/*
 * Push_Button.c
 *
 * Created: 12/18/2021 1:52:11 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#include <Push Button.h>
#include <util/delay.h>

static Digital_pinState Button_Default_State;
void Butt_Switch_init(Push_Sw_Datatype  *Button)
{
	if (Button->Button_mode == OUTPUT)
	{
		/* Generate Error */
	}
	else
	{
		GPIO_Pin_Configuration(Button->Button_port,Button->Button_pin,Button->Button_mode);
		Button->Button_Pre_Level = GPIO_Pin_Read(Button->Button_port,Button->Button_pin);
		Button_Default_State=Button->Button_Pre_Level;
	    Button->Button_PrevState = Not_Pressed;
	}
}
Push_Button_State Butt_Switch_Read(Push_Sw_Datatype  *Button)
{
	Push_Button_State  returnstate = Not_Pressed;  
	if (Button->Button_Pre_Level != GPIO_Pin_Read(Button->Button_port,Button->Button_pin))
	{
		_delay_ms(BUTTON_BOUNCE_PERIOD_mS);
		if (Button->Button_Pre_Level != GPIO_Pin_Read(Button->Button_port,Button->Button_pin))
		{
			Button->Button_Pre_Level = GPIO_Pin_Read(Button->Button_port,Button->Button_pin);
			if(Button->Button_Pre_Level !=Button_Default_State)
			{
				returnstate = Pressed;
			}
			else
			{
				returnstate = Released;
			}
		}	
	}
	return returnstate;
}
