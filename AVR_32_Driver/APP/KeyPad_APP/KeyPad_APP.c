/*
 * KeyPad_APP.c
 *
 * Created: 1/3/2022 5:33:54 PM
 *  Author: Mahm Oud Sa Ad
 */ 


#include <GPIO.h>
#include <LED.h>
#include <Keypad.h>
#include <util/delay.h>
#include <KeyPad_APP.h>
#include <LCD.h>

/* set the Keypad Keys */
/*
uint_8 Keypad_array[COL][ROW] = {{'7','8','9','A'},
	                             {'4','5','6','B'},
	                             {'1','2','3','C'},
                                 {'#','0','*','D'}};
*/
/* Configure the keypad Port and Pin */
Keypad_Data keypad0 = {Port_A, PIN0, PIN1, PIN2, PIN3, PIN4, PIN5,PIN6, PIN7};
uint_8 Data_Entr=0x00;
void KeyPad_APP_init(void)
{
	keypad_Init(keypad0);
	LCD_Init();
	
}
void KeyPad_APP_Control(void)
{
	Data_Entr = keypad_Read(keypad0);
	if(Data_Entr != Keypad_Not_Pressed)
	{
		Send_char_LCD(Data_Entr);
		_delay_ms(200);
	}
}
	
