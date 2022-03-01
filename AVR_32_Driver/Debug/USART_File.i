# 1 "../MCAL/CommuncationProtocols/USART_File.c"
# 1 "C:\\Users\\Mahm Oud Sa Ad\\Downloads\\My-Github\\AVR_Driver\\AVR_32_Driver\\Debug//"
# 1 "<command-line>"
# 1 "../MCAL/CommuncationProtocols/USART_File.c"







# 1 "../MCAL/CommuncationProtocols/USART_File.h" 1
# 12 "../MCAL/CommuncationProtocols/USART_File.h"
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
# 13 "../MCAL/CommuncationProtocols/USART_File.h" 2
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
# 14 "../MCAL/CommuncationProtocols/USART_File.h" 2


typedef enum
{
 USART_Asyn_Normal,
 USART_Asyn_DoupleSpeed,
 USART_Sync_Master,
}USART_Mode;

typedef enum
{
 USART_Disable,
 USART_Receiver,
 USART_Transmitter,
 USART_Receiver_Transmitter,
}USART_Micro_State;

typedef enum
{
 USART_Interrupt_Disable,
 USART_RxComplete_Enable,
 USART_TxComplete_Enable,
 USART_UDR_Enable,
 USART_Rx_Tx_Complete_Enable,
 USART_RX_Complete_UDR_Enable,
 USART_Tx_Complete_UDR_Enable,
 USART_All_Interrupt_Enable,
}USART_Interrupt_Source;
typedef enum
{
 Size_5bit,
 Size_6bit,
 Size_7bit,
 Size_8bit,
 Size_9bit,
}USART_Character_Size;

typedef enum
{
 USART_SingleProcessor,
 USART_MultiProcessor,
}USART_Communication_Processor;

typedef enum
{
 USART_NoError,
 USART_ParityError,
 USART_DataOverRunError,
 USART_FrameError,
}USART_ErrorsType;

typedef enum
{
 USART_SamplingOnFaling,
 USART_SamplingOnRising,
}USART_Clock_Parity;

typedef enum
{
 USART_Parity_Disable_1StopBit,
 USART_Parity_Disable_2StopBit,
 USART_Parity_Even_1StopBit,
 USART_Parity_Even_2StopBit,
 USART_Parity_Odd_1StopBit,
 USART_Parity_Odd_2StopBit,
}USART_Frame_Control;

typedef struct
{
 USART_Micro_State Micro_State;
 USART_Mode Communcation_Mode;
 USART_Communication_Processor Communication_Processor;
 USART_Interrupt_Source Interrupt_Source;
 USART_Character_Size Character_Size;
 USART_Frame_Control Frame_Control;
 USART_Clock_Parity Clock_Parity;
  uint_32 Baud_Rate;
 USART_ErrorsType Error_Type;
}USART_Configuration;

extern USART_Configuration USART0;
void USART_Init();
void USART_Send_ByteOfData_Blocking(uint_16 Data);
void USART_Send_ByteOfData_NonBlocking(uint_16 Data);
uint_16 USART_Receive_ByteOfData_Blocking();
uint_16 USART_Receive_ByteOfData_NonBlocking();

void USART_RXC_Complete_Callback(void (*USART_RXC_Complete_User_ptr) (void));
void USART_TXC_Complete_Callback(void (*USART_TXC_Complete_User_ptr) (void));
void USART_UDRE_Callback(void (*USART_UDRE_User_ptr) (void));
# 9 "../MCAL/CommuncationProtocols/USART_File.c" 2




static void (*CP_USART_RXC_Complete_User_ptr) (void) =((void *)(0X00));
static void (*CP_USART_TXC_Complete_User_ptr) (void) =((void *)(0X00));
static void (*CP_USART_UDRE_User_ptr) (void) =((void *)(0X00));

void USART_RXC_Complete_Callback(void (*USART_RXC_Complete_User_ptr) (void))
{
 if(USART_RXC_Complete_User_ptr != ((void *)(0X00)))
 {
  CP_USART_RXC_Complete_User_ptr =USART_RXC_Complete_User_ptr;
 }
}
void USART_TXC_Complete_Callback(void (*USART_TXC_Complete_User_ptr) (void))
{
 if(USART_TXC_Complete_User_ptr != ((void *)(0X00)))
 {
  CP_USART_TXC_Complete_User_ptr =USART_TXC_Complete_User_ptr;
 }
}
void USART_UDRE_Callback(void (*USART_UDRE_User_ptr) (void))
{
 if(USART_UDRE_User_ptr != ((void *)(0X00)))
 {
  CP_USART_UDRE_User_ptr =USART_UDRE_User_ptr;
 }
}

void __vector_13 (void) __attribute__ ((signal,used)) ; void __vector_13 (void)
{
 if ( CP_USART_RXC_Complete_User_ptr != ((void *)(0X00)))
 {
  CP_USART_RXC_Complete_User_ptr();
 }
}
void __vector_15 (void) __attribute__ ((signal,used)) ; void __vector_15 (void)
{
 if ( CP_USART_TXC_Complete_User_ptr != ((void *)(0X00)))
 {
  CP_USART_TXC_Complete_User_ptr();
 }
}
void __vector_14 (void) __attribute__ ((signal,used)) ; void __vector_14 (void)
{
 if ( CP_USART_UDRE_User_ptr != ((void *)(0X00)))
 {
  CP_USART_UDRE_User_ptr();
 }
}


USART_Configuration USART0={0};



void USART_Init(void)
{
 uint_8 UCSRA_Temp=0;
 uint_8 UCSRB_Temp=0;
 uint_8 UCSRC_Temp=0;
 float_32 UBBR_Temp=0.0;
 switch (USART0.Micro_State)
 {
  case USART_Disable:
  (UCSRB_Temp &= ~(1<<(4)));
  (UCSRB_Temp &= ~(1<<(3)));
  break;
  case USART_Receiver:
  (UCSRB_Temp |= (1<<(4)));
  (UCSRB_Temp &= ~(1<<(3)));
  break;
  case USART_Transmitter:
  (UCSRB_Temp &= ~(1<<(4)));
  (UCSRB_Temp |= (1<<(3)));
  break;
  case USART_Receiver_Transmitter:
  (UCSRB_Temp |= (1<<(4)));
  (UCSRB_Temp |= (1<<(3)));
  break;
  default:
  break;
 }
 switch(USART0.Communcation_Mode)
 {
  case USART_Asyn_Normal:
  (UCSRC_Temp &= ~(1<<(6)));
  (UCSRA_Temp &= ~(1<<(1)));
  (UCSRC_Temp &= ~(1<<(0)));
  UBBR_Temp = ((float_32)(8000000U))/(16.0*USART0.Baud_Rate) - 0.5;
  break;
  case USART_Asyn_DoupleSpeed:
  (UCSRC_Temp &= ~(1<<(6)));
  (UCSRA_Temp |= (1<<(1)));
  (UCSRC_Temp &= ~(1<<(0)));
  UBBR_Temp = ((float_32)(8000000U))/(8.0*USART0.Baud_Rate) - 0.5;
  break;
  case USART_Sync_Master:
  (UCSRC_Temp |= (1<<(6)));
  (UCSRA_Temp &= ~(1<<(1)));
  UBBR_Temp = ((float_32)(8000000U))/(2.0*USART0.Baud_Rate) - 0.5;
  switch(USART0.Clock_Parity)
  {
   case USART_SamplingOnFaling:
   (UCSRC_Temp &= ~(1<<(0)));
   break;
   case USART_SamplingOnRising:
   (UCSRC_Temp |= (1<<(0)));
   break;
   default:
   break;
  }

  break;
  default:
  break;
 }
 switch(USART0.Communication_Processor)
 {
  case USART_SingleProcessor:
  (UCSRA_Temp &= ~(1<<(0)));
  break;
  case USART_MultiProcessor:
  (UCSRA_Temp |= (1<<(0)));
  break;
  default:
  break;
 }
 switch(USART0.Interrupt_Source)
 {
  ((*(volatile uint_8 *)((0x3F) + (0x20))) |= (1<<(7)));
  case USART_Interrupt_Disable:
  break;
  case USART_RxComplete_Enable:
  (UCSRB_Temp |= (1<<(7)));
  break;
  case USART_TxComplete_Enable:
  (UCSRB_Temp |= (1<<(6)));
  break;
  case USART_UDR_Enable:
  (UCSRB_Temp |= (1<<(5)));
  break;
  case USART_RX_Complete_UDR_Enable:
  (UCSRB_Temp |= (1<<(7)));
  (UCSRB_Temp |= (1<<(5)));
  break;
  case USART_Tx_Complete_UDR_Enable:
  (UCSRB_Temp |= (1<<(6)));
  (UCSRB_Temp |= (1<<(5)));
  break;
  case USART_All_Interrupt_Enable:
  (UCSRB_Temp |= (1<<(7)));
  (UCSRB_Temp |= (1<<(6)));
  (UCSRB_Temp |= (1<<(5)));
  break;
  default:
  break;
 }
 switch(USART0.Character_Size)
 {
  case Size_5bit:
  (UCSRB_Temp &= ~(1<<(2)));
  (UCSRC_Temp &= ~(1<<(2)));
  (UCSRC_Temp &= ~(1<<(1)));
  break;
  case Size_6bit:
  (UCSRB_Temp &= ~(1<<(2)));
  (UCSRC_Temp &= ~(1<<(2)));
  (UCSRC_Temp |= (1<<(1)));
  break;
  case Size_7bit:
  (UCSRB_Temp &= ~(1<<(2)));
  (UCSRC_Temp |= (1<<(2)));
  (UCSRC_Temp &= ~(1<<(1)));
  break;
  case Size_8bit:
  (UCSRB_Temp &= ~(1<<(2)));
  (UCSRC_Temp |= (1<<(2)));
  (UCSRC_Temp |= (1<<(1)));
  break;
  case Size_9bit:
  (UCSRB_Temp |= (1<<(2)));
  (UCSRC_Temp |= (1<<(2)));
  (UCSRC_Temp |= (1<<(1)));
  break;
  default:
  break;

 }
 switch(USART0.Frame_Control)
 {
  case USART_Parity_Disable_1StopBit:
  (UCSRC_Temp &= ~(1<<(5)));
  (UCSRC_Temp &= ~(1<<(4)));
  (UCSRC_Temp &= ~(1<<(3)));
  break;
  case USART_Parity_Disable_2StopBit:
  (UCSRC_Temp &= ~(1<<(5)));
  (UCSRC_Temp &= ~(1<<(4)));
  (UCSRC_Temp |= (1<<(3)));
  break;
  case USART_Parity_Even_1StopBit:
  (UCSRC_Temp |= (1<<(5)));
  (UCSRC_Temp &= ~(1<<(4)));
  (UCSRC_Temp &= ~(1<<(3)));
  break;
  case USART_Parity_Even_2StopBit:
  (UCSRC_Temp |= (1<<(5)));
  (UCSRC_Temp &= ~(1<<(4)));
  (UCSRC_Temp |= (1<<(3)));
  break;
  case USART_Parity_Odd_1StopBit:
  (UCSRC_Temp |= (1<<(5)));
  (UCSRC_Temp |= (1<<(4)));
  (UCSRC_Temp &= ~(1<<(3)));
  break;
  case USART_Parity_Odd_2StopBit:
  (UCSRC_Temp |= (1<<(5)));
  (UCSRC_Temp |= (1<<(4)));
  (UCSRC_Temp |= (1<<(3)));
  break;
  default:
  break;
 }
 (*(volatile uint8 *)((0x20) + (0x20))) = ((uint_16)UBBR_Temp)>>8;
 (*(volatile uint8 *)((0x09) + (0x20))) = ((uint_16)UBBR_Temp);
 (*(volatile uint8 *)((0x0B) + (0x20))) =UCSRA_Temp;
 (*(volatile uint8 *)((0x20) + (0x20))) =UCSRC_Temp;
 (*(volatile uint8 *)((0x0A) + (0x20))) =UCSRB_Temp;
}

void USART_Send_ByteOfData_Blocking(uint_16 Data)
{
 while (( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((5))) ) >> ((5)))==0);
 if(USART0.Character_Size == Size_9bit)
 {





  (*(volatile uint8 *)((0x0A) + (0x20))) = ((*(volatile uint8 *)((0x0A) + (0x20))) & 0xFE) | ((Data & (1<<8))>>8);
 }
 (*(volatile uint8 *)((0x0C) + (0x20))) = (uint_8) Data;
}
void USART_Send_ByteOfData_NonBlocking(uint_16 Data)
{
 if(( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((5))) ) >> ((5)))!=0)
 {
  if(USART0.Character_Size == Size_9bit)
      {





      (*(volatile uint8 *)((0x0A) + (0x20))) = ((*(volatile uint8 *)((0x0A) + (0x20))) & 0xFE) | ((Data & (1<<8))>>8);
      }
      (*(volatile uint8 *)((0x0C) + (0x20))) = (uint_8) Data;
 }
}

uint_16 USART_Receive_ByteOfData_Blocking()
{
 uint_16 Recived_Data = 0;
 while (( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((7))) ) >> ((7)))==0);
 if(( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((4))) ) >> ((4)))| ( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((3))) ) >> ((3))) | ( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((2))) ) >> ((2))))
 {

  if(( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((4))) ) >> ((4))))
  {
   USART0.Error_Type = USART_FrameError;
  }
  else if (( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((3))) ) >> ((3))))
  {
   USART0.Error_Type = USART_DataOverRunError;
  }
  else if (( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((2))) ) >> ((2))))
  {
   USART0.Error_Type = USART_ParityError;
  }
 }
 if(USART0.Character_Size == Size_9bit)
 {
  Recived_Data = (*(volatile uint8 *)((0x0A) + (0x20))) & (1<<(1)) >>7;
 }
 Recived_Data |=(*(volatile uint8 *)((0x0C) + (0x20)));
 return Recived_Data;

}
uint_16 USART_Receive_ByteOfData_NonBlocking()
{
 uint_16 Recived_Data = 0;
 if(( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((7))) ) >> ((7)))!=0)
 {
  if(( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((4))) ) >> ((4)))| ( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((3))) ) >> ((3))) | ( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((2))) ) >> ((2))))
  {

   if(( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((4))) ) >> ((4))))
   {
    USART0.Error_Type = USART_FrameError;
   }
   else if (( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((3))) ) >> ((3))))
   {
    USART0.Error_Type = USART_DataOverRunError;
   }
   else if (( (((*(volatile uint8 *)((0x0B) + (0x20)))) & (1<<((2))) ) >> ((2))))
   {
    USART0.Error_Type = USART_ParityError;
   }
  }
  if(USART0.Character_Size == Size_9bit)
  {

   Recived_Data = (*(volatile uint8 *)((0x0A) + (0x20))) & (1<<(1)) >>7;
  }
  Recived_Data |=(*(volatile uint8 *)((0x0C) + (0x20)));
 }
 return Recived_Data;
}
