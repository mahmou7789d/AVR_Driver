# 1 "../APP/RealTimeClock/RealTimeClock.c"
# 1 "C:\\Users\\Mahm Oud Sa Ad\\OneDrive - Higher Technological Institute\\Desktop\\Embedded Data\\Driver_To_Finish\\AVR_32_Driver\\AVR_32_Driver\\Debug//"
# 1 "<command-line>"
# 1 "../APP/RealTimeClock/RealTimeClock.c"
# 9 "../APP/RealTimeClock/RealTimeClock.c"
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
# 10 "../APP/RealTimeClock/RealTimeClock.c" 2
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
# 11 "../APP/RealTimeClock/RealTimeClock.c" 2
# 1 "../HAL/LED_File/LED.h" 1
# 13 "../HAL/LED_File/LED.h"
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
# 12 "../APP/RealTimeClock/RealTimeClock.c" 2
# 1 "../HAL/LCD_Screen/LCD.h" 1
# 67 "../HAL/LCD_Screen/LCD.h"
void LCD_Init(void);
void Send_Command_LCD(uint_8 Command);
void Send_char_LCD(uint_8 Character);
void Move_Curser_LCD(uint_8 Row,uint_8 Column);
void Clear_LCD();
void Send_String_LCD(uint_8 *String);
# 13 "../APP/RealTimeClock/RealTimeClock.c" 2
# 1 "../HAL/Keypad/Keypad.h" 1
# 17 "../HAL/Keypad/Keypad.h"
typedef enum
{
 Pin_Row1,
 Pin_Row2,
 Pin_Row3,
 Pin_Row4,
}Keypad_RowPins;

typedef enum
{
 Pin_Col1,
 Pin_Col2,
 Pin_Col3,
 Pin_Col4,
}Keypad_ColPins;

typedef struct
{
 GPIO_Register *Keypad_port;
 GPIO_pin_number KROW1;
 GPIO_pin_number KROW2;
 GPIO_pin_number KROW3;
 GPIO_pin_number KROW4;
 GPIO_pin_number KCOL1;
 GPIO_pin_number KCOL2;
 GPIO_pin_number KCOL3;
 GPIO_pin_number KCOL4;
}Keypad_Data;




   void keypad_Init (Keypad_Data Keypad);
   uint8 keypad_Read (Keypad_Data Keypad);
# 14 "../APP/RealTimeClock/RealTimeClock.c" 2
# 1 "../MCAL/Interrupt/Interrupt.h" 1
# 15 "../APP/RealTimeClock/RealTimeClock.c" 2
# 1 "../APP/RealTimeClock/RealTimeClock.h" 1
# 16 "../APP/RealTimeClock/RealTimeClock.h"
void Real_Time_Init_System();
void Real_Time_control_System();
# 16 "../APP/RealTimeClock/RealTimeClock.c" 2
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
# 17 "../APP/RealTimeClock/RealTimeClock.c" 2
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
 __tmp = (((16000000U)) / 1e3) * __ms;
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
 __tmp = (((16000000U)) / 1e6) * __us;
# 242 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 268 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
}
# 18 "../APP/RealTimeClock/RealTimeClock.c" 2

TIMER_DataType counter_app_3 = {Timer2,Normal_mode,Timer2_OneSec_CLK,Timer_Overflow_Interrupt,OC_Disconnected};
volatile uint_8 Sec_Counter=0;
volatile uint_8 Min_Counter=0;
volatile uint_8 Hour_Counter=0;
volatile uint_8 First_Digit=0;
volatile uint_8 Second_Digit=0;
Keypad_Data keypad_app_1 = {((GPIO_Register *) ((0x19)+(0x20))), PIN0, PIN1, PIN2, PIN3, PIN4, PIN5,PIN6, PIN7};
uint_8 keypad_Read_Value;
void ISR_CTC_Timer_2(void);
void Real_Time_Init_System()
{
 TIMER_Init(counter_app_3,255);
 Timer2_OverFlow_Callback(&ISR_CTC_Timer_2);
 Seven_Seg_Init(((GPIO_Register *) ((0x10)+(0x20))));
 GPIO_Pin_Configuration(((GPIO_Register *) ((0x13)+(0x20))),PIN0,OUTPUT);
 GPIO_Pin_Configuration(((GPIO_Register *) ((0x13)+(0x20))),PIN1,OUTPUT);
 GPIO_Pin_Configuration(((GPIO_Register *) ((0x13)+(0x20))),PIN2,OUTPUT);
 GPIO_Pin_Configuration(((GPIO_Register *) ((0x13)+(0x20))),PIN3,OUTPUT);
 GPIO_Pin_Configuration(((GPIO_Register *) ((0x13)+(0x20))),PIN4,OUTPUT);
 GPIO_Pin_Configuration(((GPIO_Register *) ((0x13)+(0x20))),PIN5,OUTPUT);
 keypad_Init(keypad_app_1);
 LCD_Init();
 Send_String_LCD("Hello,Sir");
 _delay_ms(100);
 Clear_LCD();
 Send_String_LCD("Click 1 To start");
}
void Real_Time_control_System()
{
 while(1)
 {
 keypad_Read_Value = keypad_Read(keypad_app_1);
 if( keypad_Read_Value != (0xff))
 {
  if (keypad_Read_Value == '1')
  {
   Clear_LCD();
   Send_String_LCD("Enter Hour=");
   _delay_ms(300);
   do
   {
    First_Digit = keypad_Read(keypad_app_1);
   } while (First_Digit == (0xff));
   Send_char_LCD(First_Digit);
   _delay_ms(300);
   do
   {
    Second_Digit = keypad_Read(keypad_app_1);
   } while (Second_Digit == (0xff));
   Send_char_LCD(Second_Digit);
   _delay_ms(300);
   Hour_Counter = ((Second_Digit - 48)+10*(First_Digit-48));
   Clear_LCD();
   _delay_ms(1);


   Send_String_LCD("Enter Min=");
   _delay_ms(300);
   do
   {
    First_Digit = keypad_Read(keypad_app_1);
   } while (First_Digit == (0xff));
   Send_char_LCD(First_Digit);
   _delay_ms(300);
   do
   {
    Second_Digit = keypad_Read(keypad_app_1);
   } while (Second_Digit == (0xff));
   Send_char_LCD(Second_Digit);
   _delay_ms(300);
   Min_Counter = ((Second_Digit - 48)+10*(First_Digit-48));
   Clear_LCD();
   _delay_ms(1);


   Send_String_LCD("Enter Sec=");
   _delay_ms(300);
   do
   {
    First_Digit = keypad_Read(keypad_app_1);
   } while (First_Digit == (0xff));
   Send_char_LCD(First_Digit);
   _delay_ms(300);
   do
   {
    Second_Digit = keypad_Read(keypad_app_1);
   } while (Second_Digit == (0xff));
   Send_char_LCD(Second_Digit);
   _delay_ms(300);
   Sec_Counter = ((Second_Digit - 48)+10*(First_Digit-48));
   Clear_LCD();
   _delay_ms(1);
   Send_String_LCD("Click 1 To start");
  }else
  {
   Clear_LCD();
   Send_String_LCD("Wrong Choice,Try!");
   _delay_ms(300);
   Send_String_LCD("Click 1 To start");
  }
 }
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN0,LOW);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN1,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN2,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN3,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN4,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN5,HIGH);
 Seven_Seg_Write(((GPIO_Register *) ((0x10)+(0x20))),Common_Cathode,(Sec_Counter%10));
 _delay_ms(5);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN0,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN1,LOW);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN2,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN3,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN4,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN5,HIGH);
 Seven_Seg_Write(((GPIO_Register *) ((0x10)+(0x20))),Common_Cathode,(Sec_Counter/10));
 _delay_ms(5);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN0,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN1,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN2,LOW);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN3,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN4,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN5,HIGH);
 Seven_Seg_Write(((GPIO_Register *) ((0x10)+(0x20))),Common_Cathode,(Min_Counter%10));
 _delay_ms(5);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN0,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN1,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN2,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN3,LOW);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN4,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN5,HIGH);
 Seven_Seg_Write(((GPIO_Register *) ((0x10)+(0x20))),Common_Cathode,(Min_Counter/10));
 _delay_ms(5);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN0,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN1,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN2,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN3,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN4,LOW);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN5,HIGH);
 Seven_Seg_Write(((GPIO_Register *) ((0x10)+(0x20))),Common_Cathode,(Hour_Counter%10));
 _delay_ms(5);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN0,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN1,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN2,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN3,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN4,HIGH);
 GPIO_Pin_Write(((GPIO_Register *) ((0x13)+(0x20))),PIN5,LOW);
 Seven_Seg_Write(((GPIO_Register *) ((0x10)+(0x20))),Common_Cathode,(Hour_Counter/10));

 if (Sec_Counter== 60)
 {
  Sec_Counter= 0;
  Min_Counter++;
 }
 if (Min_Counter== 60)
 {
  Min_Counter= 0;
  Hour_Counter++;
 }
 if (Hour_Counter== 24)
 {
  Hour_Counter= 0;
 }
 }
}

void ISR_CTC_Timer_2(void)
{
 Sec_Counter++;
}
