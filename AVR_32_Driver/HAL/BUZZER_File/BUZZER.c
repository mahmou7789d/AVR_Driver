/*
 * BUZZER.c
 *
 * Created: 12/18/2021 1:19:41 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#include <BUZZER.h>
static void Buzzer_Error_Indication(ErrorType type)
{
	/* Comm Switch */
	switch(type)
	{
		case InvalidArgument:
		printlog("Invalid Argument");
		break;
		case OverFlow:
		printlog("OverFlow");
		break;
		default:
		break;
	}
}

void Buzzer_Start(Buzzer_Data Buzzer_init)
{
	GPIO_Pin_Configuration(Buzzer_init.Buzzer_port,Buzzer_init.Buzzer_pin,OUTPUT);
	GPIO_Pin_Write(Buzzer_init.Buzzer_port,Buzzer_init.Buzzer_pin,Buzzer_init.Buzzer_Init_State);
}
Digital_pinState Buzzer_Get_State(Buzzer_Data Buzzer_init)
{
	return GPIO_Pin_Read (Buzzer_init.Buzzer_port,Buzzer_init.Buzzer_pin);
}
void Buzzer_State_Control(Buzzer_Data Buzzer_init,Buzzer_State BUZZER_state)
{
	switch (BUZZER_state)
	{
		case HIGH:
		case LOW:
		GPIO_Pin_Write(Buzzer_init.Buzzer_port,Buzzer_init.Buzzer_pin,BUZZER_state);
		break;
		default:
		Buzzer_Error_Indication(InvalidArgument);
		break;
	}
}
void Buzzer_Stop(Buzzer_Data Buzzer_init)
{
	GPIO_Pin_Write(Buzzer_init.Buzzer_port,Buzzer_init.Buzzer_pin,LOW);
}
void Buzzer_toggle(Buzzer_Data Buzzer_init)
{
	GPIO_Pin_Toggle (Buzzer_init.Buzzer_port,Buzzer_init.Buzzer_pin);
}
