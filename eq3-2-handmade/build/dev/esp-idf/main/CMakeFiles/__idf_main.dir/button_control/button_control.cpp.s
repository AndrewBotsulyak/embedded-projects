	.file	"button_control.cpp"
# GNU C++26 (crosstool-NG esp-15.2.0_20251204) version 15.2.0 (xtensa-esp-elf)
#	compiled by GNU C version Debian Clang 19.1.7 (3+b1), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -ftls-model=local-exec -mdynconfig=xtensa_esp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gnu++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec
	.text
.Ltext0:
	.file 1 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp"
	.section	.iram1.0,"ax",@progbits
	.literal_position
	.literal .LC0, _ZL13button_task_h
	.literal .LC1, _ZL17button_semaphor_h
	.align	4
	.type	_ZL10button_isrPv, @function
_ZL10button_isrPv:
.LVL0:
.LFB99:
	.loc 1 94 78 view -0
	.loc 1 94 78 is_stmt 0 view .LVU1
	entry	sp, 48	#
.LCFI0:
	mov.n	a12, a2	# arg, arg
	.loc 1 95 5 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 96 5 view .LVU3
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:96:     BaseType_t woken = pdFALSE;
	.loc 1 96 16 is_stmt 0 view .LVU4
	movi.n	a8, 0	# tmp47,
	s32i.n	a8, sp, 0	# woken, tmp47
	.loc 1 98 5 is_stmt 1 view .LVU5
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:98:     xTaskNotifyFromISR(button_task_h, btn, eSetValueWithOverwrite, &woken);
	.loc 1 98 30 is_stmt 0 view .LVU6
	mov.n	a15, sp	#,
	mov.n	a14, a8	#, tmp47
	movi.n	a13, 3	#,
	mov.n	a11, a8	#, tmp14
	l32r	a8, .LC0	#, tmp48
	l32i.n	a10, a8, 0	# button_task_h,
	call8	xTaskGenericNotifyFromISR		#
.LVL2:
	.loc 1 99 5 is_stmt 1 view .LVU7
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:99:     xSemaphoreGiveFromISR(button_semaphor_h, &woken);
	.loc 1 99 22 is_stmt 0 view .LVU8
	mov.n	a11, sp	#,
	l32r	a8, .LC1	#, tmp49
	l32i.n	a10, a8, 0	# button_semaphor_h,
	call8	xQueueGiveFromISR		#
.LVL3:
	.loc 1 100 5 is_stmt 1 view .LVU9
	.loc 1 100 8 view .LVU10
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:100:     portYIELD_FROM_ISR(woken);
	.loc 1 100 18 is_stmt 0 view .LVU11
	l32i.n	a8, sp, 0	# woken, woken$18_3
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:100:     portYIELD_FROM_ISR(woken);
	.loc 1 100 5 view .LVU12
	bnei	a8, 1, .L1	# woken$18_3,,
	.loc 1 100 45 is_stmt 1 discriminator 1 view .LVU13
	.loc 1 100 47 discriminator 1 view .LVU14
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:100:     portYIELD_FROM_ISR(woken);
	.loc 1 100 65 is_stmt 0 discriminator 1 view .LVU15
	call8	_frxt_setup_switch		#
.LVL4:
.L1:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:101: }
	.loc 1 101 1 view .LVU16
	retw.n	
.LFE99:
	.size	_ZL10button_isrPv, .-_ZL10button_isrPv
	.section	.rodata._ZL19button_control_taskPv.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"button_control"
	.align	4
.LC6:
	.base64	"SSAoJWx1KSAlczogYnV0dG9uX2NvbnRyb2xfdGFzazog0JrQvdC+0L/QutCwICV1INC90LDQttCw0YLQsAoA"
	.align	4
.LC8:
	.base64	"SSAoJWx1KSAlczogYnV0dG9uX2NvbnRyb2xfdGFzazog0JrQvdC+0L/QutCwICV1INC+0YLQv9GD0YnQtdC90LAKAA=="
	.section	.text._ZL19button_control_taskPv,"ax",@progbits
	.literal_position
	.literal .LC2, _ZL17button_semaphor_h
	.literal .LC3, _ZL11button_pins
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.align	4
	.type	_ZL19button_control_taskPv, @function
_ZL19button_control_taskPv:
.LVL5:
.LFB97:
	.loc 1 37 44 is_stmt 1 view -0
	.loc 1 37 44 is_stmt 0 view .LVU18
	entry	sp, 48	#
.LCFI1:
	.loc 1 38 5 is_stmt 1 view .LVU19
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:38:     int stable_level[BTN_COUNT] = {};
	.loc 1 38 9 is_stmt 0 view .LVU20
	movi.n	a12, 8	#,
	movi.n	a11, 0	#,
	mov.n	a10, sp	#,
	call8	memset		#
.LVL6:
	.loc 1 41 5 is_stmt 1 view .LVU21
.LBB12:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:41:     for (size_t i = 0; i < BTN_COUNT; i++) {
	.loc 1 41 17 is_stmt 0 view .LVU22
	movi.n	a8, 0	# i,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:41:     for (size_t i = 0; i < BTN_COUNT; i++) {
	.loc 1 41 5 view .LVU23
	j	.L4		#
.LVL7:
.L5:
	.loc 1 42 9 is_stmt 1 view .LVU24
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:42:         stable_level[i] = 1;
	.loc 1 42 25 is_stmt 0 view .LVU25
	addx4	a9, a8, sp	#, tmp64, i,
	movi.n	a10, 1	# tmp65,
	s32i.n	a10, a9, 0	# stable_level[i_30], tmp65
	.loc 1 41 5 is_stmt 1 discriminator 3 view .LVU26
	add.n	a8, a8, a10	# i, i,
.LVL8:
.L4:
	.loc 1 41 26 discriminator 1 view .LVU27
	bltui	a8, 2, .L5	# i,,
.LVL9:
.L6:
	.loc 1 41 26 is_stmt 0 discriminator 1 view .LVU28
.LBE12:
	.loc 1 45 5 is_stmt 1 view .LVU29
	.loc 1 47 5 view .LVU30
.LBB13:
	.loc 1 48 9 view .LVU31
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:48:         xSemaphoreTake(button_semaphor_h, portMAX_DELAY);
	.loc 1 48 28 is_stmt 0 view .LVU32
	movi.n	a11, -1	#,
	l32r	a8, .LC2	#, tmp66
	l32i.n	a10, a8, 0	# button_semaphor_h,
	call8	xQueueSemaphoreTake		#
.LVL10:
	.loc 1 50 9 is_stmt 1 view .LVU33
.L7:
	.loc 1 50 48 discriminator 2 view .LVU34
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:50:         while (xSemaphoreTake(button_semaphor_h, pdMS_TO_TICKS(30)) == pdTRUE) {
	.loc 1 50 35 is_stmt 0 discriminator 2 view .LVU35
	movi.n	a11, 3	#,
	l32r	a8, .LC2	#, tmp67
	l32i.n	a10, a8, 0	# button_semaphor_h,
	call8	xQueueSemaphoreTake		#
.LVL11:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:50:         while (xSemaphoreTake(button_semaphor_h, pdMS_TO_TICKS(30)) == pdTRUE) {
	.loc 1 50 48 discriminator 2 view .LVU36
	beqi	a10, 1, .L7	# _3,,
	.loc 1 54 9 is_stmt 1 view .LVU37
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:54:         if (xTaskNotifyWait(0, 0, &event, 0) != pdTRUE) {
	.loc 1 54 35 is_stmt 0 view .LVU38
	movi.n	a14, 0	#,
	addi.n	a13, sp, 8	#,,
	mov.n	a12, a14	#,
	mov.n	a11, a14	#, tmp12
	mov.n	a10, a14	#, tmp11
	call8	xTaskGenericNotifyWait		#
.LVL12:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:54:         if (xTaskNotifyWait(0, 0, &event, 0) != pdTRUE) {
	.loc 1 54 9 discriminator 1 view .LVU39
	bnei	a10, 1, .L6	# _4,,
.LBB14:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:59:         for (size_t b = 0; b < BTN_COUNT; b++) {
	.loc 1 59 21 view .LVU40
	movi.n	a7, 0	# b,
	j	.L9		#
.LVL13:
.L12:
.LBB15:
	.loc 1 60 13 is_stmt 1 view .LVU41
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:60:             int level = gpio_get_level(button_pins[b]);   // нажата или отпущена
	.loc 1 60 53 is_stmt 0 view .LVU42
	slli	a6, a7, 2	# tmp70, b,
	l32r	a8, .LC3	#, tmp69
	addx4	a8, a7, a8	#, tmp71, b, tmp69
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:60:             int level = gpio_get_level(button_pins[b]);   // нажата или отпущена
	.loc 1 60 39 view .LVU43
	l32i.n	a10, a8, 0	# button_pins[b_31],
	call8	gpio_get_level		#
.LVL14:
	.loc 1 61 13 is_stmt 1 view .LVU44
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:61:             if (level == stable_level[b]) {
	.loc 1 61 40 is_stmt 0 view .LVU45
	add.n	a6, sp, a6	# tmp73,, tmp70
	l32i.n	a8, a6, 0	# stable_level[b_31], _6
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:61:             if (level == stable_level[b]) {
	.loc 1 61 13 view .LVU46
	beq	a8, a10, .L10	# _6, level,
	.loc 1 66 13 is_stmt 1 view .LVU47
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:66:             stable_level[b] = level;
	.loc 1 66 29 is_stmt 0 view .LVU48
	s32i.n	a10, a6, 0	# stable_level[b_31], level
	.loc 1 68 13 is_stmt 1 view .LVU49
.LBB16:
	bnez.n	a10, .L11	# level,
.LBB17:
	.loc 1 69 17 view .LVU50
	.loc 1 69 22 view .LVU51
	.loc 1 69 27 view .LVU52
	.loc 1 69 59 view .LVU53
	.loc 1 69 64 view .LVU54
	.loc 1 69 138 discriminator 2 view .LVU55
	.loc 1 69 138 discriminator 6 view .LVU56
	.loc 1 69 138 discriminator 10 view .LVU57
.LBB18:
	.loc 1 69 140 discriminator 14 view .LVU58
.LBB19:
	.loc 1 69 165 discriminator 14 view .LVU59
	.loc 1 69 200 discriminator 14 view .LVU60
	.loc 1 69 240 view .LVU61
.LBE19:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:69:                 ESP_LOGI(TAG, "button_control_task: Кнопка %u нажата", (unsigned)b);
	.loc 1 69 147 is_stmt 0 discriminator 14 view .LVU62
	call8	esp_log_timestamp		#
.LVL15:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:69:                 ESP_LOGI(TAG, "button_control_task: Кнопка %u нажата", (unsigned)b);
	.loc 1 69 147 discriminator 17 view .LVU63
	l32r	a11, .LC5	#, tmp76
	mov.n	a15, a7	#, b
	mov.n	a14, a11	#, tmp76
	mov.n	a13, a10	#, _18
	l32r	a12, .LC7	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL16:
	.loc 1 69 59 is_stmt 1 view .LVU64
	.loc 1 69 22 view .LVU65
.LBE18:
	.loc 1 69 17 view .LVU66
	.loc 1 71 17 view .LVU67
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:71:                 motion_move(AXIS_RA, b == BTN_FORWARD);
	.loc 1 71 28 is_stmt 0 view .LVU68
	nsau	a11, a7	#, b
	srli	a11, a11, 5	#,,
	movi.n	a10, 0	#,
	call8	_Z11motion_move6axis_tb		#
.LVL17:
.LBE17:
	j	.L10		#
.LVL18:
.L11:
.LBB20:
	.loc 1 75 17 is_stmt 1 view .LVU69
	.loc 1 75 22 view .LVU70
	.loc 1 75 27 view .LVU71
	.loc 1 75 59 view .LVU72
	.loc 1 75 64 view .LVU73
	.loc 1 75 142 discriminator 2 view .LVU74
	.loc 1 75 142 discriminator 6 view .LVU75
	.loc 1 75 142 discriminator 10 view .LVU76
.LBB21:
	.loc 1 75 144 discriminator 14 view .LVU77
.LBB22:
	.loc 1 75 169 discriminator 14 view .LVU78
	.loc 1 75 204 discriminator 14 view .LVU79
	.loc 1 75 244 view .LVU80
.LBE22:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:75:                 ESP_LOGI(TAG, "button_control_task: Кнопка %u отпущена", (unsigned)b);
	.loc 1 75 151 is_stmt 0 discriminator 14 view .LVU81
	call8	esp_log_timestamp		#
.LVL19:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:75:                 ESP_LOGI(TAG, "button_control_task: Кнопка %u отпущена", (unsigned)b);
	.loc 1 75 151 discriminator 17 view .LVU82
	l32r	a11, .LC5	#, tmp84
	mov.n	a15, a7	#, b
	mov.n	a14, a11	#, tmp84
	mov.n	a13, a10	#, _34
	l32r	a12, .LC9	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL20:
	.loc 1 75 59 is_stmt 1 view .LVU83
	.loc 1 75 22 view .LVU84
.LBE21:
	.loc 1 75 17 view .LVU85
	.loc 1 76 17 view .LVU86
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:76:                 motion_stop(AXIS_RA);
	.loc 1 76 28 is_stmt 0 view .LVU87
	movi.n	a10, 0	#,
	call8	_Z11motion_stop6axis_t		#
.LVL21:
.L10:
	.loc 1 76 28 view .LVU88
.LBE20:
.LBE16:
.LBE15:
	.loc 1 59 9 is_stmt 1 discriminator 2 view .LVU89
	addi.n	a7, a7, 1	# b, b,
.LVL22:
.L9:
	.loc 1 59 30 discriminator 1 view .LVU90
	bltui	a7, 2, .L12	# b,,
	j	.L6		#
.LBE14:
.LBE13:
.LFE97:
	.size	_ZL19button_control_taskPv, .-_ZL19button_control_taskPv
	.section	.rodata._ZL15init_button_cfgm.str1.4,"aMS",@progbits,1
	.align	4
.LC10:
	.string	"gpio_config(&cfg)"
	.align	4
.LC12:
	.string	"void init_button_cfg(uint32_t)"
	.align	4
.LC14:
	.string	"./main/button_control/button_control.cpp"
	.section	.text._ZL15init_button_cfgm,"ax",@progbits
	.literal_position
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.align	4
	.type	_ZL15init_button_cfgm, @function
_ZL15init_button_cfgm:
.LVL23:
.LFB98:
	.loc 1 83 43 view -0
	.loc 1 83 43 is_stmt 0 view .LVU92
	entry	sp, 64	#
.LCFI2:
	.loc 1 84 5 is_stmt 1 view .LVU93
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:84:     gpio_config_t cfg = {
	.loc 1 84 19 is_stmt 0 view .LVU94
	movi.n	a12, 0x18	#,
	movi.n	a11, 0	#,
	mov.n	a10, sp	#,
	call8	memset		#
.LVL24:
	movi.n	a8, 1	# tmp48,
	s32i.n	a8, sp, 8	# cfg.mode, tmp48
	s32i.n	a8, sp, 12	# cfg.pull_up_en, tmp48
	movi.n	a9, 3	# tmp50,
	s32i.n	a9, sp, 20	# cfg.intr_type, tmp50
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:85:         .pin_bit_mask = (1ULL << pin),
	.loc 1 85 31 view .LVU95
	movi.n	a9, 0x20	# tmp51,
	and	a9, a2, a9	# tmp52, pin, tmp51
	movi.n	a10, 0	# tmp53,
	ssl	a2	# pin
	sll	a2, a8	# _1, tmp48
.LVL25:
	.loc 1 85 31 view .LVU96
	mov.n	a8, a2	# _1, _1
	moveqz	a8, a10, a9	# _1, tmp53, tmp52
	movnez	a2, a10, a9	# _1, tmp53, tmp52
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:90:     };
	.loc 1 90 5 view .LVU97
	s32i.n	a2, sp, 0	# cfg.pin_bit_mask, _1
	s32i.n	a8, sp, 4	# cfg.pin_bit_mask, _1
	.loc 1 91 5 is_stmt 1 view .LVU98
.LBB23:
	.loc 1 91 10 view .LVU99
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:91:     ESP_ERROR_CHECK(gpio_config(&cfg));
	.loc 1 91 42 is_stmt 0 view .LVU100
	mov.n	a10, sp	#,
	call8	gpio_config		#
.LVL26:
	.loc 1 91 51 is_stmt 1 discriminator 1 view .LVU101
	beqz.n	a10, .L13	# err_rc_,
	.loc 1 91 73 discriminator 2 view .LVU102
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:91:     ESP_ERROR_CHECK(gpio_config(&cfg));
	.loc 1 91 96 is_stmt 0 discriminator 2 view .LVU103
	l32r	a14, .LC11	#,
	l32r	a13, .LC13	#,
	movi.n	a12, 0x5b	#,
	l32r	a11, .LC15	#,
	call8	_esp_error_check_failed		#
.LVL27:
.L13:
	.loc 1 91 96 discriminator 2 view .LVU104
.LBE23:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:92: }
	.loc 1 92 1 view .LVU105
	retw.n	
.LFE98:
	.size	_ZL15init_button_cfgm, .-_ZL15init_button_cfgm
	.section	.rodata._Z11button_initv.str1.4,"aMS",@progbits,1
	.align	4
.LC19:
	.string	"button_control_task"
	.align	4
.LC24:
	.base64	"RSAoJWx1KSAlczogYXBwX21haW46INC90LUg0YPQtNCw0LvQvtGB0Ywg0YHQvtC30LTQsNGC0Ywg0LfQsNC00LDRh9GDIGJ1dHRvbl9jb250cm9sX3Rhc2sKAA=="
	.align	4
.LC26:
	.string	"err"
	.align	4
.LC28:
	.string	"void button_init()"
	.align	4
.LC32:
	.string	"gpio_isr_handler_add(button_pins[BTN_FORWARD], button_isr, (void*)BTN_FORWARD)"
	.align	4
.LC34:
	.string	"gpio_isr_handler_add(button_pins[BTN_BACKWARD], button_isr, (void*)BTN_BACKWARD)"
	.section	.text._Z11button_initv,"ax",@progbits
	.literal_position
	.literal .LC16, _ZL17button_semaphor_h
	.literal .LC17, _ZL13button_task_h
	.literal .LC18, 2048
	.literal .LC20, .LC19
	.literal .LC21, _ZL19button_control_taskPv
	.literal .LC22, 2147483647
	.literal .LC23, .LC4
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.literal .LC30, .LC14
	.literal .LC31, _ZL10button_isrPv
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.align	4
	.global	_Z11button_initv
	.type	_Z11button_initv, @function
_Z11button_initv:
.LFB100:
	.loc 1 103 24 is_stmt 1 view -0
	entry	sp, 48	#
.LCFI3:
	.loc 1 104 5 view .LVU107
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:104:     init_button_cfg(FORWARD_PIN); // forward
	.loc 1 104 20 is_stmt 0 view .LVU108
	movi.n	a10, 0xd	#,
	call8	_ZL15init_button_cfgm		#
.LVL28:
	.loc 1 105 5 is_stmt 1 view .LVU109
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:105:     init_button_cfg(BACKWARD_PIN); // backward
	.loc 1 105 20 is_stmt 0 view .LVU110
	movi.n	a10, 0xc	#,
	call8	_ZL15init_button_cfgm		#
.LVL29:
	.loc 1 107 5 is_stmt 1 view .LVU111
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:107:     button_semaphor_h = xSemaphoreCreateBinary();
	.loc 1 107 44 is_stmt 0 view .LVU112
	movi.n	a12, 3	#,
	movi.n	a11, 0	#,
	movi.n	a10, 1	#,
	call8	xQueueGenericCreate		#
.LVL30:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:107:     button_semaphor_h = xSemaphoreCreateBinary();
	.loc 1 107 23 discriminator 1 view .LVU113
	l32r	a8, .LC16	#, tmp53
	s32i.n	a10, a8, 0	# button_semaphor_h, _1
	.loc 1 109 5 is_stmt 1 view .LVU114
.LVL31:
.LBB24:
.LBB25:
.LBI25:
	.file 2 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/task.h"
	.loc 2 371 16 view .LVU115
.LBB26:
	.loc 2 382 9 view .LVU116
	.loc 2 394 9 view .LVU117
# /Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/task.h:394:         return xTaskCreatePinnedToCore( pxTaskCode,
	.loc 2 394 39 is_stmt 0 view .LVU118
	l32r	a8, .LC22	#, tmp58
	s32i.n	a8, sp, 0	#, tmp58
	l32r	a15, .LC17	#,
	movi.n	a14, 5	#,
	movi.n	a13, 0	#,
	l32r	a12, .LC18	#,
	l32r	a11, .LC20	#,
	l32r	a10, .LC21	#,
	call8	xTaskCreatePinnedToCore		#
.LVL32:
	.loc 2 394 39 view .LVU119
.LBE26:
.LBE25:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:109:     if (xTaskCreate(button_control_task, "button_control_task", 2048, NULL, 5, &button_task_h) != pdPASS) {
	.loc 1 109 5 discriminator 1 view .LVU120
	beqi	a10, 1, .L16	# _28,,
.LBB27:
	.loc 1 110 9 is_stmt 1 view .LVU121
	.loc 1 110 14 view .LVU122
	.loc 1 110 19 view .LVU123
	.loc 1 110 52 view .LVU124
	.loc 1 110 57 view .LVU125
.LBB28:
	.loc 1 110 116 discriminator 1 view .LVU126
.LBB29:
	.loc 1 110 141 discriminator 1 view .LVU127
	.loc 1 110 176 discriminator 1 view .LVU128
	.loc 1 110 217 view .LVU129
.LBE29:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:110:         ESP_LOGE(TAG, "app_main: не удалось создать задачу button_control_task");
	.loc 1 110 123 is_stmt 0 discriminator 1 view .LVU130
	call8	esp_log_timestamp		#
.LVL33:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:110:         ESP_LOGE(TAG, "app_main: не удалось создать задачу button_control_task");
	.loc 1 110 123 discriminator 3 view .LVU131
	l32r	a11, .LC23	#, tmp59
	mov.n	a14, a11	#, tmp59
	mov.n	a13, a10	#, _3
	l32r	a12, .LC25	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL34:
	.loc 1 110 52 is_stmt 1 view .LVU132
	.loc 1 110 14 view .LVU133
.LBE28:
	.loc 1 110 9 view .LVU134
	.loc 1 111 9 view .LVU135
	j	.L15		#
.L16:
.LBE27:
.LBE24:
	.loc 1 115 5 view .LVU136
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:115:     esp_err_t err = gpio_install_isr_service(0);
	.loc 1 115 45 is_stmt 0 view .LVU137
	movi.n	a10, 0	#,
	call8	gpio_install_isr_service		#
.LVL35:
	.loc 1 116 5 is_stmt 1 view .LVU138
.LBB30:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:116:     if (err != ESP_OK && err != ESP_ERR_INVALID_STATE) {
	.loc 1 116 13 is_stmt 0 view .LVU139
	movi.n	a11, 1	# _14,
	moveqz	a11, a10, a10	# _14, err, err
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:116:     if (err != ESP_OK && err != ESP_ERR_INVALID_STATE) {
	.loc 1 116 25 view .LVU140
	movi	a8, -0x103	# tmp70,
	add.n	a8, a10, a8	# tmp71, err, tmp70
	movi.n	a9, 1	# _15,
	moveqz	a9, a8, a8	# _15, tmp71, tmp71
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:116:     if (err != ESP_OK && err != ESP_ERR_INVALID_STATE) {
	.loc 1 116 5 view .LVU141
	bnone	a11, a9, .L18	# _14, _15,
	.loc 1 117 9 is_stmt 1 view .LVU142
.LBB31:
	.loc 1 117 14 view .LVU143
.LVL36:
	.loc 1 117 41 view .LVU144
	.loc 1 117 63 discriminator 1 view .LVU145
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:117:         ESP_ERROR_CHECK(err);
	.loc 1 117 86 is_stmt 0 discriminator 1 view .LVU146
	l32r	a14, .LC27	#,
	l32r	a13, .LC29	#,
	movi	a12, 0x75	#,
	l32r	a11, .LC30	#,
	call8	_esp_error_check_failed		#
.LVL37:
.L18:
	.loc 1 117 86 discriminator 1 view .LVU147
.LBE31:
.LBE30:
	.loc 1 119 5 is_stmt 1 view .LVU148
.LBB32:
	.loc 1 119 10 view .LVU149
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:119:     ESP_ERROR_CHECK(gpio_isr_handler_add(button_pins[BTN_FORWARD], button_isr, (void*)BTN_FORWARD));
	.loc 1 119 51 is_stmt 0 view .LVU150
	movi.n	a12, 0	#,
	l32r	a11, .LC31	#,
	movi.n	a10, 0xd	#,
.LVL38:
	.loc 1 119 51 view .LVU151
	call8	gpio_isr_handler_add		#
.LVL39:
	.loc 1 119 112 is_stmt 1 discriminator 1 view .LVU152
	beqz.n	a10, .L19	# err_rc_,
	.loc 1 119 134 discriminator 2 view .LVU153
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:119:     ESP_ERROR_CHECK(gpio_isr_handler_add(button_pins[BTN_FORWARD], button_isr, (void*)BTN_FORWARD));
	.loc 1 119 157 is_stmt 0 discriminator 2 view .LVU154
	l32r	a14, .LC33	#,
	l32r	a13, .LC29	#,
	movi	a12, 0x77	#,
	l32r	a11, .LC30	#,
	call8	_esp_error_check_failed		#
.LVL40:
.L19:
	.loc 1 119 157 discriminator 2 view .LVU155
.LBE32:
	.loc 1 119 5 is_stmt 1 view .LVU156
	.loc 1 120 5 view .LVU157
.LBB33:
	.loc 1 120 10 view .LVU158
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:120:     ESP_ERROR_CHECK(gpio_isr_handler_add(button_pins[BTN_BACKWARD], button_isr, (void*)BTN_BACKWARD));
	.loc 1 120 51 is_stmt 0 view .LVU159
	movi.n	a12, 1	#,
	l32r	a11, .LC31	#,
	movi.n	a10, 0xc	#,
.LVL41:
	.loc 1 120 51 view .LVU160
	call8	gpio_isr_handler_add		#
.LVL42:
	.loc 1 120 114 is_stmt 1 discriminator 1 view .LVU161
	beqz.n	a10, .L15	# err_rc_,
	.loc 1 120 136 discriminator 2 view .LVU162
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:120:     ESP_ERROR_CHECK(gpio_isr_handler_add(button_pins[BTN_BACKWARD], button_isr, (void*)BTN_BACKWARD));
	.loc 1 120 159 is_stmt 0 discriminator 2 view .LVU163
	l32r	a14, .LC35	#,
	l32r	a13, .LC29	#,
	movi	a12, 0x78	#,
	l32r	a11, .LC30	#,
	call8	_esp_error_check_failed		#
.LVL43:
.L15:
	.loc 1 120 159 discriminator 2 view .LVU164
.LBE33:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp:121: }
	.loc 1 121 1 view .LVU165
	retw.n	
.LFE100:
	.size	_Z11button_initv, .-_Z11button_initv
	.section	.bss._ZL17button_semaphor_h,"aw",@nobits
	.align	4
	.type	_ZL17button_semaphor_h, @object
	.size	_ZL17button_semaphor_h, 4
_ZL17button_semaphor_h:
	.zero	4
	.section	.bss._ZL13button_task_h,"aw",@nobits
	.align	4
	.type	_ZL13button_task_h, @object
	.size	_ZL13button_task_h, 4
_ZL13button_task_h:
	.zero	4
	.section	.rodata._ZL11button_pins,"a"
	.align	4
	.type	_ZL11button_pins, @object
	.size	_ZL11button_pins, 8
_ZL11button_pins:
	.word	13
	.word	12
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
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.byte	0x4
	.4byte	.LCFI1-.LFB97
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.byte	0x4
	.4byte	.LCFI2-.LFB98
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.byte	0x4
	.4byte	.LCFI3-.LFB100
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 3 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/cstdint"
	.file 4 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/xtensa-esp-elf/include/c++/15.2.0/xtensa-esp-elf/esp32s3/no-rtti/bits/c++config.h"
	.file 5 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/machine/_default_types.h"
	.file 6 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/lib/gcc/xtensa-esp-elf/15.2.0/include/stddef.h"
	.file 7 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/sys/_stdint.h"
	.file 8 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/stdint.h"
	.file 9 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_hal_gpio/esp32s3/include/soc/gpio_num.h"
	.file 10 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_hal_gpio/include/hal/gpio_types.h"
	.file 11 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h"
	.file 12 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_common/include/esp_err.h"
	.file 13 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_driver_gpio/include/driver/gpio.h"
	.file 14 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_level.h"
	.file 15 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_config.h"
	.file 16 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_args.h"
	.file 17 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/projdefs.h"
	.file 18 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h"
	.file 19 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/queue.h"
	.file 20 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/semphr.h"
	.file 21 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h"
	.file 22 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/esp_additions/include/freertos/idf_additions.h"
	.file 23 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.h"
	.file 24 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log.h"
	.file 25 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_timestamp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1336
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF238
	.byte	0x4
	.4byte	.LASF239
	.4byte	.LASF240
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
	.uleb128 0x3
	.string	"std"
	.byte	0x4
	.2byte	0x150
	.byte	0xb
	.4byte	0x133
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x173
	.byte	0x41
	.uleb128 0x5
	.byte	0x4
	.2byte	0x173
	.byte	0x41
	.4byte	0x40
	.uleb128 0x6
	.byte	0x3
	.byte	0x35
	.byte	0xb
	.4byte	0x298
	.uleb128 0x6
	.byte	0x3
	.byte	0x36
	.byte	0xb
	.4byte	0x2b0
	.uleb128 0x6
	.byte	0x3
	.byte	0x37
	.byte	0xb
	.4byte	0x2c8
	.uleb128 0x6
	.byte	0x3
	.byte	0x38
	.byte	0xb
	.4byte	0x2e5
	.uleb128 0x6
	.byte	0x3
	.byte	0x3a
	.byte	0xb
	.4byte	0x38d
	.uleb128 0x6
	.byte	0x3
	.byte	0x3b
	.byte	0xb
	.4byte	0x3a5
	.uleb128 0x6
	.byte	0x3
	.byte	0x3c
	.byte	0xb
	.4byte	0x3bd
	.uleb128 0x6
	.byte	0x3
	.byte	0x3d
	.byte	0xb
	.4byte	0x3d5
	.uleb128 0x6
	.byte	0x3
	.byte	0x3f
	.byte	0xb
	.4byte	0x32d
	.uleb128 0x6
	.byte	0x3
	.byte	0x40
	.byte	0xb
	.4byte	0x345
	.uleb128 0x6
	.byte	0x3
	.byte	0x41
	.byte	0xb
	.4byte	0x35d
	.uleb128 0x6
	.byte	0x3
	.byte	0x42
	.byte	0xb
	.4byte	0x375
	.uleb128 0x6
	.byte	0x3
	.byte	0x44
	.byte	0xb
	.4byte	0x2fd
	.uleb128 0x6
	.byte	0x3
	.byte	0x45
	.byte	0xb
	.4byte	0x315
	.uleb128 0x6
	.byte	0x3
	.byte	0x47
	.byte	0xb
	.4byte	0x2a4
	.uleb128 0x6
	.byte	0x3
	.byte	0x48
	.byte	0xb
	.4byte	0x2bc
	.uleb128 0x6
	.byte	0x3
	.byte	0x49
	.byte	0xb
	.4byte	0x2d4
	.uleb128 0x6
	.byte	0x3
	.byte	0x4a
	.byte	0xb
	.4byte	0x2f1
	.uleb128 0x6
	.byte	0x3
	.byte	0x4c
	.byte	0xb
	.4byte	0x399
	.uleb128 0x6
	.byte	0x3
	.byte	0x4d
	.byte	0xb
	.4byte	0x3b1
	.uleb128 0x6
	.byte	0x3
	.byte	0x4e
	.byte	0xb
	.4byte	0x3c9
	.uleb128 0x6
	.byte	0x3
	.byte	0x4f
	.byte	0xb
	.4byte	0x3e1
	.uleb128 0x6
	.byte	0x3
	.byte	0x51
	.byte	0xb
	.4byte	0x339
	.uleb128 0x6
	.byte	0x3
	.byte	0x52
	.byte	0xb
	.4byte	0x351
	.uleb128 0x6
	.byte	0x3
	.byte	0x53
	.byte	0xb
	.4byte	0x369
	.uleb128 0x6
	.byte	0x3
	.byte	0x54
	.byte	0xb
	.4byte	0x381
	.uleb128 0x6
	.byte	0x3
	.byte	0x56
	.byte	0xb
	.4byte	0x309
	.uleb128 0x6
	.byte	0x3
	.byte	0x57
	.byte	0xb
	.4byte	0x321
	.byte	0
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x4
	.2byte	0x175
	.byte	0xb
	.4byte	0x153
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x177
	.byte	0x41
	.uleb128 0x5
	.byte	0x4
	.2byte	0x177
	.byte	0x41
	.4byte	0x140
	.byte	0
	.uleb128 0x8
	.4byte	.LASF5
	.byte	0x5
	.byte	0xd2
	.byte	0x15
	.4byte	0x15f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x8
	.4byte	.LASF6
	.byte	0x5
	.byte	0xd7
	.byte	0x17
	.4byte	0x172
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x8
	.4byte	.LASF8
	.byte	0x5
	.byte	0xdb
	.byte	0x13
	.4byte	0x185
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x5
	.byte	0xe0
	.byte	0x1c
	.4byte	0x198
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0xe4
	.byte	0x12
	.4byte	0x1ab
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0xe9
	.byte	0x1b
	.4byte	0x1be
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0xed
	.byte	0x17
	.4byte	0x1d1
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0xf2
	.byte	0x20
	.4byte	0x25
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0xf6
	.byte	0x15
	.4byte	0x15f
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0xf8
	.byte	0x17
	.4byte	0x172
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x110
	.byte	0x13
	.4byte	0x185
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x112
	.byte	0x1c
	.4byte	0x198
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x126
	.byte	0x12
	.4byte	0x1ab
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x128
	.byte	0x1b
	.4byte	0x1be
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x138
	.byte	0x17
	.4byte	0x1d1
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x13a
	.byte	0x20
	.4byte	0x25
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x146
	.byte	0x17
	.4byte	0x1d1
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x14e
	.byte	0x20
	.4byte	0x25
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x156
	.byte	0xd
	.4byte	0x271
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x158
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x6
	.byte	0xe5
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF32
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x7
	.byte	0x12
	.byte	0x12
	.4byte	0x153
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x7
	.byte	0x16
	.byte	0x13
	.4byte	0x166
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x7
	.byte	0x1e
	.byte	0x13
	.4byte	0x179
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x7
	.byte	0x22
	.byte	0x14
	.4byte	0x18c
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x7
	.byte	0x2a
	.byte	0x13
	.4byte	0x19f
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x7
	.byte	0x2e
	.byte	0x14
	.4byte	0x1b2
	.uleb128 0xb
	.4byte	0x2d4
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x7
	.byte	0x36
	.byte	0x13
	.4byte	0x1c5
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3a
	.byte	0x14
	.4byte	0x1d8
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x7
	.byte	0x41
	.byte	0x14
	.4byte	0x24a
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x7
	.byte	0x46
	.byte	0x15
	.4byte	0x257
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x7
	.byte	0x4b
	.byte	0x14
	.4byte	0x264
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x7
	.byte	0x50
	.byte	0x15
	.4byte	0x278
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x8
	.byte	0x14
	.byte	0x18
	.4byte	0x1e4
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x8
	.byte	0x15
	.byte	0x19
	.4byte	0x1f0
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x8
	.byte	0x1a
	.byte	0x19
	.4byte	0x1fc
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.4byte	0x209
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x8
	.byte	0x20
	.byte	0x19
	.4byte	0x216
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x8
	.byte	0x21
	.byte	0x1a
	.4byte	0x223
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x8
	.byte	0x26
	.byte	0x19
	.4byte	0x230
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x8
	.byte	0x27
	.byte	0x1a
	.4byte	0x23d
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x8
	.byte	0x32
	.byte	0xf
	.4byte	0x271
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x8
	.byte	0x33
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x8
	.byte	0x3c
	.byte	0xf
	.4byte	0x271
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x8
	.byte	0x3d
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x8
	.byte	0x46
	.byte	0xf
	.4byte	0x271
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x8
	.byte	0x47
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x8
	.byte	0x50
	.byte	0x19
	.4byte	0x1d1
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x8
	.byte	0x51
	.byte	0x22
	.4byte	0x25
	.uleb128 0xc
	.byte	0x5
	.byte	0x4
	.4byte	0x271
	.byte	0x9
	.byte	0x10
	.byte	0xe
	.4byte	.LASF109
	.4byte	0x51a
	.uleb128 0xd
	.4byte	.LASF61
	.sleb128 -1
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x12
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x13
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x15
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0x1a
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x1b
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x1d
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x1e
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x1f
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x21
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x22
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0x23
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x25
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x26
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x27
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x29
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0x2a
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0x2b
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x2d
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x2e
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x2f
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0x31
	.byte	0
	.uleb128 0x8
	.4byte	.LASF108
	.byte	0x9
	.byte	0x40
	.byte	0x3
	.4byte	0x3ed
	.uleb128 0xb
	.4byte	0x51a
	.uleb128 0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x5b
	.byte	0xe
	.4byte	.LASF110
	.4byte	0x568
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0xa
	.byte	0x63
	.byte	0x3
	.4byte	0x52b
	.uleb128 0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x6c
	.byte	0xe
	.4byte	.LASF119
	.4byte	0x5ab
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF126
	.byte	0xa
	.byte	0x73
	.byte	0x3
	.4byte	0x574
	.uleb128 0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x75
	.byte	0xe
	.4byte	.LASF127
	.4byte	0x5d6
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0
	.uleb128 0xe
	.4byte	.LASF129
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF130
	.byte	0xa
	.byte	0x78
	.byte	0x3
	.4byte	0x5b7
	.uleb128 0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x7a
	.byte	0xe
	.4byte	.LASF131
	.4byte	0x601
	.uleb128 0xe
	.4byte	.LASF132
	.byte	0
	.uleb128 0xe
	.4byte	.LASF133
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF134
	.byte	0xa
	.byte	0x7d
	.byte	0x3
	.4byte	0x5e2
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF135
	.uleb128 0xf
	.4byte	.LASF136
	.byte	0xb
	.byte	0x29
	.byte	0x14
	.4byte	0x2e0
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF137
	.byte	0xb
	.byte	0x2b
	.byte	0x14
	.4byte	0x2e0
	.byte	0xb4
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0xb
	.byte	0x2c
	.byte	0x14
	.4byte	0x2e0
	.byte	0x6e
	.uleb128 0xf
	.4byte	.LASF139
	.byte	0xb
	.byte	0x2d
	.byte	0x14
	.4byte	0x2e0
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF140
	.byte	0xb
	.byte	0x33
	.byte	0x14
	.4byte	0x2e0
	.2byte	0x3d2
	.uleb128 0x11
	.4byte	.LASF196
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x15
	.byte	0x17
	.byte	0x6
	.4byte	0x67b
	.uleb128 0xe
	.4byte	.LASF141
	.byte	0
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x68d
	.uleb128 0xb
	.4byte	0x67b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF144
	.uleb128 0xb
	.4byte	0x686
	.uleb128 0x13
	.byte	0x4
	.uleb128 0xb
	.4byte	0x692
	.uleb128 0x8
	.4byte	.LASF145
	.byte	0xc
	.byte	0x13
	.byte	0xd
	.4byte	0x271
	.uleb128 0x12
	.byte	0x4
	.4byte	0x6ab
	.uleb128 0x14
	.4byte	0x6b6
	.uleb128 0x15
	.4byte	0x692
	.byte	0
	.uleb128 0x8
	.4byte	.LASF146
	.byte	0xd
	.byte	0x1e
	.byte	0x10
	.4byte	0x6a5
	.uleb128 0x16
	.byte	0x18
	.byte	0xd
	.byte	0x23
	.byte	0x10
	.4byte	.LASF162
	.4byte	0x711
	.uleb128 0x17
	.4byte	.LASF147
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.4byte	0x2f1
	.byte	0
	.uleb128 0x17
	.4byte	.LASF148
	.byte	0xd
	.byte	0x25
	.byte	0x11
	.4byte	0x5ab
	.byte	0x8
	.uleb128 0x17
	.4byte	.LASF149
	.byte	0xd
	.byte	0x26
	.byte	0x13
	.4byte	0x5d6
	.byte	0xc
	.uleb128 0x17
	.4byte	.LASF150
	.byte	0xd
	.byte	0x27
	.byte	0x15
	.4byte	0x601
	.byte	0x10
	.uleb128 0x17
	.4byte	.LASF151
	.byte	0xd
	.byte	0x28
	.byte	0x15
	.4byte	0x568
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.4byte	.LASF152
	.byte	0xd
	.byte	0x2c
	.byte	0x3
	.4byte	0x6c2
	.uleb128 0xb
	.4byte	0x711
	.uleb128 0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x14
	.byte	0xe
	.4byte	.LASF153
	.4byte	0x75f
	.uleb128 0xe
	.4byte	.LASF154
	.byte	0
	.uleb128 0xe
	.4byte	.LASF155
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF156
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF158
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF160
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF161
	.byte	0xe
	.byte	0x1c
	.byte	0x3
	.4byte	0x722
	.uleb128 0x16
	.byte	0x4
	.byte	0xf
	.byte	0x77
	.byte	0x10
	.4byte	.LASF163
	.4byte	0x81b
	.uleb128 0x18
	.byte	0x4
	.byte	0xf
	.byte	0x78
	.byte	0xb
	.4byte	0x814
	.uleb128 0x19
	.byte	0x4
	.byte	0xf
	.byte	0x79
	.byte	0x10
	.4byte	0x7fb
	.uleb128 0x1a
	.4byte	.LASF164
	.byte	0xf
	.byte	0x7a
	.byte	0x1d
	.4byte	0x75f
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF165
	.byte	0xf
	.byte	0x7b
	.byte	0x16
	.4byte	0x2d4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF166
	.byte	0xf
	.byte	0x7c
	.byte	0x16
	.4byte	0x2d4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF167
	.byte	0xf
	.byte	0x7d
	.byte	0x16
	.4byte	0x2d4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF168
	.byte	0xf
	.byte	0x7e
	.byte	0x16
	.4byte	0x2d4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF169
	.byte	0xf
	.byte	0x7f
	.byte	0x16
	.4byte	0x2d4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF170
	.byte	0xf
	.byte	0x80
	.byte	0x16
	.4byte	0x2d4
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF171
	.byte	0xf
	.byte	0x81
	.byte	0xb
	.4byte	0x781
	.uleb128 0x1b
	.4byte	.LASF172
	.byte	0xf
	.byte	0x82
	.byte	0x12
	.4byte	0x2d4
	.byte	0
	.uleb128 0x1c
	.4byte	0x778
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF173
	.byte	0xf
	.byte	0x84
	.byte	0x3
	.4byte	0x76b
	.uleb128 0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.byte	0x24
	.byte	0xe
	.4byte	.LASF174
	.4byte	0x852
	.uleb128 0xe
	.4byte	.LASF175
	.byte	0
	.uleb128 0xe
	.4byte	.LASF176
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF177
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF178
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF179
	.byte	0x10
	.byte	0x29
	.byte	0x3
	.4byte	0x827
	.uleb128 0x8
	.4byte	.LASF180
	.byte	0x11
	.byte	0x28
	.byte	0x11
	.4byte	0x6a5
	.uleb128 0x8
	.4byte	.LASF181
	.byte	0x12
	.byte	0x52
	.byte	0xd
	.4byte	0x271
	.uleb128 0x8
	.4byte	.LASF182
	.byte	0x12
	.byte	0x53
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x8
	.4byte	.LASF183
	.byte	0x12
	.byte	0x59
	.byte	0x12
	.4byte	0x2d4
	.uleb128 0x8
	.4byte	.LASF184
	.byte	0x2
	.byte	0x5d
	.byte	0x26
	.4byte	0x89a
	.uleb128 0x12
	.byte	0x4
	.4byte	0x8a0
	.uleb128 0x1d
	.4byte	.LASF193
	.uleb128 0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x2
	.byte	0x72
	.byte	0x1
	.4byte	.LASF185
	.4byte	0x8d6
	.uleb128 0xe
	.4byte	.LASF186
	.byte	0
	.uleb128 0xe
	.4byte	.LASF187
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF188
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF189
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF190
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF191
	.byte	0x2
	.byte	0x78
	.byte	0x3
	.4byte	0x8a5
	.uleb128 0x8
	.4byte	.LASF192
	.byte	0x13
	.byte	0x37
	.byte	0x22
	.4byte	0x8ee
	.uleb128 0x12
	.byte	0x4
	.4byte	0x8f4
	.uleb128 0x1d
	.4byte	.LASF194
	.uleb128 0x8
	.4byte	.LASF195
	.byte	0x14
	.byte	0x2a
	.byte	0x17
	.4byte	0x8e2
	.uleb128 0x12
	.byte	0x4
	.4byte	0x86a
	.uleb128 0x1e
	.string	"TAG"
	.byte	0x1
	.byte	0x12
	.byte	0x14
	.4byte	0x67b
	.uleb128 0x11
	.4byte	.LASF197
	.byte	0x7
	.byte	0x4
	.4byte	0x2d4
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.4byte	0x93c
	.uleb128 0xe
	.4byte	.LASF198
	.byte	0
	.uleb128 0xe
	.4byte	.LASF199
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF200
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.4byte	0x526
	.4byte	0x94c
	.uleb128 0x20
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x93c
	.uleb128 0x21
	.4byte	.LASF201
	.byte	0x1
	.byte	0x1d
	.byte	0x19
	.4byte	0x94c
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL11button_pins
	.uleb128 0x21
	.4byte	.LASF202
	.byte	0x1
	.byte	0x22
	.byte	0x15
	.4byte	0x88e
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL13button_task_h
	.uleb128 0x21
	.4byte	.LASF203
	.byte	0x1
	.byte	0x23
	.byte	0x1a
	.4byte	0x8f9
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL17button_semaphor_h
	.uleb128 0x22
	.4byte	.LASF204
	.byte	0x16
	.byte	0x3f
	.byte	0x10
	.4byte	0x86a
	.4byte	0x9bb
	.uleb128 0x15
	.4byte	0x85e
	.uleb128 0x15
	.4byte	0x67b
	.uleb128 0x15
	.4byte	0x2d4
	.uleb128 0x15
	.4byte	0x692
	.uleb128 0x15
	.4byte	0x876
	.uleb128 0x15
	.4byte	0x9bb
	.uleb128 0x15
	.4byte	0x86a
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x88e
	.uleb128 0xb
	.4byte	0x9bb
	.uleb128 0x22
	.4byte	.LASF205
	.byte	0xd
	.byte	0x3c
	.byte	0xb
	.4byte	0x699
	.4byte	0x9dc
	.uleb128 0x15
	.4byte	0x9dc
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x71d
	.uleb128 0x23
	.4byte	.LASF206
	.byte	0x17
	.byte	0x44
	.byte	0xb
	.4byte	.LASF208
	.4byte	0x699
	.4byte	0x9fc
	.uleb128 0x15
	.4byte	0x656
	.byte	0
	.uleb128 0x23
	.4byte	.LASF207
	.byte	0x17
	.byte	0x43
	.byte	0xb
	.4byte	.LASF209
	.4byte	0x699
	.4byte	0xa1b
	.uleb128 0x15
	.4byte	0x656
	.uleb128 0x15
	.4byte	0x60d
	.byte	0
	.uleb128 0x22
	.4byte	.LASF210
	.byte	0xd
	.byte	0x90
	.byte	0x5
	.4byte	0x271
	.4byte	0xa31
	.uleb128 0x15
	.4byte	0x51a
	.byte	0
	.uleb128 0x24
	.4byte	.LASF211
	.byte	0x2
	.2byte	0x8df
	.byte	0xc
	.4byte	0x86a
	.4byte	0xa5c
	.uleb128 0x15
	.4byte	0x876
	.uleb128 0x15
	.4byte	0x2d4
	.uleb128 0x15
	.4byte	0x2d4
	.uleb128 0x15
	.4byte	0xa5c
	.uleb128 0x15
	.4byte	0x882
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x2d4
	.uleb128 0x24
	.4byte	.LASF212
	.byte	0x13
	.2byte	0x549
	.byte	0xc
	.4byte	0x86a
	.4byte	0xa7e
	.uleb128 0x15
	.4byte	0x8e2
	.uleb128 0x15
	.4byte	0x882
	.byte	0
	.uleb128 0x25
	.4byte	.LASF241
	.byte	0x12
	.2byte	0x1cb
	.byte	0xd
	.uleb128 0x24
	.4byte	.LASF213
	.byte	0x13
	.2byte	0x4b7
	.byte	0xc
	.4byte	0x86a
	.4byte	0xaa3
	.uleb128 0x15
	.4byte	0x8e2
	.uleb128 0x15
	.4byte	0x905
	.byte	0
	.uleb128 0x24
	.4byte	.LASF214
	.byte	0x2
	.2byte	0x858
	.byte	0xc
	.4byte	0x86a
	.4byte	0xad3
	.uleb128 0x15
	.4byte	0x88e
	.uleb128 0x15
	.4byte	0x876
	.uleb128 0x15
	.4byte	0x2d4
	.uleb128 0x15
	.4byte	0x8d6
	.uleb128 0x15
	.4byte	0xa5c
	.uleb128 0x15
	.4byte	0x905
	.byte	0
	.uleb128 0x24
	.4byte	.LASF215
	.byte	0xd
	.2byte	0x179
	.byte	0xb
	.4byte	0x699
	.4byte	0xaf4
	.uleb128 0x15
	.4byte	0x51a
	.uleb128 0x15
	.4byte	0x6b6
	.uleb128 0x15
	.4byte	0x692
	.byte	0
	.uleb128 0x26
	.4byte	.LASF216
	.byte	0xc
	.byte	0x4f
	.byte	0x6
	.4byte	0xb1a
	.uleb128 0x15
	.4byte	0x699
	.uleb128 0x15
	.4byte	0x67b
	.uleb128 0x15
	.4byte	0x271
	.uleb128 0x15
	.4byte	0x67b
	.uleb128 0x15
	.4byte	0x67b
	.byte	0
	.uleb128 0x24
	.4byte	.LASF217
	.byte	0xd
	.2byte	0x157
	.byte	0xb
	.4byte	0x699
	.4byte	0xb31
	.uleb128 0x15
	.4byte	0x271
	.byte	0
	.uleb128 0x27
	.4byte	.LASF235
	.byte	0x18
	.byte	0x26
	.byte	0x6
	.4byte	0xb4e
	.uleb128 0x15
	.4byte	0x81b
	.uleb128 0x15
	.4byte	0x67b
	.uleb128 0x15
	.4byte	0x67b
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.4byte	.LASF242
	.byte	0x19
	.byte	0x26
	.byte	0xa
	.4byte	0x2d4
	.uleb128 0x24
	.4byte	.LASF218
	.byte	0x13
	.2byte	0x5a2
	.byte	0x13
	.4byte	0x8e2
	.4byte	0xb7b
	.uleb128 0x15
	.4byte	0x876
	.uleb128 0x15
	.4byte	0x876
	.uleb128 0x15
	.4byte	0x2a4
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF243
	.byte	0x1
	.byte	0x67
	.byte	0x6
	.4byte	.LASF244
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe75
	.uleb128 0x2b
	.string	"err"
	.byte	0x1
	.byte	0x73
	.byte	0xf
	.4byte	0x699
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x2c
	.4byte	.LASF219
	.4byte	0xe85
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x2d
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0xbd2
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x6e
	.byte	0x9e
	.4byte	0x81b
	.byte	0
	.uleb128 0x2f
	.4byte	0xbe4
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x6e
	.byte	0xf5
	.4byte	0x81b
	.byte	0
	.uleb128 0x2f
	.4byte	0xbf6
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x6e
	.byte	0xf6
	.4byte	0x81b
	.byte	0
	.uleb128 0x2f
	.4byte	0xc08
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x6e
	.byte	0xf8
	.4byte	0x81b
	.byte	0
	.uleb128 0x2f
	.4byte	0xc1a
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x6e
	.byte	0xbd
	.4byte	0x81b
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0xc67
	.uleb128 0x30
	.4byte	.LASF221
	.byte	0x1
	.byte	0x75
	.byte	0x18
	.4byte	0x699
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x31
	.4byte	.LVL37
	.4byte	0xaf4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x75
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0xcd5
	.uleb128 0x30
	.4byte	.LASF221
	.byte	0x1
	.byte	0x77
	.byte	0x14
	.4byte	0x699
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x33
	.4byte	.LVL39
	.4byte	0xad3
	.4byte	0xca9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL10button_isrPv
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL40
	.4byte	0xaf4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x77
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0xd43
	.uleb128 0x30
	.4byte	.LASF221
	.byte	0x1
	.byte	0x78
	.byte	0x14
	.4byte	0x699
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x33
	.4byte	.LVL42
	.4byte	0xad3
	.4byte	0xd17
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL10button_isrPv
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.4byte	.LVL43
	.4byte	0xaf4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x78
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x1290
	.4byte	.LBI25
	.byte	.LVU115
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.byte	0x6d
	.byte	0x14
	.4byte	0xdeb
	.uleb128 0x35
	.4byte	0x12a2
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x35
	.4byte	0x12af
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x35
	.4byte	0x12bc
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x35
	.4byte	0x12c9
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x35
	.4byte	0x12d6
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x35
	.4byte	0x12e3
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x31
	.4byte	.LVL32
	.4byte	0x987
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL19button_control_taskPv
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x800
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL13button_task_h
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL28
	.4byte	0xf18
	.4byte	0xdfe
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x33
	.4byte	.LVL29
	.4byte	0xf18
	.4byte	0xe11
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x33
	.4byte	.LVL30
	.4byte	0xb5a
	.4byte	0xe2e
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x36
	.4byte	.LVL33
	.4byte	0xb4e
	.uleb128 0x33
	.4byte	.LVL34
	.4byte	0xb31
	.4byte	0xe65
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x31
	.4byte	.LVL35
	.4byte	0xb1a
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x68d
	.4byte	0xe85
	.uleb128 0x20
	.4byte	0x2c
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.4byte	0xe75
	.uleb128 0x37
	.4byte	.LASF223
	.byte	0x1
	.byte	0x5e
	.byte	0x38
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf18
	.uleb128 0x38
	.string	"arg"
	.byte	0x1
	.byte	0x5e
	.byte	0x49
	.4byte	0x692
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.string	"btn"
	.byte	0x1
	.byte	0x5f
	.byte	0xe
	.4byte	0x2d4
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x21
	.4byte	.LASF222
	.byte	0x1
	.byte	0x60
	.byte	0x10
	.4byte	0x86a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.4byte	.LVL2
	.4byte	0xaa3
	.4byte	0xefa
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x33
	.4byte	.LVL3
	.4byte	0xa87
	.4byte	0xf0e
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x36
	.4byte	.LVL4
	.4byte	0xa7e
	.byte	0
	.uleb128 0x37
	.4byte	.LASF224
	.byte	0x1
	.byte	0x53
	.byte	0xd
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfdc
	.uleb128 0x39
	.string	"pin"
	.byte	0x1
	.byte	0x53
	.byte	0x26
	.4byte	0x2d4
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x3a
	.string	"cfg"
	.byte	0x1
	.byte	0x54
	.byte	0x13
	.4byte	0x711
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.4byte	.LASF219
	.4byte	0xfec
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x2d
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0xfc1
	.uleb128 0x30
	.4byte	.LASF221
	.byte	0x1
	.byte	0x5b
	.byte	0x14
	.4byte	0x699
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x33
	.4byte	.LVL26
	.4byte	0x9c6
	.4byte	0xf95
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x31
	.4byte	.LVL27
	.4byte	0xaf4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5b
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL24
	.4byte	0x1330
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x68d
	.4byte	0xfec
	.uleb128 0x20
	.4byte	0x2c
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.4byte	0xfdc
	.uleb128 0x37
	.4byte	.LASF225
	.byte	0x1
	.byte	0x25
	.byte	0xd
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1280
	.uleb128 0x38
	.string	"arg"
	.byte	0x1
	.byte	0x25
	.byte	0x27
	.4byte	0x692
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LASF226
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.4byte	0x1280
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	.LASF227
	.byte	0x1
	.byte	0x2d
	.byte	0xe
	.4byte	0x2d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x1053
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0x29
	.byte	0x11
	.4byte	0x285
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x1216
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.byte	0x3b
	.byte	0x15
	.4byte	0x285
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x3b
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x30
	.4byte	.LASF228
	.byte	0x1
	.byte	0x3c
	.byte	0x11
	.4byte	0x271
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2f
	.4byte	0x10a1
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x45
	.byte	0xa4
	.4byte	0x81b
	.byte	0
	.uleb128 0x2f
	.4byte	0x10b3
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x45
	.byte	0xed
	.4byte	0x81b
	.byte	0
	.uleb128 0x2f
	.4byte	0x10c5
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x45
	.byte	0xee
	.4byte	0x81b
	.byte	0
	.uleb128 0x2f
	.4byte	0x10d7
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x45
	.byte	0xf0
	.4byte	0x81b
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x10f1
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x45
	.byte	0xb6
	.4byte	0x81b
	.byte	0
	.uleb128 0x2f
	.4byte	0x1103
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x4b
	.byte	0xa4
	.4byte	0x81b
	.byte	0
	.uleb128 0x2f
	.4byte	0x1115
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x4b
	.byte	0xf1
	.4byte	0x81b
	.byte	0
	.uleb128 0x2f
	.4byte	0x1127
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x4b
	.byte	0xf2
	.4byte	0x81b
	.byte	0
	.uleb128 0x2f
	.4byte	0x1139
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x4b
	.byte	0xf4
	.4byte	0x81b
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x1153
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x4b
	.byte	0xba
	.4byte	0x81b
	.byte	0
	.uleb128 0x33
	.4byte	.LVL14
	.4byte	0xa1b
	.4byte	0x1170
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xb
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	_ZL11button_pins
	.byte	0x22
	.byte	0x6
	.byte	0
	.uleb128 0x36
	.4byte	.LVL15
	.4byte	0xb4e
	.uleb128 0x33
	.4byte	.LVL16
	.4byte	0xb31
	.4byte	0x11ad
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL17
	.4byte	0x9fc
	.4byte	0x11c8
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0
	.uleb128 0x36
	.4byte	.LVL19
	.4byte	0xb4e
	.uleb128 0x33
	.4byte	.LVL20
	.4byte	0xb31
	.4byte	0x1205
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL21
	.4byte	0x9e2
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL6
	.4byte	0x1330
	.4byte	0x1234
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x33
	.4byte	.LVL10
	.4byte	0xa62
	.4byte	0x1248
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x33
	.4byte	.LVL11
	.4byte	0xa62
	.4byte	0x125b
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x31
	.4byte	.LVL12
	.4byte	0xa31
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x271
	.4byte	0x1290
	.uleb128 0x20
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF245
	.byte	0x2
	.2byte	0x173
	.byte	0x10
	.4byte	0x86a
	.byte	0x3
	.4byte	0x1322
	.uleb128 0x3d
	.4byte	.LASF229
	.byte	0x2
	.2byte	0x173
	.byte	0x2c
	.4byte	0x85e
	.uleb128 0x3d
	.4byte	.LASF230
	.byte	0x2
	.2byte	0x174
	.byte	0x30
	.4byte	0x681
	.uleb128 0x3d
	.4byte	.LASF231
	.byte	0x2
	.2byte	0x175
	.byte	0x2c
	.4byte	0x2e0
	.uleb128 0x3d
	.4byte	.LASF232
	.byte	0x2
	.2byte	0x176
	.byte	0x2a
	.4byte	0x694
	.uleb128 0x3d
	.4byte	.LASF233
	.byte	0x2
	.2byte	0x177
	.byte	0x29
	.4byte	0x876
	.uleb128 0x3d
	.4byte	.LASF234
	.byte	0x2
	.2byte	0x178
	.byte	0x32
	.4byte	0x9c1
	.uleb128 0x3e
	.4byte	.LASF204
	.byte	0x2
	.2byte	0x17e
	.byte	0x1b
	.4byte	0x86a
	.uleb128 0x15
	.4byte	0x85e
	.uleb128 0x15
	.4byte	0x67b
	.uleb128 0x15
	.4byte	0x2d4
	.uleb128 0x15
	.4byte	0x692
	.uleb128 0x15
	.4byte	0x876
	.uleb128 0x15
	.4byte	0x9bb
	.uleb128 0x15
	.4byte	0x86a
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF236
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF237
	.uleb128 0x3f
	.4byte	.LASF246
	.4byte	.LASF247
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS6:
	.uleb128 .LVU138
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 .LVU152
.LLST6:
	.4byte	.LVL35
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x4
	.byte	0x78
	.sleb128 259
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU144
	.uleb128 .LVU147
.LLST13:
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU152
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 .LVU160
.LLST14:
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU161
	.uleb128 .LVU164
.LLST15:
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU115
	.uleb128 .LVU119
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL19button_control_taskPv
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU115
	.uleb128 .LVU119
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x3
	.4byte	.LC19
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU115
	.uleb128 .LVU119
.LLST9:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xa
	.2byte	0x800
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU115
	.uleb128 .LVU119
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU115
	.uleb128 .LVU119
.LLST11:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU115
	.uleb128 .LVU119
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL13button_task_h
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 .LVU3
	.uleb128 0
.LLST0:
	.4byte	.LVL1
	.4byte	.LFE99
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 0
.LLST4:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE98
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
.LVUS5:
	.uleb128 .LVU101
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 0
.LLST5:
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LFE98
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU22
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU28
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU41
	.uleb128 0
.LLST2:
	.4byte	.LVL13
	.4byte	.LFE97
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU44
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU88
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-1
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19-1
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	.LFB97
	.4byte	.LFE97
	.4byte	.LFB98
	.4byte	.LFE98
	.4byte	.LFB100
	.4byte	.LFE100
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF144:
	.string	"char"
.LASF33:
	.string	"int8_t"
.LASF31:
	.string	"size_t"
.LASF231:
	.string	"usStackDepth"
.LASF132:
	.string	"GPIO_PULLDOWN_DISABLE"
.LASF141:
	.string	"AXIS_RA"
.LASF115:
	.string	"GPIO_INTR_LOW_LEVEL"
.LASF60:
	.string	"uint_fast64_t"
.LASF37:
	.string	"int32_t"
.LASF20:
	.string	"__uint_least8_t"
.LASF124:
	.string	"GPIO_MODE_INPUT_OUTPUT_OD"
.LASF110:
	.string	"15gpio_int_type_t"
.LASF181:
	.string	"BaseType_t"
.LASF48:
	.string	"uint_least16_t"
.LASF53:
	.string	"int_fast8_t"
.LASF223:
	.string	"button_isr"
.LASF164:
	.string	"log_level"
.LASF206:
	.string	"motion_stop"
.LASF58:
	.string	"uint_fast32_t"
.LASF6:
	.string	"__uint8_t"
.LASF153:
	.string	"15esp_log_level_t"
.LASF142:
	.string	"AXIS_DEC"
.LASF159:
	.string	"ESP_LOG_VERBOSE"
.LASF119:
	.string	"11gpio_mode_t"
.LASF113:
	.string	"GPIO_INTR_NEGEDGE"
.LASF13:
	.string	"long int"
.LASF243:
	.string	"button_init"
.LASF177:
	.string	"ESP_LOG_ARGS_TYPE_64BITS"
.LASF194:
	.string	"QueueDefinition"
.LASF247:
	.string	"__builtin_memset"
.LASF166:
	.string	"require_formatting"
.LASF187:
	.string	"eSetBits"
.LASF221:
	.string	"err_rc_"
.LASF230:
	.string	"pcName"
.LASF121:
	.string	"GPIO_MODE_INPUT"
.LASF52:
	.string	"uint_least64_t"
.LASF211:
	.string	"xTaskGenericNotifyWait"
.LASF192:
	.string	"QueueHandle_t"
.LASF4:
	.string	"signed char"
.LASF34:
	.string	"uint8_t"
.LASF168:
	.string	"dis_timestamp"
.LASF62:
	.string	"GPIO_NUM_0"
.LASF63:
	.string	"GPIO_NUM_1"
.LASF64:
	.string	"GPIO_NUM_2"
.LASF65:
	.string	"GPIO_NUM_3"
.LASF66:
	.string	"GPIO_NUM_4"
.LASF67:
	.string	"GPIO_NUM_5"
.LASF68:
	.string	"GPIO_NUM_6"
.LASF69:
	.string	"GPIO_NUM_7"
.LASF70:
	.string	"GPIO_NUM_8"
.LASF71:
	.string	"GPIO_NUM_9"
.LASF219:
	.string	"__PRETTY_FUNCTION__"
.LASF196:
	.string	"axis_t"
.LASF205:
	.string	"gpio_config"
.LASF152:
	.string	"gpio_config_t"
.LASF22:
	.string	"__uint_least16_t"
.LASF7:
	.string	"unsigned char"
.LASF146:
	.string	"gpio_isr_t"
.LASF61:
	.string	"GPIO_NUM_NC"
.LASF135:
	.string	"bool"
.LASF178:
	.string	"ESP_LOG_ARGS_TYPE_POINTER"
.LASF204:
	.string	"xTaskCreatePinnedToCore"
.LASF218:
	.string	"xQueueGenericCreate"
.LASF19:
	.string	"__int_least8_t"
.LASF239:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/button_control/button_control.cpp"
.LASF209:
	.string	"_Z11motion_move6axis_tb"
.LASF139:
	.string	"TMC_R_INTERNAL_MOHM"
.LASF210:
	.string	"gpio_get_level"
.LASF122:
	.string	"GPIO_MODE_OUTPUT"
.LASF229:
	.string	"pxTaskCode"
.LASF50:
	.string	"uint_least32_t"
.LASF195:
	.string	"SemaphoreHandle_t"
.LASF10:
	.string	"__uint16_t"
.LASF241:
	.string	"_frxt_setup_switch"
.LASF176:
	.string	"ESP_LOG_ARGS_TYPE_32BITS"
.LASF190:
	.string	"eSetValueWithoutOverwrite"
.LASF235:
	.string	"esp_log"
.LASF207:
	.string	"motion_move"
.LASF175:
	.string	"ESP_LOG_ARGS_TYPE_NONE"
.LASF72:
	.string	"GPIO_NUM_10"
.LASF111:
	.string	"GPIO_INTR_DISABLE"
.LASF220:
	.string	"__esp_log_config"
.LASF236:
	.string	"double"
.LASF47:
	.string	"int_least16_t"
.LASF155:
	.string	"ESP_LOG_ERROR"
.LASF143:
	.string	"AXIS_COUNT"
.LASF131:
	.string	"15gpio_pulldown_t"
.LASF182:
	.string	"UBaseType_t"
.LASF120:
	.string	"GPIO_MODE_DISABLE"
.LASF26:
	.string	"__uint_least64_t"
.LASF140:
	.string	"TMC_FULL_SCALE_MA"
.LASF123:
	.string	"GPIO_MODE_OUTPUT_OD"
.LASF234:
	.string	"pxCreatedTask"
.LASF217:
	.string	"gpio_install_isr_service"
.LASF118:
	.string	"gpio_int_type_t"
.LASF133:
	.string	"GPIO_PULLDOWN_ENABLE"
.LASF185:
	.string	"13eNotifyAction"
.LASF18:
	.string	"__uint64_t"
.LASF15:
	.string	"long unsigned int"
.LASF136:
	.string	"TMC_VSENSE"
.LASF24:
	.string	"__uint_least32_t"
.LASF51:
	.string	"int_least64_t"
.LASF44:
	.string	"uintptr_t"
.LASF222:
	.string	"woken"
.LASF108:
	.string	"gpio_num_t"
.LASF244:
	.string	"_Z11button_initv"
.LASF29:
	.string	"__intptr_t"
.LASF129:
	.string	"GPIO_PULLUP_ENABLE"
.LASF14:
	.string	"__uint32_t"
.LASF17:
	.string	"long long int"
.LASF112:
	.string	"GPIO_INTR_POSEDGE"
.LASF138:
	.string	"TMC_R_SENSE_MOHM"
.LASF49:
	.string	"int_least32_t"
.LASF125:
	.string	"GPIO_MODE_INPUT_OUTPUT"
.LASF169:
	.string	"binary_mode"
.LASF145:
	.string	"esp_err_t"
.LASF213:
	.string	"xQueueGiveFromISR"
.LASF42:
	.string	"uintmax_t"
.LASF73:
	.string	"GPIO_NUM_11"
.LASF74:
	.string	"GPIO_NUM_12"
.LASF75:
	.string	"GPIO_NUM_13"
.LASF76:
	.string	"GPIO_NUM_14"
.LASF77:
	.string	"GPIO_NUM_15"
.LASF78:
	.string	"GPIO_NUM_16"
.LASF79:
	.string	"GPIO_NUM_17"
.LASF80:
	.string	"GPIO_NUM_18"
.LASF81:
	.string	"GPIO_NUM_19"
.LASF107:
	.string	"GPIO_NUM_MAX"
.LASF109:
	.string	"10gpio_num_t"
.LASF237:
	.string	"float"
.LASF180:
	.string	"TaskFunction_t"
.LASF227:
	.string	"event"
.LASF238:
	.ascii	"GNU C++26 15.2.0 -ftls-model=local-exec -mdynconfig=xtensa_e"
	.ascii	"sp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gn"
	.string	"u++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec"
.LASF27:
	.string	"__intmax_t"
.LASF199:
	.string	"BTN_BACKWARD"
.LASF149:
	.string	"pull_up_en"
.LASF1:
	.string	"unsigned int"
.LASF82:
	.string	"GPIO_NUM_20"
.LASF83:
	.string	"GPIO_NUM_21"
.LASF203:
	.string	"button_semaphor_h"
.LASF84:
	.string	"GPIO_NUM_26"
.LASF85:
	.string	"GPIO_NUM_27"
.LASF86:
	.string	"GPIO_NUM_28"
.LASF87:
	.string	"GPIO_NUM_29"
.LASF171:
	.string	"opts"
.LASF43:
	.string	"intptr_t"
.LASF216:
	.string	"_esp_error_check_failed"
.LASF200:
	.string	"BTN_COUNT"
.LASF156:
	.string	"ESP_LOG_WARN"
.LASF184:
	.string	"TaskHandle_t"
.LASF55:
	.string	"int_fast16_t"
.LASF88:
	.string	"GPIO_NUM_30"
.LASF89:
	.string	"GPIO_NUM_31"
.LASF90:
	.string	"GPIO_NUM_32"
.LASF91:
	.string	"GPIO_NUM_33"
.LASF92:
	.string	"GPIO_NUM_34"
.LASF93:
	.string	"GPIO_NUM_35"
.LASF94:
	.string	"GPIO_NUM_36"
.LASF95:
	.string	"GPIO_NUM_37"
.LASF96:
	.string	"GPIO_NUM_38"
.LASF97:
	.string	"GPIO_NUM_39"
.LASF163:
	.string	"16esp_log_config_t"
.LASF160:
	.string	"ESP_LOG_MAX"
.LASF245:
	.string	"xTaskCreate"
.LASF240:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/build/dev"
.LASF179:
	.string	"esp_log_args_type_t"
.LASF116:
	.string	"GPIO_INTR_HIGH_LEVEL"
.LASF2:
	.string	"__gnu_cxx"
.LASF147:
	.string	"pin_bit_mask"
.LASF98:
	.string	"GPIO_NUM_40"
.LASF99:
	.string	"GPIO_NUM_41"
.LASF100:
	.string	"GPIO_NUM_42"
.LASF101:
	.string	"GPIO_NUM_43"
.LASF102:
	.string	"GPIO_NUM_44"
.LASF103:
	.string	"GPIO_NUM_45"
.LASF104:
	.string	"GPIO_NUM_46"
.LASF105:
	.string	"GPIO_NUM_47"
.LASF106:
	.string	"GPIO_NUM_48"
.LASF46:
	.string	"uint_least8_t"
.LASF45:
	.string	"int_least8_t"
.LASF197:
	.string	"Button"
.LASF41:
	.string	"intmax_t"
.LASF32:
	.string	"long double"
.LASF127:
	.string	"13gpio_pullup_t"
.LASF188:
	.string	"eIncrement"
.LASF189:
	.string	"eSetValueWithOverwrite"
.LASF193:
	.string	"tskTaskControlBlock"
.LASF242:
	.string	"esp_log_timestamp"
.LASF5:
	.string	"__int8_t"
.LASF0:
	.string	"long long unsigned int"
.LASF36:
	.string	"uint16_t"
.LASF162:
	.string	"13gpio_config_t"
.LASF21:
	.string	"__int_least16_t"
.LASF59:
	.string	"int_fast64_t"
.LASF173:
	.string	"esp_log_config_t"
.LASF154:
	.string	"ESP_LOG_NONE"
.LASF183:
	.string	"TickType_t"
.LASF3:
	.string	"__cxx11"
.LASF246:
	.string	"memset"
.LASF212:
	.string	"xQueueSemaphoreTake"
.LASF157:
	.string	"ESP_LOG_INFO"
.LASF8:
	.string	"__int16_t"
.LASF174:
	.string	"19esp_log_args_type_t"
.LASF134:
	.string	"gpio_pulldown_t"
.LASF30:
	.string	"__uintptr_t"
.LASF126:
	.string	"gpio_mode_t"
.LASF215:
	.string	"gpio_isr_handler_add"
.LASF191:
	.string	"eNotifyAction"
.LASF214:
	.string	"xTaskGenericNotifyFromISR"
.LASF57:
	.string	"int_fast32_t"
.LASF198:
	.string	"BTN_FORWARD"
.LASF54:
	.string	"uint_fast8_t"
.LASF225:
	.string	"button_control_task"
.LASF9:
	.string	"short int"
.LASF40:
	.string	"uint64_t"
.LASF148:
	.string	"mode"
.LASF35:
	.string	"int16_t"
.LASF130:
	.string	"gpio_pullup_t"
.LASF150:
	.string	"pull_down_en"
.LASF208:
	.string	"_Z11motion_stop6axis_t"
.LASF25:
	.string	"__int_least64_t"
.LASF201:
	.string	"button_pins"
.LASF28:
	.string	"__uintmax_t"
.LASF165:
	.string	"constrained_env"
.LASF158:
	.string	"ESP_LOG_DEBUG"
.LASF16:
	.string	"__int64_t"
.LASF167:
	.string	"dis_color"
.LASF128:
	.string	"GPIO_PULLUP_DISABLE"
.LASF202:
	.string	"button_task_h"
.LASF114:
	.string	"GPIO_INTR_ANYEDGE"
.LASF232:
	.string	"pvParameters"
.LASF226:
	.string	"stable_level"
.LASF38:
	.string	"uint32_t"
.LASF228:
	.string	"level"
.LASF56:
	.string	"uint_fast16_t"
.LASF23:
	.string	"__int_least32_t"
.LASF161:
	.string	"esp_log_level_t"
.LASF11:
	.string	"short unsigned int"
.LASF12:
	.string	"__int32_t"
.LASF39:
	.string	"int64_t"
.LASF186:
	.string	"eNoAction"
.LASF224:
	.string	"init_button_cfg"
.LASF117:
	.string	"GPIO_INTR_MAX"
.LASF137:
	.string	"TMC_V_FS_MV"
.LASF151:
	.string	"intr_type"
.LASF170:
	.string	"reserved"
.LASF172:
	.string	"data"
.LASF233:
	.string	"uxPriority"
	.ident	"GCC: (crosstool-NG esp-15.2.0_20251204) 15.2.0"
