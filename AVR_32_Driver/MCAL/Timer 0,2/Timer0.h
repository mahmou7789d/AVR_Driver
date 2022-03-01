/*
 * Timer0.h
 *
 * Created: 12/28/2021 11:42:14 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef TIMER0_H_
#define TIMER0_H_


 /********************* Internal Structure *********************
 *
 * We have at the ATmega32A a 3 Timers 0,1,2 Each one of them has it is feature than the other
 *
 * TMSK it the general register to all timers it is a mask able register to the interrupt bit of the Timers
 * TIFR it is the Timer interrupt flag register it hold the flags of the interrupts situation of the 3 timers
 *
 * Timer0 (8-Bit timer)
 * It has an TCNT0 the counter register , OCR0 it the Compare match value hold register , TCCR0  it is the control register of the timer
 * It has a single compare unit OCR0 the TCNT0  clear on the compare match
 * has an 8 selection of the Clock prescaler
 * has an 4 different work mode (Normal Mode , CTC Mode , phase Correct Mode , Fast PWM )
 * It has 2 Interrupt Source on if the TCNT0 reach to the bottom ( Overflow ) and the other at the Compare match btween the value on the OCR0 and the TCNT0
 *
 * Timer2 (8-bit Timer)
 * it is the same as the timer0 but the biggest different that the timer2 has the ability to get an External Clock source on the Pin TOSC1 PC6 if it from RC circuit or from TOSC1, TOSC2 if it form an Crystal Oscillator
 * The biggest use of the timer 2 in the application of the real time clock because the ability of adding crystal that equal 32768Hz and the wide scale option of the prescaler value that we use 128 in that appliction
 * Single Compare match from OCR2
 * It has an TCNT2 the counter register , OCR2 it the Compare match value hold register , TCCR2  it is the control register of the timer
 * It has 2 Interrupt Source on if the TCNT2 reach to the bottom ( Overflow ) and the other at the Compare match between the value on the OCR2 and the TCNT2
 *
 * Timer1 (16-bit Timer)
 * It be a kind different from the 2 other timer because it is a 16 bit timer and because it is the 8-bit microcontroller all the register must be a 8-bit so register of the timer1 is divided into 2 register
 * it has 2 independent output compare match OCR1A , OCR1B
 * has a one input capture unit and capture noise
 * Has 4 external interrupt source
 * Variable PWM periods
 *
 ***************** Operating Mode *****************************
 *
 * Timer 0
 * It has a 4 operating Mode switch between them by the 2 bit WGM00, WGm01 in the control register TCCR0
 * 1- Normal Mode WGM00 0 WGM01 0
 * it is the default Mode in that mode TCNT0 the counter timer register count from 0 to 255 then it get overflow return to 0 and raise the TOV0 flag bit in the TIFR
 * and if the bit TOIE0 interrupt mask enable in the TMSK register it call interrupt source event
 *
 * 2- CTC Mode WGM00 0 WGM01 1
 * In that Mode The User store an value in the OCR0 register and the TCNT0 count as normal and when the value of the TCNT0 reach to be equal to the Value in the OCR0 raise the OCF0 flag bit in the TIFR and TCNT0 return to 0
 *  and if the bit OCIE0 interrupt mask enable in the TMSK register it call interrupt source event
 * The value store in the OCR0 decide by the time the user want to pass to get interrupt that by( T (of the user want to pass)/ T timer time in sec) Note that the Timer time get by 1/(F_Cpu/the value of the prescaler)
 *
 * Note We Can Generat an Signal in The CTC , Normal Mode (Non PWM Mode)
 * That By Used The Pin PB3 and control the output signal by the 2 bit COM01 , COM00 in the control register this bit is also used to control the signal in the PWM mode
 *     COM01    COM00
 *      0        0      Normal Port Operation the OC0 is Disconnected
 *      0        1      Toggle OC0 on a Compare match
 *      1        0      Clear OC0 on a Compare match
 *      1        1      Set "    " "  "    "   "
 * The Frequency of the output signal get by :
 * Time of the output signal = time periode of the one cycle * time of cycle  = 2*(1 + OCR0) * time of timer ->  N(prescaler value)/F_CPU
 * The frequency of The output signal is F_CPu / (2N * (1 + OCR0) )
 * Te max OC0 Freqency it when N = 1 and OCR0 = 0 that mean Fmax = F_CPu / 2
 *
 * 3- Fast PWM Mode WGM00 1 WGM01 1
 *  The generating signal appear on the PB3 the OC0  Pin The shape of the signal decide by the user through the bit COM00 COM01
 *     COM01    COM00
 *      0        0      Normal Port Operation the OC0 is Disconnected
 *      0        1      Reserved _ _
 *      1        0      Clear OC0 on a Compare match and Set OC0 at TCNT0 Reach the bottom (overflow)  (non inverting mode)
 *      1        1      Set "    " "  "    "   " "    "   Clear   "   "     "   "    "       "          (inverting Mode )
 *
 * time of the OC0 = 256 *(1/F_timer)
 * if the user store in the OCR0 the value 64 that mean in the non inverting mode the off 75% of the signal and the on the 25% and in the inverting mode is vise versa
 *
 * 4- phase Correct PWM Mode WGM00 1 WGM01 0
 *  This mode is same as fast PWM mode but the TCNT0 is counting up and down not get overflow
 *  The generating signal appear on the PB3 the OC0  Pin The shape of the signal decide by the user through the bit COM00 COM01
 *     COM01    COM00
 *      0        0      Normal Port Operation the OC0 is Disconnected
 *      0        1      Reserved _ _
 *      1        0      Clear OC0 on a Compare match in TCNT0 in up counting and Set OC0 at Compare match on TCNT0 in down counting  (non inverting mode)
 *      1        1      Set "    " "  "    "   " "    "   Clear   "   "     "   "    "       "       "      "  "    "   "    "        (inverting Mode )
 * time of the OC0 = 510 *(1/F_timer)     Because ( 2* 256 = 510 )
 *
 *
 * Timer 2
 * it has the exact same Mode as the timer0 but the different in the Registers and the bit called
 */

 /*
  Generally, we use a timer/counter to generate time delays, waveforms, or to count events.
  Also, the timer is used for PWM generation, capturing events, etc.

  In AVR ATmega16 / ATmega32, there are three timers:

  Timer0: 8-bit timer
  Timer1: 16-bit timer
  Timer2: 8-bit timer

  Basic registers and flags of the Timers

   TCNTn: Timer / Counter Register

           Every timer has a timer/counter register. It is zero upon reset. We can access value or write a value to this register. It counts up with each clock pulse.

   TOVn: Timer Overflow Flag

           Each timer has a Timer Overflow flag. When the timer overflows, this flag will get set.

   TCCRn: Timer Counter Control Register

           This register is used for setting the modes of timer/counter.

   OCRn: Output Compare Register

          The value in this register is compared with the content of the TCNTn register. When they are equal, the OCFn flag will get set.


Timer0
First, we need to understand the basic registers of the Timer0

TCNT0: Timer / Counter Register 0
            It is an 8-bit register. It counts up with each pulse.

TCCR0: Timer / Counter Control register 0
            This is an 8-bit register used for the operation mode and the clock source


   Bit 7- FOC0: Force compare match

        Write only a bit, which can be used while generating a wave.
        Writing 1 to this bit causes the wave generator to act as if a compare match has occurred.

   Bit 6, 3 - WGM00, WGM01: Waveform Generation Mode

      WGM00      WGM01      Timer0 mode selection bit

        0           0                Normal

        0           1       CTC (Clear timer on Compare Match)

        1           0            PWM, Phase correct

        1           1                 Fast PWM


   Bit 5:4 - COM01:00: Compare Output Mode

           These bits control the waveform generator. We will see this in the compare mode of the timer.

   Bit 2:0 - CS02:CS00: Clock Source Select

           These bits are used to select a clock source. When CS02: CS00 = 000, then timer is stopped.
           As it gets a value between 001 to 101, it gets a clock source and starts as the timer.

3. TIFR: Timer Counter Interrupt Flag register

  Bit 0 - TOV0: Timer0 Overflow flag

            0 = Timer0 did not overflow

            1 = Timer0 has overflow (going from 0xFF to 0x00)

  Bit 1 - OCF0: Timer0 Output Compare flag

            0 = Compare match did not occur

            1 = Compare match occurred

  Bit 2 - TOV1: Timer1 Overflow flag

  Bit 3 - OCF1B: Timer1 Output Compare B match flag

  Bit 4 - OCF1A: Timer1 Output Compare A match flag

  Bit 5 - ICF1: Input Capture flag

  Bit 6 - TOV2: Timer2 Overflow flag

  Bit 7 - OCF2: Timer2 Output Compare match flag



timer0 Overflow

Normal mode: When the counter overflows i.e. goes from 0xFF to 0x00, the TOV0 flag is set.


  */

#include <AVR_32_Registers.h>
#include <STD_Types.h>
#include <Interrupt.h>

# define prescaler_1     (1)
# define prescaler_8     (2)
# define prescaler_64    (64)
# define prescaler_256   (256)
# define prescaler_1024 (1024)
# define TIMER0_MAX_COUNTS 0xFF
# define MAX_ALLOWED_TIME 999
# define MS_TO_US 1000

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
/*
These bits control the Output Compare pin (OC0) behavior.
If one or both of the COM01:0 bits are set,the OC0 output overrides the normal port functionality of the I/O pin it is connected to.
--->the Data Direction Register (DDR) bit corresponding to the OC0 pin must be set in order to enable the output driver
   Pin OC0 must be Output when we use it in timer .

*/
typedef struct
{
	Timer_Number_Selection Timer_Number;
	Timer_mode_selection Timer_mode;
	Timer_CLK_Source_selection Timer_CLK;
	Timer_Interrupt_Source Timer_INT_source;
	OC_behavior OC_Pin_State;
}TIMER_DataType;

void TIMER_Init(TIMER_DataType Timer_Details,uint_8 OCR_Value);

void Timer0_CompareMatch_Callback(void (*TIMER0_CompareMatch_User_ptr) (void));
void Timer0_OverFlow_Callback(void (*TIMER0_Overflow_User_ptr) (void));

void Timer2_CompareMatch_Callback(void (*TIMER2_CompareMatch_User_ptr) (void));
void Timer2_OverFlow_Callback(void (*TIMER2_Overflow_User_ptr) (void));

void TIMER_Delay(TIMER_DataType Timer_Details,uint_8 inital_Value);
void TIMER0_Preload_TCNT0(uint_8 TIMER0_TCNT0_val);
void TIMER0_Preload_OCR0(float_32 TIMER0_OCR0_val);

/*
    Led_Data LED_1 = {GPIOB,PIN0,LED_FW_OFF};
    Led_Start(LED_1);
    TIMER_DataType counter = {Normal_mode,Clk_1024};
	TIMER_Init(counter);

	while(1)
	{
		Led_State_Control(LED_1,LED_FW_ON);
		TIMER_Delay(counter ,0x64);
		Led_State_Control(LED_1,LED_FW_OFF);
		TIMER_Delay(counter ,0x64);
	}

	in this test the register states is:
	PORTB= (Toggle) 0x00 : 0x01
	TCCER0 = (Toggle) 0x00 : 0x05   (CS00 , CS02 values change between 0,1) (the Timer_CLK_Source_selection is Prescaling on 1024 )
	TCNT0 = 0x64 (Constant Value)
	TIFR =  0x00   (Constant Value)  this is wrong case
	(The TOV0_bit , OCF0_bit values change between 0 ,1 )       when making while((READ_BIT(TIFR,TOV0_bit)) == GPIO_LOW); ; in TIMER_Delay function
	(that mean the an overflow occurs in Timer/Counter0)
	(that mean the a compare match occurs between the Timer/Counter0 and the data in OCR0 –Output Compare Register0)
	while condition is maked to keep monitoring the Timer overflow flag



 Normal Mode:
        In this mode the counting direction is always up (incrementing), and no counter clear is performed
        The counter simply overruns when it passes its maximum 8-bit value (TOP = 0xFF) and then restarts from the bottom (0x00)
        Timer/Counter Overflow Flag (TOV0) will be set in the same timer clock cycle as the TCNT0 becomes zero
        The TOV0 Flag in this case behaves like a ninth bit, except that it is only set, not cleared
        combined with the timer overflow interrupt that automatically clears the TOV0 Flag, the timer resolution can be increased by software

*/



#endif /* TIMER0_H_ */