	.file	"EEPROM.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Disable_Interrupt,"ax",@progbits
.global	Disable_Interrupt
	.type	Disable_Interrupt, @function
Disable_Interrupt:
.LFB0:
	.file 1 "../MCAL/EEPROM/EEPROM.c"
	.loc 1 15 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 16 0
	in __tmp_reg__,__SREG__
	sbrs __tmp_reg__,7
	rjmp .L1
	.loc 1 18 0
	in r24,__SREG__
	andi r24,lo8(127)
	out __SREG__,r24
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	Disable_Interrupt, .-Disable_Interrupt
	.section	.text.EEPROM_Write_Data,"ax",@progbits
.global	EEPROM_Write_Data
	.type	EEPROM_Write_Data, @function
EEPROM_Write_Data:
.LFB1:
	.loc 1 22 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 23 0
	out 0x1e+1,r25
	out 0x1e,r24
	.loc 1 24 0
	out 0x1d,r22
.LBB4:
.LBB5:
	.loc 1 16 0
	in __tmp_reg__,__SREG__
	sbrs __tmp_reg__,7
	rjmp .L8
	.loc 1 18 0
	in r24,__SREG__
.LVL1:
	andi r24,lo8(127)
	out __SREG__,r24
.L8:
.LBE5:
.LBE4:
	.loc 1 26 0
	sbi 0x1c,2
	.loc 1 27 0
	sbi 0x1c,1
.L10:
	.loc 1 28 0 discriminator 1
	sbic 0x1c,1
	rjmp .L10
/* epilogue start */
	.loc 1 29 0
	ret
	.cfi_endproc
.LFE1:
	.size	EEPROM_Write_Data, .-EEPROM_Write_Data
	.section	.text.EEPROM_Read_Data,"ax",@progbits
.global	EEPROM_Read_Data
	.type	EEPROM_Read_Data, @function
EEPROM_Read_Data:
.LFB2:
	.loc 1 31 0
	.cfi_startproc
.LVL2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 32 0
	out 0x1e+1,r25
	out 0x1e,r24
	.loc 1 33 0
	sbi 0x1c,0
	.loc 1 34 0
	in r24,0x1d
.LVL3:
	.loc 1 35 0
	ret
	.cfi_endproc
.LFE2:
	.size	EEPROM_Read_Data, .-EEPROM_Read_Data
	.text
.Letext0:
	.file 2 "../Services/STD_Types.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x11f
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF18
	.byte	0x1
	.long	.LASF19
	.long	.LASF20
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x2
	.byte	0xd
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0xe
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.long	.LASF4
	.byte	0x2
	.byte	0xf
	.long	0x58
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x4
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.uleb128 0x5
	.long	0x97
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xf8
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1
	.byte	0x15
	.long	0x4d
	.long	.LLST0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x15
	.long	0x29
	.byte	0x1
	.byte	0x66
	.uleb128 0x9
	.long	0x97
	.long	.LBB4
	.long	.LBE4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.long	0x29
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1
	.byte	0x1e
	.long	0x4d
	.long	.LLST1
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
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
	.uleb128 0x27
	.uleb128 0xc
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LFE1
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LFE2
	.word	0x2
	.byte	0x8
	.byte	0x3e
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"EEPROM_Read_Data"
.LASF20:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\Downloads\\\\My-Github\\\\AVR_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF18:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF5:
	.string	"short unsigned int"
.LASF12:
	.string	"float"
.LASF15:
	.string	"data"
.LASF7:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF16:
	.string	"EEPROM_Write_Data"
.LASF6:
	.string	"long unsigned int"
.LASF4:
	.string	"uint_16"
.LASF1:
	.string	"uint8"
.LASF13:
	.string	"double"
.LASF21:
	.string	"Disable_Interrupt"
.LASF14:
	.string	"address"
.LASF2:
	.string	"char"
.LASF11:
	.string	"long long int"
.LASF0:
	.string	"uint_8"
.LASF9:
	.string	"short int"
.LASF10:
	.string	"long int"
.LASF8:
	.string	"signed char"
.LASF19:
	.string	"../MCAL/EEPROM/EEPROM.c"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
