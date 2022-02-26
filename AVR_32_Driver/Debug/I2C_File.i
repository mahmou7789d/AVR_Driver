# 1 "../MCAL/CommuncationProtocols/I2C_File.c"
# 1 "C:\\Users\\Mahm Oud Sa Ad\\Downloads\\My-Github\\AVR_Driver\\AVR_32_Driver\\Debug//"
# 1 "<command-line>"
# 1 "../MCAL/CommuncationProtocols/I2C_File.c"







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
# 9 "../MCAL/CommuncationProtocols/I2C_File.c" 2
# 1 "../MCAL/CommuncationProtocols/I2C_File.h" 1
# 21 "../MCAL/CommuncationProtocols/I2C_File.h"
typedef enum
{
 Master_Transmitter,
 Master_Receiver,
 Slave_Transmitter,
 Slave_Receiver,
}Micro_Mode;

typedef enum
{
 No_Presaler,
 Prescaler_4,
 Prescaler_16,
 Prescaler_64,
}Presaler_Value;

typedef enum
{
 GeneralCall_No_Recognition,
 GeneralCall_Recognition,
}GeneralCall_Recognition_State;

typedef enum
{
 TWI_Disables,
 TWI_Enabled,
}TWI_status;

typedef enum
{
 ACK_Disables,
 ACK_Enabled,
}ACK_status;

typedef enum
{
 TWI_Interrupt_Disables,
 TWI_Interrupt_Enabled,
}TWI_Interrupt_status;


typedef struct
{
 TWI_status TWI_state;
 Presaler_Value Presaler_Val;
 TWI_Interrupt_status TWI_Interrupt_state;
 Micro_Mode Micro_state;
}TWi_Micro_data;

extern TWi_Micro_data TWI_1;



void Set_SLA_Value(uint_8 address);
void TWI_INIT(uint_32 SCL_F);
void TWI_Start(uint_8 SLA_Value);
void TWI_Write_Byte(uint_8 T_Data);
void TWI_Stop(void);
uint_8 TWI_Read_Byte();
# 10 "../MCAL/CommuncationProtocols/I2C_File.c" 2
TWi_Micro_data TWI_1={0};
void TWI_INIT(uint_32 SCL_F)
{
 uint_8 Presaler_Val=0;
 uint_8 TWSR_Temp =0;
 switch(TWI_1.Presaler_Val)
 {
  case No_Presaler:
  (TWSR_Temp &= ~(1<<(0)));
  (TWSR_Temp &= ~(1<<(1)));
  Presaler_Val=1;
  break;
  case Prescaler_4:
  (TWSR_Temp |= (1<<(0)));
  (TWSR_Temp &= ~(1<<(1)));
  Presaler_Val=4;
  break;
  case Prescaler_16:
  (TWSR_Temp &= ~(1<<(0)));
  (TWSR_Temp |= (1<<(1)));
  Presaler_Val=16;
  break;
  case Prescaler_64:
  (TWSR_Temp |= (1<<(0)));
  (TWSR_Temp |= (1<<(1)));
  Presaler_Val=64;
  break;
  default:
  break;
 }
 (*(volatile uint_8 *)((0x01)+(0x20))) = TWSR_Temp;
 (*(volatile uint_8 *)((0x00)+(0x20)))= (uint_8) ((((16000000U)/SCL_F)-16) / (2*Presaler_Val));
}
void TWI_Start(uint_8 SLA_Value)
{
 switch(TWI_1.Micro_state)
 {
  case Master_Transmitter:
  ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(2)));
  ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(7)));
  ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(5)));
  while (( (((*(volatile uint_8 *)((0x36)+(0x20)))) & (1<<((7))) ) >> ((7))) ==0);
  while (((*(volatile uint_8 *)((0x01)+(0x20))) & 0xf8) != 0x08);
  (*(volatile uint_8 *)((0x03)+(0x20))) = SLA_Value;
  ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(2)));
  ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(7)));
  while (( (((*(volatile uint_8 *)((0x36)+(0x20)))) & (1<<((7))) ) >> ((7))) ==0);
  while (((*(volatile uint_8 *)((0x01)+(0x20))) & 0xf8) != 0x18);
  break;
  case Master_Receiver:
  break;
  case Slave_Transmitter:
  break;
  case Slave_Receiver:
  (*(volatile uint_8 *)((0x02)+(0x20))) = SLA_Value;
  ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(2)));
  ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(6)));
  ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(7)));
  while (( (((*(volatile uint_8 *)((0x36)+(0x20)))) & (1<<((7))) ) >> ((7))) ==0);
  while (((*(volatile uint_8 *)((0x01)+(0x20))) & 0xf8) != 0x60);
  break;
  default:
  break;
 }
}
void TWI_Write_Byte(uint_8 T_Data)
{
 (*(volatile uint_8 *)((0x03)+(0x20))) = T_Data;
 (*(volatile uint_8 *)((0x36)+(0x20)))=(1<<(7))|(1<<(2));
 while (( (((*(volatile uint_8 *)((0x36)+(0x20)))) & (1<<((7))) ) >> ((7))) ==0);
 while (((*(volatile uint_8 *)((0x01)+(0x20))) & 0xf8) != 0x28);
}

void TWI_Stop(void)
{
 ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(2)));
 ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(7)));
 ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(4)));
}

void Set_SLA_Value(uint_8 address)
{
 (*(volatile uint_8 *)((0x02)+(0x20)))=address;
}

uint_8 TWI_Read_Byte(void)
{

 ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(2)));
 ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(6)));
 ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(7)));
 while(( (((*(volatile uint_8 *)((0x36)+(0x20)))) & (1<<((7))) ) >> ((7)))==0);
 while (((*(volatile uint_8 *)((0x01)+(0x20))) & 0xf8) != 0x60);
 ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(2)));
 ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(6)));
 ((*(volatile uint_8 *)((0x36)+(0x20))) |= (1<<(7)));
 while (( (((*(volatile uint_8 *)((0x36)+(0x20)))) & (1<<((7))) ) >> ((7))) ==0);
 while (((*(volatile uint_8 *)((0x01)+(0x20))) & 0xf8) != 0x80);
 return (*(volatile uint_8 *)((0x03)+(0x20)));
}
