	.file	"tmc-err-codes.cpp"
# GNU C++26 (crosstool-NG esp-15.2.0_20251204) version 15.2.0 (xtensa-esp-elf)
#	compiled by GNU C version Debian Clang 19.1.7 (3+b1), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -ftls-model=local-exec -mdynconfig=xtensa_esp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gnu++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec
	.text
.Ltext0:
	.file 1 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.cpp"
	.section	.rodata._Z15tmc_err_to_namei.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"ESP_ERR_TMC_NO_RESPONSE"
	.align	4
.LC2:
	.string	"ESP_ERR_TMC_WRONG_CHIP"
	.align	4
.LC4:
	.string	"ESP_ERR_TMC_ENN_LOW"
	.align	4
.LC6:
	.string	"ESP_ERR_TMC_WRITE_LOST"
	.align	4
.LC8:
	.string	"ESP_ERR_TMC_RA_NOT_CONFIGURED"
	.align	4
.LC10:
	.string	"ESP_ERR_TMC_DEC_NOT_CONFIGURED"
	.align	4
.LC12:
	.string	"ESP_ERR_TMC_INVALID_CRC"
	.section	.text._Z15tmc_err_to_namei,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC14, 131076
	.literal .LC15, 131074
	.literal .LC16, 131075
	.literal .LC17, 131073
	.literal .LC18, 131078
	.literal .LC19, 131079
	.literal .LC20, 131077
	.align	4
	.global	_Z15tmc_err_to_namei
	.type	_Z15tmc_err_to_namei, @function
_Z15tmc_err_to_namei:
.LVL0:
.LFB1:
	.loc 1 3 44 view -0
	.loc 1 3 44 is_stmt 0 view .LVU1
	entry	sp, 32	#
.LCFI0:
	.loc 1 4 5 is_stmt 1 view .LVU2
	l32r	a8, .LC14	#, tmp44
	beq	a2, a8, .L5	# err, tmp44,
	blt	a8, a2, .L3	# tmp45, err,
	l32r	a8, .LC15	#, tmp46
	beq	a2, a8, .L6	# err, tmp46,
	l32r	a8, .LC16	#, tmp47
	beq	a2, a8, .L7	# err, tmp47,
	l32r	a8, .LC17	#, tmp48
	beq	a2, a8, .L8	# err, tmp48,
	j	.L4		#
.L3:
	l32r	a8, .LC18	#, tmp49
	beq	a2, a8, .L9	# err, tmp49,
	l32r	a8, .LC19	#, tmp50
	beq	a2, a8, .L10	# err, tmp50,
	l32r	a8, .LC20	#, tmp51
	beq	a2, a8, .L11	# err, tmp51,
.L4:
	.loc 1 12 9 view .LVU3
	.loc 1 12 18 view .LVU4
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.cpp:12:         default:                      return esp_err_to_name(err);
	.loc 1 12 40 is_stmt 0 view .LVU5
	mov.n	a10, a2	#, err
	call8	esp_err_to_name		#
.LVL1:
	mov.n	a2, a10	# <retval>, <retval>
.LVL2:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.cpp:12:         default:                      return esp_err_to_name(err);
	.loc 1 12 44 view .LVU6
	j	.L1		#
.LVL3:
.L5:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.cpp:8:         case ESP_ERR_TMC_WRITE_LOST:  return "ESP_ERR_TMC_WRITE_LOST";
	.loc 1 8 45 view .LVU7
	l32r	a2, .LC7	#, <retval>
.LVL4:
	.loc 1 8 45 view .LVU8
	j	.L1		#
.LVL5:
.L6:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.cpp:6:         case ESP_ERR_TMC_WRONG_CHIP:  return "ESP_ERR_TMC_WRONG_CHIP";
	.loc 1 6 45 view .LVU9
	l32r	a2, .LC3	#, <retval>
.LVL6:
	.loc 1 6 45 view .LVU10
	j	.L1		#
.LVL7:
.L7:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.cpp:7:         case ESP_ERR_TMC_ENN_LOW:     return "ESP_ERR_TMC_ENN_LOW";
	.loc 1 7 42 view .LVU11
	l32r	a2, .LC5	#, <retval>
.LVL8:
	.loc 1 7 42 view .LVU12
	j	.L1		#
.LVL9:
.L8:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.cpp:4:     switch (err) {
	.loc 1 4 5 view .LVU13
	l32r	a2, .LC1	#, <retval>
.LVL10:
	.loc 1 4 5 view .LVU14
	j	.L1		#
.LVL11:
.L9:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.cpp:10:         case ESP_ERR_TMC_DEC_NOT_CONFIGURED: return "ESP_ERR_TMC_DEC_NOT_CONFIGURED";
	.loc 1 10 53 view .LVU15
	l32r	a2, .LC11	#, <retval>
.LVL12:
	.loc 1 10 53 view .LVU16
	j	.L1		#
.LVL13:
.L10:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.cpp:11:         case ESP_ERR_TMC_INVALID_CRC: return "ESP_ERR_TMC_INVALID_CRC";
	.loc 1 11 46 view .LVU17
	l32r	a2, .LC13	#, <retval>
.LVL14:
	.loc 1 11 46 view .LVU18
	j	.L1		#
.LVL15:
.L11:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.cpp:9:         case ESP_ERR_TMC_RA_NOT_CONFIGURED:  return "ESP_ERR_TMC_RA_NOT_CONFIGURED";
	.loc 1 9 52 view .LVU19
	l32r	a2, .LC9	#, <retval>
.LVL16:
.L1:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.cpp:14: }
	.loc 1 14 1 view .LVU20
	retw.n	
.LFE1:
	.size	_Z15tmc_err_to_namei, .-_Z15tmc_err_to_namei
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_common/include/esp_err.h"
	.file 3 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x146
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.4byte	.LASF21
	.4byte	.LASF22
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	0x72
	.uleb128 0x5
	.byte	0x4
	.4byte	0x79
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x2
	.byte	0x13
	.byte	0xd
	.4byte	0x64
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x5
	.byte	0x4
	.4byte	0x84
	.byte	0x3
	.byte	0x16
	.byte	0x6
	.4byte	0xf4
	.uleb128 0x8
	.4byte	.LASF11
	.4byte	0x20000
	.uleb128 0x8
	.4byte	.LASF12
	.4byte	0x20001
	.uleb128 0x8
	.4byte	.LASF13
	.4byte	0x20002
	.uleb128 0x8
	.4byte	.LASF14
	.4byte	0x20003
	.uleb128 0x8
	.4byte	.LASF15
	.4byte	0x20004
	.uleb128 0x8
	.4byte	.LASF16
	.4byte	0x20005
	.uleb128 0x8
	.4byte	.LASF17
	.4byte	0x20006
	.uleb128 0x8
	.4byte	.LASF18
	.4byte	0x20007
	.uleb128 0x8
	.4byte	.LASF19
	.4byte	0x20008
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x2
	.byte	0x3a
	.byte	0xd
	.4byte	0x7e
	.4byte	0x10a
	.uleb128 0xa
	.4byte	0x84
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3
	.byte	0xd
	.4byte	.LASF27
	.4byte	0x7e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.string	"err"
	.byte	0x1
	.byte	0x3
	.byte	0x27
	.4byte	0x84
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xd
	.4byte	.LVL1
	.4byte	0xf4
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
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
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE1
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF25:
	.string	"esp_err_to_name"
.LASF15:
	.string	"ESP_ERR_TMC_WRITE_LOST"
.LASF13:
	.string	"ESP_ERR_TMC_WRONG_CHIP"
.LASF17:
	.string	"ESP_ERR_TMC_DEC_NOT_CONFIGURED"
.LASF21:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.cpp"
.LASF23:
	.string	"esp_err_t"
.LASF27:
	.string	"_Z15tmc_err_to_namei"
.LASF26:
	.string	"tmc_err_to_name"
.LASF0:
	.string	"long long unsigned int"
.LASF12:
	.string	"ESP_ERR_TMC_NO_RESPONSE"
.LASF22:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/build/dev"
.LASF3:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF11:
	.string	"ESP_ERR_TMC_BASE"
.LASF6:
	.string	"long int"
.LASF19:
	.string	"ESP_ERR_TMC_VERIFY_FAILED"
.LASF7:
	.string	"long unsigned int"
.LASF16:
	.string	"ESP_ERR_TMC_RA_NOT_CONFIGURED"
.LASF18:
	.string	"ESP_ERR_TMC_INVALID_CRC"
.LASF24:
	.string	"tmc_err_t"
.LASF5:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"unsigned int"
.LASF14:
	.string	"ESP_ERR_TMC_ENN_LOW"
.LASF9:
	.string	"long double"
.LASF4:
	.string	"short int"
.LASF20:
	.ascii	"GNU C++26 15.2.0 -ftls-model=local-exec -mdynconfig=xtensa_e"
	.ascii	"sp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gn"
	.string	"u++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec"
	.ident	"GCC: (crosstool-NG esp-15.2.0_20251204) 15.2.0"
