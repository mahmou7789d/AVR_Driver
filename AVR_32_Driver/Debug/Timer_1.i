# 1 "../MCAL/Timer_1/Timer_1.c"
# 1 "C:\\Users\\Mahm Oud Sa Ad\\Downloads\\My-Github\\AVR_Driver\\AVR_32_Driver\\Debug//"
# 1 "<command-line>"
# 1 "../MCAL/Timer_1/Timer_1.c"
# 9 "../MCAL/Timer_1/Timer_1.c"
# 1 "../MCAL/DIO/GPIO.h" 1
# 10 "../MCAL/DIO/GPIO.h"
# 1 "../MCAL/DIO/AVR32_Chip_Confg.h" 1
# 12 "../MCAL/DIO/AVR32_Chip_Confg.h"
# 1 "../Services/AVR_32_Registers.h" 1
# 14 "../Services/AVR_32_Registers.h"
# 1 "../Services/STD_Types.h" 1
# 13 "../Services/STD_Types.h"
typedef char uint_8;
typedef unsigned char uint8;
typedef unsigned short uint_16;
typedef unsigned long int uint_32;
typedef unsigned long long uint_64;

typedef signed char int_8;
typedef signed short int_16;
typedef signed long int int_32;
typedef signed long long int_64;

typedef float float_32;
typedef double float_64;

typedef enum
{
 false,
 true,
}bool;


typedef enum
{
 InvalidArgument,
 OverFlow
}ErrorType;
# 15 "../Services/AVR_32_Registers.h" 2



typedef struct
{
 volatile uint_8 PIN;
 volatile uint_8 DDR;
 volatile uint_8 PORT;
}GPIO_Register;
# 13 "../MCAL/DIO/AVR32_Chip_Confg.h" 2

# 1 "../Services/Macros_Functions.h" 1
# 15 "../MCAL/DIO/AVR32_Chip_Confg.h" 2
# 11 "../MCAL/DIO/GPIO.h" 2





typedef enum{
 OUTPUT,
 INPUT_Float,
 INPUT_Pullup,
}GPIO_pin_Type;
typedef enum{
 LOW,
 HIGH,
}Digital_pinState;
typedef enum{
 PIN0,
 PIN1,
 PIN2,
 PIN3,
 PIN4,
 PIN5,
 PIN6,
 PIN7,
 ADC_Diff_Mode,
}GPIO_pin_number;

typedef enum
{
 Pull_UP_Disabled,
 Pull_UP_enabled,
}Pull_UP_RES_State;
void GPIO_Pin_Configuration (GPIO_Register *Chip_port,GPIO_pin_number pin_num,GPIO_pin_Type O_Or_I_Mode);
void GPIO_Pin_Write (GPIO_Register *Chip_port,GPIO_pin_number pin_num,Digital_pinState Pin_state);
Digital_pinState GPIO_Pin_Read (GPIO_Register *Chip_port,GPIO_pin_number pin_num);
void GPIO_Pin_Toggle (GPIO_Register *Chip_port,GPIO_pin_number pin_num);
void GPIO_Port_Configuration (GPIO_Register *Chip_port,uint_8 port_Value);
void GPIO_Port_Write (GPIO_Register *Chip_port,uint_8 port_Value);
uint_8 GPIO_Port_Read (GPIO_Register *Chip_port);
void GPIO_Write_High_Nibble(uint_8 Port_Name,uint_8 High_Nibble_value);
void GPIO_Write_Low_Nibble(uint_8 Port_Name,uint_8 Low_Nibble_value);
void GPIO_Pin_Enable_PULLUP_RES(GPIO_Register *Chip_port,GPIO_pin_number pin_num,Pull_UP_RES_State Pull_Up);
# 10 "../MCAL/Timer_1/Timer_1.c" 2
# 1 "../MCAL/Interrupt/Interrupt.h" 1
# 95 "../MCAL/Interrupt/Interrupt.h"
    typedef enum
 {
  EXINT_LowLevel,
  EXINT_logical_change,
  EXINT_FallingEdge,
  EXINT_RisingEdge,
 }ExInterrupt_Modes;
 typedef enum
 {
  EXINT_INT0,
  EXINT_INT1,
  EXINT_INT2,
 }EXInterrupt_Source;
 extern void (* EXT_INT0_ISR) (void);
 extern void (* EXT_INT1_ISR) (void);
 extern void (* EXT_INT2_ISR) (void);
 void EXTINT_InterruptInit(EXInterrupt_Source source,ExInterrupt_Modes Mode);
# 11 "../MCAL/Timer_1/Timer_1.c" 2
# 1 "../MCAL/Timer_1/Timer_1.h" 1
# 13 "../MCAL/Timer_1/Timer_1.h"
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
# 12 "../MCAL/Timer_1/Timer_1.c" 2


void Timer1_Init(TIMER_1_DataType Timer1)
{

 uint_8 TCCR1A_Temp = 0x00;
 uint_8 TCCR1B_Temp = 0x00;
 uint_8 TIMSK_Temp = 0x00;
 switch(Timer1.Timer_mode)
 {
  case Normal_mode:
   break;
  case PhaseCorrectPWM_mode_8Bit:
   (TCCR1A_Temp |= (1<<(0)));
   break;
  case PhaseCorrectPWM_mode_9Bit:
   (TCCR1A_Temp |= (1<<(1)));
   break;
  case PhaseCorrectPWM_mode_10Bit:
   (TCCR1A_Temp |= (1<<(0)));
   (TCCR1A_Temp |= (1<<(1)));
   break;
  case CTC_mode_OCR1A:
   (TCCR1B_Temp |= (1<<(3)));
   break;
  case FastPWM_mode_8Bit:
   (TCCR1A_Temp |= (1<<(0)));
   (TCCR1B_Temp |= (1<<(3)));
   break;
  case FastPWM_mode_9Bit:
   (TCCR1A_Temp |= (1<<(1)));
   (TCCR1B_Temp |= (1<<(3)));
   break;
  case FastPWM_mode_10Bit:
   (TCCR1A_Temp |= (1<<(0)));
   (TCCR1A_Temp |= (1<<(1)));
   (TCCR1B_Temp |= (1<<(3)));
   break;
  case Frequancy_PhaseCorrectPWM_ICR1_mode:
   (TCCR1B_Temp |= (1<<(4)));
   break;
  case Frequancy_PhaseCorrectPWM_OCR1A_mode:
   (TCCR1A_Temp |= (1<<(0)));
   (TCCR1B_Temp |= (1<<(4)));
   break;
  case PhaseCorrectPWM_ICR1_mode:
   (TCCR1A_Temp |= (1<<(1)));
   (TCCR1B_Temp |= (1<<(4)));
   break;
  case PhaseCorrectPWM_OCR1_mode:
   (TCCR1A_Temp |= (1<<(0)));
   (TCCR1A_Temp |= (1<<(1)));
   (TCCR1B_Temp |= (1<<(4)));
   break;
  case CTC_mode_ICR1:
   (TCCR1B_Temp |= (1<<(3)));
   (TCCR1B_Temp |= (1<<(4)));
   break;
  case FastPWM_ICR1_mode:
   (TCCR1A_Temp |= (1<<(1)));
   (TCCR1B_Temp |= (1<<(3)));
   (TCCR1B_Temp |= (1<<(4)));
   break;
  case FastPWM_OCR1A_mode:
   (TCCR1A_Temp |= (1<<(0)));
   (TCCR1A_Temp |= (1<<(1)));
   (TCCR1B_Temp |= (1<<(3)));
   (TCCR1B_Temp |= (1<<(4)));
   break;
  default:
   break;
 }
 switch(Timer1.Timer_CLK)
 {
  case No_Clock_source:

   break;
  case No_Prescaling:
   (TCCR1B_Temp |= (1<<(0)));
   break;
  case Clk_8:
   (TCCR1B_Temp |= (1<<(1)));
   break;
  case Clk_64:
   (TCCR1B_Temp |= (1<<(0)));
   (TCCR1B_Temp |= (1<<(1)));
   break;
  case Clk_256:
   (TCCR1B_Temp |= (1<<(2)));
   break;
  case Clk_1024:
   (TCCR1B_Temp |= (1<<(0)));
   (TCCR1B_Temp |= (1<<(2)));
   break;
  case External_Clock_falling_edge:
   (TCCR1B_Temp |= (1<<(1)));
   (TCCR1B_Temp |= (1<<(2)));
   break;
  case External_Clock_Rising_edge:
   (TCCR1B_Temp |= (1<<(0)));
   (TCCR1B_Temp |= (1<<(1)));
   (TCCR1B_Temp |= (1<<(2)));
   break;
 }
 switch(Timer1.OC1A_Pin_State)
 {
  case OC1_Disconnected:

   break;
  case OC1_Toggle:
   (TCCR1A_Temp |= (1<<(6)));
  case OC1A_Toggle_On_Phase_Frequancy_Correct_PWM_OCR1A:
   if (Timer1.Timer_mode == Frequancy_PhaseCorrectPWM_OCR1A_mode)
   {
    (TCCR1A_Temp |= (1<<(6)));
   }
   else
   {
    (TCCR1A_Temp &= ~(1<<(6)));
    (TCCR1A_Temp &= ~(1<<(7)));
   }
   break;
  case OC1A_Toggle_On_Fast_PWM_OCR1A:
   if (Timer1.Timer_mode == FastPWM_OCR1A_mode)
   {
    (TCCR1A_Temp |= (1<<(6)));
   }
   else
   {
    (TCCR1A_Temp &= ~(1<<(6)));
    (TCCR1A_Temp &= ~(1<<(7)));
   }
   break;
  case OC1_ClearOn_Compare_match:
  case NON_inverting_mode:
  case Clear_upCount_Set_DownCount:
   (TCCR1A_Temp |= (1<<(7)));
   break;
  case OC1_SetOn_Compare_match:
  case inverting_mode:
  case Set_upCount_Clear_DownCount:
   (TCCR1A_Temp |= (1<<(6)));
   (TCCR1A_Temp |= (1<<(7)));
   break;
  default:
   break;
 }
 switch(Timer1.OC1B_Pin_State)
 {
  case OC1B_Disconnected:

  break;
  case OC1B_Toggle:
   (TCCR1A_Temp |= (1<<(4)));
   break;
  case OC1B_ClearOn_Compare_match:
  case NON_B_inverting_mode:
  case B_Clear_upCount_Set_DownCount:
   (TCCR1A_Temp |= (1<<(5)));
   break;
  case OC1B_SetOn_Compare_match:
  case B_inverting_mode:
  case B_Set_upCount_Clear_DownCount:
   (TCCR1A_Temp |= (1<<(4)));
   (TCCR1A_Temp |= (1<<(5)));
   break;
  default:
   break;
 }
 ((*(volatile uint_8 *)((0x3F) + (0x20))) |= (1<<(7)));

 switch(Timer1.Timer_INT_source)
 {
  case Timer_No_Interrupt:

   break;
  case Timer_Input_Capture_Interrupt:
   (TIMSK_Temp |= (1<<(5)));
   break;
  case Timer_OutPut_Compare_A_match:
   (TIMSK_Temp |= (1<<(4)));
   break;
  case Timer_OutPut_Compare_B_match:
   (TIMSK_Temp |= (1<<(3)));
   break;
  case Timer_Overflow_Interrupt:
   (TIMSK_Temp |= (1<<(2)));
   break;
  default:
   break;
 }
 switch(Timer1.Input_Capture_State)
 {
  case Input_Capture_Disable:
   ((*(volatile uint_8 *) ((0x2E) + (0x20))) &= ~(1<<(6)));
   ((*(volatile uint_8 *) ((0x2E) + (0x20))) &= ~(1<<(7)));
   break;
  case Input_Capture_Failing_No_Noise_Filter:
   ((*(volatile uint_8 *) ((0x2E) + (0x20))) &= ~(1<<(7)));
   ((*(volatile uint_8 *) ((0x2E) + (0x20))) |= (1<<(6)));
   break;
  case Input_Capture_Rising_Noise_Filter:
   ((*(volatile uint_8 *) ((0x2E) + (0x20))) |= (1<<(6)));
   ((*(volatile uint_8 *) ((0x2E) + (0x20))) |= (1<<(7)));
   break;
  default:
   break;
 }
 (*(volatile uint_8 *)((0x2F)+(0x20))) =TCCR1A_Temp;
 (*(volatile uint_8 *) ((0x2E) + (0x20))) =TCCR1B_Temp;
 (*(volatile uint_8 *)((0x39) + (0x20))) =TIMSK_Temp;
}
