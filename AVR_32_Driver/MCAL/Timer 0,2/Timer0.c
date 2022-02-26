/*
 * Timer0.c
 *
 * Created: 12/28/2021 11:41:58 AM
 *  Author: Mahm Oud Sa Ad
 */ 
#include <GPIO.h>
#include <Timer0.h>


/********************************** Call Back Function *********************************************/
static void (*CP_TIMER0_Overflow_User_ptr) (void) =NULL;
static void (*CP_TIMER0_CompareMatch_User_ptr) (void) =NULL;

static void (*CP_TIMER2_Overflow_User_ptr) (void) =NULL;
static void (*CP_TIMER2_CompareMatch_User_ptr) (void) =NULL;

void Timer0_OverFlow_Callback(void (*TIMER0_Overflow_User_ptr) (void))
{
	if(TIMER0_Overflow_User_ptr != NULL)
	{
		CP_TIMER0_Overflow_User_ptr =TIMER0_Overflow_User_ptr;
	}
}
void Timer0_CompareMatch_Callback(void (*TIMER0_CompareMatch_User_ptr) (void))
{
	if(TIMER0_CompareMatch_User_ptr != NULL)
	{
		CP_TIMER0_CompareMatch_User_ptr =TIMER0_CompareMatch_User_ptr;
	}
}

void Timer2_OverFlow_Callback(void (*TIMER2_Overflow_User_ptr) (void))
{
	if(TIMER2_Overflow_User_ptr != NULL)
	{
		CP_TIMER2_Overflow_User_ptr =TIMER2_Overflow_User_ptr;
	}
}
void Timer2_CompareMatch_Callback(void (*TIMER2_CompareMatch_User_ptr) (void))
{
	if(TIMER2_CompareMatch_User_ptr != NULL)
	{
		CP_TIMER2_CompareMatch_User_ptr =TIMER2_CompareMatch_User_ptr;
	}
}

ISR (TIMER0_COMP_vect)
{
	if (CP_TIMER0_CompareMatch_User_ptr != NULL)
	{
		CP_TIMER0_CompareMatch_User_ptr();
	}
}
ISR (TIMER0_OVF_vect)
{
	if (CP_TIMER0_Overflow_User_ptr != NULL)
	{
		CP_TIMER0_Overflow_User_ptr();
	}
}
ISR (TIMER2_OVF_vect)
{
	if (CP_TIMER2_Overflow_User_ptr != NULL)
	{
		CP_TIMER2_Overflow_User_ptr();
	}
}
ISR (TIMER2_COMP_vect)
{
	if (CP_TIMER2_CompareMatch_User_ptr != NULL)
	{
		CP_TIMER2_CompareMatch_User_ptr();
	}
}
void TIMER_Init(TIMER_DataType Timer_Details,uint_8 inital_Value)
{
	/* make temporary Register To Hold The Initiate Value */
    uint_8 TCCR_Temp = 0x00;
	uint_8 TIMSK_Temp = 0x00;
	//uint_8 TIFR_Temp  = 0x00;
	switch (Timer_Details.Timer_Number)
	{
		case Timer0:
		switch(Timer_Details.Timer_mode)
		{
			case Normal_mode:
			CLEAR_BIT(TCCR_Temp,WGM01_bit);
			CLEAR_BIT(TCCR_Temp,WGM00_bit);
			break;
			case CTC_mode:
			SET_BIT  (TCCR_Temp,WGM01_bit);
			CLEAR_BIT(TCCR_Temp,WGM00_bit);
			break;
			case PhaseCorrectPWM_mode:
			CLEAR_BIT(TCCR_Temp,WGM01_bit);
			SET_BIT  (TCCR_Temp,WGM00_bit);
			break;
			case FastPWM_mode:
			SET_BIT(TCCR_Temp,WGM01_bit);
			SET_BIT(TCCR_Temp,WGM00_bit);
			break;
			default:
			break;
		}
		switch(Timer_Details.Timer_CLK)
		{
			case No_Clock_source :
			CLEAR_BIT(TCCR_Temp,CS00_bit);
			CLEAR_BIT(TCCR_Temp,CS01_bit);
			CLEAR_BIT(TCCR_Temp,CS02_bit);
			break;
			case No_Prescaling:
			SET_BIT  (TCCR_Temp,CS00_bit);
			CLEAR_BIT(TCCR_Temp,CS01_bit);
			CLEAR_BIT(TCCR_Temp,CS02_bit);
			break;
			case Clk_8:
			CLEAR_BIT(TCCR_Temp,CS00_bit);
			SET_BIT  (TCCR_Temp,CS01_bit);
			CLEAR_BIT(TCCR_Temp,CS02_bit);
			break;
			case Clk_64:
			SET_BIT(TCCR_Temp,CS00_bit);
			SET_BIT(TCCR_Temp,CS01_bit);
			CLEAR_BIT(TCCR_Temp,CS02_bit);
			break;
			case Clk_256:
			CLEAR_BIT(TCCR_Temp,CS00_bit);
			CLEAR_BIT(TCCR_Temp,CS01_bit);
			SET_BIT  (TCCR_Temp,CS02_bit);
			break;
			case Clk_1024:
			//TCCR0= (1<<CS00_bit)|(1<<CS02_bit);
			SET_BIT  (TCCR_Temp,CS00_bit);
			CLEAR_BIT(TCCR_Temp,CS01_bit);
			SET_BIT  (TCCR_Temp,CS02_bit);
			break;
			case External_Clock_falling_edge:
			CLEAR_BIT(TCCR_Temp,CS00_bit);
			SET_BIT  (TCCR_Temp,CS01_bit);
			SET_BIT  (TCCR_Temp,CS02_bit);
			break;
			case External_Clock_Rising_edge:
			SET_BIT(TCCR_Temp,CS00_bit);
			SET_BIT(TCCR_Temp,CS01_bit);
			SET_BIT(TCCR_Temp,CS02_bit);
			break;
			default:
			break;
		}
		SET_BIT(SREG,I_Bit);
		/* Set Up The Interrupt Source By Set The Bit referee To The That Source InThe TIMASK */
		switch(Timer_Details.Timer_INT_source)
		{
			case Timer_Overflow_Interrupt:
			/* This Interrupt happened when the TCNT reach its Max then return to zero again */
			SET_BIT(TIMSK_Temp,TOIE0_bit);
			break;
			case Timer_OutPut_Compare_match:
			/* This Interrupt happened When The TCNT Reach The Value Equal The Value OnThe OCR and Return To Zero */
			SET_BIT(TIMSK_Temp,OCIE0_bit);
			break;
			case Timer_No_Interrupt :
			CLEAR_BIT(TIMSK_Temp,TOIE0_bit);
			CLEAR_BIT(TIMSK_Temp,OCIE0_bit);
			break;
			default:
			break;

		}
		switch (Timer_Details.OC_Pin_State)
		{
			case OC_Disconnected:
			CLEAR_BIT(TCCR_Temp,COM00_bit);
			CLEAR_BIT(TCCR_Temp,COM01_bit);
			break;
			case OC_Toggle:
			GPIO_Pin_Configuration(Port_B,PIN3,OUTPUT);
			SET_BIT  (TCCR_Temp,COM00_bit);
			CLEAR_BIT(TCCR_Temp,COM01_bit);
			break;
			case OC_ClearOn_Compare_match:
			case NON_inverting_mode:
			case Clear_upCount_Set_DownCount:
			GPIO_Pin_Configuration(Port_B,PIN3,OUTPUT);
			CLEAR_BIT(TCCR_Temp,COM00_bit);
			SET_BIT  (TCCR_Temp,COM01_bit);
			break;
			case OC_SetOn_Compare_match:
			case inverting_mode:
			case Set_upCount_Clear_DownCount:
			GPIO_Pin_Configuration(Port_B,PIN3,OUTPUT);
			SET_BIT  (TCCR_Temp,COM00_bit);
			SET_BIT  (TCCR_Temp,COM01_bit);
			break;
		}
		TCCR0 = TCCR_Temp;
		TIMSK = TIMSK_Temp;
		OCR0 = inital_Value;
		break;
		case Timer2:
		switch(Timer_Details.Timer_mode)
		{
			case Normal_mode:
			CLEAR_BIT(TCCR_Temp,WGM21_bit);
			CLEAR_BIT(TCCR_Temp,WGM20_bit);
			break;
			case CTC_mode:
			SET_BIT  (TCCR_Temp,WGM21_bit);
			CLEAR_BIT(TCCR_Temp,WGM20_bit);
			break;
			case PhaseCorrectPWM_mode:
			CLEAR_BIT(TCCR_Temp,WGM21_bit);
			SET_BIT  (TCCR_Temp,WGM20_bit);
			break;
			case FastPWM_mode:
			SET_BIT(TCCR_Temp,WGM21_bit);
			SET_BIT(TCCR_Temp,WGM20_bit);
			break;
			default:
			break;
		}
		switch(Timer_Details.Timer_CLK)
		{
			case No_Clock_source :
			CLEAR_BIT(TCCR_Temp,CS20_bit);
			CLEAR_BIT(TCCR_Temp,CS21_bit);
			CLEAR_BIT(TCCR_Temp,CS22_bit);
			break;
			case No_Prescaling:
			SET_BIT  (TCCR_Temp,CS20_bit);
			CLEAR_BIT(TCCR_Temp,CS21_bit);
			CLEAR_BIT(TCCR_Temp,CS22_bit);
			break;
			case Timer2_OneSec_CLK:
			SET_BIT(ASSR,AS2_bit);
			SET_BIT(TCCR_Temp,CS20_bit);
			CLEAR_BIT(TCCR_Temp,CS21_bit);
			SET_BIT(TCCR_Temp,CS22_bit);
			break;
			case Clk_8:
			CLEAR_BIT(TCCR_Temp,CS20_bit);
			SET_BIT  (TCCR_Temp,CS21_bit);
			CLEAR_BIT(TCCR_Temp,CS22_bit);
			break;
			case CLK_32:
			SET_BIT(TCCR_Temp,CS20_bit);
			SET_BIT(TCCR_Temp,CS21_bit);
			CLEAR_BIT(TCCR_Temp,CS22_bit);
			break;
			case Clk_64:
			CLEAR_BIT(TCCR_Temp,CS20_bit);
			CLEAR_BIT(TCCR_Temp,CS21_bit);
			SET_BIT  (TCCR_Temp,CS22_bit);
			break;
			case CLK_128:
			SET_BIT(TCCR_Temp,CS20_bit);
			CLEAR_BIT(TCCR_Temp,CS21_bit);
			SET_BIT  (TCCR_Temp,CS22_bit);
			break;
			case Clk_256:
			CLEAR_BIT(TCCR_Temp,CS20_bit);
			SET_BIT(TCCR_Temp,CS21_bit);
			SET_BIT  (TCCR_Temp,CS22_bit);
			break;
			case Clk_1024:
			SET_BIT  (TCCR_Temp,CS20_bit);
			SET_BIT(TCCR_Temp,CS21_bit);
			SET_BIT  (TCCR_Temp,CS22_bit);
			break;
			default:
			break;
		}
		SET_BIT(SREG,I_Bit);
		/* Set Up The Interrupt Source By Set The Bit referee To The That Source InThe TIMASK */
		switch(Timer_Details.Timer_INT_source)
		{
			case Timer_Overflow_Interrupt:
			/* This Interrupt happened when the TCNT reach its Max then return to zero again */
			SET_BIT(TIMSK_Temp,TOIE2_bit);
			break;
			case Timer_OutPut_Compare_match:
			/* This Interrupt happened When The TCNT Reach The Value Equal The Value OnThe OCR and Return To Zero */
			SET_BIT(TIMSK_Temp,OCIE2_bit);
			break;
			case Timer_No_Interrupt :
			CLEAR_BIT(TIMSK_Temp,TOIE2_bit);
			CLEAR_BIT(TIMSK_Temp,OCIE2_bit);
			break;
			default:
			break;

		}
		switch (Timer_Details.OC_Pin_State)
		{
			case OC_Disconnected:
			CLEAR_BIT(TCCR_Temp,COM20_bit);
			CLEAR_BIT(TCCR_Temp,COM21_bit);
			break;
			case OC_Toggle:
			GPIO_Pin_Configuration(Port_D,PIN7,OUTPUT);
			SET_BIT  (TCCR_Temp,COM20_bit);
			CLEAR_BIT(TCCR_Temp,COM21_bit);
			break;
			case OC_ClearOn_Compare_match:
			case NON_inverting_mode:
			case Clear_upCount_Set_DownCount:
			GPIO_Pin_Configuration(Port_D,PIN7,OUTPUT);
			CLEAR_BIT(TCCR_Temp,COM20_bit);
			SET_BIT  (TCCR_Temp,COM21_bit);
			break;
			case OC_SetOn_Compare_match:
			case inverting_mode:
			case Set_upCount_Clear_DownCount:
			GPIO_Pin_Configuration(Port_D,PIN7,OUTPUT);
			SET_BIT  (TCCR_Temp,COM20_bit);
			SET_BIT  (TCCR_Temp,COM21_bit);
			break;
		}
		TCCR2 = TCCR_Temp;
		TIMSK = TIMSK_Temp;
		OCR2 = inital_Value;
		break;
	}
}

void TIMER_Delay(TIMER_DataType Timer_Details,uint_8 inital_Value)
{
	switch(Timer_Details.Timer_Number)
		{
			case Timer0: 
			     OCR0 = inital_Value;
			break;
			case Timer2:
			     OCR2 = inital_Value;
			break;
			default:
			break;
		}
}


/*
void __vector_10 (void) __attribute__((signal));
void __vector_10 (void)
{
	if(TIMER0_CompareMatch_User_ptr != NULL)
	{
		TIMER0_CompareMatch_User_ptr();
	}
}
*/

