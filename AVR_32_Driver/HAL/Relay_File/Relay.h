/*
 * Relay.h
 *
 * Created: 12/14/2021 3:52:34 PM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef RELAY_H_
#define RELAY_H_
#include <GPIO.h>
typedef struct
{
	GPIO_Register   *RELAY_port;
	GPIO_pin_number  RELAY_pin;
	Digital_pinState RELAY_Init_State;
}RELAY_Data;

typedef enum
{
	RELAY_OFF =LOW,
	RELAY_ON  =HIGH,
}RELAY_State;
 void        RELAY_Start        (RELAY_Data RELAY_init);
 void        RELAY_State_Control(RELAY_Data RELAY_init,RELAY_State RELAY_state);
 RELAY_State RELAY_Get_State    (RELAY_Data RELAY_init);
 void        RELAY_toggle       (RELAY_Data RELAY_init);
 void        RELAY_Stop         (RELAY_Data RELAY_init);
#endif /* RELAY_H_ */
/*
the function of the module 

 void RELAY_Start(RELAY_Data RELAY_init);
  * Brief:	configure where the Relay is connected in (which Port and Which pin in this port) and the initial state for the Relay
  * Input:	port	    -Port name
  * 		pin		    -Pin number
  * 		init_state	-Required Digital state (HIGH , LOW)
  * Output:  Void
  * prerequisites:	Relay pin module to be initialized
  *****************************************************************************************************  
 void RELAY_State_Control(RELAY_Data RELAY_init,RELAY_State RELAY_state);
  * Brief:	configure where the Relay is connected in (which Port and Which pin in this port) and the initial state for the Relay
  * Input:	port	    -Port name
  * 		pin		    -Pin number
  * 		init_state	-Required Digital state (HIGH , LOW)
  * Output:  Void
  * prerequisites:	Relay pin module to be controlled
  *****************************************************************************************************  
 
 RELAY_State RELAY_Get_State(RELAY_Data RELAY_init);
  * Brief:	control in the state of the Relay by High or Low Signal
  * Input:	port	-Port name
  * 		pin		-Pin number
  * 		init_state	-initial Digital state (HIGH,LOW)
  *
  * Output: RELAY_State  -the last state of Relay 
  * prerequisites:	Relay pin module 's state to be read
  *****************************************************************************************************  
 void RELAY_toggle(RELAY_Data RELAY_init);
  * Brief:	control in the state of the Relay by High or Low Signal
  * Input:	port	-Port name
  * 		pin		-Pin number
  * 		init_state	-initial Digital state (HIGH,LOW)
  * Output:  Void
  * prerequisites:	Relay pin module to be toggled
  ***************************************************************************************************** 

 void RELAY_Stop(RELAY_Data RELAY_init);
  * Brief:	control in the state of the Relay by High or Low Signal
  * Input:	port	-Port name
  * 		pin		-Pin number
  * 		init_state	-initial Digital state (HIGH , LOW)
  * Output:  Void
  * prerequisites:	Relay pin module to be Stopped
  ***************************************************************************************************** 

*/