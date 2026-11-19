	.file	"tmc-error.cpp"
# GNU C++26 (crosstool-NG esp-15.2.0_20251204) version 15.2.0 (xtensa-esp-elf)
#	compiled by GNU C version Debian Clang 19.1.7 (3+b1), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -ftls-model=local-exec -mdynconfig=xtensa_esp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gnu++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec
	.text
.Ltext0:
	.file 1 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp"
	.section	.text._ZL19all_watched_axes_okv,"ax",@progbits
	.literal_position
	.literal .LC0, _ZL7watched
	.literal .LC1, _ZL5fault
	.align	4
	.type	_ZL19all_watched_axes_okv, @function
_ZL19all_watched_axes_okv:
.LFB100:
	.loc 1 43 35 view -0
	entry	sp, 32	#
.LCFI0:
	.loc 1 44 5 view .LVU1
.LVL0:
.LBB2:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:44:     for (int i = 0; i < AXIS_COUNT; i++) {
	.loc 1 44 14 is_stmt 0 view .LVU2
	movi.n	a8, 0	# i,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:44:     for (int i = 0; i < AXIS_COUNT; i++) {
	.loc 1 44 5 view .LVU3
	j	.L2		#
.LVL1:
.L5:
	.loc 1 45 9 is_stmt 1 view .LVU4
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:45:         if (watched[i] && fault[i] != FAULT_NONE) return false;
	.loc 1 45 22 is_stmt 0 view .LVU5
	l32r	a9, .LC0	#, tmp46
	add.n	a9, a9, a8	# tmp47, tmp46, i
	l8ui	a9, a9, 0	# watched[i_3], _1
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:45:         if (watched[i] && fault[i] != FAULT_NONE) return false;
	.loc 1 45 9 view .LVU6
	beqz.n	a9, .L3	# _1,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:45:         if (watched[i] && fault[i] != FAULT_NONE) return false;
	.loc 1 45 34 discriminator 1 view .LVU7
	l32r	a9, .LC1	#, tmp48
	addx4	a9, a8, a9	#, tmp50, i, tmp48
	l32i.n	a9, a9, 0	# fault[i_3], _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:45:         if (watched[i] && fault[i] != FAULT_NONE) return false;
	.loc 1 45 24 discriminator 1 view .LVU8
	bnez.n	a9, .L6	# _2,
.L3:
	.loc 1 44 5 is_stmt 1 discriminator 2 view .LVU9
	addi.n	a8, a8, 1	# i, i,
.LVL2:
.L2:
	.loc 1 44 23 discriminator 1 view .LVU10
	blti	a8, 2, .L5	# i,,
.LBE2:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:47:     return true;
	.loc 1 47 12 is_stmt 0 view .LVU11
	movi.n	a2, 1	# <retval>,
.LBB3:
	j	.L4		#
.L6:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:45:         if (watched[i] && fault[i] != FAULT_NONE) return false;
	.loc 1 45 58 discriminator 2 view .LVU12
	movi.n	a2, 0	# <retval>,
.L4:
	.loc 1 45 58 discriminator 2 view .LVU13
.LBE3:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:48: }
	.loc 1 48 1 view .LVU14
	retw.n	
.LFE100:
	.size	_ZL19all_watched_axes_okv, .-_ZL19all_watched_axes_okv
	.section	.rodata._ZL13axis_shutdown6axis_t11tmc_fault_t.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.base64	"RSAoJWx1KSAlczog0J7RgdGMINCy0YvQutC70Y7Rh9C10L3QsCwg0LLRgdC1INC+0YHQuCDQvtGB0YLQsNC90L7QstC70LXQvdGLLCDQtNCy0LjQttC10L3QuNC1INC30LDQsdC70L7QutC40YDQvtCy0LDQvdC+CgA="
	.section	.text._ZL13axis_shutdown6axis_t11tmc_fault_t,"ax",@progbits
	.literal_position
	.literal .LC2, _ZL5fault
	.literal .LC3, _ZL6WD_TAG
	.literal .LC5, .LC4
	.align	4
	.type	_ZL13axis_shutdown6axis_t11tmc_fault_t, @function
_ZL13axis_shutdown6axis_t11tmc_fault_t:
.LVL3:
.LFB102:
	.loc 1 92 57 is_stmt 1 view -0
	.loc 1 92 57 is_stmt 0 view .LVU16
	entry	sp, 32	#
.LCFI1:
	.loc 1 93 5 is_stmt 1 view .LVU17
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:93:     stepper_emergency_stop();
	.loc 1 93 27 is_stmt 0 view .LVU18
	call8	_Z22stepper_emergency_stopv		#
.LVL4:
	.loc 1 94 5 is_stmt 1 view .LVU19
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:94:     tmc_driver_off(a);
	.loc 1 94 19 is_stmt 0 view .LVU20
	mov.n	a10, a2	#, a
	call8	_Z14tmc_driver_off6axis_t		#
.LVL5:
	.loc 1 95 5 is_stmt 1 view .LVU21
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:95:     fault[a] = reason;
	.loc 1 95 14 is_stmt 0 view .LVU22
	l32r	a8, .LC2	#, tmp49
	addx4	a8, a2, a8	#, tmp51, a, tmp49
	s32i.n	a3, a8, 0	# fault[a$52_1], reason
	.loc 1 97 5 is_stmt 1 view .LVU23
	.loc 1 97 10 view .LVU24
	.loc 1 97 15 view .LVU25
	.loc 1 97 48 view .LVU26
	.loc 1 97 53 view .LVU27
.LBB4:
	.loc 1 97 112 discriminator 1 view .LVU28
.LBB5:
	.loc 1 97 137 discriminator 1 view .LVU29
	.loc 1 97 172 discriminator 1 view .LVU30
	.loc 1 97 213 view .LVU31
.LBE5:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:97:     ESP_LOGE(WD_TAG[a], "Ось выключена, все оси остановлены, движение заблокировано");
	.loc 1 97 243 is_stmt 0 discriminator 1 view .LVU32
	l32r	a8, .LC3	#, tmp52
	addx4	a2, a2, a8	#, tmp54, a, tmp52
.LVL6:
	.loc 1 97 243 discriminator 1 view .LVU33
	l32i.n	a3, a2, 0	# WD_TAG[a$52_1], _2
.LVL7:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:97:     ESP_LOGE(WD_TAG[a], "Ось выключена, все оси остановлены, движение заблокировано");
	.loc 1 97 119 discriminator 1 view .LVU34
	call8	esp_log_timestamp		#
.LVL8:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:97:     ESP_LOGE(WD_TAG[a], "Ось выключена, все оси остановлены, движение заблокировано");
	.loc 1 97 119 discriminator 3 view .LVU35
	mov.n	a14, a3	#, _2
	mov.n	a13, a10	#, _3
	l32r	a12, .LC5	#,
	mov.n	a11, a3	#, _2
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL9:
	.loc 1 97 48 is_stmt 1 view .LVU36
	.loc 1 97 10 view .LVU37
.LBE4:
	.loc 1 97 5 view .LVU38
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:98: }
	.loc 1 98 1 is_stmt 0 view .LVU39
	retw.n	
.LFE102:
	.size	_ZL13axis_shutdown6axis_t11tmc_fault_t, .-_ZL13axis_shutdown6axis_t11tmc_fault_t
	.section	.rodata._ZL16handle_new_fault6axis_tm.str1.4,"aMS",@progbits,1
	.align	4
.LC6:
	.string	""
	.align	4
.LC8:
	.base64	"IChEUlZfU1RBVFVTINC90LUg0L/RgNC+0YfQuNGC0LDQvSkA"
	.align	4
.LC11:
	.base64	"RSAoJWx1KSAlczog0JDQktCQ0KDQmNCvOiDQvdC40LfQutC+0LUg0L3QsNC/0YDRj9C20LXQvdC40LUg0L/QuNGC0LDQvdC40Y8g0LzQvtGC0L7RgNCwIFZTICh1dl9jcCkg4oCUINC20LTRgyDQstC+0YHRgdGC0LDQvdC+0LLQu9C10L3QuNGPCgA="
	.align	4
.LC13:
	.base64	"RSAoJWx1KSAlczog0JDQktCQ0KDQmNCvOiDQv9C10YDQtdCz0YDQtdCyINC00YDQsNC50LLQtdGA0LAgKG90LCAxNDMgwrBDKSDigJQg0LbQtNGDINC+0YHRgtGL0LLQsNC90LjRjwoA"
	.align	4
.LC15:
	.base64	"RSAoJWx1KSAlczog0JDQktCQ0KDQmNCvOiDQt9Cw0LzRi9C60LDQvdC40LUg0LIg0L/RgNC+0LLQvtC00LDRhSDQvNC+0YLQvtGA0LAlcyDigJQg0L/RgNC+0LLQtdGA0Ywg0L/RgNC+0LLQvtC00LAg0Lgg0L/QtdGA0LXQt9Cw0L/Rg9GB0YLQuCBFU1AKAA=="
	.section	.text._ZL16handle_new_fault6axis_tm,"ax",@progbits
	.literal_position
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC10, _ZL6WD_TAG
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC16, .LC15
	.align	4
	.type	_ZL16handle_new_fault6axis_tm, @function
_ZL16handle_new_fault6axis_tm:
.LVL10:
.LFB103:
	.loc 1 103 56 is_stmt 1 view -0
	.loc 1 103 56 is_stmt 0 view .LVU41
	entry	sp, 48	#
.LCFI2:
	.loc 1 104 5 is_stmt 1 view .LVU42
.LBB6:
	bbci	a3, 2, .L9	# gstat,,
.LBB7:
	.loc 1 105 9 view .LVU43
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:105:         axis_shutdown(a, FAULT_UNDERVOLTAGE);
	.loc 1 105 22 is_stmt 0 view .LVU44
	movi.n	a11, 3	#,
	mov.n	a10, a2	#, a
	call8	_ZL13axis_shutdown6axis_t11tmc_fault_t		#
.LVL11:
	.loc 1 106 9 is_stmt 1 view .LVU45
	.loc 1 106 14 view .LVU46
	.loc 1 106 19 view .LVU47
	.loc 1 106 52 view .LVU48
	.loc 1 106 57 view .LVU49
.LBB8:
	.loc 1 106 116 discriminator 1 view .LVU50
.LBB9:
	.loc 1 106 141 discriminator 1 view .LVU51
	.loc 1 106 176 discriminator 1 view .LVU52
	.loc 1 106 217 view .LVU53
.LBE9:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:106:         ESP_LOGE(WD_TAG[a], "АВАРИЯ: низкое напряжение питания мотора VS (uv_cp) — жду восстановления");
	.loc 1 106 247 is_stmt 0 discriminator 1 view .LVU54
	l32r	a8, .LC10	#, tmp65
	addx4	a8, a2, a8	#, tmp67, a, tmp65
	l32i.n	a3, a8, 0	# WD_TAG[a$99_2], _3
.LVL12:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:106:         ESP_LOGE(WD_TAG[a], "АВАРИЯ: низкое напряжение питания мотора VS (uv_cp) — жду восстановления");
	.loc 1 106 123 discriminator 1 view .LVU55
	call8	esp_log_timestamp		#
.LVL13:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:106:         ESP_LOGE(WD_TAG[a], "АВАРИЯ: низкое напряжение питания мотора VS (uv_cp) — жду восстановления");
	.loc 1 106 123 discriminator 3 view .LVU56
	mov.n	a14, a3	#, _3
	mov.n	a13, a10	#, _4
	l32r	a12, .LC12	#,
	mov.n	a11, a3	#, _3
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL14:
	.loc 1 106 52 is_stmt 1 view .LVU57
	.loc 1 106 14 view .LVU58
.LBE8:
	.loc 1 106 9 view .LVU59
	.loc 1 107 9 view .LVU60
	j	.L8		#
.LVL15:
.L9:
	.loc 1 107 9 is_stmt 0 view .LVU61
.LBE7:
.LBE6:
	.loc 1 111 5 is_stmt 1 view .LVU62
	.loc 1 112 5 view .LVU63
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:112:     esp_err_t err = tmc_read(a, TMC_REG_DRV_STATUS, &drv);
	.loc 1 112 29 is_stmt 0 view .LVU64
	mov.n	a12, sp	#,
	movi	a11, 0x6f	#,
	mov.n	a10, a2	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL16:
	mov.n	a3, a10	# err, err
.LVL17:
	.loc 1 114 5 is_stmt 1 view .LVU65
.LBB10:
	bnez.n	a10, .L11	# err,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:114:     if (err == ESP_OK && (drv & DRV_STATUS_OT)) {
	.loc 1 114 26 is_stmt 0 discriminator 1 view .LVU66
	l32i.n	a8, sp, 0	# drv, drv
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:114:     if (err == ESP_OK && (drv & DRV_STATUS_OT)) {
	.loc 1 114 18 discriminator 1 view .LVU67
	bbci	a8, 1, .L11	# drv,,
.LBB11:
	.loc 1 115 9 is_stmt 1 view .LVU68
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:115:         axis_shutdown(a, FAULT_OVERHEAT);
	.loc 1 115 22 is_stmt 0 view .LVU69
	movi.n	a11, 1	#,
	mov.n	a10, a2	#, a
	call8	_ZL13axis_shutdown6axis_t11tmc_fault_t		#
.LVL18:
	.loc 1 116 9 is_stmt 1 view .LVU70
	.loc 1 116 14 view .LVU71
	.loc 1 116 19 view .LVU72
	.loc 1 116 52 view .LVU73
	.loc 1 116 57 view .LVU74
.LBB12:
.LBB13:
	.loc 1 116 116 discriminator 1 view .LVU75
.LBB14:
	.loc 1 116 141 discriminator 1 view .LVU76
	.loc 1 116 176 discriminator 1 view .LVU77
	.loc 1 116 217 view .LVU78
.LBE14:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:116:         ESP_LOGE(WD_TAG[a], "АВАРИЯ: перегрев драйвера (ot, 143 °C) — жду остывания");
	.loc 1 116 247 is_stmt 0 discriminator 1 view .LVU79
	l32r	a8, .LC10	#, tmp71
	addx4	a8, a2, a8	#, tmp73, a, tmp71
	l32i.n	a8, a8, 0	# WD_TAG[a$115_7], _8
	mov.n	a7, a8	# _8, _8
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:116:         ESP_LOGE(WD_TAG[a], "АВАРИЯ: перегрев драйвера (ot, 143 °C) — жду остывания");
	.loc 1 116 123 discriminator 1 view .LVU80
	call8	esp_log_timestamp		#
.LVL19:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:116:         ESP_LOGE(WD_TAG[a], "АВАРИЯ: перегрев драйвера (ot, 143 °C) — жду остывания");
	.loc 1 116 123 discriminator 3 view .LVU81
	mov.n	a14, a7	#, _8
	mov.n	a13, a10	#, _9
	l32r	a12, .LC14	#,
	mov.n	a11, a7	#, _8
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL20:
	.loc 1 116 52 is_stmt 1 view .LVU82
	.loc 1 116 14 view .LVU83
.LBE13:
.LBE12:
	.loc 1 116 9 view .LVU84
.LBB15:
	j	.L12		#
.L11:
	.loc 1 116 9 is_stmt 0 view .LVU85
.LBE15:
.LBE11:
.LBB16:
	.loc 1 119 9 is_stmt 1 view .LVU86
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:119:         axis_shutdown(a, FAULT_SHORT);
	.loc 1 119 22 is_stmt 0 view .LVU87
	movi.n	a11, 2	#,
	mov.n	a10, a2	#, a
	call8	_ZL13axis_shutdown6axis_t11tmc_fault_t		#
.LVL21:
	.loc 1 120 9 is_stmt 1 view .LVU88
	.loc 1 120 14 view .LVU89
	.loc 1 120 19 view .LVU90
	.loc 1 120 52 view .LVU91
	.loc 1 120 57 view .LVU92
.LBB17:
.LBB18:
	.loc 1 120 116 discriminator 1 view .LVU93
.LBB19:
	.loc 1 120 141 discriminator 1 view .LVU94
	.loc 1 120 176 discriminator 1 view .LVU95
	.loc 1 120 217 view .LVU96
.LBE19:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:120:         ESP_LOGE(WD_TAG[a], "АВАРИЯ: замыкание в проводах мотора%s — проверь провода и перезапусти ESP",
	.loc 1 120 247 is_stmt 0 discriminator 1 view .LVU97
	l32r	a8, .LC10	#, tmp75
	addx4	a8, a2, a8	#, tmp77, a, tmp75
	l32i.n	a8, a8, 0	# WD_TAG[a$130_20], _21
	mov.n	a7, a8	# _21, _21
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:120:         ESP_LOGE(WD_TAG[a], "АВАРИЯ: замыкание в проводах мотора%s — проверь провода и перезапусти ESP",
	.loc 1 120 123 discriminator 1 view .LVU98
	call8	esp_log_timestamp		#
.LVL22:
	mov.n	a13, a10	# _22, _22
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:120:         ESP_LOGE(WD_TAG[a], "АВАРИЯ: замыкание в проводах мотора%s — проверь провода и перезапусти ESP",
	.loc 1 120 123 discriminator 3 view .LVU99
	bnez.n	a3, .L15	# err,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:120:         ESP_LOGE(WD_TAG[a], "АВАРИЯ: замыкание в проводах мотора%s — проверь провода и перезапусти ESP",
	.loc 1 120 123 discriminator 4 view .LVU100
	l32r	a15, .LC7	#, iftmp$132_38
	j	.L13		#
.L15:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:120:         ESP_LOGE(WD_TAG[a], "АВАРИЯ: замыкание в проводах мотора%s — проверь провода и перезапусти ESP",
	.loc 1 120 123 discriminator 5 view .LVU101
	l32r	a15, .LC9	#, iftmp$132_38
.L13:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:120:         ESP_LOGE(WD_TAG[a], "АВАРИЯ: замыкание в проводах мотора%s — проверь провода и перезапусти ESP",
	.loc 1 120 123 discriminator 7 view .LVU102
	mov.n	a11, a7	# _21, _21
	mov.n	a14, a7	#, _21
	l32r	a12, .LC16	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL23:
.L12:
	.loc 1 120 52 is_stmt 1 view .LVU103
	.loc 1 120 14 view .LVU104
.LBE18:
.LBE17:
	.loc 1 120 9 view .LVU105
.LBE16:
.LBE10:
	.loc 1 124 5 view .LVU106
	bnez.n	a3, .L8	# err,
	.loc 1 124 19 discriminator 1 view .LVU107
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:124:     if (err == ESP_OK) tmc_log_drv_status(a);   // подробности: какая фаза, какая температура
	.loc 1 124 37 is_stmt 0 discriminator 1 view .LVU108
	mov.n	a10, a2	#, a
	call8	_Z18tmc_log_drv_status6axis_t		#
.LVL24:
.L8:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:125: }
	.loc 1 125 1 view .LVU109
	retw.n	
.LFE103:
	.size	_ZL16handle_new_fault6axis_tm, .-_ZL16handle_new_fault6axis_tm
	.section	.rodata._ZL12axis_restore6axis_tb.str1.4,"aMS",@progbits,1
	.align	4
.LC17:
	.base64	"ICjQv9C+0YHQu9C1INC/0LXRgNC10L3QsNGB0YLRgNC+0LnQutC4KQA="
	.align	4
.LC22:
	.base64	"RSAoJWx1KSAlczog0J/QtdGA0LXQvdCw0YHRgtGA0L7QudC60LAg0L3QtSDRg9C00LDQu9Cw0YHRjCAoJXMpLCDQv9C+0LLRgtC+0YDRjiDRh9C10YDQtdC3ICVkINC80YEKAA=="
	.align	4
.LC24:
	.base64	"SSAoJWx1KSAlczog0J7RgdGMINCy0LrQu9GO0YfQtdC90LAlcwoA"
	.align	4
.LC26:
	.base64	"VyAoJWx1KSAlczog0JLRgdC1INC+0YHQuCDQsiDQvdC+0YDQvNC1IOKAlCDQtNCy0LjQttC10L3QuNC1INGA0LDQt9GA0LXRiNC10L3Qvi4g0JLQtdC00LXQvdC40LUg0L7RgdGC0LDQvdC+0LLQu9C10L3Qviwg0L/QvtC30LjRhtC40Y8g0LzQvtCz0LvQsCDRgdCx0LjRgtGM0YHRjzog0L/RgNC+0LLQtdGA0LjRgtGMINC90LDQstC10LTQtdC90LjQtSDQuCDQt9Cw0L/Rg9GB0YLQuNGC0Ywg0LLQtdC00LXQvdC40LUgKG1vdGlvbl90cmFjaykKAA=="
	.align	4
.LC28:
	.base64	"VyAoJWx1KSAlczog0JTQstC40LbQtdC90LjQtSDQvtGB0YLQsNGR0YLRgdGPINC30LDQsdC70L7QutC40YDQvtCy0LDQvdC90YvQvDog0LTRgNGD0LPQsNGPINC+0YHRjCDQtdGJ0ZEg0LIg0LDQstCw0YDQuNC4CgA="
	.section	.text._ZL12axis_restore6axis_tb,"ax",@progbits
	.literal_position
	.literal .LC18, .LC17
	.literal .LC19, .LC6
	.literal .LC20, _ZL5fault
	.literal .LC21, _ZL6WD_TAG
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.align	4
	.type	_ZL12axis_restore6axis_tb, @function
_ZL12axis_restore6axis_tb:
.LVL25:
.LFB101:
	.loc 1 56 52 is_stmt 1 view -0
	.loc 1 56 52 is_stmt 0 view .LVU111
	entry	sp, 48	#
.LCFI3:
	.loc 1 57 5 is_stmt 1 view .LVU112
.LBB20:
	beqz.n	a3, .L17	# was_reset,
.LBB21:
	.loc 1 60 9 view .LVU113
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:60:         fault[a] = FAULT_RESET;
	.loc 1 60 18 is_stmt 0 view .LVU114
	l32r	a8, .LC20	#, tmp65
	addx4	a8, a2, a8	#, tmp67, a, tmp65
	movi.n	a9, 5	# tmp68,
	s32i.n	a9, a8, 0	# fault[a$228_1], tmp68
	.loc 1 62 9 is_stmt 1 view .LVU115
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:62:         esp_err_t err = initialize_tmc_driver(a);   // внутри шаг 0: ENN = 1
	.loc 1 62 46 is_stmt 0 view .LVU116
	mov.n	a10, a2	#, a
	call8	_Z21initialize_tmc_driver6axis_t		#
.LVL26:
	mov.n	a7, a10	# err, err
.LVL27:
	.loc 1 63 9 is_stmt 1 view .LVU117
.LBB22:
	beqz.n	a10, .L18	# err,
.LBB23:
	.loc 1 64 13 view .LVU118
	.loc 1 64 18 view .LVU119
	.loc 1 64 23 view .LVU120
	.loc 1 64 56 view .LVU121
	.loc 1 64 61 view .LVU122
.LBB24:
	.loc 1 64 120 discriminator 1 view .LVU123
.LBB25:
	.loc 1 64 145 discriminator 1 view .LVU124
	.loc 1 64 180 discriminator 1 view .LVU125
	.loc 1 64 221 view .LVU126
.LBE25:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:64:             ESP_LOGE(WD_TAG[a], "Перенастройка не удалась (%s), повторю через %d мс",
	.loc 1 64 251 is_stmt 0 discriminator 1 view .LVU127
	l32r	a8, .LC21	#, tmp69
	addx4	a8, a2, a8	#, tmp71, a, tmp69
	l32i.n	a2, a8, 0	# WD_TAG[a$228_1], _2
.LVL28:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:64:             ESP_LOGE(WD_TAG[a], "Перенастройка не удалась (%s), повторю через %d мс",
	.loc 1 64 127 discriminator 1 view .LVU128
	call8	esp_log_timestamp		#
.LVL29:
	mov.n	a3, a10	# _3, _3
.LVL30:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:64:             ESP_LOGE(WD_TAG[a], "Перенастройка не удалась (%s), повторю через %d мс",
	.loc 1 64 127 discriminator 3 view .LVU129
	mov.n	a10, a7	#, err
	call8	_Z15tmc_err_to_namei		#
.LVL31:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:64:             ESP_LOGE(WD_TAG[a], "Перенастройка не удалась (%s), повторю через %d мс",
	.loc 1 64 127 discriminator 4 view .LVU130
	movi	a8, 0x64	# tmp73,
	s32i.n	a8, sp, 0	#, tmp73
	mov.n	a15, a10	#, _4
	mov.n	a14, a2	#, _2
	mov.n	a13, a3	#, _3
	l32r	a12, .LC23	#,
	mov.n	a11, a2	#, _2
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL32:
	.loc 1 64 56 is_stmt 1 view .LVU131
	.loc 1 64 18 view .LVU132
.LBE24:
	.loc 1 64 13 view .LVU133
	.loc 1 66 13 view .LVU134
	j	.L16		#
.LVL33:
.L18:
	.loc 1 66 13 is_stmt 0 view .LVU135
.LBE23:
.LBE22:
	.loc 1 68 9 is_stmt 1 view .LVU136
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:68:         tmc_overheat_reset(a);
	.loc 1 68 27 is_stmt 0 view .LVU137
	mov.n	a10, a2	#, a
	call8	_Z18tmc_overheat_reset6axis_t		#
.LVL34:
.L17:
	.loc 1 68 27 view .LVU138
.LBE21:
.LBE20:
	.loc 1 71 5 is_stmt 1 view .LVU139
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:71:     tmc_driver_on(a);   // ENN = 0 + 200 мс (AT#1)
	.loc 1 71 18 is_stmt 0 view .LVU140
	mov.n	a10, a2	#, a
	call8	_Z13tmc_driver_on6axis_t		#
.LVL35:
	.loc 1 72 5 is_stmt 1 view .LVU141
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:72:     fault[a] = FAULT_NONE;
	.loc 1 72 14 is_stmt 0 view .LVU142
	l32r	a8, .LC20	#, tmp74
	addx4	a8, a2, a8	#, tmp76, a, tmp74
	movi.n	a9, 0	# tmp77,
	s32i.n	a9, a8, 0	# fault[a$244_5], tmp77
	.loc 1 73 5 is_stmt 1 view .LVU143
	.loc 1 73 10 view .LVU144
	.loc 1 73 15 view .LVU145
	.loc 1 73 47 view .LVU146
	.loc 1 73 52 view .LVU147
	.loc 1 73 156 discriminator 2 view .LVU148
	.loc 1 73 156 discriminator 10 view .LVU149
	.loc 1 73 156 discriminator 18 view .LVU150
.LBB26:
	.loc 1 73 158 discriminator 26 view .LVU151
.LBB27:
	.loc 1 73 183 discriminator 26 view .LVU152
	.loc 1 73 218 discriminator 26 view .LVU153
	.loc 1 73 258 view .LVU154
.LBE27:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:73:     ESP_LOGI(WD_TAG[a], "Ось включена%s", was_reset ? " (после перенастройки)" : "");
	.loc 1 73 288 is_stmt 0 discriminator 26 view .LVU155
	l32r	a8, .LC21	#, tmp78
	addx4	a2, a2, a8	#, tmp80, a, tmp78
.LVL36:
	.loc 1 73 288 discriminator 26 view .LVU156
	l32i.n	a2, a2, 0	# WD_TAG[a$244_5], _6
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:73:     ESP_LOGI(WD_TAG[a], "Ось включена%s", was_reset ? " (после перенастройки)" : "");
	.loc 1 73 165 discriminator 26 view .LVU157
	call8	esp_log_timestamp		#
.LVL37:
	mov.n	a13, a10	# _7, _7
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:73:     ESP_LOGI(WD_TAG[a], "Ось включена%s", was_reset ? " (после перенастройки)" : "");
	.loc 1 73 165 discriminator 33 view .LVU158
	beqz.n	a3, .L22	# was_reset,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:73:     ESP_LOGI(WD_TAG[a], "Ось включена%s", was_reset ? " (после перенастройки)" : "");
	.loc 1 73 165 discriminator 34 view .LVU159
	l32r	a15, .LC18	#, iftmp$264_40
	j	.L20		#
.L22:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:73:     ESP_LOGI(WD_TAG[a], "Ось включена%s", was_reset ? " (после перенастройки)" : "");
	.loc 1 73 165 discriminator 35 view .LVU160
	l32r	a15, .LC19	#, iftmp$264_40
.L20:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:73:     ESP_LOGI(WD_TAG[a], "Ось включена%s", was_reset ? " (после перенастройки)" : "");
	.loc 1 73 165 discriminator 37 view .LVU161
	mov.n	a14, a2	#, _6
	l32r	a12, .LC25	#,
	mov.n	a11, a2	#, _6
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL38:
	.loc 1 73 47 is_stmt 1 view .LVU162
	.loc 1 73 10 view .LVU163
.LBE26:
	.loc 1 73 5 view .LVU164
	.loc 1 75 5 view .LVU165
.LBB28:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:75:     if (all_watched_axes_ok()) {
	.loc 1 75 28 is_stmt 0 view .LVU166
	call8	_ZL19all_watched_axes_okv		#
.LVL39:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:75:     if (all_watched_axes_ok()) {
	.loc 1 75 5 discriminator 1 view .LVU167
	beqz.n	a10, .L21	# tmp91,
.LBB29:
	.loc 1 76 9 is_stmt 1 view .LVU168
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:76:         stepper_unblock();
	.loc 1 76 24 is_stmt 0 view .LVU169
	call8	_Z15stepper_unblockv		#
.LVL40:
	.loc 1 77 9 is_stmt 1 view .LVU170
	.loc 1 77 14 view .LVU171
	.loc 1 77 19 view .LVU172
	.loc 1 77 51 view .LVU173
	.loc 1 77 56 view .LVU174
	.loc 1 77 316 discriminator 2 view .LVU175
.LBB30:
.LBB31:
	.loc 1 77 373 discriminator 5 view .LVU176
.LBB32:
	.loc 1 77 398 discriminator 5 view .LVU177
	.loc 1 77 433 discriminator 5 view .LVU178
	.loc 1 77 473 view .LVU179
.LBE32:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:77:         ESP_LOGW(WD_TAG[a], "Все оси в норме — движение разрешено. Ведение остановлено, "
	.loc 1 77 380 is_stmt 0 discriminator 5 view .LVU180
	call8	esp_log_timestamp		#
.LVL41:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:77:         ESP_LOGW(WD_TAG[a], "Все оси в норме — движение разрешено. Ведение остановлено, "
	.loc 1 77 380 discriminator 7 view .LVU181
	mov.n	a14, a2	#, _6
	mov.n	a13, a10	#, _11
	l32r	a12, .LC27	#,
	mov.n	a11, a2	#, _6
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL42:
	.loc 1 77 51 is_stmt 1 view .LVU182
	.loc 1 77 14 view .LVU183
.LBE31:
.LBE30:
	.loc 1 77 9 view .LVU184
.LBB33:
	j	.L16		#
.L21:
	.loc 1 80 9 view .LVU185
	.loc 1 80 14 view .LVU186
	.loc 1 80 19 view .LVU187
	.loc 1 80 51 view .LVU188
	.loc 1 80 56 view .LVU189
	.loc 1 80 182 discriminator 2 view .LVU190
.LBE33:
.LBE29:
.LBB34:
.LBB35:
	.loc 1 80 239 discriminator 5 view .LVU191
.LBB36:
	.loc 1 80 264 discriminator 5 view .LVU192
	.loc 1 80 299 discriminator 5 view .LVU193
	.loc 1 80 339 view .LVU194
.LBE36:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:80:         ESP_LOGW(WD_TAG[a], "Движение остаётся заблокированным: другая ось ещё в аварии");
	.loc 1 80 246 is_stmt 0 discriminator 5 view .LVU195
	call8	esp_log_timestamp		#
.LVL43:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:80:         ESP_LOGW(WD_TAG[a], "Движение остаётся заблокированным: другая ось ещё в аварии");
	.loc 1 80 246 discriminator 7 view .LVU196
	mov.n	a14, a2	#, _6
	mov.n	a13, a10	#, _29
	l32r	a12, .LC29	#,
	mov.n	a11, a2	#, _6
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL44:
	.loc 1 80 51 is_stmt 1 view .LVU197
	.loc 1 80 14 view .LVU198
	.loc 1 80 9 view .LVU199
.L16:
	.loc 1 80 9 is_stmt 0 view .LVU200
.LBE35:
.LBE34:
.LBE28:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:82: }
	.loc 1 82 1 view .LVU201
	retw.n	
.LFE101:
	.size	_ZL12axis_restore6axis_tb, .-_ZL12axis_restore6axis_tb
	.section	.rodata._ZL13check_running6axis_tm.str1.4,"aMS",@progbits,1
	.align	4
.LC31:
	.base64	"RSAoJWx1KSAlczog0JTRgNCw0LnQstC10YAg0L/QtdGA0LXQt9Cw0LPRgNGD0LfQuNC70YHRjyAocmVzZXQpLCDQvdCw0YHRgtGA0L7QudC60Lgg0YHRgtCw0LvQuCDQt9Cw0LLQvtC00YHQutC40LzQuCDigJQg0L3QsNGB0YLRgNCw0LjQstCw0Y4g0LfQsNC90L7QstC+CgA="
	.align	4
.LC33:
	.base64	"VyAoJWx1KSAlczog0J/RgNC+0LLQtdGA0LrQsCDQv9C10YDQtdCz0YDQtdCy0LAg0L3QtSDRg9C00LDQu9Cw0YHRjCAoJXMpLCDQv9C+0LLRgtC+0YDRjgoA"
	.section	.text._ZL13check_running6axis_tm,"ax",@progbits
	.literal_position
	.literal .LC30, _ZL6WD_TAG
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.align	4
	.type	_ZL13check_running6axis_tm, @function
_ZL13check_running6axis_tm:
.LVL45:
.LFB104:
	.loc 1 129 53 is_stmt 1 view -0
	.loc 1 129 53 is_stmt 0 view .LVU203
	entry	sp, 32	#
.LCFI4:
	.loc 1 130 5 is_stmt 1 view .LVU204
	extui	a8, a3, 1, 2	# tmp73, gstat,,
	beqz.n	a8, .L24	# tmp73,
	.loc 1 131 9 view .LVU205
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:131:         handle_new_fault(a, gstat);
	.loc 1 131 25 is_stmt 0 view .LVU206
	mov.n	a11, a3	#, gstat
	mov.n	a10, a2	#, a
	call8	_ZL16handle_new_fault6axis_tm		#
.LVL46:
	.loc 1 132 9 is_stmt 1 view .LVU207
	j	.L23		#
.L24:
	.loc 1 135 5 view .LVU208
.LBB37:
	bbc	a3, a8, .L26	# gstat,,
.LBB38:
	.loc 1 136 9 view .LVU209
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:136:         axis_shutdown(a, FAULT_RESET);
	.loc 1 136 22 is_stmt 0 view .LVU210
	movi.n	a11, 5	#,
	mov.n	a10, a2	#, a
	call8	_ZL13axis_shutdown6axis_t11tmc_fault_t		#
.LVL47:
	.loc 1 137 9 is_stmt 1 view .LVU211
	.loc 1 137 14 view .LVU212
	.loc 1 137 19 view .LVU213
	.loc 1 137 52 view .LVU214
	.loc 1 137 57 view .LVU215
.LBB39:
	.loc 1 137 116 discriminator 1 view .LVU216
.LBB40:
	.loc 1 137 141 discriminator 1 view .LVU217
	.loc 1 137 176 discriminator 1 view .LVU218
	.loc 1 137 217 view .LVU219
.LBE40:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:137:         ESP_LOGE(WD_TAG[a], "Драйвер перезагрузился (reset), настройки стали заводскими — настраиваю заново");
	.loc 1 137 247 is_stmt 0 discriminator 1 view .LVU220
	l32r	a8, .LC30	#, tmp59
	addx4	a8, a2, a8	#, tmp61, a, tmp59
	l32i.n	a3, a8, 0	# WD_TAG[a$69_3], _4
.LVL48:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:137:         ESP_LOGE(WD_TAG[a], "Драйвер перезагрузился (reset), настройки стали заводскими — настраиваю заново");
	.loc 1 137 123 discriminator 1 view .LVU221
	call8	esp_log_timestamp		#
.LVL49:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:137:         ESP_LOGE(WD_TAG[a], "Драйвер перезагрузился (reset), настройки стали заводскими — настраиваю заново");
	.loc 1 137 123 discriminator 3 view .LVU222
	mov.n	a14, a3	#, _4
	mov.n	a13, a10	#, _5
	l32r	a12, .LC32	#,
	mov.n	a11, a3	#, _4
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL50:
	.loc 1 137 52 is_stmt 1 view .LVU223
	.loc 1 137 14 view .LVU224
.LBE39:
	.loc 1 137 9 view .LVU225
	.loc 1 138 9 view .LVU226
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:138:         axis_restore(a, true);
	.loc 1 138 21 is_stmt 0 view .LVU227
	movi.n	a11, 1	#,
	mov.n	a10, a2	#, a
	call8	_ZL12axis_restore6axis_tb		#
.LVL51:
	.loc 1 139 9 is_stmt 1 view .LVU228
	j	.L23		#
.LVL52:
.L26:
	.loc 1 139 9 is_stmt 0 view .LVU229
.LBE38:
.LBE37:
	.loc 1 142 5 is_stmt 1 view .LVU230
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:142:     esp_err_t err = tmc_check_overheat(a);
	.loc 1 142 39 is_stmt 0 view .LVU231
	mov.n	a10, a2	#, a
	call8	_Z18tmc_check_overheat6axis_t		#
.LVL53:
	mov.n	a3, a10	# err, err
.LVL54:
	.loc 1 143 5 is_stmt 1 view .LVU232
.LBB41:
	beqz.n	a10, .L23	# err,
	.loc 1 144 9 view .LVU233
	.loc 1 144 14 view .LVU234
	.loc 1 144 19 view .LVU235
	.loc 1 144 51 view .LVU236
	.loc 1 144 56 view .LVU237
	.loc 1 144 172 discriminator 2 view .LVU238
.LBB42:
	.loc 1 144 229 discriminator 6 view .LVU239
.LBB43:
	.loc 1 144 254 discriminator 6 view .LVU240
	.loc 1 144 289 discriminator 6 view .LVU241
	.loc 1 144 329 view .LVU242
.LBE43:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:144:         ESP_LOGW(WD_TAG[a], "Проверка перегрева не удалась (%s), повторю", tmc_err_to_name(err));
	.loc 1 144 359 is_stmt 0 discriminator 6 view .LVU243
	l32r	a8, .LC30	#, tmp63
	addx4	a2, a2, a8	#, tmp65, a, tmp63
.LVL55:
	.loc 1 144 359 discriminator 6 view .LVU244
	l32i.n	a2, a2, 0	# WD_TAG[a$87_8], _9
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:144:         ESP_LOGW(WD_TAG[a], "Проверка перегрева не удалась (%s), повторю", tmc_err_to_name(err));
	.loc 1 144 236 discriminator 6 view .LVU245
	call8	esp_log_timestamp		#
.LVL56:
	mov.n	a7, a10	# _10, _10
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:144:         ESP_LOGW(WD_TAG[a], "Проверка перегрева не удалась (%s), повторю", tmc_err_to_name(err));
	.loc 1 144 236 discriminator 8 view .LVU246
	mov.n	a10, a3	#, err
	call8	_Z15tmc_err_to_namei		#
.LVL57:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:144:         ESP_LOGW(WD_TAG[a], "Проверка перегрева не удалась (%s), повторю", tmc_err_to_name(err));
	.loc 1 144 236 discriminator 9 view .LVU247
	mov.n	a15, a10	#, _11
	mov.n	a14, a2	#, _9
	mov.n	a13, a7	#, _10
	l32r	a12, .LC34	#,
	mov.n	a11, a2	#, _9
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL58:
	.loc 1 144 51 is_stmt 1 view .LVU248
	.loc 1 144 14 view .LVU249
	.loc 1 144 9 view .LVU250
.L23:
	.loc 1 144 9 is_stmt 0 view .LVU251
.LBE42:
.LBE41:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:146: }
	.loc 1 146 1 view .LVU252
	retw.n	
.LFE104:
	.size	_ZL13check_running6axis_tm, .-_ZL13check_running6axis_tm
	.section	.rodata._ZL17check_no_response6axis_tm.str1.4,"aMS",@progbits,1
	.align	4
.LC36:
	.base64	"SSAoJWx1KSAlczog0KHQstGP0LfRjCDRgSDQtNGA0LDQudCy0LXRgNC+0Lwg0LLQvtGB0YHRgtCw0L3QvtCy0LvQtdC90LAKAA=="
	.section	.text._ZL17check_no_response6axis_tm,"ax",@progbits
	.literal_position
	.literal .LC35, _ZL6WD_TAG
	.literal .LC37, .LC36
	.align	4
	.type	_ZL17check_no_response6axis_tm, @function
_ZL17check_no_response6axis_tm:
.LVL59:
.LFB105:
	.loc 1 149 57 is_stmt 1 view -0
	.loc 1 149 57 is_stmt 0 view .LVU254
	entry	sp, 32	#
.LCFI5:
	.loc 1 150 5 is_stmt 1 view .LVU255
	.loc 1 150 10 view .LVU256
	.loc 1 150 15 view .LVU257
	.loc 1 150 47 view .LVU258
	.loc 1 150 52 view .LVU259
	.loc 1 150 129 discriminator 2 view .LVU260
	.loc 1 150 129 discriminator 6 view .LVU261
	.loc 1 150 129 discriminator 10 view .LVU262
.LBB44:
	.loc 1 150 131 discriminator 14 view .LVU263
.LBB45:
	.loc 1 150 156 discriminator 14 view .LVU264
	.loc 1 150 191 discriminator 14 view .LVU265
	.loc 1 150 231 view .LVU266
.LBE45:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:150:     ESP_LOGI(WD_TAG[a], "Связь с драйвером восстановлена");
	.loc 1 150 261 is_stmt 0 discriminator 14 view .LVU267
	l32r	a8, .LC35	#, tmp52
	addx4	a8, a2, a8	#, tmp54, a, tmp52
	l32i.n	a7, a8, 0	# WD_TAG[a$162_13], _14
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:150:     ESP_LOGI(WD_TAG[a], "Связь с драйвером восстановлена");
	.loc 1 150 138 discriminator 14 view .LVU268
	call8	esp_log_timestamp		#
.LVL60:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:150:     ESP_LOGI(WD_TAG[a], "Связь с драйвером восстановлена");
	.loc 1 150 138 discriminator 17 view .LVU269
	mov.n	a14, a7	#, _14
	mov.n	a13, a10	#, _15
	l32r	a12, .LC37	#,
	mov.n	a11, a7	#, _14
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL61:
	.loc 1 150 47 is_stmt 1 view .LVU270
	.loc 1 150 10 view .LVU271
.LBE44:
	.loc 1 150 5 view .LVU272
	.loc 1 152 5 view .LVU273
	extui	a8, a3, 1, 2	# tmp61, gstat,,
	beqz.n	a8, .L28	# tmp61,
	.loc 1 153 9 view .LVU274
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:153:         handle_new_fault(a, gstat);
	.loc 1 153 25 is_stmt 0 view .LVU275
	mov.n	a11, a3	#, gstat
	mov.n	a10, a2	#, a
	call8	_ZL16handle_new_fault6axis_tm		#
.LVL62:
	.loc 1 154 9 is_stmt 1 view .LVU276
	j	.L27		#
.L28:
	.loc 1 156 5 view .LVU277
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:156:     axis_restore(a, gstat & GSTAT_RESET);
	.loc 1 156 17 is_stmt 0 view .LVU278
	extui	a11, a3, 0, 1	#, gstat,
	mov.n	a10, a2	#, a
	call8	_ZL12axis_restore6axis_tb		#
.LVL63:
.L27:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:157: }
	.loc 1 157 1 view .LVU279
	retw.n	
.LFE105:
	.size	_ZL17check_no_response6axis_tm, .-_ZL17check_no_response6axis_tm
	.section	.rodata._ZL20check_overheat_fault6axis_tm.str1.4,"aMS",@progbits,1
	.align	4
.LC39:
	.base64	"RSAoJWx1KSAlczog0J/QtdGA0LXQs9GA0LXQsjog0L3QtSDRg9C00LDQu9C+0YHRjCDQv9GA0L7Rh9C40YLQsNGC0YwgRFJWX1NUQVRVUyAoJXMpLCDQv9C+0LLRgtC+0YDRjgoA"
	.align	4
.LC41:
	.base64	"RSAoJWx1KSAlczog0J3QtSDRg9C00LDQu9C+0YHRjCDRgdCx0YDQvtGB0LjRgtGMIGRydl9lcnIgKCVzKSwg0L/QvtCy0YLQvtGA0Y4KAA=="
	.align	4
.LC43:
	.base64	"SSAoJWx1KSAlczog0JTRgNCw0LnQstC10YAg0L7RgdGC0YvQuyDQvdC40LbQtSAxMjAgwrBDCgA="
	.section	.text._ZL20check_overheat_fault6axis_tm,"ax",@progbits
	.literal_position
	.literal .LC38, _ZL6WD_TAG
	.literal .LC40, .LC39
	.literal .LC42, .LC41
	.literal .LC44, .LC43
	.align	4
	.type	_ZL20check_overheat_fault6axis_tm, @function
_ZL20check_overheat_fault6axis_tm:
.LVL64:
.LFB106:
	.loc 1 160 60 is_stmt 1 view -0
	.loc 1 160 60 is_stmt 0 view .LVU281
	entry	sp, 48	#
.LCFI6:
	mov.n	a7, a3	# gstat, gstat
	.loc 1 161 5 is_stmt 1 view .LVU282
	.loc 1 162 5 view .LVU283
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:162:     esp_err_t err = tmc_read(a, TMC_REG_DRV_STATUS, &drv);
	.loc 1 162 29 is_stmt 0 view .LVU284
	mov.n	a12, sp	#,
	movi	a11, 0x6f	#,
	mov.n	a10, a2	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL65:
	mov.n	a3, a10	# err, err
.LVL66:
	.loc 1 163 5 is_stmt 1 view .LVU285
.LBB46:
	beqz.n	a10, .L31	# err,
.LBB47:
	.loc 1 164 9 view .LVU286
	.loc 1 164 14 view .LVU287
	.loc 1 164 19 view .LVU288
	.loc 1 164 52 view .LVU289
	.loc 1 164 57 view .LVU290
.LBB48:
	.loc 1 164 116 discriminator 1 view .LVU291
.LBB49:
	.loc 1 164 141 discriminator 1 view .LVU292
	.loc 1 164 176 discriminator 1 view .LVU293
	.loc 1 164 217 view .LVU294
.LBE49:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:164:         ESP_LOGE(WD_TAG[a], "Перегрев: не удалось прочитать DRV_STATUS (%s), повторю", tmc_err_to_name(err));
	.loc 1 164 247 is_stmt 0 discriminator 1 view .LVU295
	l32r	a8, .LC38	#, tmp67
	addx4	a8, a2, a8	#, tmp69, a, tmp67
	l32i.n	a2, a8, 0	# WD_TAG[a$166_1], _2
.LVL67:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:164:         ESP_LOGE(WD_TAG[a], "Перегрев: не удалось прочитать DRV_STATUS (%s), повторю", tmc_err_to_name(err));
	.loc 1 164 123 discriminator 1 view .LVU296
	call8	esp_log_timestamp		#
.LVL68:
	mov.n	a7, a10	# _3, _3
.LVL69:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:164:         ESP_LOGE(WD_TAG[a], "Перегрев: не удалось прочитать DRV_STATUS (%s), повторю", tmc_err_to_name(err));
	.loc 1 164 123 discriminator 3 view .LVU297
	mov.n	a10, a3	#, err
	call8	_Z15tmc_err_to_namei		#
.LVL70:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:164:         ESP_LOGE(WD_TAG[a], "Перегрев: не удалось прочитать DRV_STATUS (%s), повторю", tmc_err_to_name(err));
	.loc 1 164 123 discriminator 4 view .LVU298
	mov.n	a15, a10	#, _4
	mov.n	a14, a2	#, _2
	mov.n	a13, a7	#, _3
	l32r	a12, .LC40	#,
	mov.n	a11, a2	#, _2
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL71:
	.loc 1 164 52 is_stmt 1 view .LVU299
	.loc 1 164 14 view .LVU300
.LBE48:
	.loc 1 164 9 view .LVU301
	.loc 1 165 9 view .LVU302
	j	.L30		#
.LVL72:
.L31:
	.loc 1 165 9 is_stmt 0 view .LVU303
.LBE47:
.LBE46:
	.loc 1 168 5 is_stmt 1 view .LVU304
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:168:     if (drv & (DRV_STATUS_OT | DRV_STATUS_OTPW)) return;   // ещё горячий
	.loc 1 168 13 is_stmt 0 view .LVU305
	l32i.n	a8, sp, 0	# drv, drv
	extui	a8, a8, 0, 2	# _6, drv,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:168:     if (drv & (DRV_STATUS_OT | DRV_STATUS_OTPW)) return;   // ещё горячий
	.loc 1 168 5 view .LVU306
	bnez.n	a8, .L30	# _6,
	.loc 1 172 5 is_stmt 1 view .LVU307
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:172:     err = tmc_write(a, TMC_REG_GSTAT, GSTAT_DRV_ERR);
	.loc 1 172 20 is_stmt 0 view .LVU308
	movi.n	a12, 2	#,
	movi.n	a11, 1	#,
	mov.n	a10, a2	#, a
	call8	_Z9tmc_write6axis_thm		#
.LVL73:
	mov.n	a3, a10	# err, err
.LVL74:
	.loc 1 173 5 is_stmt 1 view .LVU309
.LBB50:
	beqz.n	a10, .L33	# err,
.LBB51:
	.loc 1 174 9 view .LVU310
	.loc 1 174 14 view .LVU311
	.loc 1 174 19 view .LVU312
	.loc 1 174 52 view .LVU313
	.loc 1 174 57 view .LVU314
.LBB52:
	.loc 1 174 116 discriminator 1 view .LVU315
.LBB53:
	.loc 1 174 141 discriminator 1 view .LVU316
	.loc 1 174 176 discriminator 1 view .LVU317
	.loc 1 174 217 view .LVU318
.LBE53:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:174:         ESP_LOGE(WD_TAG[a], "Не удалось сбросить drv_err (%s), повторю", tmc_err_to_name(err));
	.loc 1 174 247 is_stmt 0 discriminator 1 view .LVU319
	l32r	a8, .LC38	#, tmp72
	addx4	a8, a2, a8	#, tmp74, a, tmp72
	l32i.n	a2, a8, 0	# WD_TAG[a$182_7], _8
.LVL75:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:174:         ESP_LOGE(WD_TAG[a], "Не удалось сбросить drv_err (%s), повторю", tmc_err_to_name(err));
	.loc 1 174 123 discriminator 1 view .LVU320
	call8	esp_log_timestamp		#
.LVL76:
	mov.n	a7, a10	# _9, _9
.LVL77:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:174:         ESP_LOGE(WD_TAG[a], "Не удалось сбросить drv_err (%s), повторю", tmc_err_to_name(err));
	.loc 1 174 123 discriminator 3 view .LVU321
	mov.n	a10, a3	#, err
	call8	_Z15tmc_err_to_namei		#
.LVL78:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:174:         ESP_LOGE(WD_TAG[a], "Не удалось сбросить drv_err (%s), повторю", tmc_err_to_name(err));
	.loc 1 174 123 discriminator 4 view .LVU322
	mov.n	a15, a10	#, _10
	mov.n	a14, a2	#, _8
	mov.n	a13, a7	#, _9
	l32r	a12, .LC42	#,
	mov.n	a11, a2	#, _8
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL79:
	.loc 1 174 52 is_stmt 1 view .LVU323
	.loc 1 174 14 view .LVU324
.LBE52:
	.loc 1 174 9 view .LVU325
	.loc 1 175 9 view .LVU326
	j	.L30		#
.LVL80:
.L33:
	.loc 1 175 9 is_stmt 0 view .LVU327
.LBE51:
.LBE50:
	.loc 1 178 5 is_stmt 1 view .LVU328
	.loc 1 178 10 view .LVU329
	.loc 1 178 15 view .LVU330
	.loc 1 178 47 view .LVU331
	.loc 1 178 52 view .LVU332
	.loc 1 178 112 discriminator 2 view .LVU333
	.loc 1 178 112 discriminator 6 view .LVU334
	.loc 1 178 112 discriminator 10 view .LVU335
.LBB54:
	.loc 1 178 114 discriminator 14 view .LVU336
.LBB55:
	.loc 1 178 139 discriminator 14 view .LVU337
	.loc 1 178 174 discriminator 14 view .LVU338
	.loc 1 178 214 view .LVU339
.LBE55:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:178:     ESP_LOGI(WD_TAG[a], "Драйвер остыл ниже 120 °C");
	.loc 1 178 244 is_stmt 0 discriminator 14 view .LVU340
	l32r	a8, .LC38	#, tmp76
	addx4	a8, a2, a8	#, tmp78, a, tmp76
	l32i.n	a3, a8, 0	# WD_TAG[a$209_41], _42
.LVL81:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:178:     ESP_LOGI(WD_TAG[a], "Драйвер остыл ниже 120 °C");
	.loc 1 178 121 discriminator 14 view .LVU341
	call8	esp_log_timestamp		#
.LVL82:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:178:     ESP_LOGI(WD_TAG[a], "Драйвер остыл ниже 120 °C");
	.loc 1 178 121 discriminator 17 view .LVU342
	mov.n	a14, a3	#, _42
	mov.n	a13, a10	#, _43
	l32r	a12, .LC44	#,
	mov.n	a11, a3	#, _42
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL83:
	.loc 1 178 47 is_stmt 1 view .LVU343
	.loc 1 178 10 view .LVU344
.LBE54:
	.loc 1 178 5 view .LVU345
	.loc 1 179 5 view .LVU346
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:179:     axis_restore(a, gstat & GSTAT_RESET);
	.loc 1 179 17 is_stmt 0 view .LVU347
	extui	a11, a7, 0, 1	#, gstat,
	mov.n	a10, a2	#, a
	call8	_ZL12axis_restore6axis_tb		#
.LVL84:
.L30:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:180: }
	.loc 1 180 1 view .LVU348
	retw.n	
.LFE106:
	.size	_ZL20check_overheat_fault6axis_tm, .-_ZL20check_overheat_fault6axis_tm
	.section	.rodata._ZL24check_undervoltage_fault6axis_tm.str1.4,"aMS",@progbits,1
	.align	4
.LC46:
	.base64	"SSAoJWx1KSAlczog0J/QuNGC0LDQvdC40LUg0LzQvtGC0L7RgNCwIFZTINCy0L7RgdGB0YLQsNC90L7QstC70LXQvdC+CgA="
	.section	.text._ZL24check_undervoltage_fault6axis_tm,"ax",@progbits
	.literal_position
	.literal .LC45, _ZL6WD_TAG
	.literal .LC47, .LC46
	.align	4
	.type	_ZL24check_undervoltage_fault6axis_tm, @function
_ZL24check_undervoltage_fault6axis_tm:
.LVL85:
.LFB107:
	.loc 1 183 64 is_stmt 1 view -0
	.loc 1 183 64 is_stmt 0 view .LVU350
	entry	sp, 32	#
.LCFI7:
	.loc 1 184 5 is_stmt 1 view .LVU351
	bbsi	a3, 2, .L35	# gstat,,
	.loc 1 186 5 view .LVU352
	.loc 1 186 10 view .LVU353
	.loc 1 186 15 view .LVU354
	.loc 1 186 47 view .LVU355
	.loc 1 186 52 view .LVU356
	.loc 1 186 127 discriminator 2 view .LVU357
	.loc 1 186 127 discriminator 6 view .LVU358
	.loc 1 186 127 discriminator 10 view .LVU359
.LBB56:
	.loc 1 186 129 discriminator 14 view .LVU360
.LBB57:
	.loc 1 186 154 discriminator 14 view .LVU361
	.loc 1 186 189 discriminator 14 view .LVU362
	.loc 1 186 229 view .LVU363
.LBE57:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:186:     ESP_LOGI(WD_TAG[a], "Питание мотора VS восстановлено");
	.loc 1 186 259 is_stmt 0 discriminator 14 view .LVU364
	l32r	a8, .LC45	#, tmp53
	addx4	a8, a2, a8	#, tmp55, a, tmp53
	l32i.n	a8, a8, 0	# WD_TAG[a$225_13], _14
	mov.n	a7, a8	# _14, _14
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:186:     ESP_LOGI(WD_TAG[a], "Питание мотора VS восстановлено");
	.loc 1 186 136 discriminator 14 view .LVU365
	call8	esp_log_timestamp		#
.LVL86:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:186:     ESP_LOGI(WD_TAG[a], "Питание мотора VS восстановлено");
	.loc 1 186 136 discriminator 17 view .LVU366
	mov.n	a14, a7	#, _14
	mov.n	a13, a10	#, _15
	l32r	a12, .LC47	#,
	mov.n	a11, a7	#, _14
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL87:
	.loc 1 186 47 is_stmt 1 view .LVU367
	.loc 1 186 10 view .LVU368
.LBE56:
	.loc 1 186 5 view .LVU369
	.loc 1 187 5 view .LVU370
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:187:     axis_restore(a, gstat & GSTAT_RESET);
	.loc 1 187 17 is_stmt 0 view .LVU371
	extui	a11, a3, 0, 1	#, gstat,
	mov.n	a10, a2	#, a
	call8	_ZL12axis_restore6axis_tb		#
.LVL88:
.L35:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:188: }
	.loc 1 188 1 view .LVU372
	retw.n	
.LFE107:
	.size	_ZL24check_undervoltage_fault6axis_tm, .-_ZL24check_undervoltage_fault6axis_tm
	.section	.rodata._ZL19watchdog_check_axis6axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC51:
	.base64	"VyAoJWx1KSAlczog0J7RgtCy0LXRgiBHU1RBVCDRgSDQvtGI0LjQsdC60L7QuSBDUkMgKCV1INC/0L7QtNGA0Y/QtCkg4oCUINC/0L7QvNC10YXQsCwg0YfQuNGC0LDRjiDQtdGJ0ZEg0YDQsNC3CgA="
	.align	4
.LC54:
	.base64	"RSAoJWx1KSAlczog0JDQktCQ0KDQmNCvOiDQtNGA0LDQudCy0LXRgCDQvdC1INC+0YLQstC10YfQsNC10YIg0L/QviBVQVJUICglcykg4oCUINC90LXRgiDQv9C40YLQsNC90LjRjyDQvNC+0YLQvtGA0LAgVlMg0LjQu9C4INC+0LHRgNGL0LIg0L/RgNC+0LLQvtC00LAKAA=="
	.section	.text._ZL19watchdog_check_axis6axis_t,"ax",@progbits
	.literal_position
	.literal .LC48, 131079
	.literal .LC49, _ZL13crc_err_count
	.literal .LC50, _ZL6WD_TAG
	.literal .LC52, .LC51
	.literal .LC53, _ZL5fault
	.literal .LC55, .LC54
	.align	4
	.type	_ZL19watchdog_check_axis6axis_t, @function
_ZL19watchdog_check_axis6axis_t:
.LVL89:
.LFB108:
	.loc 1 194 43 is_stmt 1 view -0
	.loc 1 194 43 is_stmt 0 view .LVU374
	entry	sp, 48	#
.LCFI8:
	.loc 1 195 5 is_stmt 1 view .LVU375
	.loc 1 197 5 view .LVU376
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:197:     esp_err_t err = tmc_read(a, TMC_REG_GSTAT, &gstat);
	.loc 1 197 29 is_stmt 0 view .LVU377
	mov.n	a12, sp	#,
	movi.n	a11, 1	#,
	mov.n	a10, a2	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL90:
	mov.n	a7, a10	# err, err
.LVL91:
	.loc 1 200 5 is_stmt 1 view .LVU378
.LBB58:
	l32r	a8, .LC48	#, tmp66
	bne	a10, a8, .L38	# err, tmp66,
.LBB59:
	.loc 1 201 9 view .LVU379
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:201:         crc_err_count[a]++;
	.loc 1 201 24 is_stmt 0 view .LVU380
	l32r	a9, .LC49	#, tmp67
	add.n	a9, a9, a2	# tmp68, tmp67, a
	l8ui	a8, a9, 0	# crc_err_count[a$8_1], _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:201:         crc_err_count[a]++;
	.loc 1 201 25 view .LVU381
	addi.n	a8, a8, 1	# tmp69, _2,
	extui	a8, a8, 0, 8	# _3, tmp69
	s8i	a8, a9, 0	# crc_err_count[a$8_1], _3
	.loc 1 202 9 is_stmt 1 view .LVU382
.LBB60:
	bgeui	a8, 5, .L38	# _3,,
.LBB61:
	.loc 1 203 13 view .LVU383
	.loc 1 203 18 view .LVU384
	.loc 1 203 23 view .LVU385
	.loc 1 203 55 view .LVU386
	.loc 1 203 60 view .LVU387
	.loc 1 203 195 discriminator 2 view .LVU388
.LBB62:
	.loc 1 203 252 discriminator 5 view .LVU389
.LBB63:
	.loc 1 203 277 discriminator 5 view .LVU390
	.loc 1 203 312 discriminator 5 view .LVU391
	.loc 1 203 352 view .LVU392
.LBE63:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:203:             ESP_LOGW(WD_TAG[a], "Ответ GSTAT с ошибкой CRC (%u подряд) — помеха, читаю ещё раз", crc_err_count[a]);
	.loc 1 203 382 is_stmt 0 discriminator 5 view .LVU393
	l32r	a8, .LC50	#, tmp72
	addx4	a8, a2, a8	#, tmp74, a, tmp72
	l32i.n	a7, a8, 0	# WD_TAG[a$8_1], _4
.LVL92:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:203:             ESP_LOGW(WD_TAG[a], "Ответ GSTAT с ошибкой CRC (%u подряд) — помеха, читаю ещё раз", crc_err_count[a]);
	.loc 1 203 259 discriminator 5 view .LVU394
	call8	esp_log_timestamp		#
.LVL93:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:203:             ESP_LOGW(WD_TAG[a], "Ответ GSTAT с ошибкой CRC (%u подряд) — помеха, читаю ещё раз", crc_err_count[a]);
	.loc 1 203 184 discriminator 7 view .LVU395
	l32r	a8, .LC49	#, tmp75
	add.n	a8, a8, a2	# tmp76, tmp75, a
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:203:             ESP_LOGW(WD_TAG[a], "Ответ GSTAT с ошибкой CRC (%u подряд) — помеха, читаю ещё раз", crc_err_count[a]);
	.loc 1 203 259 discriminator 7 view .LVU396
	l8ui	a15, a8, 0	# crc_err_count[a$8_1],
	mov.n	a14, a7	#, _4
	mov.n	a13, a10	#, _5
	l32r	a12, .LC52	#,
	mov.n	a11, a7	#, _4
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL94:
	.loc 1 203 55 is_stmt 1 view .LVU397
	.loc 1 203 18 view .LVU398
.LBE62:
	.loc 1 203 13 view .LVU399
	.loc 1 204 13 view .LVU400
	j	.L37		#
.LVL95:
.L38:
	.loc 1 204 13 is_stmt 0 view .LVU401
.LBE61:
.LBE60:
.LBE59:
.LBE58:
	.loc 1 209 5 is_stmt 1 view .LVU402
.LBB64:
	beqz.n	a7, .L40	# err,
.LBB65:
	.loc 1 210 9 view .LVU403
.LBB66:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:210:         if (fault[a] == FAULT_NONE) {
	.loc 1 210 20 is_stmt 0 view .LVU404
	l32r	a8, .LC53	#, tmp78
	addx4	a8, a2, a8	#, tmp80, a, tmp78
	l32i.n	a8, a8, 0	# fault[a$30_14], _15
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:210:         if (fault[a] == FAULT_NONE) {
	.loc 1 210 9 view .LVU405
	bnez.n	a8, .L37	# _15,
.LBB67:
	.loc 1 211 13 is_stmt 1 view .LVU406
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:211:             axis_shutdown(a, FAULT_NO_RESPONSE);
	.loc 1 211 26 is_stmt 0 view .LVU407
	movi.n	a11, 4	#,
	mov.n	a10, a2	#, a
	call8	_ZL13axis_shutdown6axis_t11tmc_fault_t		#
.LVL96:
	.loc 1 212 13 is_stmt 1 view .LVU408
	.loc 1 212 18 view .LVU409
	.loc 1 212 23 view .LVU410
	.loc 1 212 56 view .LVU411
	.loc 1 212 61 view .LVU412
.LBB68:
.LBB69:
	.loc 1 212 120 discriminator 1 view .LVU413
.LBB70:
	.loc 1 212 145 discriminator 1 view .LVU414
	.loc 1 212 180 discriminator 1 view .LVU415
	.loc 1 212 221 view .LVU416
.LBE70:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:212:             ESP_LOGE(WD_TAG[a], "АВАРИЯ: драйвер не отвечает по UART (%s) — нет питания мотора VS или обрыв провода",
	.loc 1 212 251 is_stmt 0 discriminator 1 view .LVU417
	l32r	a8, .LC50	#, tmp81
	addx4	a8, a2, a8	#, tmp83, a, tmp81
	l32i.n	a2, a8, 0	# WD_TAG[a$30_14], _16
.LVL97:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:212:             ESP_LOGE(WD_TAG[a], "АВАРИЯ: драйвер не отвечает по UART (%s) — нет питания мотора VS или обрыв провода",
	.loc 1 212 127 discriminator 1 view .LVU418
	call8	esp_log_timestamp		#
.LVL98:
	mov.n	a6, a10	# _17, _17
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:212:             ESP_LOGE(WD_TAG[a], "АВАРИЯ: драйвер не отвечает по UART (%s) — нет питания мотора VS или обрыв провода",
	.loc 1 212 127 discriminator 3 view .LVU419
	mov.n	a10, a7	#, err
	call8	_Z15tmc_err_to_namei		#
.LVL99:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:212:             ESP_LOGE(WD_TAG[a], "АВАРИЯ: драйвер не отвечает по UART (%s) — нет питания мотора VS или обрыв провода",
	.loc 1 212 127 discriminator 4 view .LVU420
	mov.n	a15, a10	#, _18
	mov.n	a14, a2	#, _16
	mov.n	a13, a6	#, _17
	l32r	a12, .LC55	#,
	mov.n	a11, a2	#, _16
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL100:
	.loc 1 212 56 is_stmt 1 view .LVU421
	.loc 1 212 18 view .LVU422
.LBE69:
.LBE68:
	.loc 1 212 13 view .LVU423
.LBE67:
.LBE66:
	.loc 1 215 9 view .LVU424
	j	.L37		#
.LVL101:
.L40:
	.loc 1 215 9 is_stmt 0 view .LVU425
.LBE65:
.LBE64:
	.loc 1 218 5 is_stmt 1 view .LVU426
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:218:     crc_err_count[a] = 0;   // ответ нормальный — счётчик помех с начала
	.loc 1 218 22 is_stmt 0 view .LVU427
	l32r	a8, .LC49	#, tmp85
	add.n	a8, a8, a2	# tmp86, tmp85, a
	movi.n	a9, 0	# tmp87,
	s8i	a9, a8, 0	# crc_err_count[a$46_43], tmp87
	.loc 1 221 5 is_stmt 1 view .LVU428
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:221:     switch (fault[a]) {
	.loc 1 221 20 is_stmt 0 view .LVU429
	l32r	a8, .LC53	#, tmp88
	addx4	a8, a2, a8	#, tmp90, a, tmp88
	l32i.n	a8, a8, 0	# fault[a$46_43], _44
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:221:     switch (fault[a]) {
	.loc 1 221 5 view .LVU430
	beqi	a8, 3, .L42	# _44,,
	bgeui	a8, 4, .L43	# _44,,
	beqz.n	a8, .L44	# _44,
	beqi	a8, 1, .L45	# _44,,
	j	.L37		#
.L43:
	beqi	a8, 4, .L47	# _44,,
	beqi	a8, 5, .L48	# _44,,
	j	.L37		#
.L44:
	.loc 1 222 9 is_stmt 1 view .LVU431
	.loc 1 222 26 view .LVU432
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:222:         case FAULT_NONE:         check_running(a, gstat);            break;
	.loc 1 222 39 is_stmt 0 view .LVU433
	l32i.n	a11, sp, 0	# gstat,
	mov.n	a10, a2	#, a
	call8	_ZL13check_running6axis_tm		#
.LVL102:
	.loc 1 222 51 is_stmt 1 discriminator 1 view .LVU434
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:222:         case FAULT_NONE:         check_running(a, gstat);            break;
	.loc 1 222 51 is_stmt 0 view .LVU435
	j	.L37		#
.L47:
	.loc 1 223 9 is_stmt 1 view .LVU436
	.loc 1 223 33 view .LVU437
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:223:         case FAULT_NO_RESPONSE:  check_no_response(a, gstat);        break;
	.loc 1 223 50 is_stmt 0 view .LVU438
	l32i.n	a11, sp, 0	# gstat,
	mov.n	a10, a2	#, a
	call8	_ZL17check_no_response6axis_tm		#
.LVL103:
	.loc 1 223 62 is_stmt 1 discriminator 1 view .LVU439
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:223:         case FAULT_NO_RESPONSE:  check_no_response(a, gstat);        break;
	.loc 1 223 62 is_stmt 0 view .LVU440
	j	.L37		#
.L45:
	.loc 1 224 9 is_stmt 1 view .LVU441
	.loc 1 224 30 view .LVU442
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:224:         case FAULT_OVERHEAT:     check_overheat_fault(a, gstat);     break;
	.loc 1 224 50 is_stmt 0 view .LVU443
	l32i.n	a11, sp, 0	# gstat,
	mov.n	a10, a2	#, a
	call8	_ZL20check_overheat_fault6axis_tm		#
.LVL104:
	.loc 1 224 62 is_stmt 1 discriminator 1 view .LVU444
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:224:         case FAULT_OVERHEAT:     check_overheat_fault(a, gstat);     break;
	.loc 1 224 62 is_stmt 0 view .LVU445
	j	.L37		#
.L42:
	.loc 1 225 9 is_stmt 1 view .LVU446
	.loc 1 225 34 view .LVU447
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:225:         case FAULT_UNDERVOLTAGE: check_undervoltage_fault(a, gstat); break;
	.loc 1 225 58 is_stmt 0 view .LVU448
	l32i.n	a11, sp, 0	# gstat,
	mov.n	a10, a2	#, a
	call8	_ZL24check_undervoltage_fault6axis_tm		#
.LVL105:
	.loc 1 225 70 is_stmt 1 discriminator 1 view .LVU449
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:225:         case FAULT_UNDERVOLTAGE: check_undervoltage_fault(a, gstat); break;
	.loc 1 225 70 is_stmt 0 view .LVU450
	j	.L37		#
.L48:
	.loc 1 226 9 is_stmt 1 view .LVU451
	.loc 1 226 27 view .LVU452
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:226:         case FAULT_RESET:        axis_restore(a, true);              break;   // повторить перенастройку
	.loc 1 226 39 is_stmt 0 view .LVU453
	movi.n	a11, 1	#,
	mov.n	a10, a2	#, a
	call8	_ZL12axis_restore6axis_tb		#
.LVL106:
	.loc 1 226 50 is_stmt 1 discriminator 1 view .LVU454
.L37:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:229: }
	.loc 1 229 1 is_stmt 0 view .LVU455
	retw.n	
.LFE108:
	.size	_ZL19watchdog_check_axis6axis_t, .-_ZL19watchdog_check_axis6axis_t
	.section	.text._Z18tmc_watchdog_watch6axis_t,"ax",@progbits
	.literal_position
	.literal .LC56, _ZL7watched
	.align	4
	.global	_Z18tmc_watchdog_watch6axis_t
	.type	_Z18tmc_watchdog_watch6axis_t, @function
_Z18tmc_watchdog_watch6axis_t:
.LVL107:
.LFB99:
	.loc 1 35 35 is_stmt 1 view -0
	.loc 1 35 35 is_stmt 0 view .LVU457
	entry	sp, 32	#
.LCFI9:
	.loc 1 36 5 is_stmt 1 view .LVU458
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:36:     watched[a] = true;
	.loc 1 36 16 is_stmt 0 view .LVU459
	l32r	a8, .LC56	#, tmp44
	add.n	a8, a8, a2	# tmp45, tmp44, a
	movi.n	a9, 1	# tmp46,
	s8i	a9, a8, 0	# watched[a$0_1], tmp46
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:37: }
	.loc 1 37 1 view .LVU460
	retw.n	
.LFE99:
	.size	_Z18tmc_watchdog_watch6axis_t, .-_Z18tmc_watchdog_watch6axis_t
	.section	.rodata._Z17tmc_watchdog_taskPv.str1.4,"aMS",@progbits,1
	.align	4
.LC60:
	.string	"tmc-watchdog RA"
	.align	4
.LC62:
	.base64	"RSAoJWx1KSAlczog0J3QtSDQvtGC0LLQtdGH0LDRjtGCINCS0KHQlSDQtNGA0LDQudCy0LXRgNGLIOKAlCDQstC10YDQvtGP0YLQvdC+LCDQv9GA0L7Qv9Cw0LvQviDQvtCx0YnQtdC1INC/0LjRgtCw0L3QuNC1INC80L7RgtC+0YDQvtCyIFZTCgA="
	.section	.text._Z17tmc_watchdog_taskPv,"ax",@progbits
	.literal_position
	.literal .LC57, _ZL7watched
	.literal .LC58, _ZL5fault
	.literal .LC59, _ZL22all_no_response_logged
	.literal .LC61, .LC60
	.literal .LC63, .LC62
	.align	4
	.global	_Z17tmc_watchdog_taskPv
	.type	_Z17tmc_watchdog_taskPv, @function
_Z17tmc_watchdog_taskPv:
.LFB109:
	.loc 1 241 36 is_stmt 1 view -0
.LVL108:
	.loc 1 241 36 is_stmt 0 view .LVU462
	entry	sp, 32	#
.LCFI10:
.LVL109:
.L52:
	.loc 1 242 5 is_stmt 1 view .LVU463
.LBB71:
	.loc 1 243 9 view .LVU464
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:243:         vTaskDelay(pdMS_TO_TICKS(TMC_WATCHDOG_TASK_DELAY_MS));
	.loc 1 243 19 is_stmt 0 view .LVU465
	movi.n	a10, 0xa	#,
	call8	vTaskDelay		#
.LVL110:
	.loc 1 250 9 is_stmt 1 view .LVU466
.LBB72:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:250:         for (int i = 0; i < AXIS_COUNT; i++) {
	.loc 1 250 18 is_stmt 0 view .LVU467
	movi.n	a7, 0	# i,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:250:         for (int i = 0; i < AXIS_COUNT; i++) {
	.loc 1 250 9 view .LVU468
	j	.L53		#
.LVL111:
.L55:
.LBB73:
	.loc 1 251 13 is_stmt 1 view .LVU469
	.loc 1 252 13 view .LVU470
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:252:             if (watched[a]) {
	.loc 1 252 26 is_stmt 0 view .LVU471
	l32r	a8, .LC57	#, tmp56
	add.n	a8, a8, a7	# tmp57, tmp56, i
	l8ui	a8, a8, 0	# watched[i_16], _1
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:252:             if (watched[a]) {
	.loc 1 252 13 view .LVU472
	beqz.n	a8, .L54	# _1,
	.loc 1 253 17 is_stmt 1 view .LVU473
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:253:                 watchdog_check_axis(a);
	.loc 1 253 36 is_stmt 0 view .LVU474
	mov.n	a10, a7	#, i
	call8	_ZL19watchdog_check_axis6axis_t		#
.LVL112:
.L54:
	.loc 1 253 36 view .LVU475
.LBE73:
	.loc 1 250 9 is_stmt 1 discriminator 2 view .LVU476
	addi.n	a7, a7, 1	# i, i,
.LVL113:
.L53:
	.loc 1 250 27 discriminator 1 view .LVU477
	blti	a7, 2, .L55	# i,,
.LBE72:
.LBB74:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:260:         for (int i = 0; i < AXIS_COUNT; i++) {
	.loc 1 260 18 is_stmt 0 view .LVU478
	movi.n	a8, 0	# i,
.LBE74:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:259:         bool all_no_response = true;
	.loc 1 259 14 view .LVU479
	movi.n	a12, 1	# all_no_response,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:258:         bool any_watched = false;
	.loc 1 258 14 view .LVU480
	mov.n	a11, a8	# any_watched, i
	j	.L56		#
.LVL114:
.L58:
.LBB75:
	.loc 1 261 13 is_stmt 1 view .LVU481
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:261:             if (!watched[i]) continue;
	.loc 1 261 27 is_stmt 0 view .LVU482
	l32r	a9, .LC57	#, tmp58
	add.n	a9, a9, a8	# tmp59, tmp58, i
	l8ui	a10, a9, 0	# watched[i_15], _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:261:             if (!watched[i]) continue;
	.loc 1 261 13 view .LVU483
	beqz.n	a10, .L57	# _2,
	.loc 1 262 13 is_stmt 1 view .LVU484
.LVL115:
	.loc 1 263 13 view .LVU485
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:263:             if (fault[i] != FAULT_NO_RESPONSE) all_no_response = false;
	.loc 1 263 24 is_stmt 0 view .LVU486
	l32r	a9, .LC58	#, tmp60
	addx4	a9, a8, a9	#, tmp62, i, tmp60
	l32i.n	a9, a9, 0	# fault[i_15], _3
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:263:             if (fault[i] != FAULT_NO_RESPONSE) all_no_response = false;
	.loc 1 263 13 view .LVU487
	bnei	a9, 4, .L61	# _3,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:262:             any_watched = true;
	.loc 1 262 25 view .LVU488
	mov.n	a11, a10	# any_watched, _2
	j	.L57		#
.L61:
	mov.n	a11, a10	# any_watched, _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:263:             if (fault[i] != FAULT_NO_RESPONSE) all_no_response = false;
	.loc 1 263 64 discriminator 1 view .LVU489
	movi.n	a12, 0	# all_no_response,
.LVL116:
.L57:
	.loc 1 260 9 is_stmt 1 discriminator 2 view .LVU490
	addi.n	a8, a8, 1	# i, i,
.LVL117:
.L56:
	.loc 1 260 27 discriminator 1 view .LVU491
	blti	a8, 2, .L58	# i,,
.LBE75:
	.loc 1 265 9 view .LVU492
.LBB76:
	bnone	a12, a11, .L59	# all_no_response, any_watched,
	.loc 1 266 13 view .LVU493
.LBB77:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:266:             if (!all_no_response_logged) {
	.loc 1 266 17 is_stmt 0 view .LVU494
	l32r	a8, .LC59	#, tmp64
.LVL118:
	.loc 1 266 17 view .LVU495
	l8ui	a8, a8, 0	# all_no_response_logged, all_no_response_logged$2_5
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:266:             if (!all_no_response_logged) {
	.loc 1 266 13 view .LVU496
	bnez.n	a8, .L52	# all_no_response_logged$2_5,
.LBB78:
	.loc 1 267 17 is_stmt 1 view .LVU497
	.loc 1 267 22 view .LVU498
	.loc 1 267 27 view .LVU499
	.loc 1 267 60 view .LVU500
	.loc 1 267 65 view .LVU501
.LBB79:
	.loc 1 267 124 discriminator 1 view .LVU502
.LBB80:
	.loc 1 267 149 discriminator 1 view .LVU503
	.loc 1 267 184 discriminator 1 view .LVU504
	.loc 1 267 225 view .LVU505
.LBE80:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:267:                 ESP_LOGE(WD_TAG[AXIS_RA], "Не отвечают ВСЕ драйверы — вероятно, пропало общее питание моторов VS");
	.loc 1 267 131 is_stmt 0 discriminator 1 view .LVU506
	call8	esp_log_timestamp		#
.LVL119:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:267:                 ESP_LOGE(WD_TAG[AXIS_RA], "Не отвечают ВСЕ драйверы — вероятно, пропало общее питание моторов VS");
	.loc 1 267 131 discriminator 3 view .LVU507
	l32r	a11, .LC61	#, tmp65
	mov.n	a14, a11	#, tmp65
	mov.n	a13, a10	#, _7
	l32r	a12, .LC63	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL120:
	.loc 1 267 60 is_stmt 1 view .LVU508
	.loc 1 267 22 view .LVU509
.LBE79:
	.loc 1 267 17 view .LVU510
	.loc 1 268 17 view .LVU511
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:268:                 all_no_response_logged = true;
	.loc 1 268 40 is_stmt 0 view .LVU512
	movi.n	a9, 1	# __esp_log_config,
	.loc 1 268 40 view .LVU513
	l32r	a8, .LC59	#, tmp68
	.loc 1 268 40 view .LVU514
	s8i	a9, a8, 0	# all_no_response_logged, __esp_log_config
.LBE78:
	j	.L52		#
.LVL121:
.L59:
	.loc 1 268 40 view .LVU515
.LBE77:
	.loc 1 271 13 is_stmt 1 view .LVU516
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp:271:             all_no_response_logged = false;
	.loc 1 271 36 is_stmt 0 view .LVU517
	l32r	a8, .LC59	#, tmp70
.LVL122:
	.loc 1 271 36 view .LVU518
	movi.n	a9, 0	# tmp71,
	s8i	a9, a8, 0	# all_no_response_logged, tmp71
	j	.L52		#
.LBE76:
.LBE71:
.LFE109:
	.size	_Z17tmc_watchdog_taskPv, .-_Z17tmc_watchdog_taskPv
	.section	.bss._ZL22all_no_response_logged,"aw",@nobits
	.type	_ZL22all_no_response_logged, @object
	.size	_ZL22all_no_response_logged, 1
_ZL22all_no_response_logged:
	.zero	1
	.section	.bss._ZL7watched,"aw",@nobits
	.align	4
	.type	_ZL7watched, @object
	.size	_ZL7watched, 2
_ZL7watched:
	.zero	2
	.section	.bss._ZL13crc_err_count,"aw",@nobits
	.align	4
	.type	_ZL13crc_err_count, @object
	.size	_ZL13crc_err_count, 2
_ZL13crc_err_count:
	.zero	2
	.section	.bss._ZL5fault,"aw",@nobits
	.align	4
	.type	_ZL5fault, @object
	.size	_ZL5fault, 8
_ZL5fault:
	.zero	8
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC64:
	.string	"tmc-watchdog DEC"
	.section	.rodata._ZL6WD_TAG,"a"
	.align	4
	.type	_ZL6WD_TAG, @object
	.size	_ZL6WD_TAG, 8
_ZL6WD_TAG:
	.word	.LC60
	.word	.LC64
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
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.byte	0x4
	.4byte	.LCFI0-.LFB100
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.byte	0x4
	.4byte	.LCFI1-.LFB102
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.byte	0x4
	.4byte	.LCFI2-.LFB103
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.byte	0x4
	.4byte	.LCFI3-.LFB101
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.byte	0x4
	.4byte	.LCFI4-.LFB104
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.byte	0x4
	.4byte	.LCFI5-.LFB105
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x4
	.4byte	.LCFI6-.LFB106
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x4
	.4byte	.LCFI7-.LFB107
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x4
	.4byte	.LCFI8-.LFB108
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.byte	0x4
	.4byte	.LCFI9-.LFB99
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI10-.LFB109
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/cstdint"
	.file 3 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/xtensa-esp-elf/include/c++/15.2.0/xtensa-esp-elf/esp32s3/no-rtti/bits/c++config.h"
	.file 4 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/machine/_default_types.h"
	.file 5 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/sys/_stdint.h"
	.file 6 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/stdint.h"
	.file 7 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h"
	.file 8 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h"
	.file 9 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.h"
	.file 10 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_common/include/esp_err.h"
	.file 11 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_level.h"
	.file 12 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_config.h"
	.file 13 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_args.h"
	.file 14 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h"
	.file 15 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.h"
	.file 16 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/soc/esp32s3/include/soc/clk_tree_defs.h"
	.file 17 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_hal_uart/include/hal/uart_types.h"
	.file 18 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.h"
	.file 19 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.h"
	.file 20 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.h"
	.file 21 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_timestamp.h"
	.file 22 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log.h"
	.file 23 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a83
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF201
	.byte	0x4
	.4byte	.LASF202
	.4byte	.LASF203
	.4byte	.Ldebug_ranges0+0x30
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
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.string	"std"
	.byte	0x3
	.2byte	0x150
	.byte	0xb
	.4byte	0x13a
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x173
	.byte	0x41
	.uleb128 0x5
	.byte	0x3
	.2byte	0x173
	.byte	0x41
	.4byte	0x47
	.uleb128 0x6
	.byte	0x2
	.byte	0x35
	.byte	0xb
	.4byte	0x28c
	.uleb128 0x6
	.byte	0x2
	.byte	0x36
	.byte	0xb
	.4byte	0x2a4
	.uleb128 0x6
	.byte	0x2
	.byte	0x37
	.byte	0xb
	.4byte	0x2bc
	.uleb128 0x6
	.byte	0x2
	.byte	0x38
	.byte	0xb
	.4byte	0x2d9
	.uleb128 0x6
	.byte	0x2
	.byte	0x3a
	.byte	0xb
	.4byte	0x381
	.uleb128 0x6
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.4byte	0x399
	.uleb128 0x6
	.byte	0x2
	.byte	0x3c
	.byte	0xb
	.4byte	0x3b1
	.uleb128 0x6
	.byte	0x2
	.byte	0x3d
	.byte	0xb
	.4byte	0x3c9
	.uleb128 0x6
	.byte	0x2
	.byte	0x3f
	.byte	0xb
	.4byte	0x321
	.uleb128 0x6
	.byte	0x2
	.byte	0x40
	.byte	0xb
	.4byte	0x339
	.uleb128 0x6
	.byte	0x2
	.byte	0x41
	.byte	0xb
	.4byte	0x351
	.uleb128 0x6
	.byte	0x2
	.byte	0x42
	.byte	0xb
	.4byte	0x369
	.uleb128 0x6
	.byte	0x2
	.byte	0x44
	.byte	0xb
	.4byte	0x2f1
	.uleb128 0x6
	.byte	0x2
	.byte	0x45
	.byte	0xb
	.4byte	0x309
	.uleb128 0x6
	.byte	0x2
	.byte	0x47
	.byte	0xb
	.4byte	0x298
	.uleb128 0x6
	.byte	0x2
	.byte	0x48
	.byte	0xb
	.4byte	0x2b0
	.uleb128 0x6
	.byte	0x2
	.byte	0x49
	.byte	0xb
	.4byte	0x2c8
	.uleb128 0x6
	.byte	0x2
	.byte	0x4a
	.byte	0xb
	.4byte	0x2e5
	.uleb128 0x6
	.byte	0x2
	.byte	0x4c
	.byte	0xb
	.4byte	0x38d
	.uleb128 0x6
	.byte	0x2
	.byte	0x4d
	.byte	0xb
	.4byte	0x3a5
	.uleb128 0x6
	.byte	0x2
	.byte	0x4e
	.byte	0xb
	.4byte	0x3bd
	.uleb128 0x6
	.byte	0x2
	.byte	0x4f
	.byte	0xb
	.4byte	0x3d5
	.uleb128 0x6
	.byte	0x2
	.byte	0x51
	.byte	0xb
	.4byte	0x32d
	.uleb128 0x6
	.byte	0x2
	.byte	0x52
	.byte	0xb
	.4byte	0x345
	.uleb128 0x6
	.byte	0x2
	.byte	0x53
	.byte	0xb
	.4byte	0x35d
	.uleb128 0x6
	.byte	0x2
	.byte	0x54
	.byte	0xb
	.4byte	0x375
	.uleb128 0x6
	.byte	0x2
	.byte	0x56
	.byte	0xb
	.4byte	0x2fd
	.uleb128 0x6
	.byte	0x2
	.byte	0x57
	.byte	0xb
	.4byte	0x315
	.byte	0
	.uleb128 0x7
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x175
	.byte	0xb
	.4byte	0x15a
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x177
	.byte	0x41
	.uleb128 0x5
	.byte	0x3
	.2byte	0x177
	.byte	0x41
	.4byte	0x147
	.byte	0
	.uleb128 0x8
	.4byte	.LASF6
	.byte	0x4
	.byte	0xd2
	.byte	0x15
	.4byte	0x166
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x4
	.byte	0xd7
	.byte	0x17
	.4byte	0x33
	.uleb128 0x8
	.4byte	.LASF8
	.byte	0x4
	.byte	0xdb
	.byte	0x13
	.4byte	0x185
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x4
	.byte	0xe0
	.byte	0x1c
	.4byte	0x198
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x4
	.byte	0xe4
	.byte	0x12
	.4byte	0x1ab
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0xe9
	.byte	0x1b
	.4byte	0x1be
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0xed
	.byte	0x17
	.4byte	0x1d1
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0xf2
	.byte	0x20
	.4byte	0x25
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0xf6
	.byte	0x15
	.4byte	0x166
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0xf8
	.byte	0x17
	.4byte	0x33
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x110
	.byte	0x13
	.4byte	0x185
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x112
	.byte	0x1c
	.4byte	0x198
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x126
	.byte	0x12
	.4byte	0x1ab
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x128
	.byte	0x1b
	.4byte	0x1be
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x138
	.byte	0x17
	.4byte	0x1d1
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x13a
	.byte	0x20
	.4byte	0x25
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x146
	.byte	0x17
	.4byte	0x1d1
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x14e
	.byte	0x20
	.4byte	0x25
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x156
	.byte	0xd
	.4byte	0x271
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x158
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF31
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x5
	.byte	0x12
	.byte	0x12
	.4byte	0x15a
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x5
	.byte	0x16
	.byte	0x13
	.4byte	0x16d
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x5
	.byte	0x1e
	.byte	0x13
	.4byte	0x179
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x5
	.byte	0x22
	.byte	0x14
	.4byte	0x18c
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x5
	.byte	0x2a
	.byte	0x13
	.4byte	0x19f
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x5
	.byte	0x2e
	.byte	0x14
	.4byte	0x1b2
	.uleb128 0xb
	.4byte	0x2c8
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x5
	.byte	0x36
	.byte	0x13
	.4byte	0x1c5
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x5
	.byte	0x3a
	.byte	0x14
	.4byte	0x1d8
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x5
	.byte	0x41
	.byte	0x14
	.4byte	0x24a
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x5
	.byte	0x46
	.byte	0x15
	.4byte	0x257
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x5
	.byte	0x4b
	.byte	0x14
	.4byte	0x264
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x5
	.byte	0x50
	.byte	0x15
	.4byte	0x278
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x6
	.byte	0x14
	.byte	0x18
	.4byte	0x1e4
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x6
	.byte	0x15
	.byte	0x19
	.4byte	0x1f0
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x6
	.byte	0x1a
	.byte	0x19
	.4byte	0x1fc
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x6
	.byte	0x1b
	.byte	0x1a
	.4byte	0x209
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x6
	.byte	0x20
	.byte	0x19
	.4byte	0x216
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x6
	.byte	0x21
	.byte	0x1a
	.4byte	0x223
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x6
	.byte	0x26
	.byte	0x19
	.4byte	0x230
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x6
	.byte	0x27
	.byte	0x1a
	.4byte	0x23d
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x6
	.byte	0x32
	.byte	0xf
	.4byte	0x271
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x6
	.byte	0x33
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x6
	.byte	0x3c
	.byte	0xf
	.4byte	0x271
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x6
	.byte	0x3d
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x6
	.byte	0x46
	.byte	0xf
	.4byte	0x271
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x6
	.byte	0x47
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x6
	.byte	0x50
	.byte	0x19
	.4byte	0x1d1
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x6
	.byte	0x51
	.byte	0x22
	.4byte	0x25
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF60
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x7
	.byte	0x29
	.byte	0x14
	.4byte	0x2d4
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x7
	.byte	0x2b
	.byte	0x14
	.4byte	0x2d4
	.byte	0xb4
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x7
	.byte	0x2c
	.byte	0x14
	.4byte	0x2d4
	.byte	0x6e
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x7
	.byte	0x2d
	.byte	0x14
	.4byte	0x2d4
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x7
	.byte	0x33
	.byte	0x14
	.4byte	0x2d4
	.2byte	0x3d2
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x17
	.byte	0x6
	.4byte	0x44f
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x461
	.uleb128 0xb
	.4byte	0x44f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF69
	.uleb128 0xb
	.4byte	0x45a
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x6
	.byte	0x6
	.4byte	0x49d
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0xa
	.byte	0x13
	.byte	0xd
	.4byte	0x271
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x14
	.byte	0xe
	.4byte	.LASF97
	.4byte	0x4e8
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0xb
	.byte	0x1c
	.byte	0x3
	.4byte	0x4ab
	.uleb128 0x13
	.byte	0x4
	.byte	0xc
	.byte	0x77
	.byte	0x10
	.4byte	.LASF204
	.4byte	0x5a4
	.uleb128 0x14
	.byte	0x4
	.byte	0xc
	.byte	0x78
	.byte	0xb
	.4byte	0x59d
	.uleb128 0x15
	.byte	0x4
	.byte	0xc
	.byte	0x79
	.byte	0x10
	.4byte	0x584
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0xc
	.byte	0x7a
	.byte	0x1d
	.4byte	0x4e8
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0xc
	.byte	0x7b
	.byte	0x16
	.4byte	0x2c8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0xc
	.byte	0x7c
	.byte	0x16
	.4byte	0x2c8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0xc
	.byte	0x7d
	.byte	0x16
	.4byte	0x2c8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0xc
	.byte	0x7e
	.byte	0x16
	.4byte	0x2c8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0xc
	.byte	0x7f
	.byte	0x16
	.4byte	0x2c8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0xc
	.byte	0x80
	.byte	0x16
	.4byte	0x2c8
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0xc
	.byte	0x81
	.byte	0xb
	.4byte	0x50a
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0xc
	.byte	0x82
	.byte	0x12
	.4byte	0x2c8
	.byte	0
	.uleb128 0x18
	.4byte	0x501
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0xc
	.byte	0x84
	.byte	0x3
	.4byte	0x4f4
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.4byte	.LASF98
	.4byte	0x5db
	.uleb128 0xf
	.4byte	.LASF99
	.byte	0
	.uleb128 0xf
	.4byte	.LASF100
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF101
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF102
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF103
	.byte	0xd
	.byte	0x29
	.byte	0x3
	.4byte	0x5b0
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0xe
	.byte	0x59
	.byte	0x12
	.4byte	0x2c8
	.uleb128 0x19
	.4byte	0x298
	.4byte	0x603
	.uleb128 0x1a
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x5
	.byte	0x4
	.4byte	0x49f
	.byte	0xf
	.byte	0x16
	.byte	0x6
	.4byte	0x667
	.uleb128 0x1b
	.4byte	.LASF106
	.4byte	0x20000
	.uleb128 0x1b
	.4byte	.LASF107
	.4byte	0x20001
	.uleb128 0x1b
	.4byte	.LASF108
	.4byte	0x20002
	.uleb128 0x1b
	.4byte	.LASF109
	.4byte	0x20003
	.uleb128 0x1b
	.4byte	.LASF110
	.4byte	0x20004
	.uleb128 0x1b
	.4byte	.LASF111
	.4byte	0x20005
	.uleb128 0x1b
	.4byte	.LASF112
	.4byte	0x20006
	.uleb128 0x1b
	.4byte	.LASF113
	.4byte	0x20007
	.uleb128 0x1b
	.4byte	.LASF114
	.4byte	0x20008
	.byte	0
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.byte	0x50
	.byte	0xe
	.4byte	.LASF115
	.4byte	0x698
	.uleb128 0xf
	.4byte	.LASF116
	.byte	0
	.uleb128 0xf
	.4byte	.LASF117
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF118
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF119
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF120
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF121
	.byte	0x10
	.byte	0x57
	.byte	0x3
	.4byte	0x667
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.byte	0x5d
	.byte	0xe
	.4byte	.LASF122
	.4byte	0x6d5
	.uleb128 0xf
	.4byte	.LASF123
	.byte	0
	.uleb128 0xf
	.4byte	.LASF124
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF125
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF126
	.byte	0
	.uleb128 0xf
	.4byte	.LASF127
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0x10
	.byte	0x65
	.byte	0x3
	.4byte	0x6a4
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.byte	0x7a
	.byte	0xe
	.4byte	.LASF129
	.4byte	0x742
	.uleb128 0xf
	.4byte	.LASF130
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF131
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF132
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF133
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF135
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF136
	.byte	0x7
	.uleb128 0xf
	.4byte	.LASF137
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0x9
	.uleb128 0xf
	.4byte	.LASF139
	.byte	0xa
	.uleb128 0xf
	.4byte	.LASF140
	.byte	0xb
	.uleb128 0xf
	.4byte	.LASF141
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF142
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF143
	.byte	0x10
	.byte	0x8b
	.byte	0x3
	.4byte	0x6e1
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x11
	.byte	0x16
	.byte	0xe
	.4byte	.LASF144
	.4byte	0x779
	.uleb128 0xf
	.4byte	.LASF145
	.byte	0
	.uleb128 0xf
	.4byte	.LASF146
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF147
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF148
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF149
	.byte	0x11
	.byte	0x26
	.byte	0x3
	.4byte	0x74e
	.uleb128 0x19
	.4byte	0x455
	.4byte	0x795
	.uleb128 0x1a
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x785
	.uleb128 0x1c
	.4byte	.LASF150
	.byte	0x1
	.byte	0x14
	.byte	0x1a
	.4byte	0x795
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL6WD_TAG
	.uleb128 0x19
	.4byte	0x466
	.4byte	0x7bc
	.uleb128 0x1a
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF151
	.byte	0x1
	.byte	0x17
	.byte	0x14
	.4byte	0x7ac
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL5fault
	.uleb128 0x1c
	.4byte	.LASF152
	.byte	0x1
	.byte	0x1c
	.byte	0x10
	.4byte	0x5f3
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL13crc_err_count
	.uleb128 0x19
	.4byte	0x3e1
	.4byte	0x7f0
	.uleb128 0x1a
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF153
	.byte	0x1
	.byte	0x21
	.byte	0xd
	.4byte	0x7e0
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL7watched
	.uleb128 0x1c
	.4byte	.LASF154
	.byte	0x1
	.byte	0x28
	.byte	0xd
	.4byte	0x3e1
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL22all_no_response_logged
	.uleb128 0x1d
	.4byte	.LASF169
	.byte	0x14
	.byte	0x1a
	.byte	0x6
	.4byte	.LASF171
	.uleb128 0x1e
	.4byte	.LASF155
	.byte	0x12
	.byte	0x1e
	.byte	0x6
	.4byte	.LASF157
	.4byte	0x836
	.uleb128 0x1f
	.4byte	0x42a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF156
	.byte	0x12
	.byte	0x3c
	.byte	0x6
	.4byte	.LASF158
	.4byte	0x84c
	.uleb128 0x1f
	.4byte	0x42a
	.byte	0
	.uleb128 0x20
	.4byte	.LASF159
	.byte	0x12
	.byte	0xd
	.byte	0xb
	.4byte	.LASF161
	.4byte	0x49f
	.4byte	0x866
	.uleb128 0x1f
	.4byte	0x42a
	.byte	0
	.uleb128 0x20
	.4byte	.LASF160
	.byte	0x13
	.byte	0x25
	.byte	0xb
	.4byte	.LASF162
	.4byte	0x49f
	.4byte	0x88a
	.uleb128 0x1f
	.4byte	0x42a
	.uleb128 0x1f
	.4byte	0x298
	.uleb128 0x1f
	.4byte	0x2c8
	.byte	0
	.uleb128 0x20
	.4byte	.LASF163
	.byte	0x12
	.byte	0x24
	.byte	0xb
	.4byte	.LASF164
	.4byte	0x49f
	.4byte	0x8a4
	.uleb128 0x1f
	.4byte	0x42a
	.byte	0
	.uleb128 0x20
	.4byte	.LASF165
	.byte	0x12
	.byte	0x3b
	.byte	0xb
	.4byte	.LASF166
	.4byte	0x49f
	.4byte	0x8be
	.uleb128 0x1f
	.4byte	0x42a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF167
	.byte	0x12
	.byte	0x1f
	.byte	0x6
	.4byte	.LASF168
	.4byte	0x8d4
	.uleb128 0x1f
	.4byte	0x42a
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF170
	.byte	0x14
	.byte	0x19
	.byte	0x6
	.4byte	.LASF172
	.uleb128 0x20
	.4byte	.LASF173
	.byte	0xf
	.byte	0x29
	.byte	0xd
	.4byte	.LASF174
	.4byte	0x44f
	.4byte	0x8fa
	.uleb128 0x1f
	.4byte	0x49f
	.byte	0
	.uleb128 0x20
	.4byte	.LASF175
	.byte	0x13
	.byte	0x24
	.byte	0xb
	.4byte	.LASF176
	.4byte	0x49f
	.4byte	0x91e
	.uleb128 0x1f
	.4byte	0x42a
	.uleb128 0x1f
	.4byte	0x298
	.uleb128 0x1f
	.4byte	0x91e
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2c8
	.uleb128 0x21
	.4byte	.LASF178
	.byte	0x16
	.byte	0x26
	.byte	0x6
	.4byte	0x941
	.uleb128 0x1f
	.4byte	0x5a4
	.uleb128 0x1f
	.4byte	0x44f
	.uleb128 0x1f
	.4byte	0x44f
	.uleb128 0x22
	.byte	0
	.uleb128 0x23
	.4byte	.LASF177
	.byte	0x15
	.byte	0x26
	.byte	0xa
	.4byte	0x2c8
	.uleb128 0x24
	.4byte	.LASF179
	.byte	0x17
	.2byte	0x342
	.byte	0x6
	.4byte	0x960
	.uleb128 0x1f
	.4byte	0x5e7
	.byte	0
	.uleb128 0x25
	.4byte	.LASF195
	.byte	0x1
	.byte	0xf1
	.byte	0x6
	.4byte	.LASF197
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xadd
	.uleb128 0x26
	.4byte	.LASF183
	.byte	0x1
	.byte	0xf1
	.byte	0x1e
	.4byte	0x49d
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x27
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.uleb128 0x28
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x102
	.byte	0xe
	.4byte	0x3e1
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x28
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x103
	.byte	0xe
	.4byte	0x3e1
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x29
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.4byte	0xa0d
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.byte	0xfa
	.byte	0x12
	.4byte	0x271
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x27
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.uleb128 0x2a
	.string	"a"
	.byte	0x1
	.byte	0xfb
	.byte	0x14
	.4byte	0x42a
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x2b
	.4byte	.LVL112
	.4byte	0xadd
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xa2a
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x104
	.byte	0x12
	.4byte	0x271
	.4byte	.LLST21
	.4byte	.LVUS21
	.byte	0
	.uleb128 0x29
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.4byte	0xa45
	.uleb128 0x2f
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x10b
	.byte	0xa6
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xa59
	.uleb128 0x31
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x10b
	.2byte	0x13a
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xa6d
	.uleb128 0x31
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x10b
	.2byte	0x13b
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xa81
	.uleb128 0x31
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x10b
	.2byte	0x13d
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xa95
	.uleb128 0x31
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x10b
	.2byte	0x102
	.4byte	0x5a4
	.byte	0
	.uleb128 0x32
	.4byte	.LVL110
	.4byte	0x94d
	.4byte	0xaa8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x33
	.4byte	.LVL119
	.4byte	0x941
	.uleb128 0x2b
	.4byte	.LVL120
	.4byte	0x924
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF185
	.byte	0x1
	.byte	0xc2
	.byte	0xd
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd0d
	.uleb128 0x35
	.string	"a"
	.byte	0x1
	.byte	0xc2
	.byte	0x28
	.4byte	0x42a
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1c
	.4byte	.LASF184
	.byte	0x1
	.byte	0xc3
	.byte	0xe
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.byte	0xc5
	.byte	0xf
	.4byte	0x49f
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x30
	.4byte	0xb3a
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xcb
	.byte	0xa0
	.4byte	0x5a4
	.byte	0
	.uleb128 0x29
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.4byte	0xb55
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0xcb
	.2byte	0x126
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xb68
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0xcb
	.2byte	0x127
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xb7b
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0xcb
	.2byte	0x129
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xb8d
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xcb
	.byte	0xef
	.4byte	0x5a4
	.byte	0
	.uleb128 0x29
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.4byte	0xba7
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xd4
	.byte	0xa2
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xbba
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0xd4
	.2byte	0x154
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xbcd
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0xd4
	.2byte	0x155
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xbe0
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0xd4
	.2byte	0x157
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xbf3
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0xd4
	.2byte	0x11c
	.4byte	0x5a4
	.byte	0
	.uleb128 0x32
	.4byte	.LVL90
	.4byte	0x8fa
	.4byte	0xc12
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x33
	.4byte	.LVL93
	.4byte	0x941
	.uleb128 0x32
	.4byte	.LVL94
	.4byte	0x924
	.4byte	0xc43
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL96
	.4byte	0x1614
	.4byte	0xc5c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x33
	.4byte	.LVL98
	.4byte	0x941
	.uleb128 0x32
	.4byte	.LVL99
	.4byte	0x8e0
	.4byte	0xc79
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL100
	.4byte	0x924
	.4byte	0xca7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL102
	.4byte	0x1188
	.4byte	0xcbb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL103
	.4byte	0x1092
	.4byte	0xccf
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL104
	.4byte	0xde9
	.4byte	0xce3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL105
	.4byte	0xd0d
	.4byte	0xcf7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL106
	.4byte	0x1700
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF186
	.byte	0x1
	.byte	0xb7
	.byte	0xd
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde9
	.uleb128 0x38
	.string	"a"
	.byte	0x1
	.byte	0xb7
	.byte	0x2d
	.4byte	0x42a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x39
	.4byte	.LASF184
	.byte	0x1
	.byte	0xb7
	.byte	0x39
	.4byte	0x2c8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	0xd4f
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xba
	.byte	0x98
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xd61
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xba
	.byte	0xe2
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xd73
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xba
	.byte	0xe3
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xd85
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xba
	.byte	0xe5
	.4byte	0x5a4
	.byte	0
	.uleb128 0x29
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.4byte	0xd9f
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xba
	.byte	0xab
	.4byte	0x5a4
	.byte	0
	.uleb128 0x33
	.4byte	.LVL86
	.4byte	0x941
	.uleb128 0x32
	.4byte	.LVL87
	.4byte	0x924
	.4byte	0xdd0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL88
	.4byte	0x1700
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF187
	.byte	0x1
	.byte	0xa0
	.byte	0xd
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1092
	.uleb128 0x35
	.string	"a"
	.byte	0x1
	.byte	0xa0
	.byte	0x29
	.4byte	0x42a
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x26
	.4byte	.LASF184
	.byte	0x1
	.byte	0xa0
	.byte	0x35
	.4byte	0x2c8
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x3a
	.string	"drv"
	.byte	0x1
	.byte	0xa1
	.byte	0xe
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.byte	0xa2
	.byte	0xf
	.4byte	0x49f
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x29
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.4byte	0xe62
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xa4
	.byte	0x9e
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xe75
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0xa4
	.2byte	0x11c
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xe88
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0xa4
	.2byte	0x11d
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xe9b
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0xa4
	.2byte	0x11f
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xead
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xa4
	.byte	0xe4
	.4byte	0x5a4
	.byte	0
	.uleb128 0x29
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.4byte	0xec7
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xae
	.byte	0x9e
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xeda
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0xae
	.2byte	0x105
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xeed
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0xae
	.2byte	0x106
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xf00
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0xae
	.2byte	0x108
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xf12
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xae
	.byte	0xcd
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xf24
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xb2
	.byte	0x98
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xf36
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xb2
	.byte	0xd3
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xf48
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xb2
	.byte	0xd4
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0xf5a
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xb2
	.byte	0xd6
	.4byte	0x5a4
	.byte	0
	.uleb128 0x29
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.4byte	0xf74
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0xb2
	.byte	0x9c
	.4byte	0x5a4
	.byte	0
	.uleb128 0x32
	.4byte	.LVL65
	.4byte	0x8fa
	.4byte	0xf94
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x33
	.4byte	.LVL68
	.4byte	0x941
	.uleb128 0x32
	.4byte	.LVL70
	.4byte	0x8e0
	.4byte	0xfb1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL71
	.4byte	0x924
	.4byte	0xfdf
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL73
	.4byte	0x866
	.4byte	0xffd
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x33
	.4byte	.LVL76
	.4byte	0x941
	.uleb128 0x32
	.4byte	.LVL78
	.4byte	0x8e0
	.4byte	0x101a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL79
	.4byte	0x924
	.4byte	0x1048
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL82
	.4byte	0x941
	.uleb128 0x32
	.4byte	.LVL83
	.4byte	0x924
	.4byte	0x1079
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL84
	.4byte	0x1700
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x77
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF188
	.byte	0x1
	.byte	0x95
	.byte	0xd
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1188
	.uleb128 0x38
	.string	"a"
	.byte	0x1
	.byte	0x95
	.byte	0x26
	.4byte	0x42a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x39
	.4byte	.LASF184
	.byte	0x1
	.byte	0x95
	.byte	0x32
	.4byte	0x2c8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	0x10d4
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x96
	.byte	0x98
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x10e6
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x96
	.byte	0xe4
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x10f8
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x96
	.byte	0xe5
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x110a
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x96
	.byte	0xe7
	.4byte	0x5a4
	.byte	0
	.uleb128 0x29
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.4byte	0x1124
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x96
	.byte	0xad
	.4byte	0x5a4
	.byte	0
	.uleb128 0x33
	.4byte	.LVL60
	.4byte	0x941
	.uleb128 0x32
	.4byte	.LVL61
	.4byte	0x924
	.4byte	0x1155
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL62
	.4byte	0x137c
	.4byte	0x116f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL63
	.4byte	0x1700
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF189
	.byte	0x1
	.byte	0x81
	.byte	0xd
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x137c
	.uleb128 0x35
	.string	"a"
	.byte	0x1
	.byte	0x81
	.byte	0x22
	.4byte	0x42a
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x26
	.4byte	.LASF184
	.byte	0x1
	.byte	0x81
	.byte	0x2e
	.4byte	0x2c8
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.byte	0x8e
	.byte	0xf
	.4byte	0x49f
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x29
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.4byte	0x11f2
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x89
	.byte	0x9e
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1205
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x89
	.2byte	0x13b
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1218
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x89
	.2byte	0x13c
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x122b
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x89
	.2byte	0x13e
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x123e
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x89
	.2byte	0x103
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1250
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x90
	.byte	0x9c
	.4byte	0x5a4
	.byte	0
	.uleb128 0x29
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0x126b
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x90
	.2byte	0x10f
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x127e
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x90
	.2byte	0x110
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1291
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x90
	.2byte	0x112
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x12a3
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x90
	.byte	0xd8
	.4byte	0x5a4
	.byte	0
	.uleb128 0x32
	.4byte	.LVL46
	.4byte	0x137c
	.4byte	0x12bd
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL47
	.4byte	0x1614
	.4byte	0x12d6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x33
	.4byte	.LVL49
	.4byte	0x941
	.uleb128 0x32
	.4byte	.LVL50
	.4byte	0x924
	.4byte	0x1307
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL51
	.4byte	0x1700
	.4byte	0x1320
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.4byte	.LVL53
	.4byte	0x8a4
	.4byte	0x1334
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL56
	.4byte	0x941
	.uleb128 0x32
	.4byte	.LVL57
	.4byte	0x8e0
	.4byte	0x1351
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL58
	.4byte	0x924
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF190
	.byte	0x1
	.byte	0x67
	.byte	0xd
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1614
	.uleb128 0x38
	.string	"a"
	.byte	0x1
	.byte	0x67
	.byte	0x25
	.4byte	0x42a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	.LASF184
	.byte	0x1
	.byte	0x67
	.byte	0x31
	.4byte	0x2c8
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x3a
	.string	"drv"
	.byte	0x1
	.byte	0x6f
	.byte	0xe
	.4byte	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.byte	0x70
	.byte	0xf
	.4byte	0x49f
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x29
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x13ef
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x6a
	.byte	0x9e
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1402
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x6a
	.2byte	0x12c
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1415
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x6a
	.2byte	0x12d
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1428
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x6a
	.2byte	0x12f
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x143a
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x6a
	.byte	0xf4
	.4byte	0x5a4
	.byte	0
	.uleb128 0x29
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x1454
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x74
	.byte	0x9e
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1467
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x74
	.2byte	0x109
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x147a
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x74
	.2byte	0x10a
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x148d
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x74
	.2byte	0x10c
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x149f
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x74
	.byte	0xd1
	.4byte	0x5a4
	.byte	0
	.uleb128 0x29
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x14b9
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x78
	.byte	0x9e
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x14cc
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x78
	.2byte	0x168
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x14df
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x78
	.2byte	0x169
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x14f2
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x78
	.2byte	0x16b
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1505
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x78
	.2byte	0x130
	.4byte	0x5a4
	.byte	0
	.uleb128 0x32
	.4byte	.LVL11
	.4byte	0x1614
	.4byte	0x151e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x33
	.4byte	.LVL13
	.4byte	0x941
	.uleb128 0x32
	.4byte	.LVL14
	.4byte	0x924
	.4byte	0x154f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL16
	.4byte	0x8fa
	.4byte	0x156f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x32
	.4byte	.LVL18
	.4byte	0x1614
	.4byte	0x1588
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x33
	.4byte	.LVL19
	.4byte	0x941
	.uleb128 0x32
	.4byte	.LVL20
	.4byte	0x924
	.4byte	0x15b9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL21
	.4byte	0x1614
	.4byte	0x15d2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x33
	.4byte	.LVL22
	.4byte	0x941
	.uleb128 0x32
	.4byte	.LVL23
	.4byte	0x924
	.4byte	0x1603
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL24
	.4byte	0x88a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF191
	.byte	0x1
	.byte	0x5c
	.byte	0xd
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1700
	.uleb128 0x35
	.string	"a"
	.byte	0x1
	.byte	0x5c
	.byte	0x22
	.4byte	0x42a
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x26
	.4byte	.LASF192
	.byte	0x1
	.byte	0x5c
	.byte	0x31
	.4byte	0x466
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x29
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x166a
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x61
	.byte	0x9a
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x167d
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x61
	.2byte	0x116
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1690
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x61
	.2byte	0x117
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x16a3
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x61
	.2byte	0x119
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x16b5
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x61
	.byte	0xde
	.4byte	0x5a4
	.byte	0
	.uleb128 0x33
	.4byte	.LVL4
	.4byte	0x8d4
	.uleb128 0x32
	.4byte	.LVL5
	.4byte	0x8be
	.4byte	0x16d2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL8
	.4byte	0x941
	.uleb128 0x2b
	.4byte	.LVL9
	.4byte	0x924
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF193
	.byte	0x1
	.byte	0x38
	.byte	0xd
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a1e
	.uleb128 0x35
	.string	"a"
	.byte	0x1
	.byte	0x38
	.byte	0x21
	.4byte	0x42a
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x26
	.4byte	.LASF194
	.byte	0x1
	.byte	0x38
	.byte	0x29
	.4byte	0x3e1
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x29
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x1839
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.byte	0x3e
	.byte	0x13
	.4byte	0x49f
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x29
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.4byte	0x1777
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x40
	.byte	0xa2
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x178a
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x40
	.2byte	0x123
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x179d
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x40
	.2byte	0x124
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x17b0
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x40
	.2byte	0x126
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x17c2
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x40
	.byte	0xeb
	.4byte	0x5a4
	.byte	0
	.uleb128 0x32
	.4byte	.LVL26
	.4byte	0x84c
	.4byte	0x17d6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL29
	.4byte	0x941
	.uleb128 0x32
	.4byte	.LVL31
	.4byte	0x8e0
	.4byte	0x17f3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL32
	.4byte	0x924
	.4byte	0x1828
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL34
	.4byte	0x836
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0x184b
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x49
	.byte	0x98
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x185d
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x49
	.byte	0xff
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1870
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x49
	.2byte	0x100
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1883
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x49
	.2byte	0x102
	.4byte	0x5a4
	.byte	0
	.uleb128 0x29
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x189d
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x49
	.byte	0xc8
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x18af
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x4d
	.byte	0x9c
	.4byte	0x5a4
	.byte	0
	.uleb128 0x29
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0x18ca
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x4d
	.2byte	0x19f
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x18dd
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x4d
	.2byte	0x1a0
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x18f0
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x4d
	.2byte	0x1a2
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1903
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x4d
	.2byte	0x168
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1915
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x50
	.byte	0x9c
	.4byte	0x5a4
	.byte	0
	.uleb128 0x29
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.4byte	0x1930
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x50
	.2byte	0x119
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1943
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x50
	.2byte	0x11a
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1956
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x50
	.2byte	0x11c
	.4byte	0x5a4
	.byte	0
	.uleb128 0x30
	.4byte	0x1968
	.uleb128 0x36
	.4byte	.LASF182
	.byte	0x1
	.byte	0x50
	.byte	0xe2
	.4byte	0x5a4
	.byte	0
	.uleb128 0x32
	.4byte	.LVL35
	.4byte	0x820
	.4byte	0x197c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL37
	.4byte	0x941
	.uleb128 0x32
	.4byte	.LVL38
	.4byte	0x924
	.4byte	0x19ad
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL39
	.4byte	0x1a1e
	.uleb128 0x33
	.4byte	.LVL40
	.4byte	0x814
	.uleb128 0x33
	.4byte	.LVL41
	.4byte	0x941
	.uleb128 0x32
	.4byte	.LVL42
	.4byte	0x924
	.4byte	0x19f0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL43
	.4byte	0x941
	.uleb128 0x2b
	.4byte	.LVL44
	.4byte	0x924
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF205
	.byte	0x1
	.byte	0x2b
	.byte	0xd
	.4byte	0x3e1
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a51
	.uleb128 0x3c
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.byte	0xe
	.4byte	0x271
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF196
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	.LASF198
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a78
	.uleb128 0x38
	.string	"a"
	.byte	0x1
	.byte	0x23
	.byte	0x20
	.4byte	0x42a
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF199
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF200
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x26
	.uleb128 0x5
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2f
	.uleb128 0x34
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS16:
	.uleb128 .LVU462
	.uleb128 0
.LLST16:
	.4byte	.LVL108
	.4byte	.LFE109
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU481
	.uleb128 .LVU485
	.uleb128 .LVU485
	.uleb128 .LVU490
	.uleb128 .LVU490
	.uleb128 .LVU507
	.uleb128 .LVU515
	.uleb128 0
.LLST17:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL119-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL121
	.4byte	.LFE109
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU481
	.uleb128 .LVU507
	.uleb128 .LVU515
	.uleb128 0
.LLST18:
	.4byte	.LVL114
	.4byte	.LVL119-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL121
	.4byte	.LFE109
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU467
	.uleb128 .LVU469
	.uleb128 .LVU469
	.uleb128 0
.LLST19:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LFE109
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU470
	.uleb128 .LVU477
.LLST20:
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU481
	.uleb128 .LVU495
	.uleb128 .LVU515
	.uleb128 .LVU518
.LLST21:
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU418
	.uleb128 .LVU418
	.uleb128 .LVU425
	.uleb128 .LVU425
	.uleb128 .LVU455
	.uleb128 .LVU455
	.uleb128 0
.LLST14:
	.4byte	.LVL89
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LVL101
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
	.4byte	.LVL101
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LFE108
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
.LVUS15:
	.uleb128 .LVU378
	.uleb128 .LVU394
	.uleb128 .LVU394
	.uleb128 .LVU395
	.uleb128 .LVU401
	.uleb128 .LVU455
.LLST15:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU296
	.uleb128 .LVU296
	.uleb128 .LVU303
	.uleb128 .LVU303
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU327
	.uleb128 .LVU327
	.uleb128 .LVU348
	.uleb128 .LVU348
	.uleb128 0
.LLST11:
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LVL72
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
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL80
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
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LFE106
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
.LVUS12:
	.uleb128 0
	.uleb128 .LVU285
	.uleb128 .LVU285
	.uleb128 .LVU297
	.uleb128 .LVU297
	.uleb128 .LVU303
	.uleb128 .LVU303
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU327
	.uleb128 .LVU327
	.uleb128 .LVU348
	.uleb128 .LVU348
	.uleb128 0
.LLST12:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL84
	.4byte	.LFE106
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU285
	.uleb128 .LVU341
	.uleb128 .LVU341
	.uleb128 .LVU342
.LLST13:
	.4byte	.LVL66
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 0
.LLST8:
	.4byte	.LVL45
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE104
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
.LVUS9:
	.uleb128 0
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 .LVU232
	.uleb128 .LVU232
	.uleb128 0
.LLST9:
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LFE104
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU232
	.uleb128 .LVU251
.LLST10:
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LFE103
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU65
	.uleb128 .LVU109
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE102
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
.LVUS2:
	.uleb128 0
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x11
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	_ZL5fault
	.byte	0x22
	.4byte	.LVL8-1
	.4byte	.LFE102
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL33
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
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LFE101
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
.LVUS6:
	.uleb128 0
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LFE101
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU117
	.uleb128 .LVU138
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 .LVU2
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE100
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	0
	.4byte	0
	.4byte	.LFB100
	.4byte	.LFE100
	.4byte	.LFB102
	.4byte	.LFE102
	.4byte	.LFB103
	.4byte	.LFE103
	.4byte	.LFB101
	.4byte	.LFE101
	.4byte	.LFB104
	.4byte	.LFE104
	.4byte	.LFB105
	.4byte	.LFE105
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF141:
	.string	"SOC_MOD_CLK_TEMP_SENSOR"
.LASF9:
	.string	"short int"
.LASF54:
	.string	"int_fast16_t"
.LASF60:
	.string	"bool"
.LASF43:
	.string	"uintptr_t"
.LASF4:
	.string	"__cxx11"
.LASF68:
	.string	"AXIS_COUNT"
.LASF39:
	.string	"uint64_t"
.LASF73:
	.string	"FAULT_OVERHEAT"
.LASF78:
	.string	"esp_err_t"
.LASF7:
	.string	"__uint8_t"
.LASF152:
	.string	"crc_err_count"
.LASF126:
	.string	"SOC_RTC_FAST_CLK_SRC_DEFAULT"
.LASF153:
	.string	"watched"
.LASF188:
	.string	"check_no_response"
.LASF87:
	.string	"log_level"
.LASF76:
	.string	"FAULT_NO_RESPONSE"
.LASF0:
	.string	"long long unsigned int"
.LASF139:
	.string	"SOC_MOD_CLK_RC_FAST_D256"
.LASF70:
	.string	"axis_t"
.LASF156:
	.string	"tmc_overheat_reset"
.LASF67:
	.string	"AXIS_DEC"
.LASF16:
	.string	"__int64_t"
.LASF12:
	.string	"__int32_t"
.LASF197:
	.string	"_Z17tmc_watchdog_taskPv"
.LASF57:
	.string	"uint_fast32_t"
.LASF25:
	.string	"__int_least64_t"
.LASF173:
	.string	"tmc_err_to_name"
.LASF34:
	.string	"int16_t"
.LASF83:
	.string	"ESP_LOG_DEBUG"
.LASF17:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF66:
	.string	"AXIS_RA"
.LASF41:
	.string	"uintmax_t"
.LASF179:
	.string	"vTaskDelay"
.LASF194:
	.string	"was_reset"
.LASF6:
	.string	"__int8_t"
.LASF158:
	.string	"_Z18tmc_overheat_reset6axis_t"
.LASF44:
	.string	"int_least8_t"
.LASF13:
	.string	"long int"
.LASF176:
	.string	"_Z8tmc_read6axis_thPm"
.LASF101:
	.string	"ESP_LOG_ARGS_TYPE_64BITS"
.LASF75:
	.string	"FAULT_UNDERVOLTAGE"
.LASF61:
	.string	"TMC_VSENSE"
.LASF48:
	.string	"int_least32_t"
.LASF52:
	.string	"int_fast8_t"
.LASF35:
	.string	"uint16_t"
.LASF199:
	.string	"double"
.LASF97:
	.string	"15esp_log_level_t"
.LASF62:
	.string	"TMC_V_FS_MV"
.LASF114:
	.string	"ESP_ERR_TMC_VERIFY_FAILED"
.LASF108:
	.string	"ESP_ERR_TMC_WRONG_CHIP"
.LASF90:
	.string	"dis_color"
.LASF187:
	.string	"check_overheat_fault"
.LASF148:
	.string	"UART_NUM_MAX"
.LASF112:
	.string	"ESP_ERR_TMC_DEC_NOT_CONFIGURED"
.LASF100:
	.string	"ESP_LOG_ARGS_TYPE_32BITS"
.LASF29:
	.string	"__intptr_t"
.LASF201:
	.ascii	"GNU C++26 15.2.0 -ftls-model=local-exec -mdynconfig=xtensa_e"
	.ascii	"sp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gn"
	.string	"u++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec"
.LASF116:
	.string	"SOC_RTC_SLOW_CLK_SRC_RC_SLOW"
.LASF49:
	.string	"uint_least32_t"
.LASF71:
	.string	"tmc_fault_t"
.LASF130:
	.string	"SOC_MOD_CLK_CPU"
.LASF21:
	.string	"__int_least16_t"
.LASF172:
	.string	"_Z22stepper_emergency_stopv"
.LASF191:
	.string	"axis_shutdown"
.LASF24:
	.string	"__uint_least32_t"
.LASF122:
	.string	"22soc_rtc_fast_clk_src_t"
.LASF145:
	.string	"UART_NUM_0"
.LASF146:
	.string	"UART_NUM_1"
.LASF63:
	.string	"TMC_R_SENSE_MOHM"
.LASF15:
	.string	"long unsigned int"
.LASF128:
	.string	"soc_rtc_fast_clk_src_t"
.LASF160:
	.string	"tmc_write"
.LASF144:
	.string	"11uart_port_t"
.LASF127:
	.string	"SOC_RTC_FAST_CLK_SRC_XTAL_DIV"
.LASF190:
	.string	"handle_new_fault"
.LASF171:
	.string	"_Z15stepper_unblockv"
.LASF136:
	.string	"SOC_MOD_CLK_PLL_D2"
.LASF164:
	.string	"_Z18tmc_log_drv_status6axis_t"
.LASF95:
	.string	"data"
.LASF20:
	.string	"__uint_least8_t"
.LASF28:
	.string	"__uintmax_t"
.LASF151:
	.string	"fault"
.LASF27:
	.string	"__intmax_t"
.LASF135:
	.string	"SOC_MOD_CLK_PLL_F160M"
.LASF143:
	.string	"soc_module_clk_t"
.LASF180:
	.string	"any_watched"
.LASF59:
	.string	"uint_fast64_t"
.LASF175:
	.string	"tmc_read"
.LASF42:
	.string	"intptr_t"
.LASF185:
	.string	"watchdog_check_axis"
.LASF159:
	.string	"initialize_tmc_driver"
.LASF74:
	.string	"FAULT_SHORT"
.LASF193:
	.string	"axis_restore"
.LASF103:
	.string	"esp_log_args_type_t"
.LASF150:
	.string	"WD_TAG"
.LASF157:
	.string	"_Z13tmc_driver_on6axis_t"
.LASF18:
	.string	"__uint64_t"
.LASF85:
	.string	"ESP_LOG_MAX"
.LASF82:
	.string	"ESP_LOG_INFO"
.LASF162:
	.string	"_Z9tmc_write6axis_thm"
.LASF94:
	.string	"opts"
.LASF111:
	.string	"ESP_ERR_TMC_RA_NOT_CONFIGURED"
.LASF86:
	.string	"esp_log_level_t"
.LASF169:
	.string	"stepper_unblock"
.LASF91:
	.string	"dis_timestamp"
.LASF140:
	.string	"SOC_MOD_CLK_XTAL"
.LASF155:
	.string	"tmc_driver_on"
.LASF56:
	.string	"int_fast32_t"
.LASF50:
	.string	"int_least64_t"
.LASF110:
	.string	"ESP_ERR_TMC_WRITE_LOST"
.LASF104:
	.string	"TickType_t"
.LASF118:
	.string	"SOC_RTC_SLOW_CLK_SRC_RC_FAST_D256"
.LASF184:
	.string	"gstat"
.LASF96:
	.string	"esp_log_config_t"
.LASF117:
	.string	"SOC_RTC_SLOW_CLK_SRC_XTAL32K"
.LASF40:
	.string	"intmax_t"
.LASF120:
	.string	"SOC_RTC_SLOW_CLK_SRC_DEFAULT"
.LASF198:
	.string	"_Z18tmc_watchdog_watch6axis_t"
.LASF93:
	.string	"reserved"
.LASF147:
	.string	"UART_NUM_2"
.LASF181:
	.string	"all_no_response"
.LASF65:
	.string	"TMC_FULL_SCALE_MA"
.LASF200:
	.string	"float"
.LASF115:
	.string	"22soc_rtc_slow_clk_src_t"
.LASF51:
	.string	"uint_least64_t"
.LASF55:
	.string	"uint_fast16_t"
.LASF203:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/build"
.LASF102:
	.string	"ESP_LOG_ARGS_TYPE_POINTER"
.LASF202:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-error.cpp"
.LASF182:
	.string	"__esp_log_config"
.LASF133:
	.string	"SOC_MOD_CLK_APB"
.LASF196:
	.string	"tmc_watchdog_watch"
.LASF129:
	.string	"16soc_module_clk_t"
.LASF36:
	.string	"int32_t"
.LASF2:
	.string	"unsigned char"
.LASF113:
	.string	"ESP_ERR_TMC_INVALID_CRC"
.LASF119:
	.string	"SOC_RTC_SLOW_CLK_SRC_INVALID"
.LASF149:
	.string	"uart_port_t"
.LASF92:
	.string	"binary_mode"
.LASF106:
	.string	"ESP_ERR_TMC_BASE"
.LASF177:
	.string	"esp_log_timestamp"
.LASF80:
	.string	"ESP_LOG_ERROR"
.LASF195:
	.string	"tmc_watchdog_task"
.LASF53:
	.string	"uint_fast8_t"
.LASF30:
	.string	"__uintptr_t"
.LASF166:
	.string	"_Z18tmc_check_overheat6axis_t"
.LASF137:
	.string	"SOC_MOD_CLK_XTAL32K"
.LASF192:
	.string	"reason"
.LASF46:
	.string	"int_least16_t"
.LASF77:
	.string	"FAULT_RESET"
.LASF123:
	.string	"SOC_RTC_FAST_CLK_SRC_XTAL_D2"
.LASF154:
	.string	"all_no_response_logged"
.LASF124:
	.string	"SOC_RTC_FAST_CLK_SRC_RC_FAST"
.LASF37:
	.string	"uint32_t"
.LASF178:
	.string	"esp_log"
.LASF31:
	.string	"long double"
.LASF69:
	.string	"char"
.LASF84:
	.string	"ESP_LOG_VERBOSE"
.LASF89:
	.string	"require_formatting"
.LASF170:
	.string	"stepper_emergency_stop"
.LASF1:
	.string	"unsigned int"
.LASF10:
	.string	"__uint16_t"
.LASF167:
	.string	"tmc_driver_off"
.LASF79:
	.string	"ESP_LOG_NONE"
.LASF45:
	.string	"uint_least8_t"
.LASF26:
	.string	"__uint_least64_t"
.LASF47:
	.string	"uint_least16_t"
.LASF14:
	.string	"__uint32_t"
.LASF131:
	.string	"SOC_MOD_CLK_RTC_FAST"
.LASF98:
	.string	"19esp_log_args_type_t"
.LASF186:
	.string	"check_undervoltage_fault"
.LASF138:
	.string	"SOC_MOD_CLK_RC_FAST"
.LASF23:
	.string	"__int_least32_t"
.LASF109:
	.string	"ESP_ERR_TMC_ENN_LOW"
.LASF22:
	.string	"__uint_least16_t"
.LASF11:
	.string	"short unsigned int"
.LASF58:
	.string	"int_fast64_t"
.LASF32:
	.string	"int8_t"
.LASF168:
	.string	"_Z14tmc_driver_off6axis_t"
.LASF205:
	.string	"all_watched_axes_ok"
.LASF165:
	.string	"tmc_check_overheat"
.LASF132:
	.string	"SOC_MOD_CLK_RTC_SLOW"
.LASF189:
	.string	"check_running"
.LASF163:
	.string	"tmc_log_drv_status"
.LASF81:
	.string	"ESP_LOG_WARN"
.LASF121:
	.string	"soc_rtc_slow_clk_src_t"
.LASF161:
	.string	"_Z21initialize_tmc_driver6axis_t"
.LASF64:
	.string	"TMC_R_INTERNAL_MOHM"
.LASF19:
	.string	"__int_least8_t"
.LASF33:
	.string	"uint8_t"
.LASF125:
	.string	"SOC_RTC_FAST_CLK_SRC_INVALID"
.LASF99:
	.string	"ESP_LOG_ARGS_TYPE_NONE"
.LASF72:
	.string	"FAULT_NONE"
.LASF8:
	.string	"__int16_t"
.LASF204:
	.string	"16esp_log_config_t"
.LASF107:
	.string	"ESP_ERR_TMC_NO_RESPONSE"
.LASF38:
	.string	"int64_t"
.LASF183:
	.string	"args"
.LASF105:
	.string	"tmc_err_t"
.LASF88:
	.string	"constrained_env"
.LASF174:
	.string	"_Z15tmc_err_to_namei"
.LASF142:
	.string	"SOC_MOD_CLK_INVALID"
.LASF134:
	.string	"SOC_MOD_CLK_PLL_F80M"
.LASF3:
	.string	"__gnu_cxx"
	.ident	"GCC: (crosstool-NG esp-15.2.0_20251204) 15.2.0"
