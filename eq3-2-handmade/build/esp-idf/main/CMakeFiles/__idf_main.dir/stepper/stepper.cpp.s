	.file	"stepper.cpp"
# GNU C++26 (crosstool-NG esp-15.2.0_20251204) version 15.2.0 (xtensa-esp-elf)
#	compiled by GNU C version Debian Clang 19.1.7 (3+b1), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -ftls-model=local-exec -mdynconfig=xtensa_esp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gnu++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec
	.text
.Ltext0:
	.file 1 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp"
	.section	.rodata._ZL8toString14MoveResultCode.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"OK"
	.align	4
.LC2:
	.string	"Error: No Direction Pin"
	.align	4
.LC4:
	.string	"Error: Speed is Undefined"
	.align	4
.LC6:
	.string	"Error: Acceleration is Undefined"
	.align	4
.LC8:
	.string	"Unknown Error"
	.section	.text._ZL8toString14MoveResultCode,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.align	4
	.type	_ZL8toString14MoveResultCode, @function
_ZL8toString14MoveResultCode:
.LVL0:
.LFB112:
	.file 2 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/fas_arch/result_codes.h"
	.loc 2 103 57 view -0
	.loc 2 103 57 is_stmt 0 view .LVU1
	entry	sp, 32	#
.LCFI0:
	extui	a8, a2, 0, 8	# code, code
	.loc 2 104 3 is_stmt 1 view .LVU2
	sext	a2, a2, 7	# code, code
	.loc 2 104 3 is_stmt 0 view .LVU3
	beqi	a2, -1, .L4	# code,,
	sext	a9, a8, 7	# code, code
	bgez	a9, .L3	# code,
	movi.n	a10, -3	# tmp49,
	beq	a9, a10, .L5	# code, tmp49,
	mov.n	a8, a9	# code, code
	movi.n	a9, -2	# tmp52,
	bne	a8, a9, .L6	# code, tmp52,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/fas_arch/result_codes.h:110:       return FAS_PSTR("Error: Speed is Undefined");
	.loc 2 110 42 view .LVU4
	l32r	a2, .LC5	#, <retval>
.LVL1:
	.loc 2 110 42 view .LVU5
	j	.L1		#
.L3:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/fas_arch/result_codes.h:104:   switch (code) {
	.loc 2 104 3 view .LVU6
	bnez.n	a8, .L7	# code,
	l32r	a2, .LC1	#, <retval>
	j	.L1		#
.L4:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/fas_arch/result_codes.h:108:       return FAS_PSTR("Error: No Direction Pin");
	.loc 2 108 40 view .LVU7
	l32r	a2, .LC3	#, <retval>
	j	.L1		#
.L5:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/fas_arch/result_codes.h:112:       return FAS_PSTR("Error: Acceleration is Undefined");
	.loc 2 112 49 view .LVU8
	l32r	a2, .LC7	#, <retval>
	j	.L1		#
.L6:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/fas_arch/result_codes.h:114:       return FAS_PSTR("Unknown Error");
	.loc 2 114 30 view .LVU9
	l32r	a2, .LC9	#, <retval>
	j	.L1		#
.L7:
	l32r	a2, .LC9	#, <retval>
.L1:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/fas_arch/result_codes.h:116: }
	.loc 2 116 1 view .LVU10
	retw.n	
.LFE112:
	.size	_ZL8toString14MoveResultCode, .-_ZL8toString14MoveResultCode
	.section	.text._ZL13slew_speed_hz6axis_t,"ax",@progbits
	.literal_position
	.literal .LC10, AXES
	.align	4
	.type	_ZL13slew_speed_hz6axis_t, @function
_ZL13slew_speed_hz6axis_t:
.LVL2:
.LFB1184:
	.loc 1 40 41 is_stmt 1 view -0
	.loc 1 40 41 is_stmt 0 view .LVU12
	entry	sp, 32	#
.LCFI1:
	.loc 1 40 43 is_stmt 1 view .LVU13
.LVL3:
.LBB256:
.LBI256:
	.file 3 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h"
	.loc 3 97 20 view .LVU14
.LBB257:
	.loc 3 99 5 view .LVU15
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:99:     return AXES[a].full_steps * AXES[a].microsteps;
	.loc 3 99 20 is_stmt 0 view .LVU16
	l32r	a10, .LC10	#, tmp48
	addx4	a8, a2, a2	#, tmp51, a, a
	addx2	a9, a8, a2	#, tmp53, tmp51, a
	addx4	a9, a9, a10	#, tmp55, tmp53, tmp48
	l32i.n	a9, a9, 28	# AXES[a$60_3].full_steps, _5
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:99:     return AXES[a].full_steps * AXES[a].microsteps;
	.loc 3 99 41 view .LVU17
	addx2	a8, a8, a2	#, tmp62, tmp51, a
	addx4	a8, a8, a10	#, tmp64, tmp62, tmp48
	l32i.n	a8, a8, 32	# AXES[a$60_3].microsteps, AXES[a$60_3].microsteps
	mull	a2, a9, a8	# _7, _5, AXES[a$60_3].microsteps
.LVL4:
	.loc 3 99 41 view .LVU18
.LBE257:
.LBE256:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:40: static uint32_t slew_speed_hz(axis_t a) { return axis_motor_steps_per_rev(a) * 2; }
	.loc 1 40 83 view .LVU19
	add.n	a2, a2, a2	#, _7, _7
	retw.n	
.LFE1184:
	.size	_ZL13slew_speed_hz6axis_t, .-_ZL13slew_speed_hz6axis_t
	.section	.text._ZL10slew_accel6axis_t,"ax",@progbits
	.literal_position
	.literal .LC11, AXES
	.align	4
	.type	_ZL10slew_accel6axis_t, @function
_ZL10slew_accel6axis_t:
.LVL5:
.LFB1185:
	.loc 1 41 37 is_stmt 1 view -0
	.loc 1 41 37 is_stmt 0 view .LVU21
	entry	sp, 32	#
.LCFI2:
	.loc 1 41 39 is_stmt 1 view .LVU22
.LVL6:
.LBB258:
.LBI258:
	.loc 3 97 20 view .LVU23
.LBB259:
	.loc 3 99 5 view .LVU24
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:99:     return AXES[a].full_steps * AXES[a].microsteps;
	.loc 3 99 20 is_stmt 0 view .LVU25
	l32r	a10, .LC11	#, tmp48
	addx4	a8, a2, a2	#, tmp51, a, a
	addx2	a9, a8, a2	#, tmp53, tmp51, a
	addx4	a9, a9, a10	#, tmp55, tmp53, tmp48
	l32i.n	a9, a9, 28	# AXES[a$60_3].full_steps, _5
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:99:     return AXES[a].full_steps * AXES[a].microsteps;
	.loc 3 99 41 view .LVU26
	addx2	a8, a8, a2	#, tmp62, tmp51, a
	addx4	a8, a8, a10	#, tmp64, tmp62, tmp48
	l32i.n	a2, a8, 32	# AXES[a$60_3].microsteps, AXES[a$60_3].microsteps
.LVL7:
	.loc 3 99 41 view .LVU27
.LBE259:
.LBE258:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:41: static int32_t  slew_accel(axis_t a)    { return (int32_t)(axis_motor_steps_per_rev(a)); }
	.loc 1 41 86 view .LVU28
	mull	a2, a9, a2	#, _5, AXES[a$60_3].microsteps
	retw.n	
.LFE1185:
	.size	_ZL10slew_accel6axis_t, .-_ZL10slew_accel6axis_t
	.section	.rodata._ZL12axis_stepper6axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC14:
	.string	"stepper"
	.align	4
.LC16:
	.base64	"RSAoJWx1KSAlczogWyVzXSDQvNC+0YLQvtGAINC+0YHQuCDQvdC1INC/0L7QtNC60LvRjtGH0ZHQvSAo0L3QtdGCINCyIFNURVBQRVJfQVhFUykKAA=="
	.section	.text._ZL12axis_stepper6axis_t,"ax",@progbits
	.literal_position
	.literal .LC12, _ZL8steppers
	.literal .LC13, AXES
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.align	4
	.type	_ZL12axis_stepper6axis_t, @function
_ZL12axis_stepper6axis_t:
.LVL8:
.LFB1183:
	.loc 1 29 49 is_stmt 1 view -0
	.loc 1 29 49 is_stmt 0 view .LVU30
	entry	sp, 32	#
.LCFI3:
	.loc 1 30 5 is_stmt 1 view .LVU31
.LBB260:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:30:     if (steppers[a] == nullptr) {
	.loc 1 30 19 is_stmt 0 view .LVU32
	l32r	a8, .LC12	#, tmp50
	addx4	a8, a2, a8	#, tmp52, a$235_1, tmp50
	l32i.n	a8, a8, 0	# steppers[a$235_1], _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:30:     if (steppers[a] == nullptr) {
	.loc 1 30 5 view .LVU33
	bnez.n	a8, .L11	# _2,
	.loc 1 31 9 is_stmt 1 view .LVU34
	.loc 1 31 14 view .LVU35
	.loc 1 31 19 view .LVU36
	.loc 1 31 52 view .LVU37
	.loc 1 31 57 view .LVU38
.LBB261:
	.loc 1 31 116 discriminator 1 view .LVU39
.LBB262:
	.loc 1 31 141 discriminator 1 view .LVU40
	.loc 1 31 176 discriminator 1 view .LVU41
	.loc 1 31 217 view .LVU42
.LBE262:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:31:         ESP_LOGE(TAG, "[%s] мотор оси не подключён (нет в STEPPER_AXES)", AXES[a].name);
	.loc 1 31 123 is_stmt 0 discriminator 1 view .LVU43
	call8	esp_log_timestamp		#
.LVL9:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:31:         ESP_LOGE(TAG, "[%s] мотор оси не подключён (нет в STEPPER_AXES)", AXES[a].name);
	.loc 1 31 139 discriminator 3 view .LVU44
	addx4	a8, a2, a2	#, tmp56, a$235_1, a$235_1
	addx2	a8, a8, a2	#, tmp58, tmp56, a$235_1
	l32r	a9, .LC13	#, tmp53
	addx4	a8, a8, a9	#, tmp60, tmp58, tmp53
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:31:         ESP_LOGE(TAG, "[%s] мотор оси не подключён (нет в STEPPER_AXES)", AXES[a].name);
	.loc 1 31 123 discriminator 3 view .LVU45
	l32r	a11, .LC15	#, tmp61
	l32i.n	a15, a8, 0	# AXES[a$235_1].name,
	mov.n	a14, a11	#, tmp61
	mov.n	a13, a10	#, _4
	l32r	a12, .LC17	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL10:
	.loc 1 31 52 is_stmt 1 view .LVU46
	.loc 1 31 14 view .LVU47
	.loc 1 31 9 view .LVU48
.L11:
.LBE261:
.LBE260:
	.loc 1 33 5 view .LVU49
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:33:     return steppers[a];
	.loc 1 33 22 is_stmt 0 view .LVU50
	l32r	a8, .LC12	#, tmp65
	addx4	a2, a2, a8	#, tmp67, a$235_1, tmp65
.LVL11:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:34: }
	.loc 1 34 1 view .LVU51
	l32i.n	a2, a2, 0	# steppers[a$235_1],
	retw.n	
.LFE1183:
	.size	_ZL12axis_stepper6axis_t, .-_ZL12axis_stepper6axis_t
	.section	.text._Z18axis_steps_per_rev6axis_t,"axG",@progbits,_Z18axis_steps_per_rev6axis_t,comdat
	.literal_position
	.literal .LC18, AXES
	.align	4
	.weak	_Z18axis_steps_per_rev6axis_t
	.type	_Z18axis_steps_per_rev6axis_t, @function
_Z18axis_steps_per_rev6axis_t:
.LVL12:
.LFB7:
	.loc 3 104 1 is_stmt 1 view -0
	.loc 3 104 1 is_stmt 0 view .LVU53
	entry	sp, 32	#
.LCFI4:
	.loc 3 105 5 is_stmt 1 view .LVU54
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:105:     return (uint64_t)AXES[a].full_steps * AXES[a].microsteps
	.loc 3 105 30 is_stmt 0 view .LVU55
	l32r	a13, .LC18	#, tmp55
	addx4	a9, a2, a2	#, tmp58, a, a
	addx2	a10, a9, a2	#, tmp60, tmp58, a
	addx4	a10, a10, a13	#, tmp62, tmp60, tmp55
	l32i.n	a8, a10, 28	# AXES[a$257_1].full_steps, _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:105:     return (uint64_t)AXES[a].full_steps * AXES[a].microsteps
	.loc 3 105 51 view .LVU56
	l32i.n	a12, a10, 32	# AXES[a$257_1].microsteps, AXES[a$257_1].microsteps
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:105:     return (uint64_t)AXES[a].full_steps * AXES[a].microsteps
	.loc 3 105 41 view .LVU57
	mull	a11, a8, a12	# tmp77, _2, AXES[a$257_1].microsteps
	muluh	a8, a8, a12	# _6, _2, AXES[a$257_1].microsteps
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:106:          * AXES[a].worm_teeth * AXES[a].belt_ratio;
	.loc 3 106 20 view .LVU58
	l32i.n	a10, a10, 36	# AXES[a$257_1].worm_teeth, AXES[a$257_1].worm_teeth
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:106:          * AXES[a].worm_teeth * AXES[a].belt_ratio;
	.loc 3 106 10 view .LVU59
	mull	a8, a8, a10	# tmp89, _6, AXES[a$257_1].worm_teeth
	mull	a12, a11, a10	# tmp92, tmp77, AXES[a$257_1].worm_teeth
	muluh	a11, a11, a10	# _9, tmp77, AXES[a$257_1].worm_teeth
	add.n	a8, a8, a11	# tmp93, tmp89, _9
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:106:          * AXES[a].worm_teeth * AXES[a].belt_ratio;
	.loc 3 106 41 view .LVU60
	addx2	a9, a9, a2	#, tmp100, tmp58, a
	addx4	a9, a9, a13	#, tmp102, tmp100, tmp55
	l32i.n	a2, a9, 40	# AXES[a$257_1].belt_ratio, AXES[a$257_1].belt_ratio
.LVL13:
	.loc 3 106 41 view .LVU61
	mull	a8, a8, a2	# tmp107, tmp93, AXES[a$257_1].belt_ratio
	muluh	a3, a2, a12	# _14, AXES[a$257_1].belt_ratio, tmp92
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:107: }
	.loc 3 107 1 view .LVU62
	mull	a2, a2, a12	#, AXES[a$257_1].belt_ratio, tmp92
	add.n	a3, a8, a3	#, tmp107, _14
	retw.n	
.LFE7:
	.size	_Z18axis_steps_per_rev6axis_t, .-_Z18axis_steps_per_rev6axis_t
	.section	.text._Z17axis_sidereal_mhz6axis_t,"axG",@progbits,_Z17axis_sidereal_mhz6axis_t,comdat
	.literal_position
	.literal .LC19, 10000000
	.literal .LC22, 430820452
	.literal .LC23, 861640905
	.align	4
	.weak	_Z17axis_sidereal_mhz6axis_t
	.type	_Z17axis_sidereal_mhz6axis_t, @function
_Z17axis_sidereal_mhz6axis_t:
.LVL14:
.LFB8:
	.loc 3 119 1 is_stmt 1 view -0
	.loc 3 119 1 is_stmt 0 view .LVU64
	entry	sp, 32	#
.LCFI5:
	mov.n	a10, a2	# a, a
	.loc 3 120 5 is_stmt 1 view .LVU65
.LVL15:
	.loc 3 121 5 view .LVU66
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:121:     return (uint32_t)((axis_steps_per_rev(a) * 10000000ULL + SIDEREAL_DAY_X10000 / 2)
	.loc 3 121 42 is_stmt 0 view .LVU67
	call8	_Z18axis_steps_per_rev6axis_t		#
.LVL16:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:121:     return (uint32_t)((axis_steps_per_rev(a) * 10000000ULL + SIDEREAL_DAY_X10000 / 2)
	.loc 3 121 46 discriminator 1 view .LVU68
	l32r	a12, .LC19	#, tmp49
	mull	a8, a11, a12	# tmp48, _1, tmp49
	mull	a9, a10, a12	# tmp54, _1, tmp49
	muluh	a10, a10, a12	# _2, _1, tmp49
	add.n	a8, a8, a10	# tmp55, tmp48, _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:121:     return (uint32_t)((axis_steps_per_rev(a) * 10000000ULL + SIDEREAL_DAY_X10000 / 2)
	.loc 3 121 60 discriminator 1 view .LVU69
	l32r	a12, .LC22	#, tmp69
	mov.n	a11, a8	# _3, tmp55
	add.n	a10, a9, a12	# _3, tmp54, tmp69
	bgeu	a10, a12, .L14	# _3, tmp69,
	addi.n	a11, a8, 1	# _3, tmp55,
.L14:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:122:                       / SIDEREAL_DAY_X10000);
	.loc 3 122 23 view .LVU70
	l32r	a12, .LC23	#,
	movi.n	a13, 0	#,
	call8	__udivdi3		#
.LVL17:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:123: }
	.loc 3 123 1 view .LVU71
	mov.n	a2, a10	#, _4
.LVL18:
	.loc 3 123 1 view .LVU72
	retw.n	
.LFE8:
	.size	_Z17axis_sidereal_mhz6axis_t, .-_Z17axis_sidereal_mhz6axis_t
	.section	.rodata._Z12stepper_initv.str1.4,"aMS",@progbits,1
	.align	4
.LC28:
	.base64	"RSAoJWx1KSAlczogWyVzXSBzdGVwcGVyX2luaXQ6INC90LUg0YPQtNCw0LvQvtGB0Ywg0L/QvtC00LrQu9GO0YfQuNGC0Ywg0LzQvtGC0L7RgCDQuiDQv9C40L3RgyBTVEVQICVkCgA="
	.align	4
.LC31:
	.base64	"SSAoJWx1KSAlczogWyVzXSBzdGVwcGVyX2luaXQ6INC80L7RgtC+0YAg0L/QvtC00LrQu9GO0YfRkdC9LCBTVEVQID0gJWQsIERJUiA9ICVkCgA="
	.section	.text._Z12stepper_initv,"ax",@progbits
	.literal_position
	.literal .LC24, _ZL12STEPPER_AXES
	.literal .LC25, _ZL6engine
	.literal .LC26, AXES
	.literal .LC27, .LC14
	.literal .LC29, .LC28
	.literal .LC30, _ZL8steppers
	.literal .LC32, .LC31
	.literal .LC33, _ZL12STEPPER_AXES+8
	.align	4
	.global	_Z12stepper_initv
	.type	_Z12stepper_initv, @function
_Z12stepper_initv:
.LFB1189:
	.loc 1 62 26 is_stmt 1 view -0
	entry	sp, 64	#
.LCFI6:
	.loc 1 63 5 view .LVU74
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:63:     engine.init();   // один раз на все моторы
	.loc 1 63 16 is_stmt 0 view .LVU75
	movi	a11, 0xff	#,
	l32r	a10, .LC25	#,
	call8	_ZN22FastAccelStepperEngine4initEh		#
.LVL19:
	.loc 1 65 5 is_stmt 1 view .LVU76
.LBB263:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:65:     for (axis_t a : STEPPER_AXES) {
	.loc 1 65 21 is_stmt 0 view .LVU77
	l32r	a5, .LC24	#, __for_begin
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:65:     for (axis_t a : STEPPER_AXES) {
	.loc 1 65 5 view .LVU78
	j	.L16		#
.LVL20:
.L19:
.LBB264:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:65:     for (axis_t a : STEPPER_AXES) {
	.loc 1 65 17 discriminator 3 view .LVU79
	l32i.n	a7, a5, 0	# *__for_begin_32, a$0_1
.LVL21:
	.loc 1 66 9 is_stmt 1 view .LVU80
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:66:         FastAccelStepper *st = engine.stepperConnectToPin(AXES[a].step_pin);
	.loc 1 66 67 is_stmt 0 view .LVU81
	addx4	a8, a7, a7	#, tmp68, a$0_1, a$0_1
.LVL22:
	.loc 1 66 67 view .LVU82
	addx2	a8, a8, a7	#, tmp70, tmp68, a$0_1
	l32r	a9, .LC26	#, tmp65
	addx4	a8, a8, a9	#, tmp72, tmp70, tmp65
	l32i.n	a4, a8, 12	# AXES[a$0_1].step_pin, _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:66:         FastAccelStepper *st = engine.stepperConnectToPin(AXES[a].step_pin);
	.loc 1 66 58 view .LVU83
	movi	a12, 0xff	#,
	extui	a11, a4, 0, 8	#, _2
	l32r	a10, .LC25	#,
	call8	_ZN22FastAccelStepperEngine19stepperConnectToPinEh9FasDriver		#
.LVL23:
	mov.n	a6, a10	# st, st
.LVL24:
	.loc 1 67 9 is_stmt 1 view .LVU84
.LBB265:
	bnez.n	a10, .L17	# st,
.LBB266:
	.loc 1 68 13 view .LVU85
	.loc 1 68 18 view .LVU86
	.loc 1 68 23 view .LVU87
	.loc 1 68 56 view .LVU88
	.loc 1 68 61 view .LVU89
.LBB267:
	.loc 1 68 120 discriminator 1 view .LVU90
.LBB268:
	.loc 1 68 145 discriminator 1 view .LVU91
	.loc 1 68 180 discriminator 1 view .LVU92
	.loc 1 68 221 view .LVU93
.LBE268:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:68:             ESP_LOGE(TAG, "[%s] stepper_init: не удалось подключить мотор к пину STEP %d",
	.loc 1 68 127 is_stmt 0 discriminator 1 view .LVU94
	call8	esp_log_timestamp		#
.LVL25:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:68:             ESP_LOGE(TAG, "[%s] stepper_init: не удалось подключить мотор к пину STEP %d",
	.loc 1 68 162 discriminator 3 view .LVU95
	addx4	a8, a7, a7	#, tmp79, a$0_1, a$0_1
	addx2	a8, a8, a7	#, tmp81, tmp79, a$0_1
	l32r	a9, .LC26	#, tmp76
	addx4	a8, a8, a9	#, tmp83, tmp81, tmp76
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:68:             ESP_LOGE(TAG, "[%s] stepper_init: не удалось подключить мотор к пину STEP %d",
	.loc 1 68 127 discriminator 3 view .LVU96
	l32r	a11, .LC27	#, tmp84
	s32i.n	a4, sp, 0	#, _2
	l32i.n	a15, a8, 0	# AXES[a$0_1].name,
	mov.n	a14, a11	#, tmp84
	mov.n	a13, a10	#, _4
	l32r	a12, .LC29	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL26:
	.loc 1 68 56 is_stmt 1 view .LVU97
	.loc 1 68 18 view .LVU98
.LBE267:
	.loc 1 68 13 view .LVU99
	.loc 1 70 13 view .LVU100
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:70:             return ESP_FAIL;
	.loc 1 70 21 is_stmt 0 view .LVU101
	movi.n	a2, -1	# <retval>,
	j	.L15		#
.L17:
	.loc 1 70 21 view .LVU102
.LBE266:
.LBE265:
	.loc 1 73 9 is_stmt 1 view .LVU103
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:73:         st->setDirectionPin(AXES[a].dir_pin);
	.loc 1 73 37 is_stmt 0 view .LVU104
	slli	a8, a7, 2	# tmp89, a$0_1,
	s32i.n	a8, sp, 16	# %sfp, tmp89
	addx4	a2, a7, a7	#, tmp90, a$0_1, a$0_1
	add.n	a10, a2, a2	# tmp91, tmp90, tmp90
	s32i.n	a10, sp, 20	# %sfp, tmp91
	addx2	a2, a2, a7	#, tmp92, tmp90, a$0_1
	l32r	a11, .LC26	#, tmp139
	addx4	a2, a2, a11	#, tmp94, tmp92, tmp139
	l32i.n	a3, a2, 16	# AXES[a$0_1].dir_pin, _11
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:73:         st->setDirectionPin(AXES[a].dir_pin);
	.loc 1 73 28 view .LVU105
	movi.n	a13, 0	#,
	movi.n	a12, 1	#,
	extui	a11, a3, 0, 8	#, _11
	mov.n	a10, a6	#, st
	call8	_ZN16FastAccelStepper15setDirectionPinEhbt		#
.LVL27:
	.loc 1 77 9 is_stmt 1 view .LVU106
.LBB269:
.LBI269:
	.loc 3 97 20 view .LVU107
.LBB270:
	.loc 3 99 5 view .LVU108
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:99:     return AXES[a].full_steps * AXES[a].microsteps;
	.loc 3 99 20 is_stmt 0 view .LVU109
	l32i.n	a9, a2, 28	# AXES[a$0_1].full_steps, _7
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:99:     return AXES[a].full_steps * AXES[a].microsteps;
	.loc 3 99 41 view .LVU110
	l32i.n	a8, a2, 32	# AXES[a$0_1].microsteps, AXES[a$0_1].microsteps
	mull	a2, a9, a8	# _9, _7, AXES[a$0_1].microsteps
.LVL28:
	.loc 3 99 41 view .LVU111
.LBE270:
.LBE269:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:77:         st->setSpeedInHz(axis_motor_steps_per_rev(a));
	.loc 1 77 25 discriminator 1 view .LVU112
	mov.n	a11, a2	#, _9
	mov.n	a10, a6	#, st
	call8	_ZN16FastAccelStepper12setSpeedInHzEm		#
.LVL29:
	.loc 1 79 9 is_stmt 1 view .LVU113
.LBB271:
.LBI271:
	.file 4 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/FastAccelStepper.h"
	.loc 4 295 17 view .LVU114
.LBB272:
	.loc 4 296 5 view .LVU115
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/FastAccelStepper.h:296:     return _rg.setAcceleration(step_s_s);
	.loc 4 296 31 is_stmt 0 view .LVU116
	mov.n	a11, a2	#, _9
	addi.n	a10, a6, 4	#, st,
	call8	_ZN13RampGenerator15setAccelerationEl		#
.LVL30:
	.loc 4 296 31 view .LVU117
.LBE272:
.LBE271:
	.loc 1 81 9 is_stmt 1 view .LVU118
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:81:         steppers[a] = st;
	.loc 1 81 21 is_stmt 0 view .LVU119
	l32r	a8, .LC30	#, tmp117
	l32i.n	a9, sp, 16	# %sfp, tmp89
	add.n	a8, a8, a9	# tmp119, tmp117, tmp89
	s32i.n	a6, a8, 0	# steppers[a$0_1], st
	.loc 1 82 9 is_stmt 1 view .LVU120
	.loc 1 82 14 view .LVU121
	.loc 1 82 19 view .LVU122
	.loc 1 82 51 view .LVU123
	.loc 1 82 56 view .LVU124
	.loc 1 82 186 discriminator 2 view .LVU125
	.loc 1 82 186 discriminator 6 view .LVU126
	.loc 1 82 186 discriminator 10 view .LVU127
.LBB273:
	.loc 1 82 188 discriminator 14 view .LVU128
.LBB274:
	.loc 1 82 213 discriminator 14 view .LVU129
	.loc 1 82 248 discriminator 14 view .LVU130
	.loc 1 82 288 view .LVU131
.LBE274:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:82:         ESP_LOGI(TAG, "[%s] stepper_init: мотор подключён, STEP = %d, DIR = %d",
	.loc 1 82 195 is_stmt 0 discriminator 14 view .LVU132
	call8	esp_log_timestamp		#
.LVL31:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:82:         ESP_LOGI(TAG, "[%s] stepper_init: мотор подключён, STEP = %d, DIR = %d",
	.loc 1 82 137 discriminator 17 view .LVU133
	l32i.n	a8, sp, 20	# %sfp, tmp91
	add.n	a8, a8, a7	# tmp125, tmp91, a$0_1
	l32r	a9, .LC26	#, tmp142
	addx4	a8, a8, a9	#, tmp127, tmp125, tmp142
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:82:         ESP_LOGI(TAG, "[%s] stepper_init: мотор подключён, STEP = %d, DIR = %d",
	.loc 1 82 195 discriminator 17 view .LVU134
	l32r	a11, .LC27	#, tmp128
	s32i.n	a3, sp, 4	#, _11
	s32i.n	a4, sp, 0	#, _2
	l32i.n	a15, a8, 0	# AXES[a$0_1].name,
	mov.n	a14, a11	#, tmp128
	mov.n	a13, a10	#, _41
	l32r	a12, .LC32	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL32:
	.loc 1 82 51 is_stmt 1 view .LVU135
	.loc 1 82 14 view .LVU136
.LBE273:
	.loc 1 82 9 view .LVU137
.LBE264:
	.loc 1 65 5 discriminator 2 view .LVU138
	addi.n	a5, a5, 4	# __for_begin, __for_begin,
.LVL33:
.L16:
	.loc 1 65 21 discriminator 1 view .LVU139
	l32r	a8, .LC33	#, tmp131
.LVL34:
	.loc 1 65 21 is_stmt 0 discriminator 1 view .LVU140
	bne	a5, a8, .L19	# __for_begin, tmp131,
.LBE263:
	.loc 1 86 5 is_stmt 1 view .LVU141
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:86:     motion_start();
	.loc 1 86 17 is_stmt 0 view .LVU142
	call8	_Z12motion_startv		#
.LVL35:
	.loc 1 87 5 is_stmt 1 view .LVU143
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:87:     return ESP_OK;
	.loc 1 87 12 is_stmt 0 view .LVU144
	movi.n	a2, 0	# <retval>,
.L15:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:88: }
	.loc 1 88 1 view .LVU145
	retw.n	
.LFE1189:
	.size	_Z12stepper_initv, .-_Z12stepper_initv
	.section	.rodata._Z17tmc_calibrate_at26axis_tmhPh.str1.4,"aMS",@progbits,1
	.align	4
.LC35:
	.base64	"RSAoJWx1KSAlczogQVQjMjog0L3QtSDRg9C00LDQu9C+0YHRjCDQv9GA0L7Rh9C40YLQsNGC0Ywg0YDQtdCz0LjRgdGC0YDRiyDQsNCy0YLQvtC/0L7QtNGB0YLRgNC+0LnQutC4CgA="
	.align	4
.LC37:
	.base64	"SSAoJWx1KSAlczogQVQjMjog0YHRgtCw0YDRgi4gUFdNX09GU19BVVRPID0gJXUgKEFUIzEpLCBQV01fR1JBRF9BVVRPID0gJXUKAA=="
	.align	4
.LC39:
	.base64	"RSAoJWx1KSAlczogQVQjMjogUFdNX09GU19BVVRPID0gMCDigJQgQVQjMSDQvdC1INC/0YDQvtGI0ZHQuy4g0JLQutC70Y7Rh9C4INC00YDQsNC50LLQtdGAINC4INC/0L7QtNC+0LbQtNC4IDIwMCDQvNGBINCx0LXQtyDQtNCy0LjQttC10L3QuNGPCgA="
	.align	4
.LC41:
	.base64	"SSAoJWx1KSAlczogQVQjMiDQv9GA0L7RhdC+0LQgJXU6IFNDQUxFX1NVTSA9ICV1LCBTQ0FMRV9BVVRPID0gJWQsIEdSQURfQVVUTyA9ICV1CgA="
	.align	4
.LC43:
	.base64	"VyAoJWx1KSAlczogQVQjMjogU0NBTEVfU1VNID0gMjU1IOKAlCDQvdCw0L/RgNGP0LbQtdC90LjRjyDQvdC1INGF0LLQsNGC0LDQtdGCLCDRg9C80LXQvdGM0YjQuCDRgdC60L7RgNC+0YHRgtGMCgA="
	.align	4
.LC45:
	.base64	"VyAoJWx1KSAlczogQVQjMjogU0NBTEVfU1VNINC80LDQuyAo4omkIDEuNSDDlyBPRlNfQVVUTykg4oCUINGB0LrQvtGA0L7RgdGC0Ywg0YHQu9C40YjQutC+0Lwg0L3QuNC30LrQsNGPLCDRg9Cy0LXQu9C40YfRjAoA"
	.align	4
.LC47:
	.base64	"VyAoJWx1KSAlczogQVQjMjogU0NBTEVfU1VNINCy0LXQu9C40LogKOKJpSA0IMOXIE9GU19BVVRPKSDigJQg0YHQutC+0YDQvtGB0YLRjCDRgdC70LjRiNC60L7QvCDQstGL0YHQvtC60LDRjywg0YPQvNC10L3RjNGI0LgKAA=="
	.align	4
.LC49:
	.base64	"VyAoJWx1KSAlczogQVQjMiDQv9GA0L7RhdC+0LQgJXU6INC90LUg0LHRi9C70L4g0YPRh9Cw0YHRgtC60LAg0L/QvtGB0YLQvtGP0L3QvdC+0Lkg0YHQutC+0YDQvtGB0YLQuCDigJQg0YPQstC10LvQuNGH0Ywg0L/Rg9GC0Ywg0LjQu9C4INGD0LzQtdC90YzRiNC4INGA0LDQt9Cz0L7QvQoA"
	.align	4
.LC51:
	.base64	"SSAoJWx1KSAlczogQVQjMjog0LPQvtGC0L7QstC+LCBQV01fR1JBRF9BVVRPID0gJXUgKNGB0YLQsNCx0LjQu9C10L0g0LTQstCwINC/0YDQvtGF0L7QtNCwINC/0L7QtNGA0Y/QtCkKAA=="
	.align	4
.LC54:
	.base64	"VyAoJWx1KSAlczogQVQjMjog0LfQsCAldSDQv9GA0L7RhdC+0LTQvtCyIFBXTV9HUkFEX0FVVE8g0L3QtSDRgdGC0LDQsdC40LvQuNC30LjRgNC+0LLQsNC70YHRjyAo0L/QvtGB0LvQtdC00L3QtdC1ICV1KQoA"
	.section	.text._Z17tmc_calibrate_at26axis_tmhPh,"ax",@progbits
	.literal_position
	.literal .LC34, .LC14
	.literal .LC36, .LC35
	.literal .LC38, .LC37
	.literal .LC40, .LC39
	.literal .LC42, .LC41
	.literal .LC44, .LC43
	.literal .LC46, .LC45
	.literal .LC48, .LC47
	.literal .LC50, .LC49
	.literal .LC52, .LC51
	.literal .LC53, AXES
	.literal .LC55, .LC54
	.align	4
	.global	_Z17tmc_calibrate_at26axis_tmhPh
	.type	_Z17tmc_calibrate_at26axis_tmhPh, @function
_Z17tmc_calibrate_at26axis_tmhPh:
.LVL36:
.LFB1191:
	.loc 1 202 95 is_stmt 1 view -0
	.loc 1 202 95 is_stmt 0 view .LVU147
	entry	sp, 96	#
.LCFI7:
	s32i.n	a2, sp, 32	# %sfp, a
	s32i.n	a5, sp, 44	# %sfp, grad_out
	extui	a6, a4, 0, 8	# max_legs, max_legs
	.loc 1 203 5 is_stmt 1 view .LVU148
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:203:     FastAccelStepper *stepper = axis_stepper(a);
	.loc 1 203 45 is_stmt 0 view .LVU149
	mov.n	a10, a2	#, a
	call8	_ZL12axis_stepper6axis_t		#
.LVL37:
	mov.n	a4, a10	# stepper, stepper
.LVL38:
	.loc 1 204 5 is_stmt 1 view .LVU150
	beqz.n	a10, .L37	# stepper,
	.loc 1 206 5 view .LVU151
	.loc 1 209 5 view .LVU152
.LBB275:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:209:     if (tmc_read_at_state(a, &st) != ESP_OK) {
	.loc 1 209 26 is_stmt 0 view .LVU153
	addi	a11, sp, 16	#,,
	mov.n	a10, a2	#, a
	call8	_Z17tmc_read_at_state6axis_tP14tmc_at_state_t		#
.LVL39:
	mov.n	a2, a10	# <retval>, <retval>
.LVL40:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:209:     if (tmc_read_at_state(a, &st) != ESP_OK) {
	.loc 1 209 5 discriminator 1 view .LVU154
	beqz.n	a10, .L22	# <retval>,
.LBB276:
	.loc 1 210 9 is_stmt 1 view .LVU155
	.loc 1 210 14 view .LVU156
	.loc 1 210 19 view .LVU157
	.loc 1 210 52 view .LVU158
	.loc 1 210 57 view .LVU159
.LBB277:
	.loc 1 210 116 discriminator 1 view .LVU160
.LBB278:
	.loc 1 210 141 discriminator 1 view .LVU161
	.loc 1 210 176 discriminator 1 view .LVU162
	.loc 1 210 217 view .LVU163
.LBE278:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:210:         ESP_LOGE(TAG, "AT#2: не удалось прочитать регистры автоподстройки");
	.loc 1 210 123 is_stmt 0 discriminator 1 view .LVU164
	call8	esp_log_timestamp		#
.LVL41:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:210:         ESP_LOGE(TAG, "AT#2: не удалось прочитать регистры автоподстройки");
	.loc 1 210 123 discriminator 3 view .LVU165
	l32r	a11, .LC34	#, tmp134
	mov.n	a14, a11	#, tmp134
	mov.n	a13, a10	#, _3
	l32r	a12, .LC36	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL42:
	.loc 1 210 52 is_stmt 1 view .LVU166
	.loc 1 210 14 view .LVU167
.LBE277:
	.loc 1 210 9 view .LVU168
	.loc 1 211 9 view .LVU169
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:211:         return ESP_FAIL;
	.loc 1 211 17 is_stmt 0 view .LVU170
	movi.n	a2, -1	# <retval>,
	j	.L20		#
.L22:
.LBE276:
.LBE275:
	.loc 1 213 5 is_stmt 1 view .LVU171
	.loc 1 213 10 view .LVU172
	.loc 1 213 15 view .LVU173
	.loc 1 213 47 view .LVU174
	.loc 1 213 52 view .LVU175
	.loc 1 213 153 discriminator 2 view .LVU176
	.loc 1 213 153 discriminator 6 view .LVU177
	.loc 1 213 153 discriminator 10 view .LVU178
.LBB279:
	.loc 1 213 155 discriminator 14 view .LVU179
.LBB280:
	.loc 1 213 180 discriminator 14 view .LVU180
	.loc 1 213 215 discriminator 14 view .LVU181
	.loc 1 213 255 view .LVU182
.LBE280:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:213:     ESP_LOGI(TAG, "AT#2: старт. PWM_OFS_AUTO = %u (AT#1), PWM_GRAD_AUTO = %u",
	.loc 1 213 162 is_stmt 0 discriminator 14 view .LVU183
	call8	esp_log_timestamp		#
.LVL43:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:213:     ESP_LOGI(TAG, "AT#2: старт. PWM_OFS_AUTO = %u (AT#1), PWM_GRAD_AUTO = %u",
	.loc 1 213 134 discriminator 17 view .LVU184
	l8ui	a8, sp, 21	# st.grad_auto, _10
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:213:     ESP_LOGI(TAG, "AT#2: старт. PWM_OFS_AUTO = %u (AT#1), PWM_GRAD_AUTO = %u",
	.loc 1 213 162 discriminator 17 view .LVU185
	l32r	a11, .LC34	#, tmp137
	s32i.n	a8, sp, 0	#, _10
	l8ui	a15, sp, 20	# st.ofs_auto,
	mov.n	a14, a11	#, tmp137
	mov.n	a13, a10	#, _6
	l32r	a12, .LC38	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL44:
	.loc 1 213 47 is_stmt 1 view .LVU186
	.loc 1 213 10 view .LVU187
.LBE279:
	.loc 1 213 5 view .LVU188
	.loc 1 215 5 view .LVU189
.LBB281:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:215:     if (st.ofs_auto == 0) {
	.loc 1 215 12 is_stmt 0 view .LVU190
	l8ui	a8, sp, 20	# st.ofs_auto, _12
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:215:     if (st.ofs_auto == 0) {
	.loc 1 215 5 view .LVU191
	bnez.n	a8, .L23	# _12,
.LBB282:
	.loc 1 216 9 is_stmt 1 view .LVU192
	.loc 1 216 14 view .LVU193
	.loc 1 216 19 view .LVU194
	.loc 1 216 52 view .LVU195
	.loc 1 216 57 view .LVU196
.LBB283:
	.loc 1 216 116 discriminator 1 view .LVU197
.LBB284:
	.loc 1 216 141 discriminator 1 view .LVU198
	.loc 1 216 176 discriminator 1 view .LVU199
	.loc 1 216 217 view .LVU200
.LBE284:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:216:         ESP_LOGE(TAG, "AT#2: PWM_OFS_AUTO = 0 — AT#1 не прошёл. Включи драйвер и подожди 200 мс без движения");
	.loc 1 216 123 is_stmt 0 discriminator 1 view .LVU201
	call8	esp_log_timestamp		#
.LVL45:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:216:         ESP_LOGE(TAG, "AT#2: PWM_OFS_AUTO = 0 — AT#1 не прошёл. Включи драйвер и подожди 200 мс без движения");
	.loc 1 216 123 discriminator 3 view .LVU202
	l32r	a11, .LC34	#, tmp140
	mov.n	a14, a11	#, tmp140
	mov.n	a13, a10	#, _14
	l32r	a12, .LC40	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL46:
	.loc 1 216 52 is_stmt 1 view .LVU203
	.loc 1 216 14 view .LVU204
.LBE283:
	.loc 1 216 9 view .LVU205
	.loc 1 217 9 view .LVU206
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:217:         return ESP_ERR_INVALID_STATE;
	.loc 1 217 16 is_stmt 0 view .LVU207
	movi	a2, 0x103	# <retval>,
	j	.L20		#
.L23:
.LBE282:
.LBE281:
	.loc 1 222 5 is_stmt 1 view .LVU208
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:222:     stepper->setSpeedInHz(speed_hz);
	.loc 1 222 26 is_stmt 0 view .LVU209
	mov.n	a11, a3	#, speed_hz
	mov.n	a10, a4	#, stepper
	call8	_ZN16FastAccelStepper12setSpeedInHzEm		#
.LVL47:
	.loc 1 223 5 is_stmt 1 view .LVU210
.LBB285:
.LBI285:
	.loc 4 295 17 view .LVU211
.LBB286:
	.loc 4 296 5 view .LVU212
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/FastAccelStepper.h:296:     return _rg.setAcceleration(step_s_s);
	.loc 4 296 31 is_stmt 0 view .LVU213
	addi.n	a8, a4, 4	# _61, stepper,
	s32i.n	a8, sp, 48	# %sfp, _61
	srli	a11, a3, 1	#, speed_hz,
.LVL48:
	.loc 4 296 31 view .LVU214
	mov.n	a10, a8	#, _61
	call8	_ZN13RampGenerator15setAccelerationEl		#
.LVL49:
	.loc 4 296 31 view .LVU215
.LBE286:
.LBE285:
	.loc 1 230 5 is_stmt 1 view .LVU216
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:230:     int32_t leg_steps = (int32_t)(4 * speed_hz);
	.loc 1 230 37 is_stmt 0 view .LVU217
	slli	a8, a3, 2	# leg_steps, speed_hz,
	s32i.n	a8, sp, 40	# %sfp, leg_steps
.LVL50:
	.loc 1 231 5 is_stmt 1 view .LVU218
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:231:     int32_t start_pos = stepper->getCurrentPosition();
	.loc 1 231 52 is_stmt 0 view .LVU219
	mov.n	a10, a4	#, stepper
	call8	_ZNK16FastAccelStepper18getCurrentPositionEv		#
.LVL51:
	.loc 1 231 52 view .LVU220
	s32i.n	a10, sp, 36	# %sfp, start_pos
.LVL52:
	.loc 1 233 5 is_stmt 1 view .LVU221
	.loc 1 234 5 view .LVU222
	.loc 1 236 5 view .LVU223
.LBB287:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:236:     for (uint8_t leg = 0; leg < max_legs; leg++) {
	.loc 1 236 18 is_stmt 0 view .LVU224
	movi.n	a3, 0	# leg,
.LVL53:
	.loc 1 236 18 view .LVU225
.LBE287:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:233:     int16_t prev_grad = -1;
	.loc 1 233 13 view .LVU226
	movi.n	a7, -1	# prev_grad,
	s32i.n	a2, sp, 52	# %sfp, <retval>
.LBB322:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:236:     for (uint8_t leg = 0; leg < max_legs; leg++) {
	.loc 1 236 5 view .LVU227
	j	.L24		#
.LVL54:
.L35:
.LBB288:
	.loc 1 238 9 is_stmt 1 view .LVU228
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:238:         int32_t target = (leg % 2 == 0) ? start_pos + leg_steps : start_pos;
	.loc 1 238 41 is_stmt 0 view .LVU229
	bbsi	a3, 0, .L38	# leg,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:238:         int32_t target = (leg % 2 == 0) ? start_pos + leg_steps : start_pos;
	.loc 1 238 17 discriminator 1 view .LVU230
	l32i.n	a8, sp, 36	# %sfp, start_pos
	l32i.n	a9, sp, 40	# %sfp, leg_steps
	add.n	a11, a8, a9	# target, start_pos, leg_steps
.LVL55:
	.loc 1 238 17 discriminator 1 view .LVU231
	j	.L25		#
.LVL56:
.L38:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:238:         int32_t target = (leg % 2 == 0) ? start_pos + leg_steps : start_pos;
	.loc 1 238 17 discriminator 2 view .LVU232
	l32i.n	a11, sp, 36	# %sfp, target
.L25:
.LVL57:
	.loc 1 239 9 is_stmt 1 view .LVU233
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:239:         stepper->moveTo(target);   // без ожидания: читаем регистры во время движения
	.loc 1 239 24 is_stmt 0 view .LVU234
	movi.n	a12, 0	#,
	mov.n	a10, a4	#, stepper
	call8	_ZN16FastAccelStepper6moveToElb		#
.LVL58:
	.loc 1 241 9 is_stmt 1 view .LVU235
	.loc 1 242 9 view .LVU236
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:241:         bool sampled = false;
	.loc 1 241 14 is_stmt 0 view .LVU237
	movi.n	a5, 0	# sampled,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:242:         while (stepper->isRunning()) {
	.loc 1 242 9 view .LVU238
	j	.L26		#
.LVL59:
.L30:
.LBB289:
	.loc 1 244 13 is_stmt 1 view .LVU239
.LBB290:
.LBB291:
.LBI291:
	.loc 4 835 18 view .LVU240
	.loc 4 835 38 view .LVU241
.LBB292:
.LBI292:
	.file 5 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/fas_ramp/RampGenerator.h"
	.loc 5 26 18 view .LVU242
	.loc 5 26 38 view .LVU243
.LBB293:
.LBI293:
	.file 6 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/fas_ramp/RampControl.h"
	.loc 6 43 18 view .LVU244
.LBB294:
	.loc 6 45 5 view .LVU245
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/fas_ramp/RampControl.h:45:     return ramp_state;
	.loc 6 45 12 is_stmt 0 view .LVU246
	memw
	l8ui	a8, a4, 60	# MEM[(const struct ramp_rw_s *)stepper_148 + 60B].ramp_state,
.LVL60:
	.loc 6 45 12 view .LVU247
.LBE294:
.LBE293:
.LBE292:
.LBE291:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:244:             if ((stepper->rampState() & RAMP_STATE_MASK) == RAMP_STATE_COAST &&
	.loc 1 244 68 discriminator 1 view .LVU248
	extui	a8, a8, 0, 5	# tmp149, MEM[(const struct ramp_rw_s *)stepper_148 + 60B].ramp_state,
	bnei	a8, 1, .L27	# tmp149,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:245:                 tmc_read_at_state(a, &st) == ESP_OK) {
	.loc 1 245 34 view .LVU249
	addi	a11, sp, 16	#,,
	l32i.n	a10, sp, 32	# %sfp,
	call8	_Z17tmc_read_at_state6axis_tP14tmc_at_state_t		#
.LVL61:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:244:             if ((stepper->rampState() & RAMP_STATE_MASK) == RAMP_STATE_COAST &&
	.loc 1 244 68 discriminator 2 view .LVU250
	bnez.n	a10, .L27	# _19,
.LBB295:
	.loc 1 247 17 is_stmt 1 view .LVU251
.LVL62:
	.loc 1 248 17 view .LVU252
	.loc 1 248 22 view .LVU253
	.loc 1 248 27 view .LVU254
	.loc 1 248 59 view .LVU255
	.loc 1 248 64 view .LVU256
	.loc 1 248 197 discriminator 2 view .LVU257
	.loc 1 248 197 discriminator 6 view .LVU258
	.loc 1 248 197 discriminator 10 view .LVU259
.LBB296:
	.loc 1 248 199 discriminator 14 view .LVU260
.LBB297:
	.loc 1 248 224 discriminator 14 view .LVU261
	.loc 1 248 259 discriminator 14 view .LVU262
	.loc 1 248 299 view .LVU263
.LBE297:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:248:                 ESP_LOGI(TAG, "AT#2 проход %u: SCALE_SUM = %u, SCALE_AUTO = %d, GRAD_AUTO = %u",
	.loc 1 248 206 is_stmt 0 discriminator 14 view .LVU264
	call8	esp_log_timestamp		#
.LVL63:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:248:                 ESP_LOGI(TAG, "AT#2 проход %u: SCALE_SUM = %u, SCALE_AUTO = %d, GRAD_AUTO = %u",
	.loc 1 248 149 discriminator 17 view .LVU265
	l8ui	a8, sp, 16	# st.scale_sum, _43
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:248:                 ESP_LOGI(TAG, "AT#2 проход %u: SCALE_SUM = %u, SCALE_AUTO = %d, GRAD_AUTO = %u",
	.loc 1 248 163 discriminator 17 view .LVU266
	l16si	a9, sp, 18	# st.scale_auto, _45
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:248:                 ESP_LOGI(TAG, "AT#2 проход %u: SCALE_SUM = %u, SCALE_AUTO = %d, GRAD_AUTO = %u",
	.loc 1 248 178 discriminator 17 view .LVU267
	l8ui	a12, sp, 21	# st.grad_auto, _47
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:248:                 ESP_LOGI(TAG, "AT#2 проход %u: SCALE_SUM = %u, SCALE_AUTO = %d, GRAD_AUTO = %u",
	.loc 1 248 206 discriminator 17 view .LVU268
	l32r	a11, .LC34	#, tmp152
	s32i.n	a12, sp, 8	#, _47
	s32i.n	a9, sp, 4	#, _45
	s32i.n	a8, sp, 0	#, _43
	addi.n	a15, a3, 1	#, leg,
	mov.n	a14, a11	#, tmp152
	mov.n	a13, a10	#, _39
	l32r	a12, .LC42	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL64:
	.loc 1 248 59 is_stmt 1 view .LVU269
	.loc 1 248 22 view .LVU270
.LBE296:
	.loc 1 248 17 view .LVU271
	.loc 1 252 17 view .LVU272
.LBB298:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:252:                 if (st.scale_sum >= 255) {
	.loc 1 252 24 is_stmt 0 view .LVU273
	l8ui	a8, sp, 16	# st.scale_sum, _49
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:252:                 if (st.scale_sum >= 255) {
	.loc 1 252 17 view .LVU274
	movi	a9, 0xff	# tmp155,
	bne	a8, a9, .L28	# _49, tmp155,
	.loc 1 253 21 is_stmt 1 view .LVU275
	.loc 1 253 26 view .LVU276
	.loc 1 253 31 view .LVU277
	.loc 1 253 63 view .LVU278
	.loc 1 253 68 view .LVU279
	.loc 1 253 179 discriminator 2 view .LVU280
.LBB299:
	.loc 1 253 236 discriminator 5 view .LVU281
.LBB300:
	.loc 1 253 261 discriminator 5 view .LVU282
	.loc 1 253 296 discriminator 5 view .LVU283
	.loc 1 253 336 view .LVU284
.LBE300:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:253:                     ESP_LOGW(TAG, "AT#2: SCALE_SUM = 255 — напряжения не хватает, уменьши скорость");
	.loc 1 253 243 is_stmt 0 discriminator 5 view .LVU285
	call8	esp_log_timestamp		#
.LVL65:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:253:                     ESP_LOGW(TAG, "AT#2: SCALE_SUM = 255 — напряжения не хватает, уменьши скорость");
	.loc 1 253 243 discriminator 7 view .LVU286
	l32r	a11, .LC34	#, tmp156
	mov.n	a14, a11	#, tmp156
	mov.n	a13, a10	#, _53
	l32r	a12, .LC44	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL66:
	.loc 1 253 63 is_stmt 1 view .LVU287
	.loc 1 253 26 view .LVU288
	.loc 1 253 21 view .LVU289
.LBE299:
.LBE298:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:247:                 sampled = true;
	.loc 1 247 25 is_stmt 0 view .LVU290
	mov.n	a5, a2	# sampled, retval$369_113
.LBB310:
	j	.L27		#
.L28:
	.loc 1 254 24 is_stmt 1 view .LVU291
.LBB301:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:254:                 } else if (st.scale_sum <= st.ofs_auto * 3 / 2) {
	.loc 1 254 47 is_stmt 0 view .LVU292
	l8ui	a9, sp, 20	# st.ofs_auto, _65
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:254:                 } else if (st.scale_sum <= st.ofs_auto * 3 / 2) {
	.loc 1 254 56 view .LVU293
	addx2	a10, a9, a9	#, _66, _65, _65
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:254:                 } else if (st.scale_sum <= st.ofs_auto * 3 / 2) {
	.loc 1 254 60 view .LVU294
	srai	a10, a10, 1	# _67, _66,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:254:                 } else if (st.scale_sum <= st.ofs_auto * 3 / 2) {
	.loc 1 254 24 view .LVU295
	blt	a10, a8, .L29	# _67, _63,
	.loc 1 255 21 is_stmt 1 view .LVU296
	.loc 1 255 26 view .LVU297
	.loc 1 255 31 view .LVU298
	.loc 1 255 63 view .LVU299
	.loc 1 255 68 view .LVU300
	.loc 1 255 189 discriminator 2 view .LVU301
.LBB302:
	.loc 1 255 246 discriminator 5 view .LVU302
.LBB303:
	.loc 1 255 271 discriminator 5 view .LVU303
	.loc 1 255 306 discriminator 5 view .LVU304
	.loc 1 255 346 view .LVU305
.LBE303:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:255:                     ESP_LOGW(TAG, "AT#2: SCALE_SUM мал (≤ 1.5 × OFS_AUTO) — скорость слишком низкая, увеличь");
	.loc 1 255 253 is_stmt 0 discriminator 5 view .LVU306
	call8	esp_log_timestamp		#
.LVL67:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:255:                     ESP_LOGW(TAG, "AT#2: SCALE_SUM мал (≤ 1.5 × OFS_AUTO) — скорость слишком низкая, увеличь");
	.loc 1 255 253 discriminator 7 view .LVU307
	l32r	a11, .LC34	#, tmp162
	mov.n	a14, a11	#, tmp162
	mov.n	a13, a10	#, _71
	l32r	a12, .LC46	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL68:
	.loc 1 255 63 is_stmt 1 view .LVU308
	.loc 1 255 26 view .LVU309
	.loc 1 255 21 view .LVU310
.LBE302:
.LBE301:
.LBE310:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:247:                 sampled = true;
	.loc 1 247 25 is_stmt 0 view .LVU311
	mov.n	a5, a2	# sampled, retval$369_113
.LBB311:
.LBB308:
	j	.L27		#
.L29:
	.loc 1 256 24 is_stmt 1 view .LVU312
.LBB304:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:256:                 } else if (st.scale_sum >= st.ofs_auto * 4) {
	.loc 1 256 56 is_stmt 0 view .LVU313
	slli	a9, a9, 2	# _82, _65,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:256:                 } else if (st.scale_sum >= st.ofs_auto * 4) {
	.loc 1 256 24 view .LVU314
	blt	a8, a9, .L39	# _63, _82,
	.loc 1 257 21 is_stmt 1 view .LVU315
	.loc 1 257 26 view .LVU316
	.loc 1 257 31 view .LVU317
	.loc 1 257 63 view .LVU318
	.loc 1 257 68 view .LVU319
	.loc 1 257 193 discriminator 2 view .LVU320
.LBB305:
	.loc 1 257 250 discriminator 5 view .LVU321
.LBB306:
	.loc 1 257 275 discriminator 5 view .LVU322
	.loc 1 257 310 discriminator 5 view .LVU323
	.loc 1 257 350 view .LVU324
.LBE306:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:257:                     ESP_LOGW(TAG, "AT#2: SCALE_SUM велик (≥ 4 × OFS_AUTO) — скорость слишком высокая, уменьши");
	.loc 1 257 257 is_stmt 0 discriminator 5 view .LVU325
	call8	esp_log_timestamp		#
.LVL69:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:257:                     ESP_LOGW(TAG, "AT#2: SCALE_SUM велик (≥ 4 × OFS_AUTO) — скорость слишком высокая, уменьши");
	.loc 1 257 257 discriminator 7 view .LVU326
	l32r	a11, .LC34	#, tmp165
	mov.n	a14, a11	#, tmp165
	mov.n	a13, a10	#, _87
	l32r	a12, .LC48	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL70:
	.loc 1 257 63 is_stmt 1 view .LVU327
	.loc 1 257 26 view .LVU328
	.loc 1 257 21 view .LVU329
.LBE305:
.LBE304:
.LBE308:
.LBE311:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:247:                 sampled = true;
	.loc 1 247 25 is_stmt 0 view .LVU330
	mov.n	a5, a2	# sampled, retval$369_113
.LBB312:
.LBB309:
.LBB307:
	j	.L27		#
.L39:
.LBE307:
.LBE309:
.LBE312:
	mov.n	a5, a2	# sampled, retval$369_113
.LVL71:
.L27:
	.loc 1 247 25 view .LVU331
.LBE295:
.LBE290:
	.loc 1 260 13 is_stmt 1 view .LVU332
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:260:             vTaskDelay(pdMS_TO_TICKS(200));
	.loc 1 260 23 is_stmt 0 view .LVU333
	movi.n	a10, 0x14	#,
	call8	vTaskDelay		#
.LVL72:
.L26:
	.loc 1 260 23 view .LVU334
.LBE289:
	.loc 1 242 34 is_stmt 1 view .LVU335
	mov.n	a10, a4	#, stepper
	call8	_ZNK16FastAccelStepper9isRunningEv		#
.LVL73:
	mov.n	a2, a10	# retval$369_113, retval$369_113
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:242:         while (stepper->isRunning()) {
	.loc 1 242 34 is_stmt 0 discriminator 1 view .LVU336
	bnez.n	a10, .L30	# retval$369_113,
	.loc 1 263 9 is_stmt 1 view .LVU337
.LBB313:
	bnez.n	a5, .L31	# sampled,
.LBB314:
	.loc 1 264 13 view .LVU338
	.loc 1 264 18 view .LVU339
	.loc 1 264 23 view .LVU340
	.loc 1 264 55 view .LVU341
	.loc 1 264 60 view .LVU342
	.loc 1 264 232 discriminator 2 view .LVU343
.LBB315:
	.loc 1 264 289 discriminator 5 view .LVU344
.LBB316:
	.loc 1 264 314 discriminator 5 view .LVU345
	.loc 1 264 349 discriminator 5 view .LVU346
	.loc 1 264 389 view .LVU347
.LBE316:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:264:             ESP_LOGW(TAG, "AT#2 проход %u: не было участка постоянной скорости — увеличь путь или уменьши разгон", leg + 1);
	.loc 1 264 296 is_stmt 0 discriminator 5 view .LVU348
	call8	esp_log_timestamp		#
.LVL74:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:264:             ESP_LOGW(TAG, "AT#2 проход %u: не было участка постоянной скорости — увеличь путь или уменьши разгон", leg + 1);
	.loc 1 264 296 discriminator 7 view .LVU349
	l32r	a11, .LC34	#, tmp170
	addi.n	a15, a3, 1	#, leg,
	mov.n	a14, a11	#, tmp170
	mov.n	a13, a10	#, _99
	l32r	a12, .LC50	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL75:
	.loc 1 264 55 is_stmt 1 view .LVU350
	.loc 1 264 18 view .LVU351
.LBE315:
	.loc 1 264 13 view .LVU352
	.loc 1 265 13 view .LVU353
	j	.L32		#
.L31:
.LBE314:
.LBE313:
	.loc 1 269 9 view .LVU354
.LBB317:
	bltz	a7, .L33	# prev_grad,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:269:         if (prev_grad >= 0 && abs(st.grad_auto - prev_grad) <= 1) {
	.loc 1 269 38 is_stmt 0 discriminator 1 view .LVU355
	l8ui	a8, sp, 21	# st.grad_auto, _118
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:269:         if (prev_grad >= 0 && abs(st.grad_auto - prev_grad) <= 1) {
	.loc 1 269 48 discriminator 1 view .LVU356
	sub	a8, a8, a7	# _120, _118, prev_grad
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:269:         if (prev_grad >= 0 && abs(st.grad_auto - prev_grad) <= 1) {
	.loc 1 269 61 discriminator 1 view .LVU357
	addi.n	a8, a8, 1	# _122, _120,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:269:         if (prev_grad >= 0 && abs(st.grad_auto - prev_grad) <= 1) {
	.loc 1 269 28 discriminator 1 view .LVU358
	bgeui	a8, 3, .L33	# _122,,
.LBB318:
.LBB319:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:270:             ESP_LOGI(TAG, "AT#2: готово, PWM_GRAD_AUTO = %u (стабилен два прохода подряд)", st.grad_auto);
	.loc 1 270 187 discriminator 14 view .LVU359
	l32i.n	a2, sp, 52	# %sfp, <retval>
.LBE319:
	.loc 1 270 13 is_stmt 1 view .LVU360
	.loc 1 270 18 view .LVU361
	.loc 1 270 23 view .LVU362
	.loc 1 270 55 view .LVU363
	.loc 1 270 60 view .LVU364
	.loc 1 270 178 discriminator 2 view .LVU365
	.loc 1 270 178 discriminator 6 view .LVU366
	.loc 1 270 178 discriminator 10 view .LVU367
.LBB321:
	.loc 1 270 180 discriminator 14 view .LVU368
.LBB320:
	.loc 1 270 205 discriminator 14 view .LVU369
	.loc 1 270 240 discriminator 14 view .LVU370
	.loc 1 270 280 view .LVU371
.LBE320:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:270:             ESP_LOGI(TAG, "AT#2: готово, PWM_GRAD_AUTO = %u (стабилен два прохода подряд)", st.grad_auto);
	.loc 1 270 187 is_stmt 0 discriminator 14 view .LVU372
	call8	esp_log_timestamp		#
.LVL76:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:270:             ESP_LOGI(TAG, "AT#2: готово, PWM_GRAD_AUTO = %u (стабилен два прохода подряд)", st.grad_auto);
	.loc 1 270 187 discriminator 17 view .LVU373
	l32r	a11, .LC34	#, tmp173
	l8ui	a15, sp, 21	# st.grad_auto,
	mov.n	a14, a11	#, tmp173
	mov.n	a13, a10	#, _137
	l32r	a12, .LC52	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL77:
	.loc 1 270 55 is_stmt 1 view .LVU374
	.loc 1 270 18 view .LVU375
.LBE321:
	.loc 1 270 13 view .LVU376
	.loc 1 271 13 view .LVU377
	.loc 1 272 13 view .LVU378
	j	.L34		#
.LVL78:
.L33:
	.loc 1 272 13 is_stmt 0 view .LVU379
.LBE318:
.LBE317:
	.loc 1 274 9 is_stmt 1 view .LVU380
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:274:         prev_grad = st.grad_auto;
	.loc 1 274 19 is_stmt 0 view .LVU381
	l8ui	a7, sp, 21	# st.grad_auto, prev_grad
.LVL79:
.L32:
	.loc 1 274 19 view .LVU382
.LBE288:
	.loc 1 236 5 is_stmt 1 discriminator 2 view .LVU383
	addi.n	a3, a3, 1	# tmp176, leg,
.LVL80:
	.loc 1 236 5 is_stmt 0 discriminator 2 view .LVU384
	extui	a3, a3, 0, 8	# leg, tmp176
.LVL81:
.L24:
	.loc 1 236 31 is_stmt 1 discriminator 1 view .LVU385
	bltu	a3, a6, .L35	# leg, max_legs,
.LBE322:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:234:     esp_err_t result = ESP_ERR_TIMEOUT;
	.loc 1 234 15 is_stmt 0 view .LVU386
	movi	a2, 0x107	# <retval>,
.LVL82:
.L34:
	.loc 1 278 5 is_stmt 1 view .LVU387
.LBB323:
.LBI323:
	.loc 3 97 20 view .LVU388
.LBB324:
	.loc 3 99 5 view .LVU389
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:99:     return AXES[a].full_steps * AXES[a].microsteps;
	.loc 3 99 20 is_stmt 0 view .LVU390
	l32r	a10, .LC53	#, tmp177
	l32i.n	a11, sp, 32	# %sfp, a
	addx4	a8, a11, a11	#, tmp180, a, a
	addx2	a9, a8, a11	#, tmp182, tmp180, a
	addx4	a9, a9, a10	#, tmp184, tmp182, tmp177
	l32i.n	a7, a9, 28	# AXES[a$60_27].full_steps, _28
.LVL83:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:99:     return AXES[a].full_steps * AXES[a].microsteps;
	.loc 3 99 41 view .LVU391
	l32i.n	a8, a9, 32	# AXES[a$60_27].microsteps, AXES[a$60_27].microsteps
	mull	a7, a7, a8	# _21, _28, AXES[a$60_27].microsteps
.LVL84:
	.loc 3 99 41 view .LVU392
.LBE324:
.LBE323:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:278:     stepper->setSpeedInHz(axis_motor_steps_per_rev(a));
	.loc 1 278 26 discriminator 1 view .LVU393
	mov.n	a11, a7	#, _21
	mov.n	a10, a4	#, stepper
	call8	_ZN16FastAccelStepper12setSpeedInHzEm		#
.LVL85:
	.loc 1 279 5 is_stmt 1 view .LVU394
.LBB325:
.LBI325:
	.loc 4 295 17 view .LVU395
.LBB326:
	.loc 4 296 5 view .LVU396
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/FastAccelStepper.h:296:     return _rg.setAcceleration(step_s_s);
	.loc 4 296 31 is_stmt 0 view .LVU397
	mov.n	a11, a7	#, _21
	l32i.n	a10, sp, 48	# %sfp,
	call8	_ZN13RampGenerator15setAccelerationEl		#
.LVL86:
	.loc 4 296 31 view .LVU398
.LBE326:
.LBE325:
	.loc 1 280 5 is_stmt 1 view .LVU399
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:280:     stepper->moveTo(start_pos, true);
	.loc 1 280 20 is_stmt 0 view .LVU400
	movi.n	a12, 1	#,
	l32i.n	a11, sp, 36	# %sfp,
	mov.n	a10, a4	#, stepper
	call8	_ZN16FastAccelStepper6moveToElb		#
.LVL87:
	.loc 1 282 5 is_stmt 1 view .LVU401
.LBB327:
	beqz.n	a2, .L36	# <retval>,
	.loc 1 283 9 view .LVU402
	.loc 1 283 14 view .LVU403
	.loc 1 283 19 view .LVU404
	.loc 1 283 51 view .LVU405
	.loc 1 283 56 view .LVU406
	.loc 1 283 198 discriminator 2 view .LVU407
.LBB328:
	.loc 1 283 255 discriminator 5 view .LVU408
.LBB329:
	.loc 1 283 280 discriminator 5 view .LVU409
	.loc 1 283 315 discriminator 5 view .LVU410
	.loc 1 283 355 view .LVU411
.LBE329:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:283:         ESP_LOGW(TAG, "AT#2: за %u проходов PWM_GRAD_AUTO не стабилизировался (последнее %u)",
	.loc 1 283 262 is_stmt 0 discriminator 5 view .LVU412
	call8	esp_log_timestamp		#
.LVL88:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:283:         ESP_LOGW(TAG, "AT#2: за %u проходов PWM_GRAD_AUTO не стабилизировался (последнее %u)",
	.loc 1 283 179 discriminator 7 view .LVU413
	l8ui	a8, sp, 21	# st.grad_auto, _154
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:283:         ESP_LOGW(TAG, "AT#2: за %u проходов PWM_GRAD_AUTO не стабилизировался (последнее %u)",
	.loc 1 283 262 discriminator 7 view .LVU414
	l32r	a11, .LC34	#, tmp196
	s32i.n	a8, sp, 0	#, _154
	mov.n	a15, a6	#, max_legs
	mov.n	a14, a11	#, tmp196
	mov.n	a13, a10	#, _151
	l32r	a12, .LC55	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL89:
	.loc 1 283 51 is_stmt 1 view .LVU415
	.loc 1 283 14 view .LVU416
	.loc 1 283 9 view .LVU417
.L36:
	.loc 1 283 9 is_stmt 0 view .LVU418
.LBE328:
.LBE327:
	.loc 1 287 5 is_stmt 1 view .LVU419
	l32i.n	a9, sp, 44	# %sfp, grad_out
	beqz.n	a9, .L20	# grad_out,
	.loc 1 288 9 view .LVU420
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:288:         *grad_out = st.grad_auto;
	.loc 1 288 24 is_stmt 0 view .LVU421
	l8ui	a8, sp, 21	# st.grad_auto, _170
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:288:         *grad_out = st.grad_auto;
	.loc 1 288 19 view .LVU422
	s8i	a8, a9, 0	# *grad_out_57(D), _170
	j	.L20		#
.LVL90:
.L37:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:204:     if (stepper == nullptr) return ESP_ERR_INVALID_STATE;
	.loc 1 204 36 discriminator 1 view .LVU423
	movi	a2, 0x103	# <retval>,
.LVL91:
.L20:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:292: }
	.loc 1 292 1 view .LVU424
	retw.n	
.LFE1191:
	.size	_Z17tmc_calibrate_at26axis_tmhPh, .-_Z17tmc_calibrate_at26axis_tmhPh
	.section	.text._Z22stepper_emergency_stopv,"ax",@progbits
	.literal_position
	.literal .LC56, _ZL12STEPPER_AXES
	.literal .LC57, _ZL14motion_blocked
	.literal .LC58, _ZL8steppers
	.literal .LC59, _ZL12STEPPER_AXES+8
	.align	4
	.global	_Z22stepper_emergency_stopv
	.type	_Z22stepper_emergency_stopv, @function
_Z22stepper_emergency_stopv:
.LFB1192:
	.loc 1 299 31 is_stmt 1 view -0
	entry	sp, 32	#
.LCFI8:
	.loc 1 300 5 view .LVU426
.LVL92:
.LBB330:
.LBI330:
	.file 7 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic"
	.loc 7 88 5 view .LVU427
	.loc 7 89 7 view .LVU428
.LBB331:
.LBI331:
	.file 8 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/bits/atomic_base.h"
	.loc 8 367 7 view .LVU429
.LBB332:
.LBI332:
	.loc 8 469 7 view .LVU430
.LBB333:
	.loc 8 473 2 view .LVU431
	.loc 8 474 2 view .LVU432
	.loc 8 475 2 view .LVU433
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/bits/atomic_base.h:477: 	__atomic_store_n(&_M_i, __i, int(__m));
	.loc 8 477 18 is_stmt 0 view .LVU434
	memw	
	l32r	a8, .LC57	#, tmp54
	movi.n	a9, 1	# tmp55,
	memw
	s8i	a9, a8, 0	#, tmp55
	memw	
.LVL93:
	.loc 8 477 18 view .LVU435
.LBE333:
.LBE332:
.LBE331:
.LBE330:
	.loc 1 306 5 is_stmt 1 view .LVU436
.LBB334:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:306:     for (axis_t a : STEPPER_AXES) {
	.loc 1 306 21 is_stmt 0 view .LVU437
	l32r	a7, .LC56	#, __for_begin
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:306:     for (axis_t a : STEPPER_AXES) {
	.loc 1 306 5 view .LVU438
	j	.L41		#
.LVL94:
.L43:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:306:     for (axis_t a : STEPPER_AXES) {
	.loc 1 306 17 discriminator 3 view .LVU439
	l32i.n	a6, a7, 0	# *__for_begin_8, a$420_1
.LVL95:
	.loc 1 307 9 is_stmt 1 view .LVU440
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:307:         if (steppers[a] != nullptr && steppers[a]->isRunning()) steppers[a]->forceStop();
	.loc 1 307 23 is_stmt 0 view .LVU441
	l32r	a8, .LC58	#, tmp56
.LVL96:
	.loc 1 307 23 view .LVU442
	addx4	a8, a6, a8	#, tmp58, a$420_1, tmp56
	l32i.n	a10, a8, 0	# steppers[a$420_1], _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:307:         if (steppers[a] != nullptr && steppers[a]->isRunning()) steppers[a]->forceStop();
	.loc 1 307 36 view .LVU443
	beqz.n	a10, .L42	# _2,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:307:         if (steppers[a] != nullptr && steppers[a]->isRunning()) steppers[a]->forceStop();
	.loc 1 307 61 discriminator 1 view .LVU444
	call8	_ZNK16FastAccelStepper9isRunningEv		#
.LVL97:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:307:         if (steppers[a] != nullptr && steppers[a]->isRunning()) steppers[a]->forceStop();
	.loc 1 307 36 discriminator 3 view .LVU445
	beqz.n	a10, .L42	# tmp72,
	.loc 1 307 65 is_stmt 1 discriminator 8 view .LVU446
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:307:         if (steppers[a] != nullptr && steppers[a]->isRunning()) steppers[a]->forceStop();
	.loc 1 307 75 is_stmt 0 discriminator 8 view .LVU447
	l32r	a8, .LC58	#, tmp60
	addx4	a6, a6, a8	#, tmp62, a$420_1, tmp60
.LVL98:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:307:         if (steppers[a] != nullptr && steppers[a]->isRunning()) steppers[a]->forceStop();
	.loc 1 307 87 discriminator 8 view .LVU448
	l32i.n	a10, a6, 0	# steppers[a$420_1],
	call8	_ZN16FastAccelStepper9forceStopEv		#
.LVL99:
.L42:
	.loc 1 306 5 is_stmt 1 discriminator 2 view .LVU449
	addi.n	a7, a7, 4	# __for_begin, __for_begin,
.LVL100:
.L41:
	.loc 1 306 21 discriminator 1 view .LVU450
	l32r	a8, .LC59	#, tmp63
.LVL101:
	.loc 1 306 21 is_stmt 0 discriminator 1 view .LVU451
	bne	a7, a8, .L43	# __for_begin, tmp63,
.LBE334:
.LBB335:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:309:     for (axis_t a : STEPPER_AXES) {
	.loc 1 309 21 view .LVU452
	l32r	a6, .LC56	#, __for_begin
	j	.L44		#
.LVL102:
.L48:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:309:     for (axis_t a : STEPPER_AXES) {
	.loc 1 309 17 discriminator 3 view .LVU453
	l32i.n	a7, a6, 0	# *__for_begin_9, a$423_5
.LVL103:
	.loc 1 310 9 is_stmt 1 view .LVU454
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:310:         if (steppers[a] == nullptr) continue;
	.loc 1 310 23 is_stmt 0 view .LVU455
	l32r	a8, .LC58	#, tmp64
.LVL104:
	.loc 1 310 23 view .LVU456
	addx4	a8, a7, a8	#, tmp66, a$423_5, tmp64
	l32i.n	a8, a8, 0	# steppers[a$423_5], _6
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:310:         if (steppers[a] == nullptr) continue;
	.loc 1 310 9 view .LVU457
	bnez.n	a8, .L46	# _6,
	.loc 1 310 9 view .LVU458
	j	.L45		#
.L47:
	.loc 1 312 13 is_stmt 1 view .LVU459
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:312:             vTaskDelay(pdMS_TO_TICKS(5));
	.loc 1 312 23 is_stmt 0 view .LVU460
	movi.n	a10, 0	#,
	call8	vTaskDelay		#
.LVL105:
.L46:
	.loc 1 311 38 is_stmt 1 view .LVU461
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:311:         while (steppers[a]->isRunning()) {
	.loc 1 311 26 is_stmt 0 view .LVU462
	l32r	a8, .LC58	#, tmp67
	addx4	a8, a7, a8	#, tmp69, a$423_5, tmp67
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:311:         while (steppers[a]->isRunning()) {
	.loc 1 311 38 view .LVU463
	l32i.n	a10, a8, 0	# steppers[a$423_5],
	call8	_ZNK16FastAccelStepper9isRunningEv		#
.LVL106:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:311:         while (steppers[a]->isRunning()) {
	.loc 1 311 38 discriminator 1 view .LVU464
	bnez.n	a10, .L47	# tmp73,
.L45:
	.loc 1 309 5 is_stmt 1 discriminator 2 view .LVU465
	addi.n	a6, a6, 4	# __for_begin, __for_begin,
.LVL107:
.L44:
	.loc 1 309 21 discriminator 1 view .LVU466
	l32r	a8, .LC59	#, tmp71
.LVL108:
	.loc 1 309 21 is_stmt 0 discriminator 1 view .LVU467
	bne	a6, a8, .L48	# __for_begin, tmp71,
.LBE335:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:315: }
	.loc 1 315 1 view .LVU468
	retw.n	
.LFE1192:
	.size	_Z22stepper_emergency_stopv, .-_Z22stepper_emergency_stopv
	.section	.text._Z15stepper_unblockv,"ax",@progbits
	.literal_position
	.literal .LC60, _ZL14motion_blocked
	.align	4
	.global	_Z15stepper_unblockv
	.type	_Z15stepper_unblockv, @function
_Z15stepper_unblockv:
.LFB1193:
	.loc 1 318 24 is_stmt 1 view -0
	entry	sp, 32	#
.LCFI9:
	.loc 1 319 5 view .LVU470
.LVL109:
.LBB336:
.LBI336:
	.loc 7 88 5 view .LVU471
	.loc 7 89 7 view .LVU472
.LBB337:
.LBI337:
	.loc 8 367 7 view .LVU473
.LBB338:
.LBI338:
	.loc 8 469 7 view .LVU474
.LBB339:
	.loc 8 473 2 view .LVU475
	.loc 8 474 2 view .LVU476
	.loc 8 475 2 view .LVU477
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/bits/atomic_base.h:477: 	__atomic_store_n(&_M_i, __i, int(__m));
	.loc 8 477 18 is_stmt 0 view .LVU478
	memw	
	l32r	a8, .LC60	#, tmp42
	movi.n	a9, 0	# tmp43,
	memw
	s8i	a9, a8, 0	#, tmp43
	memw	
.LVL110:
	.loc 8 477 18 view .LVU479
.LBE339:
.LBE338:
.LBE337:
.LBE336:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:320: }
	.loc 1 320 1 view .LVU480
	retw.n	
.LFE1193:
	.size	_Z15stepper_unblockv, .-_Z15stepper_unblockv
	.section	.text._Z18stepper_is_blockedv,"ax",@progbits
	.literal_position
	.literal .LC61, _ZL14motion_blocked
	.align	4
	.global	_Z18stepper_is_blockedv
	.type	_Z18stepper_is_blockedv, @function
_Z18stepper_is_blockedv:
.LFB1194:
	.loc 1 322 27 is_stmt 1 view -0
	entry	sp, 32	#
.LCFI10:
	.loc 1 323 5 view .LVU482
.LVL111:
.LBB340:
.LBI340:
	.loc 7 95 5 view .LVU483
	.loc 7 96 7 view .LVU484
.LBB341:
.LBI341:
	.loc 8 494 7 view .LVU485
.LBB342:
	.loc 8 498 2 view .LVU486
	.loc 8 499 2 view .LVU487
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/bits/atomic_base.h:501: 	return __atomic_load_n(&_M_i, int(__m));
	.loc 8 501 24 is_stmt 0 view .LVU488
	memw	
	l32r	a8, .LC61	#, tmp44
	memw
	l8ui	a2, a8, 0	#,
	memw	
	extui	a2, a2, 0, 8	# _2, tmp45
.LVL112:
	.loc 8 501 24 view .LVU489
.LBE342:
.LBE341:
.LBE340:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:324: }
	.loc 1 324 1 view .LVU490
	movi.n	a8, 1	# tmp53,
	movnez	a2, a8, a2	#, tmp53, _2
	retw.n	
.LFE1194:
	.size	_Z18stepper_is_blockedv, .-_Z18stepper_is_blockedv
	.section	.rodata._Z15stepper_move_to6axis_tl.str1.4,"aMS",@progbits,1
	.align	4
.LC64:
	.base64	"VyAoJWx1KSAlczog0JTQstC40LbQtdC90LjQtSDQt9Cw0LHQu9C+0LrQuNGA0L7QstCw0L3QviAo0LDQstCw0YDQuNGPINC00YDQsNC50LLQtdGA0LApLCDQutC+0LzQsNC90LTQsCDQvtGC0LzQtdC90LXQvdCwCgA="
	.align	4
.LC66:
	.string	"E (%lu) %s: moveTo: %s\n"
	.align	4
.LC68:
	.base64	"VyAoJWx1KSAlczog0JTQstC40LbQtdC90LjQtSDQv9GA0LXRgNCy0LDQvdC+OiDQsNCy0LDRgNC40Y8g0LTRgNCw0LnQstC10YDQsAoA"
	.section	.text._Z15stepper_move_to6axis_tl,"ax",@progbits
	.literal_position
	.literal .LC62, _ZL14motion_blocked
	.literal .LC63, .LC14
	.literal .LC65, .LC64
	.literal .LC67, .LC66
	.literal .LC69, .LC68
	.align	4
	.global	_Z15stepper_move_to6axis_tl
	.type	_Z15stepper_move_to6axis_tl, @function
_Z15stepper_move_to6axis_tl:
.LVL113:
.LFB1195:
	.loc 1 333 55 is_stmt 1 view -0
	.loc 1 333 55 is_stmt 0 view .LVU492
	entry	sp, 32	#
.LCFI11:
	mov.n	a10, a2	# a, a
	.loc 1 334 5 is_stmt 1 view .LVU493
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:334:     FastAccelStepper *stepper = axis_stepper(a);
	.loc 1 334 45 is_stmt 0 view .LVU494
	call8	_ZL12axis_stepper6axis_t		#
.LVL114:
	mov.n	a2, a10	# stepper, stepper
.LVL115:
	.loc 1 335 5 is_stmt 1 view .LVU495
	beqz.n	a10, .L57	# stepper,
	.loc 1 337 5 view .LVU496
.LVL116:
.LBB343:
.LBB344:
.LBI344:
	.loc 7 95 5 view .LVU497
	.loc 7 96 7 view .LVU498
.LBB345:
.LBI345:
	.loc 8 494 7 view .LVU499
.LBB346:
	.loc 8 498 2 view .LVU500
	.loc 8 499 2 view .LVU501
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/bits/atomic_base.h:501: 	return __atomic_load_n(&_M_i, int(__m));
	.loc 8 501 24 is_stmt 0 view .LVU502
	memw	
	l32r	a8, .LC62	#, tmp61
	memw
	l8ui	a8, a8, 0	#,
	memw	
	extui	a8, a8, 0, 8	# _40, tmp62
.LVL117:
	.loc 8 501 24 view .LVU503
.LBE346:
.LBE345:
.LBE344:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:337:     if (motion_blocked) {
	.loc 1 337 5 discriminator 1 view .LVU504
	beqz.n	a8, .L53	# _40,
.LBB347:
	.loc 1 338 9 is_stmt 1 view .LVU505
	.loc 1 338 14 view .LVU506
	.loc 1 338 19 view .LVU507
	.loc 1 338 51 view .LVU508
	.loc 1 338 56 view .LVU509
	.loc 1 338 176 discriminator 2 view .LVU510
.LBB348:
	.loc 1 338 233 discriminator 5 view .LVU511
.LBB349:
	.loc 1 338 258 discriminator 5 view .LVU512
	.loc 1 338 293 discriminator 5 view .LVU513
	.loc 1 338 333 view .LVU514
.LBE349:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:338:         ESP_LOGW(TAG, "Движение заблокировано (авария драйвера), команда отменена");
	.loc 1 338 240 is_stmt 0 discriminator 5 view .LVU515
	call8	esp_log_timestamp		#
.LVL118:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:338:         ESP_LOGW(TAG, "Движение заблокировано (авария драйвера), команда отменена");
	.loc 1 338 240 discriminator 7 view .LVU516
	l32r	a11, .LC63	#, tmp63
	mov.n	a14, a11	#, tmp63
	mov.n	a13, a10	#, _4
	l32r	a12, .LC65	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL119:
	.loc 1 338 51 is_stmt 1 view .LVU517
	.loc 1 338 14 view .LVU518
.LBE348:
	.loc 1 338 9 view .LVU519
	.loc 1 339 9 view .LVU520
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:339:         return ESP_ERR_INVALID_STATE;
	.loc 1 339 16 is_stmt 0 view .LVU521
	movi	a2, 0x103	# <retval>,
.LVL120:
	.loc 1 339 16 view .LVU522
	j	.L51		#
.LVL121:
.L53:
	.loc 1 339 16 view .LVU523
.LBE347:
.LBE343:
	.loc 1 342 5 is_stmt 1 view .LVU524
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:342:     MoveResultCode res = stepper->moveTo(position);   // без ожидания
	.loc 1 342 41 is_stmt 0 view .LVU525
	mov.n	a12, a8	#, _40
	mov.n	a11, a3	#, position
	call8	_ZN16FastAccelStepper6moveToElb		#
.LVL122:
	mov.n	a3, a10	# res, res
.LVL123:
	.loc 1 343 5 is_stmt 1 view .LVU526
.LBB350:
	beqz.n	a10, .L54	# res,
.LBB351:
	.loc 1 344 9 view .LVU527
	.loc 1 344 14 view .LVU528
	.loc 1 344 19 view .LVU529
	.loc 1 344 52 view .LVU530
	.loc 1 344 57 view .LVU531
.LBB352:
	.loc 1 344 116 discriminator 1 view .LVU532
.LBB353:
	.loc 1 344 141 discriminator 1 view .LVU533
	.loc 1 344 176 discriminator 1 view .LVU534
	.loc 1 344 217 view .LVU535
.LBE353:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:344:         ESP_LOGE(TAG, "moveTo: %s", toString(res));
	.loc 1 344 123 is_stmt 0 discriminator 1 view .LVU536
	call8	esp_log_timestamp		#
.LVL124:
	.loc 1 344 123 discriminator 1 view .LVU537
	mov.n	a2, a10	# _14, _14
.LVL125:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:344:         ESP_LOGE(TAG, "moveTo: %s", toString(res));
	.loc 1 344 123 discriminator 3 view .LVU538
	mov.n	a10, a3	#, res
	call8	_ZL8toString14MoveResultCode		#
.LVL126:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:344:         ESP_LOGE(TAG, "moveTo: %s", toString(res));
	.loc 1 344 123 discriminator 4 view .LVU539
	l32r	a11, .LC63	#, tmp67
	mov.n	a15, a10	#, _16
	mov.n	a14, a11	#, tmp67
	mov.n	a13, a2	#, _14
	l32r	a12, .LC67	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL127:
	.loc 1 344 52 is_stmt 1 view .LVU540
	.loc 1 344 14 view .LVU541
.LBE352:
	.loc 1 344 9 view .LVU542
	.loc 1 345 9 view .LVU543
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:345:         return ESP_FAIL;
	.loc 1 345 17 is_stmt 0 view .LVU544
	movi.n	a2, -1	# <retval>,
	j	.L51		#
.LVL128:
.L56:
	.loc 1 345 17 view .LVU545
.LBE351:
.LBE350:
.LBB354:
	.loc 1 349 9 is_stmt 1 view .LVU546
.LBB355:
.LBB356:
.LBI356:
	.loc 7 95 5 view .LVU547
	.loc 7 96 7 view .LVU548
.LBB357:
.LBI357:
	.loc 8 494 7 view .LVU549
.LBB358:
	.loc 8 498 2 view .LVU550
	.loc 8 499 2 view .LVU551
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/bits/atomic_base.h:501: 	return __atomic_load_n(&_M_i, int(__m));
	.loc 8 501 24 is_stmt 0 view .LVU552
	memw	
	l32r	a8, .LC62	#, tmp70
	memw
	l8ui	a8, a8, 0	#,
	memw	
	extui	a8, a8, 0, 8	# _41, tmp71
.LVL129:
	.loc 8 501 24 view .LVU553
.LBE358:
.LBE357:
.LBE356:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:349:         if (motion_blocked) {
	.loc 1 349 9 discriminator 1 view .LVU554
	beqz.n	a8, .L55	# _41,
.LBB359:
	.loc 1 350 13 is_stmt 1 view .LVU555
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:350:             stepper->forceStop();
	.loc 1 350 31 is_stmt 0 view .LVU556
	mov.n	a10, a2	#, stepper
	call8	_ZN16FastAccelStepper9forceStopEv		#
.LVL130:
	.loc 1 351 13 is_stmt 1 view .LVU557
	.loc 1 351 18 view .LVU558
	.loc 1 351 23 view .LVU559
	.loc 1 351 55 view .LVU560
	.loc 1 351 60 view .LVU561
	.loc 1 351 136 discriminator 2 view .LVU562
.LBB360:
	.loc 1 351 193 discriminator 5 view .LVU563
.LBB361:
	.loc 1 351 218 discriminator 5 view .LVU564
	.loc 1 351 253 discriminator 5 view .LVU565
	.loc 1 351 293 view .LVU566
.LBE361:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:351:             ESP_LOGW(TAG, "Движение прервано: авария драйвера");
	.loc 1 351 200 is_stmt 0 discriminator 5 view .LVU567
	call8	esp_log_timestamp		#
.LVL131:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:351:             ESP_LOGW(TAG, "Движение прервано: авария драйвера");
	.loc 1 351 200 discriminator 7 view .LVU568
	l32r	a11, .LC63	#, tmp72
	mov.n	a14, a11	#, tmp72
	mov.n	a13, a10	#, _31
	l32r	a12, .LC69	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL132:
	.loc 1 351 55 is_stmt 1 view .LVU569
	.loc 1 351 18 view .LVU570
.LBE360:
	.loc 1 351 13 view .LVU571
	.loc 1 352 13 view .LVU572
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:352:             return ESP_ERR_INVALID_STATE;
	.loc 1 352 20 is_stmt 0 view .LVU573
	movi	a2, 0x103	# <retval>,
.LVL133:
	.loc 1 352 20 view .LVU574
	j	.L51		#
.LVL134:
.L55:
	.loc 1 352 20 view .LVU575
.LBE359:
.LBE355:
	.loc 1 354 9 is_stmt 1 view .LVU576
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:354:         vTaskDelay(pdMS_TO_TICKS(10));
	.loc 1 354 19 is_stmt 0 view .LVU577
	movi.n	a10, 1	#,
	call8	vTaskDelay		#
.LVL135:
.L54:
	.loc 1 354 19 view .LVU578
.LBE354:
	.loc 1 348 30 is_stmt 1 view .LVU579
	mov.n	a10, a2	#, stepper
	call8	_ZNK16FastAccelStepper9isRunningEv		#
.LVL136:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:348:     while (stepper->isRunning()) {
	.loc 1 348 30 is_stmt 0 discriminator 1 view .LVU580
	bnez.n	a10, .L56	# tmp87,
	.loc 1 357 5 is_stmt 1 view .LVU581
.LVL137:
.LBB362:
.LBI362:
	.loc 7 95 5 view .LVU582
	.loc 7 96 7 view .LVU583
.LBB363:
.LBI363:
	.loc 8 494 7 view .LVU584
.LBB364:
	.loc 8 498 2 view .LVU585
	.loc 8 499 2 view .LVU586
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/bits/atomic_base.h:501: 	return __atomic_load_n(&_M_i, int(__m));
	.loc 8 501 24 is_stmt 0 view .LVU587
	memw	
	l32r	a8, .LC62	#, tmp76
	memw
	l8ui	a8, a8, 0	#,
	memw	
	extui	a8, a8, 0, 8	# _42, tmp77
.LVL138:
	.loc 8 501 24 view .LVU588
.LBE364:
.LBE363:
.LBE362:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:357:     return motion_blocked ? ESP_ERR_INVALID_STATE : ESP_OK;
	.loc 1 357 27 discriminator 1 view .LVU589
	beqz.n	a8, .L58	# _42,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:357:     return motion_blocked ? ESP_ERR_INVALID_STATE : ESP_OK;
	.loc 1 357 37 discriminator 2 view .LVU590
	movi	a2, 0x103	# <retval>,
.LVL139:
	.loc 1 357 37 discriminator 2 view .LVU591
	j	.L51		#
.LVL140:
.L57:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:335:     if (stepper == nullptr) return ESP_ERR_INVALID_STATE;
	.loc 1 335 36 discriminator 1 view .LVU592
	movi	a2, 0x103	# <retval>,
.LVL141:
	.loc 1 335 36 discriminator 1 view .LVU593
	j	.L51		#
.LVL142:
.L58:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:357:     return motion_blocked ? ESP_ERR_INVALID_STATE : ESP_OK;
	.loc 1 357 37 discriminator 3 view .LVU594
	mov.n	a2, a8	# <retval>, _42
.LVL143:
.L51:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:358: }
	.loc 1 358 1 view .LVU595
	retw.n	
.LFE1195:
	.size	_Z15stepper_move_to6axis_tl, .-_Z15stepper_move_to6axis_tl
	.section	.rodata._Z12stepper_test6axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC72:
	.base64	"SSAoJWx1KSAlczogPT09INCi0LXRgdGCIDE6IDEg0L7QsdC+0YDQvtGCINCy0L/QtdGA0ZHQtCDQuCDQvdCw0LfQsNC0LCAxINC+0LEv0YEgPT09CgA="
	.align	4
.LC74:
	.base64	"RSAoJWx1KSAlczog0KLQtdGB0YIg0L/RgNC10YDQstCw0L0g0LjQty3Qt9CwINCw0LLQsNGA0LjQuAoA"
	.align	4
.LC76:
	.base64	"SSAoJWx1KSAlczogPT09INCi0LXRgdGCIDI6INGH0LXRgtCy0LXRgNGC0Ywg0L7QsdC+0YDQvtGC0LAsIDAuMSDQvtCxL9GBID09PQoA"
	.align	4
.LC79:
	.base64	"SSAoJWx1KSAlczogPT09INCi0LXRgdGCIDM6INGB0LrQvtGA0L7RgdGC0Ywg0LLQtdC00LXQvdC40Y8gJWx1INC80JPRhiwgMTAg0YEgPT09CgA="
	.align	4
.LC81:
	.base64	"RSAoJWx1KSAlczog0KLQtdGB0YIgMyDQvdC1INC30LDQv9GD0YnQtdC9OiDQsNCy0LDRgNC40Y8g0LTRgNCw0LnQstC10YDQsAoA"
	.align	4
.LC83:
	.base64	"RSAoJWx1KSAlczog0KLQtdGB0YIgMyDQv9GA0LXRgNCy0LDQvSDQuNC3LdC30LAg0LDQstCw0YDQuNC4CgA="
	.align	4
.LC85:
	.base64	"SSAoJWx1KSAlczog0KLQtdGB0YIgMyDQvtC60L7QvdGH0LXQvSwg0L/QvtC30LjRhtC40Y8gJWxkICjQvtC20LjQtNCw0LvQvtGB0YwgfiVsdSkKAA=="
	.align	4
.LC88:
	.base64	"SSAoJWx1KSAlczogPT09INCi0LXRgdGC0Ysg0LfQsNC60L7QvdGH0LXQvdGLID09PQoA"
	.section	.text._Z12stepper_test6axis_t,"ax",@progbits
	.literal_position
	.literal .LC70, AXES
	.literal .LC71, .LC14
	.literal .LC73, .LC72
	.literal .LC75, .LC74
	.literal .LC77, .LC76
	.literal .LC78, -858993459
	.literal .LC80, .LC79
	.literal .LC82, .LC81
	.literal .LC84, .LC83
	.literal .LC86, .LC85
	.literal .LC87, 1374389535
	.literal .LC89, .LC88
	.align	4
	.global	_Z12stepper_test6axis_t
	.type	_Z12stepper_test6axis_t, @function
_Z12stepper_test6axis_t:
.LVL144:
.LFB1190:
	.loc 1 95 29 is_stmt 1 view -0
	.loc 1 95 29 is_stmt 0 view .LVU597
	entry	sp, 48	#
.LCFI12:
	.loc 1 96 5 is_stmt 1 view .LVU598
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:96:     FastAccelStepper *stepper = axis_stepper(a);
	.loc 1 96 45 is_stmt 0 view .LVU599
	mov.n	a10, a2	#, a
	call8	_ZL12axis_stepper6axis_t		#
.LVL145:
	mov.n	a7, a10	# stepper, stepper
.LVL146:
	.loc 1 97 5 is_stmt 1 view .LVU600
	beqz.n	a10, .L59	# stepper,
	.loc 1 98 5 view .LVU601
.LVL147:
.LBB365:
.LBI365:
	.loc 3 97 20 view .LVU602
.LBB366:
	.loc 3 99 5 view .LVU603
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:99:     return AXES[a].full_steps * AXES[a].microsteps;
	.loc 3 99 20 is_stmt 0 view .LVU604
	l32r	a10, .LC70	#, tmp98
	addx4	a8, a2, a2	#, tmp101, a, a
	addx2	a9, a8, a2	#, tmp103, tmp101, a
	addx4	a9, a9, a10	#, tmp105, tmp103, tmp98
	l32i.n	a6, a9, 28	# AXES[a$60_76].full_steps, _91
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:99:     return AXES[a].full_steps * AXES[a].microsteps;
	.loc 3 99 41 view .LVU605
	l32i.n	a8, a9, 32	# AXES[a$60_76].microsteps, AXES[a$60_76].microsteps
	mull	a6, a6, a8	# _130, _91, AXES[a$60_76].microsteps
.LVL148:
	.loc 3 99 41 view .LVU606
.LBE366:
.LBE365:
	.loc 1 103 5 is_stmt 1 view .LVU607
	.loc 1 103 10 view .LVU608
	.loc 1 103 15 view .LVU609
	.loc 1 103 47 view .LVU610
	.loc 1 103 52 view .LVU611
	.loc 1 103 136 discriminator 2 view .LVU612
	.loc 1 103 136 discriminator 6 view .LVU613
	.loc 1 103 136 discriminator 10 view .LVU614
.LBB367:
	.loc 1 103 138 discriminator 14 view .LVU615
.LBB368:
	.loc 1 103 163 discriminator 14 view .LVU616
	.loc 1 103 198 discriminator 14 view .LVU617
	.loc 1 103 238 view .LVU618
.LBE368:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:103:     ESP_LOGI(TAG, "=== Тест 1: 1 оборот вперёд и назад, 1 об/с ===");
	.loc 1 103 145 is_stmt 0 discriminator 14 view .LVU619
	call8	esp_log_timestamp		#
.LVL149:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:103:     ESP_LOGI(TAG, "=== Тест 1: 1 оборот вперёд и назад, 1 об/с ===");
	.loc 1 103 145 discriminator 17 view .LVU620
	l32r	a11, .LC71	#, tmp117
	mov.n	a14, a11	#, tmp117
	mov.n	a13, a10	#, _2
	l32r	a12, .LC73	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL150:
	.loc 1 103 47 is_stmt 1 view .LVU621
	.loc 1 103 10 view .LVU622
.LBE367:
	.loc 1 103 5 view .LVU623
	.loc 1 104 5 view .LVU624
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:104:     stepper->setSpeedInHz(MOTOR_REV);
	.loc 1 104 26 is_stmt 0 view .LVU625
	mov.n	a11, a6	#, _130
	mov.n	a10, a7	#, stepper
	call8	_ZN16FastAccelStepper12setSpeedInHzEm		#
.LVL151:
	.loc 1 106 5 is_stmt 1 view .LVU626
.LBB369:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:106:     if (stepper_move_to(a, MOTOR_REV * 5) != ESP_OK) {
	.loc 1 106 24 is_stmt 0 view .LVU627
	addx4	a11, a6, a6	#,, _130, _130
	mov.n	a10, a2	#, a
	call8	_Z15stepper_move_to6axis_tl		#
.LVL152:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:106:     if (stepper_move_to(a, MOTOR_REV * 5) != ESP_OK) {
	.loc 1 106 5 discriminator 1 view .LVU628
	beqz.n	a10, .L61	# _6,
.LBB370:
	.loc 1 107 9 is_stmt 1 view .LVU629
	.loc 1 107 14 view .LVU630
	.loc 1 107 19 view .LVU631
	.loc 1 107 52 view .LVU632
	.loc 1 107 57 view .LVU633
.LBB371:
	.loc 1 107 116 discriminator 1 view .LVU634
.LBB372:
	.loc 1 107 141 discriminator 1 view .LVU635
	.loc 1 107 176 discriminator 1 view .LVU636
	.loc 1 107 217 view .LVU637
.LBE372:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:107:         ESP_LOGE(TAG, "Тест прерван из-за аварии");
	.loc 1 107 123 is_stmt 0 discriminator 1 view .LVU638
	call8	esp_log_timestamp		#
.LVL153:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:107:         ESP_LOGE(TAG, "Тест прерван из-за аварии");
	.loc 1 107 123 discriminator 3 view .LVU639
	l32r	a11, .LC71	#, tmp123
	mov.n	a14, a11	#, tmp123
	mov.n	a13, a10	#, _8
	l32r	a12, .LC75	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL154:
	.loc 1 107 52 is_stmt 1 view .LVU640
	.loc 1 107 14 view .LVU641
.LBE371:
	.loc 1 107 9 view .LVU642
	.loc 1 108 9 view .LVU643
	j	.L59		#
.L61:
.LBE370:
.LBE369:
	.loc 1 110 5 view .LVU644
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:110:     vTaskDelay(pdMS_TO_TICKS(1000));
	.loc 1 110 15 is_stmt 0 view .LVU645
	movi	a10, 0x64	#,
	call8	vTaskDelay		#
.LVL155:
	.loc 1 112 5 is_stmt 1 view .LVU646
.LBB373:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:112:     if (stepper_move_to(a, 0) != ESP_OK) {
	.loc 1 112 24 is_stmt 0 view .LVU647
	movi.n	a11, 0	#,
	mov.n	a10, a2	#, a
	call8	_Z15stepper_move_to6axis_tl		#
.LVL156:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:112:     if (stepper_move_to(a, 0) != ESP_OK) {
	.loc 1 112 5 discriminator 1 view .LVU648
	beqz.n	a10, .L62	# _10,
.LBB374:
	.loc 1 113 9 is_stmt 1 view .LVU649
	.loc 1 113 14 view .LVU650
	.loc 1 113 19 view .LVU651
	.loc 1 113 52 view .LVU652
	.loc 1 113 57 view .LVU653
.LBB375:
	.loc 1 113 116 discriminator 1 view .LVU654
.LBB376:
	.loc 1 113 141 discriminator 1 view .LVU655
	.loc 1 113 176 discriminator 1 view .LVU656
	.loc 1 113 217 view .LVU657
.LBE376:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:113:         ESP_LOGE(TAG, "Тест прерван из-за аварии");
	.loc 1 113 123 is_stmt 0 discriminator 1 view .LVU658
	call8	esp_log_timestamp		#
.LVL157:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:113:         ESP_LOGE(TAG, "Тест прерван из-за аварии");
	.loc 1 113 123 discriminator 3 view .LVU659
	l32r	a11, .LC71	#, tmp126
	mov.n	a14, a11	#, tmp126
	mov.n	a13, a10	#, _12
	l32r	a12, .LC75	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL158:
	.loc 1 113 52 is_stmt 1 view .LVU660
	.loc 1 113 14 view .LVU661
.LBE375:
	.loc 1 113 9 view .LVU662
	.loc 1 114 9 view .LVU663
	j	.L59		#
.L62:
.LBE374:
.LBE373:
	.loc 1 116 5 view .LVU664
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:116:     vTaskDelay(pdMS_TO_TICKS(2000));
	.loc 1 116 15 is_stmt 0 view .LVU665
	movi	a10, 0xc8	#,
	call8	vTaskDelay		#
.LVL159:
	.loc 1 121 5 is_stmt 1 view .LVU666
	.loc 1 121 10 view .LVU667
	.loc 1 121 15 view .LVU668
	.loc 1 121 47 view .LVU669
	.loc 1 121 52 view .LVU670
	.loc 1 121 128 discriminator 2 view .LVU671
	.loc 1 121 128 discriminator 6 view .LVU672
	.loc 1 121 128 discriminator 10 view .LVU673
.LBB377:
	.loc 1 121 130 discriminator 14 view .LVU674
.LBB378:
	.loc 1 121 155 discriminator 14 view .LVU675
	.loc 1 121 190 discriminator 14 view .LVU676
	.loc 1 121 230 view .LVU677
.LBE378:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:121:     ESP_LOGI(TAG, "=== Тест 2: четверть оборота, 0.1 об/с ===");
	.loc 1 121 137 is_stmt 0 discriminator 14 view .LVU678
	call8	esp_log_timestamp		#
.LVL160:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:121:     ESP_LOGI(TAG, "=== Тест 2: четверть оборота, 0.1 об/с ===");
	.loc 1 121 137 discriminator 17 view .LVU679
	l32r	a11, .LC71	#, tmp129
	mov.n	a14, a11	#, tmp129
	mov.n	a13, a10	#, _15
	l32r	a12, .LC77	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL161:
	.loc 1 121 47 is_stmt 1 view .LVU680
	.loc 1 121 10 view .LVU681
.LBE377:
	.loc 1 121 5 view .LVU682
	.loc 1 122 5 view .LVU683
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:122:     stepper->setSpeedInHz(MOTOR_REV / 10);
	.loc 1 122 26 is_stmt 0 view .LVU684
	l32r	a11, .LC78	#, tmp134
	muluh	a11, a6, a11	# tmp166, _130, tmp134
	srli	a11, a11, 3	#, tmp166,
	mov.n	a10, a7	#, stepper
	call8	_ZN16FastAccelStepper12setSpeedInHzEm		#
.LVL162:
	.loc 1 124 5 is_stmt 1 view .LVU685
.LBB379:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:124:     if (stepper_move_to(a, MOTOR_REV / 4) != ESP_OK) {
	.loc 1 124 24 is_stmt 0 view .LVU686
	srli	a11, a6, 2	#, _130,
	mov.n	a10, a2	#, a
	call8	_Z15stepper_move_to6axis_tl		#
.LVL163:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:124:     if (stepper_move_to(a, MOTOR_REV / 4) != ESP_OK) {
	.loc 1 124 5 discriminator 1 view .LVU687
	beqz.n	a10, .L63	# _20,
.LBB380:
	.loc 1 125 9 is_stmt 1 view .LVU688
	.loc 1 125 14 view .LVU689
	.loc 1 125 19 view .LVU690
	.loc 1 125 52 view .LVU691
	.loc 1 125 57 view .LVU692
.LBB381:
	.loc 1 125 116 discriminator 1 view .LVU693
.LBB382:
	.loc 1 125 141 discriminator 1 view .LVU694
	.loc 1 125 176 discriminator 1 view .LVU695
	.loc 1 125 217 view .LVU696
.LBE382:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:125:         ESP_LOGE(TAG, "Тест прерван из-за аварии");
	.loc 1 125 123 is_stmt 0 discriminator 1 view .LVU697
	call8	esp_log_timestamp		#
.LVL164:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:125:         ESP_LOGE(TAG, "Тест прерван из-за аварии");
	.loc 1 125 123 discriminator 3 view .LVU698
	l32r	a11, .LC71	#, tmp136
	mov.n	a14, a11	#, tmp136
	mov.n	a13, a10	#, _22
	l32r	a12, .LC75	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL165:
	.loc 1 125 52 is_stmt 1 view .LVU699
	.loc 1 125 14 view .LVU700
.LBE381:
	.loc 1 125 9 view .LVU701
	.loc 1 126 9 view .LVU702
	j	.L59		#
.L63:
.LBE380:
.LBE379:
	.loc 1 128 5 view .LVU703
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:128:     vTaskDelay(pdMS_TO_TICKS(1000));
	.loc 1 128 15 is_stmt 0 view .LVU704
	movi	a10, 0x64	#,
	call8	vTaskDelay		#
.LVL166:
	.loc 1 130 5 is_stmt 1 view .LVU705
.LBB383:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:130:     if (stepper_move_to(a, 0) != ESP_OK) {
	.loc 1 130 24 is_stmt 0 view .LVU706
	movi.n	a11, 0	#,
	mov.n	a10, a2	#, a
	call8	_Z15stepper_move_to6axis_tl		#
.LVL167:
	mov.n	a5, a10	# i, i
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:130:     if (stepper_move_to(a, 0) != ESP_OK) {
	.loc 1 130 5 discriminator 1 view .LVU707
	beqz.n	a10, .L64	# i,
.LBB384:
	.loc 1 131 9 is_stmt 1 view .LVU708
	.loc 1 131 14 view .LVU709
	.loc 1 131 19 view .LVU710
	.loc 1 131 52 view .LVU711
	.loc 1 131 57 view .LVU712
.LBB385:
	.loc 1 131 116 discriminator 1 view .LVU713
.LBB386:
	.loc 1 131 141 discriminator 1 view .LVU714
	.loc 1 131 176 discriminator 1 view .LVU715
	.loc 1 131 217 view .LVU716
.LBE386:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:131:         ESP_LOGE(TAG, "Тест прерван из-за аварии");
	.loc 1 131 123 is_stmt 0 discriminator 1 view .LVU717
	call8	esp_log_timestamp		#
.LVL168:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:131:         ESP_LOGE(TAG, "Тест прерван из-за аварии");
	.loc 1 131 123 discriminator 3 view .LVU718
	l32r	a11, .LC71	#, tmp139
	mov.n	a14, a11	#, tmp139
	mov.n	a13, a10	#, _36
	l32r	a12, .LC75	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL169:
	.loc 1 131 52 is_stmt 1 view .LVU719
	.loc 1 131 14 view .LVU720
.LBE385:
	.loc 1 131 9 view .LVU721
	.loc 1 132 9 view .LVU722
	j	.L59		#
.L64:
.LBE384:
.LBE383:
	.loc 1 134 5 view .LVU723
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:134:     vTaskDelay(pdMS_TO_TICKS(2000));
	.loc 1 134 15 is_stmt 0 view .LVU724
	movi	a10, 0xc8	#,
	call8	vTaskDelay		#
.LVL170:
	.loc 1 141 5 is_stmt 1 view .LVU725
	.loc 1 141 10 view .LVU726
	.loc 1 141 15 view .LVU727
	.loc 1 141 47 view .LVU728
	.loc 1 141 52 view .LVU729
	.loc 1 141 95 discriminator 2 view .LVU730
	.loc 1 141 95 discriminator 7 view .LVU731
	.loc 1 141 95 discriminator 12 view .LVU732
.LBB387:
	.loc 1 141 97 discriminator 17 view .LVU733
.LBB388:
	.loc 1 141 122 discriminator 17 view .LVU734
	.loc 1 141 157 discriminator 17 view .LVU735
	.loc 1 141 197 view .LVU736
.LBE388:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:141:     ESP_LOGI(TAG, "=== Тест 3: скорость ведения %" PRIu32 " мГц, 10 с ===", axis_sidereal_mhz(a));
	.loc 1 141 104 is_stmt 0 discriminator 17 view .LVU737
	call8	esp_log_timestamp		#
.LVL171:
	mov.n	a4, a10	# _67, _67
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:141:     ESP_LOGI(TAG, "=== Тест 3: скорость ведения %" PRIu32 " мГц, 10 с ===", axis_sidereal_mhz(a));
	.loc 1 141 104 discriminator 21 view .LVU738
	mov.n	a10, a2	#, a
	call8	_Z17axis_sidereal_mhz6axis_t		#
.LVL172:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:141:     ESP_LOGI(TAG, "=== Тест 3: скорость ведения %" PRIu32 " мГц, 10 с ===", axis_sidereal_mhz(a));
	.loc 1 141 104 discriminator 22 view .LVU739
	l32r	a11, .LC71	#, tmp142
	mov.n	a15, a10	#, _69
	mov.n	a14, a11	#, tmp142
	mov.n	a13, a4	#, _67
	l32r	a12, .LC80	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL173:
	.loc 1 141 47 is_stmt 1 view .LVU740
	.loc 1 141 10 view .LVU741
.LBE387:
	.loc 1 141 5 view .LVU742
	.loc 1 142 5 view .LVU743
.LBB389:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:142:     if (stepper_is_blocked()) {
	.loc 1 142 27 is_stmt 0 view .LVU744
	call8	_Z18stepper_is_blockedv		#
.LVL174:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:142:     if (stepper_is_blocked()) {
	.loc 1 142 5 discriminator 1 view .LVU745
	beqz.n	a10, .L65	# tmp183,
.LBB390:
	.loc 1 143 9 is_stmt 1 view .LVU746
	.loc 1 143 14 view .LVU747
	.loc 1 143 19 view .LVU748
	.loc 1 143 52 view .LVU749
	.loc 1 143 57 view .LVU750
.LBB391:
	.loc 1 143 116 discriminator 1 view .LVU751
.LBB392:
	.loc 1 143 141 discriminator 1 view .LVU752
	.loc 1 143 176 discriminator 1 view .LVU753
	.loc 1 143 217 view .LVU754
.LBE392:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:143:         ESP_LOGE(TAG, "Тест 3 не запущен: авария драйвера");
	.loc 1 143 123 is_stmt 0 discriminator 1 view .LVU755
	call8	esp_log_timestamp		#
.LVL175:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:143:         ESP_LOGE(TAG, "Тест 3 не запущен: авария драйвера");
	.loc 1 143 123 discriminator 3 view .LVU756
	l32r	a11, .LC71	#, tmp146
	mov.n	a14, a11	#, tmp146
	mov.n	a13, a10	#, _71
	l32r	a12, .LC82	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL176:
	.loc 1 143 52 is_stmt 1 view .LVU757
	.loc 1 143 14 view .LVU758
.LBE391:
	.loc 1 143 9 view .LVU759
	.loc 1 144 9 view .LVU760
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:144:         stepper_emergency_stop();
	.loc 1 144 31 is_stmt 0 view .LVU761
	call8	_Z22stepper_emergency_stopv		#
.LVL177:
	.loc 1 145 9 is_stmt 1 view .LVU762
	j	.L59		#
.L65:
.LBE390:
.LBE389:
	.loc 1 147 5 view .LVU763
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:147:     stepper->setSpeedInMilliHz(axis_sidereal_mhz(a));
	.loc 1 147 31 is_stmt 0 view .LVU764
	mov.n	a10, a2	#, a
	call8	_Z17axis_sidereal_mhz6axis_t		#
.LVL178:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:147:     stepper->setSpeedInMilliHz(axis_sidereal_mhz(a));
	.loc 1 147 31 discriminator 1 view .LVU765
	mov.n	a11, a10	#, _85
	mov.n	a10, a7	#, stepper
	call8	_ZN16FastAccelStepper17setSpeedInMilliHzEm		#
.LVL179:
	.loc 1 148 5 is_stmt 1 view .LVU766
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:148:     stepper->runForward();
	.loc 1 148 24 is_stmt 0 view .LVU767
	mov.n	a10, a7	#, stepper
	call8	_ZN16FastAccelStepper10runForwardEv		#
.LVL180:
	.loc 1 149 5 is_stmt 1 view .LVU768
.LBB393:
	.loc 1 149 5 is_stmt 0 view .LVU769
	j	.L66		#
.LVL181:
.L68:
.LBB394:
	.loc 1 150 9 is_stmt 1 view .LVU770
.LBB395:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:150:         if (stepper_is_blocked()) {
	.loc 1 150 31 is_stmt 0 view .LVU771
	call8	_Z18stepper_is_blockedv		#
.LVL182:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:150:         if (stepper_is_blocked()) {
	.loc 1 150 9 discriminator 1 view .LVU772
	beqz.n	a10, .L67	# tmp186,
.LBB396:
	.loc 1 151 13 is_stmt 1 view .LVU773
	.loc 1 151 18 view .LVU774
	.loc 1 151 23 view .LVU775
	.loc 1 151 56 view .LVU776
	.loc 1 151 61 view .LVU777
.LBB397:
	.loc 1 151 120 discriminator 1 view .LVU778
.LBB398:
	.loc 1 151 145 discriminator 1 view .LVU779
	.loc 1 151 180 discriminator 1 view .LVU780
	.loc 1 151 221 view .LVU781
.LBE398:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:151:             ESP_LOGE(TAG, "Тест 3 прерван из-за аварии");
	.loc 1 151 127 is_stmt 0 discriminator 1 view .LVU782
	call8	esp_log_timestamp		#
.LVL183:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:151:             ESP_LOGE(TAG, "Тест 3 прерван из-за аварии");
	.loc 1 151 127 discriminator 3 view .LVU783
	l32r	a11, .LC71	#, tmp150
	mov.n	a14, a11	#, tmp150
	mov.n	a13, a10	#, _87
	l32r	a12, .LC84	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL184:
	.loc 1 151 56 is_stmt 1 view .LVU784
	.loc 1 151 18 view .LVU785
.LBE397:
	.loc 1 151 13 view .LVU786
	.loc 1 152 13 view .LVU787
	j	.L59		#
.L67:
.LBE396:
.LBE395:
	.loc 1 154 9 view .LVU788
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:154:         vTaskDelay(pdMS_TO_TICKS(10));
	.loc 1 154 19 is_stmt 0 view .LVU789
	movi.n	a10, 1	#,
	call8	vTaskDelay		#
.LVL185:
.LBE394:
	.loc 1 149 5 is_stmt 1 discriminator 2 view .LVU790
	addi.n	a5, a5, 1	# i, i,
.LVL186:
.L66:
	.loc 1 149 23 discriminator 1 view .LVU791
	movi	a8, 0x3e7	# tmp153,
	bge	a8, a5, .L68	# tmp153, i,
.LBE393:
	.loc 1 160 5 view .LVU792
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:160:     stepper->stopMove();
	.loc 1 160 22 is_stmt 0 view .LVU793
	mov.n	a10, a7	#, stepper
	call8	_ZN16FastAccelStepper8stopMoveEv		#
.LVL187:
	.loc 1 161 5 is_stmt 1 view .LVU794
	j	.L69		#
.L70:
	.loc 1 162 9 view .LVU795
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:162:         vTaskDelay(pdMS_TO_TICKS(10));
	.loc 1 162 19 is_stmt 0 view .LVU796
	movi.n	a10, 1	#,
	call8	vTaskDelay		#
.LVL188:
.L69:
	.loc 1 161 30 is_stmt 1 view .LVU797
	mov.n	a10, a7	#, stepper
	call8	_ZNK16FastAccelStepper9isRunningEv		#
.LVL189:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:161:     while (stepper->isRunning()) {
	.loc 1 161 30 is_stmt 0 discriminator 1 view .LVU798
	bnez.n	a10, .L70	# tmp188,
	.loc 1 166 5 is_stmt 1 view .LVU799
	.loc 1 166 10 view .LVU800
	.loc 1 166 15 view .LVU801
	.loc 1 166 47 view .LVU802
	.loc 1 166 52 view .LVU803
	.loc 1 166 115 discriminator 2 view .LVU804
	.loc 1 166 115 discriminator 8 view .LVU805
	.loc 1 166 115 discriminator 14 view .LVU806
.LBB399:
	.loc 1 166 117 discriminator 20 view .LVU807
.LBB400:
	.loc 1 166 142 discriminator 20 view .LVU808
	.loc 1 166 177 discriminator 20 view .LVU809
	.loc 1 166 217 view .LVU810
.LBE400:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:166:     ESP_LOGI(TAG, "Тест 3 окончен, позиция %" PRId32 " (ожидалось ~%" PRIu32 ")",
	.loc 1 166 124 is_stmt 0 discriminator 20 view .LVU811
	call8	esp_log_timestamp		#
.LVL190:
	mov.n	a5, a10	# _121, _121
.LVL191:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:166:     ESP_LOGI(TAG, "Тест 3 окончен, позиция %" PRId32 " (ожидалось ~%" PRIu32 ")",
	.loc 1 166 124 discriminator 25 view .LVU812
	mov.n	a10, a7	#, stepper
	call8	_ZNK16FastAccelStepper18getCurrentPositionEv		#
.LVL192:
	mov.n	a4, a10	# _123, _123
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:166:     ESP_LOGI(TAG, "Тест 3 окончен, позиция %" PRId32 " (ожидалось ~%" PRIu32 ")",
	.loc 1 166 96 discriminator 26 view .LVU813
	mov.n	a10, a2	#, a
	call8	_Z17axis_sidereal_mhz6axis_t		#
.LVL193:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:166:     ESP_LOGI(TAG, "Тест 3 окончен, позиция %" PRId32 " (ожидалось ~%" PRIu32 ")",
	.loc 1 166 124 discriminator 27 view .LVU814
	l32r	a2, .LC71	#, tmp155
.LVL194:
	.loc 1 166 124 discriminator 27 view .LVU815
	l32r	a8, .LC87	#, tmp160
	muluh	a8, a10, a8	# tmp168, _124, tmp160
	srli	a8, a8, 5	# _125, tmp168,
	s32i.n	a8, sp, 0	#, _125
	mov.n	a15, a4	#, _123
	mov.n	a14, a2	#, tmp155
	mov.n	a13, a5	#, _121
	l32r	a12, .LC86	#,
	mov.n	a11, a2	#, tmp155
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL195:
	.loc 1 166 47 is_stmt 1 view .LVU816
	.loc 1 166 10 view .LVU817
.LBE399:
	.loc 1 166 5 view .LVU818
	.loc 1 170 5 view .LVU819
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:170:     stepper->setSpeedInHz(MOTOR_REV);
	.loc 1 170 26 is_stmt 0 view .LVU820
	mov.n	a11, a6	#, _130
	mov.n	a10, a7	#, stepper
	call8	_ZN16FastAccelStepper12setSpeedInHzEm		#
.LVL196:
	.loc 1 171 5 is_stmt 1 view .LVU821
	.loc 1 171 10 view .LVU822
	.loc 1 171 15 view .LVU823
	.loc 1 171 47 view .LVU824
	.loc 1 171 52 view .LVU825
	.loc 1 171 101 discriminator 2 view .LVU826
	.loc 1 171 101 discriminator 6 view .LVU827
	.loc 1 171 101 discriminator 10 view .LVU828
.LBB401:
	.loc 1 171 103 discriminator 14 view .LVU829
.LBB402:
	.loc 1 171 128 discriminator 14 view .LVU830
	.loc 1 171 163 discriminator 14 view .LVU831
	.loc 1 171 203 view .LVU832
.LBE402:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:171:     ESP_LOGI(TAG, "=== Тесты закончены ===");
	.loc 1 171 110 is_stmt 0 discriminator 14 view .LVU833
	call8	esp_log_timestamp		#
.LVL197:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:171:     ESP_LOGI(TAG, "=== Тесты закончены ===");
	.loc 1 171 110 discriminator 17 view .LVU834
	mov.n	a14, a2	#, tmp155
	mov.n	a13, a10	#, _138
	l32r	a12, .LC89	#,
	mov.n	a11, a2	#, tmp155
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL198:
	.loc 1 171 47 is_stmt 1 view .LVU835
	.loc 1 171 10 view .LVU836
.LBE401:
	.loc 1 171 5 view .LVU837
.L59:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:172: }
	.loc 1 172 1 is_stmt 0 view .LVU838
	retw.n	
.LFE1190:
	.size	_Z12stepper_test6axis_t, .-_Z12stepper_test6axis_t
	.section	.rodata._Z22stepper_track_siderealv.str1.4,"aMS",@progbits,1
	.align	4
.LC92:
	.base64	"VyAoJWx1KSAlczog0JLQtdC00LXQvdC40LUg0L3QtSDQt9Cw0L/Rg9GJ0LXQvdC+OiDQtNCy0LjQttC10L3QuNC1INC30LDQsdC70L7QutC40YDQvtCy0LDQvdC+ICjQsNCy0LDRgNC40Y8g0LTRgNCw0LnQstC10YDQsCkKAA=="
	.align	4
.LC95:
	.base64	"RSAoJWx1KSAlczog0JLQtdC00LXQvdC40LU6INC90LXQtNC+0L/Rg9GB0YLQuNC80LDRjyDRgdC60L7RgNC+0YHRgtGMICVsdSDQvNCT0YYKAA=="
	.align	4
.LC97:
	.base64	"RSAoJWx1KSAlczog0JLQtdC00LXQvdC40LU6IHJ1bkZvcndhcmQ6ICVzCgA="
	.align	4
.LC99:
	.base64	"SSAoJWx1KSAlczog0JLQtdC00LXQvdC40LUg0LLQutC70Y7Rh9C10L3QvjogJWx1INC80JPRhgoA"
	.section	.text._Z22stepper_track_siderealv,"ax",@progbits
	.literal_position
	.literal .LC90, _ZL14motion_blocked
	.literal .LC91, .LC14
	.literal .LC93, .LC92
	.literal .LC94, 57936
	.literal .LC96, .LC95
	.literal .LC98, .LC97
	.literal .LC100, .LC99
	.align	4
	.global	_Z22stepper_track_siderealv
	.type	_Z22stepper_track_siderealv, @function
_Z22stepper_track_siderealv:
.LFB1196:
	.loc 1 379 36 is_stmt 1 view -0
	entry	sp, 32	#
.LCFI13:
	.loc 1 380 5 view .LVU840
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:380:     FastAccelStepper *stepper = axis_stepper(AXIS_RA);   // ведение — только ось RA
	.loc 1 380 45 is_stmt 0 view .LVU841
	movi.n	a10, 0	#,
	call8	_ZL12axis_stepper6axis_t		#
.LVL199:
	mov.n	a2, a10	# stepper, stepper
.LVL200:
	.loc 1 381 5 is_stmt 1 view .LVU842
	beqz.n	a10, .L76	# stepper,
	.loc 1 382 5 view .LVU843
.LVL201:
	.loc 1 384 5 view .LVU844
.LBB403:
.LBB404:
.LBI404:
	.loc 7 95 5 view .LVU845
	.loc 7 96 7 view .LVU846
.LBB405:
.LBI405:
	.loc 8 494 7 view .LVU847
.LBB406:
	.loc 8 498 2 view .LVU848
	.loc 8 499 2 view .LVU849
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/bits/atomic_base.h:501: 	return __atomic_load_n(&_M_i, int(__m));
	.loc 8 501 24 is_stmt 0 view .LVU850
	memw	
	l32r	a8, .LC90	#, tmp60
	memw
	l8ui	a8, a8, 0	#,
	memw	
	extui	a8, a8, 0, 8	# _9, tmp61
.LVL202:
	.loc 8 501 24 view .LVU851
.LBE406:
.LBE405:
.LBE404:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:384:     if (motion_blocked) {
	.loc 1 384 5 discriminator 1 view .LVU852
	beqz.n	a8, .L73	# _9,
.LBB407:
	.loc 1 385 9 is_stmt 1 view .LVU853
	.loc 1 385 14 view .LVU854
	.loc 1 385 19 view .LVU855
	.loc 1 385 51 view .LVU856
	.loc 1 385 56 view .LVU857
	.loc 1 385 181 discriminator 2 view .LVU858
.LBB408:
	.loc 1 385 238 discriminator 5 view .LVU859
.LBB409:
	.loc 1 385 263 discriminator 5 view .LVU860
	.loc 1 385 298 discriminator 5 view .LVU861
	.loc 1 385 338 view .LVU862
.LBE409:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:385:         ESP_LOGW(TAG, "Ведение не запущено: движение заблокировано (авария драйвера)");
	.loc 1 385 245 is_stmt 0 discriminator 5 view .LVU863
	call8	esp_log_timestamp		#
.LVL203:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:385:         ESP_LOGW(TAG, "Ведение не запущено: движение заблокировано (авария драйвера)");
	.loc 1 385 245 discriminator 7 view .LVU864
	l32r	a11, .LC91	#, tmp62
	mov.n	a14, a11	#, tmp62
	mov.n	a13, a10	#, _2
	l32r	a12, .LC93	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL204:
	.loc 1 385 51 is_stmt 1 view .LVU865
	.loc 1 385 14 view .LVU866
.LBE408:
	.loc 1 385 9 view .LVU867
	.loc 1 386 9 view .LVU868
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:386:         return ESP_ERR_INVALID_STATE;
	.loc 1 386 16 is_stmt 0 view .LVU869
	movi	a2, 0x103	# <retval>,
.LVL205:
	.loc 1 386 16 view .LVU870
	j	.L71		#
.LVL206:
.L73:
	.loc 1 386 16 view .LVU871
.LBE407:
.LBE403:
	.loc 1 389 5 is_stmt 1 view .LVU872
.LBB410:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:389:     if (stepper->setSpeedInMilliHz(SIDEREAL_SPEED_MHZ) != 0) {
	.loc 1 389 35 is_stmt 0 view .LVU873
	l32r	a11, .LC94	#,
	call8	_ZN16FastAccelStepper17setSpeedInMilliHzEm		#
.LVL207:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:389:     if (stepper->setSpeedInMilliHz(SIDEREAL_SPEED_MHZ) != 0) {
	.loc 1 389 5 discriminator 1 view .LVU874
	beqz.n	a10, .L74	# tmp82,
.LBB411:
	.loc 1 390 9 is_stmt 1 view .LVU875
	.loc 1 390 14 view .LVU876
	.loc 1 390 19 view .LVU877
	.loc 1 390 52 view .LVU878
	.loc 1 390 57 view .LVU879
.LBB412:
	.loc 1 390 116 discriminator 1 view .LVU880
.LBB413:
	.loc 1 390 141 discriminator 1 view .LVU881
	.loc 1 390 176 discriminator 1 view .LVU882
	.loc 1 390 217 view .LVU883
.LBE413:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:390:         ESP_LOGE(TAG, "Ведение: недопустимая скорость %" PRIu32 " мГц", SIDEREAL_SPEED_MHZ);
	.loc 1 390 123 is_stmt 0 discriminator 1 view .LVU884
	call8	esp_log_timestamp		#
.LVL208:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:390:         ESP_LOGE(TAG, "Ведение: недопустимая скорость %" PRIu32 " мГц", SIDEREAL_SPEED_MHZ);
	.loc 1 390 123 discriminator 3 view .LVU885
	l32r	a11, .LC91	#, tmp68
	l32r	a15, .LC94	#,
	mov.n	a14, a11	#, tmp68
	mov.n	a13, a10	#, _7
	l32r	a12, .LC96	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL209:
	.loc 1 390 52 is_stmt 1 view .LVU886
	.loc 1 390 14 view .LVU887
.LBE412:
	.loc 1 390 9 view .LVU888
	.loc 1 391 9 view .LVU889
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:391:         return ESP_FAIL;
	.loc 1 391 17 is_stmt 0 view .LVU890
	movi.n	a2, -1	# <retval>,
.LVL210:
	.loc 1 391 17 view .LVU891
	j	.L71		#
.LVL211:
.L74:
	.loc 1 391 17 view .LVU892
.LBE411:
.LBE410:
	.loc 1 394 5 is_stmt 1 view .LVU893
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:394:     MoveResultCode res = stepper->runForward();
	.loc 1 394 45 is_stmt 0 view .LVU894
	mov.n	a10, a2	#, stepper
	call8	_ZN16FastAccelStepper10runForwardEv		#
.LVL212:
	mov.n	a2, a10	# res, res
.LVL213:
	.loc 1 395 5 is_stmt 1 view .LVU895
.LBB414:
	beqz.n	a10, .L75	# res,
.LBB415:
	.loc 1 396 9 view .LVU896
	.loc 1 396 14 view .LVU897
	.loc 1 396 19 view .LVU898
	.loc 1 396 52 view .LVU899
	.loc 1 396 57 view .LVU900
.LBB416:
	.loc 1 396 116 discriminator 1 view .LVU901
.LBB417:
	.loc 1 396 141 discriminator 1 view .LVU902
	.loc 1 396 176 discriminator 1 view .LVU903
	.loc 1 396 217 view .LVU904
.LBE417:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:396:         ESP_LOGE(TAG, "Ведение: runForward: %s", toString(res));
	.loc 1 396 123 is_stmt 0 discriminator 1 view .LVU905
	call8	esp_log_timestamp		#
.LVL214:
	.loc 1 396 123 discriminator 1 view .LVU906
	mov.n	a7, a10	# _18, _18
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:396:         ESP_LOGE(TAG, "Ведение: runForward: %s", toString(res));
	.loc 1 396 123 discriminator 3 view .LVU907
	mov.n	a10, a2	#, res
	call8	_ZL8toString14MoveResultCode		#
.LVL215:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:396:         ESP_LOGE(TAG, "Ведение: runForward: %s", toString(res));
	.loc 1 396 123 discriminator 4 view .LVU908
	l32r	a11, .LC91	#, tmp72
	mov.n	a15, a10	#, _20
	mov.n	a14, a11	#, tmp72
	mov.n	a13, a7	#, _18
	l32r	a12, .LC98	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL216:
	.loc 1 396 52 is_stmt 1 view .LVU909
	.loc 1 396 14 view .LVU910
.LBE416:
	.loc 1 396 9 view .LVU911
	.loc 1 397 9 view .LVU912
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:397:         return ESP_FAIL;
	.loc 1 397 17 is_stmt 0 view .LVU913
	movi.n	a2, -1	# <retval>,
	j	.L71		#
.LVL217:
.L75:
	.loc 1 397 17 view .LVU914
.LBE415:
.LBE414:
	.loc 1 400 5 is_stmt 1 view .LVU915
	.loc 1 400 10 view .LVU916
	.loc 1 400 15 view .LVU917
	.loc 1 400 47 view .LVU918
	.loc 1 400 52 view .LVU919
	.loc 1 400 82 discriminator 2 view .LVU920
	.loc 1 400 82 discriminator 6 view .LVU921
	.loc 1 400 82 discriminator 10 view .LVU922
.LBB418:
	.loc 1 400 84 discriminator 14 view .LVU923
.LBB419:
	.loc 1 400 109 discriminator 14 view .LVU924
	.loc 1 400 144 discriminator 14 view .LVU925
	.loc 1 400 184 view .LVU926
.LBE419:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:400:     ESP_LOGI(TAG, "Ведение включено: %" PRIu32 " мГц", SIDEREAL_SPEED_MHZ);
	.loc 1 400 91 is_stmt 0 discriminator 14 view .LVU927
	call8	esp_log_timestamp		#
.LVL218:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:400:     ESP_LOGI(TAG, "Ведение включено: %" PRIu32 " мГц", SIDEREAL_SPEED_MHZ);
	.loc 1 400 91 discriminator 17 view .LVU928
	l32r	a11, .LC91	#, tmp76
	l32r	a15, .LC94	#,
	mov.n	a14, a11	#, tmp76
	mov.n	a13, a10	#, _43
	l32r	a12, .LC100	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL219:
	.loc 1 400 47 is_stmt 1 view .LVU929
	.loc 1 400 10 view .LVU930
.LBE418:
	.loc 1 400 5 view .LVU931
	.loc 1 401 5 view .LVU932
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:401:     return ESP_OK;
	.loc 1 401 12 is_stmt 0 view .LVU933
	j	.L71		#
.LVL220:
.L76:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:381:     if (stepper == nullptr) return ESP_ERR_INVALID_STATE;
	.loc 1 381 36 discriminator 1 view .LVU934
	movi	a2, 0x103	# <retval>,
.LVL221:
.L71:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:402: }
	.loc 1 402 1 view .LVU935
	retw.n	
.LFE1196:
	.size	_Z22stepper_track_siderealv, .-_Z22stepper_track_siderealv
	.section	.rodata._Z15stepper_slew_to6axis_tl.str1.4,"aMS",@progbits,1
	.align	4
.LC103:
	.base64	"RSAoJWx1KSAlczogWyVzXSDQndCw0LLQtdC00LXQvdC40LU6INC90LXQtNC+0L/Rg9GB0YLQuNC80LDRjyDRgdC60L7RgNC+0YHRgtGMICVsdSDQk9GGCgA="
	.align	4
.LC105:
	.base64	"SSAoJWx1KSAlczogWyVzXSDQndCw0LLQtdC00LXQvdC40LU6ICVsZCDihpIgJWxkINGI0LDQs9C+0LIKAA=="
	.align	4
.LC107:
	.base64	"SSAoJWx1KSAlczogWyVzXSDQndCw0LLQtdC00LXQvdC40LU6INC90LAg0LzQtdGB0YLQtQoA"
	.section	.text._Z15stepper_slew_to6axis_tl,"ax",@progbits
	.literal_position
	.literal .LC101, AXES
	.literal .LC102, .LC14
	.literal .LC104, .LC103
	.literal .LC106, .LC105
	.literal .LC108, .LC107
	.align	4
	.global	_Z15stepper_slew_to6axis_tl
	.type	_Z15stepper_slew_to6axis_tl, @function
_Z15stepper_slew_to6axis_tl:
.LVL222:
.LFB1197:
	.loc 1 411 55 is_stmt 1 view -0
	.loc 1 411 55 is_stmt 0 view .LVU937
	entry	sp, 48	#
.LCFI14:
	mov.n	a5, a3	# position, position
	.loc 1 412 5 is_stmt 1 view .LVU938
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:412:     FastAccelStepper *stepper = axis_stepper(a);
	.loc 1 412 45 is_stmt 0 view .LVU939
	mov.n	a10, a2	#, a
	call8	_ZL12axis_stepper6axis_t		#
.LVL223:
	mov.n	a3, a10	# stepper, stepper
.LVL224:
	.loc 1 413 5 is_stmt 1 view .LVU940
	beqz.n	a10, .L80	# stepper,
	.loc 1 415 5 view .LVU941
.LBB420:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:415:     if (stepper->setSpeedInHz(slew_speed_hz(a)) != 0) {
	.loc 1 415 30 is_stmt 0 view .LVU942
	mov.n	a10, a2	#, a
	call8	_ZL13slew_speed_hz6axis_t		#
.LVL225:
	mov.n	a7, a10	# _1, _1
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:415:     if (stepper->setSpeedInHz(slew_speed_hz(a)) != 0) {
	.loc 1 415 30 discriminator 1 view .LVU943
	mov.n	a11, a10	#, _1
	mov.n	a10, a3	#, stepper
	call8	_ZN16FastAccelStepper12setSpeedInHzEm		#
.LVL226:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:415:     if (stepper->setSpeedInHz(slew_speed_hz(a)) != 0) {
	.loc 1 415 5 discriminator 2 view .LVU944
	beqz.n	a10, .L79	# tmp96,
.LBB421:
	.loc 1 416 9 is_stmt 1 view .LVU945
	.loc 1 416 14 view .LVU946
	.loc 1 416 19 view .LVU947
	.loc 1 416 52 view .LVU948
	.loc 1 416 57 view .LVU949
.LBB422:
	.loc 1 416 116 discriminator 1 view .LVU950
.LBB423:
	.loc 1 416 141 discriminator 1 view .LVU951
	.loc 1 416 176 discriminator 1 view .LVU952
	.loc 1 416 217 view .LVU953
.LBE423:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:416:         ESP_LOGE(TAG, "[%s] Наведение: недопустимая скорость %" PRIu32 " Гц", AXES[a].name, slew_speed_hz(a));
	.loc 1 416 123 is_stmt 0 discriminator 1 view .LVU954
	call8	esp_log_timestamp		#
.LVL227:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:416:         ESP_LOGE(TAG, "[%s] Наведение: недопустимая скорость %" PRIu32 " Гц", AXES[a].name, slew_speed_hz(a));
	.loc 1 416 64 discriminator 3 view .LVU955
	addx4	a8, a2, a2	#, tmp68, a, a
	addx2	a8, a8, a2	#, tmp70, tmp68, a
	l32r	a9, .LC101	#, tmp65
	addx4	a8, a8, a9	#, tmp72, tmp70, tmp65
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:416:         ESP_LOGE(TAG, "[%s] Наведение: недопустимая скорость %" PRIu32 " Гц", AXES[a].name, slew_speed_hz(a));
	.loc 1 416 123 discriminator 4 view .LVU956
	l32r	a11, .LC102	#, tmp73
	s32i.n	a7, sp, 0	#, _1
	l32i.n	a15, a8, 0	# AXES[a$542_6].name,
	mov.n	a14, a11	#, tmp73
	mov.n	a13, a10	#, _4
	l32r	a12, .LC104	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL228:
	.loc 1 416 52 is_stmt 1 view .LVU957
	.loc 1 416 14 view .LVU958
.LBE422:
	.loc 1 416 9 view .LVU959
	.loc 1 417 9 view .LVU960
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:417:         return ESP_FAIL;
	.loc 1 417 17 is_stmt 0 view .LVU961
	movi.n	a2, -1	# <retval>,
.LVL229:
	.loc 1 417 17 view .LVU962
	j	.L77		#
.LVL230:
.L79:
	.loc 1 417 17 view .LVU963
.LBE421:
.LBE420:
	.loc 1 419 5 is_stmt 1 view .LVU964
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:419:     stepper->setAcceleration(slew_accel(a));
	.loc 1 419 29 is_stmt 0 view .LVU965
	mov.n	a10, a2	#, a
	call8	_ZL10slew_accel6axis_t		#
.LVL231:
.LBB424:
.LBI424:
	.loc 4 295 17 is_stmt 1 view .LVU966
.LBB425:
	.loc 4 296 5 view .LVU967
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/FastAccelStepper.h:296:     return _rg.setAcceleration(step_s_s);
	.loc 4 296 31 is_stmt 0 view .LVU968
	mov.n	a11, a10	#, _8
	addi.n	a10, a3, 4	#, stepper,
.LVL232:
	.loc 4 296 31 view .LVU969
	call8	_ZN13RampGenerator15setAccelerationEl		#
.LVL233:
	.loc 4 296 31 view .LVU970
.LBE425:
.LBE424:
	.loc 1 421 5 is_stmt 1 view .LVU971
	.loc 1 421 10 view .LVU972
	.loc 1 421 15 view .LVU973
	.loc 1 421 47 view .LVU974
	.loc 1 421 52 view .LVU975
	.loc 1 421 121 discriminator 2 view .LVU976
	.loc 1 421 121 discriminator 7 view .LVU977
	.loc 1 421 121 discriminator 12 view .LVU978
.LBB426:
	.loc 1 421 123 discriminator 17 view .LVU979
.LBB427:
	.loc 1 421 148 discriminator 17 view .LVU980
	.loc 1 421 183 discriminator 17 view .LVU981
	.loc 1 421 223 view .LVU982
.LBE427:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:421:     ESP_LOGI(TAG, "[%s] Наведение: %" PRId32 " → %" PRId32 " шагов",
	.loc 1 421 130 is_stmt 0 discriminator 17 view .LVU983
	call8	esp_log_timestamp		#
.LVL234:
	mov.n	a6, a10	# _21, _21
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:421:     ESP_LOGI(TAG, "[%s] Наведение: %" PRId32 " → %" PRId32 " шагов",
	.loc 1 421 66 discriminator 21 view .LVU984
	addx4	a8, a2, a2	#, tmp80, a, a
	addx2	a8, a8, a2	#, tmp82, tmp80, a
	l32r	a9, .LC101	#, tmp77
	addx4	a8, a8, a9	#, tmp84, tmp82, tmp77
	l32i.n	a7, a8, 0	# AXES[a$579_23].name, _24
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:421:     ESP_LOGI(TAG, "[%s] Наведение: %" PRId32 " → %" PRId32 " шагов",
	.loc 1 421 130 discriminator 21 view .LVU985
	mov.n	a10, a3	#, stepper
	call8	_ZNK16FastAccelStepper18getCurrentPositionEv		#
.LVL235:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:421:     ESP_LOGI(TAG, "[%s] Наведение: %" PRId32 " → %" PRId32 " шагов",
	.loc 1 421 130 discriminator 22 view .LVU986
	l32r	a11, .LC102	#, tmp85
	mov.n	a3, a5	# position, position
.LVL236:
	.loc 1 421 130 discriminator 22 view .LVU987
	s32i.n	a5, sp, 4	#, position
	s32i.n	a10, sp, 0	#, _25
	mov.n	a15, a7	#, _24
	mov.n	a14, a11	#, tmp85
	mov.n	a13, a6	#, _21
	l32r	a12, .LC106	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL237:
	.loc 1 421 47 is_stmt 1 view .LVU988
	.loc 1 421 10 view .LVU989
.LBE426:
	.loc 1 421 5 view .LVU990
	.loc 1 424 5 view .LVU991
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:424:     esp_err_t err = stepper_move_to(a, position);
	.loc 1 424 36 is_stmt 0 view .LVU992
	mov.n	a11, a5	#, position
	mov.n	a10, a2	#, a
	call8	_Z15stepper_move_to6axis_tl		#
.LVL238:
	mov.n	a2, a10	# <retval>, <retval>
.LVL239:
	.loc 1 425 5 is_stmt 1 view .LVU993
.LBB428:
	bnez.n	a10, .L77	# <retval>,
.LVL240:
	.loc 1 426 9 view .LVU994
	.loc 1 426 14 view .LVU995
	.loc 1 426 19 view .LVU996
	.loc 1 426 51 view .LVU997
	.loc 1 426 56 view .LVU998
	.loc 1 426 122 discriminator 2 view .LVU999
	.loc 1 426 122 discriminator 6 view .LVU1000
	.loc 1 426 122 discriminator 10 view .LVU1001
.LBB429:
	.loc 1 426 124 discriminator 14 view .LVU1002
.LBB430:
	.loc 1 426 149 discriminator 14 view .LVU1003
	.loc 1 426 184 discriminator 14 view .LVU1004
	.loc 1 426 224 view .LVU1005
.LBE430:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:426:         ESP_LOGI(TAG, "[%s] Наведение: на месте", AXES[a].name);
	.loc 1 426 131 is_stmt 0 discriminator 14 view .LVU1006
	call8	esp_log_timestamp		#
.LVL241:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:426:         ESP_LOGI(TAG, "[%s] Наведение: на месте", AXES[a].name);
	.loc 1 426 131 discriminator 17 view .LVU1007
	l32r	a11, .LC102	#, tmp88
	mov.n	a15, a7	#, _24
	mov.n	a14, a11	#, tmp88
	mov.n	a13, a10	#, _44
	l32r	a12, .LC108	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL242:
	.loc 1 426 51 is_stmt 1 view .LVU1008
	.loc 1 426 14 view .LVU1009
	.loc 1 426 9 view .LVU1010
.LBE429:
	j	.L77		#
.LVL243:
.L80:
	.loc 1 426 9 is_stmt 0 view .LVU1011
.LBE428:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:413:     if (stepper == nullptr) return ESP_ERR_INVALID_STATE;
	.loc 1 413 36 discriminator 1 view .LVU1012
	movi	a2, 0x103	# <retval>,
.LVL244:
.L77:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:429: }
	.loc 1 429 1 view .LVU1013
	retw.n	
.LFE1197:
	.size	_Z15stepper_slew_to6axis_tl, .-_Z15stepper_slew_to6axis_tl
	.section	.rodata._Z16stepper_slew_run6axis_tb.str1.4,"aMS",@progbits,1
	.align	4
.LC109:
	.string	"runForward"
	.align	4
.LC111:
	.string	"runBackward"
	.align	4
.LC113:
	.base64	"0LLQv9C10YDRkdC0AA=="
	.align	4
.LC115:
	.base64	"0L3QsNC30LDQtAA="
	.align	4
.LC120:
	.base64	"VyAoJWx1KSAlczogWyVzXSDQndCw0LLQtdC00LXQvdC40LUg0L3QtSDQt9Cw0L/Rg9GJ0LXQvdC+OiDQtNCy0LjQttC10L3QuNC1INC30LDQsdC70L7QutC40YDQvtCy0LDQvdC+ICjQsNCy0LDRgNC40Y8g0LTRgNCw0LnQstC10YDQsCkKAA=="
	.align	4
.LC123:
	.base64	"RSAoJWx1KSAlczogWyVzXSDQndCw0LLQtdC00LXQvdC40LU6ICVzOiAlcwoA"
	.align	4
.LC125:
	.base64	"SSAoJWx1KSAlczogWyVzXSDQndCw0LLQtdC00LXQvdC40LUgJXMg0LTQviDQutC+0LzQsNC90LTRiyDRgdGC0L7QvywgJWx1INCT0YYKAA=="
	.section	.text._Z16stepper_slew_run6axis_tb,"ax",@progbits
	.literal_position
	.literal .LC110, .LC109
	.literal .LC112, .LC111
	.literal .LC114, .LC113
	.literal .LC116, .LC115
	.literal .LC117, _ZL14motion_blocked
	.literal .LC118, AXES
	.literal .LC119, .LC14
	.literal .LC121, .LC120
	.literal .LC122, .LC103
	.literal .LC124, .LC123
	.literal .LC126, .LC125
	.align	4
	.global	_Z16stepper_slew_run6axis_tb
	.type	_Z16stepper_slew_run6axis_tb, @function
_Z16stepper_slew_run6axis_tb:
.LVL245:
.LFB1198:
	.loc 1 440 52 is_stmt 1 view -0
	.loc 1 440 52 is_stmt 0 view .LVU1015
	entry	sp, 48	#
.LCFI15:
	extui	a7, a3, 0, 8	# forward, forward
	.loc 1 441 5 is_stmt 1 view .LVU1016
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:441:     FastAccelStepper *stepper = axis_stepper(a);
	.loc 1 441 45 is_stmt 0 view .LVU1017
	mov.n	a10, a2	#, a
	call8	_ZL12axis_stepper6axis_t		#
.LVL246:
	mov.n	a3, a10	# stepper, stepper
.LVL247:
	.loc 1 442 5 is_stmt 1 view .LVU1018
	beqz.n	a10, .L90	# stepper,
	.loc 1 444 5 view .LVU1019
.LVL248:
.LBB431:
.LBB432:
.LBI432:
	.loc 7 95 5 view .LVU1020
	.loc 7 96 7 view .LVU1021
.LBB433:
.LBI433:
	.loc 8 494 7 view .LVU1022
.LBB434:
	.loc 8 498 2 view .LVU1023
	.loc 8 499 2 view .LVU1024
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/bits/atomic_base.h:501: 	return __atomic_load_n(&_M_i, int(__m));
	.loc 8 501 24 is_stmt 0 view .LVU1025
	memw	
	l32r	a8, .LC117	#, tmp76
	memw
	l8ui	a8, a8, 0	#,
	memw	
	extui	a8, a8, 0, 8	# _31, tmp77
.LVL249:
	.loc 8 501 24 view .LVU1026
.LBE434:
.LBE433:
.LBE432:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:444:     if (motion_blocked) {
	.loc 1 444 5 discriminator 1 view .LVU1027
	beqz.n	a8, .L83	# _31,
.LBB435:
	.loc 1 445 9 is_stmt 1 view .LVU1028
	.loc 1 445 14 view .LVU1029
	.loc 1 445 19 view .LVU1030
	.loc 1 445 51 view .LVU1031
	.loc 1 445 56 view .LVU1032
	.loc 1 445 204 discriminator 2 view .LVU1033
.LBB436:
	.loc 1 445 261 discriminator 5 view .LVU1034
.LBB437:
	.loc 1 445 286 discriminator 5 view .LVU1035
	.loc 1 445 321 discriminator 5 view .LVU1036
	.loc 1 445 361 view .LVU1037
.LBE437:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:445:         ESP_LOGW(TAG, "[%s] Наведение не запущено: движение заблокировано (авария драйвера)", AXES[a].name);
	.loc 1 445 268 is_stmt 0 discriminator 5 view .LVU1038
	call8	esp_log_timestamp		#
.LVL250:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:445:         ESP_LOGW(TAG, "[%s] Наведение не запущено: движение заблокировано (авария драйвера)", AXES[a].name);
	.loc 1 445 190 discriminator 7 view .LVU1039
	addx4	a8, a2, a2	#, tmp81, a, a
	addx2	a8, a8, a2	#, tmp83, tmp81, a
	l32r	a9, .LC118	#, tmp78
	addx4	a8, a8, a9	#, tmp85, tmp83, tmp78
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:445:         ESP_LOGW(TAG, "[%s] Наведение не запущено: движение заблокировано (авария драйвера)", AXES[a].name);
	.loc 1 445 268 discriminator 7 view .LVU1040
	l32r	a11, .LC119	#, tmp86
	l32i.n	a15, a8, 0	# AXES[a$608_4].name,
	mov.n	a14, a11	#, tmp86
	mov.n	a13, a10	#, _2
	l32r	a12, .LC121	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL251:
	.loc 1 445 51 is_stmt 1 view .LVU1041
	.loc 1 445 14 view .LVU1042
.LBE436:
	.loc 1 445 9 view .LVU1043
	.loc 1 446 9 view .LVU1044
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:446:         return ESP_ERR_INVALID_STATE;
	.loc 1 446 16 is_stmt 0 view .LVU1045
	movi	a2, 0x103	# <retval>,
.LVL252:
	.loc 1 446 16 view .LVU1046
	j	.L81		#
.LVL253:
.L83:
	.loc 1 446 16 view .LVU1047
.LBE435:
.LBE431:
	.loc 1 449 5 is_stmt 1 view .LVU1048
.LBB438:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:449:     if (stepper->setSpeedInHz(slew_speed_hz(a)) != 0) {
	.loc 1 449 30 is_stmt 0 view .LVU1049
	mov.n	a10, a2	#, a
	call8	_ZL13slew_speed_hz6axis_t		#
.LVL254:
	mov.n	a6, a10	# _6, _6
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:449:     if (stepper->setSpeedInHz(slew_speed_hz(a)) != 0) {
	.loc 1 449 30 discriminator 1 view .LVU1050
	mov.n	a11, a10	#, _6
	mov.n	a10, a3	#, stepper
	call8	_ZN16FastAccelStepper12setSpeedInHzEm		#
.LVL255:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:449:     if (stepper->setSpeedInHz(slew_speed_hz(a)) != 0) {
	.loc 1 449 5 discriminator 2 view .LVU1051
	beqz.n	a10, .L84	# tmp132,
.LBB439:
	.loc 1 450 9 is_stmt 1 view .LVU1052
	.loc 1 450 14 view .LVU1053
	.loc 1 450 19 view .LVU1054
	.loc 1 450 52 view .LVU1055
	.loc 1 450 57 view .LVU1056
.LBB440:
	.loc 1 450 116 discriminator 1 view .LVU1057
.LBB441:
	.loc 1 450 141 discriminator 1 view .LVU1058
	.loc 1 450 176 discriminator 1 view .LVU1059
	.loc 1 450 217 view .LVU1060
.LBE441:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:450:         ESP_LOGE(TAG, "[%s] Наведение: недопустимая скорость %" PRIu32 " Гц", AXES[a].name, slew_speed_hz(a));
	.loc 1 450 123 is_stmt 0 discriminator 1 view .LVU1061
	call8	esp_log_timestamp		#
.LVL256:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:450:         ESP_LOGE(TAG, "[%s] Наведение: недопустимая скорость %" PRIu32 " Гц", AXES[a].name, slew_speed_hz(a));
	.loc 1 450 64 discriminator 3 view .LVU1062
	addx4	a8, a2, a2	#, tmp93, a, a
	addx2	a8, a8, a2	#, tmp95, tmp93, a
	l32r	a9, .LC118	#, tmp90
	addx4	a8, a8, a9	#, tmp97, tmp95, tmp90
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:450:         ESP_LOGE(TAG, "[%s] Наведение: недопустимая скорость %" PRIu32 " Гц", AXES[a].name, slew_speed_hz(a));
	.loc 1 450 123 discriminator 4 view .LVU1063
	l32r	a11, .LC119	#, tmp98
	s32i.n	a6, sp, 0	#, _6
	l32i.n	a15, a8, 0	# AXES[a$626_11].name,
	mov.n	a14, a11	#, tmp98
	mov.n	a13, a10	#, _9
	l32r	a12, .LC122	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL257:
	.loc 1 450 52 is_stmt 1 view .LVU1064
	.loc 1 450 14 view .LVU1065
.LBE440:
	.loc 1 450 9 view .LVU1066
	.loc 1 451 9 view .LVU1067
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:451:         return ESP_FAIL;
	.loc 1 451 17 is_stmt 0 view .LVU1068
	movi.n	a2, -1	# <retval>,
.LVL258:
	.loc 1 451 17 view .LVU1069
	j	.L81		#
.LVL259:
.L84:
	.loc 1 451 17 view .LVU1070
.LBE439:
.LBE438:
	.loc 1 453 5 is_stmt 1 view .LVU1071
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:453:     stepper->setAcceleration(slew_accel(a));
	.loc 1 453 29 is_stmt 0 view .LVU1072
	mov.n	a10, a2	#, a
	call8	_ZL10slew_accel6axis_t		#
.LVL260:
.LBB442:
.LBI442:
	.loc 4 295 17 is_stmt 1 view .LVU1073
.LBB443:
	.loc 4 296 5 view .LVU1074
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/FastAccelStepper.h:296:     return _rg.setAcceleration(step_s_s);
	.loc 4 296 31 is_stmt 0 view .LVU1075
	mov.n	a11, a10	#, _19
	addi.n	a10, a3, 4	#, stepper,
.LVL261:
	.loc 4 296 31 view .LVU1076
	call8	_ZN13RampGenerator15setAccelerationEl		#
.LVL262:
	.loc 4 296 31 view .LVU1077
.LBE443:
.LBE442:
	.loc 1 455 5 is_stmt 1 view .LVU1078
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:455:     MoveResultCode res = forward ? stepper->runForward() : stepper->runBackward();
	.loc 1 455 34 is_stmt 0 view .LVU1079
	beqz.n	a7, .L85	# forward,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:455:     MoveResultCode res = forward ? stepper->runForward() : stepper->runBackward();
	.loc 1 455 55 discriminator 1 view .LVU1080
	mov.n	a10, a3	#, stepper
	call8	_ZN16FastAccelStepper10runForwardEv		#
.LVL263:
	mov.n	a3, a10	# res, res
.LVL264:
	.loc 1 455 55 discriminator 1 view .LVU1081
	j	.L86		#
.LVL265:
.L85:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:455:     MoveResultCode res = forward ? stepper->runForward() : stepper->runBackward();
	.loc 1 455 80 discriminator 2 view .LVU1082
	mov.n	a10, a3	#, stepper
	call8	_ZN16FastAccelStepper11runBackwardEv		#
.LVL266:
	mov.n	a3, a10	# res, res
.LVL267:
.L86:
	.loc 1 456 5 is_stmt 1 view .LVU1083
.LBB444:
	beqz.n	a3, .L87	# res,
.LBB445:
	.loc 1 457 9 view .LVU1084
	.loc 1 457 14 view .LVU1085
	.loc 1 457 19 view .LVU1086
	.loc 1 457 52 view .LVU1087
	.loc 1 457 57 view .LVU1088
.LBB446:
	.loc 1 457 116 discriminator 1 view .LVU1089
.LBB447:
	.loc 1 457 141 discriminator 1 view .LVU1090
	.loc 1 457 176 discriminator 1 view .LVU1091
	.loc 1 457 217 view .LVU1092
.LBE447:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:457:         ESP_LOGE(TAG, "[%s] Наведение: %s: %s", AXES[a].name, forward ? "runForward" : "runBackward", toString(res));
	.loc 1 457 123 is_stmt 0 discriminator 1 view .LVU1093
	call8	esp_log_timestamp		#
.LVL268:
	mov.n	a6, a10	# _21, _21
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:457:         ESP_LOGE(TAG, "[%s] Наведение: %s: %s", AXES[a].name, forward ? "runForward" : "runBackward", toString(res));
	.loc 1 457 99 discriminator 3 view .LVU1094
	addx4	a8, a2, a2	#, tmp107, a, a
	addx2	a8, a8, a2	#, tmp109, tmp107, a
	l32r	a9, .LC118	#, tmp104
	addx4	a8, a8, a9	#, tmp111, tmp109, tmp104
	l32i.n	a2, a8, 0	# AXES[a$647_23].name, _24
.LVL269:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:457:         ESP_LOGE(TAG, "[%s] Наведение: %s: %s", AXES[a].name, forward ? "runForward" : "runBackward", toString(res));
	.loc 1 457 123 discriminator 3 view .LVU1095
	beqz.n	a7, .L91	# forward,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:457:         ESP_LOGE(TAG, "[%s] Наведение: %s: %s", AXES[a].name, forward ? "runForward" : "runBackward", toString(res));
	.loc 1 457 123 discriminator 4 view .LVU1096
	l32r	a7, .LC110	#, iftmp$648_55
.LVL270:
	.loc 1 457 123 discriminator 4 view .LVU1097
	j	.L88		#
.L91:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:457:         ESP_LOGE(TAG, "[%s] Наведение: %s: %s", AXES[a].name, forward ? "runForward" : "runBackward", toString(res));
	.loc 1 457 123 discriminator 5 view .LVU1098
	l32r	a7, .LC112	#, iftmp$648_55
.L88:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:457:         ESP_LOGE(TAG, "[%s] Наведение: %s: %s", AXES[a].name, forward ? "runForward" : "runBackward", toString(res));
	.loc 1 457 123 discriminator 7 view .LVU1099
	mov.n	a10, a3	#, res
	call8	_ZL8toString14MoveResultCode		#
.LVL271:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:457:         ESP_LOGE(TAG, "[%s] Наведение: %s: %s", AXES[a].name, forward ? "runForward" : "runBackward", toString(res));
	.loc 1 457 123 discriminator 8 view .LVU1100
	l32r	a11, .LC119	#, tmp112
	s32i.n	a10, sp, 4	#, _25
	s32i.n	a7, sp, 0	#, iftmp$648_55
	mov.n	a15, a2	#, _24
	mov.n	a14, a11	#, tmp112
	mov.n	a13, a6	#, _21
	l32r	a12, .LC124	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL272:
	.loc 1 457 52 is_stmt 1 view .LVU1101
	.loc 1 457 14 view .LVU1102
.LBE446:
	.loc 1 457 9 view .LVU1103
	.loc 1 458 9 view .LVU1104
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:458:         return ESP_FAIL;
	.loc 1 458 17 is_stmt 0 view .LVU1105
	movi.n	a2, -1	# <retval>,
	j	.L81		#
.LVL273:
.L87:
	.loc 1 458 17 view .LVU1106
.LBE445:
.LBE444:
	.loc 1 461 5 is_stmt 1 view .LVU1107
	.loc 1 461 10 view .LVU1108
	.loc 1 461 15 view .LVU1109
	.loc 1 461 47 view .LVU1110
	.loc 1 461 52 view .LVU1111
	.loc 1 461 133 discriminator 2 view .LVU1112
	.loc 1 461 133 discriminator 11 view .LVU1113
	.loc 1 461 133 discriminator 20 view .LVU1114
.LBB448:
	.loc 1 461 135 discriminator 29 view .LVU1115
.LBB449:
	.loc 1 461 160 discriminator 29 view .LVU1116
	.loc 1 461 195 discriminator 29 view .LVU1117
	.loc 1 461 235 view .LVU1118
.LBE449:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:461:     ESP_LOGI(TAG, "[%s] Наведение %s до команды стоп, %" PRIu32 " Гц",
	.loc 1 461 142 is_stmt 0 discriminator 29 view .LVU1119
	call8	esp_log_timestamp		#
.LVL274:
	mov.n	a13, a10	# _61, _61
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:461:     ESP_LOGI(TAG, "[%s] Наведение %s до команды стоп, %" PRIu32 " Гц",
	.loc 1 461 60 discriminator 37 view .LVU1120
	addx4	a8, a2, a2	#, tmp118, a, a
	addx2	a8, a8, a2	#, tmp120, tmp118, a
	l32r	a9, .LC118	#, tmp115
	addx4	a8, a8, a9	#, tmp122, tmp120, tmp115
	l32i.n	a15, a8, 0	# AXES[a$692_63].name, _64
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:461:     ESP_LOGI(TAG, "[%s] Наведение %s до команды стоп, %" PRIu32 " Гц",
	.loc 1 461 142 discriminator 37 view .LVU1121
	beqz.n	a7, .L92	# forward,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:461:     ESP_LOGI(TAG, "[%s] Наведение %s до команды стоп, %" PRIu32 " Гц",
	.loc 1 461 142 discriminator 38 view .LVU1122
	l32r	a8, .LC114	#, iftmp$693_56
	j	.L89		#
.L92:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:461:     ESP_LOGI(TAG, "[%s] Наведение %s до команды стоп, %" PRIu32 " Гц",
	.loc 1 461 142 discriminator 39 view .LVU1123
	l32r	a8, .LC116	#, iftmp$693_56
.L89:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:461:     ESP_LOGI(TAG, "[%s] Наведение %s до команды стоп, %" PRIu32 " Гц",
	.loc 1 461 142 discriminator 42 view .LVU1124
	l32r	a11, .LC119	#, tmp123
	s32i.n	a6, sp, 4	#, _6
	s32i.n	a8, sp, 0	#, iftmp$693_56
	mov.n	a14, a11	#, tmp123
	l32r	a12, .LC126	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL275:
	.loc 1 461 47 is_stmt 1 view .LVU1125
	.loc 1 461 10 view .LVU1126
.LBE448:
	.loc 1 461 5 view .LVU1127
	.loc 1 463 5 view .LVU1128
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:463:     return ESP_OK;
	.loc 1 463 12 is_stmt 0 view .LVU1129
	movi.n	a2, 0	# <retval>,
.LVL276:
	.loc 1 463 12 view .LVU1130
	j	.L81		#
.LVL277:
.L90:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:442:     if (stepper == nullptr) return ESP_ERR_INVALID_STATE;
	.loc 1 442 36 discriminator 1 view .LVU1131
	movi	a2, 0x103	# <retval>,
.LVL278:
.L81:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:464: }
	.loc 1 464 1 view .LVU1132
	retw.n	
.LFE1198:
	.size	_Z16stepper_slew_run6axis_tb, .-_Z16stepper_slew_run6axis_tb
	.section	.text._Z12stepper_stop6axis_t,"ax",@progbits
	.literal_position
	.literal .LC127, _ZL8steppers
	.align	4
	.global	_Z12stepper_stop6axis_t
	.type	_Z12stepper_stop6axis_t, @function
_Z12stepper_stop6axis_t:
.LVL279:
.LFB1199:
	.loc 1 471 29 is_stmt 1 view -0
	.loc 1 471 29 is_stmt 0 view .LVU1134
	entry	sp, 32	#
.LCFI16:
	.loc 1 472 5 is_stmt 1 view .LVU1135
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:472:     FastAccelStepper *stepper = steppers[a];
	.loc 1 472 23 is_stmt 0 view .LVU1136
	l32r	a8, .LC127	#, tmp46
	addx4	a2, a2, a8	#, tmp48, a, tmp46
.LVL280:
	.loc 1 472 23 view .LVU1137
	l32i.n	a2, a2, 0	# steppers[a$694_1], stepper
.LVL281:
	.loc 1 473 5 is_stmt 1 view .LVU1138
	beqz.n	a2, .L93	# stepper,
	.loc 1 475 5 view .LVU1139
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:475:     stepper->stopMove();
	.loc 1 475 22 is_stmt 0 view .LVU1140
	mov.n	a10, a2	#, stepper
	call8	_ZN16FastAccelStepper8stopMoveEv		#
.LVL282:
	.loc 1 476 5 is_stmt 1 view .LVU1141
	j	.L95		#
.L96:
	.loc 1 477 9 view .LVU1142
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:477:         vTaskDelay(pdMS_TO_TICKS(10));
	.loc 1 477 19 is_stmt 0 view .LVU1143
	movi.n	a10, 1	#,
	call8	vTaskDelay		#
.LVL283:
.L95:
	.loc 1 476 30 is_stmt 1 view .LVU1144
	mov.n	a10, a2	#, stepper
	call8	_ZNK16FastAccelStepper9isRunningEv		#
.LVL284:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:476:     while (stepper->isRunning()) {
	.loc 1 476 30 is_stmt 0 discriminator 1 view .LVU1145
	bnez.n	a10, .L96	# tmp51,
.L93:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:479: }
	.loc 1 479 1 view .LVU1146
	retw.n	
.LFE1199:
	.size	_Z12stepper_stop6axis_t, .-_Z12stepper_stop6axis_t
	.section	.text._Z22stepper_slew_speed_mhz6axis_t,"ax",@progbits
	.align	4
	.global	_Z22stepper_slew_speed_mhz6axis_t
	.type	_Z22stepper_slew_speed_mhz6axis_t, @function
_Z22stepper_slew_speed_mhz6axis_t:
.LVL285:
.LFB1200:
	.loc 1 481 43 is_stmt 1 view -0
	.loc 1 481 43 is_stmt 0 view .LVU1148
	entry	sp, 32	#
.LCFI17:
	mov.n	a10, a2	# a, a
	.loc 1 482 5 is_stmt 1 view .LVU1149
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:482:     return slew_speed_hz(a) * 1000;
	.loc 1 482 25 is_stmt 0 view .LVU1150
	call8	_ZL13slew_speed_hz6axis_t		#
.LVL286:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:482:     return slew_speed_hz(a) * 1000;
	.loc 1 482 31 discriminator 1 view .LVU1151
	slli	a2, a10, 5	# tmp47, _1,
.LVL287:
	.loc 1 482 31 discriminator 1 view .LVU1152
	sub	a2, a2, a10	# tmp48, tmp47, _1
	addx4	a2, a2, a10	#, _4, tmp48, _1
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:483: }
	.loc 1 483 1 view .LVU1153
	slli	a2, a2, 3	#, _4,
	retw.n	
.LFE1200:
	.size	_Z22stepper_slew_speed_mhz6axis_t, .-_Z22stepper_slew_speed_mhz6axis_t
	.section	.rodata._Z15stepper_run_mhz6axis_tl.str1.4,"aMS",@progbits,1
	.align	4
.LC133:
	.base64	"VyAoJWx1KSAlczogWyVzXSDQlNCy0LjQttC10L3QuNC1INC90LUg0LfQsNC/0YPRidC10L3Qvjog0LfQsNCx0LvQvtC60LjRgNC+0LLQsNC90L4gKNCw0LLQsNGA0LjRjyDQtNGA0LDQudCy0LXRgNCwKQoA"
	.align	4
.LC135:
	.base64	"RSAoJWx1KSAlczogWyVzXSDQndC10LTQvtC/0YPRgdGC0LjQvNCw0Y8g0YHQutC+0YDQvtGB0YLRjCAlbHUg0LzQk9GGCgA="
	.align	4
.LC137:
	.string	"E (%lu) %s: [%s] %s: %s\n"
	.section	.text._Z15stepper_run_mhz6axis_tl,"ax",@progbits
	.literal_position
	.literal .LC128, .LC109
	.literal .LC129, .LC111
	.literal .LC130, _ZL14motion_blocked
	.literal .LC131, AXES
	.literal .LC132, .LC14
	.literal .LC134, .LC133
	.literal .LC136, .LC135
	.literal .LC138, .LC137
	.align	4
	.global	_Z15stepper_run_mhz6axis_tl
	.type	_Z15stepper_run_mhz6axis_tl, @function
_Z15stepper_run_mhz6axis_tl:
.LVL288:
.LFB1201:
	.loc 1 494 56 is_stmt 1 view -0
	.loc 1 494 56 is_stmt 0 view .LVU1155
	entry	sp, 48	#
.LCFI18:
	mov.n	a10, a2	# a, a
	mov.n	a6, a2	# a, a
	.loc 1 495 5 is_stmt 1 view .LVU1156
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:495:     FastAccelStepper *stepper = axis_stepper(a);
	.loc 1 495 45 is_stmt 0 view .LVU1157
	call8	_ZL12axis_stepper6axis_t		#
.LVL289:
	mov.n	a2, a10	# stepper, stepper
.LVL290:
	.loc 1 496 5 is_stmt 1 view .LVU1158
	beqz.n	a10, .L107	# stepper,
	.loc 1 498 5 view .LVU1159
	bnez.n	a3, .L100	# speed_mhz,
	.loc 1 499 9 view .LVU1160
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:499:         stepper->stopMove();   // плавно, не ждёт
	.loc 1 499 26 is_stmt 0 view .LVU1161
	call8	_ZN16FastAccelStepper8stopMoveEv		#
.LVL291:
	.loc 1 500 9 is_stmt 1 view .LVU1162
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:500:         return ESP_OK;
	.loc 1 500 16 is_stmt 0 view .LVU1163
	mov.n	a2, a3	# <retval>, speed_mhz
.LVL292:
	.loc 1 500 16 view .LVU1164
	j	.L98		#
.LVL293:
.L100:
	.loc 1 503 5 is_stmt 1 view .LVU1165
.LBB450:
.LBB451:
.LBI451:
	.loc 7 95 5 view .LVU1166
	.loc 7 96 7 view .LVU1167
.LBB452:
.LBI452:
	.loc 8 494 7 view .LVU1168
.LBB453:
	.loc 8 498 2 view .LVU1169
	.loc 8 499 2 view .LVU1170
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/bits/atomic_base.h:501: 	return __atomic_load_n(&_M_i, int(__m));
	.loc 8 501 24 is_stmt 0 view .LVU1171
	memw	
	l32r	a8, .LC130	#, tmp70
	memw
	l8ui	a8, a8, 0	#,
	memw	
	extui	a8, a8, 0, 8	# _42, tmp71
.LVL294:
	.loc 8 501 24 view .LVU1172
.LBE453:
.LBE452:
.LBE451:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:503:     if (motion_blocked) {
	.loc 1 503 5 discriminator 1 view .LVU1173
	beqz.n	a8, .L101	# _42,
.LBB454:
	.loc 1 504 9 is_stmt 1 view .LVU1174
	.loc 1 504 14 view .LVU1175
	.loc 1 504 19 view .LVU1176
	.loc 1 504 51 view .LVU1177
	.loc 1 504 56 view .LVU1178
	.loc 1 504 185 discriminator 2 view .LVU1179
.LBB455:
	.loc 1 504 242 discriminator 5 view .LVU1180
.LBB456:
	.loc 1 504 267 discriminator 5 view .LVU1181
	.loc 1 504 302 discriminator 5 view .LVU1182
	.loc 1 504 342 view .LVU1183
.LBE456:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:504:         ESP_LOGW(TAG, "[%s] Движение не запущено: заблокировано (авария драйвера)", AXES[a].name);
	.loc 1 504 249 is_stmt 0 discriminator 5 view .LVU1184
	call8	esp_log_timestamp		#
.LVL295:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:504:         ESP_LOGW(TAG, "[%s] Движение не запущено: заблокировано (авария драйвера)", AXES[a].name);
	.loc 1 504 171 discriminator 7 view .LVU1185
	addx4	a8, a6, a6	#, tmp75, a, a
	addx2	a8, a8, a6	#, tmp77, tmp75, a
	l32r	a9, .LC131	#, tmp72
	addx4	a8, a8, a9	#, tmp79, tmp77, tmp72
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:504:         ESP_LOGW(TAG, "[%s] Движение не запущено: заблокировано (авария драйвера)", AXES[a].name);
	.loc 1 504 249 discriminator 7 view .LVU1186
	l32r	a11, .LC132	#, tmp80
	l32i.n	a15, a8, 0	# AXES[a$704_4].name,
	mov.n	a14, a11	#, tmp80
	mov.n	a13, a10	#, _2
	l32r	a12, .LC134	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL296:
	.loc 1 504 51 is_stmt 1 view .LVU1187
	.loc 1 504 14 view .LVU1188
.LBE455:
	.loc 1 504 9 view .LVU1189
	.loc 1 505 9 view .LVU1190
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:505:         return ESP_ERR_INVALID_STATE;
	.loc 1 505 16 is_stmt 0 view .LVU1191
	movi	a2, 0x103	# <retval>,
.LVL297:
	.loc 1 505 16 view .LVU1192
	j	.L98		#
.LVL298:
.L101:
	.loc 1 505 16 view .LVU1193
.LBE454:
.LBE450:
	.loc 1 508 5 is_stmt 1 view .LVU1194
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:508:     uint32_t abs_mhz = (uint32_t)(speed_mhz > 0 ? speed_mhz : -(int64_t)speed_mhz);
	.loc 1 508 14 is_stmt 0 view .LVU1195
	abs	a7, a3	# abs_mhz, speed_mhz
.LVL299:
	.loc 1 509 5 is_stmt 1 view .LVU1196
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:509:     if (abs_mhz > stepper_slew_speed_mhz(a)) abs_mhz = stepper_slew_speed_mhz(a);
	.loc 1 509 41 is_stmt 0 view .LVU1197
	mov.n	a10, a6	#, a
	call8	_Z22stepper_slew_speed_mhz6axis_t		#
.LVL300:
	mov.n	a5, a10	# _13, _13
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:509:     if (abs_mhz > stepper_slew_speed_mhz(a)) abs_mhz = stepper_slew_speed_mhz(a);
	.loc 1 509 5 discriminator 1 view .LVU1198
	bltu	a10, a7, .L102	# _13, abs_mhz,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:508:     uint32_t abs_mhz = (uint32_t)(speed_mhz > 0 ? speed_mhz : -(int64_t)speed_mhz);
	.loc 1 508 14 view .LVU1199
	mov.n	a5, a7	# _13, abs_mhz
.L102:
.LVL301:
	.loc 1 511 5 is_stmt 1 view .LVU1200
.LBB457:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:511:     if (stepper->setSpeedInMilliHz(abs_mhz) != 0) {
	.loc 1 511 35 is_stmt 0 view .LVU1201
	mov.n	a11, a5	#, _13
	mov.n	a10, a2	#, stepper
	call8	_ZN16FastAccelStepper17setSpeedInMilliHzEm		#
.LVL302:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:511:     if (stepper->setSpeedInMilliHz(abs_mhz) != 0) {
	.loc 1 511 5 discriminator 1 view .LVU1202
	beqz.n	a10, .L103	# tmp115,
.LBB458:
	.loc 1 512 9 is_stmt 1 view .LVU1203
	.loc 1 512 14 view .LVU1204
	.loc 1 512 19 view .LVU1205
	.loc 1 512 52 view .LVU1206
	.loc 1 512 57 view .LVU1207
.LBB459:
	.loc 1 512 116 discriminator 1 view .LVU1208
.LBB460:
	.loc 1 512 141 discriminator 1 view .LVU1209
	.loc 1 512 176 discriminator 1 view .LVU1210
	.loc 1 512 217 view .LVU1211
.LBE460:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:512:         ESP_LOGE(TAG, "[%s] Недопустимая скорость %" PRIu32 " мГц", AXES[a].name, abs_mhz);
	.loc 1 512 123 is_stmt 0 discriminator 1 view .LVU1212
	call8	esp_log_timestamp		#
.LVL303:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:512:         ESP_LOGE(TAG, "[%s] Недопустимая скорость %" PRIu32 " мГц", AXES[a].name, abs_mhz);
	.loc 1 512 66 discriminator 3 view .LVU1213
	addx4	a8, a6, a6	#, tmp87, a, a
	addx2	a8, a8, a6	#, tmp89, tmp87, a
	l32r	a9, .LC131	#, tmp84
	addx4	a8, a8, a9	#, tmp91, tmp89, tmp84
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:512:         ESP_LOGE(TAG, "[%s] Недопустимая скорость %" PRIu32 " мГц", AXES[a].name, abs_mhz);
	.loc 1 512 123 discriminator 3 view .LVU1214
	l32r	a11, .LC132	#, tmp92
	s32i.n	a5, sp, 0	#, _13
	l32i.n	a15, a8, 0	# AXES[a$722_18].name,
	mov.n	a14, a11	#, tmp92
	mov.n	a13, a10	#, _16
	l32r	a12, .LC136	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL304:
	.loc 1 512 52 is_stmt 1 view .LVU1215
	.loc 1 512 14 view .LVU1216
.LBE459:
	.loc 1 512 9 view .LVU1217
	.loc 1 513 9 view .LVU1218
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:513:         return ESP_FAIL;
	.loc 1 513 17 is_stmt 0 view .LVU1219
	movi.n	a2, -1	# <retval>,
.LVL305:
	.loc 1 513 17 view .LVU1220
	j	.L98		#
.LVL306:
.L103:
	.loc 1 513 17 view .LVU1221
.LBE458:
.LBE457:
	.loc 1 515 5 is_stmt 1 view .LVU1222
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:515:     stepper->setAcceleration(slew_accel(a));
	.loc 1 515 29 is_stmt 0 view .LVU1223
	mov.n	a10, a6	#, a
	call8	_ZL10slew_accel6axis_t		#
.LVL307:
.LBB461:
.LBI461:
	.loc 4 295 17 is_stmt 1 view .LVU1224
.LBB462:
	.loc 4 296 5 view .LVU1225
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/FastAccelStepper.h:296:     return _rg.setAcceleration(step_s_s);
	.loc 4 296 31 is_stmt 0 view .LVU1226
	mov.n	a11, a10	#, _34
	addi.n	a10, a2, 4	#, stepper,
.LVL308:
	.loc 4 296 31 view .LVU1227
	call8	_ZN13RampGenerator15setAccelerationEl		#
.LVL309:
	.loc 4 296 31 view .LVU1228
.LBE462:
.LBE461:
	.loc 1 517 5 is_stmt 1 view .LVU1229
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:517:     MoveResultCode res = speed_mhz > 0 ? stepper->runForward() : stepper->runBackward();
	.loc 1 517 40 is_stmt 0 view .LVU1230
	blti	a3, 1, .L104	# speed_mhz,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:517:     MoveResultCode res = speed_mhz > 0 ? stepper->runForward() : stepper->runBackward();
	.loc 1 517 61 discriminator 1 view .LVU1231
	mov.n	a10, a2	#, stepper
	call8	_ZN16FastAccelStepper10runForwardEv		#
.LVL310:
	mov.n	a2, a10	# res, res
.LVL311:
	.loc 1 517 61 discriminator 1 view .LVU1232
	j	.L105		#
.LVL312:
.L104:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:517:     MoveResultCode res = speed_mhz > 0 ? stepper->runForward() : stepper->runBackward();
	.loc 1 517 86 discriminator 2 view .LVU1233
	mov.n	a10, a2	#, stepper
	call8	_ZN16FastAccelStepper11runBackwardEv		#
.LVL313:
	mov.n	a2, a10	# res, res
.LVL314:
.L105:
	.loc 1 518 5 is_stmt 1 view .LVU1234
.LBB463:
	beqz.n	a2, .L98	# res,
.LBB464:
	.loc 1 519 9 view .LVU1235
	.loc 1 519 14 view .LVU1236
	.loc 1 519 19 view .LVU1237
	.loc 1 519 52 view .LVU1238
	.loc 1 519 57 view .LVU1239
.LBB465:
	.loc 1 519 116 discriminator 1 view .LVU1240
.LBB466:
	.loc 1 519 141 discriminator 1 view .LVU1241
	.loc 1 519 176 discriminator 1 view .LVU1242
	.loc 1 519 217 view .LVU1243
.LBE466:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:519:         ESP_LOGE(TAG, "[%s] %s: %s", AXES[a].name, speed_mhz > 0 ? "runForward" : "runBackward", toString(res));
	.loc 1 519 123 is_stmt 0 discriminator 1 view .LVU1244
	call8	esp_log_timestamp		#
.LVL315:
	mov.n	a7, a10	# _36, _36
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:519:         ESP_LOGE(TAG, "[%s] %s: %s", AXES[a].name, speed_mhz > 0 ? "runForward" : "runBackward", toString(res));
	.loc 1 519 79 discriminator 3 view .LVU1245
	addx4	a8, a6, a6	#, tmp101, a, a
	addx2	a8, a8, a6	#, tmp103, tmp101, a
	l32r	a9, .LC131	#, tmp98
	addx4	a8, a8, a9	#, tmp105, tmp103, tmp98
	l32i.n	a8, a8, 0	# AXES[a$743_38].name, _39
	mov.n	a6, a8	# _39, _39
.LVL316:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:519:         ESP_LOGE(TAG, "[%s] %s: %s", AXES[a].name, speed_mhz > 0 ? "runForward" : "runBackward", toString(res));
	.loc 1 519 123 discriminator 3 view .LVU1246
	blti	a3, 1, .L109	# speed_mhz,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:519:         ESP_LOGE(TAG, "[%s] %s: %s", AXES[a].name, speed_mhz > 0 ? "runForward" : "runBackward", toString(res));
	.loc 1 519 123 discriminator 4 view .LVU1247
	l32r	a3, .LC128	#, iftmp$744_54
.LVL317:
	.loc 1 519 123 discriminator 4 view .LVU1248
	j	.L106		#
.LVL318:
.L109:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:519:         ESP_LOGE(TAG, "[%s] %s: %s", AXES[a].name, speed_mhz > 0 ? "runForward" : "runBackward", toString(res));
	.loc 1 519 123 discriminator 5 view .LVU1249
	l32r	a3, .LC129	#, iftmp$744_54
.LVL319:
.L106:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:519:         ESP_LOGE(TAG, "[%s] %s: %s", AXES[a].name, speed_mhz > 0 ? "runForward" : "runBackward", toString(res));
	.loc 1 519 123 discriminator 7 view .LVU1250
	mov.n	a10, a2	#, res
	call8	_ZL8toString14MoveResultCode		#
.LVL320:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:519:         ESP_LOGE(TAG, "[%s] %s: %s", AXES[a].name, speed_mhz > 0 ? "runForward" : "runBackward", toString(res));
	.loc 1 519 123 discriminator 8 view .LVU1251
	l32r	a11, .LC132	#, tmp106
	s32i.n	a10, sp, 4	#, _40
	s32i.n	a3, sp, 0	#, iftmp$744_54
	mov.n	a15, a6	#, _39
	mov.n	a14, a11	#, tmp106
	mov.n	a13, a7	#, _36
	l32r	a12, .LC138	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL321:
	.loc 1 519 52 is_stmt 1 view .LVU1252
	.loc 1 519 14 view .LVU1253
.LBE465:
	.loc 1 519 9 view .LVU1254
	.loc 1 520 9 view .LVU1255
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:520:         return ESP_FAIL;
	.loc 1 520 17 is_stmt 0 view .LVU1256
	movi.n	a2, -1	# <retval>,
.LVL322:
	.loc 1 520 17 view .LVU1257
	j	.L98		#
.LVL323:
.L107:
	.loc 1 520 17 view .LVU1258
.LBE464:
.LBE463:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:496:     if (stepper == nullptr) return ESP_ERR_INVALID_STATE;
	.loc 1 496 36 discriminator 1 view .LVU1259
	movi	a2, 0x103	# <retval>,
.LVL324:
.L98:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:523: }
	.loc 1 523 1 view .LVU1260
	retw.n	
.LFE1201:
	.size	_Z15stepper_run_mhz6axis_tl, .-_Z15stepper_run_mhz6axis_tl
	.section	.rodata._Z21stepper_move_to_async6axis_tl.str1.4,"aMS",@progbits,1
	.align	4
.LC142:
	.base64	"VyAoJWx1KSAlczogWyVzXSBHb1RvINC90LUg0LfQsNC/0YPRidC10L06INC00LLQuNC20LXQvdC40LUg0LfQsNCx0LvQvtC60LjRgNC+0LLQsNC90L4gKNCw0LLQsNGA0LjRjyDQtNGA0LDQudCy0LXRgNCwKQoA"
	.align	4
.LC144:
	.base64	"RSAoJWx1KSAlczogWyVzXSBHb1RvOiDQvdC10LTQvtC/0YPRgdGC0LjQvNCw0Y8g0YHQutC+0YDQvtGB0YLRjCAlbHUg0JPRhgoA"
	.align	4
.LC146:
	.string	"E (%lu) %s: [%s] GoTo: moveTo: %s\n"
	.align	4
.LC148:
	.base64	"SSAoJWx1KSAlczogWyVzXSBHb1RvOiAlbGQg4oaSICVsZCDRiNCw0LPQvtCyCgA="
	.section	.text._Z21stepper_move_to_async6axis_tl,"ax",@progbits
	.literal_position
	.literal .LC139, _ZL14motion_blocked
	.literal .LC140, AXES
	.literal .LC141, .LC14
	.literal .LC143, .LC142
	.literal .LC145, .LC144
	.literal .LC147, .LC146
	.literal .LC149, .LC148
	.align	4
	.global	_Z21stepper_move_to_async6axis_tl
	.type	_Z21stepper_move_to_async6axis_tl, @function
_Z21stepper_move_to_async6axis_tl:
.LVL325:
.LFB1202:
	.loc 1 531 61 is_stmt 1 view -0
	.loc 1 531 61 is_stmt 0 view .LVU1262
	entry	sp, 48	#
.LCFI19:
	mov.n	a6, a3	# position, position
	.loc 1 532 5 is_stmt 1 view .LVU1263
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:532:     FastAccelStepper *stepper = axis_stepper(a);
	.loc 1 532 45 is_stmt 0 view .LVU1264
	mov.n	a10, a2	#, a
	call8	_ZL12axis_stepper6axis_t		#
.LVL326:
	mov.n	a3, a10	# stepper, stepper
.LVL327:
	.loc 1 533 5 is_stmt 1 view .LVU1265
	beqz.n	a10, .L115	# stepper,
	.loc 1 535 5 view .LVU1266
.LVL328:
.LBB467:
.LBB468:
.LBI468:
	.loc 7 95 5 view .LVU1267
	.loc 7 96 7 view .LVU1268
.LBB469:
.LBI469:
	.loc 8 494 7 view .LVU1269
.LBB470:
	.loc 8 498 2 view .LVU1270
	.loc 8 499 2 view .LVU1271
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/bits/atomic_base.h:501: 	return __atomic_load_n(&_M_i, int(__m));
	.loc 8 501 24 is_stmt 0 view .LVU1272
	memw	
	l32r	a8, .LC139	#, tmp74
	memw
	l8ui	a8, a8, 0	#,
	memw	
	extui	a8, a8, 0, 8	# _48, tmp75
.LVL329:
	.loc 8 501 24 view .LVU1273
.LBE470:
.LBE469:
.LBE468:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:535:     if (motion_blocked) {
	.loc 1 535 5 discriminator 1 view .LVU1274
	beqz.n	a8, .L112	# _48,
.LBB471:
	.loc 1 536 9 is_stmt 1 view .LVU1275
	.loc 1 536 14 view .LVU1276
	.loc 1 536 19 view .LVU1277
	.loc 1 536 51 view .LVU1278
	.loc 1 536 56 view .LVU1279
	.loc 1 536 188 discriminator 2 view .LVU1280
.LBB472:
	.loc 1 536 245 discriminator 5 view .LVU1281
.LBB473:
	.loc 1 536 270 discriminator 5 view .LVU1282
	.loc 1 536 305 discriminator 5 view .LVU1283
	.loc 1 536 345 view .LVU1284
.LBE473:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:536:         ESP_LOGW(TAG, "[%s] GoTo не запущен: движение заблокировано (авария драйвера)", AXES[a].name);
	.loc 1 536 252 is_stmt 0 discriminator 5 view .LVU1285
	call8	esp_log_timestamp		#
.LVL330:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:536:         ESP_LOGW(TAG, "[%s] GoTo не запущен: движение заблокировано (авария драйвера)", AXES[a].name);
	.loc 1 536 174 discriminator 7 view .LVU1286
	addx4	a8, a2, a2	#, tmp79, a, a
	addx2	a8, a8, a2	#, tmp81, tmp79, a
	l32r	a9, .LC140	#, tmp76
	addx4	a8, a8, a9	#, tmp83, tmp81, tmp76
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:536:         ESP_LOGW(TAG, "[%s] GoTo не запущен: движение заблокировано (авария драйвера)", AXES[a].name);
	.loc 1 536 252 discriminator 7 view .LVU1287
	l32r	a11, .LC141	#, tmp84
	l32i.n	a15, a8, 0	# AXES[a$773_4].name,
	mov.n	a14, a11	#, tmp84
	mov.n	a13, a10	#, _2
	l32r	a12, .LC143	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL331:
	.loc 1 536 51 is_stmt 1 view .LVU1288
	.loc 1 536 14 view .LVU1289
.LBE472:
	.loc 1 536 9 view .LVU1290
	.loc 1 537 9 view .LVU1291
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:537:         return ESP_ERR_INVALID_STATE;
	.loc 1 537 16 is_stmt 0 view .LVU1292
	movi	a2, 0x103	# <retval>,
.LVL332:
	.loc 1 537 16 view .LVU1293
	j	.L110		#
.LVL333:
.L112:
	.loc 1 537 16 view .LVU1294
.LBE471:
.LBE467:
	.loc 1 540 5 is_stmt 1 view .LVU1295
.LBB474:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:540:     if (stepper->setSpeedInHz(slew_speed_hz(a)) != 0) {
	.loc 1 540 30 is_stmt 0 view .LVU1296
	mov.n	a10, a2	#, a
	call8	_ZL13slew_speed_hz6axis_t		#
.LVL334:
	mov.n	a7, a10	# _6, _6
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:540:     if (stepper->setSpeedInHz(slew_speed_hz(a)) != 0) {
	.loc 1 540 30 discriminator 1 view .LVU1297
	mov.n	a11, a10	#, _6
	mov.n	a10, a3	#, stepper
	call8	_ZN16FastAccelStepper12setSpeedInHzEm		#
.LVL335:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:540:     if (stepper->setSpeedInHz(slew_speed_hz(a)) != 0) {
	.loc 1 540 5 discriminator 2 view .LVU1298
	beqz.n	a10, .L113	# tmp129,
.LBB475:
	.loc 1 541 9 is_stmt 1 view .LVU1299
	.loc 1 541 14 view .LVU1300
	.loc 1 541 19 view .LVU1301
	.loc 1 541 52 view .LVU1302
	.loc 1 541 57 view .LVU1303
.LBB476:
	.loc 1 541 116 discriminator 1 view .LVU1304
.LBB477:
	.loc 1 541 141 discriminator 1 view .LVU1305
	.loc 1 541 176 discriminator 1 view .LVU1306
	.loc 1 541 217 view .LVU1307
.LBE477:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:541:         ESP_LOGE(TAG, "[%s] GoTo: недопустимая скорость %" PRIu32 " Гц", AXES[a].name, slew_speed_hz(a));
	.loc 1 541 123 is_stmt 0 discriminator 1 view .LVU1308
	call8	esp_log_timestamp		#
.LVL336:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:541:         ESP_LOGE(TAG, "[%s] GoTo: недопустимая скорость %" PRIu32 " Гц", AXES[a].name, slew_speed_hz(a));
	.loc 1 541 64 discriminator 3 view .LVU1309
	addx4	a8, a2, a2	#, tmp91, a, a
	addx2	a8, a8, a2	#, tmp93, tmp91, a
	l32r	a9, .LC140	#, tmp88
	addx4	a8, a8, a9	#, tmp95, tmp93, tmp88
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:541:         ESP_LOGE(TAG, "[%s] GoTo: недопустимая скорость %" PRIu32 " Гц", AXES[a].name, slew_speed_hz(a));
	.loc 1 541 123 discriminator 4 view .LVU1310
	l32r	a11, .LC141	#, tmp96
	s32i.n	a7, sp, 0	#, _6
	l32i.n	a15, a8, 0	# AXES[a$791_11].name,
	mov.n	a14, a11	#, tmp96
	mov.n	a13, a10	#, _9
	l32r	a12, .LC145	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL337:
	.loc 1 541 52 is_stmt 1 view .LVU1311
	.loc 1 541 14 view .LVU1312
.LBE476:
	.loc 1 541 9 view .LVU1313
	.loc 1 542 9 view .LVU1314
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:542:         return ESP_FAIL;
	.loc 1 542 17 is_stmt 0 view .LVU1315
	movi.n	a2, -1	# <retval>,
.LVL338:
	.loc 1 542 17 view .LVU1316
	j	.L110		#
.LVL339:
.L113:
	.loc 1 542 17 view .LVU1317
.LBE475:
.LBE474:
	.loc 1 544 5 is_stmt 1 view .LVU1318
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:544:     stepper->setAcceleration(slew_accel(a));
	.loc 1 544 29 is_stmt 0 view .LVU1319
	mov.n	a10, a2	#, a
	call8	_ZL10slew_accel6axis_t		#
.LVL340:
.LBB478:
.LBI478:
	.loc 4 295 17 is_stmt 1 view .LVU1320
.LBB479:
	.loc 4 296 5 view .LVU1321
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/FastAccelStepper.h:296:     return _rg.setAcceleration(step_s_s);
	.loc 4 296 31 is_stmt 0 view .LVU1322
	mov.n	a11, a10	#, _13
	addi.n	a10, a3, 4	#, stepper,
.LVL341:
	.loc 4 296 31 view .LVU1323
	call8	_ZN13RampGenerator15setAccelerationEl		#
.LVL342:
	.loc 4 296 31 view .LVU1324
.LBE479:
.LBE478:
	.loc 1 546 5 is_stmt 1 view .LVU1325
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:546:     MoveResultCode res = stepper->moveTo(position);
	.loc 1 546 41 is_stmt 0 view .LVU1326
	movi.n	a12, 0	#,
	mov.n	a11, a6	#, position
	mov.n	a10, a3	#, stepper
	call8	_ZN16FastAccelStepper6moveToElb		#
.LVL343:
	mov.n	a7, a10	# res, res
.LVL344:
	.loc 1 547 5 is_stmt 1 view .LVU1327
.LBB480:
	beqz.n	a10, .L114	# res,
.LBB481:
	.loc 1 548 9 view .LVU1328
	.loc 1 548 14 view .LVU1329
	.loc 1 548 19 view .LVU1330
	.loc 1 548 52 view .LVU1331
	.loc 1 548 57 view .LVU1332
.LBB482:
	.loc 1 548 116 discriminator 1 view .LVU1333
.LBB483:
	.loc 1 548 141 discriminator 1 view .LVU1334
	.loc 1 548 176 discriminator 1 view .LVU1335
	.loc 1 548 217 view .LVU1336
.LBE483:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:548:         ESP_LOGE(TAG, "[%s] GoTo: moveTo: %s", AXES[a].name, toString(res));
	.loc 1 548 123 is_stmt 0 discriminator 1 view .LVU1337
	call8	esp_log_timestamp		#
.LVL345:
	.loc 1 548 123 discriminator 1 view .LVU1338
	mov.n	a3, a10	# _15, _15
.LVL346:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:548:         ESP_LOGE(TAG, "[%s] GoTo: moveTo: %s", AXES[a].name, toString(res));
	.loc 1 548 89 discriminator 3 view .LVU1339
	addx4	a8, a2, a2	#, tmp104, a, a
	addx2	a8, a8, a2	#, tmp106, tmp104, a
	l32r	a9, .LC140	#, tmp101
	addx4	a8, a8, a9	#, tmp108, tmp106, tmp101
	l32i.n	a2, a8, 0	# AXES[a$812_17].name, _18
.LVL347:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:548:         ESP_LOGE(TAG, "[%s] GoTo: moveTo: %s", AXES[a].name, toString(res));
	.loc 1 548 123 discriminator 3 view .LVU1340
	mov.n	a10, a7	#, res
	call8	_ZL8toString14MoveResultCode		#
.LVL348:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:548:         ESP_LOGE(TAG, "[%s] GoTo: moveTo: %s", AXES[a].name, toString(res));
	.loc 1 548 123 discriminator 4 view .LVU1341
	l32r	a11, .LC141	#, tmp109
	s32i.n	a10, sp, 0	#, _19
	mov.n	a15, a2	#, _18
	mov.n	a14, a11	#, tmp109
	mov.n	a13, a3	#, _15
	l32r	a12, .LC147	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL349:
	.loc 1 548 52 is_stmt 1 view .LVU1342
	.loc 1 548 14 view .LVU1343
.LBE482:
	.loc 1 548 9 view .LVU1344
	.loc 1 549 9 view .LVU1345
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:549:         return ESP_FAIL;
	.loc 1 549 17 is_stmt 0 view .LVU1346
	movi.n	a2, -1	# <retval>,
	j	.L110		#
.LVL350:
.L114:
	.loc 1 549 17 view .LVU1347
.LBE481:
.LBE480:
	.loc 1 552 5 is_stmt 1 view .LVU1348
	.loc 1 552 10 view .LVU1349
	.loc 1 552 15 view .LVU1350
	.loc 1 552 47 view .LVU1351
	.loc 1 552 52 view .LVU1352
	.loc 1 552 121 discriminator 2 view .LVU1353
	.loc 1 552 121 discriminator 7 view .LVU1354
	.loc 1 552 121 discriminator 12 view .LVU1355
.LBB484:
	.loc 1 552 123 discriminator 17 view .LVU1356
.LBB485:
	.loc 1 552 148 discriminator 17 view .LVU1357
	.loc 1 552 183 discriminator 17 view .LVU1358
	.loc 1 552 223 view .LVU1359
.LBE485:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:552:     ESP_LOGI(TAG, "[%s] GoTo: %" PRId32 " → %" PRId32 " шагов",
	.loc 1 552 130 is_stmt 0 discriminator 17 view .LVU1360
	call8	esp_log_timestamp		#
.LVL351:
	.loc 1 552 130 discriminator 17 view .LVU1361
	mov.n	a7, a10	# _56, _56
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:552:     ESP_LOGI(TAG, "[%s] GoTo: %" PRId32 " → %" PRId32 " шагов",
	.loc 1 552 66 discriminator 21 view .LVU1362
	addx4	a8, a2, a2	#, tmp115, a, a
	addx2	a8, a8, a2	#, tmp117, tmp115, a
	l32r	a9, .LC140	#, tmp112
	addx4	a8, a8, a9	#, tmp119, tmp117, tmp112
	l32i.n	a2, a8, 0	# AXES[a$848_58].name, _59
.LVL352:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:552:     ESP_LOGI(TAG, "[%s] GoTo: %" PRId32 " → %" PRId32 " шагов",
	.loc 1 552 130 discriminator 21 view .LVU1363
	mov.n	a10, a3	#, stepper
	call8	_ZNK16FastAccelStepper18getCurrentPositionEv		#
.LVL353:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:552:     ESP_LOGI(TAG, "[%s] GoTo: %" PRId32 " → %" PRId32 " шагов",
	.loc 1 552 130 discriminator 22 view .LVU1364
	l32r	a11, .LC141	#, tmp120
	s32i.n	a6, sp, 4	#, position
	s32i.n	a10, sp, 0	#, _60
	mov.n	a15, a2	#, _59
	mov.n	a14, a11	#, tmp120
	mov.n	a13, a7	#, _56
	l32r	a12, .LC149	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL354:
	.loc 1 552 47 is_stmt 1 view .LVU1365
	.loc 1 552 10 view .LVU1366
.LBE484:
	.loc 1 552 5 view .LVU1367
	.loc 1 554 5 view .LVU1368
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:554:     return ESP_OK;
	.loc 1 554 12 is_stmt 0 view .LVU1369
	movi.n	a2, 0	# <retval>,
	j	.L110		#
.LVL355:
.L115:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:533:     if (stepper == nullptr) return ESP_ERR_INVALID_STATE;
	.loc 1 533 36 discriminator 1 view .LVU1370
	movi	a2, 0x103	# <retval>,
.LVL356:
.L110:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:555: }
	.loc 1 555 1 view .LVU1371
	retw.n	
.LFE1202:
	.size	_Z21stepper_move_to_async6axis_tl, .-_Z21stepper_move_to_async6axis_tl
	.section	.text._Z18stepper_is_running6axis_t,"ax",@progbits
	.literal_position
	.literal .LC150, _ZL8steppers
	.align	4
	.global	_Z18stepper_is_running6axis_t
	.type	_Z18stepper_is_running6axis_t, @function
_Z18stepper_is_running6axis_t:
.LVL357:
.LFB1203:
	.loc 1 557 35 is_stmt 1 view -0
	.loc 1 557 35 is_stmt 0 view .LVU1373
	entry	sp, 32	#
.LCFI20:
	.loc 1 558 5 is_stmt 1 view .LVU1374
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:558:     return steppers[a] != nullptr && steppers[a]->isRunning();
	.loc 1 558 22 is_stmt 0 view .LVU1375
	l32r	a8, .LC150	#, tmp46
	addx4	a2, a2, a8	#, tmp48, a, tmp46
.LVL358:
	.loc 1 558 22 view .LVU1376
	l32i.n	a10, a2, 0	# steppers[a$850_1], _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:558:     return steppers[a] != nullptr && steppers[a]->isRunning();
	.loc 1 558 35 view .LVU1377
	beqz.n	a10, .L118	# _2,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:558:     return steppers[a] != nullptr && steppers[a]->isRunning();
	.loc 1 558 60 discriminator 1 view .LVU1378
	call8	_ZNK16FastAccelStepper9isRunningEv		#
.LVL359:
	mov.n	a2, a10	# <retval>, <retval>
	j	.L117		#
.L118:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:558:     return steppers[a] != nullptr && steppers[a]->isRunning();
	.loc 1 558 35 discriminator 5 view .LVU1379
	mov.n	a2, a10	# <retval>, _2
.L117:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp:559: }
	.loc 1 559 1 view .LVU1380
	retw.n	
.LFE1203:
	.size	_Z18stepper_is_running6axis_t, .-_Z18stepper_is_running6axis_t
	.section	.bss._ZL14motion_blocked,"aw",@nobits
	.align	4
	.type	_ZL14motion_blocked, @object
	.size	_ZL14motion_blocked, 1
_ZL14motion_blocked:
	.zero	1
	.section	.rodata._ZL12STEPPER_AXES,"a"
	.align	4
	.type	_ZL12STEPPER_AXES, @object
	.size	_ZL12STEPPER_AXES, 8
_ZL12STEPPER_AXES:
	.word	0
	.word	1
	.section	.bss._ZL8steppers,"aw",@nobits
	.align	4
	.type	_ZL8steppers, @object
	.size	_ZL8steppers, 8
_ZL8steppers:
	.zero	8
	.section	.bss._ZL6engine,"aw",@nobits
	.align	4
	.type	_ZL6engine, @object
	.size	_ZL6engine, 180
_ZL6engine:
	.zero	180
	.weak	AXES
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC151:
	.string	"RA"
	.align	4
.LC152:
	.string	"DEC"
	.section	.rodata.AXES,"aG",@progbits,AXES,comdat
	.align	4
	.type	AXES, @object
	.size	AXES, 88
AXES:
# name:
	.word	.LC151
# uart_addr:
	.byte	0
# en_pin:
	.zero	3
	.word	6
# step_pin:
	.word	5
# dir_pin:
	.word	4
# irun:
	.byte	22
# ihold:
	.byte	10
# irun_hot:
	.byte	18
# pwm_grad:
	.byte	36
# mres:
	.byte	2
# shaft:
	.byte	0
# full_steps:
	.zero	2
	.word	200
# microsteps:
	.word	64
# worm_teeth:
	.word	130
# belt_ratio:
	.word	3
# name:
	.word	.LC152
# uart_addr:
	.byte	1
# en_pin:
	.zero	3
	.word	16
# step_pin:
	.word	21
# dir_pin:
	.word	14
# irun:
	.byte	22
# ihold:
	.byte	10
# irun_hot:
	.byte	18
# pwm_grad:
	.byte	36
# mres:
	.byte	2
# shaft:
	.byte	0
# full_steps:
	.zero	2
	.word	200
# microsteps:
	.word	64
# worm_teeth:
	.word	65
# belt_ratio:
	.word	3
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
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI0-.LFB112
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1184
	.4byte	.LFE1184-.LFB1184
	.byte	0x4
	.4byte	.LCFI1-.LFB1184
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB1185
	.4byte	.LFE1185-.LFB1185
	.byte	0x4
	.4byte	.LCFI2-.LFB1185
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB1183
	.4byte	.LFE1183-.LFB1183
	.byte	0x4
	.4byte	.LCFI3-.LFB1183
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI4-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI5-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB1189
	.4byte	.LFE1189-.LFB1189
	.byte	0x4
	.4byte	.LCFI6-.LFB1189
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB1191
	.4byte	.LFE1191-.LFB1191
	.byte	0x4
	.4byte	.LCFI7-.LFB1191
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB1192
	.4byte	.LFE1192-.LFB1192
	.byte	0x4
	.4byte	.LCFI8-.LFB1192
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB1193
	.4byte	.LFE1193-.LFB1193
	.byte	0x4
	.4byte	.LCFI9-.LFB1193
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB1194
	.4byte	.LFE1194-.LFB1194
	.byte	0x4
	.4byte	.LCFI10-.LFB1194
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB1195
	.4byte	.LFE1195-.LFB1195
	.byte	0x4
	.4byte	.LCFI11-.LFB1195
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB1190
	.4byte	.LFE1190-.LFB1190
	.byte	0x4
	.4byte	.LCFI12-.LFB1190
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB1196
	.4byte	.LFE1196-.LFB1196
	.byte	0x4
	.4byte	.LCFI13-.LFB1196
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB1197
	.4byte	.LFE1197-.LFB1197
	.byte	0x4
	.4byte	.LCFI14-.LFB1197
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB1198
	.4byte	.LFE1198-.LFB1198
	.byte	0x4
	.4byte	.LCFI15-.LFB1198
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB1199
	.4byte	.LFE1199-.LFB1199
	.byte	0x4
	.4byte	.LCFI16-.LFB1199
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB1200
	.4byte	.LFE1200-.LFB1200
	.byte	0x4
	.4byte	.LCFI17-.LFB1200
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB1201
	.4byte	.LFE1201-.LFB1201
	.byte	0x4
	.4byte	.LCFI18-.LFB1201
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB1202
	.4byte	.LFE1202-.LFB1202
	.byte	0x4
	.4byte	.LCFI19-.LFB1202
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB1203
	.4byte	.LFE1203-.LFB1203
	.byte	0x4
	.4byte	.LCFI20-.LFB1203
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
	.text
.Letext0:
	.file 9 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/cstdint"
	.file 10 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/cstdlib"
	.file 11 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/type_traits"
	.file 12 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/xtensa-esp-elf/include/c++/15.2.0/xtensa-esp-elf/esp32s3/no-rtti/bits/c++config.h"
	.file 13 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/machine/_default_types.h"
	.file 14 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/lib/gcc/xtensa-esp-elf/15.2.0/include/stddef.h"
	.file 15 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/sys/_stdint.h"
	.file 16 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/stdint.h"
	.file 17 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/stdlib.h"
	.file 18 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_common/include/esp_err.h"
	.file 19 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_hal_gpio/esp32s3/include/soc/gpio_num.h"
	.file 20 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h"
	.file 21 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_level.h"
	.file 22 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_config.h"
	.file 23 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h"
	.file 24 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/fas_arch/common.h"
	.file 25 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_driver_pcnt/include/driver/pulse_cnt.h"
	.file 26 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/pd_esp32/pd_config.h"
	.file 27 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/FastAccelStepperEngine.h"
	.file 28 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/log2/Log2Representation.h"
	.file 29 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/managed_components/gin66__fastaccelstepper/src/fas_ramp/RampCalculator.h"
	.file 30 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.h"
	.file 31 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/task.h"
	.file 32 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log.h"
	.file 33 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_timestamp.h"
	.file 34 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6d4f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x5f
	.4byte	.LASF807
	.byte	0x4
	.4byte	.LASF808
	.4byte	.LASF809
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1a
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x1a
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x60
	.string	"std"
	.byte	0xc
	.2byte	0x150
	.byte	0xb
	.4byte	0xfe8
	.uleb128 0x4a
	.4byte	.LASF134
	.byte	0xc
	.2byte	0x173
	.byte	0x41
	.uleb128 0x4b
	.byte	0xc
	.2byte	0x173
	.byte	0x41
	.4byte	0x47
	.uleb128 0xa
	.byte	0x9
	.byte	0x35
	.byte	0xb
	.4byte	0x119e
	.uleb128 0xa
	.byte	0x9
	.byte	0x36
	.byte	0xb
	.4byte	0x11bb
	.uleb128 0xa
	.byte	0x9
	.byte	0x37
	.byte	0xb
	.4byte	0x11d3
	.uleb128 0xa
	.byte	0x9
	.byte	0x38
	.byte	0xb
	.4byte	0x11f5
	.uleb128 0xa
	.byte	0x9
	.byte	0x3a
	.byte	0xb
	.4byte	0x12a2
	.uleb128 0xa
	.byte	0x9
	.byte	0x3b
	.byte	0xb
	.4byte	0x12ba
	.uleb128 0xa
	.byte	0x9
	.byte	0x3c
	.byte	0xb
	.4byte	0x12d2
	.uleb128 0xa
	.byte	0x9
	.byte	0x3d
	.byte	0xb
	.4byte	0x12ea
	.uleb128 0xa
	.byte	0x9
	.byte	0x3f
	.byte	0xb
	.4byte	0x1242
	.uleb128 0xa
	.byte	0x9
	.byte	0x40
	.byte	0xb
	.4byte	0x125a
	.uleb128 0xa
	.byte	0x9
	.byte	0x41
	.byte	0xb
	.4byte	0x1272
	.uleb128 0xa
	.byte	0x9
	.byte	0x42
	.byte	0xb
	.4byte	0x128a
	.uleb128 0xa
	.byte	0x9
	.byte	0x44
	.byte	0xb
	.4byte	0x1212
	.uleb128 0xa
	.byte	0x9
	.byte	0x45
	.byte	0xb
	.4byte	0x122a
	.uleb128 0xa
	.byte	0x9
	.byte	0x47
	.byte	0xb
	.4byte	0x11aa
	.uleb128 0xa
	.byte	0x9
	.byte	0x48
	.byte	0xb
	.4byte	0x11c7
	.uleb128 0xa
	.byte	0x9
	.byte	0x49
	.byte	0xb
	.4byte	0x11e4
	.uleb128 0xa
	.byte	0x9
	.byte	0x4a
	.byte	0xb
	.4byte	0x1201
	.uleb128 0xa
	.byte	0x9
	.byte	0x4c
	.byte	0xb
	.4byte	0x12ae
	.uleb128 0xa
	.byte	0x9
	.byte	0x4d
	.byte	0xb
	.4byte	0x12c6
	.uleb128 0xa
	.byte	0x9
	.byte	0x4e
	.byte	0xb
	.4byte	0x12de
	.uleb128 0xa
	.byte	0x9
	.byte	0x4f
	.byte	0xb
	.4byte	0x12f6
	.uleb128 0xa
	.byte	0x9
	.byte	0x51
	.byte	0xb
	.4byte	0x124e
	.uleb128 0xa
	.byte	0x9
	.byte	0x52
	.byte	0xb
	.4byte	0x1266
	.uleb128 0xa
	.byte	0x9
	.byte	0x53
	.byte	0xb
	.4byte	0x127e
	.uleb128 0xa
	.byte	0x9
	.byte	0x54
	.byte	0xb
	.4byte	0x1296
	.uleb128 0xa
	.byte	0x9
	.byte	0x56
	.byte	0xb
	.4byte	0x121e
	.uleb128 0xa
	.byte	0x9
	.byte	0x57
	.byte	0xb
	.4byte	0x1236
	.uleb128 0xa
	.byte	0xa
	.byte	0x89
	.byte	0xb
	.4byte	0x1344
	.uleb128 0xa
	.byte	0xa
	.byte	0x8a
	.byte	0xb
	.4byte	0x1378
	.uleb128 0xa
	.byte	0xa
	.byte	0x90
	.byte	0xb
	.4byte	0x16a0
	.uleb128 0xa
	.byte	0xa
	.byte	0x96
	.byte	0xb
	.4byte	0x16bd
	.uleb128 0xa
	.byte	0xa
	.byte	0x97
	.byte	0xb
	.4byte	0x16da
	.uleb128 0xa
	.byte	0xa
	.byte	0x98
	.byte	0xb
	.4byte	0x16f0
	.uleb128 0xa
	.byte	0xa
	.byte	0x99
	.byte	0xb
	.4byte	0x1706
	.uleb128 0xa
	.byte	0xa
	.byte	0x9b
	.byte	0xb
	.4byte	0x1730
	.uleb128 0xa
	.byte	0xa
	.byte	0x9e
	.byte	0xb
	.4byte	0x174b
	.uleb128 0xa
	.byte	0xa
	.byte	0xa0
	.byte	0xb
	.4byte	0x1761
	.uleb128 0xa
	.byte	0xa
	.byte	0xa3
	.byte	0xb
	.4byte	0x177c
	.uleb128 0xa
	.byte	0xa
	.byte	0xa4
	.byte	0xb
	.4byte	0x1797
	.uleb128 0xa
	.byte	0xa
	.byte	0xa5
	.byte	0xb
	.4byte	0x17c9
	.uleb128 0xa
	.byte	0xa
	.byte	0xa7
	.byte	0xb
	.4byte	0x17e9
	.uleb128 0xa
	.byte	0xa
	.byte	0xad
	.byte	0xb
	.4byte	0x180a
	.uleb128 0xa
	.byte	0xa
	.byte	0xaf
	.byte	0xb
	.4byte	0x1816
	.uleb128 0xa
	.byte	0xa
	.byte	0xb0
	.byte	0xb
	.4byte	0x1829
	.uleb128 0xa
	.byte	0xa
	.byte	0xb1
	.byte	0xb
	.4byte	0x184b
	.uleb128 0xa
	.byte	0xa
	.byte	0xb2
	.byte	0xb
	.4byte	0x186c
	.uleb128 0xa
	.byte	0xa
	.byte	0xb3
	.byte	0xb
	.4byte	0x188d
	.uleb128 0xa
	.byte	0xa
	.byte	0xb5
	.byte	0xb
	.4byte	0x18a4
	.uleb128 0xa
	.byte	0xa
	.byte	0xb6
	.byte	0xb
	.4byte	0x18cb
	.uleb128 0xa
	.byte	0xa
	.byte	0xfd
	.byte	0x16
	.4byte	0x13ac
	.uleb128 0x2e
	.byte	0xa
	.2byte	0x102
	.byte	0x16
	.4byte	0x103f
	.uleb128 0x2e
	.byte	0xa
	.2byte	0x103
	.byte	0x16
	.4byte	0x18e7
	.uleb128 0x2e
	.byte	0xa
	.2byte	0x105
	.byte	0x16
	.4byte	0x1902
	.uleb128 0x2e
	.byte	0xa
	.2byte	0x106
	.byte	0x16
	.4byte	0x195a
	.uleb128 0x2e
	.byte	0xa
	.2byte	0x107
	.byte	0x16
	.4byte	0x1918
	.uleb128 0x2e
	.byte	0xa
	.2byte	0x108
	.byte	0x16
	.4byte	0x1939
	.uleb128 0x2e
	.byte	0xa
	.2byte	0x109
	.byte	0x16
	.4byte	0x197d
	.uleb128 0x4c
	.4byte	.LASF3
	.byte	0xb
	.2byte	0xb92
	.byte	0xd
	.uleb128 0x4c
	.4byte	.LASF4
	.byte	0xb
	.2byte	0xbe7
	.byte	0xd
	.uleb128 0x61
	.4byte	.LASF5
	.byte	0xb
	.byte	0xac
	.byte	0xd
	.uleb128 0x2b
	.4byte	.LASF326
	.byte	0x5
	.byte	0x4
	.4byte	0x1172
	.byte	0x8
	.byte	0x41
	.byte	0xe
	.4byte	0x281
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF256
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x5e
	.byte	0x8
	.4byte	0x2b6
	.uleb128 0x62
	.4byte	.LASF12
	.2byte	0xffff
	.uleb128 0x44
	.4byte	.LASF13
	.4byte	0xffff0000
	.uleb128 0x44
	.4byte	.LASF14
	.4byte	0x10000
	.uleb128 0x44
	.4byte	.LASF15
	.4byte	0x20000
	.byte	0
	.uleb128 0x63
	.4byte	.LASF98
	.byte	0x1
	.byte	0x8
	.2byte	0x152
	.byte	0xc
	.4byte	0xb51
	.uleb128 0x64
	.4byte	.LASF810
	.byte	0x8
	.2byte	0x15a
	.byte	0x1c
	.4byte	0x1179
	.byte	0x3
	.byte	0x1
	.byte	0x1
	.uleb128 0x65
	.4byte	.LASF811
	.byte	0x8
	.2byte	0x158
	.byte	0x14
	.4byte	0x152a
	.byte	0x3
	.uleb128 0x66
	.4byte	.LASF812
	.byte	0x8
	.2byte	0x15d
	.byte	0x28
	.4byte	0x2d4
	.byte	0x1
	.byte	0
	.byte	0x3
	.uleb128 0x4e
	.4byte	.LASF16
	.byte	0x8
	.2byte	0x160
	.byte	0x7
	.4byte	.LASF18
	.byte	0x1
	.4byte	0x308
	.4byte	0x30e
	.uleb128 0x3
	.4byte	0x3676
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF17
	.byte	0x8
	.2byte	0x161
	.byte	0x7
	.4byte	.LASF19
	.byte	0x1
	.4byte	0x324
	.4byte	0x32a
	.uleb128 0x3
	.4byte	0x3676
	.byte	0
	.uleb128 0x67
	.4byte	.LASF16
	.byte	0x8
	.2byte	0x162
	.byte	0x7
	.4byte	.LASF20
	.4byte	0x33f
	.4byte	0x34a
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x3681
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF21
	.byte	0x8
	.2byte	0x163
	.byte	0x16
	.4byte	.LASF22
	.4byte	0x3687
	.4byte	0x363
	.4byte	0x36e
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x3681
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF21
	.byte	0x8
	.2byte	0x164
	.byte	0x16
	.4byte	.LASF23
	.4byte	0x3687
	.4byte	0x387
	.4byte	0x392
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x3681
	.byte	0
	.uleb128 0x22
	.4byte	.LASF16
	.byte	0x8
	.2byte	0x166
	.byte	0x11
	.4byte	.LASF58
	.4byte	0x3a7
	.4byte	0x3b2
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x2d4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x8
	.2byte	0x168
	.byte	0x7
	.4byte	.LASF25
	.4byte	0x2d4
	.4byte	0x3cb
	.4byte	0x3d1
	.uleb128 0x3
	.4byte	0x3693
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x8
	.2byte	0x16b
	.byte	0x7
	.4byte	.LASF26
	.4byte	0x2d4
	.4byte	0x3ea
	.4byte	0x3f0
	.uleb128 0x3
	.4byte	0x369e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x8
	.2byte	0x16f
	.byte	0x7
	.4byte	.LASF27
	.4byte	0x2d4
	.4byte	0x409
	.4byte	0x414
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x2d4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x8
	.2byte	0x176
	.byte	0x7
	.4byte	.LASF28
	.4byte	0x2d4
	.4byte	0x42d
	.4byte	0x438
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x2d4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x8
	.2byte	0x17d
	.byte	0x7
	.4byte	.LASF30
	.4byte	0x2d4
	.4byte	0x451
	.4byte	0x45c
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x1172
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x8
	.2byte	0x181
	.byte	0x7
	.4byte	.LASF31
	.4byte	0x2d4
	.4byte	0x475
	.4byte	0x480
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x1172
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x8
	.2byte	0x185
	.byte	0x7
	.4byte	.LASF33
	.4byte	0x2d4
	.4byte	0x499
	.4byte	0x4a4
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x1172
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x8
	.2byte	0x189
	.byte	0x7
	.4byte	.LASF34
	.4byte	0x2d4
	.4byte	0x4bd
	.4byte	0x4c8
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x1172
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x8
	.2byte	0x18d
	.byte	0x7
	.4byte	.LASF35
	.4byte	0x2d4
	.4byte	0x4e1
	.4byte	0x4e7
	.uleb128 0x3
	.4byte	0x3676
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x8
	.2byte	0x191
	.byte	0x7
	.4byte	.LASF36
	.4byte	0x2d4
	.4byte	0x500
	.4byte	0x506
	.uleb128 0x3
	.4byte	0x368d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x8
	.2byte	0x195
	.byte	0x7
	.4byte	.LASF37
	.4byte	0x2d4
	.4byte	0x51f
	.4byte	0x525
	.uleb128 0x3
	.4byte	0x3676
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x8
	.2byte	0x199
	.byte	0x7
	.4byte	.LASF38
	.4byte	0x2d4
	.4byte	0x53e
	.4byte	0x544
	.uleb128 0x3
	.4byte	0x368d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x8
	.2byte	0x19d
	.byte	0x7
	.4byte	.LASF40
	.4byte	0x2d4
	.4byte	0x55d
	.4byte	0x568
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x2d4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x8
	.2byte	0x1a1
	.byte	0x7
	.4byte	.LASF41
	.4byte	0x2d4
	.4byte	0x581
	.4byte	0x58c
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x2d4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x8
	.2byte	0x1a5
	.byte	0x7
	.4byte	.LASF43
	.4byte	0x2d4
	.4byte	0x5a5
	.4byte	0x5b0
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x2d4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x8
	.2byte	0x1a9
	.byte	0x7
	.4byte	.LASF44
	.4byte	0x2d4
	.4byte	0x5c9
	.4byte	0x5d4
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x2d4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x8
	.2byte	0x1ad
	.byte	0x7
	.4byte	.LASF46
	.4byte	0x2d4
	.4byte	0x5ed
	.4byte	0x5f8
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x2d4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x8
	.2byte	0x1b1
	.byte	0x7
	.4byte	.LASF47
	.4byte	0x2d4
	.4byte	0x611
	.4byte	0x61c
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x2d4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x8
	.2byte	0x1b5
	.byte	0x7
	.4byte	.LASF49
	.4byte	0x2d4
	.4byte	0x635
	.4byte	0x640
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x2d4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x8
	.2byte	0x1b9
	.byte	0x7
	.4byte	.LASF50
	.4byte	0x2d4
	.4byte	0x659
	.4byte	0x664
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x2d4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x8
	.2byte	0x1bd
	.byte	0x7
	.4byte	.LASF52
	.4byte	0x2d4
	.4byte	0x67d
	.4byte	0x688
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x2d4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x8
	.2byte	0x1c1
	.byte	0x7
	.4byte	.LASF53
	.4byte	0x2d4
	.4byte	0x6a1
	.4byte	0x6ac
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x2d4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x8
	.2byte	0x1c5
	.byte	0x7
	.4byte	.LASF55
	.4byte	0x152a
	.4byte	0x6c5
	.4byte	0x6cb
	.uleb128 0x3
	.4byte	0x3693
	.byte	0
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x8
	.2byte	0x1cd
	.byte	0x7
	.4byte	.LASF56
	.4byte	0x152a
	.4byte	0x6e4
	.4byte	0x6ea
	.uleb128 0x3
	.4byte	0x369e
	.byte	0
	.uleb128 0x22
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x1d5
	.byte	0x7
	.4byte	.LASF59
	.4byte	0x6ff
	.4byte	0x70f
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x22
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x1e1
	.byte	0x7
	.4byte	.LASF60
	.4byte	0x724
	.4byte	0x734
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x1ee
	.byte	0x7
	.4byte	.LASF62
	.4byte	0x2d4
	.4byte	0x74d
	.4byte	0x758
	.uleb128 0x3
	.4byte	0x3693
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x1f9
	.byte	0x7
	.4byte	.LASF63
	.4byte	0x2d4
	.4byte	0x771
	.4byte	0x77c
	.uleb128 0x3
	.4byte	0x369e
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x204
	.byte	0x7
	.4byte	.LASF65
	.4byte	0x2d4
	.4byte	0x795
	.4byte	0x7a5
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x20c
	.byte	0x7
	.4byte	.LASF66
	.4byte	0x2d4
	.4byte	0x7be
	.4byte	0x7ce
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x213
	.byte	0x7
	.4byte	.LASF68
	.4byte	0x152a
	.4byte	0x7e7
	.4byte	0x801
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x36a4
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x21d
	.byte	0x7
	.4byte	.LASF69
	.4byte	0x152a
	.4byte	0x81a
	.4byte	0x834
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x36a4
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x228
	.byte	0x7
	.4byte	.LASF70
	.4byte	0x152a
	.4byte	0x84d
	.4byte	0x862
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x36a4
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x230
	.byte	0x7
	.4byte	.LASF71
	.4byte	0x152a
	.4byte	0x87b
	.4byte	0x890
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x36a4
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x238
	.byte	0x7
	.4byte	.LASF73
	.4byte	0x152a
	.4byte	0x8a9
	.4byte	0x8c3
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x36a4
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x242
	.byte	0x7
	.4byte	.LASF74
	.4byte	0x152a
	.4byte	0x8dc
	.4byte	0x8f6
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x36a4
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x24d
	.byte	0x7
	.4byte	.LASF75
	.4byte	0x152a
	.4byte	0x90f
	.4byte	0x924
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x36a4
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x255
	.byte	0x7
	.4byte	.LASF76
	.4byte	0x152a
	.4byte	0x93d
	.4byte	0x952
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x36a4
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x22
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x25e
	.byte	0x7
	.4byte	.LASF78
	.4byte	0x967
	.4byte	0x977
	.uleb128 0x3
	.4byte	0x3693
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x22
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x268
	.byte	0x7
	.4byte	.LASF80
	.4byte	0x98c
	.4byte	0x992
	.uleb128 0x3
	.4byte	0x3676
	.byte	0
	.uleb128 0x22
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x26e
	.byte	0x7
	.4byte	.LASF82
	.4byte	0x9a7
	.4byte	0x9ad
	.uleb128 0x3
	.4byte	0x3676
	.byte	0
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x8
	.2byte	0x275
	.byte	0x7
	.4byte	.LASF84
	.4byte	0x2d4
	.4byte	0x9c6
	.4byte	0x9d6
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x8
	.2byte	0x27a
	.byte	0x7
	.4byte	.LASF85
	.4byte	0x2d4
	.4byte	0x9ef
	.4byte	0x9ff
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x8
	.2byte	0x27f
	.byte	0x7
	.4byte	.LASF87
	.4byte	0x2d4
	.4byte	0xa18
	.4byte	0xa28
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x8
	.2byte	0x284
	.byte	0x7
	.4byte	.LASF88
	.4byte	0x2d4
	.4byte	0xa41
	.4byte	0xa51
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x289
	.byte	0x7
	.4byte	.LASF90
	.4byte	0x2d4
	.4byte	0xa6a
	.4byte	0xa7a
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x28e
	.byte	0x7
	.4byte	.LASF91
	.4byte	0x2d4
	.4byte	0xa93
	.4byte	0xaa3
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x293
	.byte	0x7
	.4byte	.LASF93
	.4byte	0x2d4
	.4byte	0xabc
	.4byte	0xacc
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x298
	.byte	0x7
	.4byte	.LASF94
	.4byte	0x2d4
	.4byte	0xae5
	.4byte	0xaf5
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x29d
	.byte	0x7
	.4byte	.LASF96
	.4byte	0x2d4
	.4byte	0xb0e
	.4byte	0xb1e
	.uleb128 0x3
	.4byte	0x3676
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x2a2
	.byte	0x7
	.4byte	.LASF97
	.4byte	0x2d4
	.4byte	0xb37
	.4byte	0xb47
	.uleb128 0x3
	.4byte	0x368d
	.uleb128 0x2
	.4byte	0x2d4
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x68
	.4byte	.LASF132
	.4byte	0x152a
	.byte	0
	.uleb128 0x14
	.4byte	0x2b6
	.uleb128 0x35
	.4byte	0x2b6
	.uleb128 0x14
	.4byte	0xb56
	.uleb128 0x23
	.4byte	.LASF99
	.byte	0x1
	.byte	0x7
	.byte	0x47
	.byte	0xa
	.4byte	0xfbd
	.uleb128 0x45
	.4byte	.LASF672
	.byte	0x7
	.byte	0x4c
	.byte	0x19
	.4byte	0x2b6
	.byte	0
	.byte	0x3
	.uleb128 0x50
	.4byte	.LASF100
	.byte	0x7
	.byte	0x4f
	.byte	0x5
	.4byte	.LASF102
	.byte	0x1
	.4byte	0xb90
	.4byte	0xb96
	.uleb128 0x3
	.4byte	0x36aa
	.byte	0
	.uleb128 0x50
	.4byte	.LASF101
	.byte	0x7
	.byte	0x50
	.byte	0x5
	.4byte	.LASF103
	.byte	0x1
	.4byte	0xbab
	.4byte	0xbb1
	.uleb128 0x3
	.4byte	0x36aa
	.byte	0
	.uleb128 0x69
	.4byte	.LASF100
	.byte	0x7
	.byte	0x51
	.byte	0x5
	.4byte	.LASF104
	.4byte	0xbc5
	.4byte	0xbd0
	.uleb128 0x3
	.4byte	0x36aa
	.uleb128 0x2
	.4byte	0x36b5
	.byte	0
	.uleb128 0x51
	.4byte	.LASF21
	.byte	0x7
	.byte	0x52
	.byte	0xd
	.4byte	.LASF105
	.4byte	0x36bb
	.4byte	0xbe8
	.4byte	0xbf3
	.uleb128 0x3
	.4byte	0x36aa
	.uleb128 0x2
	.4byte	0x36b5
	.byte	0
	.uleb128 0x51
	.4byte	.LASF21
	.byte	0x7
	.byte	0x53
	.byte	0xd
	.4byte	.LASF106
	.4byte	0x36bb
	.4byte	0xc0b
	.4byte	0xc16
	.uleb128 0x3
	.4byte	0x36c1
	.uleb128 0x2
	.4byte	0x36b5
	.byte	0
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x7
	.byte	0x55
	.byte	0xf
	.4byte	.LASF114
	.4byte	0xc2a
	.4byte	0xc35
	.uleb128 0x3
	.4byte	0x36aa
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF21
	.byte	0x7
	.byte	0x58
	.byte	0x5
	.4byte	.LASF107
	.4byte	0x152a
	.4byte	0xc4d
	.4byte	0xc58
	.uleb128 0x3
	.4byte	0x36aa
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF21
	.byte	0x7
	.byte	0x5c
	.byte	0x5
	.4byte	.LASF108
	.4byte	0x152a
	.4byte	0xc70
	.4byte	0xc7b
	.uleb128 0x3
	.4byte	0x36c1
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF109
	.byte	0x7
	.byte	0x5f
	.byte	0x5
	.4byte	.LASF110
	.4byte	0x152a
	.4byte	0xc93
	.4byte	0xc99
	.uleb128 0x3
	.4byte	0x36c7
	.byte	0
	.uleb128 0x17
	.4byte	.LASF109
	.byte	0x7
	.byte	0x62
	.byte	0x5
	.4byte	.LASF111
	.4byte	0x152a
	.4byte	0xcb1
	.4byte	0xcb7
	.uleb128 0x3
	.4byte	0x36d2
	.byte	0
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x7
	.byte	0x66
	.byte	0x5
	.4byte	.LASF112
	.4byte	0x152a
	.4byte	0xccf
	.4byte	0xcd5
	.uleb128 0x3
	.4byte	0x36c7
	.byte	0
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x7
	.byte	0x69
	.byte	0x5
	.4byte	.LASF113
	.4byte	0x152a
	.4byte	0xced
	.4byte	0xcf3
	.uleb128 0x3
	.4byte	0x36d2
	.byte	0
	.uleb128 0x6a
	.4byte	.LASF813
	.byte	0x7
	.byte	0x6c
	.byte	0x1b
	.4byte	0x1531
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x7
	.byte	0x70
	.byte	0x5
	.4byte	.LASF115
	.4byte	0xd15
	.4byte	0xd25
	.uleb128 0x3
	.4byte	0x36aa
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x7
	.byte	0x74
	.byte	0x5
	.4byte	.LASF116
	.4byte	0xd39
	.4byte	0xd49
	.uleb128 0x3
	.4byte	0x36c1
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF61
	.byte	0x7
	.byte	0x78
	.byte	0x5
	.4byte	.LASF117
	.4byte	0x152a
	.4byte	0xd61
	.4byte	0xd6c
	.uleb128 0x3
	.4byte	0x36c7
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF61
	.byte	0x7
	.byte	0x7c
	.byte	0x5
	.4byte	.LASF118
	.4byte	0x152a
	.4byte	0xd84
	.4byte	0xd8f
	.uleb128 0x3
	.4byte	0x36d2
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x7
	.byte	0x80
	.byte	0x5
	.4byte	.LASF119
	.4byte	0x152a
	.4byte	0xda7
	.4byte	0xdb7
	.uleb128 0x3
	.4byte	0x36aa
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x7
	.byte	0x84
	.byte	0x5
	.4byte	.LASF120
	.4byte	0x152a
	.4byte	0xdcf
	.4byte	0xddf
	.uleb128 0x3
	.4byte	0x36c1
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF67
	.byte	0x7
	.byte	0x89
	.byte	0x5
	.4byte	.LASF121
	.4byte	0x152a
	.4byte	0xdf7
	.4byte	0xe11
	.uleb128 0x3
	.4byte	0x36aa
	.uleb128 0x2
	.4byte	0x36d8
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x24a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF67
	.byte	0x7
	.byte	0x8e
	.byte	0x5
	.4byte	.LASF122
	.4byte	0x152a
	.4byte	0xe29
	.4byte	0xe43
	.uleb128 0x3
	.4byte	0x36c1
	.uleb128 0x2
	.4byte	0x36d8
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x24a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF67
	.byte	0x7
	.byte	0x93
	.byte	0x5
	.4byte	.LASF123
	.4byte	0x152a
	.4byte	0xe5b
	.4byte	0xe70
	.uleb128 0x3
	.4byte	0x36aa
	.uleb128 0x2
	.4byte	0x36d8
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF67
	.byte	0x7
	.byte	0x98
	.byte	0x5
	.4byte	.LASF124
	.4byte	0x152a
	.4byte	0xe88
	.4byte	0xe9d
	.uleb128 0x3
	.4byte	0x36c1
	.uleb128 0x2
	.4byte	0x36d8
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x7
	.byte	0x9d
	.byte	0x5
	.4byte	.LASF125
	.4byte	0x152a
	.4byte	0xeb5
	.4byte	0xecf
	.uleb128 0x3
	.4byte	0x36aa
	.uleb128 0x2
	.4byte	0x36d8
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x24a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x7
	.byte	0xa2
	.byte	0x5
	.4byte	.LASF126
	.4byte	0x152a
	.4byte	0xee7
	.4byte	0xf01
	.uleb128 0x3
	.4byte	0x36c1
	.uleb128 0x2
	.4byte	0x36d8
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x24a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x7
	.byte	0xa7
	.byte	0x5
	.4byte	.LASF127
	.4byte	0x152a
	.4byte	0xf19
	.4byte	0xf2e
	.uleb128 0x3
	.4byte	0x36aa
	.uleb128 0x2
	.4byte	0x36d8
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x7
	.byte	0xac
	.byte	0x5
	.4byte	.LASF128
	.4byte	0x152a
	.4byte	0xf46
	.4byte	0xf5b
	.uleb128 0x3
	.4byte	0x36c1
	.uleb128 0x2
	.4byte	0x36d8
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x7
	.byte	0xb2
	.byte	0x5
	.4byte	.LASF129
	.4byte	0xf6f
	.4byte	0xf7f
	.uleb128 0x3
	.4byte	0x36c7
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x24a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x7
	.byte	0xb8
	.byte	0x5
	.4byte	.LASF130
	.4byte	0xf93
	.4byte	0xf99
	.uleb128 0x3
	.4byte	0x36aa
	.byte	0
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x7
	.byte	0xbc
	.byte	0x5
	.4byte	.LASF131
	.4byte	0xfad
	.4byte	0xfb3
	.uleb128 0x3
	.4byte	0x36aa
	.byte	0
	.uleb128 0x6b
	.string	"_Tp"
	.4byte	0x152a
	.byte	0
	.uleb128 0x14
	.4byte	0xb60
	.uleb128 0x35
	.4byte	0xb60
	.uleb128 0x35
	.4byte	0xfbd
	.uleb128 0x6c
	.4byte	.LASF135
	.byte	0x8
	.byte	0x6e
	.byte	0x3
	.4byte	.LASF669
	.4byte	0x24a
	.uleb128 0x2
	.4byte	0x24a
	.uleb128 0x2
	.4byte	0x281
	.byte	0
	.byte	0
	.uleb128 0x6d
	.4byte	.LASF133
	.byte	0xc
	.2byte	0x175
	.byte	0xb
	.4byte	0x105b
	.uleb128 0x4a
	.4byte	.LASF134
	.byte	0xc
	.2byte	0x177
	.byte	0x41
	.uleb128 0x4b
	.byte	0xc
	.2byte	0x177
	.byte	0x41
	.4byte	0xff5
	.uleb128 0xa
	.byte	0xa
	.byte	0xd2
	.byte	0xb
	.4byte	0x13ac
	.uleb128 0xa
	.byte	0xa
	.byte	0xe4
	.byte	0xb
	.4byte	0x18e7
	.uleb128 0xa
	.byte	0xa
	.byte	0xf0
	.byte	0xb
	.4byte	0x1902
	.uleb128 0xa
	.byte	0xa
	.byte	0xf1
	.byte	0xb
	.4byte	0x1918
	.uleb128 0xa
	.byte	0xa
	.byte	0xf2
	.byte	0xb
	.4byte	0x1939
	.uleb128 0xa
	.byte	0xa
	.byte	0xf4
	.byte	0xb
	.4byte	0x195a
	.uleb128 0xa
	.byte	0xa
	.byte	0xf5
	.byte	0xb
	.4byte	0x197d
	.uleb128 0x6e
	.string	"div"
	.byte	0xa
	.byte	0xe1
	.byte	0x3
	.4byte	.LASF814
	.4byte	0x13ac
	.uleb128 0x2
	.4byte	0x10d2
	.uleb128 0x2
	.4byte	0x10d2
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF137
	.byte	0xd
	.byte	0xd2
	.byte	0x15
	.4byte	0x1067
	.uleb128 0x1a
	.byte	0x1
	.byte	0x6
	.4byte	.LASF136
	.uleb128 0xd
	.4byte	.LASF138
	.byte	0xd
	.byte	0xd7
	.byte	0x17
	.4byte	0x33
	.uleb128 0xd
	.4byte	.LASF139
	.byte	0xd
	.byte	0xdb
	.byte	0x13
	.4byte	0x1086
	.uleb128 0x1a
	.byte	0x2
	.byte	0x5
	.4byte	.LASF140
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0xd
	.byte	0xe0
	.byte	0x1c
	.4byte	0x1099
	.uleb128 0x1a
	.byte	0x2
	.byte	0x7
	.4byte	.LASF142
	.uleb128 0xd
	.4byte	.LASF143
	.byte	0xd
	.byte	0xe4
	.byte	0x12
	.4byte	0x10ac
	.uleb128 0x1a
	.byte	0x4
	.byte	0x5
	.4byte	.LASF144
	.uleb128 0xd
	.4byte	.LASF145
	.byte	0xd
	.byte	0xe9
	.byte	0x1b
	.4byte	0x10bf
	.uleb128 0x1a
	.byte	0x4
	.byte	0x7
	.4byte	.LASF146
	.uleb128 0xd
	.4byte	.LASF147
	.byte	0xd
	.byte	0xed
	.byte	0x17
	.4byte	0x10d2
	.uleb128 0x1a
	.byte	0x8
	.byte	0x5
	.4byte	.LASF148
	.uleb128 0xd
	.4byte	.LASF149
	.byte	0xd
	.byte	0xf2
	.byte	0x20
	.4byte	0x25
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0xd
	.byte	0xf6
	.byte	0x15
	.4byte	0x1067
	.uleb128 0xd
	.4byte	.LASF151
	.byte	0xd
	.byte	0xf8
	.byte	0x17
	.4byte	0x33
	.uleb128 0x24
	.4byte	.LASF152
	.byte	0xd
	.2byte	0x110
	.byte	0x13
	.4byte	0x1086
	.uleb128 0x24
	.4byte	.LASF153
	.byte	0xd
	.2byte	0x112
	.byte	0x1c
	.4byte	0x1099
	.uleb128 0x24
	.4byte	.LASF154
	.byte	0xd
	.2byte	0x126
	.byte	0x12
	.4byte	0x10ac
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0xd
	.2byte	0x128
	.byte	0x1b
	.4byte	0x10bf
	.uleb128 0x24
	.4byte	.LASF156
	.byte	0xd
	.2byte	0x138
	.byte	0x17
	.4byte	0x10d2
	.uleb128 0x24
	.4byte	.LASF157
	.byte	0xd
	.2byte	0x13a
	.byte	0x20
	.4byte	0x25
	.uleb128 0x24
	.4byte	.LASF158
	.byte	0xd
	.2byte	0x146
	.byte	0x17
	.4byte	0x10d2
	.uleb128 0x24
	.4byte	.LASF159
	.byte	0xd
	.2byte	0x14e
	.byte	0x20
	.4byte	0x25
	.uleb128 0x24
	.4byte	.LASF160
	.byte	0xd
	.2byte	0x156
	.byte	0xd
	.4byte	0x1172
	.uleb128 0x6f
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x14
	.4byte	0x1172
	.uleb128 0x24
	.4byte	.LASF161
	.byte	0xd
	.2byte	0x158
	.byte	0x16
	.4byte	0x2c
	.uleb128 0xd
	.4byte	.LASF162
	.byte	0xe
	.byte	0xe5
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x1a
	.byte	0x8
	.byte	0x4
	.4byte	.LASF163
	.uleb128 0xd
	.4byte	.LASF164
	.byte	0xf
	.byte	0x12
	.byte	0x12
	.4byte	0x105b
	.uleb128 0xd
	.4byte	.LASF165
	.byte	0xf
	.byte	0x16
	.byte	0x13
	.4byte	0x106e
	.uleb128 0x35
	.4byte	0x11aa
	.uleb128 0xd
	.4byte	.LASF166
	.byte	0xf
	.byte	0x1e
	.byte	0x13
	.4byte	0x107a
	.uleb128 0xd
	.4byte	.LASF167
	.byte	0xf
	.byte	0x22
	.byte	0x14
	.4byte	0x108d
	.uleb128 0xd
	.4byte	.LASF168
	.byte	0xf
	.byte	0x2a
	.byte	0x13
	.4byte	0x10a0
	.uleb128 0x35
	.4byte	0x11d3
	.uleb128 0xd
	.4byte	.LASF169
	.byte	0xf
	.byte	0x2e
	.byte	0x14
	.4byte	0x10b3
	.uleb128 0x14
	.4byte	0x11e4
	.uleb128 0xd
	.4byte	.LASF170
	.byte	0xf
	.byte	0x36
	.byte	0x13
	.4byte	0x10c6
	.uleb128 0xd
	.4byte	.LASF171
	.byte	0xf
	.byte	0x3a
	.byte	0x14
	.4byte	0x10d9
	.uleb128 0x14
	.4byte	0x1201
	.uleb128 0xd
	.4byte	.LASF172
	.byte	0xf
	.byte	0x41
	.byte	0x14
	.4byte	0x114b
	.uleb128 0xd
	.4byte	.LASF173
	.byte	0xf
	.byte	0x46
	.byte	0x15
	.4byte	0x1158
	.uleb128 0xd
	.4byte	.LASF174
	.byte	0xf
	.byte	0x4b
	.byte	0x14
	.4byte	0x1165
	.uleb128 0xd
	.4byte	.LASF175
	.byte	0xf
	.byte	0x50
	.byte	0x15
	.4byte	0x117e
	.uleb128 0xd
	.4byte	.LASF176
	.byte	0x10
	.byte	0x14
	.byte	0x18
	.4byte	0x10e5
	.uleb128 0xd
	.4byte	.LASF177
	.byte	0x10
	.byte	0x15
	.byte	0x19
	.4byte	0x10f1
	.uleb128 0xd
	.4byte	.LASF178
	.byte	0x10
	.byte	0x1a
	.byte	0x19
	.4byte	0x10fd
	.uleb128 0xd
	.4byte	.LASF179
	.byte	0x10
	.byte	0x1b
	.byte	0x1a
	.4byte	0x110a
	.uleb128 0xd
	.4byte	.LASF180
	.byte	0x10
	.byte	0x20
	.byte	0x19
	.4byte	0x1117
	.uleb128 0xd
	.4byte	.LASF181
	.byte	0x10
	.byte	0x21
	.byte	0x1a
	.4byte	0x1124
	.uleb128 0xd
	.4byte	.LASF182
	.byte	0x10
	.byte	0x26
	.byte	0x19
	.4byte	0x1131
	.uleb128 0xd
	.4byte	.LASF183
	.byte	0x10
	.byte	0x27
	.byte	0x1a
	.4byte	0x113e
	.uleb128 0xd
	.4byte	.LASF184
	.byte	0x10
	.byte	0x32
	.byte	0xf
	.4byte	0x1172
	.uleb128 0xd
	.4byte	.LASF185
	.byte	0x10
	.byte	0x33
	.byte	0x18
	.4byte	0x2c
	.uleb128 0xd
	.4byte	.LASF186
	.byte	0x10
	.byte	0x3c
	.byte	0xf
	.4byte	0x1172
	.uleb128 0xd
	.4byte	.LASF187
	.byte	0x10
	.byte	0x3d
	.byte	0x18
	.4byte	0x2c
	.uleb128 0xd
	.4byte	.LASF188
	.byte	0x10
	.byte	0x46
	.byte	0xf
	.4byte	0x1172
	.uleb128 0xd
	.4byte	.LASF189
	.byte	0x10
	.byte	0x47
	.byte	0x18
	.4byte	0x2c
	.uleb128 0xd
	.4byte	.LASF190
	.byte	0x10
	.byte	0x50
	.byte	0x19
	.4byte	0x10d2
	.uleb128 0xd
	.4byte	.LASF191
	.byte	0x10
	.byte	0x51
	.byte	0x22
	.4byte	0x25
	.uleb128 0x70
	.byte	0x4
	.uleb128 0x1a
	.byte	0x1
	.byte	0x8
	.4byte	.LASF192
	.uleb128 0x14
	.4byte	0x1304
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1304
	.uleb128 0x11
	.byte	0x4
	.4byte	0x130b
	.uleb128 0x39
	.byte	0x8
	.byte	0x11
	.byte	0x41
	.byte	0x1
	.4byte	.LASF195
	.4byte	0x1344
	.uleb128 0xf
	.4byte	.LASF193
	.byte	0x11
	.byte	0x42
	.byte	0x7
	.4byte	0x1172
	.byte	0
	.uleb128 0x2f
	.string	"rem"
	.byte	0x11
	.byte	0x43
	.byte	0x7
	.4byte	0x1172
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF194
	.byte	0x11
	.byte	0x44
	.byte	0x3
	.4byte	0x131c
	.uleb128 0x39
	.byte	0x8
	.byte	0x11
	.byte	0x47
	.byte	0x1
	.4byte	.LASF196
	.4byte	0x1378
	.uleb128 0xf
	.4byte	.LASF193
	.byte	0x11
	.byte	0x48
	.byte	0x8
	.4byte	0x10ac
	.byte	0
	.uleb128 0x2f
	.string	"rem"
	.byte	0x11
	.byte	0x49
	.byte	0x8
	.4byte	0x10ac
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF197
	.byte	0x11
	.byte	0x4a
	.byte	0x3
	.4byte	0x1350
	.uleb128 0x39
	.byte	0x10
	.byte	0x11
	.byte	0x4e
	.byte	0x1
	.4byte	.LASF198
	.4byte	0x13ac
	.uleb128 0xf
	.4byte	.LASF193
	.byte	0x11
	.byte	0x4f
	.byte	0x11
	.4byte	0x10d2
	.byte	0
	.uleb128 0x2f
	.string	"rem"
	.byte	0x11
	.byte	0x50
	.byte	0x11
	.4byte	0x10d2
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF199
	.byte	0x11
	.byte	0x51
	.byte	0x3
	.4byte	0x1384
	.uleb128 0xd
	.4byte	.LASF200
	.byte	0x11
	.byte	0x56
	.byte	0xf
	.4byte	0x13c4
	.uleb128 0x11
	.byte	0x4
	.4byte	0x13ca
	.uleb128 0x52
	.4byte	0x1172
	.4byte	0x13de
	.uleb128 0x2
	.4byte	0x13de
	.uleb128 0x2
	.4byte	0x13de
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x13e4
	.uleb128 0x71
	.uleb128 0xd
	.4byte	.LASF201
	.byte	0x12
	.byte	0x13
	.byte	0xd
	.4byte	0x1172
	.uleb128 0x53
	.byte	0x5
	.byte	0x4
	.4byte	0x1172
	.byte	0x13
	.byte	0x10
	.byte	0xe
	.4byte	.LASF304
	.4byte	0x151e
	.uleb128 0x1e
	.4byte	.LASF202
	.sleb128 -1
	.uleb128 0x7
	.4byte	.LASF203
	.byte	0
	.uleb128 0x7
	.4byte	.LASF204
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF205
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF206
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF207
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF209
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF210
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF211
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF212
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF213
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF214
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF215
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF216
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF217
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF218
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF219
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF220
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF221
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF222
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF223
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF224
	.byte	0x15
	.uleb128 0x7
	.4byte	.LASF225
	.byte	0x1a
	.uleb128 0x7
	.4byte	.LASF226
	.byte	0x1b
	.uleb128 0x7
	.4byte	.LASF227
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF228
	.byte	0x1d
	.uleb128 0x7
	.4byte	.LASF229
	.byte	0x1e
	.uleb128 0x7
	.4byte	.LASF230
	.byte	0x1f
	.uleb128 0x7
	.4byte	.LASF231
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF232
	.byte	0x21
	.uleb128 0x7
	.4byte	.LASF233
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF234
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF235
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF236
	.byte	0x25
	.uleb128 0x7
	.4byte	.LASF237
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF238
	.byte	0x27
	.uleb128 0x7
	.4byte	.LASF239
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF240
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF241
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF242
	.byte	0x2b
	.uleb128 0x7
	.4byte	.LASF243
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF244
	.byte	0x2d
	.uleb128 0x7
	.4byte	.LASF245
	.byte	0x2e
	.uleb128 0x7
	.4byte	.LASF246
	.byte	0x2f
	.uleb128 0x7
	.4byte	.LASF247
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF248
	.byte	0x31
	.byte	0
	.uleb128 0xd
	.4byte	.LASF249
	.byte	0x13
	.byte	0x40
	.byte	0x3
	.4byte	0x13f1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x2
	.4byte	.LASF250
	.uleb128 0x14
	.4byte	0x152a
	.uleb128 0x3a
	.4byte	.LASF251
	.byte	0x14
	.byte	0x29
	.byte	0x14
	.4byte	0x11f0
	.byte	0x1
	.uleb128 0x3a
	.4byte	.LASF252
	.byte	0x14
	.byte	0x2b
	.byte	0x14
	.4byte	0x11f0
	.byte	0xb4
	.uleb128 0x3a
	.4byte	.LASF253
	.byte	0x14
	.byte	0x2c
	.byte	0x14
	.4byte	0x11f0
	.byte	0x6e
	.uleb128 0x3a
	.4byte	.LASF254
	.byte	0x14
	.byte	0x2d
	.byte	0x14
	.4byte	0x11f0
	.byte	0x14
	.uleb128 0x72
	.4byte	.LASF255
	.byte	0x14
	.byte	0x33
	.byte	0x14
	.4byte	0x11f0
	.2byte	0x3d2
	.uleb128 0x4d
	.4byte	.LASF257
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x3
	.byte	0x17
	.byte	0x6
	.4byte	0x159d
	.uleb128 0x7
	.4byte	.LASF258
	.byte	0
	.uleb128 0x7
	.4byte	.LASF259
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF260
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	0x1578
	.uleb128 0x23
	.4byte	.LASF261
	.byte	0x2c
	.byte	0x3
	.byte	0x1d
	.byte	0x8
	.4byte	0x1673
	.uleb128 0xf
	.4byte	.LASF262
	.byte	0x3
	.byte	0x1e
	.byte	0x11
	.4byte	0x1316
	.byte	0
	.uleb128 0xf
	.4byte	.LASF263
	.byte	0x3
	.byte	0x21
	.byte	0xd
	.4byte	0x11aa
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF264
	.byte	0x3
	.byte	0x22
	.byte	0x10
	.4byte	0x151e
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF265
	.byte	0x3
	.byte	0x23
	.byte	0x10
	.4byte	0x151e
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF266
	.byte	0x3
	.byte	0x24
	.byte	0x10
	.4byte	0x151e
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF267
	.byte	0x3
	.byte	0x27
	.byte	0xd
	.4byte	0x11aa
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF268
	.byte	0x3
	.byte	0x28
	.byte	0xd
	.4byte	0x11aa
	.byte	0x15
	.uleb128 0xf
	.4byte	.LASF269
	.byte	0x3
	.byte	0x29
	.byte	0xd
	.4byte	0x11aa
	.byte	0x16
	.uleb128 0xf
	.4byte	.LASF270
	.byte	0x3
	.byte	0x2a
	.byte	0xd
	.4byte	0x11aa
	.byte	0x17
	.uleb128 0xf
	.4byte	.LASF271
	.byte	0x3
	.byte	0x2b
	.byte	0xd
	.4byte	0x11aa
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF272
	.byte	0x3
	.byte	0x2c
	.byte	0xa
	.4byte	0x152a
	.byte	0x19
	.uleb128 0xf
	.4byte	.LASF273
	.byte	0x3
	.byte	0x2f
	.byte	0xe
	.4byte	0x11e4
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF274
	.byte	0x3
	.byte	0x30
	.byte	0xe
	.4byte	0x11e4
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF275
	.byte	0x3
	.byte	0x31
	.byte	0xe
	.4byte	0x11e4
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF276
	.byte	0x3
	.byte	0x32
	.byte	0xe
	.4byte	0x11e4
	.byte	0x28
	.byte	0
	.uleb128 0x14
	.4byte	0x15a2
	.uleb128 0x3b
	.4byte	0x1673
	.4byte	0x1688
	.uleb128 0x3c
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.4byte	0x1678
	.uleb128 0x73
	.4byte	.LASF815
	.byte	0x3
	.byte	0x37
	.byte	0x20
	.4byte	0x1688
	.byte	0x3
	.uleb128 0x5
	.byte	0x3
	.4byte	AXES
	.uleb128 0x21
	.4byte	.LASF277
	.byte	0x11
	.byte	0x79
	.byte	0x5
	.4byte	0x1172
	.4byte	0x16b6
	.uleb128 0x2
	.4byte	0x16b6
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x16bc
	.uleb128 0x74
	.uleb128 0x21
	.4byte	.LASF278
	.byte	0x11
	.byte	0x7a
	.byte	0x8
	.4byte	0x16d3
	.4byte	0x16d3
	.uleb128 0x2
	.4byte	0x1316
	.byte	0
	.uleb128 0x1a
	.byte	0x8
	.byte	0x4
	.4byte	.LASF279
	.uleb128 0x21
	.4byte	.LASF280
	.byte	0x11
	.byte	0x7e
	.byte	0x5
	.4byte	0x1172
	.4byte	0x16f0
	.uleb128 0x2
	.4byte	0x1316
	.byte	0
	.uleb128 0x21
	.4byte	.LASF281
	.byte	0x11
	.byte	0x7f
	.byte	0x6
	.4byte	0x10ac
	.4byte	0x1706
	.uleb128 0x2
	.4byte	0x1316
	.byte	0
	.uleb128 0x21
	.4byte	.LASF282
	.byte	0x11
	.byte	0x83
	.byte	0x8
	.4byte	0x1302
	.4byte	0x1730
	.uleb128 0x2
	.4byte	0x13de
	.uleb128 0x2
	.4byte	0x13de
	.uleb128 0x2
	.4byte	0x118b
	.uleb128 0x2
	.4byte	0x118b
	.uleb128 0x2
	.4byte	0x13b8
	.byte	0
	.uleb128 0x75
	.string	"div"
	.byte	0x11
	.byte	0x8a
	.byte	0x7
	.4byte	0x1344
	.4byte	0x174b
	.uleb128 0x2
	.4byte	0x1172
	.uleb128 0x2
	.4byte	0x1172
	.byte	0
	.uleb128 0x21
	.4byte	.LASF283
	.byte	0x11
	.byte	0x94
	.byte	0x8
	.4byte	0x1310
	.4byte	0x1761
	.uleb128 0x2
	.4byte	0x1316
	.byte	0
	.uleb128 0x21
	.4byte	.LASF284
	.byte	0x11
	.byte	0xae
	.byte	0x8
	.4byte	0x1378
	.4byte	0x177c
	.uleb128 0x2
	.4byte	0x10ac
	.uleb128 0x2
	.4byte	0x10ac
	.byte	0
	.uleb128 0x21
	.4byte	.LASF285
	.byte	0x11
	.byte	0xb8
	.byte	0x5
	.4byte	0x1172
	.4byte	0x1797
	.uleb128 0x2
	.4byte	0x1316
	.uleb128 0x2
	.4byte	0x118b
	.byte	0
	.uleb128 0x21
	.4byte	.LASF286
	.byte	0x11
	.byte	0xb9
	.byte	0x8
	.4byte	0x118b
	.4byte	0x17b7
	.uleb128 0x2
	.4byte	0x17b7
	.uleb128 0x2
	.4byte	0x1316
	.uleb128 0x2
	.4byte	0x118b
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x17bd
	.uleb128 0x1a
	.byte	0x2
	.byte	0x7
	.4byte	.LASF287
	.uleb128 0x14
	.4byte	0x17bd
	.uleb128 0x21
	.4byte	.LASF288
	.byte	0x11
	.byte	0xba
	.byte	0x5
	.4byte	0x1172
	.4byte	0x17e9
	.uleb128 0x2
	.4byte	0x17b7
	.uleb128 0x2
	.4byte	0x1316
	.uleb128 0x2
	.4byte	0x118b
	.byte	0
	.uleb128 0x54
	.4byte	.LASF289
	.byte	0x11
	.byte	0xdc
	.byte	0x6
	.4byte	0x180a
	.uleb128 0x2
	.4byte	0x1302
	.uleb128 0x2
	.4byte	0x118b
	.uleb128 0x2
	.4byte	0x118b
	.uleb128 0x2
	.4byte	0x13b8
	.byte	0
	.uleb128 0x55
	.4byte	.LASF740
	.byte	0x11
	.byte	0xec
	.byte	0x5
	.4byte	0x1172
	.uleb128 0x56
	.4byte	.LASF290
	.byte	0x11
	.2byte	0x10d
	.byte	0x6
	.4byte	0x1829
	.uleb128 0x2
	.4byte	0x2c
	.byte	0
	.uleb128 0x25
	.4byte	.LASF291
	.byte	0x11
	.2byte	0x115
	.byte	0x8
	.4byte	0x16d3
	.4byte	0x1845
	.uleb128 0x2
	.4byte	0x1316
	.uleb128 0x2
	.4byte	0x1845
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1310
	.uleb128 0x25
	.4byte	.LASF292
	.byte	0x11
	.2byte	0x12f
	.byte	0x6
	.4byte	0x10ac
	.4byte	0x186c
	.uleb128 0x2
	.4byte	0x1316
	.uleb128 0x2
	.4byte	0x1845
	.uleb128 0x2
	.4byte	0x1172
	.byte	0
	.uleb128 0x25
	.4byte	.LASF293
	.byte	0x11
	.2byte	0x13b
	.byte	0x9
	.4byte	0x10bf
	.4byte	0x188d
	.uleb128 0x2
	.4byte	0x1316
	.uleb128 0x2
	.4byte	0x1845
	.uleb128 0x2
	.4byte	0x1172
	.byte	0
	.uleb128 0x25
	.4byte	.LASF294
	.byte	0x11
	.2byte	0x153
	.byte	0x5
	.4byte	0x1172
	.4byte	0x18a4
	.uleb128 0x2
	.4byte	0x1316
	.byte	0
	.uleb128 0x25
	.4byte	.LASF295
	.byte	0x11
	.2byte	0x157
	.byte	0x8
	.4byte	0x118b
	.4byte	0x18c5
	.uleb128 0x2
	.4byte	0x1310
	.uleb128 0x2
	.4byte	0x18c5
	.uleb128 0x2
	.4byte	0x118b
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x17c4
	.uleb128 0x25
	.4byte	.LASF296
	.byte	0x11
	.2byte	0x158
	.byte	0x5
	.4byte	0x1172
	.4byte	0x18e7
	.uleb128 0x2
	.4byte	0x1310
	.uleb128 0x2
	.4byte	0x17bd
	.byte	0
	.uleb128 0x21
	.4byte	.LASF297
	.byte	0x11
	.byte	0xb1
	.byte	0x9
	.4byte	0x13ac
	.4byte	0x1902
	.uleb128 0x2
	.4byte	0x10d2
	.uleb128 0x2
	.4byte	0x10d2
	.byte	0
	.uleb128 0x21
	.4byte	.LASF298
	.byte	0x11
	.byte	0x81
	.byte	0xb
	.4byte	0x10d2
	.4byte	0x1918
	.uleb128 0x2
	.4byte	0x1316
	.byte	0
	.uleb128 0x25
	.4byte	.LASF299
	.byte	0x11
	.2byte	0x138
	.byte	0x9
	.4byte	0x10d2
	.4byte	0x1939
	.uleb128 0x2
	.4byte	0x1316
	.uleb128 0x2
	.4byte	0x1845
	.uleb128 0x2
	.4byte	0x1172
	.byte	0
	.uleb128 0x25
	.4byte	.LASF300
	.byte	0x11
	.2byte	0x13e
	.byte	0x9
	.4byte	0x25
	.4byte	0x195a
	.uleb128 0x2
	.4byte	0x1316
	.uleb128 0x2
	.4byte	0x1845
	.uleb128 0x2
	.4byte	0x1172
	.byte	0
	.uleb128 0x25
	.4byte	.LASF301
	.byte	0x11
	.2byte	0x11b
	.byte	0x7
	.4byte	0x1976
	.4byte	0x1976
	.uleb128 0x2
	.4byte	0x1316
	.uleb128 0x2
	.4byte	0x1845
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.byte	0x4
	.4byte	.LASF302
	.uleb128 0x25
	.4byte	.LASF303
	.byte	0x11
	.2byte	0x133
	.byte	0x9
	.4byte	0x1197
	.4byte	0x1999
	.uleb128 0x2
	.4byte	0x1316
	.uleb128 0x2
	.4byte	0x1845
	.byte	0
	.uleb128 0x53
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x15
	.byte	0x14
	.byte	0xe
	.4byte	.LASF305
	.4byte	0x19d6
	.uleb128 0x7
	.4byte	.LASF306
	.byte	0
	.uleb128 0x7
	.4byte	.LASF307
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF308
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF309
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF310
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF312
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.4byte	.LASF313
	.byte	0x15
	.byte	0x1c
	.byte	0x3
	.4byte	0x1999
	.uleb128 0x39
	.byte	0x4
	.byte	0x16
	.byte	0x77
	.byte	0x10
	.4byte	.LASF314
	.4byte	0x1a92
	.uleb128 0x76
	.byte	0x4
	.byte	0x16
	.byte	0x78
	.byte	0xb
	.4byte	0x1a8b
	.uleb128 0x77
	.byte	0x4
	.byte	0x16
	.byte	0x79
	.byte	0x10
	.4byte	0x1a72
	.uleb128 0x1b
	.4byte	.LASF315
	.byte	0x16
	.byte	0x7a
	.byte	0x1d
	.4byte	0x19d6
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF316
	.byte	0x16
	.byte	0x7b
	.byte	0x16
	.4byte	0x11e4
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF317
	.byte	0x16
	.byte	0x7c
	.byte	0x16
	.4byte	0x11e4
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF318
	.byte	0x16
	.byte	0x7d
	.byte	0x16
	.4byte	0x11e4
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF319
	.byte	0x16
	.byte	0x7e
	.byte	0x16
	.4byte	0x11e4
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF320
	.byte	0x16
	.byte	0x7f
	.byte	0x16
	.4byte	0x11e4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF321
	.byte	0x16
	.byte	0x80
	.byte	0x16
	.4byte	0x11e4
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x57
	.4byte	.LASF322
	.byte	0x16
	.byte	0x81
	.byte	0xb
	.4byte	0x19f8
	.uleb128 0x57
	.4byte	.LASF323
	.byte	0x16
	.byte	0x82
	.byte	0x12
	.4byte	0x11e4
	.byte	0
	.uleb128 0x78
	.4byte	0x19ef
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF324
	.byte	0x16
	.byte	0x84
	.byte	0x3
	.4byte	0x19e2
	.uleb128 0xd
	.4byte	.LASF325
	.byte	0x17
	.byte	0x59
	.byte	0x12
	.4byte	0x11e4
	.uleb128 0x11
	.byte	0x4
	.4byte	0x11aa
	.uleb128 0x2b
	.4byte	.LASF327
	.byte	0x7
	.byte	0x1
	.4byte	0x11aa
	.byte	0x2
	.byte	0x12
	.byte	0xc
	.4byte	0x1adb
	.uleb128 0x7
	.4byte	.LASF328
	.byte	0
	.uleb128 0x7
	.4byte	.LASF329
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF330
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF331
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF332
	.byte	0x5
	.byte	0x1
	.4byte	0x119e
	.byte	0x2
	.byte	0x1a
	.byte	0xc
	.4byte	0x1b29
	.uleb128 0x33
	.string	"OK"
	.byte	0
	.uleb128 0x7
	.4byte	.LASF333
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF334
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF335
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF336
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF338
	.byte	0x6
	.uleb128 0x1e
	.4byte	.LASF339
	.sleb128 -1
	.uleb128 0x1e
	.4byte	.LASF340
	.sleb128 -2
	.uleb128 0x1e
	.4byte	.LASF341
	.sleb128 -3
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF342
	.byte	0x5
	.byte	0x1
	.4byte	0x119e
	.byte	0x2
	.byte	0x5b
	.byte	0xc
	.4byte	0x1b53
	.uleb128 0x33
	.string	"OK"
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF343
	.sleb128 -1
	.uleb128 0x1e
	.4byte	.LASF344
	.sleb128 -2
	.uleb128 0x1e
	.4byte	.LASF345
	.sleb128 -3
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF346
	.byte	0x5
	.byte	0x1
	.4byte	0x119e
	.byte	0x2
	.byte	0x80
	.byte	0xc
	.4byte	0x1bb3
	.uleb128 0x33
	.string	"OK"
	.byte	0
	.uleb128 0x7
	.4byte	.LASF333
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF334
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF335
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF336
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF338
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF347
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF348
	.byte	0x8
	.uleb128 0x1e
	.4byte	.LASF339
	.sleb128 -1
	.uleb128 0x1e
	.4byte	.LASF340
	.sleb128 -2
	.uleb128 0x1e
	.4byte	.LASF341
	.sleb128 -3
	.uleb128 0x1e
	.4byte	.LASF349
	.sleb128 -4
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF350
	.byte	0x5
	.byte	0x1
	.4byte	0x119e
	.byte	0x2
	.byte	0xbd
	.byte	0xc
	.4byte	0x1bd7
	.uleb128 0x33
	.string	"OK"
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF351
	.sleb128 -1
	.uleb128 0x1e
	.4byte	.LASF352
	.sleb128 -2
	.byte	0
	.uleb128 0x23
	.4byte	.LASF353
	.byte	0x4
	.byte	0x18
	.byte	0x19
	.byte	0x8
	.4byte	0x1c0c
	.uleb128 0xf
	.4byte	.LASF354
	.byte	0x18
	.byte	0x1d
	.byte	0xc
	.4byte	0x11c7
	.byte	0
	.uleb128 0xf
	.4byte	.LASF355
	.byte	0x18
	.byte	0x22
	.byte	0xb
	.4byte	0x11aa
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF356
	.byte	0x18
	.byte	0x26
	.byte	0x8
	.4byte	0x152a
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.4byte	0x1bd7
	.uleb128 0x23
	.4byte	.LASF357
	.byte	0x8
	.byte	0x18
	.byte	0x29
	.byte	0x8
	.4byte	0x1c39
	.uleb128 0xf
	.4byte	.LASF354
	.byte	0x18
	.byte	0x2a
	.byte	0xc
	.4byte	0x11e4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF356
	.byte	0x18
	.byte	0x2b
	.byte	0x8
	.4byte	0x152a
	.byte	0x4
	.byte	0
	.uleb128 0x23
	.4byte	.LASF358
	.byte	0x8
	.byte	0x18
	.byte	0x2f
	.byte	0x8
	.4byte	0x1c74
	.uleb128 0x2f
	.string	"pos"
	.byte	0x18
	.byte	0x30
	.byte	0x14
	.4byte	0x11df
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF356
	.byte	0x18
	.byte	0x31
	.byte	0x8
	.4byte	0x152a
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x4
	.uleb128 0x79
	.string	"dir"
	.byte	0x18
	.byte	0x32
	.byte	0x8
	.4byte	0x152a
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	0x1c39
	.uleb128 0xd
	.4byte	.LASF359
	.byte	0x19
	.byte	0x15
	.byte	0x1d
	.4byte	0x1c85
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1c8b
	.uleb128 0x7a
	.4byte	.LASF816
	.uleb128 0x2b
	.4byte	.LASF360
	.byte	0x7
	.byte	0x1
	.4byte	0x11aa
	.byte	0x1a
	.byte	0x6c
	.byte	0xc
	.4byte	0x1cc1
	.uleb128 0x7
	.4byte	.LASF361
	.byte	0
	.uleb128 0x33
	.string	"RMT"
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF362
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF363
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF364
	.byte	0xff
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF393
	.byte	0xb4
	.byte	0x1b
	.byte	0x2b
	.byte	0x7
	.4byte	0x1ea5
	.uleb128 0x16
	.4byte	.LASF365
	.byte	0x1b
	.byte	0x46
	.byte	0x8
	.4byte	.LASF366
	.byte	0x1
	.4byte	0x1ce3
	.4byte	0x1cee
	.uleb128 0x3
	.4byte	0x1eaa
	.uleb128 0x2
	.4byte	0x11aa
	.byte	0
	.uleb128 0x10
	.4byte	.LASF367
	.byte	0x1b
	.byte	0x5f
	.byte	0x8
	.4byte	.LASF368
	.4byte	0x152a
	.byte	0x1
	.4byte	0x1d07
	.4byte	0x1d1c
	.uleb128 0x3
	.4byte	0x1eaa
	.uleb128 0x2
	.4byte	0x11aa
	.uleb128 0x2
	.4byte	0x11aa
	.uleb128 0x2
	.4byte	0x11aa
	.byte	0
	.uleb128 0x16
	.4byte	.LASF369
	.byte	0x1b
	.byte	0x60
	.byte	0x8
	.4byte	.LASF370
	.byte	0x1
	.4byte	0x1d31
	.4byte	0x1d41
	.uleb128 0x3
	.4byte	0x1eaa
	.uleb128 0x2
	.4byte	0x11aa
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x10
	.4byte	.LASF371
	.byte	0x1b
	.byte	0x61
	.byte	0x8
	.4byte	.LASF372
	.4byte	0x152a
	.byte	0x1
	.4byte	0x1d5a
	.4byte	0x1d65
	.uleb128 0x3
	.4byte	0x1eaa
	.uleb128 0x2
	.4byte	0x11aa
	.byte	0
	.uleb128 0x10
	.4byte	.LASF373
	.byte	0x1b
	.byte	0x64
	.byte	0x15
	.4byte	.LASF374
	.4byte	0x2b72
	.byte	0x1
	.4byte	0x1d7e
	.4byte	0x1d8e
	.uleb128 0x3
	.4byte	0x1eaa
	.uleb128 0x2
	.4byte	0x11aa
	.uleb128 0x2
	.4byte	0x1c90
	.byte	0
	.uleb128 0x16
	.4byte	.LASF375
	.byte	0x1b
	.byte	0x90
	.byte	0xf
	.4byte	.LASF376
	.byte	0x1
	.4byte	0x1da3
	.4byte	0x1dae
	.uleb128 0x3
	.4byte	0x1eaa
	.uleb128 0x2
	.4byte	0x11aa
	.byte	0
	.uleb128 0x10
	.4byte	.LASF377
	.byte	0x1b
	.byte	0x91
	.byte	0x12
	.4byte	.LASF378
	.4byte	0x11aa
	.byte	0x1
	.4byte	0x1dc7
	.4byte	0x1dcd
	.uleb128 0x3
	.4byte	0x2b7d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF379
	.byte	0x1b
	.byte	0x94
	.byte	0xb
	.4byte	0x11aa
	.byte	0
	.uleb128 0x16
	.4byte	.LASF380
	.byte	0x1b
	.byte	0xaf
	.byte	0x8
	.4byte	.LASF381
	.byte	0x1
	.4byte	0x1def
	.4byte	0x1dfa
	.uleb128 0x3
	.4byte	0x1eaa
	.uleb128 0x2
	.4byte	0x2b83
	.byte	0
	.uleb128 0x7b
	.4byte	.LASF382
	.byte	0x1b
	.byte	0xb6
	.byte	0xf
	.4byte	.LASF383
	.byte	0x1
	.4byte	0x1e11
	.uleb128 0x2
	.4byte	0x11aa
	.byte	0
	.uleb128 0x16
	.4byte	.LASF384
	.byte	0x1b
	.byte	0xb9
	.byte	0x8
	.4byte	.LASF385
	.byte	0x1
	.4byte	0x1e26
	.4byte	0x1e2c
	.uleb128 0x3
	.4byte	0x1eaa
	.byte	0
	.uleb128 0x10
	.4byte	.LASF386
	.byte	0x1b
	.byte	0xc4
	.byte	0x11
	.4byte	.LASF387
	.4byte	0x1adb
	.byte	0x1
	.4byte	0x1e45
	.4byte	0x1e55
	.uleb128 0x3
	.4byte	0x1eaa
	.uleb128 0x2
	.4byte	0x2b9d
	.uleb128 0x2
	.4byte	0x11aa
	.byte	0
	.uleb128 0x17
	.4byte	.LASF388
	.byte	0x1b
	.byte	0xc8
	.byte	0x8
	.4byte	.LASF389
	.4byte	0x152a
	.4byte	0x1e6d
	.4byte	0x1e7d
	.uleb128 0x3
	.4byte	0x1eaa
	.uleb128 0x2
	.4byte	0x11aa
	.uleb128 0x2
	.4byte	0x11aa
	.byte	0
	.uleb128 0xf
	.4byte	.LASF390
	.byte	0x1b
	.byte	0xca
	.byte	0xb
	.4byte	0x11aa
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF391
	.byte	0x1b
	.byte	0xcb
	.byte	0x15
	.4byte	0x2ba3
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF392
	.byte	0x1b
	.byte	0xcd
	.byte	0xa
	.4byte	0x2b83
	.byte	0xb0
	.byte	0
	.uleb128 0x14
	.4byte	0x1cc1
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1cc1
	.uleb128 0x3d
	.4byte	.LASF394
	.byte	0x74
	.byte	0x4
	.byte	0x55
	.byte	0x7
	.4byte	0x2b6d
	.uleb128 0x15
	.4byte	.LASF365
	.byte	0x4
	.byte	0x5b
	.byte	0x8
	.4byte	.LASF395
	.4byte	0x1ed1
	.4byte	0x1ee6
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x1eaa
	.uleb128 0x2
	.4byte	0x11aa
	.uleb128 0x2
	.4byte	0x11aa
	.byte	0
	.uleb128 0x10
	.4byte	.LASF396
	.byte	0x4
	.byte	0x60
	.byte	0xb
	.4byte	.LASF397
	.4byte	0x11aa
	.byte	0x1
	.4byte	0x1eff
	.4byte	0x1f05
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x16
	.4byte	.LASF398
	.byte	0x4
	.byte	0x80
	.byte	0x8
	.4byte	.LASF399
	.byte	0x1
	.4byte	0x1f1a
	.4byte	0x1f2f
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11aa
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x11c7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF400
	.byte	0x4
	.byte	0x82
	.byte	0x12
	.4byte	.LASF401
	.4byte	0x11aa
	.byte	0x1
	.4byte	0x1f48
	.4byte	0x1f4e
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x10
	.4byte	.LASF402
	.byte	0x4
	.byte	0x83
	.byte	0xf
	.4byte	.LASF403
	.4byte	0x152a
	.byte	0x1
	.4byte	0x1f67
	.4byte	0x1f6d
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x10
	.4byte	.LASF404
	.byte	0x4
	.byte	0x89
	.byte	0xc
	.4byte	.LASF405
	.4byte	0x11c7
	.byte	0x1
	.4byte	0x1f86
	.4byte	0x1f8c
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x10
	.4byte	.LASF406
	.byte	0x4
	.byte	0x8c
	.byte	0xb
	.4byte	.LASF407
	.4byte	0x11aa
	.byte	0x1
	.4byte	0x1fa5
	.4byte	0x1fab
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x10
	.4byte	.LASF408
	.byte	0x4
	.byte	0x90
	.byte	0xc
	.4byte	.LASF409
	.4byte	0x11c7
	.byte	0x1
	.4byte	0x1fc4
	.4byte	0x1fca
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x16
	.4byte	.LASF410
	.byte	0x4
	.byte	0x9e
	.byte	0x8
	.4byte	.LASF411
	.byte	0x1
	.4byte	0x1fdf
	.4byte	0x1fef
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11aa
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x10
	.4byte	.LASF412
	.byte	0x4
	.byte	0x9f
	.byte	0x12
	.4byte	.LASF413
	.4byte	0x11aa
	.byte	0x1
	.4byte	0x2008
	.4byte	0x200e
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x10
	.4byte	.LASF414
	.byte	0x4
	.byte	0xa0
	.byte	0x12
	.4byte	.LASF415
	.4byte	0x11aa
	.byte	0x1
	.4byte	0x2027
	.4byte	0x202d
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x10
	.4byte	.LASF416
	.byte	0x4
	.byte	0xa4
	.byte	0x8
	.4byte	.LASF417
	.4byte	0x152a
	.byte	0x1
	.4byte	0x2046
	.4byte	0x204c
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x10
	.4byte	.LASF418
	.byte	0x4
	.byte	0xa5
	.byte	0x8
	.4byte	.LASF419
	.4byte	0x152a
	.byte	0x1
	.4byte	0x2065
	.4byte	0x206b
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x16
	.4byte	.LASF420
	.byte	0x4
	.byte	0xb5
	.byte	0x8
	.4byte	.LASF421
	.byte	0x1
	.4byte	0x2080
	.4byte	0x208b
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x10
	.4byte	.LASF422
	.byte	0x4
	.byte	0xb6
	.byte	0x13
	.4byte	.LASF423
	.4byte	0x1bb3
	.byte	0x1
	.4byte	0x20a4
	.4byte	0x20af
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF424
	.byte	0x4
	.byte	0xb7
	.byte	0x8
	.4byte	.LASF425
	.byte	0x1
	.4byte	0x20c4
	.4byte	0x20cf
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11c7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF426
	.byte	0x4
	.byte	0xc6
	.byte	0xb
	.4byte	.LASF427
	.4byte	0x11d3
	.byte	0x1
	.4byte	0x20e8
	.4byte	0x20ee
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x16
	.4byte	.LASF428
	.byte	0x4
	.byte	0xcd
	.byte	0x8
	.4byte	.LASF429
	.byte	0x1
	.4byte	0x2103
	.4byte	0x210e
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11d3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF430
	.byte	0x4
	.byte	0xd1
	.byte	0x8
	.4byte	.LASF431
	.4byte	0x152a
	.byte	0x1
	.4byte	0x2127
	.4byte	0x212d
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x10
	.4byte	.LASF432
	.byte	0x4
	.byte	0xdc
	.byte	0xc
	.4byte	.LASF433
	.4byte	0x11c7
	.byte	0x1
	.4byte	0x2146
	.4byte	0x214c
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x10
	.4byte	.LASF434
	.byte	0x4
	.byte	0xdd
	.byte	0xc
	.4byte	.LASF435
	.4byte	0x11c7
	.byte	0x1
	.4byte	0x2165
	.4byte	0x216b
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x10
	.4byte	.LASF436
	.byte	0x4
	.byte	0xde
	.byte	0xc
	.4byte	.LASF437
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x2184
	.4byte	0x218a
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x10
	.4byte	.LASF438
	.byte	0x4
	.byte	0xdf
	.byte	0xc
	.4byte	.LASF439
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x21a3
	.4byte	0x21a9
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x16
	.4byte	.LASF440
	.byte	0x4
	.byte	0xe6
	.byte	0x8
	.4byte	.LASF441
	.byte	0x1
	.4byte	0x21be
	.4byte	0x21c9
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11c7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF442
	.byte	0x4
	.byte	0xf7
	.byte	0xa
	.4byte	.LASF443
	.4byte	0x119e
	.byte	0x1
	.4byte	0x21e2
	.4byte	0x21ed
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF444
	.byte	0x4
	.byte	0xf8
	.byte	0xa
	.4byte	.LASF445
	.4byte	0x119e
	.byte	0x1
	.4byte	0x2206
	.4byte	0x2211
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF446
	.byte	0x4
	.byte	0xf9
	.byte	0xa
	.4byte	.LASF447
	.4byte	0x119e
	.byte	0x1
	.4byte	0x222a
	.4byte	0x2235
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF448
	.byte	0x4
	.byte	0xfa
	.byte	0xa
	.4byte	.LASF449
	.4byte	0x119e
	.byte	0x1
	.4byte	0x224e
	.4byte	0x2259
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF450
	.byte	0x4
	.byte	0xfe
	.byte	0x13
	.4byte	.LASF451
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x2272
	.4byte	0x2278
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x10
	.4byte	.LASF452
	.byte	0x4
	.byte	0xff
	.byte	0x13
	.4byte	.LASF453
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x2291
	.4byte	0x2297
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x12
	.4byte	.LASF454
	.byte	0x4
	.2byte	0x100
	.byte	0x13
	.4byte	.LASF455
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x22b1
	.4byte	0x22b7
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x12
	.4byte	.LASF456
	.byte	0x4
	.2byte	0x118
	.byte	0xb
	.4byte	.LASF457
	.4byte	0x11d3
	.byte	0x1
	.4byte	0x22d1
	.4byte	0x22dc
	.uleb128 0x3
	.4byte	0x35ef
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF458
	.byte	0x4
	.2byte	0x119
	.byte	0xb
	.4byte	.LASF459
	.4byte	0x11d3
	.byte	0x1
	.4byte	0x22f6
	.4byte	0x2301
	.uleb128 0x3
	.4byte	0x35ef
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF460
	.byte	0x4
	.2byte	0x127
	.byte	0x11
	.4byte	.LASF461
	.4byte	0x119e
	.byte	0x1
	.4byte	0x231b
	.4byte	0x2326
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11d3
	.byte	0
	.uleb128 0x12
	.4byte	.LASF462
	.byte	0x4
	.2byte	0x12a
	.byte	0x13
	.4byte	.LASF463
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x2340
	.4byte	0x2346
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x12
	.4byte	.LASF464
	.byte	0x4
	.2byte	0x130
	.byte	0x12
	.4byte	.LASF465
	.4byte	0x11d3
	.byte	0x1
	.4byte	0x2360
	.4byte	0x2366
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF466
	.byte	0x4
	.2byte	0x147
	.byte	0xf
	.4byte	.LASF467
	.byte	0x1
	.4byte	0x237c
	.4byte	0x2387
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF468
	.byte	0x4
	.2byte	0x159
	.byte	0xf
	.4byte	.LASF469
	.byte	0x1
	.4byte	0x239d
	.4byte	0x23a8
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF470
	.byte	0x4
	.2byte	0x15e
	.byte	0x8
	.4byte	.LASF471
	.byte	0x1
	.4byte	0x23be
	.4byte	0x23c4
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x12
	.4byte	.LASF472
	.byte	0x4
	.2byte	0x16a
	.byte	0x12
	.4byte	.LASF473
	.4byte	0x1b29
	.byte	0x1
	.4byte	0x23de
	.4byte	0x23ee
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11d3
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF474
	.byte	0x4
	.2byte	0x16b
	.byte	0x12
	.4byte	.LASF475
	.4byte	0x1b29
	.byte	0x1
	.4byte	0x2408
	.4byte	0x2418
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11d3
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF476
	.byte	0x4
	.2byte	0x173
	.byte	0x8
	.4byte	.LASF477
	.byte	0x1
	.4byte	0x242e
	.4byte	0x2434
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x12
	.4byte	.LASF478
	.byte	0x4
	.2byte	0x174
	.byte	0x8
	.4byte	.LASF479
	.4byte	0x152a
	.byte	0x1
	.4byte	0x244e
	.4byte	0x2454
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x12
	.4byte	.LASF480
	.byte	0x4
	.2byte	0x17a
	.byte	0x12
	.4byte	.LASF481
	.4byte	0x1b29
	.byte	0x1
	.4byte	0x246e
	.4byte	0x2474
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x12
	.4byte	.LASF482
	.byte	0x4
	.2byte	0x17b
	.byte	0x12
	.4byte	.LASF483
	.4byte	0x1b29
	.byte	0x1
	.4byte	0x248e
	.4byte	0x2494
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF484
	.byte	0x4
	.2byte	0x183
	.byte	0x8
	.4byte	.LASF485
	.byte	0x1
	.4byte	0x24aa
	.4byte	0x24b5
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF486
	.byte	0x4
	.2byte	0x184
	.byte	0x8
	.4byte	.LASF487
	.byte	0x1
	.4byte	0x24cb
	.4byte	0x24d6
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF488
	.byte	0x4
	.2byte	0x191
	.byte	0x12
	.4byte	.LASF489
	.4byte	0x1b29
	.byte	0x1
	.4byte	0x24f0
	.4byte	0x2500
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11d3
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF490
	.byte	0x4
	.2byte	0x197
	.byte	0x8
	.4byte	.LASF491
	.byte	0x1
	.4byte	0x2516
	.4byte	0x251c
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x12
	.4byte	.LASF492
	.byte	0x4
	.2byte	0x198
	.byte	0xf
	.4byte	.LASF493
	.4byte	0x152a
	.byte	0x1
	.4byte	0x2536
	.4byte	0x253c
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x12
	.4byte	.LASF494
	.byte	0x4
	.2byte	0x1a6
	.byte	0xc
	.4byte	.LASF495
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x2556
	.4byte	0x255c
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF496
	.byte	0x4
	.2byte	0x1af
	.byte	0x8
	.4byte	.LASF497
	.byte	0x1
	.4byte	0x2572
	.4byte	0x2578
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF498
	.byte	0x4
	.2byte	0x1b8
	.byte	0x8
	.4byte	.LASF499
	.byte	0x1
	.4byte	0x258e
	.4byte	0x2599
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11d3
	.byte	0
	.uleb128 0x12
	.4byte	.LASF500
	.byte	0x4
	.2byte	0x1be
	.byte	0x14
	.4byte	.LASF501
	.4byte	0x1ab0
	.byte	0x1
	.4byte	0x25b3
	.4byte	0x25b9
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x12
	.4byte	.LASF502
	.byte	0x4
	.2byte	0x1bf
	.byte	0x14
	.4byte	.LASF503
	.4byte	0x1ab0
	.byte	0x1
	.4byte	0x25d3
	.4byte	0x25d9
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x12
	.4byte	.LASF504
	.byte	0x4
	.2byte	0x1c8
	.byte	0x12
	.4byte	.LASF505
	.4byte	0x11d3
	.byte	0x1
	.4byte	0x25f3
	.4byte	0x25f9
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF506
	.byte	0x4
	.2byte	0x20a
	.byte	0xf
	.4byte	.LASF507
	.byte	0x1
	.4byte	0x260f
	.4byte	0x261a
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11aa
	.byte	0
	.uleb128 0x12
	.4byte	.LASF508
	.byte	0x4
	.2byte	0x279
	.byte	0x17
	.4byte	.LASF509
	.4byte	0x1b53
	.byte	0x1
	.4byte	0x2634
	.4byte	0x2653
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11bb
	.uleb128 0x2
	.4byte	0x11e4
	.uleb128 0x2
	.4byte	0x35fa
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF510
	.byte	0x4
	.2byte	0x316
	.byte	0x11
	.4byte	.LASF511
	.4byte	0x1adb
	.byte	0x1
	.4byte	0x266d
	.4byte	0x267d
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x3600
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF512
	.byte	0x4
	.2byte	0x31a
	.byte	0x8
	.4byte	.LASF513
	.4byte	0x152a
	.byte	0x1
	.4byte	0x2697
	.4byte	0x269d
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x12
	.4byte	.LASF514
	.byte	0x4
	.2byte	0x31b
	.byte	0x8
	.4byte	.LASF515
	.4byte	0x152a
	.byte	0x1
	.4byte	0x26b7
	.4byte	0x26bd
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x12
	.4byte	.LASF516
	.byte	0x4
	.2byte	0x31c
	.byte	0x8
	.4byte	.LASF517
	.4byte	0x152a
	.byte	0x1
	.4byte	0x26d7
	.4byte	0x26dd
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x12
	.4byte	.LASF518
	.byte	0x4
	.2byte	0x324
	.byte	0xc
	.4byte	.LASF519
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x26f7
	.4byte	0x26fd
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x12
	.4byte	.LASF520
	.byte	0x4
	.2byte	0x329
	.byte	0x8
	.4byte	.LASF521
	.4byte	0x152a
	.byte	0x1
	.4byte	0x2717
	.4byte	0x2722
	.uleb128 0x3
	.4byte	0x35ef
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x12
	.4byte	.LASF522
	.byte	0x4
	.2byte	0x32d
	.byte	0xb
	.4byte	.LASF523
	.4byte	0x11aa
	.byte	0x1
	.4byte	0x273c
	.4byte	0x2742
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x12
	.4byte	.LASF524
	.byte	0x4
	.2byte	0x331
	.byte	0xb
	.4byte	.LASF525
	.4byte	0x11d3
	.byte	0x1
	.4byte	0x275c
	.4byte	0x2762
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x12
	.4byte	.LASF526
	.byte	0x4
	.2byte	0x339
	.byte	0xc
	.4byte	.LASF527
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x277c
	.4byte	0x2782
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x12
	.4byte	.LASF528
	.byte	0x4
	.2byte	0x33a
	.byte	0xc
	.4byte	.LASF529
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x279c
	.4byte	0x27a2
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF530
	.byte	0x4
	.2byte	0x33e
	.byte	0x8
	.4byte	.LASF531
	.byte	0x1
	.4byte	0x27b8
	.4byte	0x27c3
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11d3
	.byte	0
	.uleb128 0x12
	.4byte	.LASF532
	.byte	0x4
	.2byte	0x343
	.byte	0x12
	.4byte	.LASF533
	.4byte	0x11aa
	.byte	0x1
	.4byte	0x27dd
	.4byte	0x27e3
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x12
	.4byte	.LASF534
	.byte	0x4
	.2byte	0x346
	.byte	0xf
	.4byte	.LASF535
	.4byte	0x152a
	.byte	0x1
	.4byte	0x27fd
	.4byte	0x2803
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF536
	.byte	0x4
	.2byte	0x34c
	.byte	0x8
	.4byte	.LASF537
	.byte	0x1
	.4byte	0x2819
	.4byte	0x281f
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF538
	.byte	0x4
	.2byte	0x34d
	.byte	0x8
	.4byte	.LASF539
	.byte	0x1
	.4byte	0x2835
	.4byte	0x283b
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x12
	.4byte	.LASF540
	.byte	0x4
	.2byte	0x37f
	.byte	0x8
	.4byte	.LASF541
	.4byte	0x152a
	.byte	0x1
	.4byte	0x2855
	.4byte	0x2874
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11aa
	.uleb128 0x2
	.4byte	0x11bb
	.uleb128 0x2
	.4byte	0x11bb
	.uleb128 0x2
	.4byte	0x11aa
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF542
	.byte	0x4
	.2byte	0x384
	.byte	0xb
	.4byte	.LASF543
	.4byte	0x11bb
	.byte	0x1
	.4byte	0x288e
	.4byte	0x2894
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF544
	.byte	0x4
	.2byte	0x385
	.byte	0x8
	.4byte	.LASF545
	.byte	0x1
	.4byte	0x28aa
	.4byte	0x28b0
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x12
	.4byte	.LASF546
	.byte	0x4
	.2byte	0x386
	.byte	0xf
	.4byte	.LASF547
	.4byte	0x152a
	.byte	0x1
	.4byte	0x28ca
	.4byte	0x28d0
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x12
	.4byte	.LASF548
	.byte	0x4
	.2byte	0x395
	.byte	0xd
	.4byte	.LASF549
	.4byte	0x1c90
	.byte	0x1
	.4byte	0x28ea
	.4byte	0x28f0
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x12
	.4byte	.LASF550
	.byte	0x4
	.2byte	0x396
	.byte	0xf
	.4byte	.LASF551
	.4byte	0x1316
	.byte	0x1
	.4byte	0x290a
	.4byte	0x2910
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0x22
	.4byte	.LASF552
	.byte	0x4
	.2byte	0x39a
	.byte	0x8
	.4byte	.LASF553
	.4byte	0x2925
	.4byte	0x2935
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x152a
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x22
	.4byte	.LASF554
	.byte	0x4
	.2byte	0x39b
	.byte	0x8
	.4byte	.LASF555
	.4byte	0x294a
	.4byte	0x2950
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x22
	.4byte	.LASF556
	.byte	0x4
	.2byte	0x39c
	.byte	0x8
	.4byte	.LASF557
	.4byte	0x2965
	.4byte	0x296b
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0x22
	.4byte	.LASF558
	.byte	0x4
	.2byte	0x39d
	.byte	0x8
	.4byte	.LASF559
	.4byte	0x2980
	.4byte	0x2986
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0xc
	.4byte	.LASF560
	.byte	0x4
	.2byte	0x39e
	.byte	0x8
	.4byte	.LASF561
	.4byte	0x152a
	.4byte	0x299f
	.4byte	0x29a5
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0xc
	.4byte	.LASF562
	.byte	0x4
	.2byte	0x39f
	.byte	0x8
	.4byte	.LASF563
	.4byte	0x152a
	.4byte	0x29be
	.4byte	0x29c4
	.uleb128 0x3
	.4byte	0x2b72
	.byte	0
	.uleb128 0xc
	.4byte	.LASF564
	.byte	0x4
	.2byte	0x3a0
	.byte	0x8
	.4byte	.LASF565
	.4byte	0x152a
	.4byte	0x29dd
	.4byte	0x29e8
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11aa
	.byte	0
	.uleb128 0x22
	.4byte	.LASF566
	.byte	0x4
	.2byte	0x3a1
	.byte	0x8
	.4byte	.LASF567
	.4byte	0x29fd
	.4byte	0x2a0d
	.uleb128 0x3
	.4byte	0x35ef
	.uleb128 0x2
	.4byte	0x35e9
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF568
	.byte	0x4
	.2byte	0x3a3
	.byte	0x8
	.4byte	.LASF569
	.4byte	0x152a
	.4byte	0x2a26
	.4byte	0x2a36
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x3606
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF570
	.byte	0x4
	.2byte	0x3a4
	.byte	0x17
	.4byte	.LASF571
	.4byte	0x3606
	.4byte	0x2a4f
	.4byte	0x2a55
	.uleb128 0x3
	.4byte	0x35ef
	.byte	0
	.uleb128 0xc
	.4byte	.LASF572
	.byte	0x4
	.2byte	0x3a5
	.byte	0x8
	.4byte	.LASF573
	.4byte	0x152a
	.4byte	0x2a6e
	.4byte	0x2a7e
	.uleb128 0x3
	.4byte	0x2b72
	.uleb128 0x2
	.4byte	0x11aa
	.uleb128 0x2
	.4byte	0x11aa
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF574
	.byte	0x4
	.2byte	0x3a7
	.byte	0x1b
	.4byte	0x1eaa
	.byte	0
	.uleb128 0x7c
	.string	"_rg"
	.byte	0x4
	.2byte	0x3a8
	.byte	0x11
	.4byte	0x313f
	.byte	0x4
	.uleb128 0x1c
	.4byte	.LASF575
	.byte	0x4
	.2byte	0x3a9
	.byte	0xb
	.4byte	0x11aa
	.byte	0x50
	.uleb128 0x1c
	.4byte	.LASF576
	.byte	0x4
	.2byte	0x3aa
	.byte	0xb
	.4byte	0x11aa
	.byte	0x51
	.uleb128 0x1c
	.4byte	.LASF577
	.byte	0x4
	.2byte	0x3ab
	.byte	0x8
	.4byte	0x152a
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF578
	.byte	0x4
	.2byte	0x3ac
	.byte	0x8
	.4byte	0x152a
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF579
	.byte	0x4
	.2byte	0x3ad
	.byte	0xb
	.4byte	0x11aa
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF580
	.byte	0x4
	.2byte	0x3ae
	.byte	0xb
	.4byte	0x11aa
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LASF581
	.byte	0x4
	.2byte	0x3af
	.byte	0xb
	.4byte	0x11aa
	.byte	0x56
	.uleb128 0x1c
	.4byte	.LASF582
	.byte	0x4
	.2byte	0x3b1
	.byte	0xc
	.4byte	0x11c7
	.byte	0x58
	.uleb128 0x1c
	.4byte	.LASF583
	.byte	0x4
	.2byte	0x3b2
	.byte	0xc
	.4byte	0x11e4
	.byte	0x5c
	.uleb128 0x1c
	.4byte	.LASF584
	.byte	0x4
	.2byte	0x3b3
	.byte	0xc
	.4byte	0x11c7
	.byte	0x60
	.uleb128 0x1c
	.4byte	.LASF585
	.byte	0x4
	.2byte	0x3b4
	.byte	0xc
	.4byte	0x11c7
	.byte	0x62
	.uleb128 0x1c
	.4byte	.LASF586
	.byte	0x4
	.2byte	0x3b6
	.byte	0xc
	.4byte	0x11e4
	.byte	0x64
	.uleb128 0x1c
	.4byte	.LASF587
	.byte	0x4
	.2byte	0x3b8
	.byte	0x16
	.4byte	0x2bb3
	.byte	0x68
	.uleb128 0x1c
	.4byte	.LASF588
	.byte	0x4
	.2byte	0x3bb
	.byte	0x16
	.4byte	0x1c79
	.byte	0x6c
	.uleb128 0x1c
	.4byte	.LASF589
	.byte	0x4
	.2byte	0x3cc
	.byte	0x14
	.4byte	0x11b6
	.byte	0x70
	.byte	0
	.uleb128 0x14
	.4byte	0x1eb0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1eb0
	.uleb128 0x14
	.4byte	0x2b72
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1ea5
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2b89
	.uleb128 0x52
	.4byte	0x152a
	.4byte	0x2b9d
	.uleb128 0x2
	.4byte	0x11aa
	.uleb128 0x2
	.4byte	0x11aa
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2b72
	.uleb128 0x3b
	.4byte	0x2b72
	.4byte	0x2bb3
	.uleb128 0x3c
	.4byte	0x2c
	.byte	0x2a
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF590
	.byte	0x7
	.byte	0x1
	.4byte	0x11aa
	.byte	0x4
	.byte	0x7
	.byte	0xc
	.4byte	0x2bd8
	.uleb128 0x7
	.4byte	.LASF328
	.byte	0xff
	.uleb128 0x33
	.string	"Low"
	.byte	0
	.uleb128 0x7
	.4byte	.LASF591
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF592
	.byte	0x1c
	.byte	0x7
	.byte	0x11
	.4byte	0x11bb
	.uleb128 0x23
	.4byte	.LASF593
	.byte	0x14
	.byte	0x1d
	.byte	0x36
	.byte	0x8
	.4byte	0x2dda
	.uleb128 0xf
	.4byte	.LASF594
	.byte	0x1d
	.byte	0x37
	.byte	0xb
	.4byte	0x11d3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF595
	.byte	0x1d
	.byte	0x38
	.byte	0xc
	.4byte	0x11e4
	.byte	0x4
	.uleb128 0x2f
	.string	"s_h"
	.byte	0x1d
	.byte	0x39
	.byte	0xc
	.4byte	0x11e4
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF596
	.byte	0x1d
	.byte	0x3a
	.byte	0xc
	.4byte	0x11e4
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF597
	.byte	0x1d
	.byte	0x3b
	.byte	0x10
	.4byte	0x2bd8
	.byte	0x10
	.uleb128 0x1b
	.4byte	.LASF598
	.byte	0x1d
	.byte	0x3c
	.byte	0x8
	.4byte	0x152a
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x12
	.uleb128 0x1b
	.4byte	.LASF599
	.byte	0x1d
	.byte	0x3d
	.byte	0x8
	.4byte	0x152a
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x12
	.uleb128 0x1b
	.4byte	.LASF600
	.byte	0x1d
	.byte	0x3e
	.byte	0x8
	.4byte	0x152a
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x12
	.uleb128 0x1b
	.4byte	.LASF601
	.byte	0x1d
	.byte	0x3f
	.byte	0x8
	.4byte	0x152a
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x12
	.uleb128 0x1b
	.4byte	.LASF602
	.byte	0x1d
	.byte	0x40
	.byte	0x8
	.4byte	0x152a
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x12
	.uleb128 0x1b
	.4byte	.LASF603
	.byte	0x1d
	.byte	0x41
	.byte	0x8
	.4byte	0x152a
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x12
	.uleb128 0x1b
	.4byte	.LASF604
	.byte	0x1d
	.byte	0x42
	.byte	0x8
	.4byte	0x152a
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x12
	.uleb128 0x1b
	.4byte	.LASF605
	.byte	0x1d
	.byte	0x43
	.byte	0x8
	.4byte	0x152a
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x12
	.uleb128 0x15
	.4byte	.LASF365
	.byte	0x1d
	.byte	0x45
	.byte	0x8
	.4byte	.LASF606
	.4byte	0x2cc6
	.4byte	0x2ccc
	.uleb128 0x3
	.4byte	0x2ddf
	.byte	0
	.uleb128 0x15
	.4byte	.LASF607
	.byte	0x1d
	.byte	0x4a
	.byte	0xf
	.4byte	.LASF608
	.4byte	0x2ce0
	.4byte	0x2ce6
	.uleb128 0x3
	.4byte	0x2ddf
	.byte	0
	.uleb128 0x15
	.4byte	.LASF609
	.byte	0x1d
	.byte	0x51
	.byte	0xf
	.4byte	.LASF610
	.4byte	0x2cfa
	.4byte	0x2d05
	.uleb128 0x3
	.4byte	0x2ddf
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF611
	.byte	0x1d
	.byte	0x59
	.byte	0xf
	.4byte	.LASF612
	.4byte	0x2d19
	.4byte	0x2d24
	.uleb128 0x3
	.4byte	0x2ddf
	.uleb128 0x2
	.4byte	0x11d3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF613
	.byte	0x1d
	.byte	0x63
	.byte	0xf
	.4byte	.LASF614
	.4byte	0x2d38
	.4byte	0x2d43
	.uleb128 0x3
	.4byte	0x2ddf
	.uleb128 0x2
	.4byte	0x11d3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF615
	.byte	0x1d
	.byte	0x71
	.byte	0xf
	.4byte	.LASF616
	.4byte	0x2d57
	.4byte	0x2d62
	.uleb128 0x3
	.4byte	0x2ddf
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF444
	.byte	0x1d
	.byte	0x7a
	.byte	0xf
	.4byte	.LASF617
	.4byte	0x2d76
	.4byte	0x2d81
	.uleb128 0x3
	.4byte	0x2ddf
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF460
	.byte	0x1d
	.byte	0x83
	.byte	0xf
	.4byte	.LASF618
	.4byte	0x2d95
	.4byte	0x2da0
	.uleb128 0x3
	.4byte	0x2ddf
	.uleb128 0x2
	.4byte	0x11d3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF468
	.byte	0x1d
	.byte	0x8e
	.byte	0xf
	.4byte	.LASF619
	.4byte	0x2db4
	.4byte	0x2dbf
	.uleb128 0x3
	.4byte	0x2ddf
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x46
	.4byte	.LASF620
	.byte	0x1d
	.byte	0x8f
	.byte	0x19
	.4byte	.LASF621
	.4byte	0x1b29
	.4byte	0x2dd3
	.uleb128 0x3
	.4byte	0x2de5
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x2be4
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2be4
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2dda
	.uleb128 0x23
	.4byte	.LASF622
	.byte	0x1c
	.byte	0x1d
	.byte	0x9a
	.byte	0x8
	.4byte	0x2ea3
	.uleb128 0xf
	.4byte	.LASF623
	.byte	0x1d
	.byte	0x9b
	.byte	0x1c
	.4byte	0x2be4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF624
	.byte	0x1d
	.byte	0x9e
	.byte	0xc
	.4byte	0x11e4
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF625
	.byte	0x1d
	.byte	0x9f
	.byte	0x10
	.4byte	0x2bd8
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF626
	.byte	0x1d
	.byte	0xa0
	.byte	0x10
	.4byte	0x2bd8
	.byte	0x1a
	.uleb128 0x15
	.4byte	.LASF365
	.byte	0x1d
	.byte	0xa2
	.byte	0x8
	.4byte	.LASF627
	.4byte	0x2e40
	.4byte	0x2e46
	.uleb128 0x3
	.4byte	0x2ea8
	.byte	0
	.uleb128 0x15
	.4byte	.LASF628
	.byte	0x1d
	.byte	0xa3
	.byte	0xf
	.4byte	.LASF629
	.4byte	0x2e5a
	.4byte	0x2e60
	.uleb128 0x3
	.4byte	0x2ea8
	.byte	0
	.uleb128 0x17
	.4byte	.LASF630
	.byte	0x1d
	.byte	0xbc
	.byte	0xc
	.4byte	.LASF631
	.4byte	0x11e4
	.4byte	0x2e78
	.4byte	0x2e83
	.uleb128 0x3
	.4byte	0x2eae
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x46
	.4byte	.LASF632
	.byte	0x1d
	.byte	0xd2
	.byte	0xc
	.4byte	.LASF633
	.4byte	0x11e4
	.4byte	0x2e97
	.uleb128 0x3
	.4byte	0x2eae
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x2deb
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2deb
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2ea3
	.uleb128 0x23
	.4byte	.LASF634
	.byte	0x24
	.byte	0x6
	.byte	0x7
	.byte	0x8
	.4byte	0x3040
	.uleb128 0xf
	.4byte	.LASF635
	.byte	0x6
	.byte	0x8
	.byte	0x18
	.4byte	0x2deb
	.byte	0
	.uleb128 0xf
	.4byte	.LASF636
	.byte	0x6
	.byte	0x9
	.byte	0xc
	.4byte	0x11e4
	.byte	0x1c
	.uleb128 0x1b
	.4byte	.LASF637
	.byte	0x6
	.byte	0xa
	.byte	0x8
	.4byte	0x152a
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x20
	.uleb128 0x1b
	.4byte	.LASF638
	.byte	0x6
	.byte	0xb
	.byte	0x8
	.4byte	0x152a
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x20
	.uleb128 0x1b
	.4byte	.LASF639
	.byte	0x6
	.byte	0xc
	.byte	0x8
	.4byte	0x152a
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF365
	.byte	0x6
	.byte	0xd
	.byte	0xf
	.4byte	.LASF640
	.4byte	0x2f1f
	.4byte	0x2f25
	.uleb128 0x3
	.4byte	0x3045
	.byte	0
	.uleb128 0x17
	.4byte	.LASF641
	.byte	0x6
	.byte	0xe
	.byte	0x12
	.4byte	.LASF642
	.4byte	0x11d3
	.4byte	0x2f3d
	.4byte	0x2f43
	.uleb128 0x3
	.4byte	0x304b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF611
	.byte	0x6
	.byte	0xf
	.byte	0xf
	.4byte	.LASF643
	.4byte	0x2f57
	.4byte	0x2f62
	.uleb128 0x3
	.4byte	0x3045
	.uleb128 0x2
	.4byte	0x11d3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF644
	.byte	0x6
	.byte	0x10
	.byte	0xf
	.4byte	.LASF645
	.4byte	0x2f76
	.4byte	0x2f81
	.uleb128 0x3
	.4byte	0x3045
	.uleb128 0x2
	.4byte	0x11d3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF646
	.byte	0x6
	.byte	0x13
	.byte	0xf
	.4byte	.LASF647
	.4byte	0x2f95
	.4byte	0x2f9b
	.uleb128 0x3
	.4byte	0x3045
	.byte	0
	.uleb128 0x17
	.4byte	.LASF648
	.byte	0x6
	.byte	0x14
	.byte	0xf
	.4byte	.LASF649
	.4byte	0x152a
	.4byte	0x2fb3
	.4byte	0x2fb9
	.uleb128 0x3
	.4byte	0x304b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF650
	.byte	0x6
	.byte	0x15
	.byte	0xf
	.4byte	.LASF651
	.4byte	0x2fcd
	.4byte	0x2fd3
	.uleb128 0x3
	.4byte	0x3045
	.byte	0
	.uleb128 0x15
	.4byte	.LASF652
	.byte	0x6
	.byte	0x16
	.byte	0xf
	.4byte	.LASF653
	.4byte	0x2fe7
	.4byte	0x2fed
	.uleb128 0x3
	.4byte	0x3045
	.byte	0
	.uleb128 0x17
	.4byte	.LASF654
	.byte	0x6
	.byte	0x17
	.byte	0xf
	.4byte	.LASF655
	.4byte	0x152a
	.4byte	0x3005
	.4byte	0x300b
	.uleb128 0x3
	.4byte	0x304b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF656
	.byte	0x6
	.byte	0x18
	.byte	0xf
	.4byte	.LASF657
	.4byte	0x301f
	.4byte	0x3025
	.uleb128 0x3
	.4byte	0x3045
	.byte	0
	.uleb128 0x46
	.4byte	.LASF478
	.byte	0x6
	.byte	0x19
	.byte	0xf
	.4byte	.LASF658
	.4byte	0x152a
	.4byte	0x3039
	.uleb128 0x3
	.4byte	0x304b
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x2eb4
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2eb4
	.uleb128 0x11
	.byte	0x4
	.4byte	0x3040
	.uleb128 0x23
	.4byte	.LASF659
	.byte	0x10
	.byte	0x6
	.byte	0x1e
	.byte	0x8
	.4byte	0x30fb
	.uleb128 0xf
	.4byte	.LASF660
	.byte	0x6
	.byte	0x1f
	.byte	0x14
	.4byte	0x11b6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF661
	.byte	0x6
	.byte	0x23
	.byte	0xc
	.4byte	0x11e4
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF662
	.byte	0x6
	.byte	0x26
	.byte	0xc
	.4byte	0x11e4
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF663
	.byte	0x6
	.byte	0x28
	.byte	0xc
	.4byte	0x11e4
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF365
	.byte	0x6
	.byte	0x29
	.byte	0x8
	.4byte	.LASF664
	.4byte	0x30a6
	.4byte	0x30ac
	.uleb128 0x3
	.4byte	0x3100
	.byte	0
	.uleb128 0x15
	.4byte	.LASF665
	.byte	0x6
	.byte	0x2a
	.byte	0xf
	.4byte	.LASF666
	.4byte	0x30c0
	.4byte	0x30c6
	.uleb128 0x3
	.4byte	0x3100
	.byte	0
	.uleb128 0x17
	.4byte	.LASF532
	.byte	0x6
	.byte	0x2b
	.byte	0x12
	.4byte	.LASF667
	.4byte	0x11aa
	.4byte	0x30de
	.4byte	0x30e4
	.uleb128 0x3
	.4byte	0x3106
	.byte	0
	.uleb128 0x58
	.4byte	.LASF668
	.byte	0x6
	.byte	0x2f
	.byte	0xf
	.4byte	.LASF670
	.4byte	0x30f4
	.uleb128 0x3
	.4byte	0x3100
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x3051
	.uleb128 0x11
	.byte	0x4
	.4byte	0x3051
	.uleb128 0x11
	.byte	0x4
	.4byte	0x30fb
	.uleb128 0x14
	.4byte	0x3106
	.uleb128 0x3d
	.4byte	.LASF671
	.byte	0x14
	.byte	0x6
	.byte	0x3d
	.byte	0x7
	.4byte	0x313a
	.uleb128 0x45
	.4byte	.LASF673
	.byte	0x6
	.byte	0x3f
	.byte	0x1c
	.4byte	0x1bd7
	.byte	0
	.byte	0x1
	.uleb128 0x7d
	.string	"rw"
	.byte	0x6
	.byte	0x40
	.byte	0x14
	.4byte	0x3051
	.byte	0x4
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.4byte	0x3111
	.uleb128 0x3d
	.4byte	.LASF674
	.byte	0x4c
	.byte	0x5
	.byte	0xe
	.byte	0x7
	.4byte	0x35c1
	.uleb128 0xf
	.4byte	.LASF675
	.byte	0x5
	.byte	0x10
	.byte	0x1c
	.4byte	0x2be4
	.byte	0
	.uleb128 0x2f
	.string	"_ro"
	.byte	0x5
	.byte	0x15
	.byte	0x14
	.4byte	0x2eb4
	.byte	0x14
	.uleb128 0x2f
	.string	"_rw"
	.byte	0x5
	.byte	0x16
	.byte	0x14
	.4byte	0x3051
	.byte	0x38
	.uleb128 0x45
	.4byte	.LASF676
	.byte	0x5
	.byte	0x19
	.byte	0xc
	.4byte	0x11e4
	.byte	0x48
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF532
	.byte	0x5
	.byte	0x1a
	.byte	0x12
	.4byte	.LASF677
	.4byte	0x11aa
	.byte	0x1
	.4byte	0x319a
	.4byte	0x31a0
	.uleb128 0x3
	.4byte	0x35c6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF365
	.byte	0x5
	.byte	0x1b
	.byte	0x8
	.4byte	.LASF678
	.byte	0x1
	.4byte	0x31b5
	.4byte	0x31bb
	.uleb128 0x3
	.4byte	0x35d1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF641
	.byte	0x5
	.byte	0x1c
	.byte	0x12
	.4byte	.LASF679
	.4byte	0x11d3
	.byte	0x1
	.4byte	0x31d4
	.4byte	0x31da
	.uleb128 0x3
	.4byte	0x35c6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF611
	.byte	0x5
	.byte	0x1d
	.byte	0xf
	.4byte	.LASF680
	.byte	0x1
	.4byte	0x31ef
	.4byte	0x31fa
	.uleb128 0x3
	.4byte	0x35d1
	.uleb128 0x2
	.4byte	0x11d3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF681
	.byte	0x5
	.byte	0x1e
	.byte	0x8
	.4byte	.LASF682
	.byte	0x1
	.4byte	0x320f
	.4byte	0x321a
	.uleb128 0x3
	.4byte	0x35d1
	.uleb128 0x2
	.4byte	0x11d3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF444
	.byte	0x5
	.byte	0x1f
	.byte	0xf
	.4byte	.LASF683
	.byte	0x1
	.4byte	0x322f
	.4byte	0x323a
	.uleb128 0x3
	.4byte	0x35d1
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF450
	.byte	0x5
	.byte	0x22
	.byte	0x13
	.4byte	.LASF684
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x3253
	.4byte	0x3259
	.uleb128 0x3
	.4byte	0x35c6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF452
	.byte	0x5
	.byte	0x25
	.byte	0x13
	.4byte	.LASF685
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x3272
	.4byte	0x3278
	.uleb128 0x3
	.4byte	0x35c6
	.byte	0
	.uleb128 0x59
	.4byte	.LASF686
	.byte	0x5
	.byte	0x28
	.byte	0x13
	.4byte	.LASF687
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x3293
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x59
	.4byte	.LASF688
	.byte	0x5
	.byte	0x32
	.byte	0x13
	.4byte	.LASF689
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x32ae
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF454
	.byte	0x5
	.byte	0x38
	.byte	0x13
	.4byte	.LASF690
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x32c7
	.4byte	0x32cd
	.uleb128 0x3
	.4byte	0x35c6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF460
	.byte	0x5
	.byte	0x3e
	.byte	0xa
	.4byte	.LASF691
	.4byte	0x119e
	.byte	0x1
	.4byte	0x32e6
	.4byte	0x32f1
	.uleb128 0x3
	.4byte	0x35d1
	.uleb128 0x2
	.4byte	0x11d3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF462
	.byte	0x5
	.byte	0x3f
	.byte	0x13
	.4byte	.LASF692
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x330a
	.4byte	0x3310
	.uleb128 0x3
	.4byte	0x35c6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF466
	.byte	0x5
	.byte	0x40
	.byte	0xf
	.4byte	.LASF693
	.byte	0x1
	.4byte	0x3325
	.4byte	0x3330
	.uleb128 0x3
	.4byte	0x35d1
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF468
	.byte	0x5
	.byte	0x43
	.byte	0xf
	.4byte	.LASF694
	.byte	0x1
	.4byte	0x3345
	.4byte	0x3350
	.uleb128 0x3
	.4byte	0x35d1
	.uleb128 0x2
	.4byte	0x11e4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF464
	.byte	0x5
	.byte	0x46
	.byte	0xb
	.4byte	.LASF695
	.4byte	0x11d3
	.byte	0x1
	.4byte	0x3369
	.4byte	0x336f
	.uleb128 0x3
	.4byte	0x35c6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF696
	.byte	0x5
	.byte	0x47
	.byte	0xf
	.4byte	.LASF697
	.4byte	0x152a
	.byte	0x1
	.4byte	0x3388
	.4byte	0x338e
	.uleb128 0x3
	.4byte	0x35c6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF470
	.byte	0x5
	.byte	0x4a
	.byte	0x8
	.4byte	.LASF698
	.byte	0x1
	.4byte	0x33a3
	.4byte	0x33a9
	.uleb128 0x3
	.4byte	0x35d1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF472
	.byte	0x5
	.byte	0x4b
	.byte	0x12
	.4byte	.LASF699
	.4byte	0x1b29
	.byte	0x1
	.4byte	0x33c2
	.4byte	0x33cd
	.uleb128 0x3
	.4byte	0x35d1
	.uleb128 0x2
	.4byte	0x11d3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF474
	.byte	0x5
	.byte	0x4c
	.byte	0x12
	.4byte	.LASF700
	.4byte	0x1b29
	.byte	0x1
	.4byte	0x33e6
	.4byte	0x33f6
	.uleb128 0x3
	.4byte	0x35d1
	.uleb128 0x2
	.4byte	0x11d3
	.uleb128 0x2
	.4byte	0x35d7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF701
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.4byte	.LASF702
	.4byte	0x1b29
	.byte	0x1
	.4byte	0x340f
	.4byte	0x341a
	.uleb128 0x3
	.4byte	0x35d1
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF496
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.4byte	.LASF703
	.byte	0x1
	.4byte	0x342f
	.4byte	0x3435
	.uleb128 0x3
	.4byte	0x35d1
	.byte	0
	.uleb128 0x16
	.4byte	.LASF652
	.byte	0x5
	.byte	0x4f
	.byte	0xf
	.4byte	.LASF704
	.byte	0x1
	.4byte	0x344a
	.4byte	0x3450
	.uleb128 0x3
	.4byte	0x35d1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF492
	.byte	0x5
	.byte	0x50
	.byte	0xf
	.4byte	.LASF705
	.4byte	0x152a
	.byte	0x1
	.4byte	0x3469
	.4byte	0x346f
	.uleb128 0x3
	.4byte	0x35c6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF534
	.byte	0x5
	.byte	0x53
	.byte	0xf
	.4byte	.LASF706
	.4byte	0x152a
	.byte	0x1
	.4byte	0x3488
	.4byte	0x348e
	.uleb128 0x3
	.4byte	0x35c6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF494
	.byte	0x5
	.byte	0x56
	.byte	0x13
	.4byte	.LASF707
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x34a7
	.4byte	0x34ad
	.uleb128 0x3
	.4byte	0x35c6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF665
	.byte	0x5
	.byte	0x5c
	.byte	0xf
	.4byte	.LASF708
	.byte	0x1
	.4byte	0x34c2
	.4byte	0x34c8
	.uleb128 0x3
	.4byte	0x35d1
	.byte	0
	.uleb128 0x16
	.4byte	.LASF656
	.byte	0x5
	.byte	0x5d
	.byte	0xf
	.4byte	.LASF709
	.byte	0x1
	.4byte	0x34dd
	.4byte	0x34e3
	.uleb128 0x3
	.4byte	0x35d1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF478
	.byte	0x5
	.byte	0x5e
	.byte	0xf
	.4byte	.LASF710
	.4byte	0x152a
	.byte	0x1
	.4byte	0x34fc
	.4byte	0x3502
	.uleb128 0x3
	.4byte	0x35c6
	.byte	0
	.uleb128 0x16
	.4byte	.LASF711
	.byte	0x5
	.byte	0x61
	.byte	0x8
	.4byte	.LASF712
	.byte	0x1
	.4byte	0x3517
	.4byte	0x3527
	.uleb128 0x3
	.4byte	0x35d1
	.uleb128 0x2
	.4byte	0x35d7
	.uleb128 0x2
	.4byte	0x35dd
	.byte	0
	.uleb128 0x16
	.4byte	.LASF713
	.byte	0x5
	.byte	0x63
	.byte	0x8
	.4byte	.LASF714
	.byte	0x1
	.4byte	0x353c
	.4byte	0x3547
	.uleb128 0x3
	.4byte	0x35d1
	.uleb128 0x2
	.4byte	0x35e3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF566
	.byte	0x5
	.byte	0x64
	.byte	0x8
	.4byte	.LASF715
	.byte	0x1
	.4byte	0x355c
	.4byte	0x3567
	.uleb128 0x3
	.4byte	0x35c6
	.uleb128 0x2
	.4byte	0x35e9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF716
	.byte	0x5
	.byte	0x6b
	.byte	0xc
	.4byte	.LASF717
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x3580
	.4byte	0x3586
	.uleb128 0x3
	.4byte	0x35c6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF718
	.byte	0x5
	.byte	0x71
	.byte	0x13
	.4byte	.LASF719
	.4byte	0x11e4
	.byte	0x1
	.4byte	0x359f
	.4byte	0x35a5
	.uleb128 0x3
	.4byte	0x35c6
	.byte	0
	.uleb128 0x58
	.4byte	.LASF720
	.byte	0x5
	.byte	0x76
	.byte	0x8
	.4byte	.LASF721
	.4byte	0x35b5
	.uleb128 0x3
	.4byte	0x35d1
	.uleb128 0x2
	.4byte	0x152a
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x313f
	.uleb128 0x11
	.byte	0x4
	.4byte	0x35c1
	.uleb128 0x14
	.4byte	0x35c6
	.uleb128 0x11
	.byte	0x4
	.4byte	0x313f
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1c74
	.uleb128 0x11
	.byte	0x4
	.4byte	0x3111
	.uleb128 0x11
	.byte	0x4
	.4byte	0x313a
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1c11
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2b6d
	.uleb128 0x14
	.4byte	0x35ef
	.uleb128 0x11
	.byte	0x4
	.4byte	0x11e4
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1c0c
	.uleb128 0x11
	.byte	0x4
	.4byte	0x360c
	.uleb128 0x7e
	.4byte	.LASF817
	.uleb128 0x23
	.4byte	.LASF722
	.byte	0x6
	.byte	0x1e
	.byte	0x33
	.byte	0x8
	.4byte	0x3653
	.uleb128 0xf
	.4byte	.LASF723
	.byte	0x1e
	.byte	0x34
	.byte	0xd
	.4byte	0x11aa
	.byte	0
	.uleb128 0xf
	.4byte	.LASF724
	.byte	0x1e
	.byte	0x35
	.byte	0xd
	.4byte	0x11bb
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF725
	.byte	0x1e
	.byte	0x36
	.byte	0xd
	.4byte	0x11aa
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF726
	.byte	0x1e
	.byte	0x37
	.byte	0xd
	.4byte	0x11aa
	.byte	0x5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x10
	.4byte	.LASF727
	.uleb128 0x1a
	.byte	0x2
	.byte	0x10
	.4byte	.LASF728
	.uleb128 0x1a
	.byte	0x4
	.byte	0x10
	.4byte	.LASF729
	.uleb128 0x1a
	.byte	0x4
	.byte	0x4
	.4byte	.LASF730
	.uleb128 0x1a
	.byte	0x8
	.byte	0x4
	.4byte	.LASF731
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2b6
	.uleb128 0x14
	.4byte	0x3676
	.uleb128 0x30
	.byte	0x4
	.4byte	0xb51
	.uleb128 0x30
	.byte	0x4
	.4byte	0x2b6
	.uleb128 0x11
	.byte	0x4
	.4byte	0xb56
	.uleb128 0x11
	.byte	0x4
	.4byte	0xb51
	.uleb128 0x14
	.4byte	0x3693
	.uleb128 0x11
	.byte	0x4
	.4byte	0xb5b
	.uleb128 0x30
	.byte	0x4
	.4byte	0x2d4
	.uleb128 0x11
	.byte	0x4
	.4byte	0xb60
	.uleb128 0x14
	.4byte	0x36aa
	.uleb128 0x30
	.byte	0x4
	.4byte	0xfbd
	.uleb128 0x30
	.byte	0x4
	.4byte	0xb60
	.uleb128 0x11
	.byte	0x4
	.4byte	0xfc2
	.uleb128 0x11
	.byte	0x4
	.4byte	0xfbd
	.uleb128 0x14
	.4byte	0x36c7
	.uleb128 0x11
	.byte	0x4
	.4byte	0xfc7
	.uleb128 0x30
	.byte	0x4
	.4byte	0x152a
	.uleb128 0x7f
	.string	"TAG"
	.byte	0x1
	.byte	0x12
	.byte	0x14
	.4byte	0x1316
	.uleb128 0x3e
	.4byte	.LASF732
	.byte	0x1
	.byte	0x14
	.byte	0x1f
	.4byte	0x1cc1
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL6engine
	.uleb128 0x3b
	.4byte	0x2b72
	.4byte	0x370c
	.uleb128 0x3c
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF733
	.byte	0x1
	.byte	0x17
	.byte	0x1a
	.4byte	0x36fc
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL8steppers
	.uleb128 0x3b
	.4byte	0x159d
	.4byte	0x372e
	.uleb128 0x3c
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.4byte	0x371e
	.uleb128 0x3e
	.4byte	.LASF734
	.byte	0x1
	.byte	0x1a
	.byte	0x15
	.4byte	0x372e
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL12STEPPER_AXES
	.uleb128 0x3e
	.4byte	.LASF735
	.byte	0x1
	.byte	0x34
	.byte	0x1a
	.4byte	0xb60
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.uleb128 0x80
	.4byte	.LASF736
	.byte	0x1e
	.byte	0x3a
	.byte	0xb
	.4byte	.LASF737
	.4byte	0x13e5
	.4byte	0x3777
	.uleb128 0x2
	.4byte	0x1578
	.uleb128 0x2
	.4byte	0x3777
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x3611
	.uleb128 0x56
	.4byte	.LASF738
	.byte	0x1f
	.2byte	0x342
	.byte	0x6
	.4byte	0x3790
	.uleb128 0x2
	.4byte	0x1a9e
	.byte	0
	.uleb128 0x81
	.4byte	.LASF818
	.byte	0x22
	.byte	0x3b
	.byte	0xb
	.4byte	.LASF819
	.4byte	0x13e5
	.uleb128 0x54
	.4byte	.LASF739
	.byte	0x20
	.byte	0x26
	.byte	0x6
	.4byte	0x37bf
	.uleb128 0x2
	.4byte	0x1a92
	.uleb128 0x2
	.4byte	0x1316
	.uleb128 0x2
	.4byte	0x1316
	.uleb128 0x82
	.byte	0
	.uleb128 0x55
	.4byte	.LASF741
	.byte	0x21
	.byte	0x26
	.byte	0xa
	.4byte	0x11e4
	.uleb128 0x26
	.4byte	0x6ea
	.4byte	0x37d9
	.byte	0x3
	.4byte	0x380a
	.uleb128 0x27
	.4byte	.LASF742
	.4byte	0x367c
	.uleb128 0x3f
	.string	"__i"
	.byte	0x8
	.2byte	0x1d5
	.byte	0x18
	.4byte	0x2d4
	.uleb128 0x3f
	.string	"__m"
	.byte	0x8
	.2byte	0x1d5
	.byte	0x2a
	.4byte	0x24a
	.uleb128 0x5a
	.string	"__b"
	.byte	0x8
	.2byte	0x1d7
	.byte	0xf
	.4byte	0x24a
	.byte	0
	.uleb128 0x26
	.4byte	0x734
	.4byte	0x3818
	.byte	0x3
	.4byte	0x383c
	.uleb128 0x27
	.4byte	.LASF742
	.4byte	0x3699
	.uleb128 0x3f
	.string	"__m"
	.byte	0x8
	.2byte	0x1ee
	.byte	0x19
	.4byte	0x24a
	.uleb128 0x5a
	.string	"__b"
	.byte	0x8
	.2byte	0x1f0
	.byte	0xf
	.4byte	0x24a
	.byte	0
	.uleb128 0x26
	.4byte	0x3f0
	.4byte	0x384a
	.byte	0x3
	.4byte	0x3861
	.uleb128 0x27
	.4byte	.LASF742
	.4byte	0x367c
	.uleb128 0x3f
	.string	"__i"
	.byte	0x8
	.2byte	0x16f
	.byte	0x1c
	.4byte	0x2d4
	.byte	0
	.uleb128 0x28
	.4byte	.LASF743
	.byte	0x1
	.2byte	0x22d
	.byte	0x6
	.4byte	.LASF745
	.4byte	0x152a
	.4byte	.LFB1203
	.4byte	.LFE1203-.LFB1203
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x389d
	.uleb128 0x2c
	.string	"a"
	.byte	0x1
	.2byte	0x22d
	.byte	0x20
	.4byte	0x1578
	.4byte	.LLST125
	.4byte	.LVUS125
	.uleb128 0xb
	.4byte	.LVL359
	.4byte	0x210e
	.byte	0
	.uleb128 0x28
	.4byte	.LASF744
	.byte	0x1
	.2byte	0x213
	.byte	0xb
	.4byte	.LASF746
	.4byte	0x13e5
	.4byte	.LFB1202
	.4byte	.LFE1202-.LFB1202
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d28
	.uleb128 0x2c
	.string	"a"
	.byte	0x1
	.2byte	0x213
	.byte	0x28
	.4byte	0x1578
	.4byte	.LLST115
	.4byte	.LVUS115
	.uleb128 0x36
	.4byte	.LASF747
	.byte	0x1
	.2byte	0x213
	.byte	0x33
	.4byte	0x11d3
	.4byte	.LLST116
	.4byte	.LVUS116
	.uleb128 0x29
	.4byte	.LASF748
	.byte	0x1
	.2byte	0x214
	.byte	0x17
	.4byte	0x2b72
	.4byte	.LLST117
	.4byte	.LVUS117
	.uleb128 0x2d
	.string	"res"
	.byte	0x1
	.2byte	0x222
	.byte	0x14
	.4byte	0x1b29
	.4byte	.LLST118
	.4byte	.LVUS118
	.uleb128 0x4
	.4byte	0x3921
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x218
	.byte	0x9c
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB473
	.4byte	.LBE473-.LBB473
	.4byte	0x393d
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x218
	.2byte	0x11f
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3951
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x218
	.2byte	0x120
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3965
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x218
	.2byte	0x122
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3978
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x218
	.byte	0xe8
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB477
	.4byte	.LBE477-.LBB477
	.4byte	0x3993
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x21d
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x39a6
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x21d
	.byte	0xc4
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x39b9
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x21d
	.byte	0xc5
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x39cc
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x21d
	.byte	0xc7
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x39df
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x21d
	.byte	0x8c
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB483
	.4byte	.LBE483-.LBB483
	.4byte	0x39fa
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x224
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3a0d
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x224
	.byte	0xda
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3a20
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x224
	.byte	0xdb
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3a33
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x224
	.byte	0xdd
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3a46
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x224
	.byte	0xa2
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3a59
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x228
	.byte	0x98
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3a6c
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x228
	.byte	0xdc
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3a7f
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x228
	.byte	0xdd
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3a92
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x228
	.byte	0xdf
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB485
	.4byte	.LBE485-.LBB485
	.4byte	0x3aad
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x228
	.byte	0xa5
	.4byte	0x1a92
	.byte	0
	.uleb128 0x1f
	.4byte	0x6b7b
	.4byte	.LBI468
	.2byte	.LVU1267
	.4byte	.LBB468
	.4byte	.LBE468-.LBB468
	.byte	0x1
	.2byte	0x217
	.byte	0x9
	.4byte	0x3b14
	.uleb128 0x9
	.4byte	0x6b89
	.4byte	.LLST119
	.4byte	.LVUS119
	.uleb128 0x20
	.4byte	0x380a
	.4byte	.LBI469
	.2byte	.LVU1269
	.4byte	.LBB469
	.4byte	.LBE469-.LBB469
	.byte	0x7
	.byte	0x60
	.byte	0x1a
	.uleb128 0x9
	.4byte	0x3818
	.4byte	.LLST120
	.4byte	.LVUS120
	.uleb128 0x9
	.4byte	0x3821
	.4byte	.LLST121
	.4byte	.LVUS121
	.uleb128 0x31
	.4byte	0x382e
	.4byte	.LLST122
	.4byte	.LVUS122
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x6bf3
	.4byte	.LBI478
	.2byte	.LVU1320
	.4byte	.LBB478
	.4byte	.LBE478-.LBB478
	.byte	0x1
	.2byte	0x220
	.byte	0x1d
	.4byte	0x3b5a
	.uleb128 0x9
	.4byte	0x6c01
	.4byte	.LLST123
	.4byte	.LVUS123
	.uleb128 0x9
	.4byte	0x6c0a
	.4byte	.LLST124
	.4byte	.LVUS124
	.uleb128 0x19
	.4byte	.LVL342
	.4byte	0x32cd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL326
	.4byte	0x6a9f
	.4byte	0x3b6e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL330
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL331
	.4byte	0x37a1
	.4byte	0x3bbe
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC142
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x15
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x22
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	.LVL334
	.4byte	0x6a4e
	.4byte	0x3bd2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL335
	.4byte	0x2211
	.4byte	0x3bec
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL336
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL337
	.4byte	0x37a1
	.4byte	0x3c43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC144
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x15
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x22
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL340
	.4byte	0x69fd
	.4byte	0x3c57
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL343
	.4byte	0x23ee
	.4byte	0x3c76
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LVL345
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL348
	.4byte	0x6c49
	.4byte	0x3c93
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL349
	.4byte	0x37a1
	.4byte	0x3ccd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC146
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL351
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL353
	.4byte	0x20cf
	.4byte	0x3cea
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL354
	.4byte	0x37a1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC148
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF750
	.byte	0x1
	.2byte	0x1ee
	.byte	0xb
	.4byte	.LASF751
	.4byte	0x13e5
	.4byte	.LFB1201
	.4byte	.LFE1201-.LFB1201
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4128
	.uleb128 0x2c
	.string	"a"
	.byte	0x1
	.2byte	0x1ee
	.byte	0x22
	.4byte	0x1578
	.4byte	.LLST104
	.4byte	.LVUS104
	.uleb128 0x36
	.4byte	.LASF752
	.byte	0x1
	.2byte	0x1ee
	.byte	0x2d
	.4byte	0x11d3
	.4byte	.LLST105
	.4byte	.LVUS105
	.uleb128 0x29
	.4byte	.LASF748
	.byte	0x1
	.2byte	0x1ef
	.byte	0x17
	.4byte	0x2b72
	.4byte	.LLST106
	.4byte	.LVUS106
	.uleb128 0x29
	.4byte	.LASF753
	.byte	0x1
	.2byte	0x1fc
	.byte	0xe
	.4byte	0x11e4
	.4byte	.LLST107
	.4byte	.LVUS107
	.uleb128 0x2d
	.string	"res"
	.byte	0x1
	.2byte	0x205
	.byte	0x14
	.4byte	0x1b29
	.4byte	.LLST108
	.4byte	.LVUS108
	.uleb128 0x4
	.4byte	0x3dc1
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1f8
	.byte	0x9c
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB456
	.4byte	.LBE456-.LBB456
	.4byte	0x3ddd
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1f8
	.2byte	0x11c
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3df1
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1f8
	.2byte	0x11d
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3e05
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1f8
	.2byte	0x11f
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3e18
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1f8
	.byte	0xe5
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB460
	.4byte	.LBE460-.LBB460
	.4byte	0x3e33
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x200
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3e46
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x200
	.byte	0xbd
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3e59
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x200
	.byte	0xbe
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3e6c
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x200
	.byte	0xc0
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3e7f
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x200
	.byte	0x85
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB466
	.4byte	.LBE466-.LBB466
	.4byte	0x3e9a
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x207
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3ead
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x207
	.byte	0xfe
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3ec0
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x207
	.byte	0xff
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3ed4
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x207
	.2byte	0x101
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x3ee7
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x207
	.byte	0xc6
	.4byte	0x1a92
	.byte	0
	.uleb128 0x1f
	.4byte	0x6b7b
	.4byte	.LBI451
	.2byte	.LVU1166
	.4byte	.LBB451
	.4byte	.LBE451-.LBB451
	.byte	0x1
	.2byte	0x1f7
	.byte	0x9
	.4byte	0x3f4e
	.uleb128 0x9
	.4byte	0x6b89
	.4byte	.LLST109
	.4byte	.LVUS109
	.uleb128 0x20
	.4byte	0x380a
	.4byte	.LBI452
	.2byte	.LVU1168
	.4byte	.LBB452
	.4byte	.LBE452-.LBB452
	.byte	0x7
	.byte	0x60
	.byte	0x1a
	.uleb128 0x9
	.4byte	0x3818
	.4byte	.LLST110
	.4byte	.LVUS110
	.uleb128 0x9
	.4byte	0x3821
	.4byte	.LLST111
	.4byte	.LVUS111
	.uleb128 0x31
	.4byte	0x382e
	.4byte	.LLST112
	.4byte	.LVUS112
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x6bf3
	.4byte	.LBI461
	.2byte	.LVU1224
	.4byte	.LBB461
	.4byte	.LBE461-.LBB461
	.byte	0x1
	.2byte	0x203
	.byte	0x1d
	.4byte	0x3f94
	.uleb128 0x9
	.4byte	0x6c01
	.4byte	.LLST113
	.4byte	.LVUS113
	.uleb128 0x9
	.4byte	0x6c0a
	.4byte	.LLST114
	.4byte	.LVUS114
	.uleb128 0x19
	.4byte	.LVL309
	.4byte	0x32cd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL289
	.4byte	0x6a9f
	.4byte	0x3fa8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL291
	.4byte	0x2500
	.4byte	0x3fbc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL295
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL296
	.4byte	0x37a1
	.4byte	0x400c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC133
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x15
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x22
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	.LVL300
	.4byte	0x4128
	.4byte	0x4020
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL302
	.4byte	0x2235
	.4byte	0x403a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL303
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL304
	.4byte	0x37a1
	.4byte	0x4091
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC135
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x15
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x22
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL307
	.4byte	0x69fd
	.4byte	0x40a5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL310
	.4byte	0x2454
	.4byte	0x40b9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL313
	.4byte	0x2474
	.4byte	0x40cd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL315
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL320
	.4byte	0x6c49
	.4byte	0x40ea
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL321
	.4byte	0x37a1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC137
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF754
	.byte	0x1
	.2byte	0x1e1
	.byte	0xa
	.4byte	.LASF755
	.4byte	0x11e4
	.4byte	.LFB1200
	.4byte	.LFE1200-.LFB1200
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x416b
	.uleb128 0x2c
	.string	"a"
	.byte	0x1
	.2byte	0x1e1
	.byte	0x28
	.4byte	0x1578
	.4byte	.LLST103
	.4byte	.LVUS103
	.uleb128 0x19
	.4byte	.LVL286
	.4byte	0x6a4e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LASF756
	.byte	0x1
	.2byte	0x1d7
	.byte	0x6
	.4byte	.LASF757
	.4byte	.LFB1199
	.4byte	.LFE1199-.LFB1199
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41e6
	.uleb128 0x2c
	.string	"a"
	.byte	0x1
	.2byte	0x1d7
	.byte	0x1a
	.4byte	0x1578
	.4byte	.LLST101
	.4byte	.LVUS101
	.uleb128 0x29
	.4byte	.LASF748
	.byte	0x1
	.2byte	0x1d8
	.byte	0x17
	.4byte	0x2b72
	.4byte	.LLST102
	.4byte	.LVUS102
	.uleb128 0x5
	.4byte	.LVL282
	.4byte	0x2500
	.4byte	0x41c2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL283
	.4byte	0x377d
	.4byte	0x41d5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.4byte	.LVL284
	.4byte	0x210e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF758
	.byte	0x1
	.2byte	0x1b8
	.byte	0xb
	.4byte	.LASF759
	.4byte	0x13e5
	.4byte	.LFB1198
	.4byte	.LFE1198-.LFB1198
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4664
	.uleb128 0x2c
	.string	"a"
	.byte	0x1
	.2byte	0x1b8
	.byte	0x23
	.4byte	0x1578
	.4byte	.LLST91
	.4byte	.LVUS91
	.uleb128 0x36
	.4byte	.LASF760
	.byte	0x1
	.2byte	0x1b8
	.byte	0x2b
	.4byte	0x152a
	.4byte	.LLST92
	.4byte	.LVUS92
	.uleb128 0x29
	.4byte	.LASF748
	.byte	0x1
	.2byte	0x1b9
	.byte	0x17
	.4byte	0x2b72
	.4byte	.LLST93
	.4byte	.LVUS93
	.uleb128 0x2d
	.string	"res"
	.byte	0x1
	.2byte	0x1c7
	.byte	0x14
	.4byte	0x1b29
	.4byte	.LLST94
	.4byte	.LVUS94
	.uleb128 0x4
	.4byte	0x426a
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1bd
	.byte	0x9c
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB437
	.4byte	.LBE437-.LBB437
	.4byte	0x4286
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1bd
	.2byte	0x12f
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x429a
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1bd
	.2byte	0x130
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x42ae
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1bd
	.2byte	0x132
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x42c1
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1bd
	.byte	0xf8
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB441
	.4byte	.LBE441-.LBB441
	.4byte	0x42dc
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1c2
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x42ef
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1c2
	.byte	0xc4
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4302
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1c2
	.byte	0xc5
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4315
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1c2
	.byte	0xc7
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4328
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1c2
	.byte	0x8c
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB447
	.4byte	.LBE447-.LBB447
	.4byte	0x4343
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1c9
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4357
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1c9
	.2byte	0x10c
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x436b
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1c9
	.2byte	0x10d
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x437f
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1c9
	.2byte	0x10f
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4392
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1c9
	.byte	0xd4
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x43a5
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1cd
	.byte	0x98
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x43b8
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1cd
	.byte	0xe8
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x43cb
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1cd
	.byte	0xe9
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x43de
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1cd
	.byte	0xeb
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB449
	.4byte	.LBE449-.LBB449
	.4byte	0x43f9
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1cd
	.byte	0xb1
	.4byte	0x1a92
	.byte	0
	.uleb128 0x1f
	.4byte	0x6b7b
	.4byte	.LBI432
	.2byte	.LVU1020
	.4byte	.LBB432
	.4byte	.LBE432-.LBB432
	.byte	0x1
	.2byte	0x1bc
	.byte	0x9
	.4byte	0x4460
	.uleb128 0x9
	.4byte	0x6b89
	.4byte	.LLST95
	.4byte	.LVUS95
	.uleb128 0x20
	.4byte	0x380a
	.4byte	.LBI433
	.2byte	.LVU1022
	.4byte	.LBB433
	.4byte	.LBE433-.LBB433
	.byte	0x7
	.byte	0x60
	.byte	0x1a
	.uleb128 0x9
	.4byte	0x3818
	.4byte	.LLST96
	.4byte	.LVUS96
	.uleb128 0x9
	.4byte	0x3821
	.4byte	.LLST97
	.4byte	.LVUS97
	.uleb128 0x31
	.4byte	0x382e
	.4byte	.LLST98
	.4byte	.LVUS98
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x6bf3
	.4byte	.LBI442
	.2byte	.LVU1073
	.4byte	.LBB442
	.4byte	.LBE442-.LBB442
	.byte	0x1
	.2byte	0x1c5
	.byte	0x1d
	.4byte	0x44a6
	.uleb128 0x9
	.4byte	0x6c01
	.4byte	.LLST99
	.4byte	.LVUS99
	.uleb128 0x9
	.4byte	0x6c0a
	.4byte	.LLST100
	.4byte	.LVUS100
	.uleb128 0x19
	.4byte	.LVL262
	.4byte	0x32cd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL246
	.4byte	0x6a9f
	.4byte	0x44ba
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL250
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL251
	.4byte	0x37a1
	.4byte	0x450a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC120
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x15
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x22
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	.LVL254
	.4byte	0x6a4e
	.4byte	0x451e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL255
	.4byte	0x2211
	.4byte	0x4538
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL256
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL257
	.4byte	0x37a1
	.4byte	0x458f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC103
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x15
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x22
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL260
	.4byte	0x69fd
	.4byte	0x45a3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL263
	.4byte	0x2454
	.4byte	0x45b7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL266
	.4byte	0x2474
	.4byte	0x45cb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL268
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL271
	.4byte	0x6c49
	.4byte	0x45e8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL272
	.4byte	0x37a1
	.4byte	0x4629
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC123
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL274
	.4byte	0x37bf
	.uleb128 0x19
	.4byte	.LVL275
	.4byte	0x37a1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC125
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF761
	.byte	0x1
	.2byte	0x19b
	.byte	0xb
	.4byte	.LASF762
	.4byte	0x13e5
	.4byte	.LFB1197
	.4byte	.LFE1197-.LFB1197
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49af
	.uleb128 0x2c
	.string	"a"
	.byte	0x1
	.2byte	0x19b
	.byte	0x22
	.4byte	0x1578
	.4byte	.LLST85
	.4byte	.LVUS85
	.uleb128 0x36
	.4byte	.LASF747
	.byte	0x1
	.2byte	0x19b
	.byte	0x2d
	.4byte	0x11d3
	.4byte	.LLST86
	.4byte	.LVUS86
	.uleb128 0x29
	.4byte	.LASF748
	.byte	0x1
	.2byte	0x19c
	.byte	0x17
	.4byte	0x2b72
	.4byte	.LLST87
	.4byte	.LVUS87
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.2byte	0x1a8
	.byte	0xf
	.4byte	0x13e5
	.4byte	.LLST88
	.4byte	.LVUS88
	.uleb128 0xe
	.4byte	.LBB423
	.4byte	.LBE423-.LBB423
	.4byte	0x46f0
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1a0
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4703
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1a0
	.byte	0xc4
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4716
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1a0
	.byte	0xc5
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4729
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1a0
	.byte	0xc7
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x473c
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1a0
	.byte	0x8c
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x474f
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1a5
	.byte	0x98
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4762
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1a5
	.byte	0xdc
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4775
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1a5
	.byte	0xdd
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4788
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1a5
	.byte	0xdf
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB427
	.4byte	.LBE427-.LBB427
	.4byte	0x47a3
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1a5
	.byte	0xa5
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x47b6
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1aa
	.byte	0x9c
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x47c9
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1aa
	.byte	0xdd
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x47dc
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1aa
	.byte	0xde
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x47ef
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1aa
	.byte	0xe0
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB430
	.4byte	.LBE430-.LBB430
	.4byte	0x480a
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x1aa
	.byte	0xa6
	.4byte	0x1a92
	.byte	0
	.uleb128 0x1f
	.4byte	0x6bf3
	.4byte	.LBI424
	.2byte	.LVU966
	.4byte	.LBB424
	.4byte	.LBE424-.LBB424
	.byte	0x1
	.2byte	0x1a3
	.byte	0x1d
	.4byte	0x4850
	.uleb128 0x9
	.4byte	0x6c01
	.4byte	.LLST89
	.4byte	.LVUS89
	.uleb128 0x9
	.4byte	0x6c0a
	.4byte	.LLST90
	.4byte	.LVUS90
	.uleb128 0x19
	.4byte	.LVL233
	.4byte	0x32cd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL223
	.4byte	0x6a9f
	.4byte	0x4864
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL225
	.4byte	0x6a4e
	.4byte	0x4878
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL226
	.4byte	0x2211
	.4byte	0x4892
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL227
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL228
	.4byte	0x37a1
	.4byte	0x48e9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC103
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x15
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x22
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL231
	.4byte	0x69fd
	.4byte	0x48fd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL234
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL235
	.4byte	0x20cf
	.4byte	0x491a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL237
	.4byte	0x37a1
	.4byte	0x495b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC105
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL238
	.4byte	0x4d50
	.4byte	0x4975
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL241
	.4byte	0x37bf
	.uleb128 0x19
	.4byte	.LVL242
	.4byte	0x37a1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC107
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF763
	.byte	0x1
	.2byte	0x17b
	.byte	0xb
	.4byte	.LASF764
	.4byte	0x13e5
	.4byte	.LFB1196
	.4byte	.LFE1196-.LFB1196
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d50
	.uleb128 0x29
	.4byte	.LASF748
	.byte	0x1
	.2byte	0x17c
	.byte	0x17
	.4byte	0x2b72
	.4byte	.LLST78
	.4byte	.LVUS78
	.uleb128 0x29
	.4byte	.LASF765
	.byte	0x1
	.2byte	0x17e
	.byte	0x14
	.4byte	0x11f0
	.4byte	.LLST79
	.4byte	.LVUS79
	.uleb128 0x2d
	.string	"res"
	.byte	0x1
	.2byte	0x18a
	.byte	0x14
	.4byte	0x1b29
	.4byte	.LLST80
	.4byte	.LVUS80
	.uleb128 0x4
	.4byte	0x4a20
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x181
	.byte	0x9c
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB409
	.4byte	.LBE409-.LBB409
	.4byte	0x4a3c
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x181
	.2byte	0x118
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4a50
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x181
	.2byte	0x119
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4a64
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x181
	.2byte	0x11b
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4a77
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x181
	.byte	0xe1
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB413
	.4byte	.LBE413-.LBB413
	.4byte	0x4a92
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x186
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4aa5
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x186
	.byte	0xba
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4ab8
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x186
	.byte	0xbb
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4acb
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x186
	.byte	0xbd
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4ade
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x186
	.byte	0x82
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB417
	.4byte	.LBE417-.LBB417
	.4byte	0x4af9
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x18c
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4b0c
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x18c
	.byte	0xd5
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4b1f
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x18c
	.byte	0xd6
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4b32
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x18c
	.byte	0xd8
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4b45
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x18c
	.byte	0x9d
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4b58
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x190
	.byte	0x98
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4b6b
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x190
	.byte	0xb5
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4b7e
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x190
	.byte	0xb6
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4b91
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x190
	.byte	0xb8
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB419
	.4byte	.LBE419-.LBB419
	.4byte	0x4bac
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x190
	.byte	0x7e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x1f
	.4byte	0x6b7b
	.4byte	.LBI404
	.2byte	.LVU845
	.4byte	.LBB404
	.4byte	.LBE404-.LBB404
	.byte	0x1
	.2byte	0x180
	.byte	0x9
	.4byte	0x4c13
	.uleb128 0x9
	.4byte	0x6b89
	.4byte	.LLST81
	.4byte	.LVUS81
	.uleb128 0x20
	.4byte	0x380a
	.4byte	.LBI405
	.2byte	.LVU847
	.4byte	.LBB405
	.4byte	.LBE405-.LBB405
	.byte	0x7
	.byte	0x60
	.byte	0x1a
	.uleb128 0x9
	.4byte	0x3818
	.4byte	.LLST82
	.4byte	.LVUS82
	.uleb128 0x9
	.4byte	0x3821
	.4byte	.LLST83
	.4byte	.LVUS83
	.uleb128 0x31
	.4byte	0x382e
	.4byte	.LLST84
	.4byte	.LVUS84
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL199
	.4byte	0x6a9f
	.4byte	0x4c26
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LVL203
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL204
	.4byte	0x37a1
	.4byte	0x4c5d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC92
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x5
	.4byte	.LVL207
	.4byte	0x2235
	.4byte	0x4c72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0xe250
	.byte	0
	.uleb128 0xb
	.4byte	.LVL208
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL209
	.4byte	0x37a1
	.4byte	0x4cb0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC95
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0xa
	.2byte	0xe250
	.byte	0
	.uleb128 0x5
	.4byte	.LVL212
	.4byte	0x2454
	.4byte	0x4cc4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL214
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL215
	.4byte	0x6c49
	.4byte	0x4ce1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL216
	.4byte	0x37a1
	.4byte	0x4d15
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC97
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0xb
	.4byte	.LVL218
	.4byte	0x37bf
	.uleb128 0x19
	.4byte	.LVL219
	.4byte	0x37a1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC99
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0xa
	.2byte	0xe250
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF766
	.byte	0x1
	.2byte	0x14d
	.byte	0xb
	.4byte	.LASF767
	.4byte	0x13e5
	.4byte	.LFB1195
	.4byte	.LFE1195-.LFB1195
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x514d
	.uleb128 0x2c
	.string	"a"
	.byte	0x1
	.2byte	0x14d
	.byte	0x22
	.4byte	0x1578
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x36
	.4byte	.LASF747
	.byte	0x1
	.2byte	0x14d
	.byte	0x2d
	.4byte	0x11d3
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0x29
	.4byte	.LASF748
	.byte	0x1
	.2byte	0x14e
	.byte	0x17
	.4byte	0x2b72
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0x2d
	.string	"res"
	.byte	0x1
	.2byte	0x156
	.byte	0x14
	.4byte	0x1b29
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x4
	.4byte	0x4dd4
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x152
	.byte	0x9c
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB349
	.4byte	.LBE349-.LBB349
	.4byte	0x4df0
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x152
	.2byte	0x113
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4e04
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x152
	.2byte	0x114
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4e18
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x152
	.2byte	0x116
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4e2b
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x152
	.byte	0xdc
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB353
	.4byte	.LBE353-.LBB353
	.4byte	0x4e46
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x158
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4e59
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x158
	.byte	0xc1
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4e6c
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x158
	.byte	0xc2
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4e7f
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x158
	.byte	0xc4
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4e92
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x158
	.byte	0x89
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4ea5
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x15f
	.byte	0xa0
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB361
	.4byte	.LBE361-.LBB361
	.4byte	0x4ec0
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x15f
	.byte	0xeb
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4ed3
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x15f
	.byte	0xec
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4ee6
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x15f
	.byte	0xee
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x4ef9
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x15f
	.byte	0xb4
	.4byte	0x1a92
	.byte	0
	.uleb128 0x1f
	.4byte	0x6b7b
	.4byte	.LBI344
	.2byte	.LVU497
	.4byte	.LBB344
	.4byte	.LBE344-.LBB344
	.byte	0x1
	.2byte	0x151
	.byte	0x9
	.4byte	0x4f60
	.uleb128 0x9
	.4byte	0x6b89
	.4byte	.LLST61
	.4byte	.LVUS61
	.uleb128 0x20
	.4byte	0x380a
	.4byte	.LBI345
	.2byte	.LVU499
	.4byte	.LBB345
	.4byte	.LBE345-.LBB345
	.byte	0x7
	.byte	0x60
	.byte	0x1a
	.uleb128 0x9
	.4byte	0x3818
	.4byte	.LLST62
	.4byte	.LVUS62
	.uleb128 0x9
	.4byte	0x3821
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0x31
	.4byte	0x382e
	.4byte	.LLST64
	.4byte	.LVUS64
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x6b7b
	.4byte	.LBI356
	.2byte	.LVU547
	.4byte	.LBB356
	.4byte	.LBE356-.LBB356
	.byte	0x1
	.2byte	0x15d
	.byte	0xd
	.4byte	0x4fc7
	.uleb128 0x9
	.4byte	0x6b89
	.4byte	.LLST65
	.4byte	.LVUS65
	.uleb128 0x20
	.4byte	0x380a
	.4byte	.LBI357
	.2byte	.LVU549
	.4byte	.LBB357
	.4byte	.LBE357-.LBB357
	.byte	0x7
	.byte	0x60
	.byte	0x1a
	.uleb128 0x9
	.4byte	0x3818
	.4byte	.LLST66
	.4byte	.LVUS66
	.uleb128 0x9
	.4byte	0x3821
	.4byte	.LLST67
	.4byte	.LVUS67
	.uleb128 0x31
	.4byte	0x382e
	.4byte	.LLST68
	.4byte	.LVUS68
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x6b7b
	.4byte	.LBI362
	.2byte	.LVU582
	.4byte	.LBB362
	.4byte	.LBE362-.LBB362
	.byte	0x1
	.2byte	0x165
	.byte	0xc
	.4byte	0x502e
	.uleb128 0x9
	.4byte	0x6b89
	.4byte	.LLST69
	.4byte	.LVUS69
	.uleb128 0x20
	.4byte	0x380a
	.4byte	.LBI363
	.2byte	.LVU584
	.4byte	.LBB363
	.4byte	.LBE363-.LBB363
	.byte	0x7
	.byte	0x60
	.byte	0x1a
	.uleb128 0x9
	.4byte	0x3818
	.4byte	.LLST70
	.4byte	.LVUS70
	.uleb128 0x9
	.4byte	0x3821
	.4byte	.LLST71
	.4byte	.LVUS71
	.uleb128 0x31
	.4byte	0x382e
	.4byte	.LLST72
	.4byte	.LVUS72
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL114
	.4byte	0x6a9f
	.4byte	0x5042
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL118
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL119
	.4byte	0x37a1
	.4byte	0x5079
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x5
	.4byte	.LVL122
	.4byte	0x23ee
	.4byte	0x508d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL124
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL126
	.4byte	0x6c49
	.4byte	0x50aa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL127
	.4byte	0x37a1
	.4byte	0x50de
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x5
	.4byte	.LVL130
	.4byte	0x255c
	.4byte	0x50f2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL131
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL132
	.4byte	0x37a1
	.4byte	0x5129
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC68
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x5
	.4byte	.LVL135
	.4byte	0x377d
	.4byte	0x513c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.4byte	.LVL136
	.4byte	0x210e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF768
	.byte	0x1
	.2byte	0x142
	.byte	0x6
	.4byte	.LASF769
	.4byte	0x152a
	.4byte	.LFB1194
	.4byte	.LFE1194-.LFB1194
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51c9
	.uleb128 0x34
	.4byte	0x6b7b
	.4byte	.LBI340
	.2byte	.LVU483
	.4byte	.LBB340
	.4byte	.LBE340-.LBB340
	.byte	0x1
	.2byte	0x143
	.byte	0xc
	.uleb128 0x9
	.4byte	0x6b89
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x20
	.4byte	0x380a
	.4byte	.LBI341
	.2byte	.LVU485
	.4byte	.LBB341
	.4byte	.LBE341-.LBB341
	.byte	0x7
	.byte	0x60
	.byte	0x1a
	.uleb128 0x9
	.4byte	0x3818
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0x9
	.4byte	0x3821
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x48
	.4byte	0x382e
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LASF770
	.byte	0x1
	.2byte	0x13e
	.byte	0x6
	.4byte	.LASF771
	.4byte	.LFB1193
	.4byte	.LFE1193-.LFB1193
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x528d
	.uleb128 0x34
	.4byte	0x6b93
	.4byte	.LBI336
	.2byte	.LVU471
	.4byte	.LBB336
	.4byte	.LBE336-.LBB336
	.byte	0x1
	.2byte	0x13f
	.byte	0x14
	.uleb128 0x9
	.4byte	0x6ba1
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x9
	.4byte	0x6baa
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x20
	.4byte	0x383c
	.4byte	.LBI337
	.2byte	.LVU473
	.4byte	.LBB337
	.4byte	.LBE337-.LBB337
	.byte	0x7
	.byte	0x59
	.byte	0x1f
	.uleb128 0x9
	.4byte	0x384a
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x9
	.4byte	0x3853
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0x34
	.4byte	0x37cb
	.4byte	.LBI338
	.2byte	.LVU474
	.4byte	.LBB338
	.4byte	.LBE338-.LBB338
	.byte	0x8
	.2byte	0x171
	.byte	0x7
	.uleb128 0x9
	.4byte	0x37d9
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x9
	.4byte	0x37e2
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0x9
	.4byte	0x37ef
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x48
	.4byte	0x37fc
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LASF772
	.byte	0x1
	.2byte	0x12b
	.byte	0x6
	.4byte	.LASF773
	.4byte	.LFB1192
	.4byte	.LFE1192-.LFB1192
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5416
	.uleb128 0xe
	.4byte	.LBB334
	.4byte	.LBE334-.LBB334
	.4byte	0x530d
	.uleb128 0x2d
	.string	"a"
	.byte	0x1
	.2byte	0x132
	.byte	0x11
	.4byte	0x1578
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x5b
	.4byte	.LASF776
	.4byte	0x5416
	.uleb128 0x6
	.byte	0x3
	.4byte	_ZL12STEPPER_AXES
	.byte	0x9f
	.uleb128 0x37
	.4byte	.LASF774
	.4byte	0x541c
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x37
	.4byte	.LASF775
	.4byte	0x541c
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0xb
	.4byte	.LVL97
	.4byte	0x210e
	.uleb128 0xb
	.4byte	.LVL99
	.4byte	0x255c
	.byte	0
	.uleb128 0xe
	.4byte	.LBB335
	.4byte	.LBE335-.LBB335
	.4byte	0x536d
	.uleb128 0x2d
	.string	"a"
	.byte	0x1
	.2byte	0x135
	.byte	0x11
	.4byte	0x1578
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x5c
	.4byte	.LASF776
	.4byte	0x5416
	.uleb128 0x37
	.4byte	.LASF774
	.4byte	0x541c
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x5c
	.4byte	.LASF775
	.4byte	0x541c
	.uleb128 0x5
	.4byte	.LVL105
	.4byte	0x377d
	.4byte	0x5363
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LVL106
	.4byte	0x210e
	.byte	0
	.uleb128 0x34
	.4byte	0x6b93
	.4byte	.LBI330
	.2byte	.LVU427
	.4byte	.LBB330
	.4byte	.LBE330-.LBB330
	.byte	0x1
	.2byte	0x12c
	.byte	0x14
	.uleb128 0x9
	.4byte	0x6ba1
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x9
	.4byte	0x6baa
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x20
	.4byte	0x383c
	.4byte	.LBI331
	.2byte	.LVU429
	.4byte	.LBB331
	.4byte	.LBE331-.LBB331
	.byte	0x7
	.byte	0x59
	.byte	0x1f
	.uleb128 0x9
	.4byte	0x384a
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x9
	.4byte	0x3853
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x34
	.4byte	0x37cb
	.4byte	.LBI332
	.2byte	.LVU430
	.4byte	.LBB332
	.4byte	.LBE332-.LBB332
	.byte	0x8
	.2byte	0x171
	.byte	0x7
	.uleb128 0x9
	.4byte	0x37d9
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x9
	.4byte	0x37e2
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x9
	.4byte	0x37ef
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x48
	.4byte	0x37fc
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x4
	.4byte	0x371e
	.uleb128 0x11
	.byte	0x4
	.4byte	0x159d
	.uleb128 0x40
	.4byte	.LASF777
	.byte	0x1
	.byte	0xca
	.byte	0xb
	.4byte	.LASF791
	.4byte	0x13e5
	.4byte	.LFB1191
	.4byte	.LFE1191-.LFB1191
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5db0
	.uleb128 0x32
	.string	"a"
	.byte	0x1
	.byte	0xca
	.byte	0x24
	.4byte	0x1578
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x41
	.4byte	.LASF778
	.byte	0x1
	.byte	0xca
	.byte	0x30
	.4byte	0x11e4
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x41
	.4byte	.LASF779
	.byte	0x1
	.byte	0xca
	.byte	0x42
	.4byte	0x11aa
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x41
	.4byte	.LASF780
	.byte	0x1
	.byte	0xca
	.byte	0x55
	.4byte	0x1aaa
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x2a
	.4byte	.LASF748
	.byte	0x1
	.byte	0xcb
	.byte	0x17
	.4byte	0x2b72
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x83
	.string	"st"
	.byte	0x1
	.byte	0xce
	.byte	0x14
	.4byte	0x3611
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.4byte	.LASF781
	.byte	0x1
	.byte	0xe6
	.byte	0xd
	.4byte	0x11d3
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x2a
	.4byte	.LASF782
	.byte	0x1
	.byte	0xe7
	.byte	0xd
	.4byte	0x11d3
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x2a
	.4byte	.LASF783
	.byte	0x1
	.byte	0xe9
	.byte	0xd
	.4byte	0x11bb
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x2a
	.4byte	.LASF784
	.byte	0x1
	.byte	0xea
	.byte	0xf
	.4byte	0x13e5
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0xe
	.4byte	.LBB278
	.4byte	.LBE278-.LBB278
	.4byte	0x551c
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xd2
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x552f
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0xd2
	.2byte	0x102
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5542
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0xd2
	.2byte	0x103
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5555
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0xd2
	.2byte	0x105
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5567
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xd2
	.byte	0xca
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5579
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xd5
	.byte	0x98
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x558b
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xd5
	.byte	0xfc
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x559d
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xd5
	.byte	0xfd
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x55af
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xd5
	.byte	0xff
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB280
	.4byte	.LBE280-.LBB280
	.4byte	0x55c9
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xd5
	.byte	0xc5
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB284
	.4byte	.LBE284-.LBB284
	.4byte	0x55e3
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xd8
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x55f6
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0xd8
	.2byte	0x129
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5609
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0xd8
	.2byte	0x12a
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x561c
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0xd8
	.2byte	0x12c
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x562e
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xd8
	.byte	0xf1
	.4byte	0x1a92
	.byte	0
	.uleb128 0x84
	.4byte	.Ldebug_ranges0+0
	.4byte	0x5b0c
	.uleb128 0x42
	.string	"leg"
	.byte	0x1
	.byte	0xec
	.byte	0x12
	.4byte	0x11aa
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x5d
	.4byte	.LBB288
	.4byte	.LBE288-.LBB288
	.uleb128 0x2a
	.4byte	.LASF785
	.byte	0x1
	.byte	0xee
	.byte	0x11
	.4byte	0x11d3
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x2a
	.4byte	.LASF786
	.byte	0x1
	.byte	0xf1
	.byte	0xe
	.4byte	0x152a
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x4
	.4byte	0x568f
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xf8
	.byte	0xa4
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x56a2
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0xf8
	.2byte	0x128
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x56b5
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0xf8
	.2byte	0x129
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x56c8
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0xf8
	.2byte	0x12b
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB297
	.4byte	.LBE297-.LBB297
	.4byte	0x56e2
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xf8
	.byte	0xf1
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x56f4
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xfd
	.byte	0xa8
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB300
	.4byte	.LBE300-.LBB300
	.4byte	0x570f
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0xfd
	.2byte	0x116
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5722
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0xfd
	.2byte	0x117
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5735
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0xfd
	.2byte	0x119
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5747
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xfd
	.byte	0xdf
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5759
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xff
	.byte	0xa8
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB303
	.4byte	.LBE303-.LBB303
	.4byte	0x5774
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0xff
	.2byte	0x120
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5787
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0xff
	.2byte	0x121
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x579a
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0xff
	.2byte	0x123
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x57ac
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xff
	.byte	0xe9
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x57bf
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x101
	.byte	0xa8
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB306
	.4byte	.LBE306-.LBB306
	.4byte	0x57db
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x101
	.2byte	0x124
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x57ef
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x101
	.2byte	0x125
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5803
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x101
	.2byte	0x127
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5816
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x101
	.byte	0xed
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5829
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x108
	.byte	0xa0
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB316
	.4byte	.LBE316-.LBB316
	.4byte	0x5845
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x108
	.2byte	0x14b
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5859
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x108
	.2byte	0x14c
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x586d
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x108
	.2byte	0x14e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5881
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x108
	.2byte	0x114
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5894
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x10e
	.byte	0xa0
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x58a8
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x10e
	.2byte	0x115
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x58bc
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x10e
	.2byte	0x116
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x58d0
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x10e
	.2byte	0x118
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB320
	.4byte	.LBE320-.LBB320
	.4byte	0x58eb
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x10e
	.byte	0xde
	.4byte	0x1a92
	.byte	0
	.uleb128 0x38
	.4byte	0x6bdb
	.4byte	.LBI291
	.2byte	.LVU240
	.4byte	.LBB291
	.4byte	.LBE291-.LBB291
	.byte	0x1
	.byte	0xf4
	.byte	0x24
	.4byte	0x595c
	.uleb128 0x9
	.4byte	0x6be9
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x34
	.4byte	0x6c19
	.4byte	.LBI292
	.2byte	.LVU242
	.4byte	.LBB292
	.4byte	.LBE292-.LBB292
	.byte	0x4
	.2byte	0x343
	.byte	0x3a
	.uleb128 0x9
	.4byte	0x6c27
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x20
	.4byte	0x6c31
	.4byte	.LBI293
	.2byte	.LVU244
	.4byte	.LBB293
	.4byte	.LBE293-.LBB293
	.byte	0x5
	.byte	0x1a
	.byte	0x3a
	.uleb128 0x9
	.4byte	0x6c3f
	.4byte	.LLST31
	.4byte	.LVUS31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL58
	.4byte	0x23ee
	.4byte	0x5975
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL61
	.4byte	0x3757
	.4byte	0x5991
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xb
	.4byte	.LVL63
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL64
	.4byte	0x37a1
	.4byte	0x59ce
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 1
	.byte	0
	.uleb128 0xb
	.4byte	.LVL65
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL66
	.4byte	0x37a1
	.4byte	0x5a05
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0xb
	.4byte	.LVL67
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL68
	.4byte	0x37a1
	.4byte	0x5a3c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0xb
	.4byte	.LVL69
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL70
	.4byte	0x37a1
	.4byte	0x5a73
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x5
	.4byte	.LVL72
	.4byte	0x377d
	.4byte	0x5a86
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x5
	.4byte	.LVL73
	.4byte	0x210e
	.4byte	0x5a9a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL74
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL75
	.4byte	0x37a1
	.4byte	0x5ad7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 1
	.byte	0
	.uleb128 0xb
	.4byte	.LVL76
	.4byte	0x37bf
	.uleb128 0x19
	.4byte	.LVL77
	.4byte	0x37a1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x5b1f
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x11b
	.byte	0x9c
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB329
	.4byte	.LBE329-.LBB329
	.4byte	0x5b3b
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x11b
	.2byte	0x129
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5b4f
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x11b
	.2byte	0x12a
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5b63
	.uleb128 0x13
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x11b
	.2byte	0x12c
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5b76
	.uleb128 0x6
	.4byte	.LASF749
	.byte	0x1
	.2byte	0x11b
	.byte	0xf2
	.4byte	0x1a92
	.byte	0
	.uleb128 0x38
	.4byte	0x6bf3
	.4byte	.LBI285
	.2byte	.LVU211
	.4byte	.LBB285
	.4byte	.LBE285-.LBB285
	.byte	0x1
	.byte	0xdf
	.byte	0x1d
	.4byte	0x5bc4
	.uleb128 0x9
	.4byte	0x6c01
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x9
	.4byte	0x6c0a
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x19
	.4byte	.LVL49
	.4byte	0x32cd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x6d27
	.4byte	.LBI323
	.2byte	.LVU388
	.4byte	.LBB323
	.4byte	.LBE323-.LBB323
	.byte	0x1
	.2byte	0x116
	.byte	0x1a
	.4byte	0x5bed
	.uleb128 0x9
	.4byte	0x6d3d
	.4byte	.LLST32
	.4byte	.LVUS32
	.byte	0
	.uleb128 0x1f
	.4byte	0x6bf3
	.4byte	.LBI325
	.2byte	.LVU395
	.4byte	.LBB325
	.4byte	.LBE325-.LBB325
	.byte	0x1
	.2byte	0x117
	.byte	0x1d
	.4byte	0x5c3a
	.uleb128 0x9
	.4byte	0x6c01
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x9
	.4byte	0x6c0a
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x19
	.4byte	.LVL86
	.4byte	0x32cd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL37
	.4byte	0x6a9f
	.4byte	0x5c4e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL39
	.4byte	0x3757
	.4byte	0x5c69
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xb
	.4byte	.LVL41
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL42
	.4byte	0x37a1
	.4byte	0x5ca0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0xb
	.4byte	.LVL43
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL44
	.4byte	0x37a1
	.4byte	0x5cd7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0xb
	.4byte	.LVL45
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL46
	.4byte	0x37a1
	.4byte	0x5d0e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x5
	.4byte	.LVL47
	.4byte	0x2211
	.4byte	0x5d28
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL51
	.4byte	0x20cf
	.4byte	0x5d3c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL85
	.4byte	0x2211
	.4byte	0x5d56
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL87
	.4byte	0x23ee
	.4byte	0x5d76
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xb
	.4byte	.LVL88
	.4byte	0x37bf
	.uleb128 0x19
	.4byte	.LVL89
	.4byte	0x37a1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x85
	.4byte	.LASF787
	.byte	0x1
	.byte	0x5f
	.byte	0x6
	.4byte	.LASF788
	.4byte	.LFB1190
	.4byte	.LFE1190-.LFB1190
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66fa
	.uleb128 0x32
	.string	"a"
	.byte	0x1
	.byte	0x5f
	.byte	0x1a
	.4byte	0x1578
	.4byte	.LLST73
	.4byte	.LVUS73
	.uleb128 0x2a
	.4byte	.LASF748
	.byte	0x1
	.byte	0x60
	.byte	0x17
	.4byte	0x2b72
	.4byte	.LLST74
	.4byte	.LVUS74
	.uleb128 0x2a
	.4byte	.LASF789
	.byte	0x1
	.byte	0x62
	.byte	0x14
	.4byte	0x11f0
	.4byte	.LLST75
	.4byte	.LVUS75
	.uleb128 0x4
	.4byte	0x5e17
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x67
	.byte	0x98
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5e29
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x67
	.byte	0xeb
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5e3b
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x67
	.byte	0xec
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5e4d
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x67
	.byte	0xee
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB368
	.4byte	.LBE368-.LBB368
	.4byte	0x5e67
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x67
	.byte	0xb4
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB372
	.4byte	.LBE372-.LBB372
	.4byte	0x5e81
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x6b
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5e93
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x6b
	.byte	0xd6
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5ea5
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x6b
	.byte	0xd7
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5eb7
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x6b
	.byte	0xd9
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5ec9
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x6b
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB376
	.4byte	.LBE376-.LBB376
	.4byte	0x5ee3
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x71
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5ef5
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x71
	.byte	0xd6
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5f07
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x71
	.byte	0xd7
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5f19
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x71
	.byte	0xd9
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5f2b
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x71
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5f3d
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x79
	.byte	0x98
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5f4f
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x79
	.byte	0xe3
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5f61
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x79
	.byte	0xe4
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5f73
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x79
	.byte	0xe6
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB378
	.4byte	.LBE378-.LBB378
	.4byte	0x5f8d
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x79
	.byte	0xac
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB382
	.4byte	.LBE382-.LBB382
	.4byte	0x5fa7
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x7d
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5fb9
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x7d
	.byte	0xd6
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5fcb
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x7d
	.byte	0xd7
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5fdd
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x7d
	.byte	0xd9
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x5fef
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x7d
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB386
	.4byte	.LBE386-.LBB386
	.4byte	0x6009
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x83
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x601b
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x83
	.byte	0xd6
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x602d
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x83
	.byte	0xd7
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x603f
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x83
	.byte	0xd9
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6051
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x83
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6063
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x8d
	.byte	0x98
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6075
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x8d
	.byte	0xc2
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6087
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x8d
	.byte	0xc3
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6099
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x8d
	.byte	0xc5
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB388
	.4byte	.LBE388-.LBB388
	.4byte	0x60b3
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x8d
	.byte	0x8b
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB392
	.4byte	.LBE392-.LBB392
	.4byte	0x60cd
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x8f
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x60df
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x8f
	.byte	0xe5
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x60f1
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x8f
	.byte	0xe6
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6103
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x8f
	.byte	0xe8
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6115
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x8f
	.byte	0xad
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB393
	.4byte	.LBE393-.LBB393
	.4byte	0x61e6
	.uleb128 0x42
	.string	"i"
	.byte	0x1
	.byte	0x95
	.byte	0xe
	.4byte	0x1172
	.4byte	.LLST77
	.4byte	.LVUS77
	.uleb128 0xe
	.4byte	.LBB398
	.4byte	.LBE398-.LBB398
	.4byte	0x614e
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x97
	.byte	0xa2
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6160
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x97
	.byte	0xdc
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6172
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x97
	.byte	0xdd
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6184
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x97
	.byte	0xdf
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6196
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x97
	.byte	0xa4
	.4byte	0x1a92
	.byte	0
	.uleb128 0xb
	.4byte	.LVL182
	.4byte	0x514d
	.uleb128 0xb
	.4byte	.LVL183
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL184
	.4byte	0x37a1
	.4byte	0x61d6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC83
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x19
	.4byte	.LVL185
	.4byte	0x377d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	0x61f8
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xa6
	.byte	0x98
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x620a
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xa6
	.byte	0xd6
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x621c
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xa6
	.byte	0xd7
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x622e
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xa6
	.byte	0xd9
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB400
	.4byte	.LBE400-.LBB400
	.4byte	0x6248
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xa6
	.byte	0x9f
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x625a
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xab
	.byte	0x98
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x626c
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xab
	.byte	0xc8
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x627e
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xab
	.byte	0xc9
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6290
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xab
	.byte	0xcb
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB402
	.4byte	.LBE402-.LBB402
	.4byte	0x62aa
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0xab
	.byte	0x91
	.4byte	0x1a92
	.byte	0
	.uleb128 0x38
	.4byte	0x6d27
	.4byte	.LBI365
	.2byte	.LVU602
	.4byte	.LBB365
	.4byte	.LBE365-.LBB365
	.byte	0x1
	.byte	0x62
	.byte	0x38
	.4byte	0x62d2
	.uleb128 0x9
	.4byte	0x6d3d
	.4byte	.LLST76
	.4byte	.LVUS76
	.byte	0
	.uleb128 0x5
	.4byte	.LVL145
	.4byte	0x6a9f
	.4byte	0x62e6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL149
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL150
	.4byte	0x37a1
	.4byte	0x631d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x5
	.4byte	.LVL151
	.4byte	0x2211
	.4byte	0x6337
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL152
	.4byte	0x4d50
	.4byte	0x6356
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0xb
	.4byte	.LVL153
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL154
	.4byte	0x37a1
	.4byte	0x638d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x5
	.4byte	.LVL155
	.4byte	0x377d
	.4byte	0x63a1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x5
	.4byte	.LVL156
	.4byte	0x4d50
	.4byte	0x63ba
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LVL157
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL158
	.4byte	0x37a1
	.4byte	0x63f1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x5
	.4byte	.LVL159
	.4byte	0x377d
	.4byte	0x6405
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0xb
	.4byte	.LVL160
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL161
	.4byte	0x37a1
	.4byte	0x643c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC76
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x5
	.4byte	.LVL162
	.4byte	0x2211
	.4byte	0x6471
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1d
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.8byte	0xcccccccd
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x25
	.byte	0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0
	.uleb128 0x5
	.4byte	.LVL163
	.4byte	0x4d50
	.4byte	0x648d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x4
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0
	.uleb128 0xb
	.4byte	.LVL164
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL165
	.4byte	0x37a1
	.4byte	0x64c4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x5
	.4byte	.LVL166
	.4byte	0x377d
	.4byte	0x64d8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x5
	.4byte	.LVL167
	.4byte	0x4d50
	.4byte	0x64f1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LVL168
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL169
	.4byte	0x37a1
	.4byte	0x6528
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x5
	.4byte	.LVL170
	.4byte	0x377d
	.4byte	0x653c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0xb
	.4byte	.LVL171
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL172
	.4byte	0x6c97
	.4byte	0x6559
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL173
	.4byte	0x37a1
	.4byte	0x658d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC79
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0xb
	.4byte	.LVL174
	.4byte	0x514d
	.uleb128 0xb
	.4byte	.LVL175
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL176
	.4byte	0x37a1
	.4byte	0x65cd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC81
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0xb
	.4byte	.LVL177
	.4byte	0x528d
	.uleb128 0x5
	.4byte	.LVL178
	.4byte	0x6c97
	.4byte	0x65ea
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL179
	.4byte	0x2235
	.4byte	0x65fe
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL180
	.4byte	0x2454
	.4byte	0x6612
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL187
	.4byte	0x2500
	.4byte	0x6626
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL188
	.4byte	0x377d
	.4byte	0x6639
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.4byte	.LVL189
	.4byte	0x210e
	.4byte	0x664d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL190
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL192
	.4byte	0x20cf
	.4byte	0x666a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL193
	.4byte	0x6c97
	.4byte	0x667e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL195
	.4byte	0x37a1
	.4byte	0x66b2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL196
	.4byte	0x2211
	.4byte	0x66cc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL197
	.4byte	0x37bf
	.uleb128 0x19
	.4byte	.LVL198
	.4byte	0x37a1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x40
	.4byte	.LASF790
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.4byte	.LASF792
	.4byte	0x13e5
	.4byte	.LFB1189
	.4byte	.LFE1189-.LFB1189
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69fd
	.uleb128 0xe
	.4byte	.LBB263
	.4byte	.LBE263-.LBB263
	.4byte	0x69d6
	.uleb128 0x42
	.string	"a"
	.byte	0x1
	.byte	0x41
	.byte	0x11
	.4byte	0x1578
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x5b
	.4byte	.LASF776
	.4byte	0x5416
	.uleb128 0x6
	.byte	0x3
	.4byte	_ZL12STEPPER_AXES
	.byte	0x9f
	.uleb128 0x37
	.4byte	.LASF774
	.4byte	0x541c
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x37
	.4byte	.LASF775
	.4byte	0x541c
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x5d
	.4byte	.LBB264
	.4byte	.LBE264-.LBB264
	.uleb128 0x42
	.string	"st"
	.byte	0x1
	.byte	0x42
	.byte	0x1b
	.4byte	0x2b72
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0xe
	.4byte	.LBB268
	.4byte	.LBE268-.LBB268
	.4byte	0x679f
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x44
	.byte	0xa2
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x67b2
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0x44
	.2byte	0x126
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x67c5
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0x44
	.2byte	0x127
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x67d8
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0x44
	.2byte	0x129
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x67ea
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x44
	.byte	0xee
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x67fc
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x52
	.byte	0x9c
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x680f
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0x52
	.2byte	0x11d
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6822
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0x52
	.2byte	0x11e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6835
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0x52
	.2byte	0x120
	.4byte	0x1a92
	.byte	0
	.uleb128 0xe
	.4byte	.LBB274
	.4byte	.LBE274-.LBB274
	.4byte	0x684f
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x52
	.byte	0xe6
	.4byte	0x1a92
	.byte	0
	.uleb128 0x38
	.4byte	0x6d27
	.4byte	.LBI269
	.2byte	.LVU107
	.4byte	.LBB269
	.4byte	.LBE269-.LBB269
	.byte	0x1
	.byte	0x4d
	.byte	0x19
	.4byte	0x6877
	.uleb128 0x9
	.4byte	0x6d3d
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.uleb128 0x38
	.4byte	0x6bf3
	.4byte	.LBI271
	.2byte	.LVU114
	.4byte	.LBB271
	.4byte	.LBE271-.LBB271
	.byte	0x1
	.byte	0x4f
	.byte	0x1c
	.4byte	0x68c2
	.uleb128 0x9
	.4byte	0x6c01
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x9
	.4byte	0x6c0a
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x19
	.4byte	.LVL30
	.4byte	0x32cd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL23
	.4byte	0x1d65
	.4byte	0x68e8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL6engine
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.4byte	.LVL25
	.4byte	0x37bf
	.uleb128 0x5
	.4byte	.LVL26
	.4byte	0x37a1
	.4byte	0x693f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x15
	.byte	0x77
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x22
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL27
	.4byte	0x1f05
	.4byte	0x6966
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL29
	.4byte	0x2211
	.4byte	0x6980
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL31
	.4byte	0x37bf
	.uleb128 0x19
	.4byte	.LVL32
	.4byte	0x37a1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0xf
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x22
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL19
	.4byte	0x1cce
	.4byte	0x69f3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL6engine
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.4byte	.LVL35
	.4byte	0x3790
	.byte	0
	.uleb128 0x43
	.4byte	.LASF793
	.byte	0x1
	.byte	0x29
	.byte	0x10
	.4byte	0x11d3
	.4byte	.LFB1185
	.4byte	.LFE1185-.LFB1185
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a4e
	.uleb128 0x32
	.string	"a"
	.byte	0x1
	.byte	0x29
	.byte	0x22
	.4byte	0x1578
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x20
	.4byte	0x6d27
	.4byte	.LBI258
	.2byte	.LVU23
	.4byte	.LBB258
	.4byte	.LBE258-.LBB258
	.byte	0x1
	.byte	0x29
	.byte	0x50
	.uleb128 0x9
	.4byte	0x6d3d
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LASF794
	.byte	0x1
	.byte	0x28
	.byte	0x11
	.4byte	0x11e4
	.4byte	.LFB1184
	.4byte	.LFE1184-.LFB1184
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a9f
	.uleb128 0x32
	.string	"a"
	.byte	0x1
	.byte	0x28
	.byte	0x26
	.4byte	0x1578
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x20
	.4byte	0x6d27
	.4byte	.LBI256
	.2byte	.LVU14
	.4byte	.LBB256
	.4byte	.LBE256-.LBB256
	.byte	0x1
	.byte	0x28
	.byte	0x4a
	.uleb128 0x9
	.4byte	0x6d3d
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.byte	0
	.uleb128 0x43
	.4byte	.LASF795
	.byte	0x1
	.byte	0x1d
	.byte	0x1a
	.4byte	0x2b72
	.4byte	.LFB1183
	.4byte	.LFE1183-.LFB1183
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b7b
	.uleb128 0x32
	.string	"a"
	.byte	0x1
	.byte	0x1d
	.byte	0x2e
	.4byte	0x1578
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xe
	.4byte	.LBB262
	.4byte	.LBE262-.LBB262
	.4byte	0x6ae5
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x1f
	.byte	0x9e
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6af7
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x1f
	.byte	0xfd
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6b09
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x1f
	.byte	0xfe
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6b1c
	.uleb128 0x18
	.4byte	.LASF749
	.byte	0x1
	.byte	0x1f
	.2byte	0x100
	.4byte	0x1a92
	.byte	0
	.uleb128 0x4
	.4byte	0x6b2e
	.uleb128 0x8
	.4byte	.LASF749
	.byte	0x1
	.byte	0x1f
	.byte	0xc5
	.4byte	0x1a92
	.byte	0
	.uleb128 0xb
	.4byte	.LVL9
	.4byte	0x37bf
	.uleb128 0x19
	.4byte	.LVL10
	.4byte	0x37a1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x15
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x22
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0xc7b
	.4byte	0x6b89
	.byte	0x3
	.4byte	0x6b93
	.uleb128 0x27
	.4byte	.LASF742
	.4byte	0x36cd
	.byte	0
	.uleb128 0x26
	.4byte	0xc35
	.4byte	0x6ba1
	.byte	0x3
	.4byte	0x6bb7
	.uleb128 0x27
	.4byte	.LASF742
	.4byte	0x36b0
	.uleb128 0x49
	.string	"__i"
	.byte	0x7
	.byte	0x58
	.byte	0x14
	.4byte	0x152a
	.byte	0
	.uleb128 0x86
	.4byte	0xfcc
	.byte	0x3
	.4byte	0x6bdb
	.uleb128 0x49
	.string	"__m"
	.byte	0x8
	.byte	0x6e
	.byte	0x1a
	.4byte	0x24a
	.uleb128 0x5e
	.4byte	.LASF796
	.byte	0x8
	.byte	0x6e
	.byte	0x37
	.4byte	0x281
	.byte	0
	.uleb128 0x26
	.4byte	0x27c3
	.4byte	0x6be9
	.byte	0x3
	.4byte	0x6bf3
	.uleb128 0x27
	.4byte	.LASF742
	.4byte	0x35f5
	.byte	0
	.uleb128 0x26
	.4byte	0x2301
	.4byte	0x6c01
	.byte	0x3
	.4byte	0x6c19
	.uleb128 0x27
	.4byte	.LASF742
	.4byte	0x2b78
	.uleb128 0x87
	.4byte	.LASF797
	.byte	0x4
	.2byte	0x127
	.byte	0x29
	.4byte	0x11d3
	.byte	0
	.uleb128 0x26
	.4byte	0x3181
	.4byte	0x6c27
	.byte	0x3
	.4byte	0x6c31
	.uleb128 0x27
	.4byte	.LASF742
	.4byte	0x35cc
	.byte	0
	.uleb128 0x26
	.4byte	0x30c6
	.4byte	0x6c3f
	.byte	0x3
	.4byte	0x6c49
	.uleb128 0x27
	.4byte	.LASF742
	.4byte	0x310c
	.byte	0
	.uleb128 0x43
	.4byte	.LASF798
	.byte	0x2
	.byte	0x67
	.byte	0x1b
	.4byte	0x1316
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c78
	.uleb128 0x41
	.4byte	.LASF799
	.byte	0x2
	.byte	0x67
	.byte	0x33
	.4byte	0x1b29
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x88
	.4byte	.LASF798
	.byte	0x2
	.byte	0x35
	.byte	0x1b
	.4byte	0x1316
	.byte	0x3
	.4byte	0x6c97
	.uleb128 0x5e
	.4byte	.LASF799
	.byte	0x2
	.byte	0x35
	.byte	0x32
	.4byte	0x1adb
	.byte	0
	.uleb128 0x40
	.4byte	.LASF800
	.byte	0x3
	.byte	0x76
	.byte	0x14
	.4byte	.LASF801
	.4byte	0x11e4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6cf6
	.uleb128 0x32
	.string	"a"
	.byte	0x3
	.byte	0x76
	.byte	0x2d
	.4byte	0x1578
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x89
	.4byte	.LASF802
	.byte	0x3
	.byte	0x78
	.byte	0x18
	.4byte	0x120d
	.4byte	0x335b98c9
	.uleb128 0x5
	.4byte	.LVL16
	.4byte	0x6cf6
	.4byte	0x6cec
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL17
	.4byte	0x6d48
	.byte	0
	.uleb128 0x40
	.4byte	.LASF803
	.byte	0x3
	.byte	0x67
	.byte	0x14
	.4byte	.LASF804
	.4byte	0x1201
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d27
	.uleb128 0x32
	.string	"a"
	.byte	0x3
	.byte	0x67
	.byte	0x2e
	.4byte	0x1578
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x8a
	.4byte	.LASF805
	.byte	0x3
	.byte	0x61
	.byte	0x14
	.4byte	.LASF806
	.4byte	0x11e4
	.byte	0x3
	.4byte	0x6d48
	.uleb128 0x49
	.string	"a"
	.byte	0x3
	.byte	0x61
	.byte	0x34
	.4byte	0x1578
	.byte	0
	.uleb128 0x8b
	.4byte	.LASF820
	.4byte	.LASF820
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1c
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x24
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
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
	.uleb128 0x5
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x6d
	.uleb128 0x19
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
	.uleb128 0x2c
	.uleb128 0x5
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x8
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x8b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x8a
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x8b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x8a
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x59
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
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5a
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
	.byte	0
	.byte	0
	.uleb128 0x5b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x5e
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
	.byte	0
	.byte	0
	.uleb128 0x5f
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
	.uleb128 0x60
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
	.uleb128 0x61
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x62
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x63
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x64
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x65
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x66
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x67
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x8a
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x68
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x69
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
	.uleb128 0x8a
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6a
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6b
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6c
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
	.byte	0
	.byte	0
	.uleb128 0x6d
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
	.uleb128 0x6e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x6f
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
	.uleb128 0x70
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x71
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x72
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
	.uleb128 0x73
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x74
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x75
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x76
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
	.uleb128 0x77
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
	.uleb128 0x78
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x79
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
	.uleb128 0x7a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7b
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
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7c
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7d
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7e
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7f
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
	.uleb128 0x80
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
	.uleb128 0x81
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
	.uleb128 0x82
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x83
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
	.uleb128 0x84
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x85
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
	.uleb128 0x86
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x87
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
	.uleb128 0x88
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x89
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8a
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8b
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
.LVUS125:
	.uleb128 0
	.uleb128 .LVU1376
	.uleb128 .LVU1376
	.uleb128 0
.LLST125:
	.4byte	.LVL357
	.4byte	.LVL358
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL358
	.4byte	.LFE1203
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
.LVUS115:
	.uleb128 0
	.uleb128 .LVU1293
	.uleb128 .LVU1293
	.uleb128 .LVU1294
	.uleb128 .LVU1294
	.uleb128 .LVU1316
	.uleb128 .LVU1316
	.uleb128 .LVU1317
	.uleb128 .LVU1317
	.uleb128 .LVU1340
	.uleb128 .LVU1340
	.uleb128 .LVU1347
	.uleb128 .LVU1347
	.uleb128 .LVU1363
	.uleb128 .LVU1363
	.uleb128 .LVU1370
	.uleb128 .LVU1370
	.uleb128 .LVU1371
	.uleb128 .LVU1371
	.uleb128 0
.LLST115:
	.4byte	.LVL325
	.4byte	.LVL332
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL332
	.4byte	.LVL333
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
	.4byte	.LVL333
	.4byte	.LVL338
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL338
	.4byte	.LVL339
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
	.4byte	.LVL339
	.4byte	.LVL347
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL347
	.4byte	.LVL350
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
	.4byte	.LVL350
	.4byte	.LVL352
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL352
	.4byte	.LVL355
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
	.4byte	.LVL355
	.4byte	.LVL356
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL356
	.4byte	.LFE1202
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
.LVUS116:
	.uleb128 0
	.uleb128 .LVU1265
	.uleb128 .LVU1265
	.uleb128 0
.LLST116:
	.4byte	.LVL325
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL327
	.4byte	.LFE1202
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS117:
	.uleb128 .LVU1265
	.uleb128 .LVU1339
	.uleb128 .LVU1347
	.uleb128 .LVU1371
.LLST117:
	.4byte	.LVL327
	.4byte	.LVL346
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL350
	.4byte	.LVL356
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS118:
	.uleb128 .LVU1327
	.uleb128 .LVU1338
	.uleb128 .LVU1347
	.uleb128 .LVU1361
.LLST118:
	.4byte	.LVL344
	.4byte	.LVL345-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL350
	.4byte	.LVL351-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS119:
	.uleb128 .LVU1267
	.uleb128 .LVU1273
.LLST119:
	.4byte	.LVL328
	.4byte	.LVL329
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS120:
	.uleb128 .LVU1269
	.uleb128 .LVU1273
.LLST120:
	.4byte	.LVL328
	.4byte	.LVL329
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS121:
	.uleb128 .LVU1269
	.uleb128 .LVU1273
.LLST121:
	.4byte	.LVL328
	.4byte	.LVL329
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS122:
	.uleb128 .LVU1270
	.uleb128 .LVU1370
.LLST122:
	.4byte	.LVL328
	.4byte	.LVL355
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS123:
	.uleb128 .LVU1320
	.uleb128 .LVU1324
.LLST123:
	.4byte	.LVL340
	.4byte	.LVL342
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS124:
	.uleb128 .LVU1320
	.uleb128 .LVU1323
	.uleb128 .LVU1323
	.uleb128 .LVU1324
.LLST124:
	.4byte	.LVL340
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL341
	.4byte	.LVL342-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS104:
	.uleb128 0
	.uleb128 .LVU1158
	.uleb128 .LVU1158
	.uleb128 .LVU1246
	.uleb128 .LVU1246
	.uleb128 .LVU1258
	.uleb128 .LVU1258
	.uleb128 .LVU1260
	.uleb128 .LVU1260
	.uleb128 0
.LLST104:
	.4byte	.LVL288
	.4byte	.LVL290
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL290
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL316
	.4byte	.LVL323
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
	.4byte	.LVL323
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL324
	.4byte	.LFE1201
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
.LVUS105:
	.uleb128 0
	.uleb128 .LVU1248
	.uleb128 .LVU1248
	.uleb128 .LVU1249
	.uleb128 .LVU1249
	.uleb128 .LVU1250
	.uleb128 .LVU1250
	.uleb128 .LVU1258
	.uleb128 .LVU1258
	.uleb128 .LVU1260
	.uleb128 .LVU1260
	.uleb128 0
.LLST105:
	.4byte	.LVL288
	.4byte	.LVL317
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL317
	.4byte	.LVL318
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
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL319
	.4byte	.LVL323
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
	.4byte	.LVL323
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL324
	.4byte	.LFE1201
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
.LVUS106:
	.uleb128 .LVU1158
	.uleb128 .LVU1164
	.uleb128 .LVU1165
	.uleb128 .LVU1192
	.uleb128 .LVU1193
	.uleb128 .LVU1220
	.uleb128 .LVU1221
	.uleb128 .LVU1232
	.uleb128 .LVU1233
	.uleb128 .LVU1234
	.uleb128 .LVU1258
	.uleb128 .LVU1260
.LLST106:
	.4byte	.LVL290
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL293
	.4byte	.LVL297
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL298
	.4byte	.LVL305
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL306
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL312
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL323
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS107:
	.uleb128 .LVU1196
	.uleb128 .LVU1200
	.uleb128 .LVU1200
	.uleb128 .LVU1258
.LLST107:
	.4byte	.LVL299
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL301
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS108:
	.uleb128 .LVU1232
	.uleb128 .LVU1233
	.uleb128 .LVU1234
	.uleb128 .LVU1257
.LLST108:
	.4byte	.LVL311
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL314
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS109:
	.uleb128 .LVU1166
	.uleb128 .LVU1172
.LLST109:
	.4byte	.LVL293
	.4byte	.LVL294
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS110:
	.uleb128 .LVU1168
	.uleb128 .LVU1172
.LLST110:
	.4byte	.LVL293
	.4byte	.LVL294
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS111:
	.uleb128 .LVU1168
	.uleb128 .LVU1172
.LLST111:
	.4byte	.LVL293
	.4byte	.LVL294
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS112:
	.uleb128 .LVU1169
	.uleb128 .LVU1258
.LLST112:
	.4byte	.LVL293
	.4byte	.LVL323
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS113:
	.uleb128 .LVU1224
	.uleb128 .LVU1228
.LLST113:
	.4byte	.LVL307
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS114:
	.uleb128 .LVU1224
	.uleb128 .LVU1227
	.uleb128 .LVU1227
	.uleb128 .LVU1228
.LLST114:
	.4byte	.LVL307
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL308
	.4byte	.LVL309-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS103:
	.uleb128 0
	.uleb128 .LVU1152
	.uleb128 .LVU1152
	.uleb128 0
.LLST103:
	.4byte	.LVL285
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL287
	.4byte	.LFE1200
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
.LVUS101:
	.uleb128 0
	.uleb128 .LVU1137
	.uleb128 .LVU1137
	.uleb128 0
.LLST101:
	.4byte	.LVL279
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL280
	.4byte	.LFE1199
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
.LVUS102:
	.uleb128 .LVU1138
	.uleb128 0
.LLST102:
	.4byte	.LVL281
	.4byte	.LFE1199
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS91:
	.uleb128 0
	.uleb128 .LVU1046
	.uleb128 .LVU1046
	.uleb128 .LVU1047
	.uleb128 .LVU1047
	.uleb128 .LVU1069
	.uleb128 .LVU1069
	.uleb128 .LVU1070
	.uleb128 .LVU1070
	.uleb128 .LVU1095
	.uleb128 .LVU1095
	.uleb128 .LVU1106
	.uleb128 .LVU1106
	.uleb128 .LVU1130
	.uleb128 .LVU1130
	.uleb128 .LVU1131
	.uleb128 .LVU1131
	.uleb128 .LVU1132
	.uleb128 .LVU1132
	.uleb128 0
.LLST91:
	.4byte	.LVL245
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL252
	.4byte	.LVL253
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
	.4byte	.LVL253
	.4byte	.LVL258
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL258
	.4byte	.LVL259
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
	.4byte	.LVL259
	.4byte	.LVL269
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL269
	.4byte	.LVL273
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
	.4byte	.LVL273
	.4byte	.LVL276
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL276
	.4byte	.LVL277
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
	.4byte	.LVL277
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL278
	.4byte	.LFE1198
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
.LVUS92:
	.uleb128 0
	.uleb128 .LVU1018
	.uleb128 .LVU1018
	.uleb128 .LVU1097
	.uleb128 .LVU1097
	.uleb128 0
.LLST92:
	.4byte	.LVL245
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL247
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL270
	.4byte	.LFE1198
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
.LVUS93:
	.uleb128 .LVU1018
	.uleb128 .LVU1081
	.uleb128 .LVU1082
	.uleb128 .LVU1083
	.uleb128 .LVU1131
	.uleb128 .LVU1132
.LLST93:
	.4byte	.LVL247
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL265
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL277
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS94:
	.uleb128 .LVU1081
	.uleb128 .LVU1082
	.uleb128 .LVU1083
	.uleb128 .LVU1131
.LLST94:
	.4byte	.LVL264
	.4byte	.LVL265
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL267
	.4byte	.LVL277
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS95:
	.uleb128 .LVU1020
	.uleb128 .LVU1026
.LLST95:
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS96:
	.uleb128 .LVU1022
	.uleb128 .LVU1026
.LLST96:
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS97:
	.uleb128 .LVU1022
	.uleb128 .LVU1026
.LLST97:
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS98:
	.uleb128 .LVU1023
	.uleb128 .LVU1131
.LLST98:
	.4byte	.LVL248
	.4byte	.LVL277
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS99:
	.uleb128 .LVU1073
	.uleb128 .LVU1077
.LLST99:
	.4byte	.LVL260
	.4byte	.LVL262
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS100:
	.uleb128 .LVU1073
	.uleb128 .LVU1076
	.uleb128 .LVU1076
	.uleb128 .LVU1077
.LLST100:
	.4byte	.LVL260
	.4byte	.LVL261
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL261
	.4byte	.LVL262-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS85:
	.uleb128 0
	.uleb128 .LVU962
	.uleb128 .LVU962
	.uleb128 .LVU963
	.uleb128 .LVU963
	.uleb128 .LVU993
	.uleb128 .LVU993
	.uleb128 .LVU1011
	.uleb128 .LVU1011
	.uleb128 .LVU1013
	.uleb128 .LVU1013
	.uleb128 0
.LLST85:
	.4byte	.LVL222
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL229
	.4byte	.LVL230
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
	.4byte	.LVL230
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL239
	.4byte	.LVL243
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
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL244
	.4byte	.LFE1197
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
.LVUS86:
	.uleb128 0
	.uleb128 .LVU940
	.uleb128 .LVU940
	.uleb128 .LVU994
	.uleb128 .LVU994
	.uleb128 .LVU1011
	.uleb128 .LVU1011
	.uleb128 0
.LLST86:
	.4byte	.LVL222
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL224
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL240
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL243
	.4byte	.LFE1197
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS87:
	.uleb128 .LVU940
	.uleb128 .LVU987
	.uleb128 .LVU1011
	.uleb128 .LVU1013
.LLST87:
	.4byte	.LVL224
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS88:
	.uleb128 .LVU993
	.uleb128 .LVU1011
.LLST88:
	.4byte	.LVL239
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS89:
	.uleb128 .LVU966
	.uleb128 .LVU970
.LLST89:
	.4byte	.LVL231
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS90:
	.uleb128 .LVU966
	.uleb128 .LVU969
	.uleb128 .LVU969
	.uleb128 .LVU970
.LLST90:
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL232
	.4byte	.LVL233-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS78:
	.uleb128 .LVU842
	.uleb128 .LVU870
	.uleb128 .LVU871
	.uleb128 .LVU891
	.uleb128 .LVU892
	.uleb128 .LVU895
	.uleb128 .LVU934
	.uleb128 .LVU935
.LLST78:
	.4byte	.LVL200
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL211
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS79:
	.uleb128 .LVU844
	.uleb128 .LVU934
.LLST79:
	.4byte	.LVL201
	.4byte	.LVL220
	.2byte	0x4
	.byte	0xa
	.2byte	0xe250
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS80:
	.uleb128 .LVU895
	.uleb128 .LVU906
	.uleb128 .LVU914
	.uleb128 .LVU928
.LLST80:
	.4byte	.LVL213
	.4byte	.LVL214-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL217
	.4byte	.LVL218-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS81:
	.uleb128 .LVU845
	.uleb128 .LVU851
.LLST81:
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS82:
	.uleb128 .LVU847
	.uleb128 .LVU851
.LLST82:
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS83:
	.uleb128 .LVU847
	.uleb128 .LVU851
.LLST83:
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS84:
	.uleb128 .LVU848
	.uleb128 .LVU934
.LLST84:
	.4byte	.LVL201
	.4byte	.LVL220
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS57:
	.uleb128 0
	.uleb128 .LVU495
	.uleb128 .LVU495
	.uleb128 0
.LLST57:
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LFE1195
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
.LVUS58:
	.uleb128 0
	.uleb128 .LVU526
	.uleb128 .LVU526
	.uleb128 .LVU592
	.uleb128 .LVU592
	.uleb128 .LVU594
	.uleb128 .LVU594
	.uleb128 0
.LLST58:
	.4byte	.LVL113
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123
	.4byte	.LVL140
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
	.4byte	.LVL140
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL142
	.4byte	.LFE1195
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
.LVUS59:
	.uleb128 .LVU495
	.uleb128 .LVU522
	.uleb128 .LVU523
	.uleb128 .LVU538
	.uleb128 .LVU545
	.uleb128 .LVU574
	.uleb128 .LVU575
	.uleb128 .LVU591
	.uleb128 .LVU592
	.uleb128 .LVU593
	.uleb128 .LVU593
	.uleb128 .LVU594
	.uleb128 .LVU594
	.uleb128 .LVU595
.LLST59:
	.4byte	.LVL115
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS60:
	.uleb128 .LVU526
	.uleb128 .LVU537
.LLST60:
	.4byte	.LVL123
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS61:
	.uleb128 .LVU497
	.uleb128 .LVU503
.LLST61:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS62:
	.uleb128 .LVU499
	.uleb128 .LVU503
.LLST62:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS63:
	.uleb128 .LVU499
	.uleb128 .LVU503
.LLST63:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS64:
	.uleb128 .LVU500
	.uleb128 .LVU592
	.uleb128 .LVU594
	.uleb128 .LVU595
.LLST64:
	.4byte	.LVL116
	.4byte	.LVL140
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS65:
	.uleb128 .LVU547
	.uleb128 .LVU553
.LLST65:
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS66:
	.uleb128 .LVU549
	.uleb128 .LVU553
.LLST66:
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS67:
	.uleb128 .LVU549
	.uleb128 .LVU553
.LLST67:
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS68:
	.uleb128 .LVU550
	.uleb128 .LVU578
.LLST68:
	.4byte	.LVL128
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS69:
	.uleb128 .LVU582
	.uleb128 .LVU588
.LLST69:
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS70:
	.uleb128 .LVU584
	.uleb128 .LVU588
.LLST70:
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS71:
	.uleb128 .LVU584
	.uleb128 .LVU588
.LLST71:
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS72:
	.uleb128 .LVU585
	.uleb128 .LVU592
	.uleb128 .LVU594
	.uleb128 .LVU595
.LLST72:
	.4byte	.LVL137
	.4byte	.LVL140
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS54:
	.uleb128 .LVU483
	.uleb128 .LVU489
.LLST54:
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS55:
	.uleb128 .LVU485
	.uleb128 .LVU489
.LLST55:
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS56:
	.uleb128 .LVU485
	.uleb128 .LVU489
.LLST56:
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 .LVU471
	.uleb128 .LVU479
.LLST47:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 .LVU471
	.uleb128 .LVU479
.LLST48:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 .LVU473
	.uleb128 .LVU479
.LLST49:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 .LVU473
	.uleb128 .LVU479
.LLST50:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS51:
	.uleb128 .LVU474
	.uleb128 .LVU479
.LLST51:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS52:
	.uleb128 .LVU474
	.uleb128 .LVU479
.LLST52:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS53:
	.uleb128 .LVU474
	.uleb128 .LVU479
.LLST53:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 .LVU441
	.uleb128 .LVU448
.LLST42:
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 .LVU437
	.uleb128 .LVU439
	.uleb128 .LVU439
	.uleb128 .LVU453
.LLST43:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL12STEPPER_AXES
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU437
	.uleb128 .LVU439
	.uleb128 .LVU439
	.uleb128 .LVU442
	.uleb128 .LVU442
	.uleb128 .LVU451
	.uleb128 .LVU451
	.uleb128 .LVU456
	.uleb128 .LVU456
	.uleb128 .LVU467
	.uleb128 .LVU467
	.uleb128 0
.LLST44:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL12STEPPER_AXES+8
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL96
	.4byte	.LVL101
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL12STEPPER_AXES+8
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL104
	.4byte	.LVL108
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL12STEPPER_AXES+8
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LFE1192
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 .LVU455
	.uleb128 .LVU466
.LLST45:
	.4byte	.LVL103
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 .LVU453
	.uleb128 0
.LLST46:
	.4byte	.LVL102
	.4byte	.LFE1192
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU427
	.uleb128 .LVU435
.LLST35:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU427
	.uleb128 .LVU435
.LLST36:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU429
	.uleb128 .LVU435
.LLST37:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU429
	.uleb128 .LVU435
.LLST38:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 .LVU430
	.uleb128 .LVU435
.LLST39:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL14motion_blocked
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU430
	.uleb128 .LVU435
.LLST40:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU430
	.uleb128 .LVU435
.LLST41:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU423
	.uleb128 .LVU423
	.uleb128 .LVU424
	.uleb128 .LVU424
	.uleb128 0
.LLST15:
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LFE1191
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 .LVU423
	.uleb128 .LVU423
	.uleb128 .LVU424
	.uleb128 .LVU424
	.uleb128 0
.LLST16:
	.4byte	.LVL36
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53
	.4byte	.LVL90
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
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL91
	.4byte	.LFE1191
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
.LVUS17:
	.uleb128 0
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 0
.LLST17:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38
	.4byte	.LFE1191
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU423
	.uleb128 .LVU423
	.uleb128 .LVU424
	.uleb128 .LVU424
	.uleb128 0
.LLST18:
	.4byte	.LVL36
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL91
	.4byte	.LFE1191
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU150
	.uleb128 0
.LLST19:
	.4byte	.LVL38
	.4byte	.LFE1191
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU218
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 .LVU423
.LLST20:
	.4byte	.LVL50
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL51-1
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU221
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU423
.LLST21:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU222
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU391
.LLST22:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU223
	.uleb128 .LVU378
	.uleb128 .LVU378
	.uleb128 .LVU379
	.uleb128 .LVU379
	.uleb128 .LVU387
	.uleb128 .LVU387
	.uleb128 .LVU423
.LLST23:
	.4byte	.LVL52
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xa
	.2byte	0x107
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xa
	.2byte	0x107
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU224
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU384
	.uleb128 .LVU385
	.uleb128 .LVU423
.LLST26:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU231
	.uleb128 .LVU232
	.uleb128 .LVU233
	.uleb128 .LVU235
.LLST27:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU236
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU252
	.uleb128 .LVU252
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU385
.LLST28:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL62
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU240
	.uleb128 .LVU247
.LLST29:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU242
	.uleb128 .LVU247
.LLST30:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU244
	.uleb128 .LVU247
.LLST31:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x74
	.sleb128 60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU211
	.uleb128 .LVU215
.LLST24:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU211
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU215
	.uleb128 .LVU215
	.uleb128 .LVU215
.LLST25:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49-1
	.4byte	.LVL49
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU388
	.uleb128 .LVU392
.LLST32:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU395
	.uleb128 .LVU398
.LLST33:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU395
	.uleb128 .LVU398
.LLST34:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS73:
	.uleb128 0
	.uleb128 .LVU815
	.uleb128 .LVU815
	.uleb128 0
.LLST73:
	.4byte	.LVL144
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL194
	.4byte	.LFE1190
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
.LVUS74:
	.uleb128 .LVU600
	.uleb128 0
.LLST74:
	.4byte	.LVL146
	.4byte	.LFE1190
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS75:
	.uleb128 .LVU606
	.uleb128 .LVU838
.LLST75:
	.4byte	.LVL148
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS77:
	.uleb128 .LVU769
	.uleb128 .LVU770
	.uleb128 .LVU770
	.uleb128 .LVU812
.LLST77:
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS76:
	.uleb128 .LVU602
	.uleb128 .LVU606
.LLST76:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU80
	.uleb128 .LVU139
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU77
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 0
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL12STEPPER_AXES
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE1189
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU77
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL12STEPPER_AXES+8
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL12STEPPER_AXES+8
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35-1
	.4byte	.LFE1189
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL12STEPPER_AXES+8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU84
	.uleb128 .LVU139
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU107
	.uleb128 .LVU111
.LLST12:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU114
	.uleb128 .LVU117
.LLST13:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU114
	.uleb128 .LVU117
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE1185
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
.LVUS4:
	.uleb128 .LVU23
	.uleb128 .LVU27
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE1184
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
	.uleb128 .LVU14
	.uleb128 .LVU18
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE1183
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE112
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE8
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
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE7
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
	.4byte	0xbc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.4byte	.LFB1184
	.4byte	.LFE1184-.LFB1184
	.4byte	.LFB1185
	.4byte	.LFE1185-.LFB1185
	.4byte	.LFB1183
	.4byte	.LFE1183-.LFB1183
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB1189
	.4byte	.LFE1189-.LFB1189
	.4byte	.LFB1191
	.4byte	.LFE1191-.LFB1191
	.4byte	.LFB1192
	.4byte	.LFE1192-.LFB1192
	.4byte	.LFB1193
	.4byte	.LFE1193-.LFB1193
	.4byte	.LFB1194
	.4byte	.LFE1194-.LFB1194
	.4byte	.LFB1195
	.4byte	.LFE1195-.LFB1195
	.4byte	.LFB1190
	.4byte	.LFE1190-.LFB1190
	.4byte	.LFB1196
	.4byte	.LFE1196-.LFB1196
	.4byte	.LFB1197
	.4byte	.LFE1197-.LFB1197
	.4byte	.LFB1198
	.4byte	.LFE1198-.LFB1198
	.4byte	.LFB1199
	.4byte	.LFE1199-.LFB1199
	.4byte	.LFB1200
	.4byte	.LFE1200-.LFB1200
	.4byte	.LFB1201
	.4byte	.LFE1201-.LFB1201
	.4byte	.LFB1202
	.4byte	.LFE1202-.LFB1202
	.4byte	.LFB1203
	.4byte	.LFE1203-.LFB1203
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB287
	.4byte	.LBE287
	.4byte	.LBB322
	.4byte	.LBE322
	.4byte	0
	.4byte	0
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LFB1184
	.4byte	.LFE1184
	.4byte	.LFB1185
	.4byte	.LFE1185
	.4byte	.LFB1183
	.4byte	.LFE1183
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB1189
	.4byte	.LFE1189
	.4byte	.LFB1191
	.4byte	.LFE1191
	.4byte	.LFB1192
	.4byte	.LFE1192
	.4byte	.LFB1193
	.4byte	.LFE1193
	.4byte	.LFB1194
	.4byte	.LFE1194
	.4byte	.LFB1195
	.4byte	.LFE1195
	.4byte	.LFB1190
	.4byte	.LFE1190
	.4byte	.LFB1196
	.4byte	.LFE1196
	.4byte	.LFB1197
	.4byte	.LFE1197
	.4byte	.LFB1198
	.4byte	.LFE1198
	.4byte	.LFB1199
	.4byte	.LFE1199
	.4byte	.LFB1200
	.4byte	.LFE1200
	.4byte	.LFB1201
	.4byte	.LFE1201
	.4byte	.LFB1202
	.4byte	.LFE1202
	.4byte	.LFB1203
	.4byte	.LFE1203
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF351:
	.string	"TOO_LOW"
.LASF457:
	.string	"_ZNK16FastAccelStepper19getCurrentSpeedInUsEb"
.LASF629:
	.string	"_ZN13ramp_config_s6updateEv"
.LASF733:
	.string	"steppers"
.LASF93:
	.string	"_ZNSt13__atomic_baseIbE8fetch_orEbSt12memory_order"
.LASF698:
	.string	"_ZN13RampGenerator22applySpeedAccelerationEv"
.LASF665:
	.string	"stopRamp"
.LASF693:
	.string	"_ZN13RampGenerator21setLinearAccelerationEm"
.LASF553:
	.string	"_ZN16FastAccelStepper14performOneStepEbb"
.LASF162:
	.string	"size_t"
.LASF790:
	.string	"stepper_init"
.LASF121:
	.string	"_ZNSt6atomicIbE21compare_exchange_weakERbbSt12memory_orderS2_"
.LASF120:
	.string	"_ZNVSt6atomicIbE8exchangeEbSt12memory_order"
.LASF54:
	.string	"is_lock_free"
.LASF732:
	.string	"engine"
.LASF475:
	.string	"_ZN16FastAccelStepper6moveToElb"
.LASF46:
	.string	"_ZNSt13__atomic_baseIbEaNEb"
.LASF670:
	.string	"_ZN9ramp_rw_s21startRampIfNotRunningEv"
.LASF591:
	.string	"High"
.LASF782:
	.string	"start_pos"
.LASF433:
	.string	"_ZNK16FastAccelStepper15getMaxSpeedInUsEv"
.LASF27:
	.string	"_ZNSt13__atomic_baseIbEaSEb"
.LASF752:
	.string	"speed_mhz"
.LASF258:
	.string	"AXIS_RA"
.LASF468:
	.string	"setJumpStart"
.LASF748:
	.string	"stepper"
.LASF481:
	.string	"_ZN16FastAccelStepper10runForwardEv"
.LASF348:
	.string	"MoveEmpty"
.LASF758:
	.string	"stepper_slew_run"
.LASF352:
	.string	"TOO_HIGH"
.LASF401:
	.string	"_ZNK16FastAccelStepper15getDirectionPinEv"
.LASF168:
	.string	"int32_t"
.LASF151:
	.string	"__uint_least8_t"
.LASF793:
	.string	"slew_accel"
.LASF623:
	.string	"parameters"
.LASF744:
	.string	"stepper_move_to_async"
.LASF424:
	.string	"setDelayToDisable"
.LASF402:
	.string	"directionPinHighCountsUp"
.LASF775:
	.string	"__for_end"
.LASF297:
	.string	"lldiv"
.LASF458:
	.string	"getCurrentSpeedInMilliHz"
.LASF520:
	.string	"hasTicksInQueue"
.LASF601:
	.string	"valid_acceleration"
.LASF307:
	.string	"ESP_LOG_ERROR"
.LASF147:
	.string	"__int64_t"
.LASF480:
	.string	"runForward"
.LASF303:
	.string	"strtold"
.LASF549:
	.string	"_ZNK16FastAccelStepper10driverTypeEv"
.LASF453:
	.string	"_ZNK16FastAccelStepper15getSpeedInTicksEv"
.LASF17:
	.string	"~__atomic_base"
.LASF125:
	.string	"_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_"
.LASF299:
	.string	"strtoll"
.LASF409:
	.string	"_ZNK16FastAccelStepper22getDirChangeAfterTicksEv"
.LASF505:
	.string	"_ZNK16FastAccelStepper9targetPosEv"
.LASF106:
	.string	"_ZNVSt6atomicIbEaSERKS0_"
.LASF437:
	.string	"_ZNK16FastAccelStepper15getMaxSpeedInHzEv"
.LASF500:
	.string	"takeStopCause"
.LASF194:
	.string	"div_t"
.LASF370:
	.string	"_ZN22FastAccelStepperEngine12i2sMuxSetBitEhb"
.LASF813:
	.string	"is_always_lock_free"
.LASF771:
	.string	"_Z15stepper_unblockv"
.LASF635:
	.string	"config"
.LASF470:
	.string	"applySpeedAcceleration"
.LASF527:
	.string	"_ZNK16FastAccelStepper35getPeriodInUsAfterCommandsCompletedEv"
.LASF566:
	.string	"getCurrentSpeedInTicks"
.LASF715:
	.string	"_ZNK13RampGenerator22getCurrentSpeedInTicksEP14actual_ticks_s"
.LASF8:
	.string	"acquire"
.LASF606:
	.string	"_ZN17ramp_parameters_s4initEv"
.LASF815:
	.string	"AXES"
.LASF677:
	.string	"_ZNK13RampGenerator9rampStateEv"
.LASF184:
	.string	"int_fast8_t"
.LASF179:
	.string	"uint_least16_t"
.LASF808:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.cpp"
.LASF589:
	.string	"_stop_cause"
.LASF221:
	.string	"GPIO_NUM_18"
.LASF64:
	.string	"exchange"
.LASF420:
	.string	"setAutoEnable"
.LASF504:
	.string	"targetPos"
.LASF347:
	.string	"MoveBusy"
.LASF583:
	.string	"_on_delay_ticks"
.LASF380:
	.string	"setExternalCallForPin"
.LASF594:
	.string	"move_value"
.LASF315:
	.string	"log_level"
.LASF112:
	.string	"_ZNKSt6atomicIbE12is_lock_freeEv"
.LASF50:
	.string	"_ZNVSt13__atomic_baseIbEoREb"
.LASF706:
	.string	"_ZNK13RampGenerator21isRampGeneratorActiveEv"
.LASF281:
	.string	"atol"
.LASF491:
	.string	"_ZN16FastAccelStepper8stopMoveEv"
.LASF587:
	.string	"_pendingExternalDirState"
.LASF666:
	.string	"_ZN9ramp_rw_s8stopRampEv"
.LASF333:
	.string	"QueueFull"
.LASF541:
	.string	"_ZN16FastAccelStepper20attachToPulseCounterEhsshb"
.LASF12:
	.string	"__memory_order_mask"
.LASF611:
	.string	"setTargetPosition"
.LASF539:
	.string	"_ZN16FastAccelStepper13reAttachToPinEv"
.LASF101:
	.string	"~atomic"
.LASF816:
	.string	"pcnt_unit_t"
.LASF117:
	.string	"_ZNKSt6atomicIbE4loadESt12memory_order"
.LASF656:
	.string	"setKeepRunning"
.LASF477:
	.string	"_ZN16FastAccelStepper11keepRunningEv"
.LASF621:
	.string	"_ZNK17ramp_parameters_s16checkValidConfigEv"
.LASF138:
	.string	"__uint8_t"
.LASF408:
	.string	"getDirChangeAfterTicks"
.LASF311:
	.string	"ESP_LOG_VERBOSE"
.LASF526:
	.string	"getPeriodInUsAfterCommandsCompleted"
.LASF305:
	.string	"15esp_log_level_t"
.LASF259:
	.string	"AXIS_DEC"
.LASF278:
	.string	"atof"
.LASF705:
	.string	"_ZNK13RampGenerator10isStoppingEv"
.LASF410:
	.string	"setEnablePin"
.LASF280:
	.string	"atoi"
.LASF579:
	.string	"_enablePinLowActive"
.LASF637:
	.string	"force_stop"
.LASF128:
	.string	"_ZNVSt6atomicIbE23compare_exchange_strongERbbSt12memory_order"
.LASF766:
	.string	"stepper_move_to"
.LASF19:
	.string	"_ZNSt13__atomic_baseIbED4Ev"
.LASF443:
	.string	"_ZN16FastAccelStepper12setSpeedInUsEm"
.LASF363:
	.string	"I2S_MUX"
.LASF450:
	.string	"getSpeedInUs"
.LASF809:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/build"
.LASF371:
	.string	"i2sMuxGetBit"
.LASF67:
	.string	"compare_exchange_weak"
.LASF144:
	.string	"long int"
.LASF529:
	.string	"_ZNK16FastAccelStepper38getPeriodInTicksAfterCommandsCompletedEv"
.LASF482:
	.string	"runBackward"
.LASF494:
	.string	"stepsToStop"
.LASF261:
	.string	"axis_config_t"
.LASF302:
	.string	"float"
.LASF535:
	.string	"_ZNK16FastAccelStepper21isRampGeneratorActiveEv"
.LASF622:
	.string	"ramp_config_s"
.LASF596:
	.string	"s_jump"
.LASF57:
	.string	"store"
.LASF384:
	.string	"manageSteppers"
.LASF83:
	.string	"fetch_add"
.LASF273:
	.string	"full_steps"
.LASF317:
	.string	"require_formatting"
.LASF95:
	.string	"fetch_xor"
.LASF659:
	.string	"ramp_rw_s"
.LASF254:
	.string	"TMC_R_INTERNAL_MOHM"
.LASF625:
	.string	"log2_ticks_h"
.LASF563:
	.string	"_ZN16FastAccelStepper20agreeWithAutoDisableEv"
.LASF740:
	.string	"rand"
.LASF72:
	.string	"compare_exchange_strong"
.LASF26:
	.string	"_ZNVKSt13__atomic_baseIbEcvbEv"
.LASF434:
	.string	"getMaxSpeedInTicks"
.LASF651:
	.string	"_ZN9ramp_ro_s18clearImmediateStopEv"
.LASF435:
	.string	"_ZNK16FastAccelStepper18getMaxSpeedInTicksEv"
.LASF15:
	.string	"__memory_order_hle_release"
.LASF684:
	.string	"_ZNK13RampGenerator12getSpeedInUsEv"
.LASF502:
	.string	"getStopCause"
.LASF394:
	.string	"FastAccelStepper"
.LASF461:
	.string	"_ZN16FastAccelStepper15setAccelerationEl"
.LASF157:
	.string	"__uint_least64_t"
.LASF356:
	.string	"count_up"
.LASF543:
	.string	"_ZN16FastAccelStepper16readPulseCounterEv"
.LASF40:
	.string	"_ZNSt13__atomic_baseIbEpLEb"
.LASF681:
	.string	"advanceTargetPosition"
.LASF701:
	.string	"startRun"
.LASF624:
	.string	"max_ramp_up_steps"
.LASF558:
	.string	"blockingWaitForForceStopComplete"
.LASF183:
	.string	"uint_least64_t"
.LASF38:
	.string	"_ZNVSt13__atomic_baseIbEmmEv"
.LASF569:
	.string	"_ZN16FastAccelStepper26handleExternalDirectionPinEP12StepperQueueb"
.LASF819:
	.string	"_Z12motion_startv"
.LASF634:
	.string	"ramp_ro_s"
.LASF557:
	.string	"_ZN16FastAccelStepper17updateAutoDisableEv"
.LASF135:
	.string	"operator&"
.LASF102:
	.string	"_ZNSt6atomicIbEC4Ev"
.LASF165:
	.string	"uint8_t"
.LASF319:
	.string	"dis_timestamp"
.LASF603:
	.string	"move_absolute"
.LASF203:
	.string	"GPIO_NUM_0"
.LASF204:
	.string	"GPIO_NUM_1"
.LASF691:
	.string	"_ZN13RampGenerator15setAccelerationEl"
.LASF206:
	.string	"GPIO_NUM_3"
.LASF207:
	.string	"GPIO_NUM_4"
.LASF208:
	.string	"GPIO_NUM_5"
.LASF209:
	.string	"GPIO_NUM_6"
.LASF210:
	.string	"GPIO_NUM_7"
.LASF294:
	.string	"system"
.LASF711:
	.string	"getNextCommand"
.LASF21:
	.string	"operator="
.LASF578:
	.string	"_autoEnable"
.LASF257:
	.string	"axis_t"
.LASF61:
	.string	"load"
.LASF499:
	.string	"_ZN16FastAccelStepper23forceStopAndNewPositionEl"
.LASF425:
	.string	"_ZN16FastAccelStepper17setDelayToDisableEt"
.LASF456:
	.string	"getCurrentSpeedInUs"
.LASF770:
	.string	"stepper_unblock"
.LASF340:
	.string	"ErrorEmptyQueueToStart"
.LASF341:
	.string	"ErrorNoDirPinToToggle"
.LASF47:
	.string	"_ZNVSt13__atomic_baseIbEaNEb"
.LASF780:
	.string	"grad_out"
.LASF645:
	.string	"_ZN9ramp_ro_s49advanceTargetPositionWithinInterruptDisabledScopeEl"
.LASF105:
	.string	"_ZNSt6atomicIbEaSERKS0_"
.LASF714:
	.string	"_ZN13RampGenerator20afterCommandEnqueuedEPK11NextCommand"
.LASF153:
	.string	"__uint_least16_t"
.LASF2:
	.string	"unsigned char"
.LASF516:
	.string	"isQueueRunning"
.LASF126:
	.string	"_ZNVSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_"
.LASF28:
	.string	"_ZNVSt13__atomic_baseIbEaSEb"
.LASF90:
	.string	"_ZNSt13__atomic_baseIbE9fetch_andEbSt12memory_order"
.LASF393:
	.string	"FastAccelStepperEngine"
.LASF131:
	.string	"_ZNSt6atomicIbE10notify_allEv"
.LASF728:
	.string	"char16_t"
.LASF523:
	.string	"_ZNK16FastAccelStepper12queueEntriesEv"
.LASF524:
	.string	"getPositionAfterCommandsCompleted"
.LASF84:
	.string	"_ZNSt13__atomic_baseIbE9fetch_addEbSt12memory_order"
.LASF784:
	.string	"result"
.LASF628:
	.string	"update"
.LASF205:
	.string	"GPIO_NUM_2"
.LASF605:
	.string	"keep_running_count_up"
.LASF198:
	.string	"7lldiv_t"
.LASF150:
	.string	"__int_least8_t"
.LASF359:
	.string	"pcnt_unit_handle_t"
.LASF555:
	.string	"_ZN16FastAccelStepper10fill_queueEv"
.LASF439:
	.string	"_ZNK16FastAccelStepper20getMaxSpeedInMilliHzEv"
.LASF544:
	.string	"clearPulseCounter"
.LASF212:
	.string	"GPIO_NUM_9"
.LASF531:
	.string	"_ZN16FastAccelStepper33setPositionAfterCommandsCompletedEl"
.LASF817:
	.string	"StepperQueue"
.LASF632:
	.string	"calculate_ramp_steps"
.LASF718:
	.string	"getCurrentPeriodInUs"
.LASF14:
	.string	"__memory_order_hle_acquire"
.LASF376:
	.string	"_ZN22FastAccelStepperEngine9task_rateEh"
.LASF792:
	.string	"_Z12stepper_initv"
.LASF607:
	.string	"applyParameters"
.LASF514:
	.string	"isQueueFull"
.LASF192:
	.string	"char"
.LASF426:
	.string	"getCurrentPosition"
.LASF361:
	.string	"MCPWM_PCNT"
.LASF284:
	.string	"ldiv"
.LASF127:
	.string	"_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_order"
.LASF814:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF189:
	.string	"uint_fast32_t"
.LASF762:
	.string	"_Z15stepper_slew_to6axis_tl"
.LASF44:
	.string	"_ZNVSt13__atomic_baseIbEmIEb"
.LASF746:
	.string	"_Z21stepper_move_to_async6axis_tl"
.LASF145:
	.string	"__uint32_t"
.LASF181:
	.string	"uint_least32_t"
.LASF350:
	.string	"DelayResultCode"
.LASF802:
	.string	"SIDEREAL_DAY_X10000"
.LASF211:
	.string	"GPIO_NUM_8"
.LASF575:
	.string	"_stepPin"
.LASF445:
	.string	"_ZN16FastAccelStepper15setSpeedInTicksEm"
.LASF617:
	.string	"_ZN17ramp_parameters_s15setSpeedInTicksEm"
.LASF640:
	.string	"_ZN9ramp_ro_s4initEv"
.LASF598:
	.string	"apply"
.LASF0:
	.string	"long long unsigned int"
.LASF739:
	.string	"esp_log"
.LASF471:
	.string	"_ZN16FastAccelStepper22applySpeedAccelerationEv"
.LASF751:
	.string	"_Z15stepper_run_mhz6axis_tl"
.LASF195:
	.string	"5div_t"
.LASF779:
	.string	"max_legs"
.LASF213:
	.string	"GPIO_NUM_10"
.LASF85:
	.string	"_ZNVSt13__atomic_baseIbE9fetch_addEbSt12memory_order"
.LASF783:
	.string	"prev_grad"
.LASF492:
	.string	"isStopping"
.LASF703:
	.string	"_ZN13RampGenerator9forceStopEv"
.LASF683:
	.string	"_ZN13RampGenerator15setSpeedInTicksEm"
.LASF279:
	.string	"double"
.LASF452:
	.string	"getSpeedInTicks"
.LASF132:
	.string	"_IntTp"
.LASF608:
	.string	"_ZN17ramp_parameters_s15applyParametersEv"
.LASF178:
	.string	"int_least16_t"
.LASF542:
	.string	"readPulseCounter"
.LASF761:
	.string	"stepper_slew_to"
.LASF82:
	.string	"_ZNSt13__atomic_baseIbE10notify_allEv"
.LASF335:
	.string	"WaitForEnablePinActive"
.LASF285:
	.string	"mblen"
.LASF154:
	.string	"__int_least32_t"
.LASF122:
	.string	"_ZNVSt6atomicIbE21compare_exchange_weakERbbSt12memory_orderS2_"
.LASF116:
	.string	"_ZNVSt6atomicIbE5storeEbSt12memory_order"
.LASF561:
	.string	"_ZN16FastAccelStepper15needAutoDisableEv"
.LASF432:
	.string	"getMaxSpeedInUs"
.LASF377:
	.string	"_task_rate"
.LASF260:
	.string	"AXIS_COUNT"
.LASF588:
	.string	"_attached_pulse_unit"
.LASF430:
	.string	"isRunning"
.LASF33:
	.string	"_ZNSt13__atomic_baseIbEmmEi"
.LASF664:
	.string	"_ZN9ramp_rw_s4initEv"
.LASF538:
	.string	"reAttachToPin"
.LASF669:
	.string	"_ZStanSt12memory_orderSt23__memory_order_modifier"
.LASF786:
	.string	"sampled"
.LASF265:
	.string	"step_pin"
.LASF580:
	.string	"_enablePinHighActive"
.LASF37:
	.string	"_ZNSt13__atomic_baseIbEmmEv"
.LASF581:
	.string	"_queue_num"
.LASF56:
	.string	"_ZNVKSt13__atomic_baseIbE12is_lock_freeEv"
.LASF723:
	.string	"scale_sum"
.LASF411:
	.string	"_ZN16FastAccelStepper12setEnablePinEhb"
.LASF98:
	.string	"__atomic_base<bool>"
.LASF694:
	.string	"_ZN13RampGenerator12setJumpStartEm"
.LASF612:
	.string	"_ZN17ramp_parameters_s17setTargetPositionEl"
.LASF20:
	.string	"_ZNSt13__atomic_baseIbEC4ERKS0_"
.LASF286:
	.string	"mbstowcs"
.LASF473:
	.string	"_ZN16FastAccelStepper4moveElb"
.LASF820:
	.string	"__udivdi3"
.LASF496:
	.string	"forceStop"
.LASF522:
	.string	"queueEntries"
.LASF10:
	.string	"acq_rel"
.LASF474:
	.string	"moveTo"
.LASF293:
	.string	"strtoul"
.LASF358:
	.string	"queue_end_s"
.LASF442:
	.string	"setSpeedInUs"
.LASF667:
	.string	"_ZNK9ramp_rw_s9rampStateEv"
.LASF528:
	.string	"getPeriodInTicksAfterCommandsCompleted"
.LASF119:
	.string	"_ZNSt6atomicIbE8exchangeEbSt12memory_order"
.LASF692:
	.string	"_ZNK13RampGenerator15getAccelerationEv"
.LASF760:
	.string	"forward"
.LASF712:
	.string	"_ZN13RampGenerator14getNextCommandEPK11queue_end_sP11NextCommand"
.LASF727:
	.string	"char8_t"
.LASF722:
	.string	"tmc_at_state_t"
.LASF464:
	.string	"getCurrentAcceleration"
.LASF565:
	.string	"_ZN16FastAccelStepper17usesAutoEnablePinEh"
.LASF674:
	.string	"RampGenerator"
.LASF795:
	.string	"axis_stepper"
.LASF455:
	.string	"_ZNK16FastAccelStepper17getSpeedInMilliHzEv"
.LASF378:
	.string	"_ZNK22FastAccelStepperEngine10_task_rateEv"
.LASF568:
	.string	"handleExternalDirectionPin"
.LASF791:
	.string	"_Z17tmc_calibrate_at26axis_tmhPh"
.LASF556:
	.string	"updateAutoDisable"
.LASF86:
	.string	"fetch_sub"
.LASF60:
	.string	"_ZNVSt13__atomic_baseIbE5storeEbSt12memory_order"
.LASF23:
	.string	"_ZNVSt13__atomic_baseIbEaSERKS0_"
.LASF398:
	.string	"setDirectionPin"
.LASF772:
	.string	"stepper_emergency_stop"
.LASF552:
	.string	"performOneStep"
.LASF41:
	.string	"_ZNVSt13__atomic_baseIbEpLEb"
.LASF676:
	.string	"acceleration"
.LASF773:
	.string	"_Z22stepper_emergency_stopv"
.LASF149:
	.string	"__uint64_t"
.LASF357:
	.string	"actual_ticks_s"
.LASF283:
	.string	"getenv"
.LASF660:
	.string	"ramp_state"
.LASF472:
	.string	"move"
.LASF256:
	.string	"__memory_order_modifier"
.LASF146:
	.string	"long unsigned int"
.LASF45:
	.string	"operator&="
.LASF547:
	.string	"_ZN16FastAccelStepper20pulseCounterAttachedEv"
.LASF199:
	.string	"lldiv_t"
.LASF22:
	.string	"_ZNSt13__atomic_baseIbEaSERKS0_"
.LASF550:
	.string	"driverTypeString"
.LASF266:
	.string	"dir_pin"
.LASF276:
	.string	"belt_ratio"
.LASF251:
	.string	"TMC_VSENSE"
.LASF806:
	.string	"_Z24axis_motor_steps_per_rev6axis_t"
.LASF486:
	.string	"backwardStep"
.LASF449:
	.string	"_ZN16FastAccelStepper17setSpeedInMilliHzEm"
.LASF785:
	.string	"target"
.LASF798:
	.string	"toString"
.LASF155:
	.string	"__uint_least32_t"
.LASF485:
	.string	"_ZN16FastAccelStepper11forwardStepEb"
.LASF372:
	.string	"_ZN22FastAccelStepperEngine12i2sMuxGetBitEh"
.LASF755:
	.string	"_Z22stepper_slew_speed_mhz6axis_t"
.LASF513:
	.string	"_ZNK16FastAccelStepper12isQueueEmptyEv"
.LASF448:
	.string	"setSpeedInMilliHz"
.LASF182:
	.string	"int_least64_t"
.LASF346:
	.string	"MoveTimedResultCode"
.LASF742:
	.string	"this"
.LASF729:
	.string	"char32_t"
.LASF236:
	.string	"GPIO_NUM_37"
.LASF111:
	.string	"_ZNVKSt6atomicIbEcvbEv"
.LASF416:
	.string	"enableOutputs"
.LASF417:
	.string	"_ZN16FastAccelStepper13enableOutputsEv"
.LASF490:
	.string	"stopMove"
.LASF507:
	.string	"_ZN16FastAccelStepper26setForwardPlanningTimeInMsEh"
.LASF678:
	.string	"_ZN13RampGenerator4initEv"
.LASF66:
	.string	"_ZNVSt13__atomic_baseIbE8exchangeEbSt12memory_order"
.LASF521:
	.string	"_ZNK16FastAccelStepper15hasTicksInQueueEm"
.LASF249:
	.string	"gpio_num_t"
.LASF35:
	.string	"_ZNSt13__atomic_baseIbEppEv"
.LASF53:
	.string	"_ZNVSt13__atomic_baseIbEeOEb"
.LASF776:
	.string	"__for_range"
.LASF685:
	.string	"_ZNK13RampGenerator15getSpeedInTicksEv"
.LASF271:
	.string	"mres"
.LASF756:
	.string	"stepper_stop"
.LASF255:
	.string	"TMC_FULL_SCALE_MA"
.LASF71:
	.string	"_ZNVSt13__atomic_baseIbE21compare_exchange_weakERbbSt12memory_order"
.LASF364:
	.string	"DONT_CARE"
.LASF687:
	.string	"_ZN13RampGenerator13divForMilliHzEm"
.LASF479:
	.string	"_ZNK16FastAccelStepper21isRunningContinuouslyEv"
.LASF354:
	.string	"ticks"
.LASF757:
	.string	"_Z12stepper_stop6axis_t"
.LASF160:
	.string	"__intptr_t"
.LASF501:
	.string	"_ZN16FastAccelStepper13takeStopCauseEv"
.LASF657:
	.string	"_ZN9ramp_ro_s14setKeepRunningEv"
.LASF695:
	.string	"_ZNK13RampGenerator22getCurrentAccelerationEv"
.LASF353:
	.string	"stepper_command_s"
.LASF532:
	.string	"rampState"
.LASF327:
	.string	"StepperStopCause"
.LASF428:
	.string	"setCurrentPosition"
.LASF349:
	.string	"ErrorMoveTooLarge"
.LASF429:
	.string	"_ZN16FastAccelStepper18setCurrentPositionEl"
.LASF202:
	.string	"GPIO_NUM_NC"
.LASF800:
	.string	"axis_sidereal_mhz"
.LASF89:
	.string	"fetch_and"
.LASF148:
	.string	"long long int"
.LASF796:
	.string	"__mod"
.LASF476:
	.string	"keepRunning"
.LASF510:
	.string	"addQueueEntry"
.LASF332:
	.string	"AqeResultCode"
.LASF48:
	.string	"operator|="
.LASF597:
	.string	"log2_accel"
.LASF240:
	.string	"GPIO_NUM_41"
.LASF76:
	.string	"_ZNVSt13__atomic_baseIbE23compare_exchange_strongERbbSt12memory_order"
.LASF743:
	.string	"stepper_is_running"
.LASF245:
	.string	"GPIO_NUM_46"
.LASF253:
	.string	"TMC_R_SENSE_MOHM"
.LASF647:
	.string	"_ZN9ramp_ro_s13immediateStopEv"
.LASF585:
	.string	"_auto_disable_delay_counter"
.LASF602:
	.string	"valid_speed"
.LASF511:
	.string	"_ZN16FastAccelStepper13addQueueEntryEPK17stepper_command_sb"
.LASF465:
	.string	"_ZNK16FastAccelStepper22getCurrentAccelerationEv"
.LASF51:
	.string	"operator^="
.LASF180:
	.string	"int_least32_t"
.LASF288:
	.string	"mbtowc"
.LASF618:
	.string	"_ZN17ramp_parameters_s15setAccelerationEl"
.LASF70:
	.string	"_ZNSt13__atomic_baseIbE21compare_exchange_weakERbbSt12memory_order"
.LASF387:
	.string	"_ZN22FastAccelStepperEngine17synchronizedStartEPP16FastAccelStepperh"
.LASF374:
	.string	"_ZN22FastAccelStepperEngine19stepperConnectToPinEh9FasDriver"
.LASF764:
	.string	"_Z22stepper_track_siderealv"
.LASF339:
	.string	"ErrorTicksTooLow"
.LASF753:
	.string	"abs_mhz"
.LASF789:
	.string	"MOTOR_REV"
.LASF201:
	.string	"esp_err_t"
.LASF489:
	.string	"_ZN16FastAccelStepper18moveByAccelerationElb"
.LASF173:
	.string	"uintmax_t"
.LASF214:
	.string	"GPIO_NUM_11"
.LASF215:
	.string	"GPIO_NUM_12"
.LASF216:
	.string	"GPIO_NUM_13"
.LASF217:
	.string	"GPIO_NUM_14"
.LASF218:
	.string	"GPIO_NUM_15"
.LASF219:
	.string	"GPIO_NUM_16"
.LASF220:
	.string	"GPIO_NUM_17"
.LASF298:
	.string	"atoll"
.LASF222:
	.string	"GPIO_NUM_19"
.LASF431:
	.string	"_ZNK16FastAccelStepper9isRunningEv"
.LASF92:
	.string	"fetch_or"
.LASF495:
	.string	"_ZNK16FastAccelStepper11stepsToStopEv"
.LASF73:
	.string	"_ZNSt13__atomic_baseIbE23compare_exchange_strongERbbSt12memory_orderS2_"
.LASF34:
	.string	"_ZNVSt13__atomic_baseIbEmmEi"
.LASF379:
	.string	"_delay_ms"
.LASF592:
	.string	"log2_value_t"
.LASF731:
	.string	"_Float64"
.LASF717:
	.string	"_ZNK13RampGenerator23getCurrentPeriodInTicksEv"
.LASF304:
	.string	"10gpio_num_t"
.LASF342:
	.string	"MoveResultCode"
.LASF52:
	.string	"_ZNSt13__atomic_baseIbEeOEb"
.LASF422:
	.string	"setDelayToEnable"
.LASF77:
	.string	"wait"
.LASF200:
	.string	"__compar_fn_t"
.LASF438:
	.string	"getMaxSpeedInMilliHz"
.LASF801:
	.string	"_Z17axis_sidereal_mhz6axis_t"
.LASF362:
	.string	"I2S_DIRECT"
.LASF191:
	.string	"uint_fast64_t"
.LASF807:
	.ascii	"GNU C++26 15.2.0 -ftls-model=local-exec -mdynconfig=xtensa_e"
	.ascii	"sp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gn"
	.string	"u++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec"
.LASF382:
	.string	"setDebugLed"
.LASF395:
	.string	"_ZN16FastAccelStepper4initEP22FastAccelStepperEnginehh"
.LASF686:
	.string	"divForMilliHz"
.LASF551:
	.string	"_ZNK16FastAccelStepper16driverTypeStringEv"
.LASF484:
	.string	"forwardStep"
.LASF272:
	.string	"shaft"
.LASF1:
	.string	"unsigned int"
.LASF223:
	.string	"GPIO_NUM_20"
.LASF224:
	.string	"GPIO_NUM_21"
.LASF225:
	.string	"GPIO_NUM_26"
.LASF226:
	.string	"GPIO_NUM_27"
.LASF227:
	.string	"GPIO_NUM_28"
.LASF228:
	.string	"GPIO_NUM_29"
.LASF322:
	.string	"opts"
.LASF174:
	.string	"intptr_t"
.LASF289:
	.string	"qsort"
.LASF7:
	.string	"consume"
.LASF11:
	.string	"seq_cst"
.LASF573:
	.string	"_ZN16FastAccelStepper17setEnablePinStateEhh"
.LASF109:
	.string	"operator bool"
.LASF747:
	.string	"position"
.LASF787:
	.string	"stepper_test"
.LASF108:
	.string	"_ZNVSt6atomicIbEaSEb"
.LASF546:
	.string	"pulseCounterAttached"
.LASF626:
	.string	"cubic"
.LASF421:
	.string	"_ZN16FastAccelStepper13setAutoEnableEb"
.LASF627:
	.string	"_ZN13ramp_config_s4initEv"
.LASF295:
	.string	"wcstombs"
.LASF525:
	.string	"_ZNK16FastAccelStepper33getPositionAfterCommandsCompletedEv"
.LASF466:
	.string	"setLinearAcceleration"
.LASF768:
	.string	"stepper_is_blocked"
.LASF13:
	.string	"__memory_order_modifier_mask"
.LASF69:
	.string	"_ZNVSt13__atomic_baseIbE21compare_exchange_weakERbbSt12memory_orderS2_"
.LASF308:
	.string	"ESP_LOG_WARN"
.LASF6:
	.string	"relaxed"
.LASF345:
	.string	"ErrorAccelerationIsUndefined"
.LASF509:
	.string	"_ZN16FastAccelStepper9moveTimedEsmPmbb"
.LASF803:
	.string	"axis_steps_per_rev"
.LASF459:
	.string	"_ZNK16FastAccelStepper24getCurrentSpeedInMilliHzEb"
.LASF186:
	.string	"int_fast16_t"
.LASF229:
	.string	"GPIO_NUM_30"
.LASF230:
	.string	"GPIO_NUM_31"
.LASF231:
	.string	"GPIO_NUM_32"
.LASF232:
	.string	"GPIO_NUM_33"
.LASF233:
	.string	"GPIO_NUM_34"
.LASF234:
	.string	"GPIO_NUM_35"
.LASF235:
	.string	"GPIO_NUM_36"
.LASF688:
	.string	"divForHz"
.LASF237:
	.string	"GPIO_NUM_38"
.LASF238:
	.string	"GPIO_NUM_39"
.LASF534:
	.string	"isRampGeneratorActive"
.LASF314:
	.string	"16esp_log_config_t"
.LASF25:
	.string	"_ZNKSt13__atomic_baseIbEcvbEv"
.LASF503:
	.string	"_ZNK16FastAccelStepper12getStopCauseEv"
.LASF312:
	.string	"ESP_LOG_MAX"
.LASF537:
	.string	"_ZN16FastAccelStepper13detachFromPinEv"
.LASF391:
	.string	"_stepper"
.LASF334:
	.string	"DirPinIsBusy"
.LASF114:
	.string	"_ZNSt6atomicIbEC4Eb"
.LASF797:
	.string	"step_s_s"
.LASF636:
	.string	"target_pos"
.LASF615:
	.string	"setCubicAccelerationSteps"
.LASF478:
	.string	"isRunningContinuously"
.LASF328:
	.string	"None"
.LASF58:
	.string	"_ZNSt13__atomic_baseIbEC4Eb"
.LASF133:
	.string	"__gnu_cxx"
.LASF600:
	.string	"recalc_ramp_steps"
.LASF239:
	.string	"GPIO_NUM_40"
.LASF123:
	.string	"_ZNSt6atomicIbE21compare_exchange_weakERbbSt12memory_order"
.LASF241:
	.string	"GPIO_NUM_42"
.LASF242:
	.string	"GPIO_NUM_43"
.LASF243:
	.string	"GPIO_NUM_44"
.LASF244:
	.string	"GPIO_NUM_45"
.LASF250:
	.string	"bool"
.LASF246:
	.string	"GPIO_NUM_47"
.LASF247:
	.string	"GPIO_NUM_48"
.LASF177:
	.string	"uint_least8_t"
.LASF18:
	.string	"_ZNSt13__atomic_baseIbEC4Ev"
.LASF176:
	.string	"int_least8_t"
.LASF682:
	.string	"_ZN13RampGenerator21advanceTargetPositionEl"
.LASF300:
	.string	"strtoull"
.LASF463:
	.string	"_ZNK16FastAccelStepper15getAccelerationEv"
.LASF586:
	.string	"_forward_planning_in_ticks"
.LASF690:
	.string	"_ZNK13RampGenerator17getSpeedInMilliHzEv"
.LASF383:
	.string	"_ZN22FastAccelStepperEngine11setDebugLedEh"
.LASF642:
	.string	"_ZNK9ramp_ro_s14targetPositionEv"
.LASF172:
	.string	"intmax_t"
.LASF737:
	.string	"_Z17tmc_read_at_state6axis_tP14tmc_at_state_t"
.LASF163:
	.string	"long double"
.LASF248:
	.string	"GPIO_NUM_MAX"
.LASF134:
	.string	"__cxx11"
.LASF104:
	.string	"_ZNSt6atomicIbEC4ERKS0_"
.LASF680:
	.string	"_ZN13RampGenerator17setTargetPositionEl"
.LASF368:
	.string	"_ZN22FastAccelStepperEngine10initI2sMuxEhhh"
.LASF367:
	.string	"initI2sMux"
.LASF508:
	.string	"moveTimed"
.LASF799:
	.string	"code"
.LASF414:
	.string	"getEnablePinLowActive"
.LASF31:
	.string	"_ZNVSt13__atomic_baseIbEppEi"
.LASF100:
	.string	"atomic"
.LASF493:
	.string	"_ZNK16FastAccelStepper10isStoppingEv"
.LASF582:
	.string	"_dir_change_delay_ticks"
.LASF188:
	.string	"int_fast32_t"
.LASF36:
	.string	"_ZNVSt13__atomic_baseIbEppEv"
.LASF130:
	.string	"_ZNSt6atomicIbE10notify_oneEv"
.LASF197:
	.string	"ldiv_t"
.LASF62:
	.string	"_ZNKSt13__atomic_baseIbE4loadESt12memory_order"
.LASF584:
	.string	"_off_delay_count"
.LASF164:
	.string	"int8_t"
.LASF30:
	.string	"_ZNSt13__atomic_baseIbEppEi"
.LASF91:
	.string	"_ZNVSt13__atomic_baseIbE9fetch_andEbSt12memory_order"
.LASF794:
	.string	"slew_speed_hz"
.LASF63:
	.string	"_ZNVKSt13__atomic_baseIbE4loadESt12memory_order"
.LASF24:
	.string	"operator std::__atomic_base<bool>::__int_type"
.LASF738:
	.string	"vTaskDelay"
.LASF282:
	.string	"bsearch"
.LASF338:
	.string	"DirChangePauseInjected"
.LASF754:
	.string	"stepper_slew_speed_mhz"
.LASF488:
	.string	"moveByAcceleration"
.LASF741:
	.string	"esp_log_timestamp"
.LASF137:
	.string	"__int8_t"
.LASF336:
	.string	"DeviceNotReady"
.LASF702:
	.string	"_ZN13RampGenerator8startRunEb"
.LASF750:
	.string	"stepper_run_mhz"
.LASF517:
	.string	"_ZNK16FastAccelStepper14isQueueRunningEv"
.LASF673:
	.string	"command"
.LASF562:
	.string	"agreeWithAutoDisable"
.LASF115:
	.string	"_ZNSt6atomicIbE5storeEbSt12memory_order"
.LASF75:
	.string	"_ZNSt13__atomic_baseIbE23compare_exchange_strongERbbSt12memory_order"
.LASF167:
	.string	"uint16_t"
.LASF610:
	.string	"_ZN17ramp_parameters_s10setRunningEb"
.LASF725:
	.string	"ofs_auto"
.LASF94:
	.string	"_ZNVSt13__atomic_baseIbE8fetch_orEbSt12memory_order"
.LASF124:
	.string	"_ZNVSt6atomicIbE21compare_exchange_weakERbbSt12memory_order"
.LASF79:
	.string	"notify_one"
.LASF570:
	.string	"_queue"
.LASF399:
	.string	"_ZN16FastAccelStepper15setDirectionPinEhbt"
.LASF407:
	.string	"_ZNK16FastAccelStepper28getDirChangeBeforePauseCountEv"
.LASF441:
	.string	"_ZN16FastAccelStepper21setAbsoluteSpeedLimitEt"
.LASF512:
	.string	"isQueueEmpty"
.LASF709:
	.string	"_ZN13RampGenerator14setKeepRunningEv"
.LASF59:
	.string	"_ZNSt13__atomic_baseIbE5storeEbSt12memory_order"
.LASF275:
	.string	"worm_teeth"
.LASF152:
	.string	"__int_least16_t"
.LASF190:
	.string	"int_fast64_t"
.LASF662:
	.string	"pause_ticks_left"
.LASF366:
	.string	"_ZN22FastAccelStepperEngine4initEh"
.LASF633:
	.string	"_ZNK13ramp_config_s20calculate_ramp_stepsEm"
.LASF609:
	.string	"setRunning"
.LASF658:
	.string	"_ZNK9ramp_ro_s21isRunningContinuouslyEv"
.LASF74:
	.string	"_ZNVSt13__atomic_baseIbE23compare_exchange_strongERbbSt12memory_orderS2_"
.LASF614:
	.string	"_ZN17ramp_parameters_s25setTargetRelativePositionEl"
.LASF720:
	.string	"_startMove"
.LASF306:
	.string	"ESP_LOG_NONE"
.LASF325:
	.string	"TickType_t"
.LASF141:
	.string	"__uint16_t"
.LASF812:
	.string	"_M_i"
.LASF708:
	.string	"_ZN13RampGenerator8stopRampEv"
.LASF571:
	.string	"_ZNK16FastAccelStepper6_queueEv"
.LASF774:
	.string	"__for_begin"
.LASF631:
	.string	"_ZNK13ramp_config_s15calculate_ticksEm"
.LASF506:
	.string	"setForwardPlanningTimeInMs"
.LASF193:
	.string	"quot"
.LASF309:
	.string	"ESP_LOG_INFO"
.LASF696:
	.string	"hasValidConfig"
.LASF593:
	.string	"ramp_parameters_s"
.LASF390:
	.string	"_stepper_cnt"
.LASF80:
	.string	"_ZNSt13__atomic_baseIbE10notify_oneEv"
.LASF655:
	.string	"_ZNK9ramp_ro_s15isStopInitiatedEv"
.LASF554:
	.string	"fill_queue"
.LASF139:
	.string	"__int16_t"
.LASF185:
	.string	"uint_fast8_t"
.LASF355:
	.string	"steps"
.LASF331:
	.string	"ForceStopAndNewPosition"
.LASF375:
	.string	"task_rate"
.LASF65:
	.string	"_ZNSt13__atomic_baseIbE8exchangeEbSt12memory_order"
.LASF638:
	.string	"force_immediate_stop"
.LASF392:
	.string	"_externalCallForPin"
.LASF196:
	.string	"6ldiv_t"
.LASF704:
	.string	"_ZN13RampGenerator12initiateStopEv"
.LASF110:
	.string	"_ZNKSt6atomicIbEcvbEv"
.LASF161:
	.string	"__uintptr_t"
.LASF344:
	.string	"ErrorSpeedIsUndefined"
.LASF385:
	.string	"_ZN22FastAccelStepperEngine14manageSteppersEv"
.LASF365:
	.string	"init"
.LASF716:
	.string	"getCurrentPeriodInTicks"
.LASF577:
	.string	"_dirHighCountsUp"
.LASF49:
	.string	"_ZNSt13__atomic_baseIbEoREb"
.LASF118:
	.string	"_ZNVKSt6atomicIbE4loadESt12memory_order"
.LASF672:
	.string	"_M_base"
.LASF78:
	.string	"_ZNKSt13__atomic_baseIbE4waitEbSt12memory_order"
.LASF679:
	.string	"_ZNK13RampGenerator14targetPositionEv"
.LASF765:
	.string	"SIDEREAL_SPEED_MHZ"
.LASF689:
	.string	"_ZN13RampGenerator8divForHzEm"
.LASF675:
	.string	"_parameters"
.LASF3:
	.string	"__swappable_details"
.LASF103:
	.string	"_ZNSt6atomicIbED4Ev"
.LASF639:
	.string	"incomplete_immediate_stop"
.LASF697:
	.string	"_ZNK13RampGenerator14hasValidConfigEv"
.LASF777:
	.string	"tmc_calibrate_at2"
.LASF515:
	.string	"_ZNK16FastAccelStepper11isQueueFullEv"
.LASF451:
	.string	"_ZNK16FastAccelStepper12getSpeedInUsEv"
.LASF574:
	.string	"_engine"
.LASF644:
	.string	"advanceTargetPositionWithinInterruptDisabledScope"
.LASF643:
	.string	"_ZN9ramp_ro_s17setTargetPositionEl"
.LASF268:
	.string	"ihold"
.LASF262:
	.string	"name"
.LASF454:
	.string	"getSpeedInMilliHz"
.LASF616:
	.string	"_ZN17ramp_parameters_s25setCubicAccelerationStepsEm"
.LASF767:
	.string	"_Z15stepper_move_to6axis_tl"
.LASF291:
	.string	"strtod"
.LASF301:
	.string	"strtof"
.LASF713:
	.string	"afterCommandEnqueued"
.LASF292:
	.string	"strtol"
.LASF548:
	.string	"driverType"
.LASF68:
	.string	"_ZNSt13__atomic_baseIbE21compare_exchange_weakERbbSt12memory_orderS2_"
.LASF337:
	.string	"DirPin2msPauseAdded"
.LASF406:
	.string	"getDirChangeBeforePauseCount"
.LASF418:
	.string	"disableOutputs"
.LASF43:
	.string	"_ZNSt13__atomic_baseIbEmIEb"
.LASF140:
	.string	"short int"
.LASF721:
	.string	"_ZN13RampGenerator10_startMoveEb"
.LASF81:
	.string	"notify_all"
.LASF810:
	.string	"_S_alignment"
.LASF171:
	.string	"uint64_t"
.LASF55:
	.string	"_ZNKSt13__atomic_baseIbE12is_lock_freeEv"
.LASF730:
	.string	"_Float32"
.LASF400:
	.string	"getDirectionPin"
.LASF497:
	.string	"_ZN16FastAccelStepper9forceStopEv"
.LASF369:
	.string	"i2sMuxSetBit"
.LASF107:
	.string	"_ZNSt6atomicIbEaSEb"
.LASF29:
	.string	"operator++"
.LASF166:
	.string	"int16_t"
.LASF277:
	.string	"atexit"
.LASF518:
	.string	"ticksInQueue"
.LASF388:
	.string	"isDirPinBusy"
.LASF487:
	.string	"_ZN16FastAccelStepper12backwardStepEb"
.LASF156:
	.string	"__int_least64_t"
.LASF39:
	.string	"operator+="
.LASF264:
	.string	"en_pin"
.LASF296:
	.string	"wctomb"
.LASF763:
	.string	"stepper_track_sidereal"
.LASF781:
	.string	"leg_steps"
.LASF710:
	.string	"_ZNK13RampGenerator21isRunningContinuouslyEv"
.LASF330:
	.string	"ForceStop"
.LASF159:
	.string	"__uintmax_t"
.LASF648:
	.string	"isImmediateStopInitiated"
.LASF734:
	.string	"STEPPER_AXES"
.LASF396:
	.string	"getStepPin"
.LASF373:
	.string	"stepperConnectToPin"
.LASF460:
	.string	"setAcceleration"
.LASF320:
	.string	"binary_mode"
.LASF386:
	.string	"synchronizedStart"
.LASF316:
	.string	"constrained_env"
.LASF778:
	.string	"speed_hz"
.LASF87:
	.string	"_ZNSt13__atomic_baseIbE9fetch_subEbSt12memory_order"
.LASF805:
	.string	"axis_motor_steps_per_rev"
.LASF415:
	.string	"_ZNK16FastAccelStepper21getEnablePinLowActiveEv"
.LASF290:
	.string	"srand"
.LASF136:
	.string	"signed char"
.LASF4:
	.string	"__swappable_with_details"
.LASF310:
	.string	"ESP_LOG_DEBUG"
.LASF671:
	.string	"NextCommand"
.LASF440:
	.string	"setAbsoluteSpeedLimit"
.LASF540:
	.string	"attachToPulseCounter"
.LASF663:
	.string	"curr_ticks"
.LASF318:
	.string	"dis_color"
.LASF599:
	.string	"any_change"
.LASF530:
	.string	"setPositionAfterCommandsCompleted"
.LASF498:
	.string	"forceStopAndNewPosition"
.LASF413:
	.string	"_ZNK16FastAccelStepper22getEnablePinHighActiveEv"
.LASF403:
	.string	"_ZNK16FastAccelStepper24directionPinHighCountsUpEv"
.LASF654:
	.string	"isStopInitiated"
.LASF700:
	.string	"_ZN13RampGenerator6moveToElPK11queue_end_s"
.LASF381:
	.string	"_ZN22FastAccelStepperEngine21setExternalCallForPinEPFbhhE"
.LASF427:
	.string	"_ZNK16FastAccelStepper18getCurrentPositionEv"
.LASF113:
	.string	"_ZNVKSt6atomicIbE12is_lock_freeEv"
.LASF641:
	.string	"targetPosition"
.LASF653:
	.string	"_ZN9ramp_ro_s12initiateStopEv"
.LASF661:
	.string	"performed_ramp_up_steps"
.LASF533:
	.string	"_ZNK16FastAccelStepper9rampStateEv"
.LASF646:
	.string	"immediateStop"
.LASF707:
	.string	"_ZNK13RampGenerator11stepsToStopEv"
.LASF32:
	.string	"operator--"
.LASF567:
	.string	"_ZNK16FastAccelStepper22getCurrentSpeedInTicksEP14actual_ticks_sb"
.LASF545:
	.string	"_ZN16FastAccelStepper17clearPulseCounterEv"
.LASF419:
	.string	"_ZN16FastAccelStepper14disableOutputsEv"
.LASF630:
	.string	"calculate_ticks"
.LASF759:
	.string	"_Z16stepper_slew_run6axis_tb"
.LASF42:
	.string	"operator-="
.LASF818:
	.string	"motion_start"
.LASF595:
	.string	"min_travel_ticks"
.LASF187:
	.string	"uint_fast16_t"
.LASF811:
	.string	"__int_type"
.LASF652:
	.string	"initiateStop"
.LASF9:
	.string	"release"
.LASF436:
	.string	"getMaxSpeedInHz"
.LASF269:
	.string	"irun_hot"
.LASF604:
	.string	"keep_running"
.LASF321:
	.string	"reserved"
.LASF469:
	.string	"_ZN16FastAccelStepper12setJumpStartEm"
.LASF88:
	.string	"_ZNVSt13__atomic_baseIbE9fetch_subEbSt12memory_order"
.LASF412:
	.string	"getEnablePinHighActive"
.LASF769:
	.string	"_Z18stepper_is_blockedv"
.LASF483:
	.string	"_ZN16FastAccelStepper11runBackwardEv"
.LASF313:
	.string	"esp_log_level_t"
.LASF724:
	.string	"scale_auto"
.LASF142:
	.string	"short unsigned int"
.LASF467:
	.string	"_ZN16FastAccelStepper21setLinearAccelerationEm"
.LASF745:
	.string	"_Z18stepper_is_running6axis_t"
.LASF536:
	.string	"detachFromPin"
.LASF96:
	.string	"_ZNSt13__atomic_baseIbE9fetch_xorEbSt12memory_order"
.LASF620:
	.string	"checkValidConfig"
.LASF446:
	.string	"setSpeedInHz"
.LASF263:
	.string	"uart_addr"
.LASF329:
	.string	"StopMove"
.LASF169:
	.string	"uint32_t"
.LASF360:
	.string	"FasDriver"
.LASF5:
	.string	"__detail"
.LASF699:
	.string	"_ZN13RampGenerator4moveEl"
.LASF559:
	.string	"_ZN16FastAccelStepper32blockingWaitForForceStopCompleteEv"
.LASF668:
	.string	"startRampIfNotRunning"
.LASF804:
	.string	"_Z18axis_steps_per_rev6axis_t"
.LASF404:
	.string	"getDirChangeBeforeTicks"
.LASF99:
	.string	"atomic<bool>"
.LASF719:
	.string	"_ZNK13RampGenerator20getCurrentPeriodInUsEv"
.LASF649:
	.string	"_ZNK9ramp_ro_s24isImmediateStopInitiatedEv"
.LASF143:
	.string	"__int32_t"
.LASF564:
	.string	"usesAutoEnablePin"
.LASF170:
	.string	"int64_t"
.LASF726:
	.string	"grad_auto"
.LASF444:
	.string	"setSpeedInTicks"
.LASF343:
	.string	"ErrorNoDirectionPin"
.LASF397:
	.string	"_ZNK16FastAccelStepper10getStepPinEv"
.LASF613:
	.string	"setTargetRelativePosition"
.LASF326:
	.string	"memory_order"
.LASF462:
	.string	"getAcceleration"
.LASF749:
	.string	"__esp_log_config"
.LASF270:
	.string	"pwm_grad"
.LASF129:
	.string	"_ZNKSt6atomicIbE4waitEbSt12memory_order"
.LASF158:
	.string	"__intmax_t"
.LASF252:
	.string	"TMC_V_FS_MV"
.LASF560:
	.string	"needAutoDisable"
.LASF619:
	.string	"_ZN17ramp_parameters_s12setJumpStartEm"
.LASF175:
	.string	"uintptr_t"
.LASF267:
	.string	"irun"
.LASF274:
	.string	"microsteps"
.LASF736:
	.string	"tmc_read_at_state"
.LASF323:
	.string	"data"
.LASF324:
	.string	"esp_log_config_t"
.LASF788:
	.string	"_Z12stepper_test6axis_t"
.LASF389:
	.string	"_ZN22FastAccelStepperEngine12isDirPinBusyEhh"
.LASF447:
	.string	"_ZN16FastAccelStepper12setSpeedInHzEm"
.LASF405:
	.string	"_ZNK16FastAccelStepper23getDirChangeBeforeTicksEv"
.LASF519:
	.string	"_ZNK16FastAccelStepper12ticksInQueueEv"
.LASF576:
	.string	"_dirPin"
.LASF287:
	.string	"wchar_t"
.LASF590:
	.string	"ExtDirPendingState"
.LASF572:
	.string	"setEnablePinState"
.LASF423:
	.string	"_ZN16FastAccelStepper16setDelayToEnableEm"
.LASF735:
	.string	"motion_blocked"
.LASF16:
	.string	"__atomic_base"
.LASF650:
	.string	"clearImmediateStop"
.LASF97:
	.string	"_ZNVSt13__atomic_baseIbE9fetch_xorEbSt12memory_order"
	.global	__udivdi3
	.ident	"GCC: (crosstool-NG esp-15.2.0_20251204) 15.2.0"
