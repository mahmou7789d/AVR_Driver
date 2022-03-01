# 1 "../APP/Timer_APP/ICU_Timer1/ICU.c"
# 1 "C:\\Users\\Mahm Oud Sa Ad\\Downloads\\My-Github\\AVR_Driver\\AVR_32_Driver\\Debug//"
# 1 "<command-line>"
# 1 "../APP/Timer_APP/ICU_Timer1/ICU.c"






# 1 "../HAL/LCD_Screen/LCD.h" 1
# 12 "../HAL/LCD_Screen/LCD.h"
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
# 13 "../HAL/LCD_Screen/LCD.h" 2
# 67 "../HAL/LCD_Screen/LCD.h"
void LCD_Init(void);
void Send_Command_LCD(uint_8 Command);
void Send_char_LCD(uint_8 Character);
void Move_Curser_LCD(uint_8 Row,uint_8 Column);
void Clear_LCD();
void Send_String_LCD(uint_8 *String);
# 8 "../APP/Timer_APP/ICU_Timer1/ICU.c" 2
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
# 9 "../APP/Timer_APP/ICU_Timer1/ICU.c" 2
# 1 "../APP/Timer_APP/ICU_Timer1/ICU.h" 1
# 13 "../APP/Timer_APP/ICU_Timer1/ICU.h"
void ICU_Init_System();
void ICU_Control_System();
# 10 "../APP/Timer_APP/ICU_Timer1/ICU.c" 2

uint_16 a,b,c,T_on,Time_Period,Duty_Cyle,Frequancy;
TIMER_1_DataType Timer1;
uint_8 Presaler_Val=1;
void ICU_Init_System()
{
 LCD_Init();
}
void ICU_Control_System()
{


 (*(volatile uint_8 *)((0x2F)+(0x20))) =0;
 ((*(volatile uint_8 *)((0x38) + (0x20))) |= (1<<(5)));



 (*(volatile uint_8 *) ((0x2E) + (0x20)))=0XC1;
 while(( (((*(volatile uint_8 *)((0x38) + (0x20)))) & (1<<((5))) ) >> ((5)))==0);
 a=(*(volatile uint_16 *)((0x26) +(0x20)));
 ((*(volatile uint_8 *)((0x38) + (0x20))) |= (1<<(5)));


 (*(volatile uint_8 *) ((0x2E) + (0x20)))=0X81;
 while(( (((*(volatile uint_8 *)((0x38) + (0x20)))) & (1<<((5))) ) >> ((5)))==0);
 b=(*(volatile uint_16 *)((0x26) +(0x20)));
 ((*(volatile uint_8 *)((0x38) + (0x20))) |= (1<<(5)));


 (*(volatile uint_8 *) ((0x2E) + (0x20)))=0XC1;
 while(( (((*(volatile uint_8 *)((0x38) + (0x20)))) & (1<<((5))) ) >> ((5)))==0);
 c=(*(volatile uint_16 *)((0x26) +(0x20)));
 ((*(volatile uint_8 *)((0x38) + (0x20))) |= (1<<(5)));


 (*(volatile uint_8 *) ((0x2E) + (0x20)))=0;
 if(a<b&&b<c)
 {
  T_on=b-a;
  Time_Period=c-a;
  Duty_Cyle=((float)T_on/Time_Period)*100;
  Frequancy=((8000000U)/(Time_Period*Presaler_Val));
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
