# 1 "../MCAL/DIO/GPIO.c"
# 1 "C:\\Users\\Mahm Oud Sa Ad\\OneDrive - Higher Technological Institute\\Desktop\\Embedded Data\\Driver_To_Finish\\AVR_32_Driver\\AVR_32_Driver\\Debug//"
# 1 "<command-line>"
# 1 "../MCAL/DIO/GPIO.c"







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
# 9 "../MCAL/DIO/GPIO.c" 2

static void GPIO_ErrorIndication(ErrorType Type)
{
 switch(Type)
 {
  case InvalidArgument:
  {};
  break;
  default:
  break;
 }
}
void GPIO_Pin_Configuration (GPIO_Register* Chip_port,GPIO_pin_number pin_num,GPIO_pin_Type O_Or_I_Mode )
{

  switch (O_Or_I_Mode)
  {
  case INPUT_Float:
  (Chip_port->DDR &= ~(1<<pin_num));
  (Chip_port->PORT &= ~(1<<pin_num));
  break;
  case INPUT_Pullup:
  (Chip_port->DDR &= ~(1<<pin_num));
  (Chip_port->PORT |= (1<<pin_num));
  break;
  case OUTPUT:
  (Chip_port->DDR |= (1<<pin_num));
  (Chip_port->PORT &= ~(1<<pin_num));
  break;
  default:
  GPIO_ErrorIndication(InvalidArgument);

  break;
  }

}
void GPIO_Pin_Write(GPIO_Register *Chip_port,GPIO_pin_number pin_num,Digital_pinState Pin_state)
{
  switch(Pin_state)
  {
  case HIGH:
  (Chip_port->PORT |= (1<<pin_num));
  break;
  case LOW:
  (Chip_port->PORT &= ~(1<<pin_num));
  break;
  default:
  GPIO_ErrorIndication(InvalidArgument);
  break;
  }
}

Digital_pinState GPIO_Pin_Read (GPIO_Register *Chip_port,GPIO_pin_number pin_num)
{
 return ( ((Chip_port->PIN) & (1<<(pin_num)) ) >> (pin_num));
}
void GPIO_Pin_Toggle (GPIO_Register *Chip_port,GPIO_pin_number pin_num)
{
 (Chip_port->PORT ^= (1<<pin_num));
}
void GPIO_Port_Configuration (GPIO_Register * Chip_port,uint_8 port_Value)
{

 if (port_Value <= 255 && port_Value >= 0)
 {


  Chip_port->DDR = port_Value;
 }
 else
 {

 }
}
void GPIO_Port_Write (GPIO_Register * Chip_port,uint_8 port_Value)
{

 if (port_Value <= 255 && port_Value >= 0)
 {

  Chip_port->PORT = port_Value;
 }
 else if (port_Value >= 255)
 {
  Chip_port->PORT = 0xFF;
 }
 else if (port_Value <= 0)
 {
  Chip_port->PORT = 0x00;
 }
}

uint_8 GPIO_Port_Read (GPIO_Register * Chip_port)
{
 return (Chip_port->PIN);
}


void GPIO_Write_High_Nibble(uint_8 Port_Name,uint_8 High_Nibble_value)
{
 High_Nibble_value &=0xf0;
 switch(Port_Name)
 {
  case 'A':
  ((GPIO_Register *) ((0x19)+(0x20)))->PORT &=0x0f;
  ((GPIO_Register *) ((0x19)+(0x20)))->PORT |=High_Nibble_value;
  case 'B':
  ((GPIO_Register *) ((0x16)+(0x20)))->PORT &=0x0f;
  ((GPIO_Register *) ((0x16)+(0x20)))->PORT |=High_Nibble_value;
  case 'C':
  ((GPIO_Register *) ((0x13)+(0x20)))->PORT &=0x0f;
  ((GPIO_Register *) ((0x13)+(0x20)))->PORT |=High_Nibble_value;
  case 'D':
  ((GPIO_Register *) ((0x10)+(0x20)))->PORT &=0x0f;
  ((GPIO_Register *) ((0x10)+(0x20)))->PORT |=High_Nibble_value;
 }
}
void GPIO_Write_Low_Nibble(uint_8 Port_Name,uint_8 Low_Nibble_value)
{
 Low_Nibble_value &=0x0f;
 switch(Port_Name)
 {
  case 'A':
  ((GPIO_Register *) ((0x19)+(0x20)))->PORT &=0xf0;
  ((GPIO_Register *) ((0x19)+(0x20)))->PORT |=Low_Nibble_value;
  case 'B':
  ((GPIO_Register *) ((0x16)+(0x20)))->PORT &=0xf0;
  ((GPIO_Register *) ((0x16)+(0x20)))->PORT |=Low_Nibble_value;
  case 'C':
  ((GPIO_Register *) ((0x13)+(0x20)))->PORT &=0xf0;
  ((GPIO_Register *) ((0x13)+(0x20)))->PORT |=Low_Nibble_value;
  case 'D':
  ((GPIO_Register *) ((0x10)+(0x20)))->PORT &=0xf0;
  ((GPIO_Register *) ((0x10)+(0x20)))->PORT |=Low_Nibble_value;
 }
}


void GPIO_Pin_Enable_PULLUP_RES(GPIO_Register *Chip_port,GPIO_pin_number pin_num,Pull_UP_RES_State Pull_Up)
{

}
