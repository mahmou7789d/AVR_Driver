# 1 "../HAL/LED_File/LED.c"
# 1 "C:\\Users\\Mahm Oud Sa Ad\\OneDrive - Higher Technological Institute\\Desktop\\Embedded Data\\Driver_To_Finish\\AVR_32_Driver\\AVR_32_Driver\\Debug//"
# 1 "<command-line>"
# 1 "../HAL/LED_File/LED.c"







# 1 "../HAL/LED_File/LED.h" 1
# 12 "../HAL/LED_File/LED.h"
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
# 13 "../HAL/LED_File/LED.h" 2
typedef struct
{
 GPIO_Register *LED_port;
 GPIO_pin_number LED_pin;
 Digital_pinState LED_Init_State;
}Led_Data;
typedef enum
{
  LED_FW_OFF =LOW,
  LED_FW_ON =HIGH,
  LED_REV_ON =LOW,
  LED_REV_OFF =HIGH,
}Led_State;
 void Led_Start (Led_Data LED_init);
 void Led_State_Control(Led_Data LED_init,Led_State LED_state);
 Digital_pinState Led_Get_State (Led_Data LED_init);
 void Led_Toggle (Led_Data LED_init);
 void Led_Stop_FW (Led_Data LED_init);
 void Led_Stop_REV (Led_Data LED_init);
# 9 "../HAL/LED_File/LED.c" 2
static void LED_Error_Indication(ErrorType type)
{

  switch(type)
  {
   case InvalidArgument:
   {};
   break;
   case OverFlow:
   {};
   break;
   default:
   break;
  }
}
void Led_Start(Led_Data LED_init)
{
 GPIO_Pin_Configuration(LED_init.LED_port,LED_init.LED_pin,OUTPUT);
 GPIO_Pin_Write(LED_init.LED_port,LED_init.LED_pin,LED_init.LED_Init_State);
}
Digital_pinState Led_Get_State(Led_Data LED_init)
{
 return GPIO_Pin_Read (LED_init.LED_port,LED_init.LED_pin);
}
void Led_State_Control(Led_Data LED_init,Led_State LED_state)
{
 switch (LED_state)
 {


 case HIGH:
 case LOW:
  GPIO_Pin_Write(LED_init.LED_port,LED_init.LED_pin,LED_state);
  break;
 default:
  LED_Error_Indication(InvalidArgument);
  break;
 }
}
void Led_Toggle(Led_Data LED_init)
{
 GPIO_Pin_Toggle (LED_init.LED_port,LED_init.LED_pin);

}
void Led_Stop_FW(Led_Data LED_init)
{
 GPIO_Pin_Write(LED_init.LED_port,LED_init.LED_pin,LOW);
}
void Led_Stop_REV(Led_Data LED_init)
{
 GPIO_Pin_Write(LED_init.LED_port,LED_init.LED_pin,HIGH);
}
