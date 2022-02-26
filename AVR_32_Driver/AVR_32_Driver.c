/*
 * AVR_32_Driver.c
 *
 * Created: 12/6/2021 6:14:58 PM
 *  Author: Mahm Oud Sa Ad
 */ 

#include <GPIO.h>
#include <util/delay.h>
#include <Timer0.h>
#include <LED.h>
#include <Interrupt.h>
#include <Timer_CTC_APP.h>
#include <Timer_OC0_NonPWM.h>
#include <Timer_FastPWM.h>
#include <Timer_PhaseCorrectPWM.h>
#include <KeyPad_APP.h>
#include <GameUsingTimer.h>
#include <Multi_7Segment.h>
#include <RealTimeClock.h>
#include <USART_File.h>

int main(void)
{
	
	//Timer_OC0_NonPWM();
    //Timer_CTC_APP_Init();
	//Timer_NonInverting_FastPWM_Init();
	//Timer_PhaseCorrect_Init();
	//KeyPad_APP_init();
	Game_Init_System();
	Game_Playing_System();
	//Multi_7_Segment_Init_System();
	//Real_Time_Init_System();
	//Real_Time_control_System();
	while(1)
	{
		
		//Multi_7_Segment_Control_System();
		//KeyPad_APP_Control();
	}
	/*
	LCD_Init();
	Send_String_LCD("Hello My Princess");
	_delay_ms(1000);
	Send_Command_LCD(Clear_Display);
	_delay_ms(1000);
	Send_String_LCD("Nada AbdElazez");
	_delay_ms(1000);
	Send_Command_LCD(Clear_Display);
	_delay_ms(1000);
	Send_String_LCD("I Love You");
	*/
	//Calculator_Init();
	//LM35OnLCD_INIT(PIN0);
	//ADC_APP_INIT();
	//GPIO_APP_init();
	//KeyPad_APP_init();
	/*
	while(1)
	{
		//Calculator_operation();
		//LM35OnLCD_Control(PIN0);
		//KeyPad_APP_Control();
		//ADC_APP_Control();
		//_delay_ms(100);
	}
*/
}


/******************* Test code of GPIO Driver ****************************

	GPIO_Pin_Configuration(Port_A,PIN1,OUTPUT);
	GPIO_Pin_Configuration(Port_C,PIN0,INPUT_Pullup);
	while(1)
	{
		if ( GPIO_Pin_Read(Port_C,PIN0) == LOW)
		{
			GPIO_Pin_Write(Port_A,PIN1,HIGH);
		}
		else
		{
			GPIO_Pin_Write(Port_A,PIN1,LOW);
		}
	}
*/

/**************** Test Code of LED,Relay,Buzzer Driver ************************
#include <GPIO.h>
#include <LED.h>
#include <Relay.h>
#include <BUZZER.h>

Led_Data    Led_REV  = {Port_B,PIN5,LOW};
Led_Data    Led_FW   = {Port_B,PIN6,LOW};
RELAY_Data  Relay_1  = {Port_B,PIN7,LOW};
Buzzer_Data Buzzer_1 = {Port_C,PIN2,LOW};
int main(void)
{
	Led_Start   (Led_REV );
	Led_Start   (Led_FW  );
	RELAY_Start (Relay_1 );
	Buzzer_Start(Buzzer_1);
	Led_State_Control   (Led_FW,HIGH  );
	Led_State_Control   (Led_REV,LOW  );
	RELAY_State_Control (Relay_1,HIGH );
	Buzzer_State_Control(Buzzer_1,HIGH);
}


*/