	.file	"BCD Seven Segment.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Sev_Seg_Start,"ax",@progbits
.global	Sev_Seg_Start
	.type	Sev_Seg_Start, @function
Sev_Seg_Start:
.LFB1:
	.file 1 "../HAL/BCD 7-Segment/BCD Seven Segment.c"
	.loc 1 25 0
	.cfi_startproc
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
	rcall .
	rcall .
	rcall .
.LCFI4:
	.cfi_def_cfa_offset 12
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI5:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 6 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+1,r20
	std Y+2,r21
	std Y+4,r23
	std Y+5,r24
	std Y+6,r25
	ldd r16,Y+1
	ldd r17,Y+2
.LVL0:
	.loc 1 27 0
	ldi r20,0
	movw r24,r16
	call GPIO_Pin_Configuration
.LVL1:
	.loc 1 28 0
	ldi r20,0
	ldd r22,Y+4
	movw r24,r16
	call GPIO_Pin_Configuration
.LVL2:
	.loc 1 29 0
	ldi r20,0
	ldd r22,Y+5
	movw r24,r16
	call GPIO_Pin_Configuration
.LVL3:
	.loc 1 30 0
	ldi r20,0
	ldd r22,Y+6
	movw r24,r16
/* epilogue start */
	.loc 1 32 0
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
.LVL4:
	.loc 1 30 0
	jmp GPIO_Pin_Configuration
.LVL5:
	.cfi_endproc
.LFE1:
	.size	Sev_Seg_Start, .-Sev_Seg_Start
	.section	.text.Sev_Seg_Write,"ax",@progbits
.global	Sev_Seg_Write
	.type	Sev_Seg_Write, @function
Sev_Seg_Write:
.LFB2:
	.loc 1 35 0
	.cfi_startproc
.LVL6:
	push r16
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI9:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI10:
	.cfi_def_cfa_register 28
	sbiw r28,7
.LCFI11:
	.cfi_def_cfa_offset 13
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 7 */
/* stack size = 11 */
.L__stack_usage = 11
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	std Y+6,r25
	ldd r16,Y+1
	ldd r17,Y+2
.LVL7:
	.loc 1 37 0
	cpi r18,lo8(10)
	brlo .L5
/* epilogue start */
	.loc 1 53 0
	adiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
.LVL8:
	ret
.LVL9:
.L5:
	.loc 1 40 0
	mov r20,r18
	andi r20,lo8(1)
	movw r24,r16
	std Y+7,r18
	call GPIO_Pin_Write
.LVL10:
	.loc 1 42 0
	ldd r18,Y+7
	bst r18,1
	clr r20
	bld r20,0
	ldd r22,Y+4
	movw r24,r16
	call GPIO_Pin_Write
.LVL11:
	.loc 1 44 0
	ldd r18,Y+7
	bst r18,2
	clr r20
	bld r20,0
	ldd r22,Y+5
	movw r24,r16
	call GPIO_Pin_Write
.LVL12:
	.loc 1 46 0
	ldd r18,Y+7
	bst r18,3
	clr r20
	bld r20,0
	ldd r22,Y+6
	movw r24,r16
/* epilogue start */
	.loc 1 53 0
	adiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
.LVL13:
	.loc 1 46 0
	jmp GPIO_Pin_Write
.LVL14:
	.cfi_endproc
.LFE2:
	.size	Sev_Seg_Write, .-Sev_Seg_Write
	.text
.Letext0:
	.file 2 "../Services/STD_Types.h"
	.file 3 "../Services/AVR_32_Registers.h"
	.file 4 "../MCAL/DIO/GPIO.h"
	.file 5 "../HAL/BCD 7-Segment/BCD Seven Segment.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x398
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF43
	.byte	0x1
	.long	.LASF44
	.long	.LASF45
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF13
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
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.long	0x96
	.uleb128 0x5
	.long	.LASF11
	.sleb128 0
	.uleb128 0x5
	.long	.LASF12
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF14
	.byte	0x2
	.byte	0x26
	.long	0x81
	.uleb128 0x6
	.byte	0x3
	.byte	0x3
	.byte	0x12
	.long	0xd4
	.uleb128 0x7
	.string	"PIN"
	.byte	0x3
	.byte	0x14
	.long	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"DDR"
	.byte	0x3
	.byte	0x15
	.long	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF15
	.byte	0x3
	.byte	0x16
	.long	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x9
	.long	0x29
	.uleb128 0x2
	.long	.LASF16
	.byte	0x3
	.byte	0x17
	.long	0xa1
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.long	0xff
	.uleb128 0x5
	.long	.LASF17
	.sleb128 0
	.uleb128 0x5
	.long	.LASF18
	.sleb128 1
	.uleb128 0x5
	.long	.LASF19
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF20
	.byte	0x4
	.byte	0x14
	.long	0xe4
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x15
	.long	0x11f
	.uleb128 0xa
	.string	"LOW"
	.sleb128 0
	.uleb128 0x5
	.long	.LASF21
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF22
	.byte	0x4
	.byte	0x18
	.long	0x10a
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x19
	.long	0x169
	.uleb128 0x5
	.long	.LASF23
	.sleb128 0
	.uleb128 0x5
	.long	.LASF24
	.sleb128 1
	.uleb128 0x5
	.long	.LASF25
	.sleb128 2
	.uleb128 0x5
	.long	.LASF26
	.sleb128 3
	.uleb128 0x5
	.long	.LASF27
	.sleb128 4
	.uleb128 0x5
	.long	.LASF28
	.sleb128 5
	.uleb128 0x5
	.long	.LASF29
	.sleb128 6
	.uleb128 0x5
	.long	.LASF30
	.sleb128 7
	.uleb128 0x5
	.long	.LASF31
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.long	.LASF32
	.byte	0x4
	.byte	0x23
	.long	0x12a
	.uleb128 0x6
	.byte	0x6
	.byte	0x5
	.byte	0x13
	.long	0x1c3
	.uleb128 0x8
	.long	.LASF33
	.byte	0x5
	.byte	0x15
	.long	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF34
	.byte	0x5
	.byte	0x16
	.long	0x169
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF35
	.byte	0x5
	.byte	0x17
	.long	0x169
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF36
	.byte	0x5
	.byte	0x18
	.long	0x169
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF37
	.byte	0x5
	.byte	0x19
	.long	0x169
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0xd9
	.uleb128 0x2
	.long	.LASF38
	.byte	0x5
	.byte	0x1a
	.long	0x174
	.uleb128 0xc
	.long	.LASF46
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.long	0x1ed
	.uleb128 0xd
	.long	.LASF47
	.byte	0x1
	.byte	0x9
	.long	0x96
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.long	.LLST0
	.byte	0x1
	.long	0x2a6
	.uleb128 0xf
	.long	.LASF41
	.byte	0x1
	.byte	0x18
	.long	0x1c9
	.long	.LLST1
	.uleb128 0x10
	.long	.LVL1
	.long	0x363
	.long	0x234
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LVL2
	.long	0x363
	.long	0x25a
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x4
	.byte	0x8c
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LVL3
	.long	0x363
	.long	0x280
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x4
	.byte	0x8c
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.long	.LVL5
	.byte	0x1
	.long	0x363
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -11
	.byte	0x94
	.byte	0x2
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x4
	.byte	0x91
	.sleb128 -6
	.byte	0x94
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.long	.LLST2
	.byte	0x1
	.long	0x363
	.uleb128 0xf
	.long	.LASF41
	.byte	0x1
	.byte	0x22
	.long	0x1c9
	.long	.LLST3
	.uleb128 0xf
	.long	.LASF42
	.byte	0x1
	.byte	0x22
	.long	0x29
	.long	.LLST4
	.uleb128 0x10
	.long	.LVL10
	.long	0x381
	.long	0x300
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x31
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.long	.LVL11
	.long	0x381
	.long	0x321
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x4
	.byte	0x91
	.sleb128 -9
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LVL12
	.long	0x381
	.long	0x342
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x4
	.byte	0x91
	.sleb128 -8
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LVL14
	.byte	0x1
	.long	0x381
	.uleb128 0x11
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -12
	.byte	0x94
	.byte	0x2
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x4
	.byte	0x91
	.sleb128 -7
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF48
	.byte	0x4
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.long	0x381
	.uleb128 0x14
	.long	0x1c3
	.uleb128 0x14
	.long	0x169
	.uleb128 0x14
	.long	0xff
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF49
	.byte	0x4
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	0x1c3
	.uleb128 0x14
	.long	0x169
	.uleb128 0x14
	.long	0x11f
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
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
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 12
	.long	.LCFI5
	.long	.LFE1
	.word	0x2
	.byte	0x8c
	.sleb128 12
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL4
	.word	0x8
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x4
	.long	.LVL4
	.long	.LVL5-1
	.word	0x8
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x4
	.long	.LVL5-1
	.long	.LFE1
	.word	0x6
	.byte	0x91
	.sleb128 -11
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST2:
	.long	.LFB2
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI10
	.long	.LCFI11
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	.LCFI11
	.long	.LFE2
	.word	0x2
	.byte	0x8c
	.sleb128 13
	.long	0
	.long	0
.LLST3:
	.long	.LVL7
	.long	.LVL8
	.word	0x8
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x4
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x91
	.sleb128 -12
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x4
	.long	.LVL9
	.long	.LVL13
	.word	0x8
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x4
	.long	.LVL13
	.long	.LFE2
	.word	0x6
	.byte	0x91
	.sleb128 -12
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL10-1
	.word	0x1
	.byte	0x62
	.long	.LVL10-1
	.long	.LFE2
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
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
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"Sev_Seg_Write"
.LASF21:
	.string	"HIGH"
.LASF43:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF31:
	.string	"ADC_Diff_Mode"
.LASF42:
	.string	"Written_Num"
.LASF2:
	.string	"short unsigned int"
.LASF36:
	.string	"C_pin"
.LASF35:
	.string	"B_pin"
.LASF38:
	.string	"Sev_Seg_Datatype"
.LASF9:
	.string	"float"
.LASF23:
	.string	"PIN0"
.LASF4:
	.string	"long long unsigned int"
.LASF25:
	.string	"PIN2"
.LASF26:
	.string	"PIN3"
.LASF1:
	.string	"unsigned char"
.LASF29:
	.string	"PIN6"
.LASF30:
	.string	"PIN7"
.LASF32:
	.string	"GPIO_pin_number"
.LASF3:
	.string	"long unsigned int"
.LASF45:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\OneDrive - Higher Technological Institute\\\\Desktop\\\\Embedded Data\\\\Driver_To_Finish\\\\AVR_32_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF41:
	.string	"sevev_seg"
.LASF10:
	.string	"double"
.LASF48:
	.string	"GPIO_Pin_Configuration"
.LASF20:
	.string	"GPIO_pin_Type"
.LASF12:
	.string	"OverFlow"
.LASF18:
	.string	"INPUT_Float"
.LASF22:
	.string	"Digital_pinState"
.LASF33:
	.string	"Sev_Seg_port"
.LASF28:
	.string	"PIN5"
.LASF14:
	.string	"ErrorType"
.LASF0:
	.string	"char"
.LASF49:
	.string	"GPIO_Pin_Write"
.LASF19:
	.string	"INPUT_Pullup"
.LASF46:
	.string	"Sev_Segment_Error_Indication"
.LASF11:
	.string	"InvalidArgument"
.LASF24:
	.string	"PIN1"
.LASF8:
	.string	"long long int"
.LASF37:
	.string	"D_pin"
.LASF27:
	.string	"PIN4"
.LASF15:
	.string	"PORT"
.LASF39:
	.string	"Sev_Seg_Start"
.LASF47:
	.string	"type"
.LASF13:
	.string	"uint_8"
.LASF6:
	.string	"short int"
.LASF16:
	.string	"GPIO_Register"
.LASF7:
	.string	"long int"
.LASF17:
	.string	"OUTPUT"
.LASF5:
	.string	"signed char"
.LASF44:
	.string	"../HAL/BCD 7-Segment/BCD Seven Segment.c"
.LASF34:
	.string	"A_pin"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
