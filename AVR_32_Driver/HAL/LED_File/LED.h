/*
 * LED.h
 *
 * Created: 12/14/2021 12:50:39 PM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef LED_H_
#define LED_H_

#include <GPIO.h>
typedef struct
{
	GPIO_Register   *LED_port;
	GPIO_pin_number  LED_pin;
	Digital_pinState LED_Init_State;
}Led_Data;
typedef enum
{
		LED_FW_OFF  =LOW,
		LED_FW_ON   =HIGH,
		LED_REV_ON  =LOW,
		LED_REV_OFF =HIGH,
}Led_State;
 void             Led_Start        (Led_Data LED_init);
 void             Led_State_Control(Led_Data LED_init,Led_State LED_state);
 Digital_pinState Led_Get_State    (Led_Data LED_init);
 void             Led_Toggle       (Led_Data LED_init);
 void             Led_Stop_FW      (Led_Data LED_init);
 void             Led_Stop_REV     (Led_Data LED_init);

#endif 

/*
 void Led_Start(Led_Data LED_init);
  * Brief:	configure where the Led is connected in (which Port and Which pin in this port) and the initial state for the led
  * Input:	port	-Port name
  * 		pin		-Pin number
  * 		init_state	-Required Digital state (GPIO_HIGH , GPIO_LOW)
  * Output:  Void
  * prerequisites:	LED pin module to be initialized
  ************************************************************************************************************
 void Led_State_Control(Led_Data LED_init,Led_State LED_state);
  * Brief:	control the State of the led after configuring it 
  * Input:	port	    -Port name
  * 		pin		    -Pin number
  * 		init_state	-Required Digital state (GPIO_HIGH , GPIO_LOW)
  *         LED_State   - the new state of the led 
  * Output:  Void
  * prerequisites:	LED pin module to be controlled
  ************************************************************************************************************
 Digital_pinState Led_Get_State(Led_Data LED_init);
  * Brief:	read the State of the led after configuring it 
  * Input:	port	-Port name
  * 		pin		-Pin number
  * 		init_state	-Required Digital state (GPIO_HIGH , GPIO_LOW)
  * Output:  the state of the led 
  * prerequisites:	LED pin module to read its state
  ************************************************************************************************************
 void Led_Toggle(Led_Data LED_init);
  * Brief:	toggle the State of the led after configuring it 
  * Input:	port	-Port name
  * 		pin		-Pin number
  * 		init_state	-Required Digital state (GPIO_HIGH , GPIO_LOW)
  * Output:  Void
  * prerequisites:	LED pin module to be toggled
  ************************************************************************************************************
 void Led_Stop_FW(Led_Data LED_init);
  * Brief:	turn off the led forward connected 
  * Input:	port	-Port name
  * 		pin		-Pin number
  * 		init_state	-Required Digital state (GPIO_HIGH , GPIO_LOW)
  * Output:  Void
  * prerequisites:	LED pin module to be turned off
  ************************************************************************************************************
 void Led_Stop_REV(Led_Data LED_init);
  * Brief:	turn off the led reversed connected
  * Input:	port	-Port name
  * 		pin		-Pin number
  * 		init_state	-Required Digital state (GPIO_HIGH , GPIO_LOW)
  * Output:  Void
  * prerequisites:	LED pin module to be turned off
  ************************************************************************************************************
*/

