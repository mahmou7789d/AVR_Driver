/*
 * Timer_1.c
 *
 * Created: 2/28/2022 8:27:17 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#include <GPIO.h>
#include <Interrupt.h>
#include <Timer_1.h>


void Timer1_Init(TIMER_1_DataType Timer1)
{
	/* make temporary Register To Hold The Initiate Value */
	uint_8 TCCR1A_Temp = 0x00;
	uint_8 TCCR1B_Temp = 0x00;
	uint_8 TIMSK_Temp = 0x00;
	switch(Timer1.Timer_mode)
	{
		case Normal_mode:
			break;
		case PhaseCorrectPWM_mode_8Bit:
			SET_BIT(TCCR1A_Temp,WGM10_Bit);
			break;
		case PhaseCorrectPWM_mode_9Bit:
			SET_BIT(TCCR1A_Temp,WGM11_Bit);
			break;
		case PhaseCorrectPWM_mode_10Bit:
			SET_BIT(TCCR1A_Temp,WGM10_Bit);
			SET_BIT(TCCR1A_Temp,WGM11_Bit);
			break;
		case CTC_mode_OCR1A:
			SET_BIT(TCCR1B_Temp,WGM12_Bit);
			break;
		case FastPWM_mode_8Bit:
			SET_BIT(TCCR1A_Temp,WGM10_Bit);
			SET_BIT(TCCR1B_Temp,WGM12_Bit);
			break;
		case FastPWM_mode_9Bit:
			SET_BIT(TCCR1A_Temp,WGM11_Bit);
			SET_BIT(TCCR1B_Temp,WGM12_Bit);
			break;
		case FastPWM_mode_10Bit:
			SET_BIT(TCCR1A_Temp,WGM10_Bit);
			SET_BIT(TCCR1A_Temp,WGM11_Bit);
			SET_BIT(TCCR1B_Temp,WGM12_Bit);
			break;
		case Frequancy_PhaseCorrectPWM_ICR1_mode:
			SET_BIT(TCCR1B_Temp,WGM13_Bit);
			break;
		case Frequancy_PhaseCorrectPWM_OCR1A_mode:
			SET_BIT(TCCR1A_Temp,WGM10_Bit);
			SET_BIT(TCCR1B_Temp,WGM13_Bit);
			break;
		case PhaseCorrectPWM_ICR1_mode:
			SET_BIT(TCCR1A_Temp,WGM11_Bit);
			SET_BIT(TCCR1B_Temp,WGM13_Bit);
			break;
		case PhaseCorrectPWM_OCR1_mode:
			SET_BIT(TCCR1A_Temp,WGM10_Bit);
			SET_BIT(TCCR1A_Temp,WGM11_Bit);
			SET_BIT(TCCR1B_Temp,WGM13_Bit);
			break;
		case CTC_mode_ICR1:
			SET_BIT(TCCR1B_Temp,WGM12_Bit);
			SET_BIT(TCCR1B_Temp,WGM13_Bit);
			break;
		case FastPWM_ICR1_mode:
			SET_BIT(TCCR1A_Temp,WGM11_Bit);
			SET_BIT(TCCR1B_Temp,WGM12_Bit);
			SET_BIT(TCCR1B_Temp,WGM13_Bit);
			break;
		case FastPWM_OCR1A_mode:
			SET_BIT(TCCR1A_Temp,WGM10_Bit);
			SET_BIT(TCCR1A_Temp,WGM11_Bit);
			SET_BIT(TCCR1B_Temp,WGM12_Bit);
			SET_BIT(TCCR1B_Temp,WGM13_Bit);
			break;
		default:
			break;
	}
	switch(Timer1.Timer_CLK)
	{
		case No_Clock_source:
			
			break;
		case No_Prescaling:
			SET_BIT(TCCR1B_Temp,CS10_Bit);
			break;
		case Clk_8:
			SET_BIT(TCCR1B_Temp,CS11_Bit);
			break;
		case Clk_64:
			SET_BIT(TCCR1B_Temp,CS10_Bit);
			SET_BIT(TCCR1B_Temp,CS11_Bit);
			break;
		case Clk_256:
			SET_BIT(TCCR1B_Temp,CS12_Bit);
			break;
		case Clk_1024:
			SET_BIT(TCCR1B_Temp,CS10_Bit);
			SET_BIT(TCCR1B_Temp,CS12_Bit);
			break;
		case External_Clock_falling_edge:
			SET_BIT(TCCR1B_Temp,CS11_Bit);
			SET_BIT(TCCR1B_Temp,CS12_Bit);
			break;
		case External_Clock_Rising_edge:
			SET_BIT(TCCR1B_Temp,CS10_Bit);
			SET_BIT(TCCR1B_Temp,CS11_Bit);
			SET_BIT(TCCR1B_Temp,CS12_Bit);
			break;
	}
	switch(Timer1.OC1A_Pin_State)
	{
		case OC1_Disconnected:
			
			break;
		case OC1_Toggle:
			SET_BIT(TCCR1A_Temp,COM1A0_Bit);
		case OC1A_Toggle_On_Phase_Frequancy_Correct_PWM_OCR1A:
			if (Timer1.Timer_mode == Frequancy_PhaseCorrectPWM_OCR1A_mode)
			{
				SET_BIT(TCCR1A_Temp,COM1A0_Bit);
			}
			else
			{
				CLEAR_BIT(TCCR1A_Temp,COM1A0_Bit);
				CLEAR_BIT(TCCR1A_Temp,COM1A1_Bit);
			}
			break;
		case OC1A_Toggle_On_Fast_PWM_OCR1A:
			if (Timer1.Timer_mode == FastPWM_OCR1A_mode)
			{
				SET_BIT(TCCR1A_Temp,COM1A0_Bit);
			}
			else
			{
				CLEAR_BIT(TCCR1A_Temp,COM1A0_Bit);
				CLEAR_BIT(TCCR1A_Temp,COM1A1_Bit);
			}
			break;
		case OC1_ClearOn_Compare_match:
		case NON_inverting_mode:
		case Clear_upCount_Set_DownCount:
			SET_BIT(TCCR1A_Temp,COM1A1_Bit);
			break;
		case OC1_SetOn_Compare_match:
		case inverting_mode:
		case Set_upCount_Clear_DownCount:
			SET_BIT(TCCR1A_Temp,COM1A0_Bit);
			SET_BIT(TCCR1A_Temp,COM1A1_Bit);
			break;
		default:
			break;
	}
	switch(Timer1.OC1B_Pin_State)
	{
		case OC1B_Disconnected:
		
		break;
		case OC1B_Toggle:
			SET_BIT(TCCR1A_Temp,COM1B0_Bit);
			break;
		case OC1B_ClearOn_Compare_match:
		case NON_B_inverting_mode:
		case B_Clear_upCount_Set_DownCount:
			SET_BIT(TCCR1A_Temp,COM1B1_Bit);
			break;
		case OC1B_SetOn_Compare_match:
		case B_inverting_mode:
		case B_Set_upCount_Clear_DownCount:
			SET_BIT(TCCR1A_Temp,COM1B0_Bit);
			SET_BIT(TCCR1A_Temp,COM1B1_Bit);
			break;
		default:
			break;
	}
	SET_BIT(SREG,I_Bit);
	/* Set Up The Interrupt Source By Set The Bit referee To The That Source InThe TIMASK */
	switch(Timer1.Timer_INT_source)
	{
		case Timer_No_Interrupt:
			
			break;
		case Timer_Input_Capture_Interrupt:
			SET_BIT(TIMSK_Temp,TICIE1_bit);
			break;
		case Timer_OutPut_Compare_A_match:
			SET_BIT(TIMSK_Temp,OCIE1A_bit);
			break;
		case Timer_OutPut_Compare_B_match:
			SET_BIT(TIMSK_Temp,OCIE1B_bit);
			break;
		case Timer_Overflow_Interrupt:
			SET_BIT(TIMSK_Temp,TOIE1_bit);
			break;
		default:
			break;
	}
	switch(Timer1.Input_Capture_State)
	{
		case Input_Capture_Disable:
			CLEAR_BIT(TCCR1B,ICES1_Bit);
			CLEAR_BIT(TCCR1B,ICNC1_Bit);
			break;
		case Input_Capture_Failing_No_Noise_Filter:
			CLEAR_BIT(TCCR1B,ICNC1_Bit);
			SET_BIT(TCCR1B,ICES1_Bit);
			break;
		case Input_Capture_Rising_Noise_Filter:
			SET_BIT(TCCR1B,ICES1_Bit);
			SET_BIT(TCCR1B,ICNC1_Bit);
			break;
		default:
			break;
	}
	TCCR1A =TCCR1A_Temp;
	TCCR1B =TCCR1B_Temp;
	TIMSK  =TIMSK_Temp;
}