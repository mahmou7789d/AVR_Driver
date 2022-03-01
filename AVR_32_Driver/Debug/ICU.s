	.file	"ICU.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ICU_Init_System,"ax",@progbits
.global	ICU_Init_System
	.type	ICU_Init_System, @function
ICU_Init_System:
.LFB0:
	.file 1 "../APP/Timer_APP/ICU_Timer1/ICU.c"
	.loc 1 15 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 16 0
	jmp LCD_Init
.LVL0:
	.cfi_endproc
.LFE0:
	.size	ICU_Init_System, .-ICU_Init_System
.global	__floatunsisf
.global	__divsf3
.global	__mulsf3
.global	__fixunssfsi
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"duty:"
.LC1:
	.string	"freq:"
.LC2:
	.string	"HZ"
.LC3:
	.string	"out of range"
	.section	.text.ICU_Control_System,"ax",@progbits
.global	ICU_Control_System
	.type	ICU_Control_System, @function
ICU_Control_System:
.LFB1:
	.loc 1 19 0
	.cfi_startproc
	push r12
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 12, -2
	push r13
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 13, -3
	push r14
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 14, -4
	push r15
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
	push r28
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	.loc 1 22 0
	out 0x2f,__zero_reg__
	.loc 1 23 0
	in r24,0x38
	ori r24,lo8(32)
	out 0x38,r24
	.loc 1 27 0
	ldi r24,lo8(-63)
	out 0x2e,r24
.L4:
	.loc 1 28 0 discriminator 1
	in __tmp_reg__,0x38
	sbrs __tmp_reg__,5
	rjmp .L4
	.loc 1 29 0
	in r24,0x26
	in r25,0x26+1
	sts a+1,r25
	sts a,r24
	.loc 1 30 0
	in r24,0x38
	ori r24,lo8(32)
	out 0x38,r24
	.loc 1 33 0
	ldi r24,lo8(-127)
	out 0x2e,r24
.L6:
	.loc 1 34 0 discriminator 1
	in __tmp_reg__,0x38
	sbrs __tmp_reg__,5
	rjmp .L6
	.loc 1 35 0
	in r24,0x26
	in r25,0x26+1
	sts b+1,r25
	sts b,r24
	.loc 1 36 0
	in r24,0x38
	ori r24,lo8(32)
	out 0x38,r24
	.loc 1 39 0
	ldi r24,lo8(-63)
	out 0x2e,r24
.L8:
	.loc 1 40 0 discriminator 1
	in __tmp_reg__,0x38
	sbrs __tmp_reg__,5
	rjmp .L8
	.loc 1 41 0
	in r24,0x26
	in r25,0x26+1
	sts c+1,r25
	sts c,r24
	.loc 1 42 0
	in r24,0x38
	ori r24,lo8(32)
	out 0x38,r24
	.loc 1 45 0
	out 0x2e,__zero_reg__
	.loc 1 46 0
	lds r24,a
	lds r25,a+1
	lds r22,b
	lds r23,b+1
	cp r24,r22
	cpc r25,r23
	brsh .L9
	.loc 1 46 0 is_stmt 0 discriminator 1
	lds r28,c
	lds r29,c+1
	cp r22,r28
	cpc r23,r29
	brlo .L12
.L9:
	.loc 1 66 0 is_stmt 1
	call Clear_LCD
.LVL1:
	.loc 1 67 0
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
/* epilogue start */
	.loc 1 71 0
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	.loc 1 67 0
	jmp Send_String_LCD
.LVL2:
.L12:
	.loc 1 48 0
	sub r22,r24
	sbc r23,r25
	sts T_on+1,r23
	sts T_on,r22
	.loc 1 49 0
	sub r28,r24
	sbc r29,r25
	sts Time_Period+1,r29
	sts Time_Period,r28
	.loc 1 50 0
	ldi r24,0
	ldi r25,0
	call __floatunsisf
.LVL3:
	movw r12,r22
	movw r14,r24
	movw r22,r28
	ldi r24,0
	ldi r25,0
	call __floatunsisf
.LVL4:
	movw r18,r22
	movw r20,r24
	movw r24,r14
	movw r22,r12
	call __divsf3
.LVL5:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-56)
	ldi r21,lo8(66)
	call __mulsf3
.LVL6:
	call __fixunssfsi
.LVL7:
	sts Duty_Cyle+1,r23
	sts Duty_Cyle,r22
	.loc 1 51 0
	lds r24,Presaler_Val
	mul r24,r28
	movw r18,r0
	mul r24,r29
	add r19,r0
	clr __zero_reg__
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,lo8(18)
	ldi r24,lo8(122)
	ldi r25,0
	call __udivmodsi4
	sts Frequancy+1,r19
	sts Frequancy,r18
	.loc 1 52 0
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	call Send_String_LCD
.LVL8:
	.loc 1 53 0
	lds r18,Duty_Cyle
	lds r19,Duty_Cyle+1
	ldi r26,lo8(-51)
	ldi r27,lo8(-52)
	call __umulhisi3
	lsr r25
	ror r24
	lsr r25
	ror r24
	lsr r25
	ror r24
	subi r24,lo8(-(48))
	call Send_char_LCD
.LVL9:
	.loc 1 54 0
	lds r30,Duty_Cyle
	lds r31,Duty_Cyle+1
	movw r18,r30
	ldi r26,lo8(-51)
	ldi r27,lo8(-52)
	call __umulhisi3
	lsr r25
	ror r24
	lsr r25
	ror r24
	lsr r25
	ror r24
	movw r20,r24
	lsl r20
	rol r21
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r20,r24
	adc r21,r25
	movw r24,r30
	sub r24,r20
	sbc r25,r21
	subi r24,lo8(-(48))
	call Send_char_LCD
.LVL10:
	.loc 1 55 0
	ldi r24,lo8(37)
	call Send_char_LCD
.LVL11:
	.loc 1 56 0
	ldi r22,lo8(1)
	ldi r24,lo8(2)
	call Move_Curser_LCD
.LVL12:
	.loc 1 57 0
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	call Send_String_LCD
.LVL13:
	.loc 1 58 0
	lds r18,Frequancy
	lds r19,Frequancy+1
	lsr r19
	ror r18
	lsr r19
	ror r18
	lsr r19
	ror r18
	ldi r26,lo8(-59)
	ldi r27,lo8(32)
	call __umulhisi3
	swap r25
	swap r24
	andi r24,0x0f
	eor r24,r25
	andi r25,0x0f
	eor r24,r25
	subi r24,lo8(-(48))
	call Send_char_LCD
.LVL14:
	.loc 1 59 0
	lds r18,Frequancy
	lds r19,Frequancy+1
	lsr r19
	ror r18
	lsr r19
	ror r18
	ldi r26,lo8(123)
	ldi r27,lo8(20)
	call __umulhisi3
	movw r30,r24
	lsr r31
	ror r30
	movw r18,r30
	ldi r26,lo8(-51)
	ldi r27,lo8(-52)
	call __umulhisi3
	lsr r25
	ror r24
	lsr r25
	ror r24
	lsr r25
	ror r24
	movw r20,r24
	lsl r20
	rol r21
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r20,r24
	adc r21,r25
	movw r24,r30
	sub r24,r20
	sbc r25,r21
	subi r24,lo8(-(48))
	call Send_char_LCD
.LVL15:
	.loc 1 60 0
	lds r18,Frequancy
	lds r19,Frequancy+1
	ldi r26,lo8(-51)
	ldi r27,lo8(-52)
	call __umulhisi3
	movw r30,r24
	lsr r31
	ror r30
	lsr r31
	ror r30
	lsr r31
	ror r30
	movw r18,r30
	call __umulhisi3
	lsr r25
	ror r24
	lsr r25
	ror r24
	lsr r25
	ror r24
	movw r20,r24
	lsl r20
	rol r21
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r20,r24
	adc r21,r25
	movw r24,r30
	sub r24,r20
	sbc r25,r21
	subi r24,lo8(-(48))
	call Send_char_LCD
.LVL16:
	.loc 1 61 0
	lds r30,Frequancy
	lds r31,Frequancy+1
	movw r18,r30
	ldi r26,lo8(-51)
	ldi r27,lo8(-52)
	call __umulhisi3
	lsr r25
	ror r24
	lsr r25
	ror r24
	lsr r25
	ror r24
	movw r20,r24
	lsl r20
	rol r21
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r20,r24
	adc r21,r25
	movw r24,r30
	sub r24,r20
	sbc r25,r21
	subi r24,lo8(-(48))
	call Send_char_LCD
.LVL17:
	.loc 1 62 0
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
/* epilogue start */
	.loc 1 71 0
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	.loc 1 67 0
	jmp Send_String_LCD
.LVL18:
	.cfi_endproc
.LFE1:
	.size	ICU_Control_System, .-ICU_Control_System
.global	Presaler_Val
	.section	.data.Presaler_Val,"aw",@progbits
	.type	Presaler_Val, @object
	.size	Presaler_Val, 1
Presaler_Val:
	.byte	1
	.comm	Timer1,6,1
	.comm	Frequancy,2,1
	.comm	Duty_Cyle,2,1
	.comm	Time_Period,2,1
	.comm	T_on,2,1
	.comm	c,2,1
	.comm	b,2,1
	.comm	a,2,1
	.text
.Letext0:
	.file 2 "../Services/STD_Types.h"
	.file 3 "../MCAL/Timer_1/Timer_1.h"
	.file 4 "../HAL/LCD_Screen/LCD.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x49e
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF87
	.byte	0x1
	.long	.LASF88
	.long	.LASF89
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF2
	.byte	0x2
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
	.uleb128 0x2
	.long	.LASF3
	.byte	0x2
	.byte	0xf
	.long	0x4d
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0xd
	.long	0xef
	.uleb128 0x5
	.long	.LASF13
	.sleb128 0
	.uleb128 0x5
	.long	.LASF14
	.sleb128 1
	.uleb128 0x5
	.long	.LASF15
	.sleb128 2
	.uleb128 0x5
	.long	.LASF16
	.sleb128 3
	.uleb128 0x5
	.long	.LASF17
	.sleb128 4
	.uleb128 0x5
	.long	.LASF18
	.sleb128 5
	.uleb128 0x5
	.long	.LASF19
	.sleb128 6
	.uleb128 0x5
	.long	.LASF20
	.sleb128 7
	.uleb128 0x5
	.long	.LASF21
	.sleb128 8
	.uleb128 0x5
	.long	.LASF22
	.sleb128 9
	.uleb128 0x5
	.long	.LASF23
	.sleb128 10
	.uleb128 0x5
	.long	.LASF24
	.sleb128 11
	.uleb128 0x5
	.long	.LASF25
	.sleb128 12
	.uleb128 0x5
	.long	.LASF26
	.sleb128 13
	.uleb128 0x5
	.long	.LASF27
	.sleb128 14
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x3
	.byte	0x1d
	.long	0x8c
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x1f
	.long	0x133
	.uleb128 0x5
	.long	.LASF29
	.sleb128 0
	.uleb128 0x5
	.long	.LASF30
	.sleb128 1
	.uleb128 0x5
	.long	.LASF31
	.sleb128 2
	.uleb128 0x5
	.long	.LASF32
	.sleb128 3
	.uleb128 0x5
	.long	.LASF33
	.sleb128 4
	.uleb128 0x5
	.long	.LASF34
	.sleb128 5
	.uleb128 0x5
	.long	.LASF35
	.sleb128 6
	.uleb128 0x5
	.long	.LASF36
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.long	.LASF37
	.byte	0x3
	.byte	0x28
	.long	0xfa
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2b
	.long	0x165
	.uleb128 0x5
	.long	.LASF38
	.sleb128 0
	.uleb128 0x5
	.long	.LASF39
	.sleb128 1
	.uleb128 0x5
	.long	.LASF40
	.sleb128 2
	.uleb128 0x5
	.long	.LASF41
	.sleb128 3
	.uleb128 0x5
	.long	.LASF42
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x3
	.byte	0x31
	.long	0x13e
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x39
	.long	0x1b5
	.uleb128 0x5
	.long	.LASF44
	.sleb128 0
	.uleb128 0x5
	.long	.LASF45
	.sleb128 1
	.uleb128 0x5
	.long	.LASF46
	.sleb128 2
	.uleb128 0x5
	.long	.LASF47
	.sleb128 3
	.uleb128 0x5
	.long	.LASF48
	.sleb128 4
	.uleb128 0x5
	.long	.LASF49
	.sleb128 5
	.uleb128 0x5
	.long	.LASF50
	.sleb128 6
	.uleb128 0x5
	.long	.LASF51
	.sleb128 7
	.uleb128 0x5
	.long	.LASF52
	.sleb128 8
	.uleb128 0x5
	.long	.LASF53
	.sleb128 9
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x3
	.byte	0x44
	.long	0x170
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x47
	.long	0x1f9
	.uleb128 0x5
	.long	.LASF55
	.sleb128 0
	.uleb128 0x5
	.long	.LASF56
	.sleb128 1
	.uleb128 0x5
	.long	.LASF57
	.sleb128 2
	.uleb128 0x5
	.long	.LASF58
	.sleb128 3
	.uleb128 0x5
	.long	.LASF59
	.sleb128 4
	.uleb128 0x5
	.long	.LASF60
	.sleb128 5
	.uleb128 0x5
	.long	.LASF61
	.sleb128 6
	.uleb128 0x5
	.long	.LASF62
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x3
	.byte	0x50
	.long	0x1c0
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x53
	.long	0x21f
	.uleb128 0x5
	.long	.LASF64
	.sleb128 0
	.uleb128 0x5
	.long	.LASF65
	.sleb128 1
	.uleb128 0x5
	.long	.LASF66
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF67
	.byte	0x3
	.byte	0x57
	.long	0x204
	.uleb128 0x6
	.byte	0x6
	.byte	0x3
	.byte	0x58
	.long	0x287
	.uleb128 0x7
	.long	.LASF68
	.byte	0x3
	.byte	0x5a
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF69
	.byte	0x3
	.byte	0x5b
	.long	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF70
	.byte	0x3
	.byte	0x5c
	.long	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF71
	.byte	0x3
	.byte	0x5d
	.long	0x1b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.long	.LASF72
	.byte	0x3
	.byte	0x5e
	.long	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.long	.LASF73
	.byte	0x3
	.byte	0x5f
	.long	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x2
	.long	.LASF74
	.byte	0x3
	.byte	0x60
	.long	0x22a
	.uleb128 0x8
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.byte	0xe
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2b6
	.uleb128 0x9
	.long	.LVL0
	.byte	0x1
	.long	0x445
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.byte	0x12
	.long	.LFB1
	.long	.LFE1
	.long	.LLST0
	.byte	0x1
	.long	0x3a9
	.uleb128 0xb
	.long	.LVL1
	.long	0x44f
	.uleb128 0xc
	.long	.LVL2
	.byte	0x1
	.long	0x45e
	.long	0x2f5
	.uleb128 0xd
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC3
	.byte	0
	.uleb128 0xe
	.long	.LVL8
	.long	0x45e
	.long	0x311
	.uleb128 0xd
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC0
	.byte	0
	.uleb128 0xb
	.long	.LVL9
	.long	0x478
	.uleb128 0xb
	.long	.LVL10
	.long	0x478
	.uleb128 0xe
	.long	.LVL11
	.long	0x478
	.long	0x337
	.uleb128 0xd
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x25
	.byte	0
	.uleb128 0xe
	.long	.LVL12
	.long	0x48c
	.long	0x34f
	.uleb128 0xd
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0xd
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.long	.LVL13
	.long	0x45e
	.long	0x36b
	.uleb128 0xd
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC1
	.byte	0
	.uleb128 0xb
	.long	.LVL14
	.long	0x478
	.uleb128 0xb
	.long	.LVL15
	.long	0x478
	.uleb128 0xb
	.long	.LVL16
	.long	0x478
	.uleb128 0xb
	.long	.LVL17
	.long	0x478
	.uleb128 0xf
	.long	.LVL18
	.byte	0x1
	.long	0x45e
	.uleb128 0xd
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC2
	.byte	0
	.byte	0
	.uleb128 0x10
	.string	"a"
	.byte	0x1
	.byte	0xb
	.long	0x42
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	a
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0xb
	.long	0x42
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	b
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.byte	0xb
	.long	0x42
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	c
	.uleb128 0x11
	.long	.LASF77
	.byte	0x1
	.byte	0xb
	.long	0x42
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	T_on
	.uleb128 0x11
	.long	.LASF78
	.byte	0x1
	.byte	0xb
	.long	0x42
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Time_Period
	.uleb128 0x11
	.long	.LASF79
	.byte	0x1
	.byte	0xb
	.long	0x42
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Duty_Cyle
	.uleb128 0x11
	.long	.LASF80
	.byte	0x1
	.byte	0xb
	.long	0x42
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Frequancy
	.uleb128 0x11
	.long	.LASF81
	.byte	0x1
	.byte	0xc
	.long	0x287
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1
	.uleb128 0x11
	.long	.LASF82
	.byte	0x1
	.byte	0xd
	.long	0x29
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Presaler_Val
	.uleb128 0x12
	.byte	0x1
	.long	.LASF90
	.byte	0x4
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.long	.LASF85
	.byte	0x4
	.byte	0x47
	.byte	0x1
	.long	0x45e
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF83
	.byte	0x4
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.long	0x472
	.uleb128 0x16
	.long	0x472
	.byte	0
	.uleb128 0x17
	.byte	0x2
	.long	0x29
	.uleb128 0x15
	.byte	0x1
	.long	.LASF84
	.byte	0x4
	.byte	0x45
	.byte	0x1
	.byte	0x1
	.long	0x48c
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF86
	.byte	0x4
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.long	0x29
	.uleb128 0x16
	.long	0x29
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB1
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LFE1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"FastPWM_mode_9Bit"
.LASF75:
	.string	"ICU_Init_System"
.LASF63:
	.string	"OC1B_behavior"
.LASF64:
	.string	"Input_Capture_Disable"
.LASF36:
	.string	"External_Clock_Rising_edge"
.LASF79:
	.string	"Duty_Cyle"
.LASF23:
	.string	"PhaseCorrectPWM_ICR1_mode"
.LASF34:
	.string	"Clk_1024"
.LASF8:
	.string	"short int"
.LASF21:
	.string	"Frequancy_PhaseCorrectPWM_ICR1_mode"
.LASF40:
	.string	"Timer_OutPut_Compare_A_match"
.LASF88:
	.string	"../APP/Timer_APP/ICU_Timer1/ICU.c"
.LASF50:
	.string	"inverting_mode"
.LASF47:
	.string	"OC1_SetOn_Compare_match"
.LASF44:
	.string	"OC1_Disconnected"
.LASF3:
	.string	"uint_16"
.LASF53:
	.string	"Set_upCount_Clear_DownCount"
.LASF35:
	.string	"External_Clock_falling_edge"
.LASF85:
	.string	"Clear_LCD"
.LASF46:
	.string	"OC1_ClearOn_Compare_match"
.LASF81:
	.string	"Timer1"
.LASF89:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\Downloads\\\\My-Github\\\\AVR_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF14:
	.string	"PhaseCorrectPWM_mode_8Bit"
.LASF49:
	.string	"NON_inverting_mode"
.LASF24:
	.string	"PhaseCorrectPWM_OCR1_mode"
.LASF22:
	.string	"Frequancy_PhaseCorrectPWM_OCR1A_mode"
.LASF43:
	.string	"Timer_1_Interrupt_Source"
.LASF11:
	.string	"float"
.LASF27:
	.string	"FastPWM_OCR1A_mode"
.LASF10:
	.string	"long long int"
.LASF33:
	.string	"Clk_256"
.LASF48:
	.string	"OC1A_Toggle_On_Fast_PWM_OCR1A"
.LASF61:
	.string	"B_Clear_upCount_Set_DownCount"
.LASF67:
	.string	"Input_Capture_Mode"
.LASF9:
	.string	"long int"
.LASF65:
	.string	"Input_Capture_Failing_No_Noise_Filter"
.LASF13:
	.string	"Normal_mode"
.LASF1:
	.string	"unsigned char"
.LASF87:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF74:
	.string	"TIMER_1_DataType"
.LASF2:
	.string	"uint_8"
.LASF77:
	.string	"T_on"
.LASF78:
	.string	"Time_Period"
.LASF7:
	.string	"signed char"
.LASF15:
	.string	"PhaseCorrectPWM_mode_9Bit"
.LASF6:
	.string	"long long unsigned int"
.LASF68:
	.string	"Timer_mode"
.LASF26:
	.string	"FastPWM_ICR1_mode"
.LASF56:
	.string	"OC1B_Toggle"
.LASF17:
	.string	"CTC_mode_OCR1A"
.LASF32:
	.string	"Clk_64"
.LASF69:
	.string	"Timer_CLK"
.LASF57:
	.string	"OC1B_ClearOn_Compare_match"
.LASF4:
	.string	"short unsigned int"
.LASF54:
	.string	"OC1A_behavior"
.LASF28:
	.string	"Timer_1_mode_selection"
.LASF0:
	.string	"char"
.LASF45:
	.string	"OC1_Toggle"
.LASF38:
	.string	"Timer_No_Interrupt"
.LASF41:
	.string	"Timer_OutPut_Compare_B_match"
.LASF90:
	.string	"LCD_Init"
.LASF80:
	.string	"Frequancy"
.LASF51:
	.string	"OC1A_Toggle_On_Phase_Frequancy_Correct_PWM_OCR1A"
.LASF31:
	.string	"Clk_8"
.LASF62:
	.string	"B_Set_upCount_Clear_DownCount"
.LASF37:
	.string	"Timer_1_CLK_Source_selection"
.LASF18:
	.string	"FastPWM_mode_8Bit"
.LASF72:
	.string	"OC1B_Pin_State"
.LASF5:
	.string	"long unsigned int"
.LASF12:
	.string	"double"
.LASF59:
	.string	"NON_B_inverting_mode"
.LASF25:
	.string	"CTC_mode_ICR1"
.LASF84:
	.string	"Send_char_LCD"
.LASF20:
	.string	"FastPWM_mode_10Bit"
.LASF58:
	.string	"OC1B_SetOn_Compare_match"
.LASF52:
	.string	"Clear_upCount_Set_DownCount"
.LASF42:
	.string	"Timer_Overflow_Interrupt"
.LASF82:
	.string	"Presaler_Val"
.LASF71:
	.string	"OC1A_Pin_State"
.LASF30:
	.string	"No_Prescaling"
.LASF70:
	.string	"Timer_INT_source"
.LASF83:
	.string	"Send_String_LCD"
.LASF73:
	.string	"Input_Capture_State"
.LASF16:
	.string	"PhaseCorrectPWM_mode_10Bit"
.LASF86:
	.string	"Move_Curser_LCD"
.LASF55:
	.string	"OC1B_Disconnected"
.LASF60:
	.string	"B_inverting_mode"
.LASF39:
	.string	"Timer_Input_Capture_Interrupt"
.LASF29:
	.string	"No_Clock_source"
.LASF66:
	.string	"Input_Capture_Rising_Noise_Filter"
.LASF76:
	.string	"ICU_Control_System"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
