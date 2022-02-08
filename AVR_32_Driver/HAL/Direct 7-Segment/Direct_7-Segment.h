/*
 * Direct_7_Segment.h
 *
 * Created: 12/19/2021 7:26:41 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef DIRECT_7_SEGMENT_H_
#define DIRECT_7_SEGMENT_H_

#include <GPIO.h>
typedef enum
{
	Zero  = 0x3f,
	One   = 0x06,
	Two   = 0x5b,
	Three = 0x4f,
	Four  = 0x66,
	Five  = 0x6d,
	Six   = 0x7d,
	Seven = 0x47,
	Eight = 0x7f,
	Nine  = 0x6f,
	A     = 0x77,
	B     = 0x7c,
	C     = 0x39,
	D     = 0x5e,
	E     = 0x79,
	F     = 0x71,
}Numbers;
typedef enum
{
	Common_Anode,
	Common_Cathode,
}Seven_Segment_Type;
void Seven_Seg_Init(GPIO_Register *_7_Segment_port);
void Seven_Seg_Write(GPIO_Register *_7_Segment_port,Seven_Segment_Type Type,unsigned char Written_Number);


#endif /* DIRECT_7-SEGMENT_H_ */