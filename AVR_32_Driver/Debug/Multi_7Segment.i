# 1 "../APP/Multiplaxing_2SevenSegment/Multi_7Segment.c"
# 1 "C:\\Users\\Mahm Oud Sa Ad\\OneDrive - Higher Technological Institute\\Desktop\\Embedded Data\\Driver_To_Finish\\AVR_32_Driver\\AVR_32_Driver\\Debug//"
# 1 "<command-line>"
# 1 "../APP/Multiplaxing_2SevenSegment/Multi_7Segment.c"
# 10 "../APP/Multiplaxing_2SevenSegment/Multi_7Segment.c"
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
# 11 "../APP/Multiplaxing_2SevenSegment/Multi_7Segment.c" 2
# 1 "../HAL/Direct 7-Segment/Direct_7-Segment.h" 1
# 13 "../HAL/Direct 7-Segment/Direct_7-Segment.h"
typedef enum
{
 Zero = 0x3f,
 One = 0x06,
 Two = 0x5b,
 Three = 0x4f,
 Four = 0x66,
 Five = 0x6d,
 Six = 0x7d,
 Seven = 0x47,
 Eight = 0x7f,
 Nine = 0x6f,
 A = 0x77,
 B = 0x7c,
 C = 0x39,
 D = 0x5e,
 E = 0x79,
 F = 0x71,
}Numbers;
typedef enum
{
 Common_Anode,
 Common_Cathode,
}Seven_Segment_Type;
void Seven_Seg_Init(GPIO_Register *_7_Segment_port);
void Seven_Seg_Write(GPIO_Register *_7_Segment_port,Seven_Segment_Type Type,unsigned char Written_Number);
# 12 "../APP/Multiplaxing_2SevenSegment/Multi_7Segment.c" 2
# 1 "../MCAL/Timer 0,2/Timer0.h" 1
# 195 "../MCAL/Timer 0,2/Timer0.h"
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
# 196 "../MCAL/Timer 0,2/Timer0.h" 2
# 206 "../MCAL/Timer 0,2/Timer0.h"
typedef enum {
 Timer0,
 Timer2,
}Timer_Number_Selection;
typedef enum {
 Normal_mode,
 CTC_mode,
 PhaseCorrectPWM_mode,
 FastPWM_mode,
}Timer_mode_selection;

typedef enum{
 No_Clock_source,
 No_Prescaling,
 Clk_8,
 CLK_32,
 Clk_64,
 CLK_128,
 Clk_256,
 Clk_1024,
 External_Clock_falling_edge,
 External_Clock_Rising_edge,
 Timer2_OneSec_CLK,
}Timer_CLK_Source_selection;

typedef enum
{
    Timer_No_Interrupt,
    Timer_Overflow_Interrupt,
    Timer_OutPut_Compare_match,
}Timer_Interrupt_Source;

typedef enum
{
    OC_Disconnected,
    OC_Toggle,
    OC_ClearOn_Compare_match,
    OC_SetOn_Compare_match,
    NON_inverting_mode,
    inverting_mode,
    Clear_upCount_Set_DownCount,
    Set_upCount_Clear_DownCount,
}OC_behavior;







typedef struct
{
 Timer_Number_Selection Timer_Number;
 Timer_mode_selection Timer_mode;
 Timer_CLK_Source_selection Timer_CLK;
 Timer_Interrupt_Source Timer_INT_source;
 OC_behavior OC_Pin_State;
}TIMER_DataType;

void TIMER_Init(TIMER_DataType Timer_Details,uint_8 inital_Value);

void Timer0_CompareMatch_Callback(void (*TIMER0_CompareMatch_User_ptr) (void));
void Timer0_OverFlow_Callback(void (*TIMER0_Overflow_User_ptr) (void));

void Timer2_CompareMatch_Callback(void (*TIMER2_CompareMatch_User_ptr) (void));
void Timer2_OverFlow_Callback(void (*TIMER2_Overflow_User_ptr) (void));

void TIMER_Delay(TIMER_DataType Timer_Details,uint_8 inital_Value);
void TIMER0_Preload_TCNT0(uint_8 TIMER0_TCNT0_val);
void TIMER0_Preload_OCR0(float_32 TIMER0_OCR0_val);
# 13 "../APP/Multiplaxing_2SevenSegment/Multi_7Segment.c" 2


TIMER_DataType counter_app_2 = {Timer0,CTC_mode,Clk_1024,Timer_OutPut_Compare_match};
volatile uint_8 counter_1Sec=0;
volatile uint_8 counter_10mSec=0;
volatile unsigned char Display_Counter = 0;
void ISR_CTC_Timer_1(void);
void Multi_7_Segment_Init_System()
{
 TIMER_Init(counter_app_2,80);
 Timer0_CompareMatch_Callback(&ISR_CTC_Timer_1);
 Seven_Seg_Init(((GPIO_Register *) ((0x10)+(0x20))));
 GPIO_Pin_Configuration(((GPIO_Register *) ((0x13)+(0x20))),PIN6,OUTPUT);
 GPIO_Pin_Configuration(((GPIO_Register *) ((0x13)+(0x20))),PIN7,OUTPUT);

}
void Multi_7_Segment_Control_System()
{
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN7,LOW);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN6,HIGH);
 Seven_Seg_Write(((GPIO_Register *) ((0x10)+(0x20))),Common_Cathode,(Display_Counter%10));
 while(counter_10mSec == 0);
 counter_10mSec=0;
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN6,LOW);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN7,HIGH);
 Seven_Seg_Write(((GPIO_Register *) ((0x10)+(0x20))),Common_Cathode,(Display_Counter/10));
 while(counter_10mSec == 0);
 counter_10mSec=0;
 if (counter_1Sec>100)
 {
  counter_1Sec=0;
  Display_Counter++;
  if(Display_Counter>=21)
  {
   Display_Counter=0;
  }
 }
}


void ISR_CTC_Timer_1(void)
{
 counter_1Sec++;
 counter_10mSec=1;

}
