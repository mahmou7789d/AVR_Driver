/*
 * Macros_Functions.h
 *
 * Created: 12/14/2021 11:26:27 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef MACROS_FUNCTIONS_H_
#define MACROS_FUNCTIONS_H_

/*
Bit masking is simply the process of storing data truly as bits, as opposed to storing it as chars/ints/floats. It is incredibly useful for storing certain types of data compactly and efficiently.

The idea for bit masking is based on boolean logic. For those not familiar, boolean logic is the manipulation of 'true' (1) and 'false' (0) through logical operations (that take 0s and 1s as their argument). We are concerned with the following operations:

NOT a - the final value is the opposite of the input value (1 -> 0, 0 -> 1)
a AND b - if both values are 1, the final value is 1, otherwise the final value is 0
a OR b - if either value is 1, the final value is 1, otherwise the final value is 0
a XOR b - if one value is 1 and the other value is 0, the final value is 1, otherwise the final value is 0
*/

//This macro used to set a specific bit in a register
#define SET_BIT(Reg , bit)	(Reg |= (1<<bit))
/*
For  Ex
case High:                         // we always used it when we need to get High single from output pin
SET_BIT(Cport->PORT,pin_no);       //that mean : enter the The PORT Register of Port A to particular pin
break;
*/
/***************************************************************************/
//This macro used to clear a specific bit in a register
#define CLEAR_BIT(Reg , bit)	(Reg &= ~(1<<bit))
/*
For Ex
case Low:                          // we always used it when we need to get low single from output pin
CLEAR_BIT(Cport->PORT,pin_no);     //that mean : enter the The PORT Register of Port A to particular pin
break;
*/
//---------------------------------------------------------------
// we can use the Two  previous Two Macros for Pin Configuration
/*
case InputFloat:                   // Input Pin configuration  and Pull up- Resistor is disabled
CLEAR_BIT(Cport->DDR,pin_no);      // DDR  - Register = 0
CLEAR_BIT(Cport->PORT,pin_no);     // PORT - Register = 0
break;

case InputPullup:                  // Input Pin configuration  and Pull up- Resistor is enabled
CLEAR_BIT(Cport->DDR,pin_no);      // DDR  - Register = 0
SET_BIT(Cport->PORT,pin_no);       // PORT - Register = 1
break;

case Output:                       // output Pin configuration
SET_BIT(Cport->DDR,pin_no);        // DDR  - Register = 1
CLEAR_BIT(Cport->PORT,pin_no);     // PORT - Register = 0
break;
*/
//----------------------------------------------------------------
/***************************************************************************/
//This macro used to toggle a specific bit in a register
#define TOGGLE_BIT(Reg , bit)	(Reg ^= (1<<bit))



/***************************************************************************/
//This macro used to read a specific bit from a register
//It returns 1 if bit is 1 AND returns 0 if bit is 0
#define READ_BIT(Reg,bit)	( ((Reg) & (1<<(bit)) ) >> (bit))
/*
xxxx xxxx
&
0000 1000
---------
0000 x000 >> 3 = 0000 000x  (this is the needed State )
any operation must be put in () for avoiding the priority for action of another action
shifting had the Priority of the AND and the AND operation must perform first to Complete the operation correctly
*/
//#define READ_BIT(Reg , bit)	((Reg & (1<<bit))?1:0)
//For Ex
//return READ_BIT(Cport->PIN,pin_no);



#endif /* MACROS_FUNCTIONS_H_ */