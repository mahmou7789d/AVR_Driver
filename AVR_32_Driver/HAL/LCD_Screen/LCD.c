/*
 * LCD.c
 *
 * Created: 1/7/2022 3:44:50 PM
 *  Author: Mahm Oud Sa Ad
 */ 

#include <LCD.h>
#include <util/delay.h>
static void Set_Enable_Bit()
{
	GPIO_Pin_Write(Port_B,EN_Pin,HIGH);
	_delay_ms(2);
	GPIO_Pin_Write(Port_B,EN_Pin,LOW);
	_delay_ms(2);
}
void LCD_Init(void)
{
	_delay_ms(200);
	#if  defined Eight_Bits_Mode
	GPIO_Port_Configuration(Port_B,Max_uint8_Value);
	GPIO_Pin_Configuration(Port_B,RS_Pin,OUTPUT); 
	GPIO_Pin_Configuration(Port_B,EN_Pin,OUTPUT); 
	GPIO_Pin_Configuration(Port_B,RW_Pin,OUTPUT);
	GPIO_Pin_Write(Port_B,RW_Pin,LOW);
	_delay_ms(1);	
	Send_Command_LCD(Return_Home);
	_delay_ms(1);
	Send_Command_LCD(Function_Set_Eight_BIT);
	_delay_ms(1);
	Send_Command_LCD(Display_On_Curser_On);
	_delay_ms(1);
	Send_Command_LCD(Clear_Display);
	_delay_ms(10);
	
	#elif  defined Four_Bits_Mode
	#ifdef LCD_UPPER_DATA_PORT
	GPIO_Port_Configuration(Port_B,0XF0);
	GPIO_Pin_Configuration(Port_B,RS_Pin,OUTPUT);
	GPIO_Pin_Configuration(Port_B,EN_Pin,OUTPUT);
	GPIO_Pin_Configuration(Port_B,RW_Pin,OUTPUT);
	CLEAR_BIT(LCD_CONTROL_BIT_PORT,RW_Pin);
	_delay_ms(1);
	Send_Command_LCD(Return_Home);
	_delay_ms(1);
	Send_Command_LCD(Function_Set_Four_BIT);
	_delay_ms(1);
	Send_Command_LCD(Display_On_Curser_On);
	_delay_ms(1);
	Send_Command_LCD(Clear_Display);
	_delay_ms(10);
	#else
	GPIO_Port_Configuration(Port_B,0X0F);
	GPIO_Pin_Configuration(Port_B,RS_Pin,OUTPUT);
	GPIO_Pin_Configuration(Port_B,EN_Pin,OUTPUT);
	GPIO_Pin_Configuration(Port_B,RW_Pin,OUTPUT);
	CLEAR_BIT(LCD_CONTROL_BIT_PORT,RW_Pin);
	_delay_ms(1);
	Send_Command_LCD(Return_Home);
	_delay_ms(1);
	Send_Command_LCD(Function_Set_Four_BIT);
	_delay_ms(1);
	Send_Command_LCD(Display_On_Curser_On);
	_delay_ms(1);
	Send_Command_LCD(Clear_Display);
	_delay_ms(10);
	#endif
	#endif
}
void Send_Command_LCD(uint_8 Command)
{
	#if  defined Eight_Bits_Mode
	GPIO_Port_Write(Port_B,Command);
	GPIO_Pin_Write(Port_B,RS_Pin,LOW);
	Set_Enable_Bit();
	_delay_ms(1);
	#elif defined Four_Bits_Mode
	#ifdef LCD_UPPER_DATA_PORT
	GPIO_Write_High_Nibble('B',Command);
	GPIO_Pin_Write(Port_B,RS_Pin,LOW);
	Set_Enable_Bit();
	GPIO_Write_High_Nibble('B',Command<<4);
	GPIO_Pin_Write(Port_B,RS_Pin,LOW);
	Set_Enable_Bit();
	_delay_ms(1);
	#else
	GPIO_Write_Low_Nibble('B',Command>>4);
	GPIO_Pin_Write(Port_B,RS_Pin,LOW);
	Set_Enable_Bit();
	GPIO_Write_Low_Nibble('B',Command);
	GPIO_Pin_Write(Port_B,RS_Pin,LOW);
	Set_Enable_Bit();
	_delay_ms(1);
	#endif
	#endif
}
void Send_char_LCD(uint_8 Character)
{
	#if  defined Eight_Bits_Mode
	GPIO_Port_Write(Port_B,Character);
	GPIO_Pin_Write(Port_B,RS_Pin,HIGH);
	Set_Enable_Bit();
	#elif defined Four_Bits_Mode
	#ifdef LCD_UPPER_DATA_PORT
	GPIO_Write_High_Nibble('B',Character);
	GPIO_Pin_Write(Port_B,RS_Pin,HIGH);
	Set_Enable_Bit();
	GPIO_Write_High_Nibble('B',Character<<4);
	GPIO_Pin_Write(Port_B,RS_Pin,HIGH);
	Set_Enable_Bit();
	_delay_ms(1);
	#else
	GPIO_Write_Low_Nibble('B',Character>>4);
	GPIO_Pin_Write(Port_B,RS_Pin,HIGH);
	Set_Enable_Bit();
	GPIO_Write_Low_Nibble('B',Character);
	GPIO_Pin_Write(Port_B,RS_Pin,HIGH);
	Set_Enable_Bit();
	_delay_ms(1);
	#endif
	#endif
}
void Move_Curser_LCD(uint_8 Row,uint_8 Column)
{
	char Address_Counter_Value;
	switch(Row)
	{
		case 1:
		if (Column>0 && Column<=16)
			Address_Counter_Value=(Start_Cursor_Row_1+(Column-1));	
		else
			Address_Counter_Value=Start_Cursor_Row_1;
		Send_Command_LCD(Address_Counter_Value);
		break;
		case 2:
		if (Column>0 && Column<=16)
			Address_Counter_Value=(Start_Cursor_Row_2+(Column-1));
		else
			Address_Counter_Value=Start_Cursor_Row_1;
		Send_Command_LCD(Address_Counter_Value);
		break;
		default:
		break;
		_delay_ms(1);
	}	
}
void Clear_LCD()
{
	Send_Command_LCD(Clear_Display);
	_delay_ms(10);	
}
void Send_String_LCD(uint_8 *String)
{
	while((*String) != '\0')
	{
		Send_char_LCD(*String);
		String++;
	}
}