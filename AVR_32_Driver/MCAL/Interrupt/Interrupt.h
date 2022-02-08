/*
 * Interrupt.h
 *
 * Created: 12/26/2021 4:35:31 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef INTERRUPT_H_
#define INTERRUPT_H_


/***************************************************************
 *********************Includes section************************
 **************************************************************/
#include <GPIO.h>
//#include <avr/interrupt.h>

/******************************************************* The External interrupt Defintion ***************************************************************/
/* Vector 0 is the reset vector */
/* Interrupt vectors */

/* External Interrupt Request 0 */
#define INT0_vect_num		1
#define INT0_vect			_VECTOR(1)
/* External Interrupt Request 1 */
#define INT1_vect_num		2
#define INT1_vect			_VECTOR(2)
/* External Interrupt Request 2 */
#define INT2_vect_num		3
#define INT2_vect			_VECTOR(3)
/* Timer/Counter2 Compare Match */
#define TIMER2_COMP_vect_num	4
#define TIMER2_COMP_vect		_VECTOR(4)
/* Timer/Counter2 Overflow */
#define TIMER2_OVF_vect_num		5
#define TIMER2_OVF_vect			_VECTOR(5)
/* Timer/Counter1 Capture Event */
#define TIMER1_CAPT_vect_num	6
#define TIMER1_CAPT_vect		_VECTOR(6)
/* Timer/Counter1 Compare Match A */
#define TIMER1_COMPA_vect_num	7
#define TIMER1_COMPA_vect		_VECTOR(7)
/* Timer/Counter1 Compare Match B */
#define TIMER1_COMPB_vect_num	8
#define TIMER1_COMPB_vect		_VECTOR(8)
/* Timer/Counter1 Overflow */
#define TIMER1_OVF_vect_num		9
#define TIMER1_OVF_vect			_VECTOR(9)
/* Timer/Counter0 Compare Match */
#define TIMER0_COMP_vect_num	10
#define TIMER0_COMP_vect		_VECTOR(10)
/* Timer/Counter0 Overflow */
#define TIMER0_OVF_vect_num		11
#define TIMER0_OVF_vect			_VECTOR(11)
/* Serial Transfer Complete */
#define SPI_STC_vect_num		12
#define SPI_STC_vect			_VECTOR(12)
/* USART, Rx Complete */
#define USART_RXC_vect_num		13
#define USART_RXC_vect			_VECTOR(13)
/* USART Data Register Empty */
#define USART_UDRE_vect_num		14
#define USART_UDRE_vect			_VECTOR(14)
/* USART, Tx Complete */
#define USART_TXC_vect_num		15
#define USART_TXC_vect			_VECTOR(15)
/* ADC Conversion Complete */
#define ADC_vect_num		16
#define ADC_vect			_VECTOR(16)
/* EEPROM Ready */
#define EE_RDY_vect_num		17
#define EE_RDY_vect			_VECTOR(17)
/* Analog Comparator */
#define ANA_COMP_vect_num		18
#define ANA_COMP_vect			_VECTOR(18)
/* 2-wire Serial Interface */
#define TWI_vect_num		19
#define TWI_vect			_VECTOR(19)
/* Store Program Memory Ready */
#define SPM_RDY_vect_num		20
#define SPM_RDY_vect			_VECTOR(20)

#define _VECTORS_SIZE 84
/*
Vector No. | Address | Source |    Interrupt Definition
   2       |   $0002 |   INT0 | External Interrupt Request 0
   3       |   $0004 |   INT1 | External Interrupt Request 1
   4       |   $0006 |   INT2 | External Interrupt Request 2   
*/
    
    //that's an integer zero cast to a pointer type, which means it's the null pointer.
    //It's a standard way to define the null pointer in C (except that (void *)0 is more commonly used),
    //but in C++ it's a null pointer value of a particular type.
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





#endif /* INTERRUPT_H_ */

#if 0
// A simple C program to demonstrate callback
#include<stdio.h>

void A()
{
	printf("I am function A\n");
}

// callback function
void B(void (*ptr)())
{
	(*ptr) (); // callback to A
}

int main()
{
	void (*ptr)() = &A;

	// calling function B and passing
	// address of the function A as argument
	B(ptr);

	return 0;
}



// the output in the above Code is (I am function A )
#endif