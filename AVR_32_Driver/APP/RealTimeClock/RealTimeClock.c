/*
 * RealTimeClock.c
 *
 * Created: 2/1/2022 3:56:13 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#include <GPIO.h>
#include <Timer0.h>
#include <LED.h>
#include <LCD.h>
#include <Keypad.h>
#include <Interrupt.h>
#include <RealTimeClock.h>
#include <Direct_7-Segment.h>
#include <util/delay.h>

TIMER_DataType counter_app_3 = {Timer2,Normal_mode,Timer2_OneSec_CLK,Timer_Overflow_Interrupt,OC_Disconnected};
volatile uint_8 Sec_Counter=Zero_Value;
volatile uint_8 Min_Counter=Zero_Value;
volatile uint_8 Hour_Counter=Zero_Value;
volatile uint_8 First_Digit=Zero_Value;
volatile uint_8 Second_Digit=Zero_Value;
Keypad_Data keypad_app_1 = {Port_A, PIN0, PIN1, PIN2, PIN3, PIN4, PIN5,PIN6, PIN7};
uint_8 keypad_Read_Value;
void ISR_CTC_Timer_2(void);
void Real_Time_Init_System()
{
	TIMER_Init(counter_app_3,255);
	Timer2_OverFlow_Callback(&ISR_CTC_Timer_2);
	Seven_Seg_Init(Port_D);
	GPIO_Pin_Configuration(Port_C,PIN0,OUTPUT);
	GPIO_Pin_Configuration(Port_C,PIN1,OUTPUT);
	GPIO_Pin_Configuration(Port_C,PIN2,OUTPUT);
	GPIO_Pin_Configuration(Port_C,PIN3,OUTPUT);
	GPIO_Pin_Configuration(Port_C,PIN4,OUTPUT);
	GPIO_Pin_Configuration(Port_C,PIN5,OUTPUT);
	keypad_Init(keypad_app_1);
	LCD_Init();
	Send_String_LCD("Hello,Sir");
	_delay_ms(100);
	Clear_LCD();
	Send_String_LCD("Click 1 To start");
}
void Real_Time_control_System()
{
	while(1)
	{
	keypad_Read_Value = keypad_Read(keypad_app_1);
	if( keypad_Read_Value != Keypad_Not_Pressed)
	{
		if (keypad_Read_Value == '1')
		{
			Clear_LCD();
			Send_String_LCD("Enter Hour=");
			_delay_ms(300);
			do 
			{
				First_Digit = keypad_Read(keypad_app_1);
			} while (First_Digit == Keypad_Not_Pressed);
			Send_char_LCD(First_Digit);
			_delay_ms(300);
			do
			{
				Second_Digit = keypad_Read(keypad_app_1);
			} while (Second_Digit == Keypad_Not_Pressed);
			Send_char_LCD(Second_Digit);
			_delay_ms(300);
			Hour_Counter = ((Second_Digit - 48)+10*(First_Digit-48));
			Clear_LCD();
			_delay_ms(1);
			
			
			Send_String_LCD("Enter Min=");
			_delay_ms(300);
			do
			{
				First_Digit = keypad_Read(keypad_app_1);
			} while (First_Digit == Keypad_Not_Pressed);
			Send_char_LCD(First_Digit);
			_delay_ms(300);
			do
			{
				Second_Digit = keypad_Read(keypad_app_1);
			} while (Second_Digit == Keypad_Not_Pressed);
			Send_char_LCD(Second_Digit);
			_delay_ms(300);
			Min_Counter = ((Second_Digit - 48)+10*(First_Digit-48));
			Clear_LCD();
			_delay_ms(1);
			
			
			Send_String_LCD("Enter Sec=");
			_delay_ms(300);
			do
			{
				First_Digit = keypad_Read(keypad_app_1);
			} while (First_Digit == Keypad_Not_Pressed);
			Send_char_LCD(First_Digit);
			_delay_ms(300);
			do
			{
				Second_Digit = keypad_Read(keypad_app_1);
			} while (Second_Digit == Keypad_Not_Pressed);
			Send_char_LCD(Second_Digit);
			_delay_ms(300);
			Sec_Counter = ((Second_Digit - 48)+10*(First_Digit-48));
			Clear_LCD();
			_delay_ms(1);
			Send_String_LCD("Click 1 To start");
		}else
		{
			Clear_LCD();
			Send_String_LCD("Wrong Choice,Try!");
			_delay_ms(300);
			Send_String_LCD("Click 1 To start");
		}
	}
	GPIO_Pin_Write(Port_C,PIN0,LOW);
	GPIO_Pin_Write(Port_C,PIN1,HIGH);
	GPIO_Pin_Write(Port_C,PIN2,HIGH);
	GPIO_Pin_Write(Port_C,PIN3,HIGH);
	GPIO_Pin_Write(Port_C,PIN4,HIGH);
	GPIO_Pin_Write(Port_C,PIN5,HIGH);
	Seven_Seg_Write(Port_D,Common_Cathode,(Sec_Counter%10));
	_delay_ms(5);
	GPIO_Pin_Write(Port_C,PIN0,HIGH);
	GPIO_Pin_Write(Port_C,PIN1,LOW);
	GPIO_Pin_Write(Port_C,PIN2,HIGH);
	GPIO_Pin_Write(Port_C,PIN3,HIGH);
	GPIO_Pin_Write(Port_C,PIN4,HIGH);
	GPIO_Pin_Write(Port_C,PIN5,HIGH);
	Seven_Seg_Write(Port_D,Common_Cathode,(Sec_Counter/10));
	_delay_ms(5);
	GPIO_Pin_Write(Port_C,PIN0,HIGH);
	GPIO_Pin_Write(Port_C,PIN1,HIGH);
	GPIO_Pin_Write(Port_C,PIN2,LOW);
	GPIO_Pin_Write(Port_C,PIN3,HIGH);
	GPIO_Pin_Write(Port_C,PIN4,HIGH);
	GPIO_Pin_Write(Port_C,PIN5,HIGH);
	Seven_Seg_Write(Port_D,Common_Cathode,(Min_Counter%10));
	_delay_ms(5);
	GPIO_Pin_Write(Port_C,PIN0,HIGH);
	GPIO_Pin_Write(Port_C,PIN1,HIGH);
	GPIO_Pin_Write(Port_C,PIN2,HIGH);
	GPIO_Pin_Write(Port_C,PIN3,LOW);
	GPIO_Pin_Write(Port_C,PIN4,HIGH);
	GPIO_Pin_Write(Port_C,PIN5,HIGH);
	Seven_Seg_Write(Port_D,Common_Cathode,(Min_Counter/10));
	_delay_ms(5);
	GPIO_Pin_Write(Port_C,PIN0,HIGH);
	GPIO_Pin_Write(Port_C,PIN1,HIGH);
	GPIO_Pin_Write(Port_C,PIN2,HIGH);
	GPIO_Pin_Write(Port_C,PIN3,HIGH);
	GPIO_Pin_Write(Port_C,PIN4,LOW);
	GPIO_Pin_Write(Port_C,PIN5,HIGH);
	Seven_Seg_Write(Port_D,Common_Cathode,(Hour_Counter%10));
	_delay_ms(5);
	GPIO_Pin_Write(Port_C,PIN0,HIGH);
	GPIO_Pin_Write(Port_C,PIN1,HIGH);
	GPIO_Pin_Write(Port_C,PIN2,HIGH);
	GPIO_Pin_Write(Port_C,PIN3,HIGH);
	GPIO_Pin_Write(Port_C,PIN4,HIGH);
	GPIO_Pin_Write(Port_C,PIN5,LOW);
	Seven_Seg_Write(Port_D,Common_Cathode,(Hour_Counter/10));
	
	if (Sec_Counter== Max_second_Value)
	{
		Sec_Counter= Zero_Value;
		Min_Counter++;
	}
	if (Min_Counter== Max_Minute_Value)
	{
		Min_Counter= Zero_Value;
		Hour_Counter++;
	}
	if (Hour_Counter== Max_Hours_Value)
	{
		Hour_Counter= Zero_Value;
	}	
	}
}

void ISR_CTC_Timer_2(void)
{
	Sec_Counter++;
}