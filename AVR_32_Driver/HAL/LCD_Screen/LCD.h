/*
 * LCD.h
 *
 * Created: 1/7/2022 3:45:03 PM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef LCD_H_
#define LCD_H_

#include <GPIO.h>



//#define Eight_Bits_Mode
#define Four_Bits_Mode
#define LCD_UPPER_DATA_PORT
//#define LCD_LOWER_DATA_PORT

// Control Pins connections
#define EN_Pin PIN2
#define RS_Pin PIN0
#define RW_Pin PIN1

#define LCD_CONTROL_BIT_DIR  Port_C->DDR
#define LCD_CONTROL_BIT_PORT Port_C->PORT
#define LCD_CONTROL_BIT_PIN  Port_C->PIN

// Macros For Help
#define Shift_Display_Bit_Limited 1
#define Shift_Cursor_Bit_Limited 1
#define Display_Control_Bit 1
#define Curser_Control_Bit 1
#define Curser_Control_Bit 1
#define SC_Shift_Bit 1
#define RL_Shift_Bit 1


/*  Command List code */
#define Clear_Display                   0x01
#define Return_Home                     0x02
#define Shift_Curser_Right_Limited      ((0x04)|(Shift_Cursor_Bit_Limited<<1)|(Shift_Display_Bit_Limited>>1))
#define Shift_Curser_Left_Limited       ((0x04)|(Shift_Cursor_Bit_Limited>>1)|(Shift_Display_Bit_Limited>>1))
#define Shift_Display_Right_Limited     ((0x04)|(Shift_Cursor_Bit_Limited>>1)|(Shift_Display_Bit_Limited))
#define Shift_Display_Left_Limited      ((0x04)|(Shift_Cursor_Bit_Limited<<1)|(Shift_Display_Bit_Limited))
#define Shift_Curser_Left       ((0x10)|(SC_Shift_Bit>>1)|(RL_Shift_Bit>>1))
#define Shift_Curser_Right      ((0x10)|(SC_Shift_Bit>>1)|(RL_Shift_Bit<<2))
#define Shift_Display_Left      ((0x10)|(SC_Shift_Bit<<3)|(RL_Shift_Bit>>1))
#define Shift_Display_Right     ((0x10)|(SC_Shift_Bit<<3)|(RL_Shift_Bit<<2))
#define Display_On_Curser_On    ((0x08)|(Display_Control_Bit<<2)|(Curser_Control_Bit<<1)|(Curser_Control_Bit>>1))
#define Display_On_Curser_off   ((0x08)|(Display_Control_Bit<<2)|(Curser_Control_Bit>>1)|(Curser_Control_Bit>>1))
#define Display_Off_Curser_On   ((0x08)|(Display_Control_Bit>>1)|(Curser_Control_Bit<<1)|(Curser_Control_Bit>>1))
#define Display_Off_Curser_off  ((0x08)|(Display_Control_Bit>>1)|(Curser_Control_Bit>>1)|(Curser_Control_Bit>>1))
#define Display_On_Curser_Blink ((0x08)|(Display_Control_Bit<<2)|(Curser_Control_Bit<<1)|(Curser_Control_Bit))
#define Start_Cursor_Row_1      0X80
#define Start_Cursor_Row_2      0XC0

#if defined Eight_Bits_Mode
#define Function_Set_Eight_BIT  0x38
#elif defined Four_Bits_Mode
#define Function_Set_Four_BIT   0x28
#endif


/**************** LCD Functios ********************************************/
void LCD_Init(void);
void Send_Command_LCD(uint_8 Command);
void Send_char_LCD(uint_8 Character);
void Move_Curser_LCD(uint_8 Row,uint_8 Column);
void Clear_LCD();
void Send_String_LCD(uint_8 *String);

#endif /* LCD_H_ */