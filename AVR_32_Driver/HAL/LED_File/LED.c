/*
 * LED.c
 *
 * Created: 12/14/2021 12:50:16 PM
 *  Author: Mahm Oud Sa Ad
 */ 

#include <LED.h>
static void LED_Error_Indication(ErrorType type)
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
void Led_Start(Led_Data LED_init)    // initialize the Led to Turn On / Off
{
	GPIO_Pin_Configuration(LED_init.LED_port,LED_init.LED_pin,OUTPUT);
	GPIO_Pin_Write(LED_init.LED_port,LED_init.LED_pin,LED_init.LED_Init_State);
}
Digital_pinState Led_Get_State(Led_Data LED_init)
{
	return GPIO_Pin_Read (LED_init.LED_port,LED_init.LED_pin);
}
void Led_State_Control(Led_Data LED_init,Led_State LED_state)
{
	switch (LED_state)
	{
	// we will use (GPIO_Pin_Write(LED_init.LED_port,LED_init.LED_pin,LED_state) function in following two cases
	// so we will write in the following format
	case HIGH:
	case LOW:
		GPIO_Pin_Write(LED_init.LED_port,LED_init.LED_pin,LED_state);
		break;
	default:
		LED_Error_Indication(InvalidArgument);
		break;
	}
}
void Led_Toggle(Led_Data LED_init)
{
	GPIO_Pin_Toggle (LED_init.LED_port,LED_init.LED_pin);
	//GPIO_Pin_Write(LED_init.LED_port,LED_init.LED_pin,!GPIO_Pin_Read (LED_init.LED_port,LED_init.LED_pin));
}
void Led_Stop_FW(Led_Data LED_init)
{
	GPIO_Pin_Write(LED_init.LED_port,LED_init.LED_pin,LOW);
}
void Led_Stop_REV(Led_Data LED_init)
{
	GPIO_Pin_Write(LED_init.LED_port,LED_init.LED_pin,HIGH);
}
/*
 * An API (Application Programming Interface) is a set of functions that allows applications to access data and
 * interact with external software components, operating systems, or microservices.
 * To simplify, an API delivers a user response to a system and sends the system's response back to a user
 * */
