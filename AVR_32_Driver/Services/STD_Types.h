/*
 * STD_Types.h
 *
 * Created: 12/14/2021 5:57:53 AM
 *  Author: Mahm Oud Sa Ad
 */ 

// Guard file : is technique to make sure that this file.h isn't included more than one time in the same space  ----> #ifndef STD_TYPES_H_
#ifndef STD_TYPES_H_
#define STD_TYPES_H_

// unsigned integer Data Types
typedef  char        uint_8;
typedef unsigned char        uint8;
typedef unsigned short       uint_16;
typedef unsigned long int    uint_32;
typedef unsigned long long   uint_64;
// signed integer Data Types
typedef signed char	      int_8;
typedef signed short	  int_16;
typedef signed long int   int_32;
typedef signed long long  int_64;
// Float Data Types
typedef float  float_32;
typedef double float_64;
// Boolen Data Types
typedef enum
{
	false,
	true,
}bool;

// Error types which used in ErrorIndication Function in any Default Case in Switch
typedef enum
{
	InvalidArgument,    //in any configuration to Pins or Ports
	OverFlow            //in any configuration to LEDs For Examble
}ErrorType;


//*************** disussion of the code ************************//
/*
---> Why we use typedef for Text replacement instead of #define ?
typedef unsigned char        uint_8;   

VS
    
#define unsigned char        uint_8

- typedef is limited to giving symbolic names to types only, whereas #define can be used to define an alias for values as well, e.g., you can define 1 as ONE, 3.14 as PI, etc.
- typedef interpretation is performed by the compiler where #define statements are performed by preprocessor.
- typedef is compiled within the compilation process so don't affect on the run time like #define 
- #define will just copy-paste the definition values at the point of use, while typedef is the actual definition of a new type.
- typedef follows the scope rule which means if a new type is defined in a scope (inside a function), then the new type name will only be visible till the scope is there. 
  In case of #define, when preprocessor encounters #define, it replaces all the occurrences, after that (No scope rule is followed). 

--------------------------------------------------------------------------
---> Why we use enum for Text replacement instead of #define ?  

typedef enum
{
	false,
	true
}bool; 

VS 

#define False 0

- typedef is compiled within the compilation process so don't affect on the run time like #define
- enum is more readable with related values 
  
*/



#endif /* STD_TYPES_H_ */