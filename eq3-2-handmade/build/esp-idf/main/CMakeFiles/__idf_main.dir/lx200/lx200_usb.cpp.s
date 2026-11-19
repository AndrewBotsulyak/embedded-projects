	.file	"lx200_usb.cpp"
# GNU C++26 (crosstool-NG esp-15.2.0_20251204) version 15.2.0 (xtensa-esp-elf)
#	compiled by GNU C version Debian Clang 19.1.7 (3+b1), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -ftls-model=local-exec -mdynconfig=xtensa_esp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gnu++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec
	.text
.Ltext0:
	.file 1 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp"
	.section	.rodata._ZL14lx200_usb_taskPv.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"usb"
	.section	.text._ZL14lx200_usb_taskPv,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.align	4
	.type	_ZL14lx200_usb_taskPv, @function
_ZL14lx200_usb_taskPv:
.LFB102:
	.loc 1 16 36 view -0
	entry	sp, 224	#
.LCFI0:
	.loc 1 17 5 view .LVU1
	.loc 1 18 5 view .LVU2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:18:     lx200_ctx_init(&ctx, "usb");
	.loc 1 18 19 is_stmt 0 view .LVU3
	l32r	a11, .LC2	#,
	mov.n	a10, sp	#,
	call8	_Z14lx200_ctx_initP11lx200_ctx_tPKc		#
.LVL0:
.L5:
	.loc 1 20 5 is_stmt 1 view .LVU4
	.loc 1 21 5 view .LVU5
	.loc 1 23 5 view .LVU6
.LBB14:
	.loc 1 25 9 view .LVU7
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:25:         int n = usb_serial_jtag_read_bytes(rx, sizeof(rx), pdMS_TO_TICKS(100));
	.loc 1 25 43 is_stmt 0 view .LVU8
	movi.n	a12, 0xa	#,
	movi.n	a11, 0x40	#,
	addi	a10, sp, 56	#,,
	call8	usb_serial_jtag_read_bytes		#
.LVL1:
	mov.n	a7, a10	# n, n
.LVL2:
	.loc 1 27 9 is_stmt 1 view .LVU9
.LBB15:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:27:         for (int i = 0; i < n; i++) {
	.loc 1 27 18 is_stmt 0 view .LVU10
	movi.n	a6, 0	# i,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:27:         for (int i = 0; i < n; i++) {
	.loc 1 27 9 view .LVU11
	j	.L2		#
.LVL3:
.L4:
.LBB16:
	.loc 1 28 13 is_stmt 1 view .LVU12
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:28:             size_t len = lx200_feed(&ctx, rx[i], reply, sizeof(reply));
	.loc 1 28 47 is_stmt 0 view .LVU13
	addi	a8, sp, 56	# tmp50,,
	add.n	a8, a8, a6	# tmp51, tmp50, i
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:28:             size_t len = lx200_feed(&ctx, rx[i], reply, sizeof(reply));
	.loc 1 28 36 view .LVU14
	movi.n	a13, 0x40	#,
	addi	a12, sp, 120	#,,
	l8ui	a11, a8, 0	# rx[i_3],
	mov.n	a10, sp	#,
	call8	_Z10lx200_feedP11lx200_ctx_thPcj		#
.LVL4:
	.loc 1 29 13 is_stmt 1 view .LVU15
	beqz.n	a10, .L3	# len,
	.loc 1 31 17 view .LVU16
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:31:                 usb_serial_jtag_write_bytes(reply, len, pdMS_TO_TICKS(LX200_USB_WRITE_WAIT_MS));
	.loc 1 31 44 is_stmt 0 view .LVU17
	movi.n	a12, 5	#,
	mov.n	a11, a10	#, len
	addi	a10, sp, 120	#,,
.LVL5:
	.loc 1 31 44 view .LVU18
	call8	usb_serial_jtag_write_bytes		#
.LVL6:
.L3:
	.loc 1 31 44 view .LVU19
.LBE16:
	.loc 1 27 9 is_stmt 1 discriminator 2 view .LVU20
	addi.n	a6, a6, 1	# i, i,
.LVL7:
.L2:
	.loc 1 27 27 discriminator 1 view .LVU21
	bge	a6, a7, .L5	# i, n,
	j	.L4		#
.LBE15:
.LBE14:
.LFE102:
	.size	_ZL14lx200_usb_taskPv, .-_ZL14lx200_usb_taskPv
	.section	.rodata._Z15lx200_usb_startv.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"lx200_usb"
	.align	4
.LC6:
	.string	"E (%lu) %s: usb_serial_jtag_driver_install: %s\n"
	.align	4
.LC11:
	.base64	"RSAoJWx1KSAlczog0L3QtSDRg9C00LDQu9C+0YHRjCDRgdC+0LfQtNCw0YLRjCDQt9Cw0LTQsNGH0YMgbHgyMDBfdXNiCgA="
	.align	4
.LC13:
	.base64	"SSAoJWx1KSAlczogTFgyMDAg0L3QsCDRgNCw0LfRitGR0LzQtSBVU0IgKNC/0L7RgNGCIC9kZXYvY3UudXNibW9kZW0uLi4g0L3QsCBNYWMpCgA="
	.section	.rodata
	.align	4
.LC0:
# tx_buffer_size:
	.word	256
# rx_buffer_size:
	.word	256
	.section	.text._Z15lx200_usb_startv,"ax",@progbits
	.literal_position
	.literal .LC3, .LC0
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, 4096
	.literal .LC9, _ZL14lx200_usb_taskPv
	.literal .LC10, 2147483647
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.align	4
	.global	_Z15lx200_usb_startv
	.type	_Z15lx200_usb_startv, @function
_Z15lx200_usb_startv:
.LFB103:
	.loc 1 37 29 view -0
	entry	sp, 64	#
.LCFI1:
	.loc 1 38 5 view .LVU23
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:38:     usb_serial_jtag_driver_config_t cfg = {
	.loc 1 38 37 is_stmt 0 view .LVU24
	l32r	a8, .LC3	#, tmp54
	l32i.n	a9, a8, 0	#, tmp55
	l32i.n	a8, a8, 4	#, tmp56
	s32i.n	a9, sp, 16	# cfg, tmp55
	s32i.n	a8, sp, 20	# cfg, tmp56
	.loc 1 43 5 is_stmt 1 view .LVU25
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:43:     esp_err_t err = usb_serial_jtag_driver_install(&cfg);
	.loc 1 43 51 is_stmt 0 view .LVU26
	addi	a10, sp, 16	#,,
	call8	usb_serial_jtag_driver_install		#
.LVL8:
	mov.n	a2, a10	# <retval>, <retval>
.LVL9:
	.loc 1 44 5 is_stmt 1 view .LVU27
.LBB17:
	beqz.n	a10, .L7	# <retval>,
.LBB18:
	.loc 1 45 9 view .LVU28
	.loc 1 45 14 view .LVU29
	.loc 1 45 19 view .LVU30
	.loc 1 45 52 view .LVU31
	.loc 1 45 57 view .LVU32
.LBB19:
	.loc 1 45 116 discriminator 1 view .LVU33
.LBB20:
	.loc 1 45 141 discriminator 1 view .LVU34
	.loc 1 45 176 discriminator 1 view .LVU35
	.loc 1 45 217 view .LVU36
.LBE20:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:45:         ESP_LOGE(TAG, "usb_serial_jtag_driver_install: %s", esp_err_to_name(err));
	.loc 1 45 123 is_stmt 0 discriminator 1 view .LVU37
	call8	esp_log_timestamp		#
.LVL10:
	mov.n	a7, a10	# _2, _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:45:         ESP_LOGE(TAG, "usb_serial_jtag_driver_install: %s", esp_err_to_name(err));
	.loc 1 45 123 discriminator 3 view .LVU38
	mov.n	a10, a2	#, <retval>
	call8	esp_err_to_name		#
.LVL11:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:45:         ESP_LOGE(TAG, "usb_serial_jtag_driver_install: %s", esp_err_to_name(err));
	.loc 1 45 123 discriminator 4 view .LVU39
	l32r	a11, .LC5	#, tmp57
	mov.n	a15, a10	#, _4
	mov.n	a14, a11	#, tmp57
	mov.n	a13, a7	#, _2
	l32r	a12, .LC7	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL12:
	.loc 1 45 52 is_stmt 1 view .LVU40
	.loc 1 45 14 view .LVU41
.LBE19:
	.loc 1 45 9 view .LVU42
	.loc 1 46 9 view .LVU43
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:46:         return err;
	.loc 1 46 16 is_stmt 0 view .LVU44
	j	.L6		#
.L7:
	.loc 1 46 16 view .LVU45
.LBE18:
.LBE17:
	.loc 1 49 5 is_stmt 1 view .LVU46
.LVL13:
.LBB21:
.LBB22:
.LBI22:
	.file 2 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/task.h"
	.loc 2 371 16 view .LVU47
.LBB23:
	.loc 2 382 9 view .LVU48
	.loc 2 394 9 view .LVU49
# /Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/task.h:394:         return xTaskCreatePinnedToCore( pxTaskCode,
	.loc 2 394 39 is_stmt 0 view .LVU50
	l32r	a8, .LC10	#, tmp63
	s32i.n	a8, sp, 0	#, tmp63
	mov.n	a15, a10	#, <retval>
	movi.n	a14, 4	#,
	mov.n	a13, a10	#, tmp15
	l32r	a12, .LC8	#,
	l32r	a11, .LC5	#,
	l32r	a10, .LC9	#,
	call8	xTaskCreatePinnedToCore		#
.LVL14:
	.loc 2 394 39 view .LVU51
.LBE23:
.LBE22:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:49:     if (xTaskCreate(lx200_usb_task, "lx200_usb", 4096, nullptr, 4, nullptr) != pdPASS) {
	.loc 1 49 5 discriminator 1 view .LVU52
	beqi	a10, 1, .L9	# _5,,
.LBB24:
	.loc 1 50 9 is_stmt 1 view .LVU53
	.loc 1 50 14 view .LVU54
	.loc 1 50 19 view .LVU55
	.loc 1 50 52 view .LVU56
	.loc 1 50 57 view .LVU57
.LBB25:
	.loc 1 50 116 discriminator 1 view .LVU58
.LBB26:
	.loc 1 50 141 discriminator 1 view .LVU59
	.loc 1 50 176 discriminator 1 view .LVU60
	.loc 1 50 217 view .LVU61
.LBE26:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:50:         ESP_LOGE(TAG, "не удалось создать задачу lx200_usb");
	.loc 1 50 123 is_stmt 0 discriminator 1 view .LVU62
	call8	esp_log_timestamp		#
.LVL15:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:50:         ESP_LOGE(TAG, "не удалось создать задачу lx200_usb");
	.loc 1 50 123 discriminator 3 view .LVU63
	l32r	a11, .LC5	#, tmp64
	mov.n	a14, a11	#, tmp64
	mov.n	a13, a10	#, _11
	l32r	a12, .LC12	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL16:
	.loc 1 50 52 is_stmt 1 view .LVU64
	.loc 1 50 14 view .LVU65
.LBE25:
	.loc 1 50 9 view .LVU66
	.loc 1 51 9 view .LVU67
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:51:         return ESP_ERR_NO_MEM;
	.loc 1 51 16 is_stmt 0 view .LVU68
	movi	a2, 0x101	# <retval>,
.LVL17:
	.loc 1 51 16 view .LVU69
	j	.L6		#
.LVL18:
.L9:
	.loc 1 51 16 view .LVU70
.LBE24:
.LBE21:
	.loc 1 54 5 is_stmt 1 view .LVU71
	.loc 1 54 10 view .LVU72
	.loc 1 54 15 view .LVU73
	.loc 1 54 47 view .LVU74
	.loc 1 54 52 view .LVU75
	.loc 1 54 133 discriminator 2 view .LVU76
	.loc 1 54 133 discriminator 6 view .LVU77
	.loc 1 54 133 discriminator 10 view .LVU78
.LBB27:
	.loc 1 54 135 discriminator 14 view .LVU79
.LBB28:
	.loc 1 54 160 discriminator 14 view .LVU80
	.loc 1 54 195 discriminator 14 view .LVU81
	.loc 1 54 235 view .LVU82
.LBE28:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:54:     ESP_LOGI(TAG, "LX200 на разъёме USB (порт /dev/cu.usbmodem... на Mac)");
	.loc 1 54 142 is_stmt 0 discriminator 14 view .LVU83
	call8	esp_log_timestamp		#
.LVL19:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:54:     ESP_LOGI(TAG, "LX200 на разъёме USB (порт /dev/cu.usbmodem... на Mac)");
	.loc 1 54 142 discriminator 17 view .LVU84
	l32r	a11, .LC5	#, tmp67
	mov.n	a14, a11	#, tmp67
	mov.n	a13, a10	#, _34
	l32r	a12, .LC14	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL20:
	.loc 1 54 47 is_stmt 1 view .LVU85
	.loc 1 54 10 view .LVU86
.LBE27:
	.loc 1 54 5 view .LVU87
	.loc 1 55 5 view .LVU88
.L6:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp:56: }
	.loc 1 56 1 is_stmt 0 view .LVU89
	retw.n	
.LFE103:
	.size	_Z15lx200_usb_startv, .-_Z15lx200_usb_startv
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
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.byte	0x4
	.4byte	.LCFI0-.LFB102
	.byte	0xe
	.uleb128 0xe0
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.byte	0x4
	.4byte	.LCFI1-.LFB103
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 3 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/machine/_default_types.h"
	.file 4 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/lib/gcc/xtensa-esp-elf/15.2.0/include/stddef.h"
	.file 5 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/sys/_stdint.h"
	.file 6 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/stdint.h"
	.file 7 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_common/include/esp_err.h"
	.file 8 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_driver_usb_serial_jtag/include/driver/usb_serial_jtag.h"
	.file 9 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_level.h"
	.file 10 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_config.h"
	.file 11 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_args.h"
	.file 12 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/projdefs.h"
	.file 13 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h"
	.file 14 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/cstddef"
	.file 15 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/cstdint"
	.file 16 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/xtensa-esp-elf/include/c++/15.2.0/xtensa-esp-elf/esp32s3/no-rtti/bits/c++config.h"
	.file 17 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.h"
	.file 18 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/esp_additions/include/freertos/idf_additions.h"
	.file 19 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log.h"
	.file 20 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_timestamp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcae
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x4
	.4byte	.LASF129
	.4byte	.LASF130
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x3
	.byte	0xd2
	.byte	0x15
	.4byte	0x31
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x3
	.byte	0xd7
	.byte	0x17
	.4byte	0x44
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0xdb
	.byte	0x13
	.4byte	0x57
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0xe0
	.byte	0x1c
	.4byte	0x6a
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0xe4
	.byte	0x12
	.4byte	0x7d
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0xe9
	.byte	0x1b
	.4byte	0x90
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0xed
	.byte	0x17
	.4byte	0xa3
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0xf2
	.byte	0x20
	.4byte	0xb6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0xf6
	.byte	0x15
	.4byte	0x31
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0xf8
	.byte	0x17
	.4byte	0x44
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x110
	.byte	0x13
	.4byte	0x57
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x112
	.byte	0x1c
	.4byte	0x6a
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x126
	.byte	0x12
	.4byte	0x7d
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x128
	.byte	0x1b
	.4byte	0x90
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x3
	.2byte	0x138
	.byte	0x17
	.4byte	0xa3
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x3
	.2byte	0x13a
	.byte	0x20
	.4byte	0xb6
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x3
	.2byte	0x146
	.byte	0x17
	.4byte	0xa3
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x3
	.2byte	0x14e
	.byte	0x20
	.4byte	0xb6
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x3
	.2byte	0x156
	.byte	0xd
	.4byte	0x14a
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x3
	.2byte	0x158
	.byte	0x16
	.4byte	0x15e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF28
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x4
	.byte	0xe5
	.byte	0x16
	.4byte	0x15e
	.uleb128 0x6
	.byte	0x10
	.byte	0x8
	.byte	0x4
	.2byte	0x1b8
	.byte	0x10
	.4byte	.LASF131
	.4byte	0x19f
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x1b9
	.byte	0xd
	.4byte	0xa3
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x1ba
	.byte	0xf
	.4byte	0x19f
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF32
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x4
	.2byte	0x1c3
	.byte	0x3
	.4byte	0x171
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x5
	.byte	0x12
	.byte	0x12
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x5
	.byte	0x16
	.byte	0x13
	.4byte	0x38
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x5
	.byte	0x1e
	.byte	0x13
	.4byte	0x4b
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x5
	.byte	0x22
	.byte	0x14
	.4byte	0x5e
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x5
	.byte	0x2a
	.byte	0x13
	.4byte	0x71
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x5
	.byte	0x2e
	.byte	0x14
	.4byte	0x84
	.uleb128 0x9
	.4byte	0x1f0
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x5
	.byte	0x36
	.byte	0x13
	.4byte	0x97
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x5
	.byte	0x3a
	.byte	0x14
	.4byte	0xaa
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x5
	.byte	0x41
	.byte	0x14
	.4byte	0x123
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x5
	.byte	0x46
	.byte	0x15
	.4byte	0x130
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x5
	.byte	0x4b
	.byte	0x14
	.4byte	0x13d
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x5
	.byte	0x50
	.byte	0x15
	.4byte	0x151
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x6
	.byte	0x14
	.byte	0x18
	.4byte	0xbd
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x6
	.byte	0x15
	.byte	0x19
	.4byte	0xc9
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x6
	.byte	0x1a
	.byte	0x19
	.4byte	0xd5
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x6
	.byte	0x1b
	.byte	0x1a
	.4byte	0xe2
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x6
	.byte	0x20
	.byte	0x19
	.4byte	0xef
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x6
	.byte	0x21
	.byte	0x1a
	.4byte	0xfc
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x6
	.byte	0x26
	.byte	0x19
	.4byte	0x109
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x6
	.byte	0x27
	.byte	0x1a
	.4byte	0x116
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x6
	.byte	0x32
	.byte	0xf
	.4byte	0x14a
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x6
	.byte	0x33
	.byte	0x18
	.4byte	0x15e
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x6
	.byte	0x3c
	.byte	0xf
	.4byte	0x14a
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x6
	.byte	0x3d
	.byte	0x18
	.4byte	0x15e
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x6
	.byte	0x46
	.byte	0xf
	.4byte	0x14a
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x6
	.byte	0x47
	.byte	0x18
	.4byte	0x15e
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x6
	.byte	0x50
	.byte	0x19
	.4byte	0xa3
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x6
	.byte	0x51
	.byte	0x22
	.4byte	0xb6
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x9
	.4byte	0x309
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF61
	.uleb128 0x9
	.4byte	0x310
	.uleb128 0xb
	.byte	0x4
	.4byte	0x310
	.uleb128 0xb
	.byte	0x4
	.4byte	0x317
	.uleb128 0x9
	.4byte	0x322
	.uleb128 0xb
	.byte	0x4
	.4byte	0x333
	.uleb128 0xc
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x7
	.byte	0x13
	.byte	0xd
	.4byte	0x14a
	.uleb128 0xd
	.byte	0x8
	.byte	0x8
	.byte	0x14
	.byte	0x10
	.4byte	.LASF74
	.4byte	0x368
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x8
	.byte	0x15
	.byte	0xe
	.4byte	0x1f0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x8
	.byte	0x16
	.byte	0xe
	.4byte	0x1f0
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x8
	.byte	0x17
	.byte	0x3
	.4byte	0x340
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.4byte	0x15e
	.byte	0x9
	.byte	0x14
	.byte	0xe
	.4byte	.LASF86
	.4byte	0x3b1
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x9
	.byte	0x1c
	.byte	0x3
	.4byte	0x374
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.byte	0x77
	.byte	0x10
	.4byte	.LASF75
	.4byte	0x46d
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.byte	0x78
	.byte	0xb
	.4byte	0x466
	.uleb128 0x12
	.byte	0x4
	.byte	0xa
	.byte	0x79
	.byte	0x10
	.4byte	0x44d
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0xa
	.byte	0x7a
	.byte	0x1d
	.4byte	0x3b1
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0xa
	.byte	0x7b
	.byte	0x16
	.4byte	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0xa
	.byte	0x7c
	.byte	0x16
	.4byte	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0xa
	.byte	0x7d
	.byte	0x16
	.4byte	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0xa
	.byte	0x7e
	.byte	0x16
	.4byte	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0xa
	.byte	0x7f
	.byte	0x16
	.4byte	0x1f0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0xa
	.byte	0x80
	.byte	0x16
	.4byte	0x1f0
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0xa
	.byte	0x81
	.byte	0xb
	.4byte	0x3d3
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0xa
	.byte	0x82
	.byte	0x12
	.4byte	0x1f0
	.byte	0
	.uleb128 0x15
	.4byte	0x3ca
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xa
	.byte	0x84
	.byte	0x3
	.4byte	0x3bd
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.4byte	0x15e
	.byte	0xb
	.byte	0x24
	.byte	0xe
	.4byte	.LASF87
	.4byte	0x4a4
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xb
	.byte	0x29
	.byte	0x3
	.4byte	0x479
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0xc
	.byte	0x28
	.byte	0x11
	.4byte	0x4bc
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4c2
	.uleb128 0x16
	.4byte	0x4cd
	.uleb128 0x17
	.4byte	0x309
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF94
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xd
	.byte	0x52
	.byte	0xd
	.4byte	0x14a
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xd
	.byte	0x53
	.byte	0x16
	.4byte	0x15e
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xd
	.byte	0x59
	.byte	0x12
	.4byte	0x1f0
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x2
	.byte	0x5d
	.byte	0x26
	.4byte	0x504
	.uleb128 0xb
	.byte	0x4
	.4byte	0x50a
	.uleb128 0x18
	.4byte	.LASF133
	.uleb128 0x19
	.string	"std"
	.byte	0x10
	.2byte	0x150
	.byte	0xb
	.4byte	0x617
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0x10
	.2byte	0x173
	.byte	0x41
	.uleb128 0x1b
	.byte	0x10
	.2byte	0x173
	.byte	0x41
	.4byte	0x51c
	.uleb128 0x1c
	.byte	0xe
	.byte	0x42
	.byte	0xb
	.4byte	0x1a6
	.uleb128 0x1c
	.byte	0xf
	.byte	0x35
	.byte	0xb
	.4byte	0x1b4
	.uleb128 0x1c
	.byte	0xf
	.byte	0x36
	.byte	0xb
	.4byte	0x1cc
	.uleb128 0x1c
	.byte	0xf
	.byte	0x37
	.byte	0xb
	.4byte	0x1e4
	.uleb128 0x1c
	.byte	0xf
	.byte	0x38
	.byte	0xb
	.4byte	0x201
	.uleb128 0x1c
	.byte	0xf
	.byte	0x3a
	.byte	0xb
	.4byte	0x2a9
	.uleb128 0x1c
	.byte	0xf
	.byte	0x3b
	.byte	0xb
	.4byte	0x2c1
	.uleb128 0x1c
	.byte	0xf
	.byte	0x3c
	.byte	0xb
	.4byte	0x2d9
	.uleb128 0x1c
	.byte	0xf
	.byte	0x3d
	.byte	0xb
	.4byte	0x2f1
	.uleb128 0x1c
	.byte	0xf
	.byte	0x3f
	.byte	0xb
	.4byte	0x249
	.uleb128 0x1c
	.byte	0xf
	.byte	0x40
	.byte	0xb
	.4byte	0x261
	.uleb128 0x1c
	.byte	0xf
	.byte	0x41
	.byte	0xb
	.4byte	0x279
	.uleb128 0x1c
	.byte	0xf
	.byte	0x42
	.byte	0xb
	.4byte	0x291
	.uleb128 0x1c
	.byte	0xf
	.byte	0x44
	.byte	0xb
	.4byte	0x219
	.uleb128 0x1c
	.byte	0xf
	.byte	0x45
	.byte	0xb
	.4byte	0x231
	.uleb128 0x1c
	.byte	0xf
	.byte	0x47
	.byte	0xb
	.4byte	0x1c0
	.uleb128 0x1c
	.byte	0xf
	.byte	0x48
	.byte	0xb
	.4byte	0x1d8
	.uleb128 0x1c
	.byte	0xf
	.byte	0x49
	.byte	0xb
	.4byte	0x1f0
	.uleb128 0x1c
	.byte	0xf
	.byte	0x4a
	.byte	0xb
	.4byte	0x20d
	.uleb128 0x1c
	.byte	0xf
	.byte	0x4c
	.byte	0xb
	.4byte	0x2b5
	.uleb128 0x1c
	.byte	0xf
	.byte	0x4d
	.byte	0xb
	.4byte	0x2cd
	.uleb128 0x1c
	.byte	0xf
	.byte	0x4e
	.byte	0xb
	.4byte	0x2e5
	.uleb128 0x1c
	.byte	0xf
	.byte	0x4f
	.byte	0xb
	.4byte	0x2fd
	.uleb128 0x1c
	.byte	0xf
	.byte	0x51
	.byte	0xb
	.4byte	0x255
	.uleb128 0x1c
	.byte	0xf
	.byte	0x52
	.byte	0xb
	.4byte	0x26d
	.uleb128 0x1c
	.byte	0xf
	.byte	0x53
	.byte	0xb
	.4byte	0x285
	.uleb128 0x1c
	.byte	0xf
	.byte	0x54
	.byte	0xb
	.4byte	0x29d
	.uleb128 0x1c
	.byte	0xf
	.byte	0x56
	.byte	0xb
	.4byte	0x225
	.uleb128 0x1c
	.byte	0xf
	.byte	0x57
	.byte	0xb
	.4byte	0x23d
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF99
	.byte	0x10
	.2byte	0x175
	.byte	0xb
	.4byte	0x637
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0x10
	.2byte	0x177
	.byte	0x41
	.uleb128 0x1b
	.byte	0x10
	.2byte	0x177
	.byte	0x41
	.4byte	0x624
	.byte	0
	.uleb128 0xd
	.byte	0x38
	.byte	0x11
	.byte	0x17
	.byte	0x10
	.4byte	.LASF101
	.4byte	0x693
	.uleb128 0x1e
	.string	"buf"
	.byte	0x11
	.byte	0x18
	.byte	0xa
	.4byte	0x693
	.byte	0
	.uleb128 0x1e
	.string	"len"
	.byte	0x11
	.byte	0x19
	.byte	0xd
	.4byte	0x1c0
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x11
	.byte	0x1a
	.byte	0xa
	.4byte	0x4cd
	.byte	0x21
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x11
	.byte	0x1b
	.byte	0xd
	.4byte	0x201
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x11
	.byte	0x1c
	.byte	0xa
	.4byte	0x4cd
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x11
	.byte	0x1d
	.byte	0x11
	.4byte	0x322
	.byte	0x34
	.byte	0
	.uleb128 0x1f
	.4byte	0x310
	.4byte	0x6a3
	.uleb128 0x20
	.4byte	0x15e
	.byte	0x1f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0x11
	.byte	0x1e
	.byte	0x3
	.4byte	0x637
	.uleb128 0x21
	.string	"TAG"
	.byte	0x1
	.byte	0xa
	.byte	0x14
	.4byte	0x322
	.uleb128 0x22
	.4byte	.LASF107
	.byte	0x12
	.byte	0x3f
	.byte	0x10
	.4byte	0x4d4
	.4byte	0x6ef
	.uleb128 0x17
	.4byte	0x4b0
	.uleb128 0x17
	.4byte	0x322
	.uleb128 0x17
	.4byte	0x1f0
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0x4e0
	.uleb128 0x17
	.4byte	0x6ef
	.uleb128 0x17
	.4byte	0x4d4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4f8
	.uleb128 0x9
	.4byte	0x6ef
	.uleb128 0x22
	.4byte	.LASF108
	.byte	0x8
	.byte	0x49
	.byte	0x5
	.4byte	0x14a
	.4byte	0x71a
	.uleb128 0x17
	.4byte	0x32d
	.uleb128 0x17
	.4byte	0x165
	.uleb128 0x17
	.4byte	0x1f0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF134
	.byte	0x11
	.byte	0x29
	.byte	0x8
	.4byte	.LASF135
	.4byte	0x165
	.4byte	0x743
	.uleb128 0x17
	.4byte	0x743
	.uleb128 0x17
	.4byte	0x1c0
	.uleb128 0x17
	.4byte	0x31c
	.uleb128 0x17
	.4byte	0x165
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6a3
	.uleb128 0x22
	.4byte	.LASF109
	.byte	0x8
	.byte	0x3a
	.byte	0x5
	.4byte	0x14a
	.4byte	0x769
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0x1f0
	.uleb128 0x17
	.4byte	0x1f0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF110
	.byte	0x11
	.byte	0x21
	.byte	0x6
	.4byte	.LASF136
	.4byte	0x784
	.uleb128 0x17
	.4byte	0x743
	.uleb128 0x17
	.4byte	0x322
	.byte	0
	.uleb128 0x25
	.4byte	.LASF121
	.byte	0x13
	.byte	0x26
	.byte	0x6
	.4byte	0x7a1
	.uleb128 0x17
	.4byte	0x46d
	.uleb128 0x17
	.4byte	0x322
	.uleb128 0x17
	.4byte	0x322
	.uleb128 0x26
	.byte	0
	.uleb128 0x22
	.4byte	.LASF111
	.byte	0x7
	.byte	0x3a
	.byte	0xd
	.4byte	0x322
	.4byte	0x7b7
	.uleb128 0x17
	.4byte	0x334
	.byte	0
	.uleb128 0x27
	.4byte	.LASF137
	.byte	0x14
	.byte	0x26
	.byte	0xa
	.4byte	0x1f0
	.uleb128 0x22
	.4byte	.LASF112
	.byte	0x8
	.byte	0x2e
	.byte	0xb
	.4byte	0x334
	.4byte	0x7d9
	.uleb128 0x17
	.4byte	0x7d9
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x368
	.uleb128 0x28
	.4byte	.LASF138
	.byte	0x1
	.byte	0x25
	.byte	0xb
	.4byte	.LASF139
	.4byte	0x334
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xabc
	.uleb128 0x29
	.string	"cfg"
	.byte	0x1
	.byte	0x26
	.byte	0x25
	.4byte	0x368
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.byte	0x2b
	.byte	0xf
	.4byte	0x334
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2b
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x83a
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x2d
	.byte	0x9e
	.4byte	0x46d
	.byte	0
	.uleb128 0x2d
	.4byte	0x84c
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x2d
	.byte	0xe0
	.4byte	0x46d
	.byte	0
	.uleb128 0x2d
	.4byte	0x85e
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x2d
	.byte	0xe1
	.4byte	0x46d
	.byte	0
	.uleb128 0x2d
	.4byte	0x870
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x2d
	.byte	0xe3
	.4byte	0x46d
	.byte	0
	.uleb128 0x2d
	.4byte	0x882
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x2d
	.byte	0xa8
	.4byte	0x46d
	.byte	0
	.uleb128 0x2b
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0x89c
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x32
	.byte	0x9e
	.4byte	0x46d
	.byte	0
	.uleb128 0x2d
	.4byte	0x8ae
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x32
	.byte	0xe1
	.4byte	0x46d
	.byte	0
	.uleb128 0x2d
	.4byte	0x8c0
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x32
	.byte	0xe2
	.4byte	0x46d
	.byte	0
	.uleb128 0x2d
	.4byte	0x8d2
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x32
	.byte	0xe4
	.4byte	0x46d
	.byte	0
	.uleb128 0x2d
	.4byte	0x8e4
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x32
	.byte	0xa9
	.4byte	0x46d
	.byte	0
	.uleb128 0x2d
	.4byte	0x8f6
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x36
	.byte	0x98
	.4byte	0x46d
	.byte	0
	.uleb128 0x2d
	.4byte	0x908
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x36
	.byte	0xe8
	.4byte	0x46d
	.byte	0
	.uleb128 0x2d
	.4byte	0x91a
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x36
	.byte	0xe9
	.4byte	0x46d
	.byte	0
	.uleb128 0x2d
	.4byte	0x92c
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x36
	.byte	0xeb
	.4byte	0x46d
	.byte	0
	.uleb128 0x2b
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0x946
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x36
	.byte	0xb1
	.4byte	0x46d
	.byte	0
	.uleb128 0x2e
	.4byte	0xbf5
	.4byte	.LBI22
	.byte	.LVU47
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x31
	.byte	0x14
	.4byte	0x9ec
	.uleb128 0x2f
	.4byte	0xc07
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2f
	.4byte	0xc14
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2f
	.4byte	0xc21
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x2f
	.4byte	0xc2e
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2f
	.4byte	0xc3b
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2f
	.4byte	0xc48
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x30
	.4byte	.LVL14
	.4byte	0x6bb
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL14lx200_usb_taskPv
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL8
	.4byte	0x7c3
	.4byte	0xa00
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x33
	.4byte	.LVL10
	.4byte	0x7b7
	.uleb128 0x32
	.4byte	.LVL11
	.4byte	0x7a1
	.4byte	0xa1d
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL12
	.4byte	0x784
	.4byte	0xa51
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x33
	.4byte	.LVL15
	.4byte	0x7b7
	.uleb128 0x32
	.4byte	.LVL16
	.4byte	0x784
	.4byte	0xa88
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x33
	.4byte	.LVL19
	.4byte	0x7b7
	.uleb128 0x30
	.4byte	.LVL20
	.4byte	0x784
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF140
	.byte	0x1
	.byte	0x10
	.byte	0xd
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd5
	.uleb128 0x35
	.4byte	0x309
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.string	"ctx"
	.byte	0x1
	.byte	0x11
	.byte	0x11
	.4byte	0x6a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x29
	.string	"rx"
	.byte	0x1
	.byte	0x14
	.byte	0xd
	.4byte	0xbd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x36
	.4byte	.LASF114
	.byte	0x1
	.byte	0x15
	.byte	0xa
	.4byte	0xbe5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0xbba
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.byte	0x19
	.byte	0xd
	.4byte	0x14a
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2b
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0xb9d
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.byte	0x1b
	.byte	0x12
	.4byte	0x14a
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x37
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.byte	0x1c
	.byte	0x14
	.4byte	0x165
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x32
	.4byte	.LVL4
	.4byte	0x71a
	.4byte	0xb85
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x30
	.4byte	.LVL6
	.4byte	0x6fa
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL1
	.4byte	0x749
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL0
	.4byte	0x769
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x1c0
	.4byte	0xbe5
	.uleb128 0x20
	.4byte	0x15e
	.byte	0x3f
	.byte	0
	.uleb128 0x1f
	.4byte	0x310
	.4byte	0xbf5
	.uleb128 0x20
	.4byte	0x15e
	.byte	0x3f
	.byte	0
	.uleb128 0x38
	.4byte	.LASF141
	.byte	0x2
	.2byte	0x173
	.byte	0x10
	.4byte	0x4d4
	.byte	0x3
	.4byte	0xc87
	.uleb128 0x39
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x173
	.byte	0x2c
	.4byte	0x4b0
	.uleb128 0x39
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x174
	.byte	0x30
	.4byte	0x328
	.uleb128 0x39
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x175
	.byte	0x2c
	.4byte	0x1fc
	.uleb128 0x39
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x176
	.byte	0x2a
	.4byte	0x30b
	.uleb128 0x39
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x177
	.byte	0x29
	.4byte	0x4e0
	.uleb128 0x39
	.4byte	.LASF120
	.byte	0x2
	.2byte	0x178
	.byte	0x32
	.4byte	0x6f5
	.uleb128 0x3a
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x17e
	.byte	0x1b
	.4byte	0x4d4
	.uleb128 0x17
	.4byte	0x4b0
	.uleb128 0x17
	.4byte	0x322
	.uleb128 0x17
	.4byte	0x1f0
	.uleb128 0x17
	.4byte	0x309
	.uleb128 0x17
	.4byte	0x4e0
	.uleb128 0x17
	.4byte	0x6ef
	.uleb128 0x17
	.4byte	0x4d4
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF122
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF123
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF124
	.uleb128 0x3
	.byte	0x1
	.byte	0x10
	.4byte	.LASF125
	.uleb128 0x3
	.byte	0x2
	.byte	0x10
	.4byte	.LASF126
	.uleb128 0x3
	.byte	0x4
	.byte	0x10
	.4byte	.LASF127
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x13
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x89
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS3:
	.uleb128 .LVU27
	.uleb128 .LVU69
	.uleb128 .LVU70
	.uleb128 .LVU89
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU47
	.uleb128 .LVU51
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14lx200_usb_taskPv
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU47
	.uleb128 .LVU51
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x3
	.4byte	.LC4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU47
	.uleb128 .LVU51
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU47
	.uleb128 .LVU51
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU47
	.uleb128 .LVU51
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 .LVU9
	.uleb128 0
.LLST0:
	.4byte	.LVL2
	.4byte	.LFE102
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU10
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE102
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU15
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU19
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB102
	.4byte	.LFE102
	.4byte	.LFB103
	.4byte	.LFE103
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"__max_align_ll"
.LASF5:
	.string	"short int"
.LASF140:
	.string	"lx200_usb_task"
.LASF141:
	.string	"xTaskCreate"
.LASF29:
	.string	"size_t"
.LASF44:
	.string	"uintptr_t"
.LASF100:
	.string	"__cxx11"
.LASF40:
	.string	"uint64_t"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"__uint8_t"
.LASF111:
	.string	"esp_err_to_name"
.LASF76:
	.string	"log_level"
.LASF63:
	.string	"tx_buffer_size"
.LASF15:
	.string	"long long unsigned int"
.LASF12:
	.string	"__int64_t"
.LASF112:
	.string	"usb_serial_jtag_driver_install"
.LASF58:
	.string	"uint_fast32_t"
.LASF22:
	.string	"__int_least64_t"
.LASF75:
	.string	"16esp_log_config_t"
.LASF114:
	.string	"reply"
.LASF35:
	.string	"int16_t"
.LASF70:
	.string	"ESP_LOG_DEBUG"
.LASF13:
	.string	"long long int"
.LASF42:
	.string	"uintmax_t"
.LASF0:
	.string	"__int8_t"
.LASF108:
	.string	"usb_serial_jtag_write_bytes"
.LASF107:
	.string	"xTaskCreatePinnedToCore"
.LASF9:
	.string	"long int"
.LASF133:
	.string	"tskTaskControlBlock"
.LASF90:
	.string	"ESP_LOG_ARGS_TYPE_64BITS"
.LASF49:
	.string	"int_least32_t"
.LASF98:
	.string	"TaskHandle_t"
.LASF97:
	.string	"TickType_t"
.LASF53:
	.string	"int_fast8_t"
.LASF36:
	.string	"uint16_t"
.LASF122:
	.string	"double"
.LASF86:
	.string	"15esp_log_level_t"
.LASF95:
	.string	"BaseType_t"
.LASF125:
	.string	"char8_t"
.LASF79:
	.string	"dis_color"
.LASF117:
	.string	"usStackDepth"
.LASF131:
	.string	"11max_align_t"
.LASF89:
	.string	"ESP_LOG_ARGS_TYPE_32BITS"
.LASF26:
	.string	"__intptr_t"
.LASF4:
	.string	"__int16_t"
.LASF50:
	.string	"uint_least32_t"
.LASF18:
	.string	"__int_least16_t"
.LASF21:
	.string	"__uint_least32_t"
.LASF101:
	.string	"11lx200_ctx_t"
.LASF120:
	.string	"pxCreatedTask"
.LASF11:
	.string	"long unsigned int"
.LASF118:
	.string	"pvParameters"
.LASF105:
	.string	"name"
.LASF84:
	.string	"data"
.LASF17:
	.string	"__uint_least8_t"
.LASF24:
	.string	"__intmax_t"
.LASF60:
	.string	"uint_fast64_t"
.LASF124:
	.string	"wchar_t"
.LASF43:
	.string	"intptr_t"
.LASF136:
	.string	"_Z14lx200_ctx_initP11lx200_ctx_tPKc"
.LASF138:
	.string	"lx200_usb_start"
.LASF8:
	.string	"__int32_t"
.LASF92:
	.string	"esp_log_args_type_t"
.LASF132:
	.string	"max_align_t"
.LASF72:
	.string	"ESP_LOG_MAX"
.LASF69:
	.string	"ESP_LOG_INFO"
.LASF134:
	.string	"lx200_feed"
.LASF45:
	.string	"int_least8_t"
.LASF83:
	.string	"opts"
.LASF80:
	.string	"dis_timestamp"
.LASF57:
	.string	"int_fast32_t"
.LASF51:
	.string	"int_least64_t"
.LASF115:
	.string	"pxTaskCode"
.LASF109:
	.string	"usb_serial_jtag_read_bytes"
.LASF73:
	.string	"esp_log_level_t"
.LASF41:
	.string	"intmax_t"
.LASF104:
	.string	"long_format"
.LASF82:
	.string	"reserved"
.LASF106:
	.string	"lx200_ctx_t"
.LASF14:
	.string	"__uint64_t"
.LASF65:
	.string	"usb_serial_jtag_driver_config_t"
.LASF123:
	.string	"float"
.LASF52:
	.string	"uint_least64_t"
.LASF56:
	.string	"uint_fast16_t"
.LASF130:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/build"
.LASF91:
	.string	"ESP_LOG_ARGS_TYPE_POINTER"
.LASF94:
	.string	"bool"
.LASF54:
	.string	"uint_fast8_t"
.LASF113:
	.string	"__esp_log_config"
.LASF23:
	.string	"__uint_least64_t"
.LASF37:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF74:
	.string	"31usb_serial_jtag_driver_config_t"
.LASF81:
	.string	"binary_mode"
.LASF137:
	.string	"esp_log_timestamp"
.LASF67:
	.string	"ESP_LOG_ERROR"
.LASF126:
	.string	"char16_t"
.LASF27:
	.string	"__uintptr_t"
.LASF93:
	.string	"TaskFunction_t"
.LASF64:
	.string	"rx_buffer_size"
.LASF103:
	.string	"started_us"
.LASF127:
	.string	"char32_t"
.LASF47:
	.string	"int_least16_t"
.LASF110:
	.string	"lx200_ctx_init"
.LASF55:
	.string	"int_fast16_t"
.LASF85:
	.string	"esp_log_config_t"
.LASF38:
	.string	"uint32_t"
.LASF121:
	.string	"esp_log"
.LASF32:
	.string	"long double"
.LASF61:
	.string	"char"
.LASF71:
	.string	"ESP_LOG_VERBOSE"
.LASF78:
	.string	"require_formatting"
.LASF28:
	.string	"unsigned int"
.LASF6:
	.string	"__uint16_t"
.LASF66:
	.string	"ESP_LOG_NONE"
.LASF139:
	.string	"_Z15lx200_usb_startv"
.LASF46:
	.string	"uint_least8_t"
.LASF48:
	.string	"uint_least16_t"
.LASF10:
	.string	"__uint32_t"
.LASF87:
	.string	"19esp_log_args_type_t"
.LASF25:
	.string	"__uintmax_t"
.LASF102:
	.string	"collecting"
.LASF20:
	.string	"__int_least32_t"
.LASF19:
	.string	"__uint_least16_t"
.LASF7:
	.string	"short unsigned int"
.LASF59:
	.string	"int_fast64_t"
.LASF33:
	.string	"int8_t"
.LASF68:
	.string	"ESP_LOG_WARN"
.LASF62:
	.string	"esp_err_t"
.LASF128:
	.ascii	"GNU C++26 15.2.0 -ftls-model=local-exec -mdynconfig=xtensa_e"
	.ascii	"sp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gn"
	.string	"u++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec"
.LASF16:
	.string	"__int_least8_t"
.LASF34:
	.string	"uint8_t"
.LASF88:
	.string	"ESP_LOG_ARGS_TYPE_NONE"
.LASF129:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.cpp"
.LASF39:
	.string	"int64_t"
.LASF119:
	.string	"uxPriority"
.LASF116:
	.string	"pcName"
.LASF77:
	.string	"constrained_env"
.LASF96:
	.string	"UBaseType_t"
.LASF31:
	.string	"__max_align_ld"
.LASF135:
	.string	"_Z10lx200_feedP11lx200_ctx_thPcj"
.LASF99:
	.string	"__gnu_cxx"
	.ident	"GCC: (crosstool-NG esp-15.2.0_20251204) 15.2.0"
