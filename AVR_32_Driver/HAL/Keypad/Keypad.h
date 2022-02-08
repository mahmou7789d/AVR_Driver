/*
 * Keypad.h
 *
 * Created: 1/3/2022 11:03:05 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef KEYPAD_H_
#define KEYPAD_H_
#include <GPIO.h>

#define Upper_Rows_Mode
#define Keypad_BOUNCE_PERIOD_mS	 (50)
#define DELAY_OF_PIN_Transla_mS  (5)
#define Keypad_Not_Pressed (0xff)
typedef enum
{
	Pin_Row1,
	Pin_Row2,
	Pin_Row3,
	Pin_Row4,
}Keypad_RowPins;

typedef enum
{
	Pin_Col1,
	Pin_Col2,
	Pin_Col3,
	Pin_Col4,
}Keypad_ColPins;

typedef struct
{
	GPIO_Register   *Keypad_port;
	GPIO_pin_number KROW1;
	GPIO_pin_number KROW2;
	GPIO_pin_number KROW3;
	GPIO_pin_number KROW4;
	GPIO_pin_number KCOL1;
	GPIO_pin_number KCOL2;
	GPIO_pin_number KCOL3;
	GPIO_pin_number KCOL4; 
}Keypad_Data;

   /* we make this variable as global to allow the user to change it is value */
   #define  ROW_Max   4
   #define  COL_Max   4
   void   keypad_Init (Keypad_Data Keypad);
   uint8 keypad_Read   (Keypad_Data Keypad);


#endif /* KEYPAD_H_ */