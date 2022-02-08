/*
 * DIO.c
 *
 * Created: 12/14/2021 5:57:02 AM
 *  Author: Mahm Oud Sa Ad
 */ 

#include <GPIO.h>

static void GPIO_ErrorIndication(ErrorType Type)  // static keywords make the scope of function file scope that mean the function is used only in file where it's declared
{
	switch(Type)
	{
		case InvalidArgument:
		printlog("Invalid Argument");
		break;
		default:
		break;
	}
}
void GPIO_Pin_Configuration (GPIO_Register* Chip_port,GPIO_pin_number pin_num,GPIO_pin_Type  O_Or_I_Mode )
{
	 //because of the factor by which we can select the functionality of the function is the Mode of pin , we perform Switch case on the mode 
	 switch (O_Or_I_Mode)  // switch is more fast and readable than if because we know the three available options
	 {
		case INPUT_Float:
		CLEAR_BIT(Chip_port->DDR ,pin_num);
		CLEAR_BIT(Chip_port->PORT,pin_num);
		break;
		case INPUT_Pullup:
		CLEAR_BIT(Chip_port->DDR ,pin_num);
		SET_BIT  (Chip_port->PORT,pin_num);
		break;
		case OUTPUT:
		SET_BIT  (Chip_port->DDR ,pin_num);
		CLEAR_BIT(Chip_port->PORT,pin_num);
		break;
		default:
		GPIO_ErrorIndication(InvalidArgument);   //because of our driver from Post build type , we can't use (#error) so 
		
		break;
 	}

}
void GPIO_Pin_Write(GPIO_Register *Chip_port,GPIO_pin_number pin_num,Digital_pinState Pin_state)
{
	 switch(Pin_state)
	 {
		case HIGH:
		SET_BIT(Chip_port->PORT,pin_num);
		break;
		case LOW:
		CLEAR_BIT(Chip_port->PORT,pin_num);
		break;
		default:
		GPIO_ErrorIndication(InvalidArgument);
		break;
	 }
}

Digital_pinState GPIO_Pin_Read  (GPIO_Register *Chip_port,GPIO_pin_number pin_num)
{
	return READ_BIT(Chip_port->PIN,pin_num);
}
void  GPIO_Pin_Toggle (GPIO_Register *Chip_port,GPIO_pin_number  pin_num)
{
	TOGGLE_BIT(Chip_port->PORT,pin_num);
}
void  GPIO_Port_Configuration     (GPIO_Register * Chip_port,uint_8 port_Value)
{
	/* We Must Check That THe Value Of The configuration Of The Port Does Not exceed The 8 bit (0 <-> 255) */
	if (port_Value <= Max_uint8_Value && port_Value >= Min_uint8_Value)
	{
		/* The Value On The 8 bit DDR To Define Each Pin From The 8 Pins Of The Port As input Or Output */
		/* equal the port to the 0xFF to get the output */
		Chip_port->DDR = port_Value;
	}
	else
	{
		//DIO_ErrorIndication()
	}
}
void  GPIO_Port_Write (GPIO_Register * Chip_port,uint_8 port_Value)
{
	/* We Must Check That THe Value Of The configuration Of The Port Does Not exceed The 8 bit (0 <-> 255) */
	if (port_Value <= Max_uint8_Value && port_Value >= Min_uint8_Value)
	{
		/* Get Out The 8bit Value On The * Pins Of The Port */
		Chip_port->PORT = port_Value;
	}
	else if (port_Value >= Max_uint8_Value)
	{
		Chip_port->PORT = 0xFF;
	}
	else if (port_Value <= Min_uint8_Value)
	{
		Chip_port->PORT = 0x00;
	}
}

uint_8 	GPIO_Port_Read   (GPIO_Register * Chip_port)
{
	return (Chip_port->PIN);
}


void GPIO_Write_High_Nibble(uint_8 Port_Name,uint_8 High_Nibble_value)
{
	High_Nibble_value &=0xf0;
	switch(Port_Name)
	{
		case 'A':
		Port_A->PORT &=0x0f;
		Port_A->PORT |=High_Nibble_value;
		case 'B':
		Port_B->PORT &=0x0f;
		Port_B->PORT |=High_Nibble_value;
		case 'C':
		Port_C->PORT &=0x0f;
		Port_C->PORT |=High_Nibble_value;
		case 'D':
		Port_D->PORT &=0x0f;
		Port_D->PORT |=High_Nibble_value;
	}
}
void GPIO_Write_Low_Nibble(uint_8 Port_Name,uint_8 Low_Nibble_value)
{
	Low_Nibble_value &=0x0f;
	switch(Port_Name)
	{
		case 'A':
		Port_A->PORT &=0xf0;
		Port_A->PORT |=Low_Nibble_value;
		case 'B':
		Port_B->PORT &=0xf0;
		Port_B->PORT |=Low_Nibble_value;
		case 'C':
		Port_C->PORT &=0xf0;
		Port_C->PORT |=Low_Nibble_value;
		case 'D':
		Port_D->PORT &=0xf0;
		Port_D->PORT |=Low_Nibble_value;
	}
}


void GPIO_Pin_Enable_PULLUP_RES(GPIO_Register *Chip_port,GPIO_pin_number pin_num,Pull_UP_RES_State Pull_Up)
{
	
}
/*
void write_high_nibble(unsigned char portname,unsigned char value)
{
	value<<=4;
	switch(portname)
	{
		case 'A':
		PORTA&=0x0f;
		PORTA|=value;
		case 'B':
		PORTB&=0x0f;
		PORTB|=value;
		case 'C':
		PORTC&=0x0f;
		PORTC|=value;
		case 'D':
		PORTD&=0x0f;
		PORTD|=value;
	}
}
*/