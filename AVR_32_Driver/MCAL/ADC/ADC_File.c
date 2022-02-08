/*
 * ADC_File.c
 *
 * Created: 1/25/2022 4:20:48 AM
 *  Author: Mahm Oud Sa Ad
 */ 
#include <ADC_File.h>


void ADC_Init(ADC_Pin_Data ADC_Data)
{
	uint_8 ADCMUX_Temp=0x00 ;
	uint_8 ADCSRA_Temp=0x00;
	GPIO_Pin_Configuration(Port_A,ADC_Data.ADC_Pin,INPUT_Float);
	switch(ADC_Data.ADC_Pin)
	{
		case PIN0:
		/* it The Default State */
		break;
		case PIN1:
		SET_BIT(ADCMUX_Temp, MUX0);
		break;
		case PIN2:
		SET_BIT(ADCMUX_Temp, MUX1);
		break;
		case PIN3:
		SET_BIT(ADCMUX_Temp, MUX0);
		SET_BIT(ADCMUX_Temp, MUX1);
		break;
		case PIN4:
		SET_BIT(ADCMUX_Temp, MUX2);
		break;
		case PIN5:
		SET_BIT(ADCMUX_Temp, MUX0);
		SET_BIT(ADCMUX_Temp, MUX2);
		break;
		case PIN6:
		SET_BIT(ADCMUX_Temp, MUX1);
		SET_BIT(ADCMUX_Temp, MUX2);
		break;
		case PIN7:
		SET_BIT(ADCMUX_Temp, MUX0);
		SET_BIT(ADCMUX_Temp, MUX1);
		SET_BIT(ADCMUX_Temp, MUX2);
		break;
		case ADC_Diff_Mode:
		SET_BIT(ADCMUX_Temp, MUX4);
		default:
		break;
	}
	switch(ADC_Data.Vref)
	{
		case VREF_Volt:
		CLEAR_BIT(ADCMUX_Temp,REFS0);
		CLEAR_BIT(ADCMUX_Temp,REFS1);
		break;
		case VACC_Volt:
		SET_BIT(ADCMUX_Temp,REFS0);
		CLEAR_BIT(ADCMUX_Temp,REFS1);
		break;
		case Internal_Volt:
		SET_BIT(ADCMUX_Temp,REFS0);
		SET_BIT(ADCMUX_Temp,REFS1);
		break;
		default:
		break;	
	}
	switch(ADC_Data.ADC_Prescaler)
	{
		case ADC_Clk_2:
		CLEAR_BIT(ADCSRA_Temp,ADPS0);
		CLEAR_BIT(ADCSRA_Temp,ADPS1);
		CLEAR_BIT(ADCSRA_Temp,ADPS2);
		break;
		case ADC_Clk_4:
		CLEAR_BIT(ADCSRA_Temp,ADPS0);
		SET_BIT(ADCSRA_Temp,ADPS1);
		CLEAR_BIT(ADCSRA_Temp,ADPS2);
		break;
		case ADC_Clk_8:
		SET_BIT(ADCSRA_Temp,ADPS0);
		SET_BIT(ADCSRA_Temp,ADPS1);
		CLEAR_BIT(ADCSRA_Temp,ADPS2);
		break;
		case ADC_Clk_16:
		CLEAR_BIT(ADCSRA_Temp,ADPS0);
		CLEAR_BIT(ADCSRA_Temp,ADPS1);
		SET_BIT(ADCSRA_Temp,ADPS2);
		break;
		case ADC_Clk_32:
		SET_BIT(ADCSRA_Temp,ADPS0);
		CLEAR_BIT(ADCSRA_Temp,ADPS1);
		SET_BIT(ADCSRA_Temp,ADPS2);
		break;
		case ADC_Clk_64:
		CLEAR_BIT(ADCSRA_Temp,ADPS0);
		SET_BIT(ADCSRA_Temp,ADPS1);
		SET_BIT(ADCSRA_Temp,ADPS2);
		break;
		case ADC_Clk_128:
		SET_BIT(ADCSRA_Temp,ADPS0);
		SET_BIT(ADCSRA_Temp,ADPS1);
		SET_BIT(ADCSRA_Temp,ADPS2);
		break;
		default:
		break;
	}
	switch(ADC_Data.ADC_Conversion_Types)
	{
		case FreeRunningMode:
		CLEAR_BIT(SFIOR,ADTS0);
		CLEAR_BIT(SFIOR,ADTS1);
		CLEAR_BIT(SFIOR,ADTS2);
		break;
		case AnalogComparator:
		SET_BIT(SFIOR,ADTS0);
		CLEAR_BIT(SFIOR,ADTS1);
		CLEAR_BIT(SFIOR,ADTS2);
		break;
		case ExternalInterruptRequest0:
		CLEAR_BIT(SFIOR,ADTS0);
		SET_BIT(SFIOR,ADTS1);
		CLEAR_BIT(SFIOR,ADTS2);
		break;
		case TimerCounter0CompareMatch:
		SET_BIT(SFIOR,ADTS0);
		SET_BIT(SFIOR,ADTS1);
		CLEAR_BIT(SFIOR,ADTS2);
		break;
		case TimerCounter0Overflow:
		CLEAR_BIT(SFIOR,ADTS0);
		CLEAR_BIT(SFIOR,ADTS1);
		SET_BIT(SFIOR,ADTS2);
		break;
		case TimerCounterCompareMatchB:
		SET_BIT(SFIOR,ADTS0);
		CLEAR_BIT(SFIOR,ADTS1);
		SET_BIT(SFIOR,ADTS2);
		break;
		case TimerCounter1Overflow:
		CLEAR_BIT(SFIOR,ADTS0);
		SET_BIT(SFIOR,ADTS1);
		SET_BIT(SFIOR,ADTS2);
		break;
		case TimerCounter1CaptureEvent:
		SET_BIT(SFIOR,ADTS0);
		SET_BIT(SFIOR,ADTS1);
		SET_BIT(SFIOR,ADTS2);
		break;
		default:
		break;
	}
	switch(ADC_Data.ADC_Adjust)
	{
		case Adjust_Right:
		CLEAR_BIT(ADCMUX_Temp,ADLAR);
		break;
		case Adjust_Left:
		SET_BIT(ADCMUX_Temp,ADLAR);
		break;
		default:
		break;
		
	}
	switch(ADC_Data.ADC_INT_State)
	{
		case ADC_Enabled_INT:
		SET_BIT(ADCSRA_Temp,ADIE);
		break;
		case ADC_Disabled_INT:
		CLEAR_BIT(ADCSRA_Temp,ADIE);
		break;
		default:
		break;
	}
	
	ADCMUX = ADCMUX_Temp;
	ADCSRA = ADCSRA_Temp;
	/* Enable The ADC Bit */
	SET_BIT(ADCSRA, ADEN);
}
uint_16 ADC_Read(ADC_Pin_Data ADC_Data)
{
	uint_16 Read_ADC_Value=0x00;
	SET_BIT(ADCSRA,ADSC);
	while(READ_BIT(ADCSRA,ADIF) == 0);
	SET_BIT(ADCSRA,ADIF);
	switch(ADC_Data.ADC_Adjust)
	{
		case Adjust_Right:
		Read_ADC_Value  =(ADCL);
		Read_ADC_Value |=(ADCH<<8);
		break;
		case Adjust_Left:
		Read_ADC_Value  =(ADCH<<2);
		break;
	}
	return Read_ADC_Value;
}

