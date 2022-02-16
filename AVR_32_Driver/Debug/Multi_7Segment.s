	.file	"Multi_7Segment.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ISR_CTC_Timer_1,"ax",@progbits
.global	ISR_CTC_Timer_1
	.type	ISR_CTC_Timer_1, @function
ISR_CTC_Timer_1:
.LFB2:
	.file 1 "../APP/Multiplaxing_2SevenSegment/Multi_7Segment.c"
	.loc 1 54 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 55 0
	lds r24,counter_1Sec
	subi r24,lo8(-(1))
	sts counter_1Sec,r24
	.loc 1 56 0
	ldi r24,lo8(1)
	sts counter_10mSec,r24
	ret
	.cfi_endproc
.LFE2:
	.size	ISR_CTC_Timer_1, .-ISR_CTC_Timer_1
	.section	.text.Multi_7_Segment_Init_System,"ax",@progbits
.global	Multi_7_Segment_Init_System
	.type	Multi_7_Segment_Init_System, @function
Multi_7_Segment_Init_System:
.LFB0:
	.loc 1 21 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 22 0
	ldi r18,lo8(80)
	lds r20,counter_app_2
	lds r21,counter_app_2+1
	lds r22,counter_app_2+2
	lds r23,counter_app_2+3
	lds r24,counter_app_2+4
	call TIMER_Init
.LVL0:
	.loc 1 23 0
	ldi r24,lo8(gs(ISR_CTC_Timer_1))
	ldi r25,hi8(gs(ISR_CTC_Timer_1))
	call Timer0_CompareMatch_Callback
.LVL1:
	.loc 1 24 0
	ldi r24,lo8(48)
	ldi r25,0
	call Seven_Seg_Init
.LVL2:
	.loc 1 25 0
	ldi r20,0
	ldi r22,lo8(6)
	ldi r24,lo8(51)
	ldi r25,0
	call GPIO_Pin_Configuration
.LVL3:
	.loc 1 26 0
	ldi r20,0
	ldi r22,lo8(7)
	ldi r24,lo8(51)
	ldi r25,0
	jmp GPIO_Pin_Configuration
.LVL4:
	.cfi_endproc
.LFE0:
	.size	Multi_7_Segment_Init_System, .-Multi_7_Segment_Init_System
	.section	.text.Multi_7_Segment_Control_System,"ax",@progbits
.global	Multi_7_Segment_Control_System
	.type	Multi_7_Segment_Control_System, @function
Multi_7_Segment_Control_System:
.LFB1:
	.loc 1 30 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 31 0
	ldi r20,0
	ldi r22,lo8(7)
	ldi r24,lo8(51)
	ldi r25,0
	call GPIO_Pin_Write
.LVL5:
	.loc 1 32 0
	ldi r20,lo8(1)
	ldi r22,lo8(6)
	ldi r24,lo8(51)
	ldi r25,0
	call GPIO_Pin_Write
.LVL6:
	.loc 1 33 0
	lds r20,Display_Counter
	ldi r24,lo8(-51)
	mul r20,r24
	mov r24,r1
	clr __zero_reg__
	lsr r24
	lsr r24
	lsr r24
	ldi r25,lo8(10)
	mul r24,r25
	sub r20,r0
	clr __zero_reg__
	ldi r22,lo8(1)
	ldi r24,lo8(48)
	ldi r25,0
	call Seven_Seg_Write
.LVL7:
.L5:
	.loc 1 34 0 discriminator 1
	lds r24,counter_10mSec
	tst r24
	breq .L5
	.loc 1 35 0
	sts counter_10mSec,__zero_reg__
	.loc 1 36 0
	ldi r20,0
	ldi r22,lo8(6)
	ldi r24,lo8(51)
	ldi r25,0
	call GPIO_Pin_Write
.LVL8:
	.loc 1 37 0
	ldi r20,lo8(1)
	ldi r22,lo8(7)
	ldi r24,lo8(51)
	ldi r25,0
	call GPIO_Pin_Write
.LVL9:
	.loc 1 38 0
	lds r20,Display_Counter
	ldi r24,lo8(-51)
	mul r20,r24
	mov r20,r1
	clr __zero_reg__
	lsr r20
	lsr r20
	lsr r20
	ldi r22,lo8(1)
	ldi r24,lo8(48)
	ldi r25,0
	call Seven_Seg_Write
.LVL10:
.L7:
	.loc 1 39 0 discriminator 1
	lds r24,counter_10mSec
	tst r24
	breq .L7
	.loc 1 40 0
	sts counter_10mSec,__zero_reg__
	.loc 1 41 0
	lds r24,counter_1Sec
	cpi r24,lo8(101)
	brlo .L3
	.loc 1 43 0
	sts counter_1Sec,__zero_reg__
	.loc 1 44 0
	lds r24,Display_Counter
	subi r24,lo8(-(1))
	sts Display_Counter,r24
	.loc 1 45 0
	lds r24,Display_Counter
	cpi r24,lo8(21)
	brlo .L3
	.loc 1 47 0
	sts Display_Counter,__zero_reg__
.L3:
	ret
	.cfi_endproc
.LFE1:
	.size	Multi_7_Segment_Control_System, .-Multi_7_Segment_Control_System
.global	Display_Counter
	.section	.bss.Display_Counter,"aw",@nobits
	.type	Display_Counter, @object
	.size	Display_Counter, 1
Display_Counter:
	.zero	1
.global	counter_10mSec
	.section	.bss.counter_10mSec,"aw",@nobits
	.type	counter_10mSec, @object
	.size	counter_10mSec, 1
counter_10mSec:
	.zero	1
.global	counter_1Sec
	.section	.bss.counter_1Sec,"aw",@nobits
	.type	counter_1Sec, @object
	.size	counter_1Sec, 1
counter_1Sec:
	.zero	1
.global	counter_app_2
	.section	.data.counter_app_2,"aw",@progbits
	.type	counter_app_2, @object
	.size	counter_app_2, 5
counter_app_2:
	.byte	0
	.byte	1
	.byte	7
	.byte	2
	.zero	1
	.text
.Letext0:
	.file 2 "../Services/AVR_32_Registers.h"
	.file 3 "../Services/STD_Types.h"
	.file 4 "../MCAL/DIO/GPIO.h"
	.file 5 "../HAL/Direct 7-Segment/Direct_7-Segment.h"
	.file 6 "../MCAL/Timer 0,2/Timer0.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x56c
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF83
	.byte	0x1
	.long	.LASF84
	.long	.LASF85
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0xd
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF10
	.uleb128 0x4
	.byte	0x3
	.byte	0x2
	.byte	0x12
	.long	0xb4
	.uleb128 0x5
	.string	"PIN"
	.byte	0x2
	.byte	0x14
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DDR"
	.byte	0x2
	.byte	0x15
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF11
	.byte	0x2
	.byte	0x16
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x29
	.uleb128 0x2
	.long	.LASF13
	.byte	0x2
	.byte	0x17
	.long	0x81
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.long	0xdf
	.uleb128 0x9
	.long	.LASF14
	.sleb128 0
	.uleb128 0x9
	.long	.LASF15
	.sleb128 1
	.uleb128 0x9
	.long	.LASF16
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0x14
	.long	0xc4
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x15
	.long	0xff
	.uleb128 0xa
	.string	"LOW"
	.sleb128 0
	.uleb128 0x9
	.long	.LASF18
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0x18
	.long	0xea
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x19
	.long	0x149
	.uleb128 0x9
	.long	.LASF20
	.sleb128 0
	.uleb128 0x9
	.long	.LASF21
	.sleb128 1
	.uleb128 0x9
	.long	.LASF22
	.sleb128 2
	.uleb128 0x9
	.long	.LASF23
	.sleb128 3
	.uleb128 0x9
	.long	.LASF24
	.sleb128 4
	.uleb128 0x9
	.long	.LASF25
	.sleb128 5
	.uleb128 0x9
	.long	.LASF26
	.sleb128 6
	.uleb128 0x9
	.long	.LASF27
	.sleb128 7
	.uleb128 0x9
	.long	.LASF28
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.long	.LASF29
	.byte	0x4
	.byte	0x23
	.long	0x10a
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x21
	.long	0x169
	.uleb128 0x9
	.long	.LASF30
	.sleb128 0
	.uleb128 0x9
	.long	.LASF31
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF32
	.byte	0x5
	.byte	0x24
	.long	0x154
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0xce
	.long	0x189
	.uleb128 0x9
	.long	.LASF33
	.sleb128 0
	.uleb128 0x9
	.long	.LASF34
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF35
	.byte	0x6
	.byte	0xd1
	.long	0x174
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0xd2
	.long	0x1b5
	.uleb128 0x9
	.long	.LASF36
	.sleb128 0
	.uleb128 0x9
	.long	.LASF37
	.sleb128 1
	.uleb128 0x9
	.long	.LASF38
	.sleb128 2
	.uleb128 0x9
	.long	.LASF39
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x6
	.byte	0xd7
	.long	0x194
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0xd9
	.long	0x20b
	.uleb128 0x9
	.long	.LASF41
	.sleb128 0
	.uleb128 0x9
	.long	.LASF42
	.sleb128 1
	.uleb128 0x9
	.long	.LASF43
	.sleb128 2
	.uleb128 0x9
	.long	.LASF44
	.sleb128 3
	.uleb128 0x9
	.long	.LASF45
	.sleb128 4
	.uleb128 0x9
	.long	.LASF46
	.sleb128 5
	.uleb128 0x9
	.long	.LASF47
	.sleb128 6
	.uleb128 0x9
	.long	.LASF48
	.sleb128 7
	.uleb128 0x9
	.long	.LASF49
	.sleb128 8
	.uleb128 0x9
	.long	.LASF50
	.sleb128 9
	.uleb128 0x9
	.long	.LASF51
	.sleb128 10
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0xe5
	.long	0x1c0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0xe8
	.long	0x231
	.uleb128 0x9
	.long	.LASF53
	.sleb128 0
	.uleb128 0x9
	.long	.LASF54
	.sleb128 1
	.uleb128 0x9
	.long	.LASF55
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x6
	.byte	0xec
	.long	0x216
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0xef
	.long	0x275
	.uleb128 0x9
	.long	.LASF57
	.sleb128 0
	.uleb128 0x9
	.long	.LASF58
	.sleb128 1
	.uleb128 0x9
	.long	.LASF59
	.sleb128 2
	.uleb128 0x9
	.long	.LASF60
	.sleb128 3
	.uleb128 0x9
	.long	.LASF61
	.sleb128 4
	.uleb128 0x9
	.long	.LASF62
	.sleb128 5
	.uleb128 0x9
	.long	.LASF63
	.sleb128 6
	.uleb128 0x9
	.long	.LASF64
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x6
	.byte	0xf8
	.long	0x23c
	.uleb128 0xb
	.byte	0x5
	.byte	0x6
	.word	0x100
	.long	0x2d5
	.uleb128 0xc
	.long	.LASF66
	.byte	0x6
	.word	0x102
	.long	0x189
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF67
	.byte	0x6
	.word	0x103
	.long	0x1b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.long	.LASF68
	.byte	0x6
	.word	0x104
	.long	0x20b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF69
	.byte	0x6
	.word	0x105
	.long	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xc
	.long	.LASF70
	.byte	0x6
	.word	0x106
	.long	0x275
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xd
	.long	.LASF71
	.byte	0x6
	.word	0x107
	.long	0x280
	.uleb128 0xe
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.byte	0x14
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x39d
	.uleb128 0x10
	.long	.LVL0
	.long	0x4c8
	.long	0x324
	.uleb128 0x11
	.byte	0x1
	.byte	0x62
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.long	.LVL1
	.long	0x4e2
	.long	0x340
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ISR_CTC_Timer_1
	.byte	0
	.uleb128 0x10
	.long	.LVL2
	.long	0x4ff
	.long	0x359
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LVL3
	.long	0x519
	.long	0x37c
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x36
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.long	.LVL4
	.byte	0x1
	.long	0x519
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x37
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.byte	0x1d
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x47b
	.uleb128 0x10
	.long	.LVL5
	.long	0x537
	.long	0x3d9
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x37
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LVL6
	.long	0x537
	.long	0x3fc
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x36
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x10
	.long	.LVL7
	.long	0x555
	.long	0x41a
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x10
	.long	.LVL8
	.long	0x537
	.long	0x43d
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x36
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LVL9
	.long	0x537
	.long	0x460
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x37
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.long	.LVL10
	.long	0x555
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF74
	.byte	0x1
	.byte	0xf
	.long	0x2d5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	counter_app_2
	.uleb128 0x14
	.long	.LASF75
	.byte	0x1
	.byte	0x10
	.long	0xb4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	counter_1Sec
	.uleb128 0x14
	.long	.LASF76
	.byte	0x1
	.byte	0x11
	.long	0xb4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	counter_10mSec
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.byte	0x12
	.long	0x4c3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Display_Counter
	.uleb128 0x7
	.long	0x3b
	.uleb128 0x15
	.byte	0x1
	.long	.LASF78
	.byte	0x6
	.word	0x109
	.byte	0x1
	.byte	0x1
	.long	0x4e2
	.uleb128 0x16
	.long	0x2d5
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF79
	.byte	0x6
	.word	0x10b
	.byte	0x1
	.byte	0x1
	.long	0x4f7
	.uleb128 0x16
	.long	0x4f7
	.byte	0
	.uleb128 0x17
	.byte	0x2
	.long	0x4fd
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.long	.LASF80
	.byte	0x5
	.byte	0x25
	.byte	0x1
	.byte	0x1
	.long	0x513
	.uleb128 0x16
	.long	0x513
	.byte	0
	.uleb128 0x17
	.byte	0x2
	.long	0xb9
	.uleb128 0x19
	.byte	0x1
	.long	.LASF81
	.byte	0x4
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.long	0x537
	.uleb128 0x16
	.long	0x513
	.uleb128 0x16
	.long	0x149
	.uleb128 0x16
	.long	0xdf
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF82
	.byte	0x4
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.long	0x555
	.uleb128 0x16
	.long	0x513
	.uleb128 0x16
	.long	0x149
	.uleb128 0x16
	.long	0xff
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF87
	.byte	0x5
	.byte	0x26
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.long	0x513
	.uleb128 0x16
	.long	0x169
	.uleb128 0x16
	.long	0x3b
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB2
	.long	.LFE2
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"INPUT_Pullup"
.LASF52:
	.string	"Timer_CLK_Source_selection"
.LASF17:
	.string	"GPIO_pin_Type"
.LASF75:
	.string	"counter_1Sec"
.LASF50:
	.string	"External_Clock_Rising_edge"
.LASF79:
	.string	"Timer0_CompareMatch_Callback"
.LASF48:
	.string	"Clk_1024"
.LASF76:
	.string	"counter_10mSec"
.LASF6:
	.string	"short int"
.LASF18:
	.string	"HIGH"
.LASF37:
	.string	"CTC_mode"
.LASF62:
	.string	"inverting_mode"
.LASF39:
	.string	"FastPWM_mode"
.LASF32:
	.string	"Seven_Segment_Type"
.LASF64:
	.string	"Set_upCount_Clear_DownCount"
.LASF28:
	.string	"ADC_Diff_Mode"
.LASF49:
	.string	"External_Clock_falling_edge"
.LASF33:
	.string	"Timer0"
.LASF34:
	.string	"Timer2"
.LASF85:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\Downloads\\\\My-Github\\\\AVR_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF61:
	.string	"NON_inverting_mode"
.LASF87:
	.string	"Seven_Seg_Write"
.LASF44:
	.string	"CLK_32"
.LASF84:
	.string	"../APP/Multiplaxing_2SevenSegment/Multi_7Segment.c"
.LASF60:
	.string	"OC_SetOn_Compare_match"
.LASF9:
	.string	"float"
.LASF13:
	.string	"GPIO_Register"
.LASF81:
	.string	"GPIO_Pin_Configuration"
.LASF8:
	.string	"long long int"
.LASF47:
	.string	"Clk_256"
.LASF7:
	.string	"long int"
.LASF58:
	.string	"OC_Toggle"
.LASF19:
	.string	"Digital_pinState"
.LASF78:
	.string	"TIMER_Init"
.LASF36:
	.string	"Normal_mode"
.LASF71:
	.string	"TIMER_DataType"
.LASF66:
	.string	"Timer_Number"
.LASF77:
	.string	"Display_Counter"
.LASF11:
	.string	"PORT"
.LASF1:
	.string	"unsigned char"
.LASF83:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF12:
	.string	"uint_8"
.LASF5:
	.string	"signed char"
.LASF35:
	.string	"Timer_Number_Selection"
.LASF4:
	.string	"long long unsigned int"
.LASF67:
	.string	"Timer_mode"
.LASF57:
	.string	"OC_Disconnected"
.LASF55:
	.string	"Timer_OutPut_Compare_match"
.LASF40:
	.string	"Timer_mode_selection"
.LASF45:
	.string	"Clk_64"
.LASF68:
	.string	"Timer_CLK"
.LASF73:
	.string	"Multi_7_Segment_Control_System"
.LASF2:
	.string	"short unsigned int"
.LASF14:
	.string	"OUTPUT"
.LASF65:
	.string	"OC_behavior"
.LASF0:
	.string	"char"
.LASF46:
	.string	"CLK_128"
.LASF72:
	.string	"Multi_7_Segment_Init_System"
.LASF15:
	.string	"INPUT_Float"
.LASF53:
	.string	"Timer_No_Interrupt"
.LASF43:
	.string	"Clk_8"
.LASF51:
	.string	"Timer2_OneSec_CLK"
.LASF3:
	.string	"long unsigned int"
.LASF10:
	.string	"double"
.LASF41:
	.string	"No_Clock_source"
.LASF59:
	.string	"OC_ClearOn_Compare_match"
.LASF30:
	.string	"Common_Anode"
.LASF56:
	.string	"Timer_Interrupt_Source"
.LASF63:
	.string	"Clear_upCount_Set_DownCount"
.LASF54:
	.string	"Timer_Overflow_Interrupt"
.LASF82:
	.string	"GPIO_Pin_Write"
.LASF42:
	.string	"No_Prescaling"
.LASF69:
	.string	"Timer_INT_source"
.LASF70:
	.string	"OC_Pin_State"
.LASF86:
	.string	"ISR_CTC_Timer_1"
.LASF31:
	.string	"Common_Cathode"
.LASF80:
	.string	"Seven_Seg_Init"
.LASF74:
	.string	"counter_app_2"
.LASF29:
	.string	"GPIO_pin_number"
.LASF38:
	.string	"PhaseCorrectPWM_mode"
.LASF20:
	.string	"PIN0"
.LASF21:
	.string	"PIN1"
.LASF22:
	.string	"PIN2"
.LASF23:
	.string	"PIN3"
.LASF24:
	.string	"PIN4"
.LASF25:
	.string	"PIN5"
.LASF26:
	.string	"PIN6"
.LASF27:
	.string	"PIN7"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
