/*
 * Relay.c
 *
 * Created: 12/14/2021 3:52:16 PM
 *  Author: Mahm Oud Sa Ad
 */ 
#include <Relay.h>
static void Relay_Error_Indication(ErrorType type)
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

void RELAY_Start(RELAY_Data RELAY_init)
{
	GPIO_Pin_Configuration(RELAY_init.RELAY_port,RELAY_init.RELAY_pin,OUTPUT);
	GPIO_Pin_Write(RELAY_init.RELAY_port,RELAY_init.RELAY_pin,RELAY_init.RELAY_Init_State);
}

void RELAY_State_Control(RELAY_Data RELAY_init,RELAY_State RELAY_state)
{
	switch (RELAY_state)
	{
		case HIGH:
		case LOW:
		GPIO_Pin_Write(RELAY_init.RELAY_port,RELAY_init.RELAY_pin,RELAY_state);
		break;
		default:
		Relay_Error_Indication(InvalidArgument);
		break;
	}
}
RELAY_State RELAY_Get_State(RELAY_Data RELAY_init)
{
	return GPIO_Pin_Read (RELAY_init.RELAY_port,RELAY_init.RELAY_pin);
}
void RELAY_toggle(RELAY_Data RELAY_init)
{
	GPIO_Pin_Toggle (RELAY_init.RELAY_port,RELAY_init.RELAY_pin);
}
void RELAY_Stop(RELAY_Data RELAY_init)
{
	GPIO_Pin_Write(RELAY_init.RELAY_port,RELAY_init.RELAY_pin,LOW);
}
