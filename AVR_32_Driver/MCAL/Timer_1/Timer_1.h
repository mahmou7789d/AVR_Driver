/*
 * Timer_1.h
 *
 * Created: 2/28/2022 8:27:29 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef TIMER_1_H_
#define TIMER_1_H_


typedef enum {
	Normal_mode,
	PhaseCorrectPWM_mode_8Bit,
	PhaseCorrectPWM_mode_9Bit,
	PhaseCorrectPWM_mode_10Bit,
	CTC_mode_OCR1A,
	FastPWM_mode_8Bit,
	FastPWM_mode_9Bit,
	FastPWM_mode_10Bit,
	Frequancy_PhaseCorrectPWM_ICR1_mode,
	Frequancy_PhaseCorrectPWM_OCR1A_mode,
	PhaseCorrectPWM_ICR1_mode,
	PhaseCorrectPWM_OCR1_mode,
	CTC_mode_ICR1,
	FastPWM_ICR1_mode,
	FastPWM_OCR1A_mode,
}Timer_1_mode_selection;

typedef enum{
	No_Clock_source,
	No_Prescaling,
	Clk_8,
	Clk_64,
	Clk_256,
	Clk_1024,
	External_Clock_falling_edge,
	External_Clock_Rising_edge,
}Timer_1_CLK_Source_selection;

typedef enum
{
	Timer_No_Interrupt,
	Timer_Input_Capture_Interrupt,
	Timer_OutPut_Compare_A_match,
	Timer_OutPut_Compare_B_match,
	Timer_Overflow_Interrupt,
}Timer_1_Interrupt_Source;

typedef enum 
{
	OC1A_Pin,
	OC1B_Pin,
}OC1_Select;
typedef enum
{
	OC1_Disconnected,
	OC1_Toggle,
	OC1_ClearOn_Compare_match,
	OC1_SetOn_Compare_match,
	OC1A_Toggle_On_Fast_PWM_OCR1A,
	NON_inverting_mode,
	inverting_mode,
	OC1A_Toggle_On_Phase_Frequancy_Correct_PWM_OCR1A,
	Clear_upCount_Set_DownCount,
	Set_upCount_Clear_DownCount,
}OC1A_behavior;

typedef enum
{
	OC1B_Disconnected,
	OC1B_Toggle,
	OC1B_ClearOn_Compare_match,
	OC1B_SetOn_Compare_match,
	NON_B_inverting_mode,
	B_inverting_mode,
	B_Clear_upCount_Set_DownCount,
	B_Set_upCount_Clear_DownCount,
}OC1B_behavior;

typedef enum
{
	Input_Capture_Disable,
	Input_Capture_Failing_No_Noise_Filter,
	Input_Capture_Rising_Noise_Filter,
}Input_Capture_Mode;
typedef struct
{
	Timer_1_mode_selection Timer_mode;
	Timer_1_CLK_Source_selection Timer_CLK;
	Timer_1_Interrupt_Source Timer_INT_source;
	OC1A_behavior OC1A_Pin_State;
	OC1B_behavior OC1B_Pin_State;
	Input_Capture_Mode Input_Capture_State;
}TIMER_1_DataType;

void Timer1_Init(TIMER_1_DataType Timer1);
#endif /* TIMER_1_H_ */