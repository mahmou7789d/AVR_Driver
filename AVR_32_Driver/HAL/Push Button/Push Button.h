/*
 * Push_Button.h
 *
 * Created: 12/18/2021 1:51:52 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef PUSH_BUTTON_H_
#define PUSH_BUTTON_H_

 

#include <GPIO.h>

#define BUTTON_BOUNCE_PERIOD_mS		(50)

typedef enum 
{
	Not_Pressed,
	Pressed,
	Released,	
}Push_Button_State;
typedef struct
{
	GPIO_Register *     Button_port;
    GPIO_pin_number     Button_pin;
	GPIO_pin_Type       Button_mode;
	Digital_pinState    Button_Pre_Level;
	Push_Button_State   Button_PrevState;
}Push_Sw_Datatype;

void              Butt_Switch_init (Push_Sw_Datatype  *Button);
Push_Button_State Butt_Switch_Read (Push_Sw_Datatype  *Button);



#endif /* PUSH BUTTON_H_ */