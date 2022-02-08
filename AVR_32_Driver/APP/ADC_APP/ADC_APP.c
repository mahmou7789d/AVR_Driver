/*
 * ADC_APP.c
 *
 * Created: 1/25/2022 6:45:29 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#include <ADC_APP.h>
#include <util/delay.h>

/*

ADC_Pin_Data ADC_Data ={PIN0,ADC_Enabled_INT,VACC_Volt,ADC_Clk_64,FreeRunningMode,Adjust_Right};
Led_Data LED_0 = {Port_D,PIN0,LED_FW_OFF};
Led_Data LED_1 = {Port_D,PIN1,LED_FW_OFF};
Led_Data LED_2 = {Port_D,PIN2,LED_FW_OFF};
Led_Data LED_3 = {Port_D,PIN3,LED_FW_OFF};
Led_Data LED_4 = {Port_D,PIN4,LED_FW_OFF};
Led_Data LED_5 = {Port_D,PIN5,LED_FW_OFF};
Led_Data LED_6 = {Port_D,PIN6,LED_FW_OFF};
Led_Data LED_7 = {Port_D,PIN7,LED_FW_OFF};	

void ADC_APP_INIT()
{
	ADC_Init(ADC_Data);
	Led_Start(LED_0);
	Led_Start(LED_1);
	Led_Start(LED_2);
	Led_Start(LED_3);
	Led_Start(LED_4);
	Led_Start(LED_5);
	Led_Start(LED_6);
	Led_Start(LED_7);

}
void ADC_APP_Control()
{
	GPIO_Port_Write(Port_D,ADC_Read(ADC_Data));

}


*/