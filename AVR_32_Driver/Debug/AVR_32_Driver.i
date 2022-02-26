# 1 ".././AVR_32_Driver.c"
# 1 "C:\\Users\\Mahm Oud Sa Ad\\Downloads\\My-Github\\AVR_Driver\\AVR_32_Driver\\Debug//"
# 1 "<command-line>"
# 1 ".././AVR_32_Driver.c"







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
# 9 ".././AVR_32_Driver.c" 2
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
# 10 ".././AVR_32_Driver.c" 2
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
# 11 ".././AVR_32_Driver.c" 2
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
# 12 ".././AVR_32_Driver.c" 2
# 1 "../MCAL/Interrupt/Interrupt.h" 1
# 13 ".././AVR_32_Driver.c" 2
# 1 "../APP/Timer_CTC_APP/Timer_CTC_APP.h" 1
# 12 "../APP/Timer_CTC_APP/Timer_CTC_APP.h"
void Timer_CTC_APP_Init();
# 14 ".././AVR_32_Driver.c" 2
# 1 "../APP/Timer_OC0_NonPWM/Timer_OC0_NonPWM.h" 1
# 12 "../APP/Timer_OC0_NonPWM/Timer_OC0_NonPWM.h"
void Timer_OC0_NonPWM();
# 15 ".././AVR_32_Driver.c" 2
# 1 "../APP/TIMER_FastPWM/Timer_FastPWM.h" 1
# 13 "../APP/TIMER_FastPWM/Timer_FastPWM.h"
void Timer_Inverting_FastPWM_Init();
void Timer_NonInverting_FastPWM_Init();
# 16 ".././AVR_32_Driver.c" 2
# 1 "../APP/Timer_PhaseCorrectPWM/Timer_PhaseCorrectPWM.h" 1
# 12 "../APP/Timer_PhaseCorrectPWM/Timer_PhaseCorrectPWM.h"
void Timer_PhaseCorrect_Init();
# 17 ".././AVR_32_Driver.c" 2
# 1 "../APP/KeyPad_APP/KeyPad_APP.h" 1
# 14 "../APP/KeyPad_APP/KeyPad_APP.h"
void KeyPad_APP_init(void);
void KeyPad_APP_Control(void);
# 18 ".././AVR_32_Driver.c" 2
# 1 "../APP/GameUsingTimer/GameUsingTimer.h" 1
# 13 "../APP/GameUsingTimer/GameUsingTimer.h"
void Game_Init_System();
void Game_Playing_System();
# 19 ".././AVR_32_Driver.c" 2
# 1 "../APP/Multiplaxing_2SevenSegment/Multi_7Segment.h" 1
# 13 "../APP/Multiplaxing_2SevenSegment/Multi_7Segment.h"
void Multi_7_Segment_Init_System();

void Multi_7_Segment_Control_System();
# 20 ".././AVR_32_Driver.c" 2
# 1 "../APP/RealTimeClock/RealTimeClock.h" 1
# 16 "../APP/RealTimeClock/RealTimeClock.h"
void Real_Time_Init_System();
void Real_Time_control_System();
# 21 ".././AVR_32_Driver.c" 2
# 1 "../MCAL/CommuncationProtocols/USART_File.h" 1
# 13 "../MCAL/CommuncationProtocols/USART_File.h"
# 1 "../MCAL/Interrupt/Interrupt.h" 1
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
# 22 ".././AVR_32_Driver.c" 2



# 1 "../MCAL/EEPROM/EEPROM.h" 1
# 44 "../MCAL/EEPROM/EEPROM.h"
# 1 "../MCAL/Interrupt/Interrupt.h" 1
# 45 "../MCAL/EEPROM/EEPROM.h" 2


void Disable_Interrupt();
void EEPROM_Write_Data(uint_16 address,uint_8 data);
uint_8 EEPROM_Read_Data(uint_16 address);
# 26 ".././AVR_32_Driver.c" 2
Led_Data Led_FW = {((GPIO_Register *) ((0x13)+(0x20))),PIN4,LOW};
int main ()
{
 Led_Start(Led_FW);
 EEPROM_Write_Data(44,0x31);
 EEPROM_Write_Data(44,0x30);
 if (EEPROM_Read_Data(44)==0X30)
 {
  Led_State_Control(Led_FW,HIGH);
 }
 else
 {
  Led_State_Control(Led_FW,LOW);
 }
 while(1)
 {

 }
}
