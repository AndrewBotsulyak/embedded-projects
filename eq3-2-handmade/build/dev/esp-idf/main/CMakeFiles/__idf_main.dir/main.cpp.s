	.file	"main.cpp"
# GNU C++26 (crosstool-NG esp-15.2.0_20251204) version 15.2.0 (xtensa-esp-elf)
#	compiled by GNU C version Debian Clang 19.1.7 (3+b1), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -ftls-model=local-exec -mdynconfig=xtensa_esp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gnu++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec
	.text
.Ltext0:
	.file 1 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp"
	.section	.rodata.app_main.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"main.cpp"
	.align	4
.LC3:
	.base64	"RSAoJWx1KSAlczogYXBwX21haW46INC00YDQsNC50LLQtdGAIFJBINC90LUg0L3QsNGB0YLRgNC+0LXQvTogJXMKAA=="
	.align	4
.LC6:
	.string	"monitor_log_task"
	.align	4
.LC10:
	.base64	"RSAoJWx1KSAlczogYXBwX21haW46INC90LUg0YPQtNCw0LvQvtGB0Ywg0YHQvtC30LTQsNGC0Ywg0LfQsNC00LDRh9GDIG1vbml0b3JfbG9nX3Rhc2sKAA=="
	.align	4
.LC13:
	.string	"tmc_watchdog"
	.align	4
.LC16:
	.base64	"RSAoJWx1KSAlczogYXBwX21haW46INC90LUg0YPQtNCw0LvQvtGB0Ywg0YHQvtC30LTQsNGC0Ywg0LfQsNC00LDRh9GDIHRtY193YXRjaGRvZwoA"
	.section	.text.app_main,"ax",@progbits
	.literal_position
	.literal .LC0, 131077
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC5, 2048
	.literal .LC7, .LC6
	.literal .LC8, _Z16monitor_log_taskPv
	.literal .LC9, 2147483647
	.literal .LC11, .LC10
	.literal .LC12, 4096
	.literal .LC14, .LC13
	.literal .LC15, _Z17tmc_watchdog_taskPv
	.literal .LC17, .LC16
	.align	4
	.global	app_main
	.type	app_main, @function
app_main:
.LFB99:
	.loc 1 30 1 view -0
	entry	sp, 48	#
.LCFI0:
	.loc 1 31 5 view .LVU1
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:31:     tmc_uart_init();
	.loc 1 31 18 is_stmt 0 view .LVU2
	call8	_Z13tmc_uart_initv		#
.LVL0:
	.loc 1 34 5 is_stmt 1 view .LVU3
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:34:     esp_err_t err_drivers = handle_drivers_connection();
	.loc 1 34 54 is_stmt 0 view .LVU4
	call8	_Z25handle_drivers_connectionv		#
.LVL1:
	mov.n	a7, a10	# err_drivers, err_drivers
.LVL2:
	.loc 1 36 5 is_stmt 1 view .LVU5
.LBB18:
	l32r	a8, .LC0	#, tmp56
	bne	a10, a8, .L2	# err_drivers, tmp56,
.LBB19:
	.loc 1 37 9 view .LVU6
	.loc 1 37 14 view .LVU7
	.loc 1 37 19 view .LVU8
	.loc 1 37 70 view .LVU9
	.loc 1 37 75 view .LVU10
.LBB20:
	.loc 1 37 134 discriminator 1 view .LVU11
.LBB21:
	.loc 1 37 159 discriminator 1 view .LVU12
	.loc 1 37 194 discriminator 1 view .LVU13
	.loc 1 37 235 view .LVU14
.LBE21:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:37:         ESP_LOGE(TAG, "app_main: драйвер RA не настроен: %s", tmc_err_to_name(err_drivers));
	.loc 1 37 141 is_stmt 0 discriminator 1 view .LVU15
	call8	esp_log_timestamp		#
.LVL3:
	mov.n	a6, a10	# _2, _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:37:         ESP_LOGE(TAG, "app_main: драйвер RA не настроен: %s", tmc_err_to_name(err_drivers));
	.loc 1 37 141 discriminator 3 view .LVU16
	mov.n	a10, a7	#, err_drivers
	call8	_Z15tmc_err_to_namei		#
.LVL4:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:37:         ESP_LOGE(TAG, "app_main: драйвер RA не настроен: %s", tmc_err_to_name(err_drivers));
	.loc 1 37 141 discriminator 4 view .LVU17
	l32r	a11, .LC2	#, tmp57
	mov.n	a15, a10	#, _4
	mov.n	a14, a11	#, tmp57
	mov.n	a13, a6	#, _2
	l32r	a12, .LC4	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL5:
	.loc 1 37 70 is_stmt 1 view .LVU18
	.loc 1 37 14 view .LVU19
.LBE20:
	.loc 1 37 9 view .LVU20
	.loc 1 38 9 view .LVU21
	j	.L1		#
.L2:
	.loc 1 38 9 is_stmt 0 view .LVU22
.LBE19:
.LBE18:
	.loc 1 40 5 is_stmt 1 view .LVU23
.LVL6:
	.loc 1 43 5 view .LVU24
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:43:     if (stepper_init() != ESP_OK) return;
	.loc 1 43 21 is_stmt 0 view .LVU25
	call8	_Z12stepper_initv		#
.LVL7:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:43:     if (stepper_init() != ESP_OK) return;
	.loc 1 43 5 discriminator 1 view .LVU26
	bnez.n	a10, .L1	# _20,
	.loc 1 44 5 is_stmt 1 view .LVU27
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:44:     tmc_driver_on(AXIS_RA);                // ENN = 0 + 200 мс → AT#1
	.loc 1 44 18 is_stmt 0 view .LVU28
	call8	_Z13tmc_driver_on6axis_t		#
.LVL8:
	.loc 1 45 5 is_stmt 1 view .LVU29
	bnez.n	a7, .L4	# err_drivers,
	.loc 1 46 9 view .LVU30
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:46:         tmc_driver_on(AXIS_DEC);           // ENN = 0 + 200 мс → AT#1 для DEC
	.loc 1 46 22 is_stmt 0 view .LVU31
	movi.n	a10, 1	#,
	call8	_Z13tmc_driver_on6axis_t		#
.LVL9:
.L4:
	.loc 1 49 5 is_stmt 1 view .LVU32
.LBB22:
.LBB23:
.LBI23:
	.file 2 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/task.h"
	.loc 2 371 16 view .LVU33
.LBB24:
	.loc 2 382 9 view .LVU34
	.loc 2 394 9 view .LVU35
# /Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/task.h:394:         return xTaskCreatePinnedToCore( pxTaskCode,
	.loc 2 394 39 is_stmt 0 view .LVU36
	l32r	a8, .LC9	#, tmp63
	s32i.n	a8, sp, 0	#, tmp63
	movi.n	a15, 0	#,
	movi.n	a14, 3	#,
	mov.n	a13, a15	#,
	l32r	a12, .LC5	#,
	l32r	a11, .LC7	#,
	l32r	a10, .LC8	#,
	call8	xTaskCreatePinnedToCore		#
.LVL10:
	.loc 2 394 39 view .LVU37
.LBE24:
.LBE23:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:49:     if(xTaskCreate(monitor_log_task, "monitor_log_task", 2048, nullptr, 3, nullptr) != pdPASS) {
	.loc 1 49 5 discriminator 1 view .LVU38
	beqi	a10, 1, .L5	# _5,,
.LBB25:
	.loc 1 50 9 is_stmt 1 view .LVU39
	.loc 1 50 14 view .LVU40
	.loc 1 50 19 view .LVU41
	.loc 1 50 70 view .LVU42
	.loc 1 50 75 view .LVU43
.LBB26:
	.loc 1 50 134 discriminator 1 view .LVU44
.LBB27:
	.loc 1 50 159 discriminator 1 view .LVU45
	.loc 1 50 194 discriminator 1 view .LVU46
	.loc 1 50 235 view .LVU47
.LBE27:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:50:         ESP_LOGE(TAG, "app_main: не удалось создать задачу monitor_log_task");
	.loc 1 50 141 is_stmt 0 discriminator 1 view .LVU48
	call8	esp_log_timestamp		#
.LVL11:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:50:         ESP_LOGE(TAG, "app_main: не удалось создать задачу monitor_log_task");
	.loc 1 50 141 discriminator 3 view .LVU49
	l32r	a11, .LC2	#, tmp64
	mov.n	a14, a11	#, tmp64
	mov.n	a13, a10	#, _22
	l32r	a12, .LC11	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL12:
	.loc 1 50 70 is_stmt 1 view .LVU50
	.loc 1 50 14 view .LVU51
.LBE26:
	.loc 1 50 9 view .LVU52
	.loc 1 51 9 view .LVU53
	j	.L1		#
.L5:
.LBE25:
.LBE22:
	.loc 1 56 5 view .LVU54
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:56:     tmc_watchdog_watch(AXIS_RA);
	.loc 1 56 23 is_stmt 0 view .LVU55
	movi.n	a10, 0	#,
	call8	_Z18tmc_watchdog_watch6axis_t		#
.LVL13:
	.loc 1 57 5 is_stmt 1 view .LVU56
	bnez.n	a7, .L6	# err_drivers,
	.loc 1 58 9 view .LVU57
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:58:         tmc_watchdog_watch(AXIS_DEC);
	.loc 1 58 27 is_stmt 0 view .LVU58
	movi.n	a10, 1	#,
	call8	_Z18tmc_watchdog_watch6axis_t		#
.LVL14:
.L6:
	.loc 1 61 5 is_stmt 1 view .LVU59
.LBB28:
.LBB29:
.LBI29:
	.loc 2 371 16 view .LVU60
.LBB30:
	.loc 2 382 9 view .LVU61
	.loc 2 394 9 view .LVU62
# /Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/task.h:394:         return xTaskCreatePinnedToCore( pxTaskCode,
	.loc 2 394 39 is_stmt 0 view .LVU63
	l32r	a8, .LC9	#, tmp70
	s32i.n	a8, sp, 0	#, tmp70
	movi.n	a15, 0	#,
	movi.n	a14, 0xa	#,
	mov.n	a13, a15	#,
	l32r	a12, .LC12	#,
	l32r	a11, .LC14	#,
	l32r	a10, .LC15	#,
	call8	xTaskCreatePinnedToCore		#
.LVL15:
	.loc 2 394 39 view .LVU64
.LBE30:
.LBE29:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:61:     if(xTaskCreate(tmc_watchdog_task, "tmc_watchdog", 4096, nullptr, 10, nullptr) != pdPASS) {
	.loc 1 61 5 discriminator 1 view .LVU65
	beqi	a10, 1, .L7	# _6,,
.LBB31:
	.loc 1 62 9 is_stmt 1 view .LVU66
	.loc 1 62 14 view .LVU67
	.loc 1 62 19 view .LVU68
	.loc 1 62 70 view .LVU69
	.loc 1 62 75 view .LVU70
.LBB32:
	.loc 1 62 134 discriminator 1 view .LVU71
.LBB33:
	.loc 1 62 159 discriminator 1 view .LVU72
	.loc 1 62 194 discriminator 1 view .LVU73
	.loc 1 62 235 view .LVU74
.LBE33:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:62:         ESP_LOGE(TAG, "app_main: не удалось создать задачу tmc_watchdog");
	.loc 1 62 141 is_stmt 0 discriminator 1 view .LVU75
	call8	esp_log_timestamp		#
.LVL16:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:62:         ESP_LOGE(TAG, "app_main: не удалось создать задачу tmc_watchdog");
	.loc 1 62 141 discriminator 3 view .LVU76
	l32r	a11, .LC2	#, tmp71
	mov.n	a14, a11	#, tmp71
	mov.n	a13, a10	#, _33
	l32r	a12, .LC17	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL17:
	.loc 1 62 70 is_stmt 1 view .LVU77
	.loc 1 62 14 view .LVU78
.LBE32:
	.loc 1 62 9 view .LVU79
	.loc 1 63 9 view .LVU80
	j	.L1		#
.L7:
.LBE31:
.LBE28:
	.loc 1 72 5 view .LVU81
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:72:     button_init();
	.loc 1 72 16 is_stmt 0 view .LVU82
	call8	_Z11button_initv		#
.LVL18:
	.loc 1 76 5 is_stmt 1 view .LVU83
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:76:     lx200_usb_start();
	.loc 1 76 20 is_stmt 0 view .LVU84
	call8	_Z15lx200_usb_startv		#
.LVL19:
.L1:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp:91: }
	.loc 1 91 1 view .LVU85
	retw.n	
.LFE99:
	.size	app_main, .-app_main
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
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.byte	0x4
	.4byte	.LCFI0-.LFB99
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 3 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/machine/_default_types.h"
	.file 4 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/sys/_stdint.h"
	.file 5 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/stdint.h"
	.file 6 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_common/include/esp_err.h"
	.file 7 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_level.h"
	.file 8 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_config.h"
	.file 9 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/projdefs.h"
	.file 10 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h"
	.file 11 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/cstdint"
	.file 12 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/xtensa-esp-elf/include/c++/15.2.0/xtensa-esp-elf/esp32s3/no-rtti/bits/c++config.h"
	.file 13 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h"
	.file 14 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h"
	.file 15 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.h"
	.file 16 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/soc/esp32s3/include/soc/clk_tree_defs.h"
	.file 17 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_hal_uart/include/hal/uart_types.h"
	.file 18 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/esp_additions/include/freertos/idf_additions.h"
	.file 19 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.h"
	.file 20 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.h"
	.file 21 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200_usb.h"
	.file 22 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.h"
	.file 23 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.h"
	.file 24 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_timestamp.h"
	.file 25 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.h"
	.file 26 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcd0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF172
	.byte	0x4
	.4byte	.LASF173
	.4byte	.LASF174
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x3
	.byte	0xd2
	.byte	0x15
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x3
	.byte	0xd7
	.byte	0x17
	.4byte	0x60
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0xdb
	.byte	0x13
	.4byte	0x73
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0xe0
	.byte	0x1c
	.4byte	0x86
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0xe4
	.byte	0x12
	.4byte	0x99
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0xe9
	.byte	0x1b
	.4byte	0xac
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0xed
	.byte	0x17
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0xf2
	.byte	0x20
	.4byte	0xcb
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0xf6
	.byte	0x15
	.4byte	0x4d
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0xf8
	.byte	0x17
	.4byte	0x60
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x110
	.byte	0x13
	.4byte	0x73
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x112
	.byte	0x1c
	.4byte	0x86
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x3
	.2byte	0x126
	.byte	0x12
	.4byte	0x99
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x3
	.2byte	0x128
	.byte	0x1b
	.4byte	0xac
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x3
	.2byte	0x138
	.byte	0x17
	.4byte	0x33
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x3
	.2byte	0x13a
	.byte	0x20
	.4byte	0xcb
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x3
	.2byte	0x146
	.byte	0x17
	.4byte	0x33
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x3
	.2byte	0x14e
	.byte	0x20
	.4byte	0xcb
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x3
	.2byte	0x156
	.byte	0xd
	.4byte	0x25
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x3
	.2byte	0x158
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x4
	.byte	0x12
	.byte	0x12
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x4
	.byte	0x16
	.byte	0x13
	.4byte	0x54
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x4
	.byte	0x1e
	.byte	0x13
	.4byte	0x67
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x4
	.byte	0x22
	.byte	0x14
	.4byte	0x7a
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x4
	.byte	0x2a
	.byte	0x13
	.4byte	0x8d
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x4
	.byte	0x2e
	.byte	0x14
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0x1a8
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x4
	.byte	0x36
	.byte	0x13
	.4byte	0xb3
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x4
	.byte	0x3a
	.byte	0x14
	.4byte	0xbf
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x4
	.byte	0x41
	.byte	0x14
	.4byte	0x138
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x4
	.byte	0x46
	.byte	0x15
	.4byte	0x145
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x4
	.byte	0x4b
	.byte	0x14
	.4byte	0x152
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x4
	.byte	0x50
	.byte	0x15
	.4byte	0x15f
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x5
	.byte	0x14
	.byte	0x18
	.4byte	0xd2
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x5
	.byte	0x15
	.byte	0x19
	.4byte	0xde
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x5
	.byte	0x1a
	.byte	0x19
	.4byte	0xea
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x5
	.byte	0x1b
	.byte	0x1a
	.4byte	0xf7
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x5
	.byte	0x20
	.byte	0x19
	.4byte	0x104
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x5
	.byte	0x21
	.byte	0x1a
	.4byte	0x111
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x5
	.byte	0x26
	.byte	0x19
	.4byte	0x11e
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x5
	.byte	0x27
	.byte	0x1a
	.4byte	0x12b
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x5
	.byte	0x32
	.byte	0xf
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x5
	.byte	0x33
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x5
	.byte	0x3c
	.byte	0xf
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x5
	.byte	0x3d
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x5
	.byte	0x46
	.byte	0xf
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x5
	.byte	0x47
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x5
	.byte	0x50
	.byte	0x19
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x5
	.byte	0x51
	.byte	0x22
	.4byte	0xcb
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x6
	.4byte	0x2c1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF58
	.uleb128 0x6
	.4byte	0x2c8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2cf
	.uleb128 0x6
	.4byte	0x2d4
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x6
	.byte	0x13
	.byte	0xd
	.4byte	0x25
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2f1
	.uleb128 0x9
	.4byte	0x2fc
	.uleb128 0xa
	.4byte	0x2c1
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF60
	.uleb128 0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x14
	.byte	0xe
	.4byte	.LASF104
	.4byte	0x340
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x7
	.byte	0x1c
	.byte	0x3
	.4byte	0x303
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.byte	0x77
	.byte	0x10
	.4byte	.LASF175
	.4byte	0x3fc
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0x78
	.byte	0xb
	.4byte	0x3f5
	.uleb128 0xf
	.byte	0x4
	.byte	0x8
	.byte	0x79
	.byte	0x10
	.4byte	0x3dc
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x8
	.byte	0x7a
	.byte	0x1d
	.4byte	0x340
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x8
	.byte	0x7b
	.byte	0x16
	.4byte	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x8
	.byte	0x7c
	.byte	0x16
	.4byte	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x8
	.byte	0x7d
	.byte	0x16
	.4byte	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x8
	.byte	0x7e
	.byte	0x16
	.4byte	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x8
	.byte	0x7f
	.byte	0x16
	.4byte	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x8
	.byte	0x80
	.byte	0x16
	.4byte	0x1a8
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x8
	.byte	0x81
	.byte	0xb
	.4byte	0x362
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x8
	.byte	0x82
	.byte	0x12
	.4byte	0x1a8
	.byte	0
	.uleb128 0x12
	.4byte	0x359
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x8
	.byte	0x84
	.byte	0x3
	.4byte	0x34c
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x9
	.byte	0x28
	.byte	0x11
	.4byte	0x2eb
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0xa
	.byte	0x52
	.byte	0xd
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0xa
	.byte	0x53
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x2
	.byte	0x5d
	.byte	0x26
	.4byte	0x438
	.uleb128 0x8
	.byte	0x4
	.4byte	0x43e
	.uleb128 0x13
	.4byte	.LASF176
	.uleb128 0x14
	.string	"std"
	.byte	0xc
	.2byte	0x150
	.byte	0xb
	.4byte	0x543
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0xc
	.2byte	0x173
	.byte	0x41
	.uleb128 0x16
	.byte	0xc
	.2byte	0x173
	.byte	0x41
	.4byte	0x450
	.uleb128 0x17
	.byte	0xb
	.byte	0x35
	.byte	0xb
	.4byte	0x16c
	.uleb128 0x17
	.byte	0xb
	.byte	0x36
	.byte	0xb
	.4byte	0x184
	.uleb128 0x17
	.byte	0xb
	.byte	0x37
	.byte	0xb
	.4byte	0x19c
	.uleb128 0x17
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.4byte	0x1b9
	.uleb128 0x17
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.4byte	0x261
	.uleb128 0x17
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.4byte	0x279
	.uleb128 0x17
	.byte	0xb
	.byte	0x3c
	.byte	0xb
	.4byte	0x291
	.uleb128 0x17
	.byte	0xb
	.byte	0x3d
	.byte	0xb
	.4byte	0x2a9
	.uleb128 0x17
	.byte	0xb
	.byte	0x3f
	.byte	0xb
	.4byte	0x201
	.uleb128 0x17
	.byte	0xb
	.byte	0x40
	.byte	0xb
	.4byte	0x219
	.uleb128 0x17
	.byte	0xb
	.byte	0x41
	.byte	0xb
	.4byte	0x231
	.uleb128 0x17
	.byte	0xb
	.byte	0x42
	.byte	0xb
	.4byte	0x249
	.uleb128 0x17
	.byte	0xb
	.byte	0x44
	.byte	0xb
	.4byte	0x1d1
	.uleb128 0x17
	.byte	0xb
	.byte	0x45
	.byte	0xb
	.4byte	0x1e9
	.uleb128 0x17
	.byte	0xb
	.byte	0x47
	.byte	0xb
	.4byte	0x178
	.uleb128 0x17
	.byte	0xb
	.byte	0x48
	.byte	0xb
	.4byte	0x190
	.uleb128 0x17
	.byte	0xb
	.byte	0x49
	.byte	0xb
	.4byte	0x1a8
	.uleb128 0x17
	.byte	0xb
	.byte	0x4a
	.byte	0xb
	.4byte	0x1c5
	.uleb128 0x17
	.byte	0xb
	.byte	0x4c
	.byte	0xb
	.4byte	0x26d
	.uleb128 0x17
	.byte	0xb
	.byte	0x4d
	.byte	0xb
	.4byte	0x285
	.uleb128 0x17
	.byte	0xb
	.byte	0x4e
	.byte	0xb
	.4byte	0x29d
	.uleb128 0x17
	.byte	0xb
	.byte	0x4f
	.byte	0xb
	.4byte	0x2b5
	.uleb128 0x17
	.byte	0xb
	.byte	0x51
	.byte	0xb
	.4byte	0x20d
	.uleb128 0x17
	.byte	0xb
	.byte	0x52
	.byte	0xb
	.4byte	0x225
	.uleb128 0x17
	.byte	0xb
	.byte	0x53
	.byte	0xb
	.4byte	0x23d
	.uleb128 0x17
	.byte	0xb
	.byte	0x54
	.byte	0xb
	.4byte	0x255
	.uleb128 0x17
	.byte	0xb
	.byte	0x56
	.byte	0xb
	.4byte	0x1dd
	.uleb128 0x17
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.4byte	0x1f5
	.byte	0
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0xc
	.2byte	0x175
	.byte	0xb
	.4byte	0x563
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0xc
	.2byte	0x177
	.byte	0x41
	.uleb128 0x16
	.byte	0xc
	.2byte	0x177
	.byte	0x41
	.4byte	0x550
	.byte	0
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0xd
	.byte	0x29
	.byte	0x14
	.4byte	0x1b4
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0xd
	.byte	0x2b
	.byte	0x14
	.4byte	0x1b4
	.byte	0xb4
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0xd
	.byte	0x2c
	.byte	0x14
	.4byte	0x1b4
	.byte	0x6e
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0xd
	.byte	0x2d
	.byte	0x14
	.4byte	0x1b4
	.byte	0x14
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0xd
	.byte	0x33
	.byte	0x14
	.4byte	0x1b4
	.2byte	0x3d2
	.uleb128 0x1b
	.4byte	.LASF93
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x17
	.byte	0x6
	.4byte	0x5ca
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF94
	.byte	0x5
	.byte	0x4
	.4byte	0x2df
	.byte	0xf
	.byte	0x16
	.byte	0x6
	.4byte	0x62e
	.uleb128 0x1c
	.4byte	.LASF95
	.4byte	0x20000
	.uleb128 0x1c
	.4byte	.LASF96
	.4byte	0x20001
	.uleb128 0x1c
	.4byte	.LASF97
	.4byte	0x20002
	.uleb128 0x1c
	.4byte	.LASF98
	.4byte	0x20003
	.uleb128 0x1c
	.4byte	.LASF99
	.4byte	0x20004
	.uleb128 0x1c
	.4byte	.LASF100
	.4byte	0x20005
	.uleb128 0x1c
	.4byte	.LASF101
	.4byte	0x20006
	.uleb128 0x1c
	.4byte	.LASF102
	.4byte	0x20007
	.uleb128 0x1c
	.4byte	.LASF103
	.4byte	0x20008
	.byte	0
	.uleb128 0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.byte	0x50
	.byte	0xe
	.4byte	.LASF105
	.4byte	0x65f
	.uleb128 0xc
	.4byte	.LASF106
	.byte	0
	.uleb128 0xc
	.4byte	.LASF107
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF108
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF109
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF111
	.byte	0x10
	.byte	0x57
	.byte	0x3
	.4byte	0x62e
	.uleb128 0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.byte	0x5d
	.byte	0xe
	.4byte	.LASF112
	.4byte	0x69c
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0x10
	.byte	0x65
	.byte	0x3
	.4byte	0x66b
	.uleb128 0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.byte	0x7a
	.byte	0xe
	.4byte	.LASF119
	.4byte	0x709
	.uleb128 0xc
	.4byte	.LASF120
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0xd
	.byte	0
	.uleb128 0x4
	.4byte	.LASF133
	.byte	0x10
	.byte	0x8b
	.byte	0x3
	.4byte	0x6a8
	.uleb128 0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x11
	.byte	0x16
	.byte	0xe
	.4byte	.LASF134
	.4byte	0x740
	.uleb128 0xc
	.4byte	.LASF135
	.byte	0
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0x11
	.byte	0x26
	.byte	0x3
	.4byte	0x715
	.uleb128 0x1d
	.string	"TAG"
	.byte	0x1
	.byte	0x1b
	.byte	0x14
	.4byte	0x2d4
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0x12
	.byte	0x3f
	.byte	0x10
	.4byte	0x414
	.4byte	0x78c
	.uleb128 0xa
	.4byte	0x408
	.uleb128 0xa
	.4byte	0x2d4
	.uleb128 0xa
	.4byte	0x1a8
	.uleb128 0xa
	.4byte	0x2c1
	.uleb128 0xa
	.4byte	0x420
	.uleb128 0xa
	.4byte	0x78c
	.uleb128 0xa
	.4byte	0x414
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x42c
	.uleb128 0x6
	.4byte	0x78c
	.uleb128 0x1f
	.4byte	.LASF149
	.byte	0x15
	.byte	0x13
	.byte	0xb
	.4byte	.LASF151
	.4byte	0x2df
	.uleb128 0x20
	.4byte	.LASF153
	.byte	0x17
	.byte	0x5
	.byte	0x6
	.4byte	.LASF158
	.uleb128 0x21
	.4byte	.LASF141
	.byte	0x13
	.byte	0x17
	.byte	0x6
	.4byte	.LASF143
	.4byte	0x7c9
	.uleb128 0xa
	.4byte	0x2c1
	.byte	0
	.uleb128 0x21
	.4byte	.LASF142
	.byte	0x13
	.byte	0x13
	.byte	0x6
	.4byte	.LASF144
	.4byte	0x7df
	.uleb128 0xa
	.4byte	0x5a5
	.byte	0
	.uleb128 0x21
	.4byte	.LASF145
	.byte	0x14
	.byte	0x26
	.byte	0x6
	.4byte	.LASF146
	.4byte	0x7f5
	.uleb128 0xa
	.4byte	0x2c1
	.byte	0
	.uleb128 0x21
	.4byte	.LASF147
	.byte	0x14
	.byte	0x1e
	.byte	0x6
	.4byte	.LASF148
	.4byte	0x80b
	.uleb128 0xa
	.4byte	0x5a5
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF150
	.byte	0x16
	.byte	0x10
	.byte	0xb
	.4byte	.LASF152
	.4byte	0x2df
	.uleb128 0x22
	.4byte	.LASF169
	.byte	0x1a
	.byte	0x26
	.byte	0x6
	.4byte	0x838
	.uleb128 0xa
	.4byte	0x3fc
	.uleb128 0xa
	.4byte	0x2d4
	.uleb128 0xa
	.4byte	0x2d4
	.uleb128 0x23
	.byte	0
	.uleb128 0x24
	.4byte	.LASF177
	.byte	0xf
	.byte	0x29
	.byte	0xd
	.4byte	.LASF178
	.4byte	0x2d4
	.4byte	0x852
	.uleb128 0xa
	.4byte	0x2df
	.byte	0
	.uleb128 0x25
	.4byte	.LASF154
	.byte	0x18
	.byte	0x26
	.byte	0xa
	.4byte	0x1a8
	.uleb128 0x1f
	.4byte	.LASF155
	.byte	0x14
	.byte	0xb
	.byte	0xb
	.4byte	.LASF156
	.4byte	0x2df
	.uleb128 0x20
	.4byte	.LASF157
	.byte	0x19
	.byte	0x1b
	.byte	0x6
	.4byte	.LASF159
	.uleb128 0x26
	.4byte	.LASF179
	.byte	0x1
	.byte	0x1d
	.byte	0x11
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc33
	.uleb128 0x27
	.4byte	.LASF160
	.byte	0x1
	.byte	0x22
	.byte	0xf
	.4byte	0x2df
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x27
	.4byte	.LASF161
	.byte	0x1
	.byte	0x28
	.byte	0xa
	.4byte	0x2fc
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x28
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x8d2
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0x25
	.byte	0xb0
	.4byte	0x3fc
	.byte	0
	.uleb128 0x2a
	.4byte	0x8e4
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0x25
	.byte	0xfb
	.4byte	0x3fc
	.byte	0
	.uleb128 0x2a
	.4byte	0x8f6
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0x25
	.byte	0xfc
	.4byte	0x3fc
	.byte	0
	.uleb128 0x2a
	.4byte	0x908
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0x25
	.byte	0xfe
	.4byte	0x3fc
	.byte	0
	.uleb128 0x2a
	.4byte	0x91a
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0x25
	.byte	0xc3
	.4byte	0x3fc
	.byte	0
	.uleb128 0x28
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x934
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0x32
	.byte	0xb0
	.4byte	0x3fc
	.byte	0
	.uleb128 0x2a
	.4byte	0x946
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0x32
	.byte	0xf2
	.4byte	0x3fc
	.byte	0
	.uleb128 0x2a
	.4byte	0x958
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0x32
	.byte	0xf3
	.4byte	0x3fc
	.byte	0
	.uleb128 0x2a
	.4byte	0x96a
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0x32
	.byte	0xf5
	.4byte	0x3fc
	.byte	0
	.uleb128 0x2a
	.4byte	0x97c
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0x32
	.byte	0xba
	.4byte	0x3fc
	.byte	0
	.uleb128 0x28
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0x996
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0x3e
	.byte	0xb0
	.4byte	0x3fc
	.byte	0
	.uleb128 0x2a
	.4byte	0x9a8
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0x3e
	.byte	0xee
	.4byte	0x3fc
	.byte	0
	.uleb128 0x2a
	.4byte	0x9ba
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0x3e
	.byte	0xef
	.4byte	0x3fc
	.byte	0
	.uleb128 0x2a
	.4byte	0x9cc
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0x3e
	.byte	0xf1
	.4byte	0x3fc
	.byte	0
	.uleb128 0x2a
	.4byte	0x9de
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0x3e
	.byte	0xb6
	.4byte	0x3fc
	.byte	0
	.uleb128 0x2b
	.4byte	0xc33
	.4byte	.LBI23
	.byte	.LVU33
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.4byte	0xa71
	.uleb128 0x2c
	.4byte	0xc45
	.uleb128 0x2d
	.4byte	0xc52
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2d
	.4byte	0xc5f
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2d
	.4byte	0xc6c
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2d
	.4byte	0xc79
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2d
	.4byte	0xc86
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2e
	.4byte	.LVL10
	.4byte	0x758
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0xc33
	.4byte	.LBI29
	.byte	.LVU60
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.byte	0x3d
	.byte	0x13
	.4byte	0xb04
	.uleb128 0x2c
	.4byte	0xc45
	.uleb128 0x2d
	.4byte	0xc52
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2d
	.4byte	0xc5f
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2d
	.4byte	0xc6c
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x2d
	.4byte	0xc79
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x2d
	.4byte	0xc86
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x2e
	.4byte	.LVL15
	.4byte	0x758
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL0
	.4byte	0x86e
	.uleb128 0x30
	.4byte	.LVL1
	.4byte	0x85e
	.uleb128 0x30
	.4byte	.LVL3
	.4byte	0x852
	.uleb128 0x31
	.4byte	.LVL4
	.4byte	0x838
	.4byte	0xb33
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL5
	.4byte	0x81b
	.4byte	0xb67
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x30
	.4byte	.LVL7
	.4byte	0x80b
	.uleb128 0x30
	.4byte	.LVL8
	.4byte	0x7f5
	.uleb128 0x31
	.4byte	.LVL9
	.4byte	0x7f5
	.4byte	0xb8c
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.4byte	.LVL11
	.4byte	0x852
	.uleb128 0x31
	.4byte	.LVL12
	.4byte	0x81b
	.4byte	0xbc3
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL13
	.4byte	0x7c9
	.4byte	0xbd6
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL14
	.4byte	0x7c9
	.4byte	0xbe9
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.4byte	.LVL16
	.4byte	0x852
	.uleb128 0x31
	.4byte	.LVL17
	.4byte	0x81b
	.4byte	0xc20
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x30
	.4byte	.LVL18
	.4byte	0x7a7
	.uleb128 0x30
	.4byte	.LVL19
	.4byte	0x797
	.byte	0
	.uleb128 0x32
	.4byte	.LASF180
	.byte	0x2
	.2byte	0x173
	.byte	0x10
	.4byte	0x414
	.byte	0x3
	.4byte	0xcc5
	.uleb128 0x33
	.4byte	.LASF163
	.byte	0x2
	.2byte	0x173
	.byte	0x2c
	.4byte	0x408
	.uleb128 0x33
	.4byte	.LASF164
	.byte	0x2
	.2byte	0x174
	.byte	0x30
	.4byte	0x2da
	.uleb128 0x33
	.4byte	.LASF165
	.byte	0x2
	.2byte	0x175
	.byte	0x2c
	.4byte	0x1b4
	.uleb128 0x33
	.4byte	.LASF166
	.byte	0x2
	.2byte	0x176
	.byte	0x2a
	.4byte	0x2c3
	.uleb128 0x33
	.4byte	.LASF167
	.byte	0x2
	.2byte	0x177
	.byte	0x29
	.4byte	0x420
	.uleb128 0x33
	.4byte	.LASF168
	.byte	0x2
	.2byte	0x178
	.byte	0x32
	.4byte	0x792
	.uleb128 0x34
	.4byte	.LASF140
	.byte	0x2
	.2byte	0x17e
	.byte	0x1b
	.4byte	0x414
	.uleb128 0xa
	.4byte	0x408
	.uleb128 0xa
	.4byte	0x2d4
	.uleb128 0xa
	.4byte	0x1a8
	.uleb128 0xa
	.4byte	0x2c1
	.uleb128 0xa
	.4byte	0x420
	.uleb128 0xa
	.4byte	0x78c
	.uleb128 0xa
	.4byte	0x414
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF170
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF171
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
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
.LVUS0:
	.uleb128 .LVU5
	.uleb128 0
.LLST0:
	.4byte	.LVL2
	.4byte	.LFE99
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU24
	.uleb128 .LVU85
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL19
	.2byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU33
	.uleb128 .LVU37
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x3
	.4byte	.LC6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU33
	.uleb128 .LVU37
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xa
	.2byte	0x800
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU33
	.uleb128 .LVU37
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU33
	.uleb128 .LVU37
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU60
	.uleb128 .LVU64
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x6
	.byte	0x3
	.4byte	.LC13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU60
	.uleb128 .LVU64
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU60
	.uleb128 .LVU64
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU60
	.uleb128 .LVU64
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x3a
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
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF131:
	.string	"SOC_MOD_CLK_TEMP_SENSOR"
.LASF52:
	.string	"int_fast16_t"
.LASF180:
	.string	"xTaskCreate"
.LASF60:
	.string	"bool"
.LASF41:
	.string	"uintptr_t"
.LASF84:
	.string	"__cxx11"
.LASF92:
	.string	"AXIS_COUNT"
.LASF37:
	.string	"uint64_t"
.LASF159:
	.string	"_Z13tmc_uart_initv"
.LASF67:
	.string	"ESP_LOG_MAX"
.LASF5:
	.string	"__uint8_t"
.LASF175:
	.string	"16esp_log_config_t"
.LASF116:
	.string	"SOC_RTC_FAST_CLK_SRC_DEFAULT"
.LASF69:
	.string	"log_level"
.LASF17:
	.string	"long long unsigned int"
.LASF129:
	.string	"SOC_MOD_CLK_RC_FAST_D256"
.LASF93:
	.string	"axis_t"
.LASF97:
	.string	"ESP_ERR_TMC_WRONG_CHIP"
.LASF91:
	.string	"AXIS_DEC"
.LASF15:
	.string	"__int64_t"
.LASF143:
	.string	"_Z17tmc_watchdog_taskPv"
.LASF55:
	.string	"uint_fast32_t"
.LASF24:
	.string	"__int_least64_t"
.LASF177:
	.string	"tmc_err_to_name"
.LASF32:
	.string	"int16_t"
.LASF65:
	.string	"ESP_LOG_DEBUG"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF90:
	.string	"AXIS_RA"
.LASF39:
	.string	"uintmax_t"
.LASF4:
	.string	"__int8_t"
.LASF150:
	.string	"stepper_init"
.LASF42:
	.string	"int_least8_t"
.LASF140:
	.string	"xTaskCreatePinnedToCore"
.LASF12:
	.string	"long int"
.LASF176:
	.string	"tskTaskControlBlock"
.LASF85:
	.string	"TMC_VSENSE"
.LASF46:
	.string	"int_least32_t"
.LASF82:
	.string	"TaskHandle_t"
.LASF152:
	.string	"_Z12stepper_initv"
.LASF50:
	.string	"int_fast8_t"
.LASF33:
	.string	"uint16_t"
.LASF170:
	.string	"double"
.LASF104:
	.string	"15esp_log_level_t"
.LASF80:
	.string	"BaseType_t"
.LASF86:
	.string	"TMC_V_FS_MV"
.LASF103:
	.string	"ESP_ERR_TMC_VERIFY_FAILED"
.LASF179:
	.string	"app_main"
.LASF72:
	.string	"dis_color"
.LASF160:
	.string	"err_drivers"
.LASF155:
	.string	"handle_drivers_connection"
.LASF165:
	.string	"usStackDepth"
.LASF101:
	.string	"ESP_ERR_TMC_DEC_NOT_CONFIGURED"
.LASF13:
	.string	"__uint32_t"
.LASF28:
	.string	"__intptr_t"
.LASF172:
	.ascii	"GNU C++26 15.2.0 -ftls-model=local-exec -mdynconfig=xtensa_e"
	.ascii	"sp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gn"
	.string	"u++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec"
.LASF106:
	.string	"SOC_RTC_SLOW_CLK_SRC_RC_SLOW"
.LASF47:
	.string	"uint_least32_t"
.LASF120:
	.string	"SOC_MOD_CLK_CPU"
.LASF20:
	.string	"__int_least16_t"
.LASF23:
	.string	"__uint_least32_t"
.LASF112:
	.string	"22soc_rtc_fast_clk_src_t"
.LASF146:
	.string	"_Z16monitor_log_taskPv"
.LASF168:
	.string	"pxCreatedTask"
.LASF136:
	.string	"UART_NUM_1"
.LASF87:
	.string	"TMC_R_SENSE_MOHM"
.LASF14:
	.string	"long unsigned int"
.LASF118:
	.string	"soc_rtc_fast_clk_src_t"
.LASF134:
	.string	"11uart_port_t"
.LASF117:
	.string	"SOC_RTC_FAST_CLK_SRC_XTAL_DIV"
.LASF166:
	.string	"pvParameters"
.LASF126:
	.string	"SOC_MOD_CLK_PLL_D2"
.LASF77:
	.string	"data"
.LASF19:
	.string	"__uint_least8_t"
.LASF26:
	.string	"__intmax_t"
.LASF125:
	.string	"SOC_MOD_CLK_PLL_F160M"
.LASF133:
	.string	"soc_module_clk_t"
.LASF57:
	.string	"uint_fast64_t"
.LASF40:
	.string	"intptr_t"
.LASF149:
	.string	"lx200_usb_start"
.LASF11:
	.string	"__int32_t"
.LASF148:
	.string	"_Z13tmc_driver_on6axis_t"
.LASF16:
	.string	"__uint64_t"
.LASF64:
	.string	"ESP_LOG_INFO"
.LASF76:
	.string	"opts"
.LASF100:
	.string	"ESP_ERR_TMC_RA_NOT_CONFIGURED"
.LASF68:
	.string	"esp_log_level_t"
.LASF73:
	.string	"dis_timestamp"
.LASF130:
	.string	"SOC_MOD_CLK_XTAL"
.LASF147:
	.string	"tmc_driver_on"
.LASF54:
	.string	"int_fast32_t"
.LASF48:
	.string	"int_least64_t"
.LASF99:
	.string	"ESP_ERR_TMC_WRITE_LOST"
.LASF163:
	.string	"pxTaskCode"
.LASF108:
	.string	"SOC_RTC_SLOW_CLK_SRC_RC_FAST_D256"
.LASF145:
	.string	"monitor_log_task"
.LASF107:
	.string	"SOC_RTC_SLOW_CLK_SRC_XTAL32K"
.LASF38:
	.string	"intmax_t"
.LASF110:
	.string	"SOC_RTC_SLOW_CLK_SRC_DEFAULT"
.LASF144:
	.string	"_Z18tmc_watchdog_watch6axis_t"
.LASF75:
	.string	"reserved"
.LASF156:
	.string	"_Z25handle_drivers_connectionv"
.LASF89:
	.string	"TMC_FULL_SCALE_MA"
.LASF157:
	.string	"tmc_uart_init"
.LASF171:
	.string	"float"
.LASF105:
	.string	"22soc_rtc_slow_clk_src_t"
.LASF49:
	.string	"uint_least64_t"
.LASF53:
	.string	"uint_fast16_t"
.LASF139:
	.string	"uart_port_t"
.LASF162:
	.string	"__esp_log_config"
.LASF123:
	.string	"SOC_MOD_CLK_APB"
.LASF142:
	.string	"tmc_watchdog_watch"
.LASF119:
	.string	"16soc_module_clk_t"
.LASF34:
	.string	"int32_t"
.LASF6:
	.string	"unsigned char"
.LASF102:
	.string	"ESP_ERR_TMC_INVALID_CRC"
.LASF109:
	.string	"SOC_RTC_SLOW_CLK_SRC_INVALID"
.LASF8:
	.string	"short int"
.LASF74:
	.string	"binary_mode"
.LASF95:
	.string	"ESP_ERR_TMC_BASE"
.LASF154:
	.string	"esp_log_timestamp"
.LASF62:
	.string	"ESP_LOG_ERROR"
.LASF141:
	.string	"tmc_watchdog_task"
.LASF153:
	.string	"button_init"
.LASF51:
	.string	"uint_fast8_t"
.LASF29:
	.string	"__uintptr_t"
.LASF79:
	.string	"TaskFunction_t"
.LASF127:
	.string	"SOC_MOD_CLK_XTAL32K"
.LASF44:
	.string	"int_least16_t"
.LASF113:
	.string	"SOC_RTC_FAST_CLK_SRC_XTAL_D2"
.LASF78:
	.string	"esp_log_config_t"
.LASF114:
	.string	"SOC_RTC_FAST_CLK_SRC_RC_FAST"
.LASF35:
	.string	"uint32_t"
.LASF169:
	.string	"esp_log"
.LASF2:
	.string	"long double"
.LASF158:
	.string	"_Z11button_initv"
.LASF58:
	.string	"char"
.LASF66:
	.string	"ESP_LOG_VERBOSE"
.LASF71:
	.string	"require_formatting"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"__uint16_t"
.LASF61:
	.string	"ESP_LOG_NONE"
.LASF151:
	.string	"_Z15lx200_usb_startv"
.LASF43:
	.string	"uint_least8_t"
.LASF135:
	.string	"UART_NUM_0"
.LASF25:
	.string	"__uint_least64_t"
.LASF45:
	.string	"uint_least16_t"
.LASF121:
	.string	"SOC_MOD_CLK_RTC_FAST"
.LASF137:
	.string	"UART_NUM_2"
.LASF138:
	.string	"UART_NUM_MAX"
.LASF27:
	.string	"__uintmax_t"
.LASF128:
	.string	"SOC_MOD_CLK_RC_FAST"
.LASF22:
	.string	"__int_least32_t"
.LASF98:
	.string	"ESP_ERR_TMC_ENN_LOW"
.LASF21:
	.string	"__uint_least16_t"
.LASF10:
	.string	"short unsigned int"
.LASF56:
	.string	"int_fast64_t"
.LASF30:
	.string	"int8_t"
.LASF173:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/main.cpp"
.LASF122:
	.string	"SOC_MOD_CLK_RTC_SLOW"
.LASF63:
	.string	"ESP_LOG_WARN"
.LASF111:
	.string	"soc_rtc_slow_clk_src_t"
.LASF161:
	.string	"dec_ok"
.LASF59:
	.string	"esp_err_t"
.LASF88:
	.string	"TMC_R_INTERNAL_MOHM"
.LASF18:
	.string	"__int_least8_t"
.LASF31:
	.string	"uint8_t"
.LASF115:
	.string	"SOC_RTC_FAST_CLK_SRC_INVALID"
.LASF7:
	.string	"__int16_t"
.LASF96:
	.string	"ESP_ERR_TMC_NO_RESPONSE"
.LASF36:
	.string	"int64_t"
.LASF81:
	.string	"UBaseType_t"
.LASF167:
	.string	"uxPriority"
.LASF174:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/build/dev"
.LASF164:
	.string	"pcName"
.LASF94:
	.string	"tmc_err_t"
.LASF70:
	.string	"constrained_env"
.LASF178:
	.string	"_Z15tmc_err_to_namei"
.LASF132:
	.string	"SOC_MOD_CLK_INVALID"
.LASF124:
	.string	"SOC_MOD_CLK_PLL_F80M"
.LASF83:
	.string	"__gnu_cxx"
	.ident	"GCC: (crosstool-NG esp-15.2.0_20251204) 15.2.0"
