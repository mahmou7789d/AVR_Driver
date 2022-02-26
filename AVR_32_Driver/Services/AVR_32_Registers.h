/*
 * AVR_32_Registers.h
 *
 * Created: 12/14/2021 5:58:17 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef AVR_32_REGISTERS_H_
#define AVR_32_REGISTERS_H_



#include <STD_Types.h>

//without the inclusion of this library we will face the error named (expected ':', ',', ';', '}' or '__attribute__' before 'PIN')

typedef struct   // struct has a Variable from GPIO_Register data type , its size = 3 bytes
{
	volatile  uint_8 PIN;  // the first  byte address in the struct
	volatile  uint_8 DDR;  // the Second byte address in the struct
	volatile  uint_8 PORT; // the Third  byte address in the struct
}GPIO_Register;
/******************GPIO registers***********************/
// the following Data We can get it from Register Summary section in data sheet
//$17 ($37) DDRB   the address for the register DDRB
//$17 is the IO Mapped Register Address
//$37 is the Memory Mapped Register Address    

#define IO_MAPPING_OFFSET	(0x20)
// the Constant Difference between Memory Mapped Register Address  and  IO Mapped Register Address
//IO_MAPPING_OFFSET = Memory Mapped Register Address -  IO Mapped Register Address

#define GPIOA_IO_ADDRESS	(0x19)
//IO Mapped Register Address for PINA the starting Register of Port A
//IO Mapped Register Address for PINA   (0x19)
//IO Mapped Register Address for DDRA   (0x20)
//IO Mapped Register Address for PORTA  (0x1B)
#define GPIOB_IO_ADDRESS	(0x16)
//IO Mapped Register Address for PINB the starting Register of Port B
//IO Mapped Register Address for PINB   (0x16)
//IO Mapped Register Address for DDRB   (0x17)
//IO Mapped Register Address for PORTB  (0x18)
#define GPIOC_IO_ADDRESS	(0x13)
//IO Mapped Register Address for PINC the starting Register of Port C
//IO Mapped Register Address for PINC   (0x13)
//IO Mapped Register Address for DDRC   (0x14)
//IO Mapped Register Address for PORTC  (0x15)
#define GPIOD_IO_ADDRESS	(0x10)
//IO Mapped Register Address for PIND the starting Register of Port D
//IO Mapped Register Address for PIND   (0x10)
//IO Mapped Register Address for DDRD   (0x11)
//IO Mapped Register Address for PORTD  (0x12)
//Memory Mapped Register Address is address we must used it in C Coding but IO Mapped Register Address is only using for assembly Coding
#define Port_A		((GPIO_Register *) (GPIOA_IO_ADDRESS+IO_MAPPING_OFFSET))
#define Port_B		((GPIO_Register *) (GPIOB_IO_ADDRESS+IO_MAPPING_OFFSET))
#define Port_C		((GPIO_Register *) (GPIOC_IO_ADDRESS+IO_MAPPING_OFFSET))
#define Port_D		((GPIO_Register *) (GPIOD_IO_ADDRESS+IO_MAPPING_OFFSET))


/******************************************************************************************* The Interrupt Register and Pins Address *************************************************************************************************************************************************/

/* the MCU control Register */
#define MCUCR_ADDRESS   (0x35)

/* The MCU control and Statues Register */
#define MCUCSR_ADDRESS  (0x34)

/* General Interrupt Control Register */
#define GICR_ADDRESS    (0x3B)

/*General Interrupt flag Register */
#define GIFR_ADDRESS    (0x3A)
/* Statues Register */
#define SREG_ADDRESS    (0x3F)

/* Define The Value Of Address Of The MCUCR, NCUCSR, GICR, GIFR In C (The Mapped Address In RAM) */
#define  MCUCR      (*(volatile  uint_8 *)(MCUCR_ADDRESS + IO_MAPPING_OFFSET))
/*
used to Configure the type of Interrupt form Setting or Clearing the bit of interrupts in MCUCR Register
 CLEAR_Bit(MCUCR,ISC00);
 CLEAR_Bit(MCUCR,ISC01);
in the two above lines we make the interrupt 0 types low level used this register in Interrupt initalization function
*/
/* bits of The MCUCR register to Control INT0, INT1 */
#define ISC00_Bit		(0)
#define ISC01_Bit		(1)
#define ISC10_Bit		(2)
#define ISC11_Bit		(3)
#define SM0_Bit                 (4)
#define SM1_Bit         (5)
#define SM2_Bit         (6)
#define SE_Bit          (7)
#define MCUCSR     (*(volatile uint_8 *)(MCUCSR_ADDRESS + IO_MAPPING_OFFSET))
/*
used to Configure the type of Interrupt form Setting or Clearing the bit of interrupts in MCUCSR Register
SET_BIT(MCUCSR,ISC2);
in the two above lines we make the interrupt 2 types High level used this register in Interrupt initalization function
*/
/* bits of The MCUCSR register to Control INT2 */
#define PORF_Bit		(0)
#define EXTRF_Bit		(1)
#define BORF_Bit		(2)
#define WDRF_Bit		(3)
#define JTRF_Bit        (4)
#define ISC2_Bit        (6)
#define JTD_Bit         (7)
/* General Interrupt Control Register*/
#define GICR       (*(volatile uint_8 *)(GICR_ADDRESS   + IO_MAPPING_OFFSET))
/*
used to Enable The Interrupt
used this register in Interrupt initalization function
*/
/* bits of The GICR register to Enable interrupt With aiding of I_Bit in SREG Register */
#define IVCE_Bit		(0)
#define IVSEL_Bit		(1)
#define INT2_Bit        (5)
#define INT1_Bit        (6)
#define INT0_Bit        (7)
/*General Interrupt Flag Register*/
#define GIFR       (*(volatile uint_8 *)(GIFR_ADDRESS   + IO_MAPPING_OFFSET))
#define INTF2_Bit        (5)
#define INTF1_Bit        (6)
#define INTF0_Bit        (7)
#define SREG       (*(volatile uint_8 *)(SREG_ADDRESS   + IO_MAPPING_OFFSET))
#define I_Bit   (7)


/**************************************************** SPI In THe AVR *************************************************************/
#define  TWAR_ADDRESS   (0x02)
#define  TWBR_ADDRESS   (0x00)
#define  TWCR_ADDRESS   (0x36)
#define  TWDR_ADDRESS   (0x03)
#define  TWSR_ADDRESS   (0x01)


/*I2c Control Register*/
#define   TWAR      (*(volatile uint_8 *)(TWAR_ADDRESS+IO_MAPPING_OFFSET))
#define   TWGCE_bit (0)
#define   TWBR      (*(volatile uint_8 *)(TWBR_ADDRESS+IO_MAPPING_OFFSET))
#define   TWCR      (*(volatile uint_8 *)(TWCR_ADDRESS+IO_MAPPING_OFFSET))
#define   TWIE_bit  (0)
#define   TWEN_bit  (2)
#define   TWWC_bit  (3)
#define   TWSTO_bit (4)
#define   TWSTA_bit (5)
#define   TWEA_bit  (6)
#define   TWINT_bit (7)
#define   TWDR      (*(volatile uint_8 *)(TWDR_ADDRESS+IO_MAPPING_OFFSET))
#define   TWSR      (*(volatile uint_8 *)(TWSR_ADDRESS+IO_MAPPING_OFFSET))
#define   TWPS0_bit (0)
#define   TWPS1_bit (1)

/**************************************************** SPI In THe AVR *************************************************************/
#define  SPDR_ADDRESS   (0x0F)
#define  SPSR_ADDRESS   (0x0E)
#define  SPCR_ADDRESS   (0X0D)

/*SPI Control Register*/
#define  SPDR     (*(volatile uint_8 *)(SPDR_ADDRESS + IO_MAPPING_OFFSET))
/*This bit causes the SPI interrupt to be executed*/
#define  SPIE_bit (7)               //SPI Interrupt Enable
/*This bit must be set to enable any SPI operations*/
#define  SPE_bit  (6)               //SPI Enable
/*This bit select which data word is transmitted first (LSB-MSB)*/
#define  DORD_bit (5)               //Data Order
/*This bit selects Master SPI mode when written to one*/
#define  MSTR_bit (4)               //Master/Slave Select
/*When this bit is written to one, SCK is high when idle*/
#define  CPOL_bit (3)               //Clock Polarity
#define  CPHA_bit (2)               //Clock Phase
/*These two bits control the SCK rate of the device configured as a Master. SPR1 and SPR0 have no effect on the Slave.*/
#define  SPR1_bit (1)               //SPI Clock Rate Select 1
#define  SPR0_bit (0)               //SPI Clock Rate Select 0
/**/
#define  SPSR      (*(volatile uint_8 *)(SPSR_ADDRESS + IO_MAPPING_OFFSET))
#define  SPIF_bit  (7)
#define  WCOL_bit  (6)
#define  SPI2X_bit (0)
#define  SPCR      (*(volatile uint_8 *)(SPCR_ADDRESS + IO_MAPPING_OFFSET))
#define  MSB_bit   (7)
#define  LSB_bit   (7)

/**************************************************** USART In THe AVR ***********************************************************/
#define UCSRA_ADDRESS   (0x0B)
#define UCSRB_ADDRESS   (0x0A)
#define UCSRC_ADDRESS   (0x20)
#define UBRRH_ADDRESS   (0x20)
#define UBRRL_ADDRESS   (0x09)
#define UDR_ADDRESS     (0x0C)
/* Define The Value Of Address Of The UCSRA, UCSRB, UCSRC, UBRRH, UBRRL, UDR In C (The Mapped Address In RAM) */
#define UCSRA    (*(volatile uint8 *)(UCSRA_ADDRESS + IO_MAPPING_OFFSET))
#define RXC      (7)
#define TXC      (6)
#define UDRE     (5)
/* Errors Flag FE for indicate the stop bit error
 * DOR data over right 
 * PE parity check detection 
 */ 
#define FE     (4)
#define DOR    (3)
#define PE     (2)
/* to double USART transmission speed */
#define U2X    (1)
/* Enable the multi processor communication */
#define MPCM   (0)
#define UCSRB    (*(volatile uint8 *)(UCSRB_ADDRESS + IO_MAPPING_OFFSET))
#define RXCIE  (7)
/* Enable interrupt  */
#define TXCIE  (6)
#define UDRIE  (5)
#define RXEN   (4)
#define TXEN   (3)
/* combined with UCSZ 1:0 to set the number of the data bit */
#define UCSZ2  (2)
/* ninth bit place at transmission or receiver */
#define RXB8   (1)
#define TXB8   (0)
#define UCSRC    (*(volatile uint8 *)(UCSRC_ADDRESS + IO_MAPPING_OFFSET))
/* this bit select between access UCSRC and UBRRH register if it set reading UCSRC */
#define URSEL  (7)
/* UART mode select between synch or Asynch */
#define UMSEL  (6)
/* this bit Withe UPM0 select the parity mode */
#define UPM1   (5)
#define UPM0   (4)
/* select the number of the stop bit 1 or 2 */
#define USBS   (3)
#define UCSZ1  (2)
#define UCSZ0  (1)
/* define clock Polarity */
#define UCPOL  (0)

#define UBRRH    (*(volatile uint8 *)(UBRRH_ADDRESS + IO_MAPPING_OFFSET))
#define UBRRL    (*(volatile uint8 *)(UBRRL_ADDRESS + IO_MAPPING_OFFSET))
#define UDR      (*(volatile uint8 *)(UDR_ADDRESS   + IO_MAPPING_OFFSET))

/************************************************** Internal EEPROM Register ********************************************/

#define EEARH_ADDRESS         (0x1F)
#define EEARL_ADDRESS         (0x1E)
#define EEDR_ADDRESS          (0x1D)
#define EECR_ADDRESS          (0x1C)

/* The address of the EEPROM address register High bit it contain only bit 9/10 */
#define EEARH        (*(volatile uint_8 *) (EEARH_ADDRESS + IO_MAPPING_OFFSET))
/* The address of the EEPROM address register Low bit it contain bits from 0-7 */
#define EEARL        (*(volatile uint_8 *) (EEARL_ADDRESS + IO_MAPPING_OFFSET))
/* hold the 10 bits of the address */
#define EEAR        (*(volatile uint_16 *) (EEARL_ADDRESS + IO_MAPPING_OFFSET))
/* The address of the EEPROM Control register */
#define EECR         (*(volatile uint_8 *) (EECR_ADDRESS + IO_MAPPING_OFFSET))

/* the Control Register Bits */
#define EERE_Bit   (0) /* EEPROM Read Enable Bit */
#define EEWE_Bit   (1) /* EEPROM Write Enable Bit */
#define EEMWE_Bit  (2) /* EEPROM Master Write Enable bit */
#define EERIE_Bit  (3) /*Ready Interrupt Enable */
/* the Other Bit is Reserved */

/*The address of the EEPROM Data register */
#define EEDR         (*(volatile uint8 *) (EEDR_ADDRESS + IO_MAPPING_OFFSET))

/************************************************************************************************ Timers Registers ***************************************************************************************************/

/* The Address of The Timer 0 Register */
#define TCCR0_ADDRESS  (0x33)
#define TCNT0_ADDRESS  (0x32)
/*Output Compare Register */
#define OCR0_ADDRESS   (0x3C)
//The Output Compare Register contains an 8-bit value
//that is continuously compared with the counter value (TCNT0).
//A match can be used to generate an output compare interrupt
//or to generate a waveform output on the OC0 pin

/* general Registers Use With The Timers 0,1,2 */
#define TIFR_ADDRESS   (0x38)
/* Timer Interrupt Mask Register control the interrupt enable */
#define TIMASK_ADDRESS (0x39)
/*
* in Timer 0 we need the bit 0 , 1
* Bit 0 : TOIE 0 : Timer/Counter0 Overflow Interrupt Enable
*        When the TOIE0 bit is written to one, and the I-bit in the Status Register is set (one),
*        the Timer/Counter0 Overflow interrupt is enabled.which is executed if an overflow in Timer/Counter0
*        occurs, that is, when the TOV0 bit is set in the Timer/Counter Interrupt Flag Register  TIFR.
*        Bit 1 : OCIE 0 : Timer/Counter0 Output Compare Match Interrupt Enable
*        When the OCIE0 bit is written to one, and the I-bit in the Status Register is set (one),
*        the Timer/Counter0 Compare Match interrupt is enabled.which is executed if a compare match in Timer/Counter0
*        occurs,that is, when the OCF0 bit is set in the Timer/Counter Interrupt Flag Register  TIFR
* */

/* Counter Register For The Timer 0 */
#define TCNT0   (*(volatile uint_8 *)(TCNT0_ADDRESS + IO_MAPPING_OFFSET))
/* Timer Counter Control Register in Timer 0 */
#define TCCR0   (*(volatile uint_8 *)(TCCR0_ADDRESS + IO_MAPPING_OFFSET))

/* Timer Interrupt Flag Register */
#define TIFR    (*(volatile uint_8 *)(TIFR_ADDRESS  + IO_MAPPING_OFFSET))
/* Timer Interrupt Mask Register control the interrupt*/
#define TIMSK     (*(volatile uint_8 *)(TIMASK_ADDRESS + IO_MAPPING_OFFSET))
/* Output Compare Register */
#define OCR0      (*(volatile uint_8 *)(OCR0_ADDRESS + IO_MAPPING_OFFSET))
//The Output Compare Register contains an 8-bit value that is continuously compared with the counter value (TCNT0)
/* TCCR0 Bit */
#define CS00_bit    (0)
#define CS01_bit    (1)
#define CS02_bit    (2)
#define WGM01_bit   (3)
#define COM00_bit   (4)
#define COM01_bit   (5)
#define WGM00_bit   (6)
#define FOC0_bit    (7)

/* TIFR Bit */
#define TOV0_bit  (0)
#define OCF0_bit  (1)
#define TOV1_bit  (2)
#define OCF1B_bit (3)
#define OCF1A_bit (4)
#define ICF1_bit  (5)
#define TOV2_bit  (6)
#define OCF2_bit  (7)

/* TIMASK Bit */
//Timer/Counter0 Overflow Interrupt Enable with the help of I-bit in SREG Register
// setting (TOIE0_bit) in TIMASK Register + setting (I-bit) in SREG Register  == enabling the timer overflow interrupt
#define TOIE0_bit   (0)
//Timer/Counter0 Output Compare Match Interrupt Enable with the help of I-bit in SREG Register
// setting (OCIE0_bit) in TIMASK Register + setting (I-bit) in SREG Register  == enabling the timer Output Compare Match interrupt
#define OCIE0_bit   (1)
#define TOIE1_bit   (2)
#define OCIE1B_bit  (3)
#define OCIE1A_bit  (4)
#define TICIE1_bit  (5)
#define TOIE2_bit   (6)
#define OCIE2_bit   (7)

/* The Address of The Timer 2 Register */
#define TCCR2_ADDRESS (0x25)
#define TCNT2_ADDRESS (0x24)
#define OCR2_ADDRESS  (0x23)

/* Timer Counter Control Register in Timer 0 */
#define TCCR2 (*(volatile uint8 *) (TCCR2_ADDRESS + IO_MAPPING_OFFSET))

/* TCCR0 Bit */
#define CS20_bit    (0)
#define CS21_bit    (1)
#define CS22_bit     (2)
#define WGM21_bit    (3)
#define COM20_bit    (4)
#define COM21_bit    (5)
#define WGM20_bit    (6)
#define FOC2_bit     (7)

/* Counter Register For The Timer 2 */
#define TCNT2   (*(volatile uint8 *)(TCNT2_ADDRESS + IO_MAPPING_OFFSET))
/* Output Compare Register */
#define OCR2    (*(volatile uint8 *)(OCR2_ADDRESS +IO_MAPPING_OFFSET))

/* The Asynchronous Statues Register ASSR */
#define ASSR_ADRESS (0x22)
#define ASSR (*(volatile uint8 *)(ASSR_ADRESS + IO_MAPPING_OFFSET))
   
/* ASSR Bits*/
#define TCR2UB_bit  (0)
#define OCR2UB_bit  (1)
#define TCN2UB_bit  (3)
#define AS2_bit     (4)

/******************************************************************************* ADC in The ATmega32 ************************************************************************/

/* The address of the ADC 4 register */
#define ADCMUX_ADDRESS   (0x07)
#define ADCSRA_ADDRESS   (0x06)
#define ADCL_ADDRESS     (0x04)
#define ADCH_ADDRESS     (0x05)
#define SFIOR_ADDRESS    (0x30)

#define SFIOR (*(volatile uint_8 *)(SFIOR_ADDRESS+IO_MAPPING_OFFSET))

#define PSR10   (0)
#define PSR2    (1)
#define PUD     (2)
#define ACME    (3)
#define ADTS0   (5)
#define ADTS1   (6)
#define ADTS2   (7)
/* the mapping address of the 4 register */
/* Is The Register Of The Bit Selection From The PORT A pin It for Multiplexer 32 so It Have 5 Bit Control */
#define ADCMUX     (*(volatile uint_8 *)(ADCMUX_ADDRESS + IO_MAPPING_OFFSET))

/* ADCMUX bit */
#define MUX0   (0)
#define MUX1   (1)
#define MUX2   (2)
#define MUX3   (3)
#define MUX4   (4)
#define ADLAR  (5)
#define REFS0   (6)
#define REFS1   (7)
/* It is ADS Control And Statues Register */
#define ADCSRA     (*(volatile uint_8 *)(ADCSRA_ADDRESS + IO_MAPPING_OFFSET))

/* ADCSRA bit */
#define ADPS0   (0)
#define ADPS1   (1)
#define ADPS2   (2)
#define ADIE    (3)
#define ADIF    (4)
#define ADATE   (5)
#define ADSC    (6)
#define ADEN    (7)
/* it the 8 bit data register that hold from ADC0 - ADC7 */
#define ADCL       (*(volatile uint_8 *)(ADCL_ADDRESS + IO_MAPPING_OFFSET))
/* it storing 2 bit ADC8, ADC9 */
#define ADCH     (*(volatile uint_8 *)(ADCH_ADDRESS + IO_MAPPING_OFFSET))

#endif /* AVR_32_REGISTERS_H_ */
