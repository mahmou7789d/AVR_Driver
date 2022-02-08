/*
 * LM35OnLCD.c
 *
 * Created: 1/25/2022 4:12:32 PM
 *  Author: Mahm Oud Sa Ad
 */ 


#include <LM35OnLCD.h>

ADC_Pin_Data ADC_PIN ={PIN0,ADC_Disabled_INT,Internal_Voltage,ADC_Clk_64,FreeRunningMode,Adjust_Right};
void LM35OnLCD_INIT()
{
	LCD_Init();
	ADC_Init(ADC_PIN);
	Send_String_LCD("temperature=");
	
}
void LM35OnLCD_Control()
{
	uint_8 Temp =0x00;
	uint_8 volt =0x00;
	switch(ADC_PIN.ADC_Pin)
	{
		case PIN0:
		case PIN1:
		case PIN2:
		case PIN3:
		case PIN4:
		case PIN5:
		case PIN6:
		case PIN7:
		Temp =((ADC_Read(ADC_PIN))*0.25);
		if(Temp<10)
		{
			Move_Curser_LCD(1,13);
			//Send_char_LCD(0x30);
			Send_char_LCD((Temp)+48);
			Send_char_LCD(0xDF);
			Send_char_LCD('C');
			Send_char_LCD(0x20);
		}
		else if( Temp<100)
		{
			Move_Curser_LCD(1,13);
			Send_char_LCD((Temp/10)+48);
			Send_char_LCD((Temp%10)+48);
			Send_char_LCD(0XDF);
			Send_char_LCD('C');
			Send_char_LCD(0x20);
		}
		break;
		case ADC_Diff_Mode:
		
		volt =(ADC_Read(ADC_PIN)*2.5);
		if (volt >=1000)
		{
			Temp = (volt-1000)/10;
			if (Temp <10)
			{
				Move_Curser_LCD(1,13);
				Send_char_LCD((Temp%10)+48);
				Send_char_LCD(0xDF);
				Send_char_LCD('C');
				Send_char_LCD(0x20);
			}
			else if(Temp<100)
			{
				Move_Curser_LCD(1,13);
				Send_char_LCD((Temp/10)+48);
				Send_char_LCD((Temp%10)+48);
				Send_char_LCD(0XDF);
				Send_char_LCD('C');
				Send_char_LCD(0x20);
			}
		}
		else 
		{
			Temp = (1000 - volt)/10;
			if (Temp <10)
			{
				Move_Curser_LCD(1,13);
				Send_char_LCD('-');
				Send_char_LCD((Temp%10)+48);
				Send_char_LCD(0xDF);
				Send_char_LCD('C');
				Send_char_LCD(0x20);
			}
			else if (Temp <100)
			{
				Move_Curser_LCD(1,13);
				Send_char_LCD('-');
				Send_char_LCD((Temp/10)+48);
				Send_char_LCD((Temp%10)+48);
				Send_char_LCD(0XDF);
				Send_char_LCD('C');
				Send_char_LCD(0x20);
			}
			
		}
		break;
	}
	
}

/*


#include <LM35OnLCD.h>

void LM35OnLCD_INIT(GPIO_pin_number LM35_Channel)
{
	LCD_Init();
	LM35_Init(LM35_Channel);
	Send_String_LCD("temperature=");
	
}
void LM35OnLCD_Control(GPIO_pin_number LM35_Channel)
{
	uint_8 Temp =0x00;
	Temp =Read_LM35_Temp(LM35_Channel);
	if(Temp<10)
	{
		Move_Curser_LCD(1,13);
		//Send_char_LCD(0x30);
		Send_char_LCD((Temp)+48);
		Send_char_LCD(0xDF);
		Send_char_LCD('C');
		Send_char_LCD(0x20);
	}
	else if( Temp<100)
	{
		Move_Curser_LCD(1,13);
		Send_char_LCD((Temp/10)+48);
		Send_char_LCD((Temp%10)+48);
		Send_char_LCD(0XDF);
		Send_char_LCD('C');
		Send_char_LCD(0x20);
	}
	
}

*/