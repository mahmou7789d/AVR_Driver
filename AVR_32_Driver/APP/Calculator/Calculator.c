/*
 * Calculator.c
 *
 * Created: 1/26/2022 7:43:36 AM
 *  Author: Mahm Oud Sa Ad
 */ 

#include <Keypad.h>
#include <LCD.h>
#include <GPIO.h>
#include <LED.h>
#include <util/delay.h>

uint_8 Keypad_array[COL_Max][ROW_Max] = {{'7','8','9','A'},
                                 {'4','5','6','B'},
                                 {'1','2','3','C'},
                                 {'#','0','*','D'}};

/* Configure the keypad Port and Pin */
Keypad_Data keypad1 = {Port_A, PIN0, PIN1, PIN2, PIN3, PIN4, PIN5,PIN6, PIN7};
Led_Data    LED1 ={Port_B,PIN6,LED_FW_OFF};

uint_8 Data_Enter=0x00;

void Calculator_Init()
{
	LCD_Init();
	keypad_Init(keypad1);
	Led_Start(LED1);
	Send_String_LCD("Hello");
	_delay_ms(100);
	Clear_LCD();
}
void Calculator_operation()
{
	Data_Enter = keypad_Read(keypad1);
	if(Data_Enter == '2')
	{
		Led_Toggle(LED1);
		_delay_ms(100);
		Send_char_LCD('2');
	}
}
