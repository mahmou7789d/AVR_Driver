/*
 * DIO.h
 *
 * Created: 12/14/2021 5:57:19 AM
 *  Author: Mahm Oud Sa Ad
 */ 
#ifndef GPIO_H_
#define GPIO_H_

#include <AVR32_Chip_Confg.h>



#define Max_uint8_Value 255
#define Min_uint8_Value 0
typedef enum{
	OUTPUT,		       
	INPUT_Float,       
	INPUT_Pullup,	   
}GPIO_pin_Type;
typedef enum{
	LOW,		
	HIGH,		
}Digital_pinState;
typedef enum{
	PIN0,
	PIN1,
	PIN2,
	PIN3,
	PIN4,
	PIN5,
	PIN6,
	PIN7,
	ADC_Diff_Mode,
}GPIO_pin_number;

typedef enum
{
	Pull_UP_Disabled,
	Pull_UP_enabled,
}Pull_UP_RES_State;
void             GPIO_Pin_Configuration      (GPIO_Register *Chip_port,GPIO_pin_number pin_num,GPIO_pin_Type    O_Or_I_Mode);
void             GPIO_Pin_Write              (GPIO_Register *Chip_port,GPIO_pin_number pin_num,Digital_pinState Pin_state);
Digital_pinState GPIO_Pin_Read               (GPIO_Register *Chip_port,GPIO_pin_number pin_num);
void             GPIO_Pin_Toggle             (GPIO_Register *Chip_port,GPIO_pin_number pin_num);
void	         GPIO_Port_Configuration     (GPIO_Register *Chip_port,uint_8 port_Value);
void	         GPIO_Port_Write             (GPIO_Register *Chip_port,uint_8 port_Value);
uint_8 	         GPIO_Port_Read              (GPIO_Register *Chip_port);
void             GPIO_Write_High_Nibble(uint_8 Port_Name,uint_8 High_Nibble_value);
void             GPIO_Write_Low_Nibble(uint_8 Port_Name,uint_8 Low_Nibble_value);
void             GPIO_Pin_Enable_PULLUP_RES(GPIO_Register *Chip_port,GPIO_pin_number pin_num,Pull_UP_RES_State Pull_Up);
#endif /* GPIO_H_ */

/*

 * void   GPIO_Pin_Configuration (GPIO_Register* Chip_port,GPIO_pin_number pin_num,GPIO_pin_Type  O_Or_I_Mode );
 * Brief:	Write a Configuration for GPIO pin in DDRX Register
 * Input:	Chip_port	    -Port name for Port A , B , C and D
 *
 *          pin_num         -Pin number
 * 			O_Or_I_Mode	    -Required state (one Choice from GPIO_pin_Type structure)   is the state which we will do the Switch cases on it
 * Output:  No output
 * return:	Void
 * prerequisites:
 *                 pin direction to be set OUTPUT or INPUT_Float or INPUT_Pullup
 *
 * For Example of Calling : GPIO_Pin_Configuration (Port_A , PIN0 , INPUT_Pullup );
 * the Explain of Calling : we make Pin 0 in Port D in Input state and the Pull up Resistor for the pin is enabled
 *
void  GPIO_Pin_Configuration (GPIO_Register* Chip_port,GPIO_pin_number pin_num,GPIO_pin_Type  O_Or_I_Mode );

 * void	         GPIO_Pin_Write             (GPIO_Register *Chip_port,GPIO_pin_number pin_num,Digital_pinState Pin_state);
 * Brief:	Write the State for GPIO pin in PORTX Register
 * Input:	Chip_port	    -Port name for Port A , B , C and D
 *
 *          pin_num         -Pin number
 * 			Pin_state	    -Required state (one Choice from Digital_pinState structure)   is the state which we will do the Switch cases on it
 * Output:  No output
 * return:	Void
 * prerequisites:
 *                 pin State to be set LOW or HIGH
 *
 * For Example of Calling : GPIO_Pin_Configuration(Port_A,PIN1,LOW);
 * the Explain of Calling : we make Pin 1 in Port A in Low State
 *
void  GPIO_Pin_Write (GPIO_Register *Chip_port,GPIO_pin_number pin_num,Digital_pinState Pin_state);

 * Digital_pinState  GPIO_Pin_Read              (GPIO_Register *Chip_port,GPIO_pin_number pin_num);
 * Brief:	Read the State for GPIO pin in PINX Register
 * Input:	Chip_port	    -Port name for Port A , B , C and D
 *
 *          pin_num         -Pin number
 *
 * Output:  Pin_State output
 * return:	Digital_State of the Pin (LOW , HIGH)
 * prerequisites:
 *
 *    pin State to be Read LOW or HIGH
 *
 * For Example of Calling : GPIO_Pin_Read (Port_A , PIN0 );
 * the Explain of Calling : we read the state of Pin 0 in Port D
 *
Digital_pinState GPIO_Pin_Read              (GPIO_Register *Chip_port,GPIO_pin_number pin_num);

 * void             GPIO_Pin_Toggle            (GPIO_Register *Chip_port,GPIO_pin_number pin_num);
 * Brief:	Toggle the State for GPIO pin in PORTX Register
 * Input:	Chip_port	    -Port name for Port A , B , C and D
 *
 *          pin_num         -Pin number
 *
 * Output:  No output
 * return:	Void
 * prerequisites:
 *
 *    pin State to be toggled from Pin_LOW to Pin_HIGH and the opposite action
 *
 * For Example of Calling : GPIO_Pin_Toggle (Port_A , PIN0 );
 * the Explain of Calling : we Toggle the state of Pin 0 in Port A
 *
void             GPIO_Pin_Toggle            (GPIO_Register *Chip_port,GPIO_pin_number pin_num);

 * void	         GPIO_Port_Configuration     (GPIO_Register * Chip_port,uint_8 port_Value);
 * Brief:	Write a Configuration for GPIO pin in DDRX Register
 * Input:	Chip_port	    -Port name for Port A , B , C and D
 *
 *          port_Value      - the value is stored in DDRX Register of the port
 * Output:  No output
 * return:	Void
 * prerequisites:
 *                 port_Value to be set the Port's pin_Type
 *
 * For Example of Calling : GPIO_Port_Configuration (Port_A , 0XAA );
 * the Explain of Calling : we make Pin 0 :Pin 3 in Port A in Pull Up input State and Pin4 : pin 7 in the same port in Output State
 *

void	         GPIO_Port_Configuration     (GPIO_Register * Chip_port,uint_8 port_Value);
 * void	         GPIO_Port_Write             (GPIO_Register * Chip_port,uint_8 port_Value);
 * Brief:	Write the State for GPIO port in PORTX Register
 * Input:	Chip_port	    -Port name for Port A , B , C and D
 *
 *          port_Value      - the value is stored in DDRX Register of the port
 * Output:  No output
 * return:	Void
 * prerequisites:
 *                 port_Value to be set the Port's pin_value
 *
 * For Example of Calling : GPIO_Port_Write (Port_A , 0XAA );
 * the Explain of Calling : we write the value AA in  Port A 's pins 
 *
void	         GPIO_Port_Write             (GPIO_Register * Chip_port,uint_8 port_Value);
 * Digital_pinState  GPIO_Pin_Read              (GPIO_Register *Chip_port,GPIO_pin_number pin_num);
 * Brief:	Read the State for GPIO port in PINX Register
 * Input:	Chip_port	    -Port name for Port A , B , C and D
 *
 * Output:  Port_State output
 * return:	uint_8  value of the port (Pin_LOW , Pin_HIGH)
 * prerequisites:
 *
 *    port State to be Read 
 *
 * For Example of Calling : GPIO_Port_Read (Port_A);
 * the Explain of Calling : we read the state  of Port A 
 *
uint_8 	         GPIO_Port_Read              (GPIO_Register * Chip_port);

*/