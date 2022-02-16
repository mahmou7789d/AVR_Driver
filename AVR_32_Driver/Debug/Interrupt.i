# 1 "../MCAL/Interrupt/Interrupt.c"
# 1 "C:\\Users\\Mahm Oud Sa Ad\\Downloads\\My-Github\\AVR_Driver\\AVR_32_Driver\\Debug//"
# 1 "<command-line>"
# 1 "../MCAL/Interrupt/Interrupt.c"
# 12 "../MCAL/Interrupt/Interrupt.c"
# 1 "../MCAL/Interrupt/Interrupt.h" 1
# 16 "../MCAL/Interrupt/Interrupt.h"
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
# 17 "../MCAL/Interrupt/Interrupt.h" 2
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
# 13 "../MCAL/Interrupt/Interrupt.c" 2

void (* EXT_INT0_ISR) (void) = ((void *)(0X00));
void (* EXT_INT1_ISR) (void) = ((void *)(0X00));
void (* EXT_INT2_ISR) (void) = ((void *)(0X00));
void (* ADC_INT_ISR) (void) = ((void *)(0X00));

void __vector_1 (void) __attribute__ ((signal,used)) ; void __vector_1 (void)
{
 if (EXT_INT0_ISR != ((void *)(0X00)))
 {
  EXT_INT0_ISR();
 }
}

void __vector_2 (void) __attribute__ ((signal,used)) __attribute__((naked)); void __vector_2 (void)
{
 if (EXT_INT1_ISR != ((void *)(0X00)))
 {
  EXT_INT1_ISR();
 }
}

void __vector_3 (void) __attribute__ ((signal,used)) ; void __vector_3 (void)
{
 if (EXT_INT2_ISR != ((void *)(0X00)))
 {
  EXT_INT2_ISR();
 }
}
void __vector_16 (void) __attribute__ ((signal,used)) ; void __vector_16 (void)
{
 if (ADC_INT_ISR != ((void *)(0X00)))
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
   ((*(volatile uint_8 *)((0x35) + (0x20))) &= ~(1<<(1)));
   ((*(volatile uint_8 *)((0x35) + (0x20))) &= ~(1<<(0)));
   break;
   case EXINT_logical_change :
   ((*(volatile uint_8 *)((0x35) + (0x20))) &= ~(1<<(1)));
   ((*(volatile uint_8 *)((0x35) + (0x20))) |= (1<<(0)));
   break;
   case EXINT_FallingEdge :
   ((*(volatile uint_8 *)((0x35) + (0x20))) |= (1<<(1)));
   ((*(volatile uint_8 *)((0x35) + (0x20))) &= ~(1<<(0)));
   break;
   case EXINT_RisingEdge :
   ((*(volatile uint_8 *)((0x35) + (0x20))) |= (1<<(1)));
   ((*(volatile uint_8 *)((0x35) + (0x20))) |= (1<<(0)));
   break;
   default:
   break;
  }
  ((*(volatile uint_8 *)((0x3B) + (0x20))) |= (1<<(7)));
  break;
  case EXINT_INT1:
  switch (Mode)
  {
   case EXINT_LowLevel :
   ((*(volatile uint_8 *)((0x35) + (0x20))) &= ~(1<<(2)));
   ((*(volatile uint_8 *)((0x35) + (0x20))) &= ~(1<<(3)));
   break;
   case EXINT_logical_change :
   ((*(volatile uint_8 *)((0x35) + (0x20))) &= ~(1<<(2)));
   ((*(volatile uint_8 *)((0x35) + (0x20))) |= (1<<(3)));
   break;
   case EXINT_FallingEdge :
   ((*(volatile uint_8 *)((0x35) + (0x20))) |= (1<<(2)));
   ((*(volatile uint_8 *)((0x35) + (0x20))) &= ~(1<<(3)));
   break;
   case EXINT_RisingEdge :
   ((*(volatile uint_8 *)((0x35) + (0x20))) |= (1<<(2)));
   ((*(volatile uint_8 *)((0x35) + (0x20))) |= (1<<(3)));
   break;
   default:
   break;
  }
  ((*(volatile uint_8 *)((0x3B) + (0x20))) |= (1<<(6)));
  break;
  case EXINT_INT2:
  switch (Mode)
  {
   case EXINT_LowLevel :
   case EXINT_logical_change :
   break;
   case EXINT_FallingEdge :
   ((*(volatile uint_8 *)((0x35) + (0x20))) &= ~(1<<(6)));
   break;
   case EXINT_RisingEdge :
   ((*(volatile uint_8 *)((0x35) + (0x20))) |= (1<<(6)));
   break;
   default:
   break;
  }
  ((*(volatile uint_8 *)((0x3B) + (0x20))) |= (1<<(5)));
  break;
  default :
  break;
 }

}
