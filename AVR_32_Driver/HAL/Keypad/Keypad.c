/*
 * Keypad.c
 *
 * Created: 1/3/2022 11:02:51 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#include  <Keypad.h>
#include <util/delay.h>

void   keypad_Init (Keypad_Data Keypad)
{
	 GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KROW1,OUTPUT);
	 GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KROW2,OUTPUT); 
	 GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KROW3,OUTPUT); 
	 GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KROW4,OUTPUT);  
	 GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KCOL1,INPUT_Pullup);
	 GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KCOL2,INPUT_Pullup);
	 GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KCOL3,INPUT_Pullup);
	 GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KCOL4,INPUT_Pullup); 
	
}
unsigned char keypad_Read(Keypad_Data Keypad)
{
	unsigned char Keypad_array[COL_Max][ROW_Max]= {{'7','8','9','A'},
	                                        {'4','5','6','B'},
	                                        {'1','2','3','C'},
	                                        {'#','0','*','D'}};
	unsigned char Row,Col,Read_Value;
	unsigned char Return_Value = 0xff;
	for (Row=0;Row<ROW_Max;Row++)
	{
		GPIO_Pin_Write(Keypad.Keypad_port,Keypad.KROW1,HIGH);
		GPIO_Pin_Write(Keypad.Keypad_port,Keypad.KROW2,HIGH);	
		GPIO_Pin_Write(Keypad.Keypad_port,Keypad.KROW3,HIGH);	
		GPIO_Pin_Write(Keypad.Keypad_port,Keypad.KROW4,HIGH);	
		GPIO_Pin_Write(Keypad.Keypad_port,Row,LOW);		
		for (Col=0;Col<COL_Max;Col++)
		{
			Read_Value =GPIO_Pin_Read(Keypad.Keypad_port,(Col+4));
			if(!Read_Value)
			{
				Return_Value =Keypad_array[Row][Col];
				break;
			}
		}
	}
	if (!Read_Value);
	return Return_Value;
}

/*

uint_8 Keypad_array[COL][ROW]; 
//This is an static function to check the value of the current data get from the keypad key 
static uint_8 Check_RawData(Keypad_Data keypad,Keypad_ColPins col)
{
	if(GPIO_Pin_Read(keypad.Keypad_port,keypad.KROW1))
	{
		_delay_ms(Keypad_BOUNCE_PERIOD_mS);
		if(GPIO_Pin_Read(keypad.Keypad_port,keypad.KROW1))
		{
			return (Keypad_array[Pin_Row1][col]);
		}
	}
	else if (GPIO_Pin_Read(keypad.Keypad_port,keypad.KROW2))
	{
		_delay_ms(Keypad_BOUNCE_PERIOD_mS);
		if(GPIO_Pin_Read(keypad.Keypad_port,keypad.KROW2))
		{
			return (Keypad_array[Pin_Row2][col]);
		}
		
	}
	else if (GPIO_Pin_Read(keypad.Keypad_port,keypad.KROW3))
	{
		_delay_ms(Keypad_BOUNCE_PERIOD_mS);
		if(GPIO_Pin_Read(keypad.Keypad_port,keypad.KROW3))
		{
			return (Keypad_array[Pin_Row3][col]);
		}
	}
	else if (GPIO_Pin_Read(keypad.Keypad_port,keypad.KROW4))
	{
		_delay_ms(Keypad_BOUNCE_PERIOD_mS);
		if(GPIO_Pin_Read(keypad.Keypad_port,keypad.KROW4))
		{
			return (Keypad_array[Pin_Row4][col]);
		}
	}
	return 0;
}
void   keypad_Init (Keypad_Data Keypad)
{
// Set the all pins of the Keypad input & And Make Its Initial Value Is Float by Set 0 To The Port And Connect a PullDowen Resistance 
	 GPIO_Port_Configuration(Keypad.Keypad_port,INPUT_Float);
     GPIO_Port_Write (Keypad.Keypad_port,Min_uint8_Value);
}

uint_8 keypad_Read   (Keypad_Data Keypad)
{
	uint_8 Keypad_DataRead = Min_uint8_Value;
	
	// CHECK IN THE COLUMN 1 
	GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KCOL1,OUTPUT);
	GPIO_Pin_Write(Keypad.Keypad_port,Keypad.KCOL1,HIGH);
	
	if (Check_RawData(Keypad,Pin_Col1))
	{
		Keypad_DataRead = Check_RawData(Keypad,Pin_Col1);
	}
//Return The Pin as Input Pin To Avoid The Short Circuit Condition if The User Pushed TWO Key At The Same Time 
	GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KCOL1,INPUT_Float);
	_delay_ms(DELAY_OF_PIN_Transla_mS);
	
// CHECK IN THE COLUMN 2 
	GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KCOL2,OUTPUT);
	GPIO_Pin_Write(Keypad.Keypad_port,Keypad.KCOL2,HIGH);
	
	if (Check_RawData(Keypad,Pin_Col2))
	{
		Keypad_DataRead = Check_RawData(Keypad,Pin_Col2);
	}
//Return The Pin as Input Pin To Avoid The Short Circuit Condition if The User Pushed TWO Key At The Same Time 
	GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KCOL2,INPUT_Float);
	_delay_ms(DELAY_OF_PIN_Transla_mS);
	
// CHECK IN THE COLUMN 3 
	GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KCOL3,OUTPUT);
	GPIO_Pin_Write(Keypad.Keypad_port,Keypad.KCOL3,HIGH);
	
	if (Check_RawData(Keypad,Pin_Col3))
	{
		Keypad_DataRead = Check_RawData(Keypad,Pin_Col3);
	}
// Return The Pin as Input Pin To Avoid The Short Circuit Condition if The User Pushed TWO Key At The Same Time 
	GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KCOL3,INPUT_Float);
	_delay_ms(DELAY_OF_PIN_Transla_mS);
	
// CHECK IN THE COLUMN 4 
	GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KCOL4,OUTPUT);
	GPIO_Pin_Write(Keypad.Keypad_port,Keypad.KCOL4,HIGH);
	
	if (Check_RawData(Keypad,Pin_Col4))
	{
		Keypad_DataRead = Check_RawData(Keypad,Pin_Col4);
	}
// Return The Pin as Input Pin To Avoid The Short Circuit Condition if The User Pushed TWO Key At The Same Time 
	GPIO_Pin_Configuration(Keypad.Keypad_port,Keypad.KCOL4,INPUT_Float);
	_delay_ms(DELAY_OF_PIN_Transla_mS);
	return Keypad_DataRead;
}

 */