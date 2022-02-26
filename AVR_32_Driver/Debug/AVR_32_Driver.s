	.file	"AVR_32_Driver.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB6:
	.file 1 ".././AVR_32_Driver.c"
	.loc 1 28 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 29 0
	lds r22,Led_FW
	lds r23,Led_FW+1
	lds r24,Led_FW+2
	lds r25,Led_FW+3
	call Led_Start
.LVL0:
	.loc 1 30 0
	ldi r22,lo8(49)
	ldi r24,lo8(44)
	ldi r25,0
	call EEPROM_Write_Data
.LVL1:
	.loc 1 31 0
	ldi r22,lo8(48)
	ldi r24,lo8(44)
	ldi r25,0
	call EEPROM_Write_Data
.LVL2:
	.loc 1 32 0
	ldi r24,lo8(44)
	ldi r25,0
	call EEPROM_Read_Data
.LVL3:
	cpi r24,lo8(48)
	breq .L7
	.loc 1 38 0
	lds r22,Led_FW
	lds r23,Led_FW+1
	lds r24,Led_FW+2
	lds r25,Led_FW+3
	ldi r20,0
	call Led_State_Control
.LVL4:
.L4:
.L3:
	rjmp .L3
.L7:
	.loc 1 34 0
	lds r22,Led_FW
	lds r23,Led_FW+1
	lds r24,Led_FW+2
	lds r25,Led_FW+3
	ldi r20,lo8(1)
	call Led_State_Control
.LVL5:
	rjmp .L4
	.cfi_endproc
.LFE6:
	.size	main, .-main
.global	Led_FW
	.section	.data.Led_FW,"aw",@progbits
	.type	Led_FW, @object
	.size	Led_FW, 4
Led_FW:
	.word	51
	.byte	4
	.byte	0
	.text
.Letext0:
	.file 2 "../Services/STD_Types.h"
	.file 3 "../Services/AVR_32_Registers.h"
	.file 4 "../MCAL/DIO/GPIO.h"
	.file 5 "../HAL/LED_File/LED.h"
	.file 6 "../MCAL/EEPROM/EEPROM.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2c0
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF39
	.byte	0x1
	.long	.LASF40
	.long	.LASF41
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
	.byte	0x3
	.byte	0x3
	.byte	0x12
	.long	0xbf
	.uleb128 0x5
	.string	"PIN"
	.byte	0x3
	.byte	0x14
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DDR"
	.byte	0x3
	.byte	0x15
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0x16
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x29
	.uleb128 0x2
	.long	.LASF14
	.byte	0x3
	.byte	0x17
	.long	0x8c
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x15
	.long	0xe4
	.uleb128 0x9
	.string	"LOW"
	.sleb128 0
	.uleb128 0xa
	.long	.LASF15
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0x18
	.long	0xcf
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x19
	.long	0x12e
	.uleb128 0xa
	.long	.LASF17
	.sleb128 0
	.uleb128 0xa
	.long	.LASF18
	.sleb128 1
	.uleb128 0xa
	.long	.LASF19
	.sleb128 2
	.uleb128 0xa
	.long	.LASF20
	.sleb128 3
	.uleb128 0xa
	.long	.LASF21
	.sleb128 4
	.uleb128 0xa
	.long	.LASF22
	.sleb128 5
	.uleb128 0xa
	.long	.LASF23
	.sleb128 6
	.uleb128 0xa
	.long	.LASF24
	.sleb128 7
	.uleb128 0xa
	.long	.LASF25
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.long	.LASF26
	.byte	0x4
	.byte	0x23
	.long	0xef
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF27
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.byte	0xd
	.long	0x17a
	.uleb128 0x6
	.long	.LASF28
	.byte	0x5
	.byte	0xf
	.long	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF29
	.byte	0x5
	.byte	0x10
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF30
	.byte	0x5
	.byte	0x11
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0xc4
	.uleb128 0x2
	.long	.LASF31
	.byte	0x5
	.byte	0x12
	.long	0x147
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x14
	.long	0x1ac
	.uleb128 0xa
	.long	.LASF32
	.sleb128 0
	.uleb128 0xa
	.long	.LASF33
	.sleb128 1
	.uleb128 0xa
	.long	.LASF34
	.sleb128 0
	.uleb128 0xa
	.long	.LASF35
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF36
	.byte	0x5
	.byte	0x19
	.long	0x18b
	.uleb128 0xd
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.byte	0x1b
	.long	0x139
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x257
	.uleb128 0xe
	.long	.LVL0
	.long	0x269
	.uleb128 0xf
	.long	.LVL1
	.long	0x27d
	.long	0x1fc
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x10
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x31
	.byte	0
	.uleb128 0xf
	.long	.LVL2
	.long	0x27d
	.long	0x21b
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x10
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LVL3
	.long	0x296
	.long	0x234
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.uleb128 0xf
	.long	.LVL4
	.long	0x2ae
	.long	0x247
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LVL5
	.long	0x2ae
	.uleb128 0x10
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF43
	.byte	0x1
	.byte	0x1a
	.long	0x180
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Led_FW
	.uleb128 0x13
	.byte	0x1
	.long	.LASF37
	.byte	0x5
	.byte	0x1a
	.byte	0x1
	.byte	0x1
	.long	0x27d
	.uleb128 0x14
	.long	0x180
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF38
	.byte	0x6
	.byte	0x30
	.byte	0x1
	.byte	0x1
	.long	0x296
	.uleb128 0x14
	.long	0x42
	.uleb128 0x14
	.long	0x29
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF44
	.byte	0x6
	.byte	0x31
	.byte	0x1
	.long	0x29
	.byte	0x1
	.long	0x2ae
	.uleb128 0x14
	.long	0x42
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF45
	.byte	0x5
	.byte	0x1b
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	0x180
	.uleb128 0x14
	.long	0x1ac
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
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB6
	.long	.LFE6
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"LED_FW_ON"
.LASF24:
	.string	"PIN7"
.LASF44:
	.string	"EEPROM_Read_Data"
.LASF41:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\Downloads\\\\My-Github\\\\AVR_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF40:
	.string	".././AVR_32_Driver.c"
.LASF39:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF25:
	.string	"ADC_Diff_Mode"
.LASF26:
	.string	"GPIO_pin_number"
.LASF11:
	.string	"float"
.LASF17:
	.string	"PIN0"
.LASF19:
	.string	"PIN2"
.LASF20:
	.string	"PIN3"
.LASF38:
	.string	"EEPROM_Write_Data"
.LASF23:
	.string	"PIN6"
.LASF28:
	.string	"LED_port"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"uint_16"
.LASF4:
	.string	"short unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"double"
.LASF36:
	.string	"Led_State"
.LASF18:
	.string	"PIN1"
.LASF42:
	.string	"main"
.LASF34:
	.string	"LED_REV_ON"
.LASF16:
	.string	"Digital_pinState"
.LASF37:
	.string	"Led_Start"
.LASF22:
	.string	"PIN5"
.LASF27:
	.string	"unsigned int"
.LASF32:
	.string	"LED_FW_OFF"
.LASF6:
	.string	"long long unsigned int"
.LASF30:
	.string	"LED_Init_State"
.LASF29:
	.string	"LED_pin"
.LASF43:
	.string	"Led_FW"
.LASF10:
	.string	"long long int"
.LASF21:
	.string	"PIN4"
.LASF0:
	.string	"char"
.LASF13:
	.string	"PORT"
.LASF35:
	.string	"LED_REV_OFF"
.LASF2:
	.string	"uint_8"
.LASF8:
	.string	"short int"
.LASF45:
	.string	"Led_State_Control"
.LASF15:
	.string	"HIGH"
.LASF9:
	.string	"long int"
.LASF31:
	.string	"Led_Data"
.LASF14:
	.string	"GPIO_Register"
.LASF7:
	.string	"signed char"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
