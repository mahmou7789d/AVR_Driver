# 1 "../HAL/Direct 7-Segment/Direct_7-Segment.c"
# 1 "C:\\Users\\Mahm Oud Sa Ad\\OneDrive - Higher Technological Institute\\Desktop\\Embedded Data\\Driver_To_Finish\\AVR_32_Driver\\AVR_32_Driver\\Debug//"
# 1 "<command-line>"
# 1 "../HAL/Direct 7-Segment/Direct_7-Segment.c"






# 1 "../HAL/Direct 7-Segment/Direct_7-Segment.h" 1
# 12 "../HAL/Direct 7-Segment/Direct_7-Segment.h"
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
# 13 "../HAL/Direct 7-Segment/Direct_7-Segment.h" 2
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
# 8 "../HAL/Direct 7-Segment/Direct_7-Segment.c" 2
void Seven_Seg_Init(GPIO_Register *_7_Segment_port)
{
 GPIO_Port_Configuration(_7_Segment_port,255);
}
void Seven_Seg_Write(GPIO_Register *_7_Segment_port,Seven_Segment_Type Type,unsigned char Written_Number)
{
 unsigned char Numbers_arr[]={ Zero,One,Two,Three,Four,Five,Six,Seven,Eight,Nine};
 switch(Type)
 {
  case Common_Anode:
  GPIO_Port_Write(_7_Segment_port,~(Numbers_arr[Written_Number]));
  break;
  case Common_Cathode:
  GPIO_Port_Write(_7_Segment_port,Numbers_arr[Written_Number]);
  break;
 }

}
