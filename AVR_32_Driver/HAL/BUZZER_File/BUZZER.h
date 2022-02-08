/*
 * BUZZER.h
 *
 * Created: 12/18/2021 1:19:53 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef BUZZER_H_
#define BUZZER_H_
#include <GPIO.h>
typedef struct
{
	GPIO_Register   *Buzzer_port;
	GPIO_pin_number  Buzzer_pin;
	Digital_pinState Buzzer_Init_State;
}Buzzer_Data;

typedef enum
{
	Buzzer_OFF  =LOW,
	Buzzer_ON   =HIGH,
}Buzzer_State;

 void             Buzzer_Start        (Buzzer_Data Buzzer_init);
 void             Buzzer_State_Control(Buzzer_Data Buzzer_init,Buzzer_State BUZZER_state);
 Digital_pinState Buzzer_Get_State    (Buzzer_Data Buzzer_init);
 void             Buzzer_toggle       (Buzzer_Data Buzzer_init);
 void             Buzzer_Stop         (Buzzer_Data Buzzer_init);


#endif /* BUZZER_H_ */

/*
 * Overloaded functions may have the same or different return types.
 * But the compiler is unable to distinguish between two functions based only on their respective return type
 * (which is to say that different return types alone are not sufficient for a successful overload).
 *
 * The Solution is making Change in the Function name at least
 * */

/*
the function of the Module 
 void Buzzer_Start(Buzzer_Data Buzzer_init);
  * Brief:	configure where the Led is connected in (which Port and Which pin in this port) and the initial state for the Buzzer
  * Input:	port	-Port name
  * 		pin		-Pin number
  * 		init_state	-initial Digital state (HIGH , LOW)
  * Output:  Void
  * prerequisites:	Buzzer pin module to be initialized
  *****************************************************************************************************  
 void Buzzer_State_Control(Buzzer_Data Buzzer_init,Buzzer_State BUZZER_state);
  * Brief:	control in the state of the buzzer by High or Low Signal
  * Input:	port	-Port name
  * 		pin		-Pin number
  * 		init_state	-initial Digital state (HIGH , LOW)
  *         BUZZER_state - Required Digital state (HIGH , LOW)
  * Output:  Void
  * prerequisites:	Buzzer pin module to be controlled
  *****************************************************************************************************  
 Digital_pinState Buzzer_Get_State(Buzzer_Data Buzzer_init);
  * Brief:	control in the state of the buzzer by High or Low Signal
  * Input:	port	-Port name
  * 		pin		-Pin number
  * 		init_state	-initial Digital state (HIGH,LOW)
  * Output:  the last state of Buzzer 
  * prerequisites:	Buzzer pin module 's state to be read
  *****************************************************************************************************  
 void Buzzer_toggle(Buzzer_Data Buzzer_init);
  * Brief:	control in the state of the buzzer by High or Low Signal
  * Input:	port	-Port name
  * 		pin		-Pin number
  * 		init_state	-initial Digital state (HIGH,LOW)
  * Output:  Void
  * prerequisites:	Buzzer pin module to be toggled
  *****************************************************************************************************  

 void Buzzer_Stop(Buzzer_Data Buzzer_init);
  * Brief:	control in the state of the buzzer by High or Low Signal
  * Input:	port	-Port name
  * 		pin		-Pin number
  * 		init_state	-initial Digital state (HIGH , LOW)
  * Output:  Void
  * prerequisites:	Buzzer pin module to be Stopped
  *****************************************************************************************************  
*/