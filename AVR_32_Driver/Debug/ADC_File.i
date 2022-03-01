# 1 "../MCAL/ADC/ADC_File.c"
# 1 "C:\\Users\\Mahm Oud Sa Ad\\Downloads\\My-Github\\AVR_Driver\\AVR_32_Driver\\Debug//"
# 1 "<command-line>"
# 1 "../MCAL/ADC/ADC_File.c"






# 1 "../MCAL/ADC/ADC_File.h" 1
# 13 "../MCAL/ADC/ADC_File.h"
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
# 14 "../MCAL/ADC/ADC_File.h" 2
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 1 3
# 42 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 1 3
# 37 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 3
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stdint.h" 1 3 4
# 9 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stdint.h" 3 4
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 1 3 4
# 121 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\lib\\gcc\\avr\\4.8.1\\include\\stdint.h" 2 3 4
# 38 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 2 3
# 77 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 43 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 2 3
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 1 3
# 40 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 3
static inline void _delay_loop_1(uint8_t __count) __attribute__((always_inline));
static inline void _delay_loop_2(uint16_t __count) __attribute__((always_inline));
# 80 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 44 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 2 3
# 1 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\math.h" 1 3
# 127 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double modf(double __x, double *__iptr);



extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));





extern double cbrt(double __x) __attribute__((__const__));
# 194 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 234 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 298 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 333 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 376 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 392 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 426 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double round (double __x) __attribute__((__const__));
# 439 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 453 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 45 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 2 3
# 84 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
static inline void _delay_us(double __us) __attribute__((always_inline));
static inline void _delay_ms(double __ms) __attribute__((always_inline));
# 141 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
void
_delay_ms(double __ms)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = (((8000000U)) / 1e3) * __ms;
# 160 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 186 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
}
# 223 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
void
_delay_us(double __us)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = (((8000000U)) / 1e6) * __us;
# 242 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 268 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
}
# 15 "../MCAL/ADC/ADC_File.h" 2



typedef enum
{
 VREF_Volt,
 VACC_Volt,
 Internal_Volt,
}Voltage_Referance_Source;

typedef enum
{
 ADC_Clk_2,
 ADC_Clk_4,
 ADC_Clk_8,
 ADC_Clk_16,
 ADC_Clk_32,
 ADC_Clk_64,
 ADC_Clk_128,
}ADC_Prescalar_Value;

typedef enum
{
 ADC_Enabled_INT,
 ADC_Disabled_INT,
}ADC_Inerrupt_state;

typedef enum
{
 FreeRunningMode,
 AnalogComparator,
 ExternalInterruptRequest0,
 TimerCounter0CompareMatch,
 TimerCounter0Overflow,
 TimerCounterCompareMatchB,
 TimerCounter1Overflow,
 TimerCounter1CaptureEvent,
}Auto_Trigger_Source;

typedef enum
{
 Adjust_Right,
 Adjust_Left,
}ADLAR_Adjust_Results;

typedef struct
{
 GPIO_pin_number ADC_Pin;
 ADC_Inerrupt_state ADC_INT_State;
 Voltage_Referance_Source Vref;
 ADC_Prescalar_Value ADC_Prescaler;
 Auto_Trigger_Source ADC_Conversion_Types;
 ADLAR_Adjust_Results ADC_Adjust;
}ADC_Pin_Data;

void ADC_Init(ADC_Pin_Data ADC_Data);
uint_16 ADC_Read(ADC_Pin_Data ADC_Data );
void ADC_INT();
# 8 "../MCAL/ADC/ADC_File.c" 2


void ADC_Init(ADC_Pin_Data ADC_Data)
{
 uint_8 ADCMUX_Temp=0x00 ;
 uint_8 ADCSRA_Temp=0x00;
 GPIO_Pin_Configuration(((GPIO_Register *) ((0x19)+(0x20))),ADC_Data.ADC_Pin,INPUT_Float);
 switch(ADC_Data.ADC_Pin)
 {
  case PIN0:

  break;
  case PIN1:
  (ADCMUX_Temp |= (1<<(0)));
  break;
  case PIN2:
  (ADCMUX_Temp |= (1<<(1)));
  break;
  case PIN3:
  (ADCMUX_Temp |= (1<<(0)));
  (ADCMUX_Temp |= (1<<(1)));
  break;
  case PIN4:
  (ADCMUX_Temp |= (1<<(2)));
  break;
  case PIN5:
  (ADCMUX_Temp |= (1<<(0)));
  (ADCMUX_Temp |= (1<<(2)));
  break;
  case PIN6:
  (ADCMUX_Temp |= (1<<(1)));
  (ADCMUX_Temp |= (1<<(2)));
  break;
  case PIN7:
  (ADCMUX_Temp |= (1<<(0)));
  (ADCMUX_Temp |= (1<<(1)));
  (ADCMUX_Temp |= (1<<(2)));
  break;
  case ADC_Diff_Mode:
  (ADCMUX_Temp |= (1<<(4)));
  default:
  break;
 }
 switch(ADC_Data.Vref)
 {
  case VREF_Volt:
  (ADCMUX_Temp &= ~(1<<(6)));
  (ADCMUX_Temp &= ~(1<<(7)));
  break;
  case VACC_Volt:
  (ADCMUX_Temp |= (1<<(6)));
  (ADCMUX_Temp &= ~(1<<(7)));
  break;
  case Internal_Volt:
  (ADCMUX_Temp |= (1<<(6)));
  (ADCMUX_Temp |= (1<<(7)));
  break;
  default:
  break;
 }
 switch(ADC_Data.ADC_Prescaler)
 {
  case ADC_Clk_2:
  (ADCSRA_Temp &= ~(1<<(0)));
  (ADCSRA_Temp &= ~(1<<(1)));
  (ADCSRA_Temp &= ~(1<<(2)));
  break;
  case ADC_Clk_4:
  (ADCSRA_Temp &= ~(1<<(0)));
  (ADCSRA_Temp |= (1<<(1)));
  (ADCSRA_Temp &= ~(1<<(2)));
  break;
  case ADC_Clk_8:
  (ADCSRA_Temp |= (1<<(0)));
  (ADCSRA_Temp |= (1<<(1)));
  (ADCSRA_Temp &= ~(1<<(2)));
  break;
  case ADC_Clk_16:
  (ADCSRA_Temp &= ~(1<<(0)));
  (ADCSRA_Temp &= ~(1<<(1)));
  (ADCSRA_Temp |= (1<<(2)));
  break;
  case ADC_Clk_32:
  (ADCSRA_Temp |= (1<<(0)));
  (ADCSRA_Temp &= ~(1<<(1)));
  (ADCSRA_Temp |= (1<<(2)));
  break;
  case ADC_Clk_64:
  (ADCSRA_Temp &= ~(1<<(0)));
  (ADCSRA_Temp |= (1<<(1)));
  (ADCSRA_Temp |= (1<<(2)));
  break;
  case ADC_Clk_128:
  (ADCSRA_Temp |= (1<<(0)));
  (ADCSRA_Temp |= (1<<(1)));
  (ADCSRA_Temp |= (1<<(2)));
  break;
  default:
  break;
 }
 switch(ADC_Data.ADC_Conversion_Types)
 {
  case FreeRunningMode:
  ((*(volatile uint_8 *)((0x30)+(0x20))) &= ~(1<<(5)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) &= ~(1<<(6)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) &= ~(1<<(7)));
  break;
  case AnalogComparator:
  ((*(volatile uint_8 *)((0x30)+(0x20))) |= (1<<(5)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) &= ~(1<<(6)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) &= ~(1<<(7)));
  break;
  case ExternalInterruptRequest0:
  ((*(volatile uint_8 *)((0x30)+(0x20))) &= ~(1<<(5)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) |= (1<<(6)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) &= ~(1<<(7)));
  break;
  case TimerCounter0CompareMatch:
  ((*(volatile uint_8 *)((0x30)+(0x20))) |= (1<<(5)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) |= (1<<(6)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) &= ~(1<<(7)));
  break;
  case TimerCounter0Overflow:
  ((*(volatile uint_8 *)((0x30)+(0x20))) &= ~(1<<(5)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) &= ~(1<<(6)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) |= (1<<(7)));
  break;
  case TimerCounterCompareMatchB:
  ((*(volatile uint_8 *)((0x30)+(0x20))) |= (1<<(5)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) &= ~(1<<(6)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) |= (1<<(7)));
  break;
  case TimerCounter1Overflow:
  ((*(volatile uint_8 *)((0x30)+(0x20))) &= ~(1<<(5)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) |= (1<<(6)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) |= (1<<(7)));
  break;
  case TimerCounter1CaptureEvent:
  ((*(volatile uint_8 *)((0x30)+(0x20))) |= (1<<(5)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) |= (1<<(6)));
  ((*(volatile uint_8 *)((0x30)+(0x20))) |= (1<<(7)));
  break;
  default:
  break;
 }
 switch(ADC_Data.ADC_Adjust)
 {
  case Adjust_Right:
  (ADCMUX_Temp &= ~(1<<(5)));
  break;
  case Adjust_Left:
  (ADCMUX_Temp |= (1<<(5)));
  break;
  default:
  break;

 }
 switch(ADC_Data.ADC_INT_State)
 {
  case ADC_Enabled_INT:
  (ADCSRA_Temp |= (1<<(3)));
  break;
  case ADC_Disabled_INT:
  (ADCSRA_Temp &= ~(1<<(3)));
  break;
  default:
  break;
 }

 (*(volatile uint_8 *)((0x07) + (0x20))) = ADCMUX_Temp;
 (*(volatile uint_8 *)((0x06) + (0x20))) = ADCSRA_Temp;

 ((*(volatile uint_8 *)((0x06) + (0x20))) |= (1<<(7)));
}
uint_16 ADC_Read(ADC_Pin_Data ADC_Data)
{
 uint_16 Read_ADC_Value=0x00;
 ((*(volatile uint_8 *)((0x06) + (0x20))) |= (1<<(6)));
 while(( (((*(volatile uint_8 *)((0x06) + (0x20)))) & (1<<((4))) ) >> ((4))) == 0);
 ((*(volatile uint_8 *)((0x06) + (0x20))) |= (1<<(4)));
 switch(ADC_Data.ADC_Adjust)
 {
  case Adjust_Right:
  Read_ADC_Value =((*(volatile uint_8 *)((0x04) + (0x20))));
  Read_ADC_Value |=((*(volatile uint_8 *)((0x05) + (0x20)))<<8);
  break;
  case Adjust_Left:
  Read_ADC_Value =((*(volatile uint_8 *)((0x05) + (0x20)))<<2);
  break;
 }
 return Read_ADC_Value;
}
