# 1 "../MCAL/Timer 0,2/Timer0.c"
# 1 "C:\\Users\\Mahm Oud Sa Ad\\OneDrive - Higher Technological Institute\\Desktop\\Embedded Data\\Driver_To_Finish\\AVR_32_Driver\\AVR_32_Driver\\Debug//"
# 1 "<command-line>"
# 1 "../MCAL/Timer 0,2/Timer0.c"






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
# 8 "../MCAL/Timer 0,2/Timer0.c" 2
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
# 9 "../MCAL/Timer 0,2/Timer0.c" 2



static void (*CP_TIMER0_Overflow_User_ptr) (void) =((void *)(0X00));
static void (*CP_TIMER0_CompareMatch_User_ptr) (void) =((void *)(0X00));

static void (*CP_TIMER2_Overflow_User_ptr) (void) =((void *)(0X00));
static void (*CP_TIMER2_CompareMatch_User_ptr) (void) =((void *)(0X00));

void Timer0_OverFlow_Callback(void (*TIMER0_Overflow_User_ptr) (void))
{
 if(TIMER0_Overflow_User_ptr != ((void *)(0X00)))
 {
  CP_TIMER0_Overflow_User_ptr =TIMER0_Overflow_User_ptr;
 }
}
void Timer0_CompareMatch_Callback(void (*TIMER0_CompareMatch_User_ptr) (void))
{
 if(TIMER0_CompareMatch_User_ptr != ((void *)(0X00)))
 {
  CP_TIMER0_CompareMatch_User_ptr =TIMER0_CompareMatch_User_ptr;
 }
}

void Timer2_OverFlow_Callback(void (*TIMER2_Overflow_User_ptr) (void))
{
 if(TIMER2_Overflow_User_ptr != ((void *)(0X00)))
 {
  CP_TIMER2_Overflow_User_ptr =TIMER2_Overflow_User_ptr;
 }
}
void Timer2_CompareMatch_Callback(void (*TIMER2_CompareMatch_User_ptr) (void))
{
 if(TIMER2_CompareMatch_User_ptr != ((void *)(0X00)))
 {
  CP_TIMER2_CompareMatch_User_ptr =TIMER2_CompareMatch_User_ptr;
 }
}

void TIMER_Init(TIMER_DataType Timer_Details,uint_8 inital_Value)
{

    uint_8 TCCR_Temp = 0x00;
 uint_8 TIMSK_Temp = 0x00;

 switch (Timer_Details.Timer_Number)
 {
  case Timer0:
  switch(Timer_Details.Timer_mode)
  {
   case Normal_mode:
   (TCCR_Temp &= ~(1<<(3)));
   (TCCR_Temp &= ~(1<<(6)));
   break;
   case CTC_mode:
   (TCCR_Temp |= (1<<(3)));
   (TCCR_Temp &= ~(1<<(6)));
   break;
   case PhaseCorrectPWM_mode:
   (TCCR_Temp &= ~(1<<(3)));
   (TCCR_Temp |= (1<<(6)));
   break;
   case FastPWM_mode:
   (TCCR_Temp |= (1<<(3)));
   (TCCR_Temp |= (1<<(6)));
   break;
   default:
   break;
  }
  switch(Timer_Details.Timer_CLK)
  {
   case No_Clock_source :
   (TCCR_Temp &= ~(1<<(0)));
   (TCCR_Temp &= ~(1<<(1)));
   (TCCR_Temp &= ~(1<<(2)));
   break;
   case No_Prescaling:
   (TCCR_Temp |= (1<<(0)));
   (TCCR_Temp &= ~(1<<(1)));
   (TCCR_Temp &= ~(1<<(2)));
   break;
   case Clk_8:
   (TCCR_Temp &= ~(1<<(0)));
   (TCCR_Temp |= (1<<(1)));
   (TCCR_Temp &= ~(1<<(2)));
   break;
   case Clk_64:
   (TCCR_Temp |= (1<<(0)));
   (TCCR_Temp |= (1<<(1)));
   (TCCR_Temp &= ~(1<<(2)));
   break;
   case Clk_256:
   (TCCR_Temp &= ~(1<<(0)));
   (TCCR_Temp &= ~(1<<(1)));
   (TCCR_Temp |= (1<<(2)));
   break;
   case Clk_1024:

   (TCCR_Temp |= (1<<(0)));
   (TCCR_Temp &= ~(1<<(1)));
   (TCCR_Temp |= (1<<(2)));
   break;
   case External_Clock_falling_edge:
   (TCCR_Temp &= ~(1<<(0)));
   (TCCR_Temp |= (1<<(1)));
   (TCCR_Temp |= (1<<(2)));
   break;
   case External_Clock_Rising_edge:
   (TCCR_Temp |= (1<<(0)));
   (TCCR_Temp |= (1<<(1)));
   (TCCR_Temp |= (1<<(2)));
   break;
   default:
   break;
  }
  ((*(volatile uint_8 *)((0x3F) + (0x20))) |= (1<<(7)));

  switch(Timer_Details.Timer_INT_source)
  {
   case Timer_Overflow_Interrupt:

   (TIMSK_Temp |= (1<<(0)));
   break;
   case Timer_OutPut_Compare_match:

   (TIMSK_Temp |= (1<<(1)));
   break;
   case Timer_No_Interrupt :
   (TIMSK_Temp &= ~(1<<(0)));
   (TIMSK_Temp &= ~(1<<(1)));
   break;
   default:
   break;

  }
  switch (Timer_Details.OC_Pin_State)
  {
   case OC_Disconnected:
   (TCCR_Temp &= ~(1<<(4)));
   (TCCR_Temp &= ~(1<<(5)));
   break;
   case OC_Toggle:
   GPIO_Pin_Configuration(((GPIO_Register *) ((0x16)+(0x20))),PIN3,OUTPUT);
   (TCCR_Temp |= (1<<(4)));
   (TCCR_Temp &= ~(1<<(5)));
   break;
   case OC_ClearOn_Compare_match:
   case NON_inverting_mode:
   case Clear_upCount_Set_DownCount:
   GPIO_Pin_Configuration(((GPIO_Register *) ((0x16)+(0x20))),PIN3,OUTPUT);
   (TCCR_Temp &= ~(1<<(4)));
   (TCCR_Temp |= (1<<(5)));
   break;
   case OC_SetOn_Compare_match:
   case inverting_mode:
   case Set_upCount_Clear_DownCount:
   GPIO_Pin_Configuration(((GPIO_Register *) ((0x16)+(0x20))),PIN3,OUTPUT);
   (TCCR_Temp |= (1<<(4)));
   (TCCR_Temp |= (1<<(5)));
   break;
  }
  (*(volatile uint_8 *)((0x33) + (0x20))) = TCCR_Temp;
  (*(volatile uint_8 *)((0x39) + (0x20))) = TIMSK_Temp;
  (*(volatile uint_8 *)((0x3C) + (0x20))) = inital_Value;
  break;
  case Timer2:
  switch(Timer_Details.Timer_mode)
  {
   case Normal_mode:
   (TCCR_Temp &= ~(1<<(3)));
   (TCCR_Temp &= ~(1<<(6)));
   break;
   case CTC_mode:
   (TCCR_Temp |= (1<<(3)));
   (TCCR_Temp &= ~(1<<(6)));
   break;
   case PhaseCorrectPWM_mode:
   (TCCR_Temp &= ~(1<<(3)));
   (TCCR_Temp |= (1<<(6)));
   break;
   case FastPWM_mode:
   (TCCR_Temp |= (1<<(3)));
   (TCCR_Temp |= (1<<(6)));
   break;
   default:
   break;
  }
  switch(Timer_Details.Timer_CLK)
  {
   case No_Clock_source :
   (TCCR_Temp &= ~(1<<(0)));
   (TCCR_Temp &= ~(1<<(1)));
   (TCCR_Temp &= ~(1<<(2)));
   break;
   case No_Prescaling:
   (TCCR_Temp |= (1<<(0)));
   (TCCR_Temp &= ~(1<<(1)));
   (TCCR_Temp &= ~(1<<(2)));
   break;
   case Timer2_OneSec_CLK:
   ((*(volatile uint8 *)((0x22) + (0x20))) |= (1<<(4)));
   (TCCR_Temp |= (1<<(0)));
   (TCCR_Temp &= ~(1<<(1)));
   (TCCR_Temp |= (1<<(2)));
   break;
   case Clk_8:
   (TCCR_Temp &= ~(1<<(0)));
   (TCCR_Temp |= (1<<(1)));
   (TCCR_Temp &= ~(1<<(2)));
   break;
   case CLK_32:
   (TCCR_Temp |= (1<<(0)));
   (TCCR_Temp |= (1<<(1)));
   (TCCR_Temp &= ~(1<<(2)));
   break;
   case Clk_64:
   (TCCR_Temp &= ~(1<<(0)));
   (TCCR_Temp &= ~(1<<(1)));
   (TCCR_Temp |= (1<<(2)));
   break;
   case CLK_128:
   (TCCR_Temp |= (1<<(0)));
   (TCCR_Temp &= ~(1<<(1)));
   (TCCR_Temp |= (1<<(2)));
   break;
   case Clk_256:
   (TCCR_Temp &= ~(1<<(0)));
   (TCCR_Temp |= (1<<(1)));
   (TCCR_Temp |= (1<<(2)));
   break;
   case Clk_1024:
   (TCCR_Temp |= (1<<(0)));
   (TCCR_Temp |= (1<<(1)));
   (TCCR_Temp |= (1<<(2)));
   break;
   default:
   break;
  }
  ((*(volatile uint_8 *)((0x3F) + (0x20))) |= (1<<(7)));

  switch(Timer_Details.Timer_INT_source)
  {
   case Timer_Overflow_Interrupt:

   (TIMSK_Temp |= (1<<(6)));
   break;
   case Timer_OutPut_Compare_match:

   (TIMSK_Temp |= (1<<(7)));
   break;
   case Timer_No_Interrupt :
   (TIMSK_Temp &= ~(1<<(6)));
   (TIMSK_Temp &= ~(1<<(7)));
   break;
   default:
   break;

  }
  switch (Timer_Details.OC_Pin_State)
  {
   case OC_Disconnected:
   (TCCR_Temp &= ~(1<<(4)));
   (TCCR_Temp &= ~(1<<(5)));
   break;
   case OC_Toggle:
   GPIO_Pin_Configuration(((GPIO_Register *) ((0x10)+(0x20))),PIN7,OUTPUT);
   (TCCR_Temp |= (1<<(4)));
   (TCCR_Temp &= ~(1<<(5)));
   break;
   case OC_ClearOn_Compare_match:
   case NON_inverting_mode:
   case Clear_upCount_Set_DownCount:
   GPIO_Pin_Configuration(((GPIO_Register *) ((0x10)+(0x20))),PIN7,OUTPUT);
   (TCCR_Temp &= ~(1<<(4)));
   (TCCR_Temp |= (1<<(5)));
   break;
   case OC_SetOn_Compare_match:
   case inverting_mode:
   case Set_upCount_Clear_DownCount:
   GPIO_Pin_Configuration(((GPIO_Register *) ((0x10)+(0x20))),PIN7,OUTPUT);
   (TCCR_Temp |= (1<<(4)));
   (TCCR_Temp |= (1<<(5)));
   break;
  }
  (*(volatile uint8 *) ((0x25) + (0x20))) = TCCR_Temp;
  (*(volatile uint_8 *)((0x39) + (0x20))) = TIMSK_Temp;
  (*(volatile uint8 *)((0x23) +(0x20))) = inital_Value;
  break;
 }
}

void TIMER_Delay(TIMER_DataType Timer_Details,uint_8 inital_Value)
{
 switch(Timer_Details.Timer_Number)
  {
   case Timer0:
        (*(volatile uint_8 *)((0x3C) + (0x20))) = inital_Value;
   break;
   case Timer2:
        (*(volatile uint8 *)((0x23) +(0x20))) = inital_Value;
   break;
   default:
   break;
  }
}
# 327 "../MCAL/Timer 0,2/Timer0.c"
void __vector_10 (void) __attribute__ ((signal,used)) ; void __vector_10 (void)
{
 if (CP_TIMER0_CompareMatch_User_ptr != ((void *)(0X00)))
 {
  CP_TIMER0_CompareMatch_User_ptr();
 }
}
void __vector_11 (void) __attribute__ ((signal,used)) ; void __vector_11 (void)
{
 if (CP_TIMER0_Overflow_User_ptr != ((void *)(0X00)))
 {
  CP_TIMER0_Overflow_User_ptr();
 }
}
void __vector_5 (void) __attribute__ ((signal,used)) ; void __vector_5 (void)
{
 if (CP_TIMER2_Overflow_User_ptr != ((void *)(0X00)))
 {
  CP_TIMER2_Overflow_User_ptr();
 }
}
void __vector_4 (void) __attribute__ ((signal,used)) ; void __vector_4 (void)
{
 if (CP_TIMER2_CompareMatch_User_ptr != ((void *)(0X00)))
 {
  CP_TIMER2_CompareMatch_User_ptr();
 }
}
