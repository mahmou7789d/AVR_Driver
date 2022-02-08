/*
 * AVR32_Chip_Confg.h
 *
 * Created: 12/14/2021 11:18:40 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef AVR32_CHIP_CONFG_H_
#define AVR32_CHIP_CONFG_H_

#include <AVR_32_Registers.h>
#include <STD_Types.h>
#include <Macros_Functions.h>
// Second, indicate the working Frequency of The AVR Chip
#define F_CPU (16000000U)   // the working Frequency of The AVR Chip

#define printlog(msg)	{}    // embty code == no action taken when any error had happened 
#define NULL   ((void *)(0X00))
/* Global interrupt bit Control Define */
#define GLOBAL_INT_ENABLE()	    (SET_BIT  (SREG,I_Bit))
#define GLOBAL_INT_DISABLE()	(CLEAR_BIT(SREG,I_Bit))
#  define ISR(vector, ...)            \
void vector (void) __attribute__ ((signal,__INTR_ATTRS)) __VA_ARGS__; \
void vector (void)
#define __INTR_ATTRS used
#  define ISR_BLOCK      __attribute__((signal))
#  define ISR_NOBLOCK    __attribute__((interrupt))
#  define ISR_NAKED      __attribute__((naked))
#  define ISR_ALIASOF(v) __attribute__((alias(__STRINGIFY(v))))
#  define _VECTOR(N)     __vector_ ## N

#endif /* AVR32_CHIP_CONFG_H_ */