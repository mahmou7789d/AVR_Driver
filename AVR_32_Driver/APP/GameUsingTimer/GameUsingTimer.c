/*
 * GameUsingTimer.c
 *
 * Created: 2/1/2022 4:03:54 AM
 *  Author: Mahm Oud Sa Ad
 */ 

#include <GPIO.h>
#include <Timer0.h>
#include <LCD.h>
#include <LED.h>
#include <Keypad.h>
#include <util/delay.h>
#include <GameUsingTimer.h>
TIMER_DataType counter_app = {Timer0,CTC_mode,Clk_1024,Timer_OutPut_Compare_match};
Keypad_Data keypad_app = {Port_A, PIN0, PIN1, PIN2, PIN3, PIN4, PIN5,PIN6, PIN7};
volatile uint_16 counter1,Flag1;
uint_8 keypad_Read_Value;
void ISR_CTC_Timer(void);
void Game_Init_System()
{
	TIMER_Init(counter_app,78);
	Timer0_CompareMatch_Callback(&ISR_CTC_Timer);
	keypad_Init(keypad_app);
	LCD_Init();
	Send_String_LCD("Hello,Sir");
	_delay_ms(100);
	Clear_LCD();
	Send_String_LCD("3+?=5");
}
void Game_Playing_System()
{
	do 
	{
		if (counter1>1000)
		{
			Flag1=1;
		}
		keypad_Read_Value=keypad_Read(keypad_app);
		_delay_ms(100);
	} while (keypad_Read_Value ==Keypad_Not_Pressed&&Flag1 ==0);
	if (keypad_Read_Value == Keypad_Not_Pressed)
	{
		Clear_LCD();
		Move_Curser_LCD(2,5);
		Send_String_LCD("Time is Over");
	}
	else if (keypad_Read_Value == '2')
	{
		Clear_LCD();
		Move_Curser_LCD(2,5);
		Send_String_LCD("Well Done");
	} 
	else
	{
		Clear_LCD();
		Move_Curser_LCD(2,5);
		Send_String_LCD("Time is Over");
	}
	
}
void ISR_CTC_Timer(void)
{
	
	counter1++;
}
