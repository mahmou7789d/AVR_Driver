/*
 * ICU.c
 *
 * Created: 2/28/2022 3:47:53 PM
 *  Author: Mahm Oud Sa Ad
 */ 
#include <LCD.h>
#include <Timer_1.h>
#include <ICU.h>

uint_16 a,b,c,T_on,Time_Period,Duty_Cyle,Frequancy;
TIMER_1_DataType Timer1;
uint_8 Presaler_Val=1;
void ICU_Init_System()
{
	LCD_Init();
}
void ICU_Control_System()
{
	//Timer1.Timer_mode = Normal_mode;
	//Timer1_Init(Timer1);
	TCCR1A =0;
	SET_BIT(TIFR,ICF1_bit);
	//Timer1.Timer_CLK = No_Prescaling;
	//Timer1.Input_Capture_State = Input_Capture_Rising_Noise_Filter;
	//Timer1_Init(Timer1);
	TCCR1B=0XC1;
	while(READ_BIT(TIFR,ICF1_bit)==0);
	a=ICR1;
	SET_BIT(TIFR,ICF1_bit);
	//imer1.Input_Capture_State = Input_Capture_Failing_No_Noise_Filter;
	//Timer1_Init(Timer1);
	TCCR1B=0X81;
	while(READ_BIT(TIFR,ICF1_bit)==0);
	b=ICR1;
	SET_BIT(TIFR,ICF1_bit);
	//Timer1.Input_Capture_State = Input_Capture_Rising_Noise_Filter;
	//Timer1_Init(Timer1);
	TCCR1B=0XC1;
	while(READ_BIT(TIFR,ICF1_bit)==0);
	c=ICR1;
	SET_BIT(TIFR,ICF1_bit);
	//Timer1.Timer_CLK = No_Clock_source;
	//Timer1_Init(Timer1);
	TCCR1B=0;
	if(a<b&&b<c)
	{
		T_on=b-a;
		Time_Period=c-a;
		Duty_Cyle=((float)T_on/Time_Period)*100;
		Frequancy=(F_CPU/(Time_Period*Presaler_Val));
		Send_String_LCD("duty:");
		Send_char_LCD((Duty_Cyle/10)+48);
		Send_char_LCD((Duty_Cyle%10)+48);
		Send_char_LCD('%');
		Move_Curser_LCD(2,1);
		Send_String_LCD("freq:");
		Send_char_LCD((Frequancy/1000)+48);
		Send_char_LCD(((Frequancy/100)%10)+48);
		Send_char_LCD(((Frequancy/10)%10)+48);
		Send_char_LCD((Frequancy%10)+48);
		Send_String_LCD("HZ");
	}
	else
	{
		Clear_LCD();
		Send_String_LCD("out of range");
		
	}
	
}