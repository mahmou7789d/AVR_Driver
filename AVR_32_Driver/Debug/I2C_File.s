	.file	"I2C_File.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.TWI_INIT,"ax",@progbits
.global	TWI_INIT
	.type	TWI_INIT, @function
TWI_INIT:
.LFB0:
	.file 1 "../MCAL/CommuncationProtocols/I2C_File.c"
	.loc 1 13 0
	.cfi_startproc
.LVL0:
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r18,r24
.LVL1:
	.loc 1 18 0
	lds r24,TWI_1
.LVL2:
	cpi r24,lo8(1)
	breq .L5
	.loc 1 17 0
	ldi r25,0
.LVL3:
	.loc 1 29 0
	lds r20,TWI_1+1
	cpi r20,lo8(4)
	brsh .L6
.L8:
	ldi r21,0
	movw r30,r20
	subi r30,lo8(-(CSWTCH.1))
	sbci r31,hi8(-(CSWTCH.1))
	ld r12,Z
	movw r30,r20
	subi r30,lo8(-(CSWTCH.2))
	sbci r31,hi8(-(CSWTCH.2))
	ld r24,Z
	mov r13,__zero_reg__
	lsl r12
	rol r13
	clr r14
	sbrc r13,7
	com r14
	mov r15,r14
.L4:
.LVL4:
	.loc 1 54 0
	out 0x36,r25
	.loc 1 55 0
	out 0x1,r24
	.loc 1 56 0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,lo8(36)
	ldi r24,lo8(-12)
	ldi r25,0
	call __udivmodsi4
.LVL5:
	movw r24,r20
	movw r22,r18
	subi r22,16
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
	movw r20,r14
	movw r18,r12
	call __udivmodsi4
	out 0,r18
/* epilogue start */
	.loc 1 57 0
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.LVL6:
.L5:
	.loc 1 21 0
	ldi r25,lo8(4)
.LVL7:
	.loc 1 29 0
	lds r20,TWI_1+1
	cpi r20,lo8(4)
	brlo .L8
.L6:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	ldi r24,0
	rjmp .L4
	.cfi_endproc
.LFE0:
	.size	TWI_INIT, .-TWI_INIT
	.section	.text.TWI_Start,"ax",@progbits
.global	TWI_Start
	.type	TWI_Start, @function
TWI_Start:
.LFB1:
	.loc 1 59 0
	.cfi_startproc
.LVL8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 60 0
	lds r25,TWI_1+3
	tst r25
	breq .L11
	cpi r25,lo8(4)
	brsh .L9
	.loc 1 77 0
	out 0x2,r24
	.loc 1 78 0
	in r24,0x36
.LVL9:
	ori r24,lo8(4)
	out 0x36,r24
.LVL10:
	.loc 1 79 0
	in r24,0x36
	ori r24,lo8(64)
	out 0x36,r24
	.loc 1 80 0
	in r24,0x36
	ori r24,lo8(-128)
	out 0x36,r24
.L22:
	.loc 1 81 0 discriminator 1
	in __tmp_reg__,0x36
	sbrs __tmp_reg__,7
	rjmp .L22
.L24:
	.loc 1 82 0 discriminator 1
	in r24,0x1
	andi r24,lo8(-8)
	cpi r24,lo8(96)
	brne .L24
.L9:
	ret
.LVL11:
.L11:
	.loc 1 63 0
	in r25,0x36
	ori r25,lo8(4)
	out 0x36,r25
	.loc 1 64 0
	in r25,0x36
	ori r25,lo8(-128)
	out 0x36,r25
	.loc 1 65 0
	in r25,0x36
	ori r25,lo8(32)
	out 0x36,r25
.L14:
	.loc 1 66 0 discriminator 1
	in __tmp_reg__,0x36
	sbrs __tmp_reg__,7
	rjmp .L14
.L16:
	.loc 1 67 0 discriminator 1
	in r25,0x1
	andi r25,lo8(-8)
	cpi r25,lo8(8)
	brne .L16
	.loc 1 68 0
	out 0x3,r24
	.loc 1 69 0
	in r24,0x36
.LVL12:
	ori r24,lo8(4)
	out 0x36,r24
.LVL13:
	.loc 1 70 0
	in r24,0x36
	ori r24,lo8(-128)
	out 0x36,r24
.L18:
	.loc 1 71 0 discriminator 1
	in __tmp_reg__,0x36
	sbrs __tmp_reg__,7
	rjmp .L18
.L20:
	.loc 1 72 0 discriminator 1
	in r24,0x1
	andi r24,lo8(-8)
	cpi r24,lo8(24)
	brne .L20
	ret
	.cfi_endproc
.LFE1:
	.size	TWI_Start, .-TWI_Start
	.section	.text.TWI_Write_Byte,"ax",@progbits
.global	TWI_Write_Byte
	.type	TWI_Write_Byte, @function
TWI_Write_Byte:
.LFB2:
	.loc 1 88 0
	.cfi_startproc
.LVL14:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 89 0
	out 0x3,r24
	.loc 1 90 0
	in r24,0x36
.LVL15:
	ori r24,lo8(4)
	out 0x36,r24
.LVL16:
	.loc 1 91 0
	in r24,0x36
	ori r24,lo8(-128)
	out 0x36,r24
.L31:
	.loc 1 92 0 discriminator 1
	in __tmp_reg__,0x36
	sbrs __tmp_reg__,7
	rjmp .L31
.L33:
	.loc 1 93 0 discriminator 1
	in r24,0x1
	andi r24,lo8(-8)
	cpi r24,lo8(40)
	brne .L33
/* epilogue start */
	.loc 1 94 0
	ret
	.cfi_endproc
.LFE2:
	.size	TWI_Write_Byte, .-TWI_Write_Byte
	.section	.text.TWI_Read_Byte,"ax",@progbits
.global	TWI_Read_Byte
	.type	TWI_Read_Byte, @function
TWI_Read_Byte:
.LFB3:
	.loc 1 97 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 98 0
	in r24,0x36
	ori r24,lo8(4)
	out 0x36,r24
	.loc 1 99 0
	in r24,0x36
	ori r24,lo8(64)
	out 0x36,r24
	.loc 1 100 0
	in r24,0x36
	ori r24,lo8(-128)
	out 0x36,r24
.L36:
	.loc 1 101 0 discriminator 1
	in __tmp_reg__,0x36
	sbrs __tmp_reg__,7
	rjmp .L36
.L38:
	.loc 1 102 0 discriminator 1
	in r24,0x1
	andi r24,lo8(-8)
	cpi r24,lo8(-128)
	brne .L38
	.loc 1 103 0
	in r24,0x2
	.loc 1 104 0
	ret
	.cfi_endproc
.LFE3:
	.size	TWI_Read_Byte, .-TWI_Read_Byte
	.section	.text.TWI_Stop,"ax",@progbits
.global	TWI_Stop
	.type	TWI_Stop, @function
TWI_Stop:
.LFB4:
	.loc 1 107 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 108 0
	in r24,0x36
	ori r24,lo8(4)
	out 0x36,r24
	.loc 1 109 0
	in r24,0x36
	ori r24,lo8(-128)
	out 0x36,r24
	.loc 1 110 0
	in r24,0x36
	ori r24,lo8(16)
	out 0x36,r24
.L41:
	.loc 1 111 0 discriminator 1
	in __tmp_reg__,0x36
	sbrs __tmp_reg__,7
	rjmp .L41
.L43:
	.loc 1 112 0 discriminator 1
	in __tmp_reg__,0x36
	sbrc __tmp_reg__,4
	rjmp .L43
/* epilogue start */
	.loc 1 113 0
	ret
	.cfi_endproc
.LFE4:
	.size	TWI_Stop, .-TWI_Stop
	.section	.rodata.CSWTCH.2,"a",@progbits
	.type	CSWTCH.2, @object
	.size	CSWTCH.2, 4
CSWTCH.2:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.section	.rodata.CSWTCH.1,"a",@progbits
	.type	CSWTCH.1, @object
	.size	CSWTCH.1, 4
CSWTCH.1:
	.byte	1
	.byte	4
	.byte	16
	.byte	64
.global	TWI_1
	.section	.bss.TWI_1,"aw",@nobits
	.type	TWI_1, @object
	.size	TWI_1, 4
TWI_1:
	.zero	4
	.text
.Letext0:
	.file 2 "../Services/STD_Types.h"
	.file 3 "../MCAL/CommuncationProtocols/I2C_File.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x24d
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF41
	.byte	0x1
	.long	.LASF42
	.long	.LASF43
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF15
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
	.byte	0x3
	.byte	0x18
	.long	0xa2
	.uleb128 0x5
	.long	.LASF11
	.sleb128 0
	.uleb128 0x5
	.long	.LASF12
	.sleb128 1
	.uleb128 0x5
	.long	.LASF13
	.sleb128 2
	.uleb128 0x5
	.long	.LASF14
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF16
	.byte	0x3
	.byte	0x1d
	.long	0x81
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x26
	.long	0xc2
	.uleb128 0x5
	.long	.LASF17
	.sleb128 0
	.uleb128 0x5
	.long	.LASF18
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x3
	.byte	0x29
	.long	0xad
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x32
	.long	0xe2
	.uleb128 0x5
	.long	.LASF20
	.sleb128 0
	.uleb128 0x5
	.long	.LASF21
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF22
	.byte	0x3
	.byte	0x35
	.long	0xcd
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x38
	.long	0x10e
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
	.byte	0
	.uleb128 0x2
	.long	.LASF27
	.byte	0x3
	.byte	0x3d
	.long	0xed
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.byte	0x3f
	.long	0x15a
	.uleb128 0x7
	.long	.LASF28
	.byte	0x3
	.byte	0x41
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF29
	.byte	0x3
	.byte	0x42
	.long	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF30
	.byte	0x3
	.byte	0x43
	.long	0xe2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF31
	.byte	0x3
	.byte	0x44
	.long	0x10e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF32
	.byte	0x3
	.byte	0x45
	.long	0x119
	.uleb128 0x8
	.byte	0x1
	.long	.LASF35
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.long	.LLST0
	.byte	0x1
	.long	0x1bc
	.uleb128 0x9
	.long	.LASF37
	.byte	0x1
	.byte	0xc
	.long	0x29
	.long	.LLST1
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0xf
	.long	0x29
	.long	.LLST2
	.uleb128 0xa
	.long	.LASF33
	.byte	0x1
	.byte	0x10
	.long	0x29
	.long	.LLST3
	.uleb128 0xa
	.long	.LASF34
	.byte	0x1
	.byte	0x11
	.long	0x29
	.long	.LLST4
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF36
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1e6
	.uleb128 0x9
	.long	.LASF38
	.byte	0x1
	.byte	0x3a
	.long	0x29
	.long	.LLST5
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x210
	.uleb128 0x9
	.long	.LASF40
	.byte	0x1
	.byte	0x57
	.long	0x29
	.long	.LLST6
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0x60
	.long	0x29
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.byte	0x6a
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0xe
	.long	.LASF46
	.byte	0x1
	.byte	0xa
	.long	0x15a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TWI_1
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB0
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
	.long	.LFE0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.word	0x1
	.byte	0x68
	.long	.LVL2
	.long	.LVL5
	.word	0x1
	.byte	0x62
	.long	.LVL5
	.long	.LVL6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL6
	.long	.LFE0
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL4
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL6
	.long	.LFE0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL4
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL4
	.long	.LVL6
	.word	0x1
	.byte	0x68
	.long	.LVL6
	.long	.LFE0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL1
	.long	.LVL3
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3
	.long	.LVL6
	.word	0x1
	.byte	0x69
	.long	.LVL6
	.long	.LVL7
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL7
	.long	.LFE0
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	.LVL9
	.long	.LVL10
	.word	0x2
	.byte	0x8
	.byte	0x22
	.long	.LVL10
	.long	.LVL11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.word	0x1
	.byte	0x68
	.long	.LVL12
	.long	.LVL13
	.word	0x2
	.byte	0x8
	.byte	0x23
	.long	.LVL13
	.long	.LFE1
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL14
	.long	.LVL15
	.word	0x1
	.byte	0x68
	.long	.LVL15
	.long	.LVL16
	.word	0x2
	.byte	0x8
	.byte	0x23
	.long	.LVL16
	.long	.LFE2
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
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
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"TWI_status"
.LASF24:
	.string	"Master_Receiver"
.LASF27:
	.string	"Micro_Mode"
.LASF6:
	.string	"short int"
.LASF20:
	.string	"TWI_Interrupt_Disables"
.LASF46:
	.string	"TWI_1"
.LASF11:
	.string	"No_Presaler"
.LASF16:
	.string	"Presaler_Value"
.LASF45:
	.string	"TWI_Stop"
.LASF25:
	.string	"Slave_Transmitter"
.LASF43:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\Downloads\\\\My-Github\\\\AVR_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF38:
	.string	"SLA_Value"
.LASF34:
	.string	"TWCR_Temp"
.LASF9:
	.string	"float"
.LASF8:
	.string	"long long int"
.LASF12:
	.string	"Prescaler_4"
.LASF37:
	.string	"SCL_F"
.LASF7:
	.string	"long int"
.LASF17:
	.string	"TWI_Disables"
.LASF13:
	.string	"Prescaler_16"
.LASF22:
	.string	"TWI_Interrupt_status"
.LASF29:
	.string	"Presaler_Val"
.LASF40:
	.string	"T_Data"
.LASF33:
	.string	"TWSR_Temp"
.LASF1:
	.string	"unsigned char"
.LASF41:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF15:
	.string	"uint_8"
.LASF28:
	.string	"TWI_state"
.LASF5:
	.string	"signed char"
.LASF4:
	.string	"long long unsigned int"
.LASF44:
	.string	"TWI_Read_Byte"
.LASF39:
	.string	"TWI_Write_Byte"
.LASF18:
	.string	"TWI_Enabled"
.LASF2:
	.string	"short unsigned int"
.LASF0:
	.string	"char"
.LASF14:
	.string	"Prescaler_64"
.LASF21:
	.string	"TWI_Interrupt_Enabled"
.LASF3:
	.string	"long unsigned int"
.LASF10:
	.string	"double"
.LASF30:
	.string	"TWI_Interrupt_state"
.LASF35:
	.string	"TWI_INIT"
.LASF31:
	.string	"Micro_state"
.LASF32:
	.string	"TWi_Micro_data"
.LASF36:
	.string	"TWI_Start"
.LASF23:
	.string	"Master_Transmitter"
.LASF26:
	.string	"Slave_Receiver"
.LASF42:
	.string	"../MCAL/CommuncationProtocols/I2C_File.c"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
