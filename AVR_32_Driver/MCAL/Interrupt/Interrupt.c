/*
 * Interrupt.c
 *
 * Created: 12/26/2021 4:35:17 AM
 *  Author: Mahm Oud Sa Ad
 */ 





#include <Interrupt.h>

void (* EXT_INT0_ISR) (void) =  NULL;   //function Pointer called into ISR
void (* EXT_INT1_ISR) (void) =  NULL;
void (* EXT_INT2_ISR) (void) =  NULL;
void (* ADC_INT_ISR)  (void) =  NULL;

ISR (INT0_vect)
{
	if (EXT_INT0_ISR != NULL)  // there is code in the function 
	{
		EXT_INT0_ISR();
	}
}

ISR (INT1_vect,ISR_NAKED)
{
	if (EXT_INT1_ISR != NULL)
	{
		EXT_INT1_ISR();
	}
}

ISR (INT2_vect)
{
	if (EXT_INT2_ISR != NULL)
	{
		EXT_INT2_ISR();
	}
}
ISR (ADC_vect)
{
	if (ADC_INT_ISR != NULL)
	{
		ADC_INT_ISR();
	}
}
void EXTINT_InterruptInit(EXInterrupt_Source source,ExInterrupt_Modes Mode)
{
	switch( source )
	{
		case EXINT_INT0:
		switch (Mode)
		{
			case EXINT_LowLevel :
			CLEAR_BIT(MCUCR,ISC01_Bit);
			CLEAR_BIT(MCUCR,ISC00_Bit);
			break;
			case EXINT_logical_change :
			CLEAR_BIT(MCUCR,ISC01_Bit);
			SET_BIT  (MCUCR,ISC00_Bit);
			break;
			case EXINT_FallingEdge :
			SET_BIT  (MCUCR,ISC01_Bit);
			CLEAR_BIT(MCUCR,ISC00_Bit);
			break;
			case EXINT_RisingEdge :
			SET_BIT  (MCUCR,ISC01_Bit);
			SET_BIT  (MCUCR,ISC00_Bit);
			break;
			default:
			break;
		}
		SET_BIT(GICR,INT0_Bit);
		break;
		case EXINT_INT1:
		switch (Mode)
		{
			case EXINT_LowLevel :
			CLEAR_BIT(MCUCR,ISC10_Bit);
			CLEAR_BIT(MCUCR,ISC11_Bit);
			break;
			case EXINT_logical_change :
			CLEAR_BIT(MCUCR,ISC10_Bit);
			SET_BIT  (MCUCR,ISC11_Bit);
			break;
			case EXINT_FallingEdge :
			SET_BIT  (MCUCR,ISC10_Bit);
			CLEAR_BIT(MCUCR,ISC11_Bit);
			break;
			case EXINT_RisingEdge :
			SET_BIT  (MCUCR,ISC10_Bit);
			SET_BIT  (MCUCR,ISC11_Bit);
			break;
			default:
			break;
		}
		SET_BIT(GICR,INT1_Bit);
		break;
		case EXINT_INT2:
		switch (Mode)
		{
			case EXINT_LowLevel :
			case EXINT_logical_change :
			break;
			case EXINT_FallingEdge :
			CLEAR_BIT(MCUCR,ISC2_Bit);
			break;
			case EXINT_RisingEdge :
			SET_BIT(MCUCR,ISC2_Bit);
			break;
			default:
			break;
		}
		SET_BIT(GICR,INT2_Bit);
		break;
		default :
		break;
	}

}
