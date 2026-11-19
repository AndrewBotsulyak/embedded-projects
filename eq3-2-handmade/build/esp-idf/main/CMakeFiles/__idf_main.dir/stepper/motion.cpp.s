	.file	"motion.cpp"
# GNU C++26 (crosstool-NG esp-15.2.0_20251204) version 15.2.0 (xtensa-esp-elf)
#	compiled by GNU C version Debian Clang 19.1.7 (3+b1), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -ftls-model=local-exec -mdynconfig=xtensa_esp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gnu++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec
	.text
.Ltext0:
	.file 1 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp"
	.section	.text._ZL12clear_manualv,"ax",@progbits
	.literal_position
	.literal .LC0, _ZL6manual
	.align	4
	.type	_ZL12clear_manualv, @function
_ZL12clear_manualv:
.LFB765:
	.loc 1 97 28 view -0
	entry	sp, 32	#
.LCFI0:
	.loc 1 98 5 view .LVU1
.LVL0:
.LBB100:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:98:     for (int i = 0; i < AXIS_COUNT; i++) {
	.loc 1 98 14 is_stmt 0 view .LVU2
	movi.n	a8, 0	# i,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:98:     for (int i = 0; i < AXIS_COUNT; i++) {
	.loc 1 98 5 view .LVU3
	j	.L2		#
.LVL1:
.L3:
	.loc 1 99 9 is_stmt 1 view .LVU4
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:99:         manual[i].moving = false;
	.loc 1 99 26 is_stmt 0 view .LVU5
	l32r	a9, .LC0	#, tmp43
	addx2	a9, a8, a9	#, tmp45, i, tmp43
	movi.n	a10, 0	# tmp46,
	s8i	a10, a9, 0	# manual[i_1].moving, tmp46
	.loc 1 98 5 is_stmt 1 discriminator 3 view .LVU6
	addi.n	a8, a8, 1	# i, i,
.LVL2:
.L2:
	.loc 1 98 23 discriminator 1 view .LVU7
	blti	a8, 2, .L3	# i,,
.LBE100:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:101: }
	.loc 1 101 1 is_stmt 0 view .LVU8
	retw.n	
.LFE765:
	.size	_ZL12clear_manualv, .-_ZL12clear_manualv
	.section	.rodata._ZL9set_state14motion_state_t.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"motion"
	.align	4
.LC5:
	.base64	"SSAoJWx1KSAlczog0KHQvtGB0YLQvtGP0L3QuNC1OiAlcyDihpIgJXMKAA=="
	.section	.text._ZL9set_state14motion_state_t,"ax",@progbits
	.literal_position
	.literal .LC1, _ZL5state
	.literal .LC2, _ZL10STATE_NAME
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.type	_ZL9set_state14motion_state_t, @function
_ZL9set_state14motion_state_t:
.LVL3:
.LFB761:
	.loc 1 41 41 is_stmt 1 view -0
	.loc 1 41 41 is_stmt 0 view .LVU10
	entry	sp, 64	#
.LCFI1:
	.loc 1 42 5 is_stmt 1 view .LVU11
.LVL4:
.LBB101:
.LBI101:
	.file 2 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic"
	.loc 2 252 7 view .LVU12
.LBB102:
.LBI102:
	.loc 2 304 7 view .LVU13
.LBB103:
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 is_stmt 0 view .LVU14
	memw	
	l32r	a8, .LC1	#, tmp52
	memw
	l32i.n	a8, a8, 0	#, _11
	memw	
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 discriminator 1 view .LVU15
	s32i.n	a8, sp, 16	# MEM[(motion_state_t *)_20], _11
.LVL5:
	.loc 2 308 15 discriminator 1 view .LVU16
.LBE103:
.LBE102:
.LBE101:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:42:     if (state == s) return;
	.loc 1 42 5 discriminator 1 view .LVU17
	beq	a8, a2, .L4	# _11, s,
	.loc 1 43 5 is_stmt 1 view .LVU18
	.loc 1 43 10 view .LVU19
	.loc 1 43 15 view .LVU20
	.loc 1 43 47 view .LVU21
	.loc 1 43 52 view .LVU22
	.loc 1 43 127 discriminator 2 view .LVU23
	.loc 1 43 127 discriminator 7 view .LVU24
	.loc 1 43 127 discriminator 12 view .LVU25
.LBB104:
	.loc 1 43 129 discriminator 17 view .LVU26
.LBB105:
	.loc 1 43 154 discriminator 17 view .LVU27
	.loc 1 43 189 discriminator 17 view .LVU28
	.loc 1 43 229 view .LVU29
.LBE105:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:43:     ESP_LOGI(TAG, "Состояние: %s → %s", STATE_NAME[state], STATE_NAME[s]);
	.loc 1 43 136 is_stmt 0 discriminator 17 view .LVU30
	call8	esp_log_timestamp		#
.LVL6:
.LBB106:
.LBI106:
	.loc 2 252 7 is_stmt 1 view .LVU31
.LBB107:
.LBI107:
	.loc 2 304 7 view .LVU32
.LBB108:
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 is_stmt 0 view .LVU33
	memw	
	l32r	a8, .LC1	#, tmp67
	memw
	l32i.n	a8, a8, 0	#, _2
	memw	
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 discriminator 1 view .LVU34
	s32i.n	a8, sp, 16	# MEM[(motion_state_t *)_20], _2
.LVL7:
	.loc 2 308 15 discriminator 1 view .LVU35
.LBE108:
.LBE107:
.LBE106:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:43:     ESP_LOGI(TAG, "Состояние: %s → %s", STATE_NAME[state], STATE_NAME[s]);
	.loc 1 43 101 discriminator 22 view .LVU36
	l32r	a9, .LC2	#, tmp54
	addx4	a8, a8, a9	#, tmp56, _2, tmp54
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:43:     ESP_LOGI(TAG, "Состояние: %s → %s", STATE_NAME[state], STATE_NAME[s]);
	.loc 1 43 116 discriminator 22 view .LVU37
	addx4	a9, a2, a9	#, tmp59, s, tmp54
	l32i.n	a9, a9, 0	# STATE_NAME[s$132_23], _24
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:43:     ESP_LOGI(TAG, "Состояние: %s → %s", STATE_NAME[state], STATE_NAME[s]);
	.loc 1 43 136 discriminator 22 view .LVU38
	l32r	a11, .LC4	#, tmp60
	s32i.n	a9, sp, 0	#, _24
	l32i.n	a15, a8, 0	# STATE_NAME[_21],
	mov.n	a14, a11	#, tmp60
	mov.n	a13, a10	#, _19
	l32r	a12, .LC6	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL8:
	.loc 1 43 47 is_stmt 1 view .LVU39
	.loc 1 43 10 view .LVU40
.LBE104:
	.loc 1 43 5 view .LVU41
	.loc 1 44 5 view .LVU42
.LBB109:
.LBI109:
	.loc 2 259 7 view .LVU43
.LBB110:
.LBB111:
.LBI111:
	.loc 2 288 7 view .LVU44
.LBB112:
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:290: 	__atomic_store(std::__addressof(_M_i),
	.loc 2 290 16 is_stmt 0 view .LVU45
	memw	
	l32r	a8, .LC1	#, tmp68
	memw
	s32i.n	a2, a8, 0	#, s
	memw	
.LVL9:
.L4:
	.loc 2 290 16 view .LVU46
.LBE112:
.LBE111:
.LBE110:
.LBE109:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:45: }
	.loc 1 45 1 view .LVU47
	retw.n	
.LFE761:
	.size	_ZL9set_state14motion_state_t, .-_ZL9set_state14motion_state_t
	.section	.text._Z18axis_steps_per_rev6axis_t,"axG",@progbits,_Z18axis_steps_per_rev6axis_t,comdat
	.literal_position
	.literal .LC7, AXES
	.align	4
	.weak	_Z18axis_steps_per_rev6axis_t
	.type	_Z18axis_steps_per_rev6axis_t, @function
_Z18axis_steps_per_rev6axis_t:
.LVL10:
.LFB7:
	.file 3 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h"
	.loc 3 104 1 is_stmt 1 view -0
	.loc 3 104 1 is_stmt 0 view .LVU49
	entry	sp, 32	#
.LCFI2:
	.loc 3 105 5 is_stmt 1 view .LVU50
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:105:     return (uint64_t)AXES[a].full_steps * AXES[a].microsteps
	.loc 3 105 30 is_stmt 0 view .LVU51
	l32r	a13, .LC7	#, tmp55
	addx4	a9, a2, a2	#, tmp58, a, a
	addx2	a10, a9, a2	#, tmp60, tmp58, a
	addx4	a10, a10, a13	#, tmp62, tmp60, tmp55
	l32i.n	a8, a10, 28	# AXES[a$108_1].full_steps, _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:105:     return (uint64_t)AXES[a].full_steps * AXES[a].microsteps
	.loc 3 105 51 view .LVU52
	l32i.n	a12, a10, 32	# AXES[a$108_1].microsteps, AXES[a$108_1].microsteps
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:105:     return (uint64_t)AXES[a].full_steps * AXES[a].microsteps
	.loc 3 105 41 view .LVU53
	mull	a11, a8, a12	# tmp77, _2, AXES[a$108_1].microsteps
	muluh	a8, a8, a12	# _6, _2, AXES[a$108_1].microsteps
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:106:          * AXES[a].worm_teeth * AXES[a].belt_ratio;
	.loc 3 106 20 view .LVU54
	l32i.n	a10, a10, 36	# AXES[a$108_1].worm_teeth, AXES[a$108_1].worm_teeth
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:106:          * AXES[a].worm_teeth * AXES[a].belt_ratio;
	.loc 3 106 10 view .LVU55
	mull	a8, a8, a10	# tmp89, _6, AXES[a$108_1].worm_teeth
	mull	a12, a11, a10	# tmp92, tmp77, AXES[a$108_1].worm_teeth
	muluh	a11, a11, a10	# _9, tmp77, AXES[a$108_1].worm_teeth
	add.n	a8, a8, a11	# tmp93, tmp89, _9
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:106:          * AXES[a].worm_teeth * AXES[a].belt_ratio;
	.loc 3 106 41 view .LVU56
	addx2	a9, a9, a2	#, tmp100, tmp58, a
	addx4	a9, a9, a13	#, tmp102, tmp100, tmp55
	l32i.n	a2, a9, 40	# AXES[a$108_1].belt_ratio, AXES[a$108_1].belt_ratio
.LVL11:
	.loc 3 106 41 view .LVU57
	mull	a8, a8, a2	# tmp107, tmp93, AXES[a$108_1].belt_ratio
	muluh	a3, a2, a12	# _14, AXES[a$108_1].belt_ratio, tmp92
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:107: }
	.loc 3 107 1 view .LVU58
	mull	a2, a2, a12	#, AXES[a$108_1].belt_ratio, tmp92
	add.n	a3, a8, a3	#, tmp107, _14
	retw.n	
.LFE7:
	.size	_Z18axis_steps_per_rev6axis_t, .-_Z18axis_steps_per_rev6axis_t
	.section	.text._Z17axis_sidereal_mhz6axis_t,"axG",@progbits,_Z17axis_sidereal_mhz6axis_t,comdat
	.literal_position
	.literal .LC8, 10000000
	.literal .LC11, 430820452
	.literal .LC12, 861640905
	.align	4
	.weak	_Z17axis_sidereal_mhz6axis_t
	.type	_Z17axis_sidereal_mhz6axis_t, @function
_Z17axis_sidereal_mhz6axis_t:
.LVL12:
.LFB8:
	.loc 3 119 1 is_stmt 1 view -0
	.loc 3 119 1 is_stmt 0 view .LVU60
	entry	sp, 32	#
.LCFI3:
	mov.n	a10, a2	# a, a
	.loc 3 120 5 is_stmt 1 view .LVU61
.LVL13:
	.loc 3 121 5 view .LVU62
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:121:     return (uint32_t)((axis_steps_per_rev(a) * 10000000ULL + SIDEREAL_DAY_X10000 / 2)
	.loc 3 121 42 is_stmt 0 view .LVU63
	call8	_Z18axis_steps_per_rev6axis_t		#
.LVL14:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:121:     return (uint32_t)((axis_steps_per_rev(a) * 10000000ULL + SIDEREAL_DAY_X10000 / 2)
	.loc 3 121 46 discriminator 1 view .LVU64
	l32r	a12, .LC8	#, tmp49
	mull	a8, a11, a12	# tmp48, _1, tmp49
	mull	a9, a10, a12	# tmp54, _1, tmp49
	muluh	a10, a10, a12	# _2, _1, tmp49
	add.n	a8, a8, a10	# tmp55, tmp48, _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:121:     return (uint32_t)((axis_steps_per_rev(a) * 10000000ULL + SIDEREAL_DAY_X10000 / 2)
	.loc 3 121 60 discriminator 1 view .LVU65
	l32r	a12, .LC11	#, tmp69
	mov.n	a11, a8	# _3, tmp55
	add.n	a10, a9, a12	# _3, tmp54, tmp69
	bgeu	a10, a12, .L8	# _3, tmp69,
	addi.n	a11, a8, 1	# _3, tmp55,
.L8:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:122:                       / SIDEREAL_DAY_X10000);
	.loc 3 122 23 view .LVU66
	l32r	a12, .LC12	#,
	movi.n	a13, 0	#,
	call8	__udivdi3		#
.LVL15:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h:123: }
	.loc 3 123 1 view .LVU67
	mov.n	a2, a10	#, _4
.LVL16:
	.loc 3 123 1 view .LVU68
	retw.n	
.LFE8:
	.size	_Z17axis_sidereal_mhz6axis_t, .-_Z17axis_sidereal_mhz6axis_t
	.section	.text._ZL14rate_speed_mhz6axis_t,"ax",@progbits
	.literal_position
	.literal .LC13, _ZL4rate
	.align	4
	.type	_ZL14rate_speed_mhz6axis_t, @function
_ZL14rate_speed_mhz6axis_t:
.LVL17:
.LFB762:
	.loc 1 52 41 is_stmt 1 view -0
	.loc 1 52 41 is_stmt 0 view .LVU70
	entry	sp, 32	#
.LCFI4:
	.loc 1 53 5 is_stmt 1 view .LVU71
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:53:     const int32_t sidereal = (int32_t)axis_sidereal_mhz(a);
	.loc 1 53 56 is_stmt 0 view .LVU72
	mov.n	a10, a2	#, a
	call8	_Z17axis_sidereal_mhz6axis_t		#
.LVL18:
	.loc 1 54 5 is_stmt 1 view .LVU73
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:54:     switch (rate) {
	.loc 1 54 13 is_stmt 0 view .LVU74
	l32r	a8, .LC13	#, tmp48
	l32i.n	a8, a8, 0	# rate, rate$106_2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:54:     switch (rate) {
	.loc 1 54 5 view .LVU75
	beqi	a8, 1, .L10	# rate$106_2,,
	beqi	a8, 2, .L11	# rate$106_2,,
	bnez.n	a8, .L12	# rate$106_2,
	.loc 1 55 9 is_stmt 1 view .LVU76
	.loc 1 55 33 view .LVU77
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:55:         case MOTION_RATE_GUIDE:  return sidereal / 2;   // 0.5×
	.loc 1 55 51 is_stmt 0 view .LVU78
	extui	a8, a10, 31, 1	# tmp49, sidereal,
	add.n	a8, a8, a10	# tmp50, tmp49, sidereal
	srai	a2, a8, 1	# <retval>, tmp50,
.LVL19:
	.loc 1 55 51 view .LVU79
	j	.L9		#
.LVL20:
.L10:
	.loc 1 56 9 is_stmt 1 view .LVU80
	.loc 1 56 34 view .LVU81
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:56:         case MOTION_RATE_CENTER: return sidereal * 8;   // 8×
	.loc 1 56 52 is_stmt 0 view .LVU82
	slli	a2, a10, 3	# <retval>, sidereal,
.LVL21:
	.loc 1 56 52 view .LVU83
	j	.L9		#
.LVL22:
.L11:
	.loc 1 57 9 is_stmt 1 view .LVU84
	.loc 1 57 32 view .LVU85
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:57:         case MOTION_RATE_FIND:   return sidereal * 64;  // 64×
	.loc 1 57 50 is_stmt 0 view .LVU86
	slli	a2, a10, 6	# <retval>, sidereal,
.LVL23:
	.loc 1 57 50 view .LVU87
	j	.L9		#
.LVL24:
.L12:
	.loc 1 60 5 is_stmt 1 view .LVU88
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:60:     return (int32_t)stepper_slew_speed_mhz(a);          // максимум
	.loc 1 60 43 is_stmt 0 view .LVU89
	mov.n	a10, a2	#, a
.LVL25:
	.loc 1 60 43 view .LVU90
	call8	_Z22stepper_slew_speed_mhz6axis_t		#
.LVL26:
	mov.n	a2, a10	# <retval>, <retval>
.LVL27:
.L9:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:61: }
	.loc 1 61 1 view .LVU91
	retw.n	
.LFE762:
	.size	_ZL14rate_speed_mhz6axis_t, .-_ZL14rate_speed_mhz6axis_t
	.section	.rodata._ZL10apply_axis6axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC19:
	.base64	"SSAoJWx1KSAlczogWyVzXSDRgdC60L7RgNC+0YHRgtGMICVsZCDQvNCT0YYgKCUuMmbDlyDQt9Cy0ZHQt9C00L3QvtC5KQoA"
	.section	.text._ZL10apply_axis6axis_t,"ax",@progbits
	.literal_position
	.literal .LC14, 57936
	.literal .LC15, _ZL5state
	.literal .LC16, _ZL6manual
	.literal .LC17, AXES
	.literal .LC18, .LC3
	.literal .LC20, .LC19
	.align	4
	.type	_ZL10apply_axis6axis_t, @function
_ZL10apply_axis6axis_t:
.LVL28:
.LFB763:
	.loc 1 75 34 is_stmt 1 view -0
	.loc 1 75 34 is_stmt 0 view .LVU93
	entry	sp, 64	#
.LCFI5:
	.loc 1 76 5 is_stmt 1 view .LVU94
.LVL29:
.LBB113:
.LBI113:
	.loc 2 252 7 view .LVU95
.LBB114:
.LBI114:
	.loc 2 304 7 view .LVU96
.LBB115:
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 is_stmt 0 view .LVU97
	memw	
	l32r	a8, .LC15	#, tmp60
	memw
	l32i.n	a8, a8, 0	#, _12
	memw	
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 discriminator 1 view .LVU98
	s32i.n	a8, sp, 16	# MEM[(motion_state_t *)_28], _12
.LVL30:
	.loc 2 308 15 discriminator 1 view .LVU99
.LBE115:
.LBE114:
.LBE113:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:76:     if (state == MOTION_STATE_GOTO || state == MOTION_STATE_FAULT) return;
	.loc 1 76 36 discriminator 1 view .LVU100
	beqi	a8, 2, .L14	# _12,,
.LVL31:
.LBB116:
.LBI116:
	.loc 2 252 7 is_stmt 1 view .LVU101
.LBB117:
.LBI117:
	.loc 2 304 7 view .LVU102
.LBB118:
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 is_stmt 0 view .LVU103
	memw	
	l32r	a8, .LC15	#, tmp61
	memw
	l32i.n	a8, a8, 0	#, _34
	memw	
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 discriminator 1 view .LVU104
	s32i.n	a8, sp, 16	# MEM[(motion_state_t *)_28], _34
.LVL32:
	.loc 2 308 15 discriminator 1 view .LVU105
.LBE118:
.LBE117:
.LBE116:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:76:     if (state == MOTION_STATE_GOTO || state == MOTION_STATE_FAULT) return;
	.loc 1 76 36 discriminator 4 view .LVU106
	beqi	a8, 3, .L14	# _34,,
	.loc 1 78 5 is_stmt 1 view .LVU107
.LVL33:
	.loc 1 79 5 view .LVU108
.LBB119:
.LBI119:
	.loc 2 252 7 view .LVU109
.LBB120:
.LBI120:
	.loc 2 304 7 view .LVU110
.LBB121:
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 is_stmt 0 view .LVU111
	memw	
	l32r	a8, .LC15	#, tmp62
	memw
	l32i.n	a8, a8, 0	#, _35
	memw	
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 discriminator 1 view .LVU112
	s32i.n	a8, sp, 16	# MEM[(motion_state_t *)_28], _35
.LVL34:
	.loc 2 308 15 discriminator 1 view .LVU113
.LBE121:
.LBE120:
.LBE119:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:79:     if (state == MOTION_STATE_TRACKING && a == AXIS_RA) {
	.loc 1 79 40 discriminator 1 view .LVU114
	bnei	a8, 1, .L22	# _35,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:79:     if (state == MOTION_STATE_TRACKING && a == AXIS_RA) {
	.loc 1 79 40 discriminator 2 view .LVU115
	beqz.n	a2, .L23	# a,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:78:     int32_t speed = 0;
	.loc 1 78 13 view .LVU116
	movi.n	a8, 0	# speed,
	mov.n	a7, a8	# speed, speed
	j	.L18		#
.L22:
	movi.n	a8, 0	# speed,
	mov.n	a7, a8	# speed, speed
	j	.L18		#
.L23:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:80:         speed = (int32_t)axis_sidereal_mhz(AXIS_RA);
	.loc 1 80 15 view .LVU117
	l32r	a8, .LC14	#, speed
	mov.n	a7, a8	# speed, speed
.L18:
.LVL35:
	.loc 1 82 5 is_stmt 1 view .LVU118
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:82:     if (manual[a].moving) {
	.loc 1 82 19 is_stmt 0 view .LVU119
	l32r	a8, .LC16	#, tmp63
	addx2	a8, a2, a8	#, tmp65, a, tmp63
	l8ui	a8, a8, 0	# manual[a$84_1].moving, _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:82:     if (manual[a].moving) {
	.loc 1 82 5 view .LVU120
	beqz.n	a8, .L19	# _2,
	.loc 1 83 9 is_stmt 1 view .LVU121
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:83:         speed += manual[a].forward ? rate_speed_mhz(a) : -rate_speed_mhz(a);
	.loc 1 83 28 is_stmt 0 view .LVU122
	l32r	a8, .LC16	#, tmp66
	addx2	a8, a2, a8	#, tmp68, a, tmp66
	l8ui	a8, a8, 1	# manual[a$84_1].forward, _3
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:83:         speed += manual[a].forward ? rate_speed_mhz(a) : -rate_speed_mhz(a);
	.loc 1 83 36 view .LVU123
	beqz.n	a8, .L20	# _3,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:83:         speed += manual[a].forward ? rate_speed_mhz(a) : -rate_speed_mhz(a);
	.loc 1 83 52 discriminator 1 view .LVU124
	mov.n	a10, a2	#, a
	call8	_ZL14rate_speed_mhz6axis_t		#
.LVL36:
	j	.L21		#
.L20:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:83:         speed += manual[a].forward ? rate_speed_mhz(a) : -rate_speed_mhz(a);
	.loc 1 83 73 discriminator 2 view .LVU125
	mov.n	a10, a2	#, a
	call8	_ZL14rate_speed_mhz6axis_t		#
.LVL37:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:83:         speed += manual[a].forward ? rate_speed_mhz(a) : -rate_speed_mhz(a);
	.loc 1 83 36 discriminator 5 view .LVU126
	neg	a10, a10	# _17, _4
.L21:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:83:         speed += manual[a].forward ? rate_speed_mhz(a) : -rate_speed_mhz(a);
	.loc 1 83 15 discriminator 6 view .LVU127
	add.n	a8, a7, a10	# speed, speed, _17
	mov.n	a7, a8	# speed, speed
.LVL38:
.L19:
	.loc 1 86 5 is_stmt 1 view .LVU128
	.loc 1 86 10 view .LVU129
	.loc 1 86 15 view .LVU130
	.loc 1 86 47 view .LVU131
	.loc 1 86 52 view .LVU132
	.loc 1 86 147 discriminator 2 view .LVU133
	.loc 1 86 147 discriminator 7 view .LVU134
	.loc 1 86 147 discriminator 12 view .LVU135
.LBB122:
	.loc 1 86 149 discriminator 17 view .LVU136
.LBB123:
	.loc 1 86 174 discriminator 17 view .LVU137
	.loc 1 86 209 discriminator 17 view .LVU138
	.loc 1 86 249 view .LVU139
.LBE123:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:86:     ESP_LOGI(TAG, "[%s] скорость %" PRId32 " мГц (%.2f× звёздной)",
	.loc 1 86 156 is_stmt 0 discriminator 17 view .LVU140
	call8	esp_log_timestamp		#
.LVL39:
	mov.n	a3, a10	# _27, _27
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:86:     ESP_LOGI(TAG, "[%s] скорость %" PRId32 " мГц (%.2f× звёздной)",
	.loc 1 86 88 discriminator 21 view .LVU141
	addx4	a8, a2, a2	#, tmp73, a, a
	addx2	a8, a8, a2	#, tmp75, tmp73, a
	l32r	a9, .LC17	#, tmp70
	addx4	a8, a8, a9	#, tmp77, tmp75, tmp70
	l32i.n	a4, a8, 0	# AXES[a$84_1].name, _29
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:86:     ESP_LOGI(TAG, "[%s] скорость %" PRId32 " мГц (%.2f× звёздной)",
	.loc 1 86 101 discriminator 21 view .LVU142
	mov.n	a5, a7	# speed, speed
	mov.n	a10, a7	#, speed
	call8	__floatsidf		#
.LVL40:
	mov.n	a6, a10	#,
	mov.n	a7, a11	#,
.LVL41:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:86:     ESP_LOGI(TAG, "[%s] скорость %" PRId32 " мГц (%.2f× звёздной)",
	.loc 1 86 134 discriminator 21 view .LVU143
	mov.n	a10, a2	#, a
	call8	_Z17axis_sidereal_mhz6axis_t		#
.LVL42:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:86:     ESP_LOGI(TAG, "[%s] скорость %" PRId32 " мГц (%.2f× звёздной)",
	.loc 1 86 156 discriminator 22 view .LVU144
	call8	__floatunsidf		#
.LVL43:
	mov.n	a12, a10	#,
	mov.n	a13, a11	#,
	mov.n	a10, a6	#,
	mov.n	a11, a7	#,
	call8	__divdf3		#
.LVL44:
	s32i.n	a10, sp, 8	#,
	s32i.n	a11, sp, 12	#,
	s32i.n	a5, sp, 0	#, speed
	mov.n	a15, a4	#, _29
	l32r	a14, .LC18	#, tmp99
	mov.n	a13, a3	#, _27
	l32r	a12, .LC20	#,
	mov.n	a11, a14	# tmp100, tmp99
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL45:
	.loc 1 86 47 is_stmt 1 view .LVU145
	.loc 1 86 10 view .LVU146
.LBE122:
	.loc 1 86 5 view .LVU147
	.loc 1 88 5 view .LVU148
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:88:     stepper_run_mhz(a, speed);
	.loc 1 88 20 is_stmt 0 view .LVU149
	mov.n	a11, a5	#, speed
	mov.n	a10, a2	#, a
	call8	_Z15stepper_run_mhz6axis_tl		#
.LVL46:
.L14:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:89: }
	.loc 1 89 1 view .LVU150
	retw.n	
.LFE763:
	.size	_ZL10apply_axis6axis_t, .-_ZL10apply_axis6axis_t
	.section	.text._ZL14apply_all_axesv,"ax",@progbits
	.align	4
	.type	_ZL14apply_all_axesv, @function
_ZL14apply_all_axesv:
.LFB764:
	.loc 1 91 30 is_stmt 1 view -0
	entry	sp, 32	#
.LCFI6:
	.loc 1 92 5 view .LVU152
.LVL47:
.LBB124:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:92:     for (int i = 0; i < AXIS_COUNT; i++) {
	.loc 1 92 14 is_stmt 0 view .LVU153
	movi.n	a7, 0	# i,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:92:     for (int i = 0; i < AXIS_COUNT; i++) {
	.loc 1 92 5 view .LVU154
	j	.L25		#
.LVL48:
.L26:
	.loc 1 93 9 is_stmt 1 view .LVU155
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:93:         apply_axis((axis_t)i);
	.loc 1 93 19 is_stmt 0 view .LVU156
	mov.n	a10, a7	#, i
	call8	_ZL10apply_axis6axis_t		#
.LVL49:
	.loc 1 92 5 is_stmt 1 discriminator 3 view .LVU157
	addi.n	a7, a7, 1	# i, i,
.LVL50:
.L25:
	.loc 1 92 23 discriminator 1 view .LVU158
	blti	a7, 2, .L26	# i,,
.LBE124:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:95: }
	.loc 1 95 1 is_stmt 0 view .LVU159
	retw.n	
.LFE764:
	.size	_ZL14apply_all_axesv, .-_ZL14apply_all_axesv
	.section	.rodata._ZL10abort_gotov.str1.4,"aMS",@progbits,1
	.align	4
.LC22:
	.base64	"VyAoJWx1KSAlczogR29UbyDQv9GA0LXRgNCy0LDQvQoA"
	.section	.text._ZL10abort_gotov,"ax",@progbits
	.literal_position
	.literal .LC21, .LC3
	.literal .LC23, .LC22
	.align	4
	.type	_ZL10abort_gotov, @function
_ZL10abort_gotov:
.LFB766:
	.loc 1 104 26 is_stmt 1 view -0
	entry	sp, 32	#
.LCFI7:
	.loc 1 105 5 view .LVU161
	.loc 1 105 10 view .LVU162
	.loc 1 105 15 view .LVU163
	.loc 1 105 47 view .LVU164
	.loc 1 105 52 view .LVU165
	.loc 1 105 83 discriminator 2 view .LVU166
.LBB125:
	.loc 1 105 140 discriminator 5 view .LVU167
.LBB126:
	.loc 1 105 165 discriminator 5 view .LVU168
	.loc 1 105 200 discriminator 5 view .LVU169
	.loc 1 105 240 view .LVU170
.LBE126:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:105:     ESP_LOGW(TAG, "GoTo прерван");
	.loc 1 105 147 is_stmt 0 discriminator 5 view .LVU171
	call8	esp_log_timestamp		#
.LVL51:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:105:     ESP_LOGW(TAG, "GoTo прерван");
	.loc 1 105 147 discriminator 7 view .LVU172
	l32r	a11, .LC21	#, tmp45
	mov.n	a14, a11	#, tmp45
	mov.n	a13, a10	#, _2
	l32r	a12, .LC23	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL52:
	.loc 1 105 47 is_stmt 1 view .LVU173
	.loc 1 105 10 view .LVU174
.LBE125:
	.loc 1 105 5 view .LVU175
	.loc 1 106 5 view .LVU176
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:106:     set_state(MOTION_STATE_TRACKING);
	.loc 1 106 14 is_stmt 0 view .LVU177
	movi.n	a10, 1	#,
	call8	_ZL9set_state14motion_state_t		#
.LVL53:
	.loc 1 107 5 is_stmt 1 view .LVU178
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:107:     apply_all_axes();   // RA — к скорости ведения, DEC — стоп
	.loc 1 107 19 is_stmt 0 view .LVU179
	call8	_ZL14apply_all_axesv		#
.LVL54:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:108: }
	.loc 1 108 1 view .LVU180
	retw.n	
.LFE766:
	.size	_ZL10abort_gotov, .-_ZL10abort_gotov
	.section	.rodata._ZL10handle_cmdRK12motion_cmd_t.str1.4,"aMS",@progbits,1
	.align	4
.LC26:
	.base64	"VyAoJWx1KSAlczog0JrQvtC80LDQvdC00LAgJWQg0L7RgtC60LvQvtC90LXQvdCwOiDQsNCy0LDRgNC40Y8g0LTRgNCw0LnQstC10YDQsCwg0LTQstC40LbQtdC90LjQtSDQt9Cw0LHQu9C+0LrQuNGA0L7QstCw0L3QvgoA"
	.align	4
.LC30:
	.base64	"SSAoJWx1KSAlczog0KHQutC+0YDQvtGB0YLRjCDRgNGD0YfQvdC+0LPQviDQtNCy0LjQttC10L3QuNGPOiAlcwoA"
	.align	4
.LC33:
	.base64	"VyAoJWx1KSAlczog0JLQtdC00LXQvdC40LUg0LLQviDQstGA0LXQvNGPIEdvVG8g0L3QtSDQvNC10L3Rj9C10YLRgdGPOiDQv9C+0YHQu9C1IEdvVG8g0L7QvdC+INCy0LrQu9GO0YfQuNGC0YHRjyDRgdCw0LzQvgoA"
	.section	.text._ZL10handle_cmdRK12motion_cmd_t,"ax",@progbits
	.literal_position
	.literal .LC24, _ZL5state
	.literal .LC25, .LC3
	.literal .LC27, .LC26
	.literal .LC28, _ZL4rate
	.literal .LC29, _ZL9RATE_NAME
	.literal .LC31, .LC30
	.literal .LC32, _ZL6manual
	.literal .LC34, .LC33
	.align	4
	.type	_ZL10handle_cmdRK12motion_cmd_t, @function
_ZL10handle_cmdRK12motion_cmd_t:
.LVL55:
.LFB767:
	.loc 1 112 49 is_stmt 1 view -0
	.loc 1 112 49 is_stmt 0 view .LVU182
	entry	sp, 48	#
.LCFI8:
	.loc 1 115 5 is_stmt 1 view .LVU183
.LVL56:
.LBB127:
.LBB128:
.LBI128:
	.loc 2 252 7 view .LVU184
.LBB129:
.LBI129:
	.loc 2 304 7 view .LVU185
.LBB130:
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 is_stmt 0 view .LVU186
	memw	
	l32r	a8, .LC24	#, tmp77
	memw
	l32i.n	a8, a8, 0	#, _71
	memw	
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 discriminator 1 view .LVU187
	s32i.n	a8, sp, 0	# MEM[(motion_state_t *)_57], _71
.LVL57:
	.loc 2 308 15 discriminator 1 view .LVU188
.LBE130:
.LBE129:
.LBE128:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:116:         && cmd.cmd != CMD_SET_RATE) {
	.loc 1 116 9 view .LVU189
	bnei	a8, 3, .L29	# _71,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:115:     if (state == MOTION_STATE_FAULT && cmd.cmd != CMD_STOP && cmd.cmd != CMD_ABORT
	.loc 1 115 44 view .LVU190
	l32i.n	a8, a2, 0	# cmd_54(D)->cmd, _1
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:115:     if (state == MOTION_STATE_FAULT && cmd.cmd != CMD_STOP && cmd.cmd != CMD_ABORT
	.loc 1 115 37 view .LVU191
	beqi	a8, 2, .L29	# _1,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:115:     if (state == MOTION_STATE_FAULT && cmd.cmd != CMD_STOP && cmd.cmd != CMD_ABORT
	.loc 1 115 60 discriminator 2 view .LVU192
	beqi	a8, 5, .L29	# _1,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:116:         && cmd.cmd != CMD_SET_RATE) {
	.loc 1 116 9 discriminator 3 view .LVU193
	beqz.n	a8, .L29	# _1,
.LBB131:
	.loc 1 117 9 is_stmt 1 view .LVU194
	.loc 1 117 14 view .LVU195
	.loc 1 117 19 view .LVU196
	.loc 1 117 51 view .LVU197
	.loc 1 117 56 view .LVU198
	.loc 1 117 189 discriminator 2 view .LVU199
.LBB132:
	.loc 1 117 246 discriminator 5 view .LVU200
.LBB133:
	.loc 1 117 271 discriminator 5 view .LVU201
	.loc 1 117 306 discriminator 5 view .LVU202
	.loc 1 117 346 view .LVU203
.LBE133:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:117:         ESP_LOGW(TAG, "Команда %d отклонена: авария драйвера, движение заблокировано", cmd.cmd);
	.loc 1 117 253 is_stmt 0 discriminator 5 view .LVU204
	call8	esp_log_timestamp		#
.LVL58:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:117:         ESP_LOGW(TAG, "Команда %d отклонена: авария драйвера, движение заблокировано", cmd.cmd);
	.loc 1 117 253 discriminator 7 view .LVU205
	l32r	a11, .LC25	#, tmp78
	l32i.n	a15, a2, 0	# cmd_54(D)->cmd,
	mov.n	a14, a11	#, tmp78
	mov.n	a13, a10	#, _8
	l32r	a12, .LC27	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL59:
	.loc 1 117 51 is_stmt 1 view .LVU206
	.loc 1 117 14 view .LVU207
.LBE132:
	.loc 1 117 9 view .LVU208
	.loc 1 118 9 view .LVU209
	j	.L28		#
.L29:
.LBE131:
.LBE127:
	.loc 1 121 5 view .LVU210
.LBB134:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:121:     switch (cmd.cmd) {
	.loc 1 121 17 is_stmt 0 view .LVU211
	l32i.n	a8, a2, 0	# cmd_54(D)->cmd, _24
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:121:     switch (cmd.cmd) {
	.loc 1 121 5 view .LVU212
	beqi	a8, 3, .L31	# _24,,
	bgeui	a8, 4, .L32	# _24,,
	beqi	a8, 1, .L33	# _24,,
	beqi	a8, 2, .L34	# _24,,
	beqz.n	a8, .L35	# _24,
	j	.L28		#
.L32:
	beqi	a8, 4, .L36	# _24,,
	beqi	a8, 5, .L37	# _24,,
	j	.L28		#
.L35:
.LBB135:
	.loc 1 122 9 is_stmt 1 view .LVU213
	.loc 1 123 13 view .LVU214
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:123:             rate = cmd.rate;
	.loc 1 123 24 is_stmt 0 view .LVU215
	l32i.n	a8, a2, 12	# cmd_54(D)->rate, _25
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:123:             rate = cmd.rate;
	.loc 1 123 18 view .LVU216
	l32r	a2, .LC28	#, tmp81
.LVL60:
	.loc 1 123 18 view .LVU217
	s32i.n	a8, a2, 0	# rate, _25
	.loc 1 124 13 is_stmt 1 view .LVU218
	.loc 1 124 18 view .LVU219
	.loc 1 124 23 view .LVU220
	.loc 1 124 55 view .LVU221
	.loc 1 124 60 view .LVU222
	.loc 1 124 141 discriminator 2 view .LVU223
	.loc 1 124 141 discriminator 6 view .LVU224
	.loc 1 124 141 discriminator 10 view .LVU225
.LBB136:
	.loc 1 124 143 discriminator 14 view .LVU226
.LBB137:
	.loc 1 124 168 discriminator 14 view .LVU227
	.loc 1 124 203 discriminator 14 view .LVU228
	.loc 1 124 243 view .LVU229
.LBE137:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:124:             ESP_LOGI(TAG, "Скорость ручного движения: %s", RATE_NAME[rate]);
	.loc 1 124 150 is_stmt 0 discriminator 14 view .LVU230
	call8	esp_log_timestamp		#
.LVL61:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:124:             ESP_LOGI(TAG, "Скорость ручного движения: %s", RATE_NAME[rate]);
	.loc 1 124 126 discriminator 17 view .LVU231
	l32i.n	a8, a2, 0	# rate, rate$42$43_44
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:124:             ESP_LOGI(TAG, "Скорость ручного движения: %s", RATE_NAME[rate]);
	.loc 1 124 130 discriminator 17 view .LVU232
	l32r	a9, .LC29	#, tmp83
	addx4	a8, a8, a9	#, tmp85, rate$42$43_44, tmp83
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:124:             ESP_LOGI(TAG, "Скорость ручного движения: %s", RATE_NAME[rate]);
	.loc 1 124 150 discriminator 17 view .LVU233
	l32r	a11, .LC25	#, tmp86
	l32i.n	a15, a8, 0	# RATE_NAME[rate$42$43_44],
	mov.n	a14, a11	#, tmp86
	mov.n	a13, a10	#, _41
	l32r	a12, .LC31	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL62:
	.loc 1 124 55 is_stmt 1 view .LVU234
	.loc 1 124 18 view .LVU235
.LBE136:
	.loc 1 124 13 view .LVU236
	.loc 1 126 13 view .LVU237
.LBB138:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:126:             for (int i = 0; i < AXIS_COUNT; i++) {
	.loc 1 126 22 is_stmt 0 view .LVU238
	movi.n	a2, 0	# i,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:126:             for (int i = 0; i < AXIS_COUNT; i++) {
	.loc 1 126 13 view .LVU239
	j	.L38		#
.LVL63:
.L40:
	.loc 1 127 17 is_stmt 1 view .LVU240
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:127:                 if (manual[i].moving) apply_axis((axis_t)i);
	.loc 1 127 31 is_stmt 0 view .LVU241
	l32r	a8, .LC32	#, tmp89
	addx2	a8, a2, a8	#, tmp91, i, tmp89
	l8ui	a8, a8, 0	# manual[i_64].moving, _46
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:127:                 if (manual[i].moving) apply_axis((axis_t)i);
	.loc 1 127 17 view .LVU242
	beqz.n	a8, .L39	# _46,
	.loc 1 127 39 is_stmt 1 discriminator 1 view .LVU243
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:127:                 if (manual[i].moving) apply_axis((axis_t)i);
	.loc 1 127 49 is_stmt 0 discriminator 1 view .LVU244
	mov.n	a10, a2	#, i
	call8	_ZL10apply_axis6axis_t		#
.LVL64:
.L39:
	.loc 1 126 13 is_stmt 1 discriminator 2 view .LVU245
	addi.n	a2, a2, 1	# i, i,
.LVL65:
.L38:
	.loc 1 126 31 discriminator 1 view .LVU246
	blti	a2, 2, .L40	# i,,
	j	.L28		#
.LVL66:
.L33:
	.loc 1 126 31 is_stmt 0 discriminator 1 view .LVU247
.LBE138:
	.loc 1 131 9 is_stmt 1 view .LVU248
	.loc 1 133 13 view .LVU249
.LBB139:
.LBI139:
	.loc 2 252 7 view .LVU250
.LBB140:
.LBI140:
	.loc 2 304 7 view .LVU251
.LBB141:
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 is_stmt 0 view .LVU252
	memw	
	l32r	a8, .LC24	#, tmp92
	memw
	l32i.n	a8, a8, 0	#, _72
	memw	
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 discriminator 1 view .LVU253
	s32i.n	a8, sp, 0	# MEM[(motion_state_t *)_57], _72
.LVL67:
	.loc 2 308 15 discriminator 1 view .LVU254
.LBE141:
.LBE140:
.LBE139:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:133:             if (state == MOTION_STATE_GOTO) {
	.loc 1 133 13 discriminator 1 view .LVU255
	bnei	a8, 2, .L41	# _72,,
	.loc 1 134 17 is_stmt 1 view .LVU256
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:134:                 abort_goto();
	.loc 1 134 27 is_stmt 0 view .LVU257
	call8	_ZL10abort_gotov		#
.LVL68:
.L41:
	.loc 1 136 13 is_stmt 1 view .LVU258
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:136:             manual[cmd.axis].moving = true;
	.loc 1 136 24 is_stmt 0 view .LVU259
	l32i.n	a10, a2, 4	# cmd_54(D)->axis, _48
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:136:             manual[cmd.axis].moving = true;
	.loc 1 136 37 view .LVU260
	l32r	a8, .LC32	#, tmp93
	addx2	a8, a10, a8	#, tmp95, _48, tmp93
	movi.n	a9, 1	# tmp96,
	s8i	a9, a8, 0	# manual[_49].moving, tmp96
	.loc 1 137 13 is_stmt 1 view .LVU261
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:137:             manual[cmd.axis].forward = cmd.isForward;
	.loc 1 137 44 is_stmt 0 view .LVU262
	l8ui	a9, a2, 8	# cmd_54(D)->isForward, _50
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:137:             manual[cmd.axis].forward = cmd.isForward;
	.loc 1 137 38 view .LVU263
	s8i	a9, a8, 1	# manual[_49].forward, _50
	.loc 1 138 13 is_stmt 1 view .LVU264
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:138:             apply_axis(cmd.axis);
	.loc 1 138 23 is_stmt 0 view .LVU265
	call8	_ZL10apply_axis6axis_t		#
.LVL69:
	.loc 1 139 13 is_stmt 1 view .LVU266
	j	.L28		#
.LVL70:
.L34:
	.loc 1 141 9 view .LVU267
	.loc 1 142 13 view .LVU268
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:142:             manual[cmd.axis].moving = false;
	.loc 1 142 24 is_stmt 0 view .LVU269
	l32i.n	a10, a2, 4	# cmd_54(D)->axis, _51
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:142:             manual[cmd.axis].moving = false;
	.loc 1 142 37 view .LVU270
	l32r	a8, .LC32	#, tmp101
	addx2	a8, a10, a8	#, tmp103, _51, tmp101
	movi.n	a9, 0	# tmp104,
	s8i	a9, a8, 0	# manual[_52].moving, tmp104
	.loc 1 143 13 is_stmt 1 view .LVU271
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:143:             apply_axis(cmd.axis);   // RA при ведении — назад к ведению; иначе — стоп
	.loc 1 143 23 is_stmt 0 view .LVU272
	call8	_ZL10apply_axis6axis_t		#
.LVL71:
	.loc 1 144 13 is_stmt 1 view .LVU273
	j	.L28		#
.L31:
	.loc 1 146 9 view .LVU274
	.loc 1 147 13 view .LVU275
.LVL72:
.LBB142:
.LBB143:
.LBI143:
	.loc 2 252 7 view .LVU276
.LBB144:
.LBI144:
	.loc 2 304 7 view .LVU277
.LBB145:
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 is_stmt 0 view .LVU278
	memw	
	l32r	a8, .LC24	#, tmp105
	memw
	l32i.n	a8, a8, 0	#, _73
	memw	
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 discriminator 1 view .LVU279
	s32i.n	a8, sp, 0	# MEM[(motion_state_t *)_57], _73
.LVL73:
	.loc 2 308 15 discriminator 1 view .LVU280
.LBE145:
.LBE144:
.LBE143:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:147:             if (state == MOTION_STATE_GOTO) {
	.loc 1 147 13 discriminator 1 view .LVU281
	bnei	a8, 2, .L42	# _73,,
.LBB146:
	.loc 1 149 17 is_stmt 1 view .LVU282
	.loc 1 149 22 view .LVU283
	.loc 1 149 27 view .LVU284
	.loc 1 149 59 view .LVU285
	.loc 1 149 64 view .LVU286
	.loc 1 149 185 discriminator 2 view .LVU287
.LBB147:
	.loc 1 149 242 discriminator 5 view .LVU288
.LBB148:
	.loc 1 149 267 discriminator 5 view .LVU289
	.loc 1 149 302 discriminator 5 view .LVU290
	.loc 1 149 342 view .LVU291
.LBE148:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:149:                 ESP_LOGW(TAG, "Ведение во время GoTo не меняется: после GoTo оно включится само");
	.loc 1 149 249 is_stmt 0 discriminator 5 view .LVU292
	call8	esp_log_timestamp		#
.LVL74:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:149:                 ESP_LOGW(TAG, "Ведение во время GoTo не меняется: после GoTo оно включится само");
	.loc 1 149 249 discriminator 7 view .LVU293
	l32r	a11, .LC25	#, tmp106
	mov.n	a14, a11	#, tmp106
	mov.n	a13, a10	#, _56
	l32r	a12, .LC34	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL75:
	.loc 1 149 59 is_stmt 1 view .LVU294
	.loc 1 149 22 view .LVU295
.LBE147:
	.loc 1 149 17 view .LVU296
	.loc 1 150 17 view .LVU297
	j	.L28		#
.L42:
.LBE146:
.LBE142:
	.loc 1 152 13 view .LVU298
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:152:             set_state(cmd.on ? MOTION_STATE_TRACKING : MOTION_STATE_IDLE);
	.loc 1 152 27 is_stmt 0 view .LVU299
	l8ui	a8, a2, 9	# cmd_54(D)->on, _66
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:152:             set_state(cmd.on ? MOTION_STATE_TRACKING : MOTION_STATE_IDLE);
	.loc 1 152 22 view .LVU300
	beqz.n	a8, .L46	# _66,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:152:             set_state(cmd.on ? MOTION_STATE_TRACKING : MOTION_STATE_IDLE);
	.loc 1 152 22 discriminator 1 view .LVU301
	movi.n	a10, 1	# iftmp$62_61,
	j	.L43		#
.L46:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:152:             set_state(cmd.on ? MOTION_STATE_TRACKING : MOTION_STATE_IDLE);
	.loc 1 152 22 discriminator 2 view .LVU302
	mov.n	a10, a8	# iftmp$62_61, _66
.L43:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:152:             set_state(cmd.on ? MOTION_STATE_TRACKING : MOTION_STATE_IDLE);
	.loc 1 152 22 discriminator 4 view .LVU303
	call8	_ZL9set_state14motion_state_t		#
.LVL76:
	.loc 1 153 13 is_stmt 1 view .LVU304
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:153:             apply_axis(AXIS_RA);
	.loc 1 153 23 is_stmt 0 view .LVU305
	movi.n	a10, 0	#,
	call8	_ZL10apply_axis6axis_t		#
.LVL77:
	.loc 1 154 13 is_stmt 1 view .LVU306
	j	.L28		#
.LVL78:
.L36:
	.loc 1 156 9 view .LVU307
	.loc 1 157 13 view .LVU308
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:157:             clear_manual();
	.loc 1 157 25 is_stmt 0 view .LVU309
	call8	_ZL12clear_manualv		#
.LVL79:
	.loc 1 158 13 is_stmt 1 view .LVU310
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:158:             set_state(MOTION_STATE_GOTO);
	.loc 1 158 22 is_stmt 0 view .LVU311
	movi.n	a10, 2	#,
	call8	_ZL9set_state14motion_state_t		#
.LVL80:
	.loc 1 159 13 is_stmt 1 view .LVU312
.LBB149:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:159:             for (int i = 0; i < AXIS_COUNT; i++) {
	.loc 1 159 22 is_stmt 0 view .LVU313
	movi.n	a8, 0	# i,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:159:             for (int i = 0; i < AXIS_COUNT; i++) {
	.loc 1 159 13 view .LVU314
	j	.L44		#
.LVL81:
.L45:
	.loc 1 160 17 is_stmt 1 view .LVU315
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:160:                 stepper_move_to_async((axis_t)i, cmd.target[i]);
	.loc 1 160 62 is_stmt 0 view .LVU316
	mov.n	a7, a8	# i, i
	addi.n	a8, a8, 4	# tmp109, i,
.LVL82:
	.loc 1 160 62 view .LVU317
	addx4	a8, a8, a2	#, tmp111, tmp109, cmd
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:160:                 stepper_move_to_async((axis_t)i, cmd.target[i]);
	.loc 1 160 38 view .LVU318
	l32i.n	a11, a8, 0	# cmd_54(D)->target[i_65],
	mov.n	a10, a7	#, i
	call8	_Z21stepper_move_to_async6axis_tl		#
.LVL83:
	.loc 1 159 13 is_stmt 1 discriminator 3 view .LVU319
	addi.n	a8, a7, 1	# i, i,
.LVL84:
.L44:
	.loc 1 159 31 discriminator 1 view .LVU320
	blti	a8, 2, .L45	# i,,
	j	.L28		#
.LVL85:
.L37:
	.loc 1 159 31 is_stmt 0 discriminator 1 view .LVU321
.LBE149:
	.loc 1 164 9 is_stmt 1 view .LVU322
	.loc 1 165 13 view .LVU323
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:165:             clear_manual();
	.loc 1 165 25 is_stmt 0 view .LVU324
	call8	_ZL12clear_manualv		#
.LVL86:
	.loc 1 166 13 is_stmt 1 view .LVU325
.LBB150:
.LBI150:
	.loc 2 252 7 view .LVU326
.LBB151:
.LBI151:
	.loc 2 304 7 view .LVU327
.LBB152:
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 is_stmt 0 view .LVU328
	memw	
	l32r	a8, .LC24	#, tmp112
	memw
	l32i.n	a8, a8, 0	#, _74
	memw	
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 discriminator 1 view .LVU329
	s32i.n	a8, sp, 0	# MEM[(motion_state_t *)_57], _74
.LVL87:
	.loc 2 308 15 discriminator 1 view .LVU330
.LBE152:
.LBE151:
.LBE150:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:166:             if (state != MOTION_STATE_FAULT) {
	.loc 1 166 13 discriminator 1 view .LVU331
	beqi	a8, 3, .L28	# _74,,
	.loc 1 167 17 is_stmt 1 view .LVU332
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:167:                 set_state(MOTION_STATE_IDLE);
	.loc 1 167 26 is_stmt 0 view .LVU333
	movi.n	a10, 0	#,
	call8	_ZL9set_state14motion_state_t		#
.LVL88:
	.loc 1 169 17 is_stmt 1 view .LVU334
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:169:                 apply_all_axes();
	.loc 1 169 31 is_stmt 0 view .LVU335
	call8	_ZL14apply_all_axesv		#
.LVL89:
.L28:
	.loc 1 169 31 view .LVU336
.LBE135:
.LBE134:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:173: }
	.loc 1 173 1 view .LVU337
	retw.n	
.LFE767:
	.size	_ZL10handle_cmdRK12motion_cmd_t, .-_ZL10handle_cmdRK12motion_cmd_t
	.section	.rodata._ZL4pollv.str1.4,"aMS",@progbits,1
	.align	4
.LC37:
	.base64	"VyAoJWx1KSAlczog0JDQstCw0YDQuNGPINGB0L3Rj9GC0LAuINCS0LXQtNC10L3QuNC1INCy0YvQutC70Y7Rh9C10L3Qvjog0L/RgNC+0LLQtdGA0Ywg0L3QsNCy0LXQtNC10L3QuNC1INC4INCy0LrQu9GO0YfQuCDQstC10LTQtdC90LjQtQoA"
	.align	4
.LC39:
	.base64	"SSAoJWx1KSAlczogR29Ubzog0L3QsCDQvNC10YHRgtC1CgA="
	.section	.text._ZL4pollv,"ax",@progbits
	.literal_position
	.literal .LC35, _ZL5state
	.literal .LC36, .LC3
	.literal .LC38, .LC37
	.literal .LC40, .LC39
	.align	4
	.type	_ZL4pollv, @function
_ZL4pollv:
.LFB768:
	.loc 1 177 20 is_stmt 1 view -0
	entry	sp, 48	#
.LCFI9:
	.loc 1 178 5 view .LVU339
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:178:     bool blocked = stepper_is_blocked();
	.loc 1 178 38 is_stmt 0 view .LVU340
	call8	_Z18stepper_is_blockedv		#
.LVL90:
	.loc 1 181 5 is_stmt 1 view .LVU341
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:181:     if (blocked && state != MOTION_STATE_FAULT) {
	.loc 1 181 17 is_stmt 0 view .LVU342
	beqz.n	a10, .L48	# blocked,
.LVL91:
.LBB153:
.LBI153:
	.loc 2 252 7 is_stmt 1 view .LVU343
.LBB154:
.LBI154:
	.loc 2 304 7 view .LVU344
.LBB155:
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 is_stmt 0 view .LVU345
	memw	
	l32r	a8, .LC35	#, tmp55
	memw
	l32i.n	a8, a8, 0	#, _32
	memw	
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 discriminator 1 view .LVU346
	s32i.n	a8, sp, 0	# MEM[(motion_state_t *)_16], _32
.LVL92:
	.loc 2 308 15 discriminator 1 view .LVU347
.LBE155:
.LBE154:
.LBE153:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:181:     if (blocked && state != MOTION_STATE_FAULT) {
	.loc 1 181 17 discriminator 3 view .LVU348
	beqi	a8, 3, .L48	# _32,,
	.loc 1 182 9 is_stmt 1 view .LVU349
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:182:         clear_manual();
	.loc 1 182 21 is_stmt 0 view .LVU350
	call8	_ZL12clear_manualv		#
.LVL93:
	.loc 1 183 9 is_stmt 1 view .LVU351
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:183:         set_state(MOTION_STATE_FAULT);
	.loc 1 183 18 is_stmt 0 view .LVU352
	movi.n	a10, 3	#,
	call8	_ZL9set_state14motion_state_t		#
.LVL94:
	.loc 1 184 9 is_stmt 1 view .LVU353
	j	.L47		#
.LVL95:
.L48:
	.loc 1 188 5 view .LVU354
.LBB156:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:188:     if (!blocked && state == MOTION_STATE_FAULT) {
	.loc 1 188 18 is_stmt 0 view .LVU355
	bnez.n	a10, .L50	# blocked,
.LVL96:
.LBB157:
.LBI157:
	.loc 2 252 7 is_stmt 1 view .LVU356
.LBB158:
.LBI158:
	.loc 2 304 7 view .LVU357
.LBB159:
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 is_stmt 0 view .LVU358
	memw	
	l32r	a8, .LC35	#, tmp56
	memw
	l32i.n	a8, a8, 0	#, _33
	memw	
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 discriminator 1 view .LVU359
	s32i.n	a8, sp, 0	# MEM[(motion_state_t *)_16], _33
.LVL97:
	.loc 2 308 15 discriminator 1 view .LVU360
.LBE159:
.LBE158:
.LBE157:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:188:     if (!blocked && state == MOTION_STATE_FAULT) {
	.loc 1 188 18 discriminator 3 view .LVU361
	beqi	a8, 3, .L51	# _33,,
.LVL98:
.L50:
	.loc 1 188 18 discriminator 3 view .LVU362
.LBE156:
	.loc 1 195 5 is_stmt 1 view .LVU363
.LBB163:
.LBB164:
.LBI164:
	.loc 2 252 7 view .LVU364
.LBB165:
.LBI165:
	.loc 2 304 7 view .LVU365
.LBB166:
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 is_stmt 0 view .LVU366
	memw	
	l32r	a8, .LC35	#, tmp57
	memw
	l32i.n	a8, a8, 0	#, _34
	memw	
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 discriminator 1 view .LVU367
	s32i.n	a8, sp, 0	# MEM[(motion_state_t *)_16], _34
.LVL99:
	.loc 2 308 15 discriminator 1 view .LVU368
.LBE166:
.LBE165:
.LBE164:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:195:     if (state == MOTION_STATE_GOTO && !stepper_is_running(AXIS_RA) && !stepper_is_running(AXIS_DEC)) {
	.loc 1 195 68 discriminator 1 view .LVU369
	bnei	a8, 2, .L47	# _34,,
	j	.L52		#
.LVL100:
.L51:
	.loc 1 195 68 discriminator 1 view .LVU370
.LBE163:
.LBB170:
.LBB160:
	.loc 1 189 9 is_stmt 1 view .LVU371
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:189:         set_state(MOTION_STATE_IDLE);
	.loc 1 189 18 is_stmt 0 view .LVU372
	movi.n	a10, 0	#,
.LVL101:
	.loc 1 189 18 view .LVU373
	call8	_ZL9set_state14motion_state_t		#
.LVL102:
	.loc 1 190 9 is_stmt 1 view .LVU374
	.loc 1 190 14 view .LVU375
	.loc 1 190 19 view .LVU376
	.loc 1 190 51 view .LVU377
	.loc 1 190 56 view .LVU378
	.loc 1 190 192 discriminator 2 view .LVU379
.LBB161:
	.loc 1 190 249 discriminator 5 view .LVU380
.LBB162:
	.loc 1 190 274 discriminator 5 view .LVU381
	.loc 1 190 309 discriminator 5 view .LVU382
	.loc 1 190 349 view .LVU383
.LBE162:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:190:         ESP_LOGW(TAG, "Авария снята. Ведение выключено: проверь наведение и включи ведение");
	.loc 1 190 256 is_stmt 0 discriminator 5 view .LVU384
	call8	esp_log_timestamp		#
.LVL103:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:190:         ESP_LOGW(TAG, "Авария снята. Ведение выключено: проверь наведение и включи ведение");
	.loc 1 190 256 discriminator 7 view .LVU385
	l32r	a11, .LC36	#, tmp58
	mov.n	a14, a11	#, tmp58
	mov.n	a13, a10	#, _4
	l32r	a12, .LC38	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL104:
	.loc 1 190 51 is_stmt 1 view .LVU386
	.loc 1 190 14 view .LVU387
.LBE161:
	.loc 1 190 9 view .LVU388
	.loc 1 191 9 view .LVU389
	j	.L47		#
.LVL105:
.L52:
	.loc 1 191 9 is_stmt 0 view .LVU390
.LBE160:
.LBE170:
.LBB171:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:195:     if (state == MOTION_STATE_GOTO && !stepper_is_running(AXIS_RA) && !stepper_is_running(AXIS_DEC)) {
	.loc 1 195 58 discriminator 2 view .LVU391
	movi.n	a10, 0	#,
.LVL106:
	.loc 1 195 58 discriminator 2 view .LVU392
	call8	_Z18stepper_is_running6axis_t		#
.LVL107:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:195:     if (state == MOTION_STATE_GOTO && !stepper_is_running(AXIS_RA) && !stepper_is_running(AXIS_DEC)) {
	.loc 1 195 36 discriminator 4 view .LVU393
	bnez.n	a10, .L47	# tmp68,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:195:     if (state == MOTION_STATE_GOTO && !stepper_is_running(AXIS_RA) && !stepper_is_running(AXIS_DEC)) {
	.loc 1 195 90 discriminator 5 view .LVU394
	movi.n	a10, 1	#,
	call8	_Z18stepper_is_running6axis_t		#
.LVL108:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:195:     if (state == MOTION_STATE_GOTO && !stepper_is_running(AXIS_RA) && !stepper_is_running(AXIS_DEC)) {
	.loc 1 195 68 discriminator 7 view .LVU395
	bnez.n	a10, .L47	# tmp69,
.LBB167:
	.loc 1 196 9 is_stmt 1 view .LVU396
	.loc 1 196 14 view .LVU397
	.loc 1 196 19 view .LVU398
	.loc 1 196 51 view .LVU399
	.loc 1 196 56 view .LVU400
	.loc 1 196 89 discriminator 2 view .LVU401
	.loc 1 196 89 discriminator 6 view .LVU402
	.loc 1 196 89 discriminator 10 view .LVU403
.LBB168:
	.loc 1 196 91 discriminator 14 view .LVU404
.LBB169:
	.loc 1 196 116 discriminator 14 view .LVU405
	.loc 1 196 151 discriminator 14 view .LVU406
	.loc 1 196 191 view .LVU407
.LBE169:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:196:         ESP_LOGI(TAG, "GoTo: на месте");
	.loc 1 196 98 is_stmt 0 discriminator 14 view .LVU408
	call8	esp_log_timestamp		#
.LVL109:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:196:         ESP_LOGI(TAG, "GoTo: на месте");
	.loc 1 196 98 discriminator 17 view .LVU409
	l32r	a11, .LC36	#, tmp63
	mov.n	a14, a11	#, tmp63
	mov.n	a13, a10	#, _15
	l32r	a12, .LC40	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL110:
	.loc 1 196 51 is_stmt 1 view .LVU410
	.loc 1 196 14 view .LVU411
.LBE168:
	.loc 1 196 9 view .LVU412
	.loc 1 197 9 view .LVU413
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:197:         set_state(MOTION_STATE_TRACKING);
	.loc 1 197 18 is_stmt 0 view .LVU414
	movi.n	a10, 1	#,
	call8	_ZL9set_state14motion_state_t		#
.LVL111:
	.loc 1 198 9 is_stmt 1 view .LVU415
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:198:         apply_axis(AXIS_RA);
	.loc 1 198 19 is_stmt 0 view .LVU416
	movi.n	a10, 0	#,
	call8	_ZL10apply_axis6axis_t		#
.LVL112:
.L47:
	.loc 1 198 19 view .LVU417
.LBE167:
.LBE171:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:200: }
	.loc 1 200 1 view .LVU418
	retw.n	
.LFE768:
	.size	_ZL4pollv, .-_ZL4pollv
	.section	.text._Z11motion_taskPv,"ax",@progbits
	.literal_position
	.literal .LC41, _ZL12motion_queue
	.align	4
	.global	_Z11motion_taskPv
	.type	_Z11motion_taskPv, @function
_Z11motion_taskPv:
.LFB769:
	.loc 1 203 30 is_stmt 1 view -0
.LVL113:
	.loc 1 203 30 is_stmt 0 view .LVU420
	entry	sp, 64	#
.LCFI10:
.L55:
	.loc 1 204 5 is_stmt 1 view .LVU421
	.loc 1 206 5 view .LVU422
	.loc 1 209 9 view .LVU423
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:209:         if (xQueueReceive(motion_queue, &cmd, pdMS_TO_TICKS(MOTION_POLL_MS)) == pdTRUE) {
	.loc 1 209 26 is_stmt 0 view .LVU424
	movi.n	a12, 5	#,
	mov.n	a11, sp	#,
	l32r	a8, .LC41	#, tmp45
	l32i.n	a10, a8, 0	# motion_queue,
	call8	xQueueReceive		#
.LVL114:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:209:         if (xQueueReceive(motion_queue, &cmd, pdMS_TO_TICKS(MOTION_POLL_MS)) == pdTRUE) {
	.loc 1 209 9 discriminator 1 view .LVU425
	bnei	a10, 1, .L54	# _2,,
	.loc 1 210 13 is_stmt 1 view .LVU426
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:210:             handle_cmd(cmd);
	.loc 1 210 23 is_stmt 0 view .LVU427
	mov.n	a10, sp	#,
	call8	_ZL10handle_cmdRK12motion_cmd_t		#
.LVL115:
.L54:
	.loc 1 212 9 is_stmt 1 view .LVU428
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:212:         poll();
	.loc 1 212 13 is_stmt 0 view .LVU429
	call8	_ZL4pollv		#
.LVL116:
	.loc 1 206 5 is_stmt 1 view .LVU430
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:209:         if (xQueueReceive(motion_queue, &cmd, pdMS_TO_TICKS(MOTION_POLL_MS)) == pdTRUE) {
	.loc 1 209 9 is_stmt 0 view .LVU431
	j	.L55		#
.LFE769:
	.size	_Z11motion_taskPv, .-_Z11motion_taskPv
	.section	.rodata._Z12motion_startv.str1.4,"aMS",@progbits,1
	.align	4
.LC44:
	.base64	"RSAoJWx1KSAlczogbW90aW9uX3N0YXJ0OiDQvdC1INGD0LTQsNC70L7RgdGMINGB0L7Qt9C00LDRgtGMINC+0YfQtdGA0LXQtNGMINC60L7QvNCw0L3QtAoA"
	.align	4
.LC49:
	.base64	"RSAoJWx1KSAlczogbW90aW9uX3N0YXJ0OiDQvdC1INGD0LTQsNC70L7RgdGMINGB0L7Qt9C00LDRgtGMINC30LDQtNCw0YfRgyBtb3Rpb24KAA=="
	.section	.text._Z12motion_startv,"ax",@progbits
	.literal_position
	.literal .LC42, _ZL12motion_queue
	.literal .LC43, .LC3
	.literal .LC45, .LC44
	.literal .LC46, 4096
	.literal .LC47, _Z11motion_taskPv
	.literal .LC48, 2147483647
	.literal .LC50, .LC49
	.align	4
	.global	_Z12motion_startv
	.type	_Z12motion_startv, @function
_Z12motion_startv:
.LFB770:
	.loc 1 220 26 is_stmt 1 view -0
	entry	sp, 48	#
.LCFI11:
	.loc 1 221 5 view .LVU433
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:221:     motion_queue = xQueueCreate(8, sizeof(motion_cmd_t));   // до 8 команд в очереди
	.loc 1 221 39 is_stmt 0 view .LVU434
	movi.n	a12, 0	#,
	movi.n	a11, 0x18	#,
	movi.n	a10, 8	#,
	call8	xQueueGenericCreate		#
.LVL117:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:221:     motion_queue = xQueueCreate(8, sizeof(motion_cmd_t));   // до 8 команд в очереди
	.loc 1 221 18 discriminator 1 view .LVU435
	l32r	a8, .LC42	#, tmp51
	s32i.n	a10, a8, 0	# motion_queue, _1
	.loc 1 222 5 is_stmt 1 view .LVU436
.LBB172:
	bnez.n	a10, .L57	# _1,
.LBB173:
	.loc 1 223 9 view .LVU437
	.loc 1 223 14 view .LVU438
	.loc 1 223 19 view .LVU439
	.loc 1 223 52 view .LVU440
	.loc 1 223 57 view .LVU441
.LBB174:
	.loc 1 223 116 discriminator 1 view .LVU442
.LBB175:
	.loc 1 223 141 discriminator 1 view .LVU443
	.loc 1 223 176 discriminator 1 view .LVU444
	.loc 1 223 217 view .LVU445
.LBE175:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:223:         ESP_LOGE(TAG, "motion_start: не удалось создать очередь команд");
	.loc 1 223 123 is_stmt 0 discriminator 1 view .LVU446
	call8	esp_log_timestamp		#
.LVL118:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:223:         ESP_LOGE(TAG, "motion_start: не удалось создать очередь команд");
	.loc 1 223 123 discriminator 3 view .LVU447
	l32r	a11, .LC43	#, tmp52
	mov.n	a14, a11	#, tmp52
	mov.n	a13, a10	#, _3
	l32r	a12, .LC45	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL119:
	.loc 1 223 52 is_stmt 1 view .LVU448
	.loc 1 223 14 view .LVU449
.LBE174:
	.loc 1 223 9 view .LVU450
	.loc 1 224 9 view .LVU451
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:224:         return ESP_ERR_NO_MEM;
	.loc 1 224 16 is_stmt 0 view .LVU452
	movi	a2, 0x101	# <retval>,
	j	.L56		#
.L57:
.LBE173:
.LBE172:
	.loc 1 227 5 is_stmt 1 view .LVU453
.LVL120:
.LBB176:
.LBB177:
.LBI177:
	.file 4 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/task.h"
	.loc 4 371 16 view .LVU454
.LBB178:
	.loc 4 382 9 view .LVU455
	.loc 4 394 9 view .LVU456
# /Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/task.h:394:         return xTaskCreatePinnedToCore( pxTaskCode,
	.loc 4 394 39 is_stmt 0 view .LVU457
	l32r	a8, .LC48	#, tmp58
	s32i.n	a8, sp, 0	#, tmp58
	movi.n	a15, 0	#,
	movi.n	a14, 5	#,
	mov.n	a13, a15	#,
	l32r	a12, .LC46	#,
	l32r	a11, .LC43	#,
	l32r	a10, .LC47	#,
	call8	xTaskCreatePinnedToCore		#
.LVL121:
	.loc 4 394 39 view .LVU458
.LBE178:
.LBE177:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:227:     if (xTaskCreate(motion_task, "motion", 4096, nullptr, 5, nullptr) != pdPASS) {
	.loc 1 227 5 discriminator 1 view .LVU459
	beqi	a10, 1, .L59	# _7,,
.LBB179:
	.loc 1 228 9 is_stmt 1 view .LVU460
	.loc 1 228 14 view .LVU461
	.loc 1 228 19 view .LVU462
	.loc 1 228 52 view .LVU463
	.loc 1 228 57 view .LVU464
.LBB180:
	.loc 1 228 116 discriminator 1 view .LVU465
.LBB181:
	.loc 1 228 141 discriminator 1 view .LVU466
	.loc 1 228 176 discriminator 1 view .LVU467
	.loc 1 228 217 view .LVU468
.LBE181:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:228:         ESP_LOGE(TAG, "motion_start: не удалось создать задачу motion");
	.loc 1 228 123 is_stmt 0 discriminator 1 view .LVU469
	call8	esp_log_timestamp		#
.LVL122:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:228:         ESP_LOGE(TAG, "motion_start: не удалось создать задачу motion");
	.loc 1 228 123 discriminator 3 view .LVU470
	l32r	a11, .LC43	#, tmp59
	mov.n	a14, a11	#, tmp59
	mov.n	a13, a10	#, _14
	l32r	a12, .LC50	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL123:
	.loc 1 228 52 is_stmt 1 view .LVU471
	.loc 1 228 14 view .LVU472
.LBE180:
	.loc 1 228 9 view .LVU473
	.loc 1 229 9 view .LVU474
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:229:         return ESP_ERR_NO_MEM;
	.loc 1 229 16 is_stmt 0 view .LVU475
	movi	a2, 0x101	# <retval>,
	j	.L56		#
.L59:
.LBE179:
.LBE176:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:232:     return ESP_OK;
	.loc 1 232 12 view .LVU476
	movi.n	a2, 0	# <retval>,
.L56:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:233: }
	.loc 1 233 1 view .LVU477
	retw.n	
.LFE770:
	.size	_Z12motion_startv, .-_Z12motion_startv
	.section	.rodata._Z11motion_send12motion_cmd_tm.str1.4,"aMS",@progbits,1
	.align	4
.LC53:
	.base64	"VyAoJWx1KSAlczogbW90aW9uX3NlbmQ6INC60L7QvNCw0L3QtNCwICVkINC90LUg0L/RgNC40L3Rj9GC0LAgKNC+0YfQtdGA0LXQtNGMINC90LUg0YHQvtC30LTQsNC90LAg0LjQu9C4INC/0L7Qu9C90LApCgA="
	.section	.text._Z11motion_send12motion_cmd_tm,"ax",@progbits
	.literal_position
	.literal .LC51, _ZL12motion_queue
	.literal .LC52, .LC3
	.literal .LC54, .LC53
	.align	4
	.global	_Z11motion_send12motion_cmd_tm
	.type	_Z11motion_send12motion_cmd_tm, @function
_Z11motion_send12motion_cmd_tm:
.LVL124:
.LFB771:
	.loc 1 239 59 is_stmt 1 view -0
	.loc 1 239 59 is_stmt 0 view .LVU479
	entry	sp, 64	#
.LCFI12:
	s32i.n	a2, sp, 0	# cmd,
	s32i.n	a3, sp, 4	# cmd,
	s32i.n	a4, sp, 8	# cmd,
	s32i.n	a5, sp, 12	# cmd,
	s32i.n	a6, sp, 16	# cmd,
	s32i.n	a7, sp, 20	# cmd, tmp50
	.loc 1 240 5 is_stmt 1 view .LVU480
.LBB182:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:240:     if (motion_queue == nullptr || xQueueSend(motion_queue, &cmd, timeout) != pdTRUE) {
	.loc 1 240 22 is_stmt 0 view .LVU481
	l32r	a8, .LC51	#, tmp52
	l32i.n	a10, a8, 0	# motion_queue, motion_queue$204_1
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:240:     if (motion_queue == nullptr || xQueueSend(motion_queue, &cmd, timeout) != pdTRUE) {
	.loc 1 240 33 view .LVU482
	beqz.n	a10, .L61	# motion_queue$204_1,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:240:     if (motion_queue == nullptr || xQueueSend(motion_queue, &cmd, timeout) != pdTRUE) {
	.loc 1 240 53 discriminator 2 view .LVU483
	movi.n	a13, 0	#,
	l32i	a12, sp, 64	# timeout,
	mov.n	a11, sp	#,
	call8	xQueueGenericSend		#
.LVL125:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:240:     if (motion_queue == nullptr || xQueueSend(motion_queue, &cmd, timeout) != pdTRUE) {
	.loc 1 240 33 discriminator 3 view .LVU484
	beqi	a10, 1, .L63	# _2,,
.L61:
.LBB183:
	.loc 1 241 9 is_stmt 1 view .LVU485
	.loc 1 241 14 view .LVU486
	.loc 1 241 19 view .LVU487
	.loc 1 241 51 view .LVU488
	.loc 1 241 56 view .LVU489
	.loc 1 241 182 discriminator 2 view .LVU490
.LBB184:
	.loc 1 241 239 discriminator 5 view .LVU491
.LBB185:
	.loc 1 241 264 discriminator 5 view .LVU492
	.loc 1 241 299 discriminator 5 view .LVU493
	.loc 1 241 339 view .LVU494
.LBE185:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:241:         ESP_LOGW(TAG, "motion_send: команда %d не принята (очередь не создана или полна)", cmd.cmd);
	.loc 1 241 246 is_stmt 0 discriminator 5 view .LVU495
	call8	esp_log_timestamp		#
.LVL126:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:241:         ESP_LOGW(TAG, "motion_send: команда %d не принята (очередь не создана или полна)", cmd.cmd);
	.loc 1 241 246 discriminator 7 view .LVU496
	l32r	a11, .LC52	#, tmp53
	l32i.n	a15, sp, 0	# cmd.cmd,
	mov.n	a14, a11	#, tmp53
	mov.n	a13, a10	#, _6
	l32r	a12, .LC54	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL127:
	.loc 1 241 51 is_stmt 1 view .LVU497
	.loc 1 241 14 view .LVU498
.LBE184:
	.loc 1 241 9 view .LVU499
	.loc 1 242 9 view .LVU500
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:242:         return ESP_FAIL;
	.loc 1 242 17 is_stmt 0 view .LVU501
	movi.n	a2, -1	# <retval>,
	j	.L60		#
.L63:
.LBE183:
.LBE182:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:244:     return ESP_OK;
	.loc 1 244 12 view .LVU502
	movi.n	a2, 0	# <retval>,
.L60:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:245: }
	.loc 1 245 1 view .LVU503
	retw.n	
.LFE771:
	.size	_Z11motion_send12motion_cmd_tm, .-_Z11motion_send12motion_cmd_tm
	.section	.text._Z15motion_set_rate13motion_rate_t,"ax",@progbits
	.align	4
	.global	_Z15motion_set_rate13motion_rate_t
	.type	_Z15motion_set_rate13motion_rate_t, @function
_Z15motion_set_rate13motion_rate_t:
.LVL128:
.LFB772:
	.loc 1 247 44 is_stmt 1 view -0
	.loc 1 247 44 is_stmt 0 view .LVU505
	entry	sp, 80	#
.LCFI13:
	.loc 1 248 5 is_stmt 1 view .LVU506
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:248:     motion_cmd_t cmd = {};
	.loc 1 248 18 is_stmt 0 view .LVU507
	movi.n	a12, 0x18	#,
	movi.n	a11, 0	#,
	addi	a10, sp, 16	#,,
	call8	memset		#
.LVL129:
	.loc 1 249 5 is_stmt 1 view .LVU508
	.loc 1 250 5 view .LVU509
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:250:     cmd.rate = r;
	.loc 1 250 14 is_stmt 0 view .LVU510
	s32i.n	a2, sp, 28	# cmd.rate, r
	.loc 1 251 5 is_stmt 1 view .LVU511
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:251:     return motion_send(cmd);
	.loc 1 251 23 is_stmt 0 view .LVU512
	movi.n	a8, 0	# tmp47,
	s32i.n	a8, sp, 0	#, tmp47
	l32i.n	a10, sp, 16	# cmd,
	l32i.n	a11, sp, 20	# cmd,
	l32i.n	a12, sp, 24	# cmd,
	mov.n	a13, a2	#, r
	l32i.n	a14, sp, 32	# cmd,
	l32i.n	a15, sp, 36	# cmd,
	call8	_Z11motion_send12motion_cmd_tm		#
.LVL130:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:252: }
	.loc 1 252 1 view .LVU513
	mov.n	a2, a10	#, <retval>
.LVL131:
	.loc 1 252 1 view .LVU514
	retw.n	
.LFE772:
	.size	_Z15motion_set_rate13motion_rate_t, .-_Z15motion_set_rate13motion_rate_t
	.section	.text._Z11motion_move6axis_tb,"ax",@progbits
	.align	4
	.global	_Z11motion_move6axis_tb
	.type	_Z11motion_move6axis_tb, @function
_Z11motion_move6axis_tb:
.LVL132:
.LFB773:
	.loc 1 254 47 is_stmt 1 view -0
	.loc 1 254 47 is_stmt 0 view .LVU516
	entry	sp, 80	#
.LCFI14:
	extui	a3, a3, 0, 8	# forward, forward
	.loc 1 255 5 is_stmt 1 view .LVU517
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:255:     motion_cmd_t cmd = {};
	.loc 1 255 18 is_stmt 0 view .LVU518
	movi.n	a12, 0x18	#,
	movi.n	a11, 0	#,
	addi	a10, sp, 16	#,,
	call8	memset		#
.LVL133:
	.loc 1 256 5 is_stmt 1 view .LVU519
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:256:     cmd.cmd = CMD_MOVE;
	.loc 1 256 13 is_stmt 0 view .LVU520
	movi.n	a8, 1	# tmp49,
	s32i.n	a8, sp, 16	# cmd.cmd, tmp49
	.loc 1 257 5 is_stmt 1 view .LVU521
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:257:     cmd.axis = a;
	.loc 1 257 14 is_stmt 0 view .LVU522
	s32i.n	a2, sp, 20	# cmd.axis, a
	.loc 1 258 5 is_stmt 1 view .LVU523
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:258:     cmd.isForward = forward;
	.loc 1 258 19 is_stmt 0 view .LVU524
	s8i	a3, sp, 24	# cmd.isForward, forward
	.loc 1 259 5 is_stmt 1 view .LVU525
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:259:     return motion_send(cmd);
	.loc 1 259 23 is_stmt 0 view .LVU526
	movi.n	a8, 0	# tmp50,
	s32i.n	a8, sp, 0	#, tmp50
	movi.n	a10, 1	#,
	mov.n	a11, a2	#, a
	l32i.n	a12, sp, 24	# cmd,
	l32i.n	a13, sp, 28	# cmd,
	l32i.n	a14, sp, 32	# cmd,
	l32i.n	a15, sp, 36	# cmd,
	call8	_Z11motion_send12motion_cmd_tm		#
.LVL134:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:260: }
	.loc 1 260 1 view .LVU527
	mov.n	a2, a10	#, <retval>
.LVL135:
	.loc 1 260 1 view .LVU528
	retw.n	
.LFE773:
	.size	_Z11motion_move6axis_tb, .-_Z11motion_move6axis_tb
	.section	.text._Z11motion_stop6axis_t,"ax",@progbits
	.align	4
	.global	_Z11motion_stop6axis_t
	.type	_Z11motion_stop6axis_t, @function
_Z11motion_stop6axis_t:
.LVL136:
.LFB774:
	.loc 1 262 33 is_stmt 1 view -0
	.loc 1 262 33 is_stmt 0 view .LVU530
	entry	sp, 80	#
.LCFI15:
	.loc 1 263 5 is_stmt 1 view .LVU531
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:263:     motion_cmd_t cmd = {};
	.loc 1 263 18 is_stmt 0 view .LVU532
	movi.n	a12, 0x18	#,
	movi.n	a11, 0	#,
	addi	a10, sp, 16	#,,
	call8	memset		#
.LVL137:
	.loc 1 264 5 is_stmt 1 view .LVU533
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:264:     cmd.cmd = CMD_STOP;
	.loc 1 264 13 is_stmt 0 view .LVU534
	movi.n	a8, 2	# tmp47,
	s32i.n	a8, sp, 16	# cmd.cmd, tmp47
	.loc 1 265 5 is_stmt 1 view .LVU535
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:265:     cmd.axis = a;
	.loc 1 265 14 is_stmt 0 view .LVU536
	s32i.n	a2, sp, 20	# cmd.axis, a
	.loc 1 266 5 is_stmt 1 view .LVU537
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:266:     return motion_send(cmd, portMAX_DELAY);
	.loc 1 266 23 is_stmt 0 view .LVU538
	movi.n	a8, -1	# tmp48,
	s32i.n	a8, sp, 0	#, tmp48
	movi.n	a10, 2	#,
	mov.n	a11, a2	#, a
	l32i.n	a12, sp, 24	# cmd,
	l32i.n	a13, sp, 28	# cmd,
	l32i.n	a14, sp, 32	# cmd,
	l32i.n	a15, sp, 36	# cmd,
	call8	_Z11motion_send12motion_cmd_tm		#
.LVL138:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:267: }
	.loc 1 267 1 view .LVU539
	mov.n	a2, a10	#, <retval>
.LVL139:
	.loc 1 267 1 view .LVU540
	retw.n	
.LFE774:
	.size	_Z11motion_stop6axis_t, .-_Z11motion_stop6axis_t
	.section	.text._Z12motion_trackb,"ax",@progbits
	.align	4
	.global	_Z12motion_trackb
	.type	_Z12motion_trackb, @function
_Z12motion_trackb:
.LVL140:
.LFB775:
	.loc 1 269 33 is_stmt 1 view -0
	.loc 1 269 33 is_stmt 0 view .LVU542
	entry	sp, 80	#
.LCFI16:
	extui	a2, a2, 0, 8	# on, on
	.loc 1 270 5 is_stmt 1 view .LVU543
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:270:     motion_cmd_t cmd = {};
	.loc 1 270 18 is_stmt 0 view .LVU544
	movi.n	a12, 0x18	#,
	movi.n	a11, 0	#,
	addi	a10, sp, 16	#,,
	call8	memset		#
.LVL141:
	.loc 1 271 5 is_stmt 1 view .LVU545
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:271:     cmd.cmd = CMD_TRACK;
	.loc 1 271 13 is_stmt 0 view .LVU546
	movi.n	a8, 3	# tmp48,
	s32i.n	a8, sp, 16	# cmd.cmd, tmp48
	.loc 1 272 5 is_stmt 1 view .LVU547
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:272:     cmd.on = on;
	.loc 1 272 12 is_stmt 0 view .LVU548
	s8i	a2, sp, 25	# cmd.on, on
	.loc 1 273 5 is_stmt 1 view .LVU549
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:273:     return motion_send(cmd);
	.loc 1 273 23 is_stmt 0 view .LVU550
	movi.n	a8, 0	# tmp49,
	s32i.n	a8, sp, 0	#, tmp49
	movi.n	a10, 3	#,
	l32i.n	a11, sp, 20	# cmd,
	l32i.n	a12, sp, 24	# cmd,
	l32i.n	a13, sp, 28	# cmd,
	l32i.n	a14, sp, 32	# cmd,
	l32i.n	a15, sp, 36	# cmd,
	call8	_Z11motion_send12motion_cmd_tm		#
.LVL142:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:274: }
	.loc 1 274 1 view .LVU551
	mov.n	a2, a10	#, <retval>
.LVL143:
	.loc 1 274 1 view .LVU552
	retw.n	
.LFE775:
	.size	_Z12motion_trackb, .-_Z12motion_trackb
	.section	.text._Z11motion_gotoll,"ax",@progbits
	.align	4
	.global	_Z11motion_gotoll
	.type	_Z11motion_gotoll, @function
_Z11motion_gotoll:
.LVL144:
.LFB776:
	.loc 1 276 60 is_stmt 1 view -0
	.loc 1 276 60 is_stmt 0 view .LVU554
	entry	sp, 80	#
.LCFI17:
	.loc 1 277 5 is_stmt 1 view .LVU555
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:277:     motion_cmd_t cmd = {};
	.loc 1 277 18 is_stmt 0 view .LVU556
	movi.n	a12, 0x18	#,
	movi.n	a11, 0	#,
	addi	a10, sp, 16	#,,
	call8	memset		#
.LVL145:
	.loc 1 278 5 is_stmt 1 view .LVU557
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:278:     cmd.cmd = CMD_GOTO;
	.loc 1 278 13 is_stmt 0 view .LVU558
	movi.n	a8, 4	# tmp48,
	s32i.n	a8, sp, 16	# cmd.cmd, tmp48
	.loc 1 279 5 is_stmt 1 view .LVU559
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:279:     cmd.target[AXIS_RA] = ra_steps;
	.loc 1 279 25 is_stmt 0 view .LVU560
	s32i.n	a2, sp, 32	# cmd.target[0], ra_steps
	.loc 1 280 5 is_stmt 1 view .LVU561
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:280:     cmd.target[AXIS_DEC] = dec_steps;
	.loc 1 280 26 is_stmt 0 view .LVU562
	s32i.n	a3, sp, 36	# cmd.target[1], dec_steps
	.loc 1 281 5 is_stmt 1 view .LVU563
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:281:     return motion_send(cmd);
	.loc 1 281 23 is_stmt 0 view .LVU564
	movi.n	a8, 0	# tmp49,
	s32i.n	a8, sp, 0	#, tmp49
	movi.n	a10, 4	#,
	l32i.n	a11, sp, 20	# cmd,
	l32i.n	a12, sp, 24	# cmd,
	l32i.n	a13, sp, 28	# cmd,
	mov.n	a14, a2	#, ra_steps
	mov.n	a15, a3	#, dec_steps
	call8	_Z11motion_send12motion_cmd_tm		#
.LVL146:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:282: }
	.loc 1 282 1 view .LVU565
	mov.n	a2, a10	#, <retval>
.LVL147:
	.loc 1 282 1 view .LVU566
	retw.n	
.LFE776:
	.size	_Z11motion_gotoll, .-_Z11motion_gotoll
	.section	.text._Z12motion_abortv,"ax",@progbits
	.align	4
	.global	_Z12motion_abortv
	.type	_Z12motion_abortv, @function
_Z12motion_abortv:
.LFB777:
	.loc 1 284 26 is_stmt 1 view -0
	entry	sp, 80	#
.LCFI18:
	.loc 1 285 5 view .LVU568
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:285:     motion_cmd_t cmd = {};
	.loc 1 285 18 is_stmt 0 view .LVU569
	movi.n	a12, 0x18	#,
	movi.n	a11, 0	#,
	addi	a10, sp, 16	#,,
	call8	memset		#
.LVL148:
	.loc 1 286 5 is_stmt 1 view .LVU570
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:286:     cmd.cmd = CMD_ABORT;
	.loc 1 286 13 is_stmt 0 view .LVU571
	movi.n	a8, 5	# tmp46,
	s32i.n	a8, sp, 16	# cmd.cmd, tmp46
	.loc 1 287 5 is_stmt 1 view .LVU572
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:287:     return motion_send(cmd, portMAX_DELAY);
	.loc 1 287 23 is_stmt 0 view .LVU573
	movi.n	a8, -1	# tmp47,
	s32i.n	a8, sp, 0	#, tmp47
	movi.n	a10, 5	#,
	l32i.n	a11, sp, 20	# cmd,
	l32i.n	a12, sp, 24	# cmd,
	l32i.n	a13, sp, 28	# cmd,
	l32i.n	a14, sp, 32	# cmd,
	l32i.n	a15, sp, 36	# cmd,
	call8	_Z11motion_send12motion_cmd_tm		#
.LVL149:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:288: }
	.loc 1 288 1 view .LVU574
	mov.n	a2, a10	#, <retval>
	retw.n	
.LFE777:
	.size	_Z12motion_abortv, .-_Z12motion_abortv
	.section	.text._Z16motion_get_statev,"ax",@progbits
	.literal_position
	.literal .LC55, _ZL5state
	.align	4
	.global	_Z16motion_get_statev
	.type	_Z16motion_get_statev, @function
_Z16motion_get_statev:
.LFB778:
	.loc 1 290 35 is_stmt 1 view -0
	entry	sp, 48	#
.LCFI19:
	.loc 1 291 5 view .LVU576
.LVL150:
.LBB186:
.LBI186:
	.loc 2 252 7 view .LVU577
.LBB187:
.LBI187:
	.loc 2 304 7 view .LVU578
.LBB188:
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 is_stmt 0 view .LVU579
	memw	
	l32r	a8, .LC55	#, tmp43
	memw
	l32i.n	a2, a8, 0	#, <retval>
	memw	
# /Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/atomic:308: 	__atomic_load(std::__addressof(_M_i), __ptr, int(__m));
	.loc 2 308 15 discriminator 1 view .LVU580
	s32i.n	a2, sp, 0	# MEM[(motion_state_t *)&__buf], <retval>
.LVL151:
	.loc 2 308 15 discriminator 1 view .LVU581
.LBE188:
.LBE187:
.LBE186:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp:292: }
	.loc 1 292 1 view .LVU582
	retw.n	
.LFE778:
	.size	_Z16motion_get_statev, .-_Z16motion_get_statev
	.section	.bss._ZL6manual,"aw",@nobits
	.align	4
	.type	_ZL6manual, @object
	.size	_ZL6manual, 4
_ZL6manual:
	.zero	4
	.section	.data._ZL4rate,"aw"
	.align	4
	.type	_ZL4rate, @object
	.size	_ZL4rate, 4
_ZL4rate:
	.word	3
	.section	.bss._ZL5state,"aw",@nobits
	.align	4
	.type	_ZL5state, @object
	.size	_ZL5state, 4
_ZL5state:
	.zero	4
	.section	.bss._ZL12motion_queue,"aw",@nobits
	.align	4
	.type	_ZL12motion_queue, @object
	.size	_ZL12motion_queue, 4
_ZL12motion_queue:
	.zero	4
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC56:
	.string	"GUIDE"
	.align	4
.LC57:
	.string	"CENTER"
	.align	4
.LC58:
	.string	"FIND"
	.align	4
.LC59:
	.string	"SLEW"
	.section	.rodata._ZL9RATE_NAME,"a"
	.align	4
	.type	_ZL9RATE_NAME, @object
	.size	_ZL9RATE_NAME, 16
_ZL9RATE_NAME:
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.section	.rodata.str1.4
	.align	4
.LC60:
	.string	"IDLE"
	.align	4
.LC61:
	.string	"TRACKING"
	.align	4
.LC62:
	.string	"GOTO"
	.align	4
.LC63:
	.string	"FAULT"
	.section	.rodata._ZL10STATE_NAME,"a"
	.align	4
	.type	_ZL10STATE_NAME, @object
	.size	_ZL10STATE_NAME, 16
_ZL10STATE_NAME:
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC63
	.weak	AXES
	.section	.rodata.str1.4
	.align	4
.LC64:
	.string	"RA"
	.align	4
.LC65:
	.string	"DEC"
	.section	.rodata.AXES,"aG",@progbits,AXES,comdat
	.align	4
	.type	AXES, @object
	.size	AXES, 88
AXES:
# name:
	.word	.LC64
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
	.word	.LC65
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
	.4byte	.LFB765
	.4byte	.LFE765-.LFB765
	.byte	0x4
	.4byte	.LCFI0-.LFB765
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB761
	.4byte	.LFE761-.LFB761
	.byte	0x4
	.4byte	.LCFI1-.LFB761
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI3-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB762
	.4byte	.LFE762-.LFB762
	.byte	0x4
	.4byte	.LCFI4-.LFB762
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB763
	.4byte	.LFE763-.LFB763
	.byte	0x4
	.4byte	.LCFI5-.LFB763
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB764
	.4byte	.LFE764-.LFB764
	.byte	0x4
	.4byte	.LCFI6-.LFB764
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB766
	.4byte	.LFE766-.LFB766
	.byte	0x4
	.4byte	.LCFI7-.LFB766
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB767
	.4byte	.LFE767-.LFB767
	.byte	0x4
	.4byte	.LCFI8-.LFB767
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB768
	.4byte	.LFE768-.LFB768
	.byte	0x4
	.4byte	.LCFI9-.LFB768
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB769
	.4byte	.LFE769-.LFB769
	.byte	0x4
	.4byte	.LCFI10-.LFB769
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB770
	.4byte	.LFE770-.LFB770
	.byte	0x4
	.4byte	.LCFI11-.LFB770
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB771
	.4byte	.LFE771-.LFB771
	.byte	0x4
	.4byte	.LCFI12-.LFB771
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB772
	.4byte	.LFE772-.LFB772
	.byte	0x4
	.4byte	.LCFI13-.LFB772
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB773
	.4byte	.LFE773-.LFB773
	.byte	0x4
	.4byte	.LCFI14-.LFB773
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB774
	.4byte	.LFE774-.LFB774
	.byte	0x4
	.4byte	.LCFI15-.LFB774
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB775
	.4byte	.LFE775-.LFB775
	.byte	0x4
	.4byte	.LCFI16-.LFB775
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB776
	.4byte	.LFE776-.LFB776
	.byte	0x4
	.4byte	.LCFI17-.LFB776
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB777
	.4byte	.LFE777-.LFB777
	.byte	0x4
	.4byte	.LCFI18-.LFB777
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB778
	.4byte	.LFE778-.LFB778
	.byte	0x4
	.4byte	.LCFI19-.LFB778
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE38:
	.text
.Letext0:
	.file 5 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/machine/_default_types.h"
	.file 6 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/sys/_stdint.h"
	.file 7 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/stdint.h"
	.file 8 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_common/include/esp_err.h"
	.file 9 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/cstdint"
	.file 10 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/type_traits"
	.file 11 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/xtensa-esp-elf/include/c++/15.2.0/xtensa-esp-elf/esp32s3/no-rtti/bits/c++config.h"
	.file 12 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_hal_gpio/esp32s3/include/soc/gpio_num.h"
	.file 13 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h"
	.file 14 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.h"
	.file 15 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_level.h"
	.file 16 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_config.h"
	.file 17 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_args.h"
	.file 18 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/projdefs.h"
	.file 19 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h"
	.file 20 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/queue.h"
	.file 21 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/bits/atomic_base.h"
	.file 22 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/esp_additions/include/freertos/idf_additions.h"
	.file 23 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/stepper.h"
	.file 24 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log.h"
	.file 25 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_timestamp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2800
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF334
	.byte	0x4
	.4byte	.LASF335
	.4byte	.LASF336
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
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x5
	.byte	0xd2
	.byte	0x15
	.4byte	0x46
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x5
	.byte	0xd7
	.byte	0x17
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x5
	.byte	0xdb
	.byte	0x13
	.4byte	0x65
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x5
	.byte	0xe0
	.byte	0x1c
	.4byte	0x78
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0xe4
	.byte	0x12
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0xe9
	.byte	0x1b
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0xed
	.byte	0x17
	.4byte	0xb1
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0xf2
	.byte	0x20
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0xf6
	.byte	0x15
	.4byte	0x46
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0xf8
	.byte	0x17
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x110
	.byte	0x13
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x112
	.byte	0x1c
	.4byte	0x78
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x126
	.byte	0x12
	.4byte	0x8b
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x128
	.byte	0x1b
	.4byte	0x9e
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x138
	.byte	0x17
	.4byte	0xb1
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x13a
	.byte	0x20
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x146
	.byte	0x17
	.4byte	0xb1
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x14e
	.byte	0x20
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x156
	.byte	0xd
	.4byte	0x151
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.4byte	0x151
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x158
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF29
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x12
	.byte	0x12
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x16
	.byte	0x13
	.4byte	0x4d
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0x1e
	.byte	0x13
	.4byte	0x59
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0x22
	.byte	0x14
	.4byte	0x6c
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x2a
	.byte	0x13
	.4byte	0x7f
	.uleb128 0x6
	.4byte	0x1a1
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0x2e
	.byte	0x14
	.4byte	0x92
	.uleb128 0x6
	.4byte	0x1b2
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0xa5
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3a
	.byte	0x14
	.4byte	0xb8
	.uleb128 0x6
	.4byte	0x1cf
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x6
	.byte	0x41
	.byte	0x14
	.4byte	0x12a
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x6
	.byte	0x46
	.byte	0x15
	.4byte	0x137
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4b
	.byte	0x14
	.4byte	0x144
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x6
	.byte	0x50
	.byte	0x15
	.4byte	0x15d
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x7
	.byte	0x14
	.byte	0x18
	.4byte	0xc4
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x7
	.byte	0x15
	.byte	0x19
	.4byte	0xd0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x7
	.byte	0x1a
	.byte	0x19
	.4byte	0xdc
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x7
	.byte	0x20
	.byte	0x19
	.4byte	0xf6
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x7
	.byte	0x21
	.byte	0x1a
	.4byte	0x103
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x7
	.byte	0x26
	.byte	0x19
	.4byte	0x110
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x7
	.byte	0x27
	.byte	0x1a
	.4byte	0x11d
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x7
	.byte	0x32
	.byte	0xf
	.4byte	0x151
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x7
	.byte	0x33
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x7
	.byte	0x3c
	.byte	0xf
	.4byte	0x151
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x7
	.byte	0x3d
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x7
	.byte	0x46
	.byte	0xf
	.4byte	0x151
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x7
	.byte	0x47
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x7
	.byte	0x50
	.byte	0x19
	.4byte	0xb1
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x7
	.byte	0x51
	.byte	0x22
	.4byte	0x25
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x6
	.4byte	0x2d0
	.uleb128 0x8
	.4byte	0x33
	.4byte	0x2e7
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF58
	.uleb128 0x6
	.4byte	0x2e7
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2ee
	.uleb128 0x6
	.4byte	0x2f3
	.uleb128 0xa
	.byte	0x4
	.4byte	0x304
	.uleb128 0xb
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x8
	.byte	0x13
	.byte	0xd
	.4byte	0x151
	.uleb128 0xc
	.string	"std"
	.byte	0xb
	.2byte	0x150
	.byte	0xb
	.4byte	0x92b
	.uleb128 0xd
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x173
	.byte	0x41
	.uleb128 0xe
	.byte	0xb
	.2byte	0x173
	.byte	0x41
	.4byte	0x31e
	.uleb128 0xf
	.byte	0x9
	.byte	0x35
	.byte	0xb
	.4byte	0x171
	.uleb128 0xf
	.byte	0x9
	.byte	0x36
	.byte	0xb
	.4byte	0x189
	.uleb128 0xf
	.byte	0x9
	.byte	0x37
	.byte	0xb
	.4byte	0x1a1
	.uleb128 0xf
	.byte	0x9
	.byte	0x38
	.byte	0xb
	.4byte	0x1c3
	.uleb128 0xf
	.byte	0x9
	.byte	0x3a
	.byte	0xb
	.4byte	0x270
	.uleb128 0xf
	.byte	0x9
	.byte	0x3b
	.byte	0xb
	.4byte	0x288
	.uleb128 0xf
	.byte	0x9
	.byte	0x3c
	.byte	0xb
	.4byte	0x2a0
	.uleb128 0xf
	.byte	0x9
	.byte	0x3d
	.byte	0xb
	.4byte	0x2b8
	.uleb128 0xf
	.byte	0x9
	.byte	0x3f
	.byte	0xb
	.4byte	0x210
	.uleb128 0xf
	.byte	0x9
	.byte	0x40
	.byte	0xb
	.4byte	0x228
	.uleb128 0xf
	.byte	0x9
	.byte	0x41
	.byte	0xb
	.4byte	0x240
	.uleb128 0xf
	.byte	0x9
	.byte	0x42
	.byte	0xb
	.4byte	0x258
	.uleb128 0xf
	.byte	0x9
	.byte	0x44
	.byte	0xb
	.4byte	0x1e0
	.uleb128 0xf
	.byte	0x9
	.byte	0x45
	.byte	0xb
	.4byte	0x1f8
	.uleb128 0xf
	.byte	0x9
	.byte	0x47
	.byte	0xb
	.4byte	0x17d
	.uleb128 0xf
	.byte	0x9
	.byte	0x48
	.byte	0xb
	.4byte	0x195
	.uleb128 0xf
	.byte	0x9
	.byte	0x49
	.byte	0xb
	.4byte	0x1b2
	.uleb128 0xf
	.byte	0x9
	.byte	0x4a
	.byte	0xb
	.4byte	0x1cf
	.uleb128 0xf
	.byte	0x9
	.byte	0x4c
	.byte	0xb
	.4byte	0x27c
	.uleb128 0xf
	.byte	0x9
	.byte	0x4d
	.byte	0xb
	.4byte	0x294
	.uleb128 0xf
	.byte	0x9
	.byte	0x4e
	.byte	0xb
	.4byte	0x2ac
	.uleb128 0xf
	.byte	0x9
	.byte	0x4f
	.byte	0xb
	.4byte	0x2c4
	.uleb128 0xf
	.byte	0x9
	.byte	0x51
	.byte	0xb
	.4byte	0x21c
	.uleb128 0xf
	.byte	0x9
	.byte	0x52
	.byte	0xb
	.4byte	0x234
	.uleb128 0xf
	.byte	0x9
	.byte	0x53
	.byte	0xb
	.4byte	0x24c
	.uleb128 0xf
	.byte	0x9
	.byte	0x54
	.byte	0xb
	.4byte	0x264
	.uleb128 0xf
	.byte	0x9
	.byte	0x56
	.byte	0xb
	.4byte	0x1ec
	.uleb128 0xf
	.byte	0x9
	.byte	0x57
	.byte	0xb
	.4byte	0x204
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0xa
	.2byte	0xb92
	.byte	0xd
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0xa
	.2byte	0xbe7
	.byte	0xd
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0xa
	.byte	0xac
	.byte	0xd
	.uleb128 0x12
	.4byte	.LASF337
	.byte	0x5
	.byte	0x4
	.4byte	0x151
	.byte	0x15
	.byte	0x41
	.byte	0xe
	.4byte	0x461
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.4byte	.LASF172
	.byte	0x4
	.byte	0x2
	.byte	0xc7
	.byte	0xc
	.4byte	0x8f1
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x2
	.byte	0xcd
	.byte	0x1c
	.4byte	0x158
	.byte	0x3
	.byte	0x4
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x2
	.byte	0xd1
	.byte	0x1c
	.4byte	0x158
	.byte	0x3
	.byte	0x4
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF338
	.byte	0x2
	.byte	0xd4
	.byte	0x21
	.4byte	0xc57
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x2
	.byte	0xe7
	.byte	0x11
	.4byte	.LASF78
	.4byte	0x4af
	.4byte	0x4b5
	.uleb128 0x18
	.4byte	0xf38
	.byte	0
	.uleb128 0x19
	.4byte	.LASF71
	.byte	0x2
	.byte	0xef
	.byte	0x7
	.4byte	.LASF73
	.byte	0x1
	.4byte	0x4ca
	.4byte	0x4d0
	.uleb128 0x18
	.4byte	0xf38
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF72
	.byte	0x2
	.byte	0xf0
	.byte	0x7
	.4byte	.LASF74
	.4byte	0x4e4
	.4byte	0x4ef
	.uleb128 0x18
	.4byte	0xf38
	.uleb128 0x1b
	.4byte	0xf43
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF75
	.byte	0x2
	.byte	0xf1
	.byte	0xf
	.4byte	.LASF76
	.4byte	0xf49
	.4byte	0x507
	.4byte	0x512
	.uleb128 0x18
	.4byte	0xf38
	.uleb128 0x1b
	.4byte	0xf43
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF75
	.byte	0x2
	.byte	0xf2
	.byte	0xf
	.4byte	.LASF77
	.4byte	0xf49
	.4byte	0x52a
	.4byte	0x535
	.uleb128 0x18
	.4byte	0xf4f
	.uleb128 0x1b
	.4byte	0xf43
	.byte	0
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x2
	.byte	0xf4
	.byte	0x11
	.4byte	.LASF79
	.4byte	0x549
	.4byte	0x554
	.uleb128 0x18
	.4byte	0xf38
	.uleb128 0x1b
	.4byte	0xc57
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF80
	.byte	0x2
	.byte	0xfc
	.byte	0x7
	.4byte	.LASF81
	.4byte	0xc57
	.4byte	0x56c
	.4byte	0x572
	.uleb128 0x18
	.4byte	0xf55
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF80
	.byte	0x2
	.byte	0xff
	.byte	0x7
	.4byte	.LASF82
	.4byte	0xc57
	.4byte	0x58a
	.4byte	0x590
	.uleb128 0x18
	.4byte	0xf60
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x103
	.byte	0x7
	.4byte	.LASF83
	.4byte	0xc57
	.4byte	0x5a9
	.4byte	0x5b4
	.uleb128 0x18
	.4byte	0xf38
	.uleb128 0x1b
	.4byte	0xc57
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x107
	.byte	0x7
	.4byte	.LASF84
	.4byte	0xc57
	.4byte	0x5cd
	.4byte	0x5d8
	.uleb128 0x18
	.4byte	0xf4f
	.uleb128 0x1b
	.4byte	0xc57
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x10b
	.byte	0x7
	.4byte	.LASF86
	.4byte	0xa84
	.4byte	0x5f1
	.4byte	0x5f7
	.uleb128 0x18
	.4byte	0xf55
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x113
	.byte	0x7
	.4byte	.LASF87
	.4byte	0xa84
	.4byte	0x610
	.4byte	0x616
	.uleb128 0x18
	.4byte	0xf60
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF232
	.byte	0x2
	.2byte	0x11b
	.byte	0x1d
	.4byte	0xa8b
	.byte	0x1
	.uleb128 0x20
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x120
	.byte	0x7
	.4byte	.LASF89
	.4byte	0x639
	.4byte	0x649
	.uleb128 0x18
	.4byte	0xf38
	.uleb128 0x1b
	.4byte	0xc57
	.uleb128 0x1b
	.4byte	0x42a
	.byte	0
	.uleb128 0x20
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x128
	.byte	0x7
	.4byte	.LASF90
	.4byte	0x65e
	.4byte	0x66e
	.uleb128 0x18
	.4byte	0xf4f
	.uleb128 0x1b
	.4byte	0xc57
	.uleb128 0x1b
	.4byte	0x42a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x130
	.byte	0x7
	.4byte	.LASF92
	.4byte	0xc57
	.4byte	0x687
	.4byte	0x692
	.uleb128 0x18
	.4byte	0xf55
	.uleb128 0x1b
	.4byte	0x42a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x139
	.byte	0x7
	.4byte	.LASF93
	.4byte	0xc57
	.4byte	0x6ab
	.4byte	0x6b6
	.uleb128 0x18
	.4byte	0xf60
	.uleb128 0x1b
	.4byte	0x42a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x142
	.byte	0x7
	.4byte	.LASF95
	.4byte	0xc57
	.4byte	0x6cf
	.4byte	0x6df
	.uleb128 0x18
	.4byte	0xf38
	.uleb128 0x1b
	.4byte	0xc57
	.uleb128 0x1b
	.4byte	0x42a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x14d
	.byte	0x7
	.4byte	.LASF96
	.4byte	0xc57
	.4byte	0x6f8
	.4byte	0x708
	.uleb128 0x18
	.4byte	0xf4f
	.uleb128 0x1b
	.4byte	0xc57
	.uleb128 0x1b
	.4byte	0x42a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x159
	.byte	0x7
	.4byte	.LASF98
	.4byte	0xa84
	.4byte	0x721
	.4byte	0x73b
	.uleb128 0x18
	.4byte	0xf38
	.uleb128 0x1b
	.4byte	0xf66
	.uleb128 0x1b
	.4byte	0xc57
	.uleb128 0x1b
	.4byte	0x42a
	.uleb128 0x1b
	.4byte	0x42a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x161
	.byte	0x7
	.4byte	.LASF99
	.4byte	0xa84
	.4byte	0x754
	.4byte	0x76e
	.uleb128 0x18
	.4byte	0xf4f
	.uleb128 0x1b
	.4byte	0xf66
	.uleb128 0x1b
	.4byte	0xc57
	.uleb128 0x1b
	.4byte	0x42a
	.uleb128 0x1b
	.4byte	0x42a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x169
	.byte	0x7
	.4byte	.LASF100
	.4byte	0xa84
	.4byte	0x787
	.4byte	0x79c
	.uleb128 0x18
	.4byte	0xf38
	.uleb128 0x1b
	.4byte	0xf66
	.uleb128 0x1b
	.4byte	0xc57
	.uleb128 0x1b
	.4byte	0x42a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x16f
	.byte	0x7
	.4byte	.LASF101
	.4byte	0xa84
	.4byte	0x7b5
	.4byte	0x7ca
	.uleb128 0x18
	.4byte	0xf4f
	.uleb128 0x1b
	.4byte	0xf66
	.uleb128 0x1b
	.4byte	0xc57
	.uleb128 0x1b
	.4byte	0x42a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x175
	.byte	0x7
	.4byte	.LASF103
	.4byte	0xa84
	.4byte	0x7e3
	.4byte	0x7fd
	.uleb128 0x18
	.4byte	0xf38
	.uleb128 0x1b
	.4byte	0xf66
	.uleb128 0x1b
	.4byte	0xc57
	.uleb128 0x1b
	.4byte	0x42a
	.uleb128 0x1b
	.4byte	0x42a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x17d
	.byte	0x7
	.4byte	.LASF104
	.4byte	0xa84
	.4byte	0x816
	.4byte	0x830
	.uleb128 0x18
	.4byte	0xf4f
	.uleb128 0x1b
	.4byte	0xf66
	.uleb128 0x1b
	.4byte	0xc57
	.uleb128 0x1b
	.4byte	0x42a
	.uleb128 0x1b
	.4byte	0x42a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x185
	.byte	0x7
	.4byte	.LASF105
	.4byte	0xa84
	.4byte	0x849
	.4byte	0x85e
	.uleb128 0x18
	.4byte	0xf38
	.uleb128 0x1b
	.4byte	0xf66
	.uleb128 0x1b
	.4byte	0xc57
	.uleb128 0x1b
	.4byte	0x42a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x18b
	.byte	0x7
	.4byte	.LASF106
	.4byte	0xa84
	.4byte	0x877
	.4byte	0x88c
	.uleb128 0x18
	.4byte	0xf4f
	.uleb128 0x1b
	.4byte	0xf66
	.uleb128 0x1b
	.4byte	0xc57
	.uleb128 0x1b
	.4byte	0x42a
	.byte	0
	.uleb128 0x20
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x192
	.byte	0x7
	.4byte	.LASF108
	.4byte	0x8a1
	.4byte	0x8b1
	.uleb128 0x18
	.4byte	0xf55
	.uleb128 0x1b
	.4byte	0xc57
	.uleb128 0x1b
	.4byte	0x42a
	.byte	0
	.uleb128 0x20
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x19b
	.byte	0x7
	.4byte	.LASF110
	.4byte	0x8c6
	.4byte	0x8cc
	.uleb128 0x18
	.4byte	0xf38
	.byte	0
	.uleb128 0x20
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x19f
	.byte	0x7
	.4byte	.LASF112
	.4byte	0x8e1
	.4byte	0x8e7
	.uleb128 0x18
	.4byte	0xf38
	.byte	0
	.uleb128 0x21
	.string	"_Tp"
	.4byte	0xc57
	.byte	0
	.uleb128 0x6
	.4byte	0x461
	.uleb128 0x22
	.4byte	0x461
	.uleb128 0x22
	.4byte	0x8f1
	.uleb128 0x23
	.4byte	.LASF339
	.byte	0x15
	.2byte	0x3b5
	.byte	0xd
	.uleb128 0x24
	.4byte	.LASF264
	.byte	0x15
	.2byte	0x3c9
	.byte	0x7
	.4byte	.LASF340
	.4byte	0x115a
	.uleb128 0x21
	.string	"_Tp"
	.4byte	0xc57
	.uleb128 0x1b
	.4byte	0xf66
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF113
	.byte	0xb
	.2byte	0x175
	.byte	0xb
	.4byte	0x94b
	.uleb128 0xd
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x177
	.byte	0x41
	.uleb128 0xe
	.byte	0xb
	.2byte	0x177
	.byte	0x41
	.4byte	0x938
	.byte	0
	.uleb128 0x26
	.byte	0x5
	.byte	0x4
	.4byte	0x151
	.byte	0xc
	.byte	0x10
	.byte	0xe
	.4byte	.LASF220
	.4byte	0xa78
	.uleb128 0x27
	.4byte	.LASF115
	.sleb128 -1
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF118
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF122
	.byte	0x6
	.uleb128 0x13
	.4byte	.LASF123
	.byte	0x7
	.uleb128 0x13
	.4byte	.LASF124
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF125
	.byte	0x9
	.uleb128 0x13
	.4byte	.LASF126
	.byte	0xa
	.uleb128 0x13
	.4byte	.LASF127
	.byte	0xb
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0xd
	.uleb128 0x13
	.4byte	.LASF130
	.byte	0xe
	.uleb128 0x13
	.4byte	.LASF131
	.byte	0xf
	.uleb128 0x13
	.4byte	.LASF132
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF133
	.byte	0x11
	.uleb128 0x13
	.4byte	.LASF134
	.byte	0x12
	.uleb128 0x13
	.4byte	.LASF135
	.byte	0x13
	.uleb128 0x13
	.4byte	.LASF136
	.byte	0x14
	.uleb128 0x13
	.4byte	.LASF137
	.byte	0x15
	.uleb128 0x13
	.4byte	.LASF138
	.byte	0x1a
	.uleb128 0x13
	.4byte	.LASF139
	.byte	0x1b
	.uleb128 0x13
	.4byte	.LASF140
	.byte	0x1c
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0x1d
	.uleb128 0x13
	.4byte	.LASF142
	.byte	0x1e
	.uleb128 0x13
	.4byte	.LASF143
	.byte	0x1f
	.uleb128 0x13
	.4byte	.LASF144
	.byte	0x20
	.uleb128 0x13
	.4byte	.LASF145
	.byte	0x21
	.uleb128 0x13
	.4byte	.LASF146
	.byte	0x22
	.uleb128 0x13
	.4byte	.LASF147
	.byte	0x23
	.uleb128 0x13
	.4byte	.LASF148
	.byte	0x24
	.uleb128 0x13
	.4byte	.LASF149
	.byte	0x25
	.uleb128 0x13
	.4byte	.LASF150
	.byte	0x26
	.uleb128 0x13
	.4byte	.LASF151
	.byte	0x27
	.uleb128 0x13
	.4byte	.LASF152
	.byte	0x28
	.uleb128 0x13
	.4byte	.LASF153
	.byte	0x29
	.uleb128 0x13
	.4byte	.LASF154
	.byte	0x2a
	.uleb128 0x13
	.4byte	.LASF155
	.byte	0x2b
	.uleb128 0x13
	.4byte	.LASF156
	.byte	0x2c
	.uleb128 0x13
	.4byte	.LASF157
	.byte	0x2d
	.uleb128 0x13
	.4byte	.LASF158
	.byte	0x2e
	.uleb128 0x13
	.4byte	.LASF159
	.byte	0x2f
	.uleb128 0x13
	.4byte	.LASF160
	.byte	0x30
	.uleb128 0x13
	.4byte	.LASF161
	.byte	0x31
	.byte	0
	.uleb128 0x3
	.4byte	.LASF162
	.byte	0xc
	.byte	0x40
	.byte	0x3
	.4byte	0x94b
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF163
	.uleb128 0x6
	.4byte	0xa84
	.uleb128 0x28
	.4byte	.LASF164
	.byte	0xd
	.byte	0x29
	.byte	0x14
	.4byte	0x1be
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF165
	.byte	0xd
	.byte	0x2b
	.byte	0x14
	.4byte	0x1be
	.byte	0xb4
	.uleb128 0x28
	.4byte	.LASF166
	.byte	0xd
	.byte	0x2c
	.byte	0x14
	.4byte	0x1be
	.byte	0x6e
	.uleb128 0x28
	.4byte	.LASF167
	.byte	0xd
	.byte	0x2d
	.byte	0x14
	.4byte	0x1be
	.byte	0x14
	.uleb128 0x29
	.4byte	.LASF168
	.byte	0xd
	.byte	0x33
	.byte	0x14
	.4byte	0x1be
	.2byte	0x3d2
	.uleb128 0x2a
	.4byte	.LASF189
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x3
	.byte	0x17
	.byte	0x6
	.4byte	0xaf7
	.uleb128 0x13
	.4byte	.LASF169
	.byte	0
	.uleb128 0x13
	.4byte	.LASF170
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF171
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF173
	.byte	0x2c
	.byte	0x3
	.byte	0x1d
	.byte	0x8
	.4byte	0xbc8
	.uleb128 0x2b
	.4byte	.LASF174
	.byte	0x3
	.byte	0x1e
	.byte	0x11
	.4byte	0x2f3
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF175
	.byte	0x3
	.byte	0x21
	.byte	0xd
	.4byte	0x17d
	.byte	0x4
	.uleb128 0x2b
	.4byte	.LASF176
	.byte	0x3
	.byte	0x22
	.byte	0x10
	.4byte	0xa78
	.byte	0x8
	.uleb128 0x2b
	.4byte	.LASF177
	.byte	0x3
	.byte	0x23
	.byte	0x10
	.4byte	0xa78
	.byte	0xc
	.uleb128 0x2b
	.4byte	.LASF178
	.byte	0x3
	.byte	0x24
	.byte	0x10
	.4byte	0xa78
	.byte	0x10
	.uleb128 0x2b
	.4byte	.LASF179
	.byte	0x3
	.byte	0x27
	.byte	0xd
	.4byte	0x17d
	.byte	0x14
	.uleb128 0x2b
	.4byte	.LASF180
	.byte	0x3
	.byte	0x28
	.byte	0xd
	.4byte	0x17d
	.byte	0x15
	.uleb128 0x2b
	.4byte	.LASF181
	.byte	0x3
	.byte	0x29
	.byte	0xd
	.4byte	0x17d
	.byte	0x16
	.uleb128 0x2b
	.4byte	.LASF182
	.byte	0x3
	.byte	0x2a
	.byte	0xd
	.4byte	0x17d
	.byte	0x17
	.uleb128 0x2b
	.4byte	.LASF183
	.byte	0x3
	.byte	0x2b
	.byte	0xd
	.4byte	0x17d
	.byte	0x18
	.uleb128 0x2b
	.4byte	.LASF184
	.byte	0x3
	.byte	0x2c
	.byte	0xa
	.4byte	0xa84
	.byte	0x19
	.uleb128 0x2b
	.4byte	.LASF185
	.byte	0x3
	.byte	0x2f
	.byte	0xe
	.4byte	0x1b2
	.byte	0x1c
	.uleb128 0x2b
	.4byte	.LASF186
	.byte	0x3
	.byte	0x30
	.byte	0xe
	.4byte	0x1b2
	.byte	0x20
	.uleb128 0x2b
	.4byte	.LASF187
	.byte	0x3
	.byte	0x31
	.byte	0xe
	.4byte	0x1b2
	.byte	0x24
	.uleb128 0x2b
	.4byte	.LASF188
	.byte	0x3
	.byte	0x32
	.byte	0xe
	.4byte	0x1b2
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.4byte	0xaf7
	.uleb128 0x8
	.4byte	0xbc8
	.4byte	0xbdd
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0xbcd
	.uleb128 0x2c
	.4byte	.LASF341
	.byte	0x3
	.byte	0x37
	.byte	0x20
	.4byte	0xbdd
	.byte	0x3
	.uleb128 0x5
	.byte	0x3
	.4byte	AXES
	.uleb128 0x2a
	.4byte	.LASF190
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x16
	.byte	0x6
	.4byte	0xc2c
	.uleb128 0x13
	.4byte	.LASF191
	.byte	0
	.uleb128 0x13
	.4byte	.LASF192
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF193
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF195
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF196
	.byte	0x5
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF197
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x20
	.byte	0x6
	.4byte	0xc57
	.uleb128 0x13
	.4byte	.LASF198
	.byte	0
	.uleb128 0x13
	.4byte	.LASF199
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF200
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF201
	.byte	0x3
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF202
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x28
	.byte	0x6
	.4byte	0xc82
	.uleb128 0x13
	.4byte	.LASF203
	.byte	0
	.uleb128 0x13
	.4byte	.LASF204
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF205
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF206
	.byte	0x3
	.byte	0
	.uleb128 0x2d
	.byte	0x18
	.byte	0xe
	.byte	0x30
	.byte	0x10
	.4byte	.LASF230
	.4byte	0xcdd
	.uleb128 0x2e
	.string	"cmd"
	.byte	0xe
	.byte	0x31
	.byte	0x14
	.4byte	0xbf5
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF207
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.4byte	0xad2
	.byte	0x4
	.uleb128 0x2b
	.4byte	.LASF208
	.byte	0xe
	.byte	0x33
	.byte	0xa
	.4byte	0xa84
	.byte	0x8
	.uleb128 0x2e
	.string	"on"
	.byte	0xe
	.byte	0x34
	.byte	0xa
	.4byte	0xa84
	.byte	0x9
	.uleb128 0x2b
	.4byte	.LASF209
	.byte	0xe
	.byte	0x35
	.byte	0x13
	.4byte	0xc2c
	.byte	0xc
	.uleb128 0x2b
	.4byte	.LASF210
	.byte	0xe
	.byte	0x36
	.byte	0xd
	.4byte	0xcdd
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x1a1
	.4byte	0xced
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF211
	.byte	0xe
	.byte	0x37
	.byte	0x3
	.4byte	0xc82
	.uleb128 0x6
	.4byte	0xced
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF212
	.uleb128 0x2
	.byte	0x1
	.byte	0x10
	.4byte	.LASF213
	.uleb128 0x2
	.byte	0x2
	.byte	0x10
	.4byte	.LASF214
	.uleb128 0x2
	.byte	0x4
	.byte	0x10
	.4byte	.LASF215
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF216
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF217
	.uleb128 0x2f
	.4byte	0xd33
	.uleb128 0x1b
	.4byte	0x2d0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xd28
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF218
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF219
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xf
	.byte	0x14
	.byte	0xe
	.4byte	.LASF221
	.4byte	0xd84
	.uleb128 0x13
	.4byte	.LASF222
	.byte	0
	.uleb128 0x13
	.4byte	.LASF223
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF224
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF225
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF226
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF228
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF229
	.byte	0xf
	.byte	0x1c
	.byte	0x3
	.4byte	0xd47
	.uleb128 0x2d
	.byte	0x4
	.byte	0x10
	.byte	0x77
	.byte	0x10
	.4byte	.LASF231
	.4byte	0xe40
	.uleb128 0x30
	.byte	0x4
	.byte	0x10
	.byte	0x78
	.byte	0xb
	.4byte	0xe39
	.uleb128 0x31
	.byte	0x4
	.byte	0x10
	.byte	0x79
	.byte	0x10
	.4byte	0xe20
	.uleb128 0x32
	.4byte	.LASF233
	.byte	0x10
	.byte	0x7a
	.byte	0x1d
	.4byte	0xd84
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x32
	.4byte	.LASF234
	.byte	0x10
	.byte	0x7b
	.byte	0x16
	.4byte	0x1b2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x32
	.4byte	.LASF235
	.byte	0x10
	.byte	0x7c
	.byte	0x16
	.4byte	0x1b2
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x32
	.4byte	.LASF236
	.byte	0x10
	.byte	0x7d
	.byte	0x16
	.4byte	0x1b2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x32
	.4byte	.LASF237
	.byte	0x10
	.byte	0x7e
	.byte	0x16
	.4byte	0x1b2
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x32
	.4byte	.LASF238
	.byte	0x10
	.byte	0x7f
	.byte	0x16
	.4byte	0x1b2
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x32
	.4byte	.LASF239
	.byte	0x10
	.byte	0x80
	.byte	0x16
	.4byte	0x1b2
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF240
	.byte	0x10
	.byte	0x81
	.byte	0xb
	.4byte	0xda6
	.uleb128 0x33
	.4byte	.LASF241
	.byte	0x10
	.byte	0x82
	.byte	0x12
	.4byte	0x1b2
	.byte	0
	.uleb128 0x34
	.4byte	0xd9d
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF242
	.byte	0x10
	.byte	0x84
	.byte	0x3
	.4byte	0xd90
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x11
	.byte	0x24
	.byte	0xe
	.4byte	.LASF243
	.4byte	0xe77
	.uleb128 0x13
	.4byte	.LASF244
	.byte	0
	.uleb128 0x13
	.4byte	.LASF245
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF246
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF247
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF248
	.byte	0x11
	.byte	0x29
	.byte	0x3
	.4byte	0xe4c
	.uleb128 0x3
	.4byte	.LASF249
	.byte	0x12
	.byte	0x28
	.byte	0x11
	.4byte	0xd33
	.uleb128 0x3
	.4byte	.LASF250
	.byte	0x13
	.byte	0x52
	.byte	0xd
	.4byte	0x151
	.uleb128 0x3
	.4byte	.LASF251
	.byte	0x13
	.byte	0x53
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF252
	.byte	0x13
	.byte	0x59
	.byte	0x12
	.4byte	0x1b2
	.uleb128 0x3
	.4byte	.LASF253
	.byte	0x4
	.byte	0x5d
	.byte	0x26
	.4byte	0xebf
	.uleb128 0xa
	.byte	0x4
	.4byte	0xec5
	.uleb128 0x35
	.4byte	.LASF255
	.uleb128 0x3
	.4byte	.LASF254
	.byte	0x14
	.byte	0x37
	.byte	0x22
	.4byte	0xed6
	.uleb128 0xa
	.byte	0x4
	.4byte	0xedc
	.uleb128 0x35
	.4byte	.LASF256
	.uleb128 0x36
	.string	"TAG"
	.byte	0x1
	.byte	0xe
	.byte	0x14
	.4byte	0x2f3
	.uleb128 0x8
	.4byte	0x2f9
	.4byte	0xefd
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0xeed
	.uleb128 0x37
	.4byte	.LASF257
	.byte	0x1
	.byte	0x10
	.byte	0x1a
	.4byte	0xefd
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL10STATE_NAME
	.uleb128 0x37
	.4byte	.LASF258
	.byte	0x1
	.byte	0x11
	.byte	0x1a
	.4byte	0xefd
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL9RATE_NAME
	.uleb128 0x37
	.4byte	.LASF259
	.byte	0x1
	.byte	0x1a
	.byte	0x16
	.4byte	0xeca
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL12motion_queue
	.uleb128 0xa
	.byte	0x4
	.4byte	0x461
	.uleb128 0x6
	.4byte	0xf38
	.uleb128 0x38
	.byte	0x4
	.4byte	0x8f1
	.uleb128 0x38
	.byte	0x4
	.4byte	0x461
	.uleb128 0xa
	.byte	0x4
	.4byte	0x8f6
	.uleb128 0xa
	.byte	0x4
	.4byte	0x8f1
	.uleb128 0x6
	.4byte	0xf55
	.uleb128 0xa
	.byte	0x4
	.4byte	0x8fb
	.uleb128 0x38
	.byte	0x4
	.4byte	0xc57
	.uleb128 0x37
	.4byte	.LASF260
	.byte	0x1
	.byte	0x1f
	.byte	0x24
	.4byte	0x461
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL5state
	.uleb128 0x37
	.4byte	.LASF209
	.byte	0x1
	.byte	0x21
	.byte	0x16
	.4byte	0xc2c
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL4rate
	.uleb128 0x31
	.byte	0x2
	.byte	0x1
	.byte	0x24
	.byte	0xf
	.4byte	0xfb4
	.uleb128 0x2b
	.4byte	.LASF261
	.byte	0x1
	.byte	0x25
	.byte	0xa
	.4byte	0xa84
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF262
	.byte	0x1
	.byte	0x26
	.byte	0xa
	.4byte	0xa84
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0xf90
	.4byte	0xfc4
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.4byte	.LASF263
	.byte	0x1
	.byte	0x27
	.byte	0x3
	.4byte	0xfb4
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL6manual
	.uleb128 0x39
	.4byte	.LASF265
	.byte	0x14
	.2byte	0x270
	.byte	0xc
	.4byte	0xe8f
	.4byte	0xffc
	.uleb128 0x1b
	.4byte	0xeca
	.uleb128 0x1b
	.4byte	0x2fe
	.uleb128 0x1b
	.4byte	0xea7
	.uleb128 0x1b
	.4byte	0xe8f
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF266
	.byte	0x16
	.byte	0x3f
	.byte	0x10
	.4byte	0xe8f
	.4byte	0x1030
	.uleb128 0x1b
	.4byte	0xe83
	.uleb128 0x1b
	.4byte	0x2f3
	.uleb128 0x1b
	.4byte	0x1b2
	.uleb128 0x1b
	.4byte	0x2d0
	.uleb128 0x1b
	.4byte	0xe9b
	.uleb128 0x1b
	.4byte	0x1030
	.uleb128 0x1b
	.4byte	0xe8f
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xeb3
	.uleb128 0x6
	.4byte	0x1030
	.uleb128 0x39
	.4byte	.LASF267
	.byte	0x14
	.2byte	0x5a2
	.byte	0x13
	.4byte	0xeca
	.4byte	0x105c
	.uleb128 0x1b
	.4byte	0xe9b
	.uleb128 0x1b
	.4byte	0xe9b
	.uleb128 0x1b
	.4byte	0x17d
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF268
	.byte	0x17
	.byte	0x38
	.byte	0x6
	.4byte	.LASF269
	.4byte	0xa84
	.4byte	0x1076
	.uleb128 0x1b
	.4byte	0xad2
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF342
	.byte	0x17
	.byte	0x1b
	.byte	0x6
	.4byte	.LASF343
	.4byte	0xa84
	.uleb128 0x3b
	.4byte	.LASF270
	.byte	0x17
	.byte	0x2f
	.byte	0xa
	.4byte	.LASF271
	.4byte	0x1b2
	.4byte	0x10a0
	.uleb128 0x1b
	.4byte	0xad2
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF272
	.byte	0x17
	.byte	0x32
	.byte	0xb
	.4byte	.LASF273
	.4byte	0x305
	.4byte	0x10bf
	.uleb128 0x1b
	.4byte	0xad2
	.uleb128 0x1b
	.4byte	0x1a1
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF274
	.byte	0x17
	.byte	0x35
	.byte	0xb
	.4byte	.LASF275
	.4byte	0x305
	.4byte	0x10de
	.uleb128 0x1b
	.4byte	0xad2
	.uleb128 0x1b
	.4byte	0x1a1
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF322
	.byte	0x18
	.byte	0x26
	.byte	0x6
	.4byte	0x10fb
	.uleb128 0x1b
	.4byte	0xe40
	.uleb128 0x1b
	.4byte	0x2f3
	.uleb128 0x1b
	.4byte	0x2f3
	.uleb128 0x3e
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF344
	.byte	0x19
	.byte	0x26
	.byte	0xa
	.4byte	0x1b2
	.uleb128 0x39
	.4byte	.LASF276
	.byte	0x14
	.2byte	0x339
	.byte	0xc
	.4byte	0xe8f
	.4byte	0x1128
	.uleb128 0x1b
	.4byte	0xeca
	.uleb128 0x1b
	.4byte	0x2d0
	.uleb128 0x1b
	.4byte	0xea7
	.byte	0
	.uleb128 0x40
	.4byte	0x624
	.4byte	0x1136
	.byte	0x3
	.4byte	0x115a
	.uleb128 0x41
	.4byte	.LASF279
	.4byte	0xf3e
	.uleb128 0x42
	.string	"__i"
	.byte	0x2
	.2byte	0x120
	.byte	0x11
	.4byte	0xc57
	.uleb128 0x42
	.string	"__m"
	.byte	0x2
	.2byte	0x120
	.byte	0x23
	.4byte	0x42a
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xc57
	.uleb128 0x43
	.4byte	0x909
	.byte	0x3
	.4byte	0x118e
	.uleb128 0x21
	.string	"_Tp"
	.4byte	0xc57
	.uleb128 0x44
	.4byte	.LASF277
	.byte	0x15
	.2byte	0x3c9
	.byte	0x1c
	.4byte	0xf66
	.uleb128 0x45
	.4byte	.LASF278
	.byte	0x15
	.2byte	0x3cb
	.byte	0x8
	.4byte	0x115a
	.byte	0
	.uleb128 0x40
	.4byte	0x66e
	.4byte	0x119c
	.byte	0x3
	.4byte	0x11ce
	.uleb128 0x41
	.4byte	.LASF279
	.4byte	0xf5b
	.uleb128 0x42
	.string	"__m"
	.byte	0x2
	.2byte	0x130
	.byte	0x19
	.4byte	0x42a
	.uleb128 0x46
	.4byte	.LASF280
	.byte	0x2
	.2byte	0x132
	.byte	0x1d
	.4byte	0x2d7
	.byte	0x4
	.uleb128 0x45
	.4byte	.LASF278
	.byte	0x2
	.2byte	0x133
	.byte	0x7
	.4byte	0x115a
	.byte	0
	.uleb128 0x40
	.4byte	0x590
	.4byte	0x11dc
	.byte	0x3
	.4byte	0x11f3
	.uleb128 0x41
	.4byte	.LASF279
	.4byte	0xf3e
	.uleb128 0x42
	.string	"__i"
	.byte	0x2
	.2byte	0x103
	.byte	0x15
	.4byte	0xc57
	.byte	0
	.uleb128 0x40
	.4byte	0x554
	.4byte	0x1201
	.byte	0x3
	.4byte	0x120b
	.uleb128 0x41
	.4byte	.LASF279
	.4byte	0xf5b
	.byte	0
	.uleb128 0x47
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x122
	.byte	0x10
	.4byte	.LASF283
	.4byte	0xc57
	.4byte	.LFB778
	.4byte	.LFE778-.LFB778
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1294
	.uleb128 0x48
	.4byte	0x11f3
	.4byte	.LBI186
	.byte	.LVU577
	.4byte	.LBB186
	.4byte	.LBE186-.LBB186
	.byte	0x1
	.2byte	0x123
	.byte	0xc
	.uleb128 0x49
	.4byte	0x1201
	.4byte	.LLST76
	.4byte	.LVUS76
	.uleb128 0x4a
	.4byte	0x118e
	.4byte	.LBI187
	.byte	.LVU578
	.4byte	.LBB187
	.4byte	.LBE187-.LBB187
	.byte	0x2
	.byte	0xfd
	.byte	0x14
	.uleb128 0x49
	.4byte	0x119c
	.4byte	.LLST77
	.4byte	.LVUS77
	.uleb128 0x49
	.4byte	0x11a5
	.4byte	.LLST78
	.4byte	.LVUS78
	.uleb128 0x4b
	.4byte	0x11b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4c
	.4byte	0x11c0
	.4byte	.LLST79
	.4byte	.LVUS79
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x11c
	.byte	0xb
	.4byte	.LASF284
	.4byte	0x305
	.4byte	.LFB777
	.4byte	.LFE777-.LFB777
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12f3
	.uleb128 0x4d
	.string	"cmd"
	.byte	0x1
	.2byte	0x11d
	.byte	0x12
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4e
	.4byte	.LVL148
	.4byte	0x27d6
	.4byte	0x12e1
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x50
	.4byte	.LVL149
	.4byte	0x1543
	.uleb128 0x4f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x114
	.byte	0xb
	.4byte	.LASF286
	.4byte	0x305
	.4byte	.LFB776
	.4byte	.LFE776-.LFB776
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1375
	.uleb128 0x51
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x114
	.byte	0x1f
	.4byte	0x1a1
	.4byte	.LLST75
	.4byte	.LVUS75
	.uleb128 0x52
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x114
	.byte	0x31
	.4byte	0x1a1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4d
	.string	"cmd"
	.byte	0x1
	.2byte	0x115
	.byte	0x12
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4e
	.4byte	.LVL145
	.4byte	0x27d6
	.4byte	0x1364
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x50
	.4byte	.LVL146
	.4byte	0x1543
	.uleb128 0x4f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x10d
	.byte	0xb
	.4byte	.LASF288
	.4byte	0x305
	.4byte	.LFB775
	.4byte	.LFE775-.LFB775
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13e7
	.uleb128 0x53
	.string	"on"
	.byte	0x1
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xa84
	.4byte	.LLST74
	.4byte	.LVUS74
	.uleb128 0x4d
	.string	"cmd"
	.byte	0x1
	.2byte	0x10e
	.byte	0x12
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4e
	.4byte	.LVL141
	.4byte	0x27d6
	.4byte	0x13d6
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x50
	.4byte	.LVL142
	.4byte	0x1543
	.uleb128 0x4f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x106
	.byte	0xb
	.4byte	.LASF291
	.4byte	0x305
	.4byte	.LFB774
	.4byte	.LFE774-.LFB774
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1459
	.uleb128 0x53
	.string	"a"
	.byte	0x1
	.2byte	0x106
	.byte	0x1e
	.4byte	0xad2
	.4byte	.LLST73
	.4byte	.LVUS73
	.uleb128 0x4d
	.string	"cmd"
	.byte	0x1
	.2byte	0x107
	.byte	0x12
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4e
	.4byte	.LVL137
	.4byte	0x27d6
	.4byte	0x1447
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x50
	.4byte	.LVL138
	.4byte	0x1543
	.uleb128 0x4f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x54
	.4byte	.LASF292
	.byte	0x1
	.byte	0xfe
	.byte	0xb
	.4byte	.LASF295
	.4byte	0x305
	.4byte	.LFB773
	.4byte	.LFE773-.LFB773
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14d5
	.uleb128 0x55
	.string	"a"
	.byte	0x1
	.byte	0xfe
	.byte	0x1e
	.4byte	0xad2
	.4byte	.LLST72
	.4byte	.LVUS72
	.uleb128 0x56
	.4byte	.LASF262
	.byte	0x1
	.byte	0xfe
	.byte	0x26
	.4byte	0xa84
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x57
	.string	"cmd"
	.byte	0x1
	.byte	0xff
	.byte	0x12
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4e
	.4byte	.LVL133
	.4byte	0x27d6
	.4byte	0x14c4
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x50
	.4byte	.LVL134
	.4byte	0x1543
	.uleb128 0x4f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x54
	.4byte	.LASF294
	.byte	0x1
	.byte	0xf7
	.byte	0xb
	.4byte	.LASF296
	.4byte	0x305
	.4byte	.LFB772
	.4byte	.LFE772-.LFB772
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1543
	.uleb128 0x55
	.string	"r"
	.byte	0x1
	.byte	0xf7
	.byte	0x29
	.4byte	0xc2c
	.4byte	.LLST71
	.4byte	.LVUS71
	.uleb128 0x57
	.string	"cmd"
	.byte	0x1
	.byte	0xf8
	.byte	0x12
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4e
	.4byte	.LVL129
	.4byte	0x27d6
	.4byte	0x1532
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x50
	.4byte	.LVL130
	.4byte	0x1543
	.uleb128 0x4f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x54
	.4byte	.LASF297
	.byte	0x1
	.byte	0xef
	.byte	0xb
	.4byte	.LASF298
	.4byte	0x305
	.4byte	.LFB771
	.4byte	.LFE771-.LFB771
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1638
	.uleb128 0x58
	.string	"cmd"
	.byte	0x1
	.byte	0xef
	.byte	0x24
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x56
	.4byte	.LASF299
	.byte	0x1
	.byte	0xef
	.byte	0x32
	.4byte	0x1b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x59
	.4byte	0x1591
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xf1
	.byte	0x9c
	.4byte	0xe40
	.byte	0
	.uleb128 0x5b
	.4byte	.LBB185
	.4byte	.LBE185-.LBB185
	.4byte	0x15ac
	.uleb128 0x5c
	.4byte	.LASF300
	.byte	0x1
	.byte	0xf1
	.2byte	0x119
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x15bf
	.uleb128 0x5c
	.4byte	.LASF300
	.byte	0x1
	.byte	0xf1
	.2byte	0x11a
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x15d2
	.uleb128 0x5c
	.4byte	.LASF300
	.byte	0x1
	.byte	0xf1
	.2byte	0x11c
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x15e4
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xf1
	.byte	0xe2
	.4byte	0xe40
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL125
	.4byte	0xfd6
	.4byte	0x1604
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL126
	.4byte	0x10fb
	.uleb128 0x50
	.4byte	.LVL127
	.4byte	0x10de
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x54
	.4byte	.LASF301
	.byte	0x1
	.byte	0xdc
	.byte	0xb
	.4byte	.LASF302
	.4byte	0x305
	.4byte	.LFB770
	.4byte	.LFE770-.LFB770
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1846
	.uleb128 0x5b
	.4byte	.LBB175
	.4byte	.LBE175-.LBB175
	.4byte	0x1670
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xdf
	.byte	0x9e
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1682
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xdf
	.byte	0xf4
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1694
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xdf
	.byte	0xf5
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x16a6
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xdf
	.byte	0xf7
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x16b8
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xdf
	.byte	0xbc
	.4byte	0xe40
	.byte	0
	.uleb128 0x5b
	.4byte	.LBB181
	.4byte	.LBE181-.LBB181
	.4byte	0x16d2
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xe4
	.byte	0x9e
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x16e4
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xe4
	.byte	0xec
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x16f6
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xe4
	.byte	0xed
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1708
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xe4
	.byte	0xef
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x171a
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xe4
	.byte	0xb4
	.4byte	0xe40
	.byte	0
	.uleb128 0x5e
	.4byte	0x26b5
	.4byte	.LBI177
	.byte	.LVU454
	.4byte	.LBB177
	.4byte	.LBE177-.LBB177
	.byte	0x1
	.byte	0xe3
	.byte	0x14
	.4byte	0x17be
	.uleb128 0x49
	.4byte	0x26c7
	.4byte	.LLST65
	.4byte	.LVUS65
	.uleb128 0x49
	.4byte	0x26d4
	.4byte	.LLST66
	.4byte	.LVUS66
	.uleb128 0x49
	.4byte	0x26e1
	.4byte	.LLST67
	.4byte	.LVUS67
	.uleb128 0x49
	.4byte	0x26ee
	.4byte	.LLST68
	.4byte	.LVUS68
	.uleb128 0x49
	.4byte	0x26fb
	.4byte	.LLST69
	.4byte	.LVUS69
	.uleb128 0x49
	.4byte	0x2708
	.4byte	.LLST68
	.4byte	.LVUS68
	.uleb128 0x50
	.4byte	.LVL121
	.4byte	0xffc
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	_Z11motion_taskPv
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL117
	.4byte	0x103b
	.4byte	0x17db
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL118
	.4byte	0x10fb
	.uleb128 0x4e
	.4byte	.LVL119
	.4byte	0x10de
	.4byte	0x1812
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL122
	.4byte	0x10fb
	.uleb128 0x50
	.4byte	.LVL123
	.4byte	0x10de
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x5f
	.4byte	.LASF303
	.byte	0x1
	.byte	0xcb
	.byte	0x6
	.4byte	.LASF304
	.4byte	.LFB769
	.4byte	.LFE769-.LFB769
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18ba
	.uleb128 0x60
	.4byte	.LASF305
	.byte	0x1
	.byte	0xcb
	.byte	0x18
	.4byte	0x2d0
	.4byte	.LLST64
	.4byte	.LVUS64
	.uleb128 0x57
	.string	"cmd"
	.byte	0x1
	.byte	0xcc
	.byte	0x12
	.4byte	0xced
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4e
	.4byte	.LVL114
	.4byte	0x1107
	.4byte	0x189c
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL115
	.4byte	0x1bde
	.4byte	0x18b0
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL116
	.4byte	0x18ba
	.byte	0
	.uleb128 0x61
	.4byte	.LASF307
	.byte	0x1
	.byte	0xb1
	.byte	0xd
	.4byte	.LFB768
	.4byte	.LFE768-.LFB768
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bde
	.uleb128 0x62
	.4byte	.LASF306
	.byte	0x1
	.byte	0xb2
	.byte	0xa
	.4byte	0xa84
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x59
	.4byte	0x18f6
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xbe
	.byte	0x9c
	.4byte	0xe40
	.byte	0
	.uleb128 0x5b
	.4byte	.LBB162
	.4byte	.LBE162-.LBB162
	.4byte	0x1911
	.uleb128 0x5c
	.4byte	.LASF300
	.byte	0x1
	.byte	0xbe
	.2byte	0x123
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1924
	.uleb128 0x5c
	.4byte	.LASF300
	.byte	0x1
	.byte	0xbe
	.2byte	0x124
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1937
	.uleb128 0x5c
	.4byte	.LASF300
	.byte	0x1
	.byte	0xbe
	.2byte	0x126
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1949
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xbe
	.byte	0xec
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x195b
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xc4
	.byte	0x9c
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x196d
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xc4
	.byte	0xbc
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x197f
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xc4
	.byte	0xbd
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1991
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xc4
	.byte	0xbf
	.4byte	0xe40
	.byte	0
	.uleb128 0x5b
	.4byte	.LBB169
	.4byte	.LBE169-.LBB169
	.4byte	0x19ab
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0xc4
	.byte	0x85
	.4byte	0xe40
	.byte	0
	.uleb128 0x5e
	.4byte	0x11f3
	.4byte	.LBI153
	.byte	.LVU343
	.4byte	.LBB153
	.4byte	.LBE153-.LBB153
	.byte	0x1
	.byte	0xb5
	.byte	0x14
	.4byte	0x1a17
	.uleb128 0x49
	.4byte	0x1201
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0x4a
	.4byte	0x118e
	.4byte	.LBI154
	.byte	.LVU344
	.4byte	.LBB154
	.4byte	.LBE154-.LBB154
	.byte	0x2
	.byte	0xfd
	.byte	0x14
	.uleb128 0x49
	.4byte	0x119c
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x49
	.4byte	0x11a5
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x4b
	.4byte	0x11b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4c
	.4byte	0x11c0
	.4byte	.LLST55
	.4byte	.LVUS55
	.byte	0
	.byte	0
	.uleb128 0x5e
	.4byte	0x11f3
	.4byte	.LBI157
	.byte	.LVU356
	.4byte	.LBB157
	.4byte	.LBE157-.LBB157
	.byte	0x1
	.byte	0xbc
	.byte	0x15
	.4byte	0x1a83
	.uleb128 0x49
	.4byte	0x1201
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x4a
	.4byte	0x118e
	.4byte	.LBI158
	.byte	.LVU357
	.4byte	.LBB158
	.4byte	.LBE158-.LBB158
	.byte	0x2
	.byte	0xfd
	.byte	0x14
	.uleb128 0x49
	.4byte	0x119c
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x49
	.4byte	0x11a5
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0x4b
	.4byte	0x11b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4c
	.4byte	0x11c0
	.4byte	.LLST59
	.4byte	.LVUS59
	.byte	0
	.byte	0
	.uleb128 0x5e
	.4byte	0x11f3
	.4byte	.LBI164
	.byte	.LVU364
	.4byte	.LBB164
	.4byte	.LBE164-.LBB164
	.byte	0x1
	.byte	0xc3
	.byte	0x9
	.4byte	0x1aef
	.uleb128 0x49
	.4byte	0x1201
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x4a
	.4byte	0x118e
	.4byte	.LBI165
	.byte	.LVU365
	.4byte	.LBB165
	.4byte	.LBE165-.LBB165
	.byte	0x2
	.byte	0xfd
	.byte	0x14
	.uleb128 0x49
	.4byte	0x119c
	.4byte	.LLST61
	.4byte	.LVUS61
	.uleb128 0x49
	.4byte	0x11a5
	.4byte	.LLST62
	.4byte	.LVUS62
	.uleb128 0x4b
	.4byte	0x11b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4c
	.4byte	0x11c0
	.4byte	.LLST63
	.4byte	.LVUS63
	.byte	0
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL90
	.4byte	0x1076
	.uleb128 0x5d
	.4byte	.LVL93
	.4byte	0x2134
	.uleb128 0x4e
	.4byte	.LVL94
	.4byte	0x24a3
	.4byte	0x1b14
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL102
	.4byte	0x24a3
	.4byte	0x1b27
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL103
	.4byte	0x10fb
	.uleb128 0x4e
	.4byte	.LVL104
	.4byte	0x10de
	.4byte	0x1b5e
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL107
	.4byte	0x105c
	.4byte	0x1b71
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL108
	.4byte	0x105c
	.4byte	0x1b84
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL109
	.4byte	0x10fb
	.uleb128 0x4e
	.4byte	.LVL110
	.4byte	0x10de
	.4byte	0x1bbb
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL111
	.4byte	0x24a3
	.4byte	0x1bce
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x50
	.4byte	.LVL112
	.4byte	0x21aa
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x61
	.4byte	.LASF308
	.byte	0x1
	.byte	0x70
	.byte	0xd
	.4byte	.LFB767
	.4byte	.LFE767-.LFB767
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2062
	.uleb128 0x55
	.string	"cmd"
	.byte	0x1
	.byte	0x70
	.byte	0x2c
	.4byte	0x2062
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x59
	.4byte	0x1c1a
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x75
	.byte	0x9c
	.4byte	0xe40
	.byte	0
	.uleb128 0x5b
	.4byte	.LBB133
	.4byte	.LBE133-.LBB133
	.4byte	0x1c35
	.uleb128 0x5c
	.4byte	.LASF300
	.byte	0x1
	.byte	0x75
	.2byte	0x120
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1c48
	.uleb128 0x5c
	.4byte	.LASF300
	.byte	0x1
	.byte	0x75
	.2byte	0x121
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1c5b
	.uleb128 0x5c
	.4byte	.LASF300
	.byte	0x1
	.byte	0x75
	.2byte	0x123
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1c6d
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x75
	.byte	0xe9
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1c7f
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x7c
	.byte	0xa0
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1c91
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x7c
	.byte	0xf0
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1ca3
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x7c
	.byte	0xf1
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1cb5
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x7c
	.byte	0xf3
	.4byte	0xe40
	.byte	0
	.uleb128 0x5b
	.4byte	.LBB137
	.4byte	.LBE137-.LBB137
	.4byte	0x1ccf
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x7c
	.byte	0xb9
	.4byte	0xe40
	.byte	0
	.uleb128 0x5b
	.4byte	.LBB138
	.4byte	.LBE138-.LBB138
	.4byte	0x1cff
	.uleb128 0x63
	.string	"i"
	.byte	0x1
	.byte	0x7e
	.byte	0x16
	.4byte	0x151
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x50
	.4byte	.LVL64
	.4byte	0x21aa
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x59
	.4byte	0x1d11
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x95
	.byte	0xa4
	.4byte	0xe40
	.byte	0
	.uleb128 0x5b
	.4byte	.LBB148
	.4byte	.LBE148-.LBB148
	.4byte	0x1d2c
	.uleb128 0x5c
	.4byte	.LASF300
	.byte	0x1
	.byte	0x95
	.2byte	0x11c
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1d3f
	.uleb128 0x5c
	.4byte	.LASF300
	.byte	0x1
	.byte	0x95
	.2byte	0x11d
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1d52
	.uleb128 0x5c
	.4byte	.LASF300
	.byte	0x1
	.byte	0x95
	.2byte	0x11f
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x1d64
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x95
	.byte	0xe5
	.4byte	0xe40
	.byte	0
	.uleb128 0x5b
	.4byte	.LBB149
	.4byte	.LBE149-.LBB149
	.4byte	0x1d94
	.uleb128 0x63
	.string	"i"
	.byte	0x1
	.byte	0x9f
	.byte	0x16
	.4byte	0x151
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x50
	.4byte	.LVL83
	.4byte	0x10bf
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5e
	.4byte	0x11f3
	.4byte	.LBI128
	.byte	.LVU184
	.4byte	.LBB128
	.4byte	.LBE128-.LBB128
	.byte	0x1
	.byte	0x73
	.byte	0x9
	.4byte	0x1e00
	.uleb128 0x49
	.4byte	0x1201
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x4a
	.4byte	0x118e
	.4byte	.LBI129
	.byte	.LVU185
	.4byte	.LBB129
	.4byte	.LBE129-.LBB129
	.byte	0x2
	.byte	0xfd
	.byte	0x14
	.uleb128 0x49
	.4byte	0x119c
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x49
	.4byte	0x11a5
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x4b
	.4byte	0x11b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4c
	.4byte	0x11c0
	.4byte	.LLST36
	.4byte	.LVUS36
	.byte	0
	.byte	0
	.uleb128 0x5e
	.4byte	0x11f3
	.4byte	.LBI139
	.byte	.LVU250
	.4byte	.LBB139
	.4byte	.LBE139-.LBB139
	.byte	0x1
	.byte	0x85
	.byte	0x11
	.4byte	0x1e6c
	.uleb128 0x49
	.4byte	0x1201
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x4a
	.4byte	0x118e
	.4byte	.LBI140
	.byte	.LVU251
	.4byte	.LBB140
	.4byte	.LBE140-.LBB140
	.byte	0x2
	.byte	0xfd
	.byte	0x14
	.uleb128 0x49
	.4byte	0x119c
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x49
	.4byte	0x11a5
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x4b
	.4byte	0x11b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4c
	.4byte	0x11c0
	.4byte	.LLST41
	.4byte	.LVUS41
	.byte	0
	.byte	0
	.uleb128 0x5e
	.4byte	0x11f3
	.4byte	.LBI143
	.byte	.LVU276
	.4byte	.LBB143
	.4byte	.LBE143-.LBB143
	.byte	0x1
	.byte	0x93
	.byte	0x11
	.4byte	0x1ed8
	.uleb128 0x49
	.4byte	0x1201
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x4a
	.4byte	0x118e
	.4byte	.LBI144
	.byte	.LVU277
	.4byte	.LBB144
	.4byte	.LBE144-.LBB144
	.byte	0x2
	.byte	0xfd
	.byte	0x14
	.uleb128 0x49
	.4byte	0x119c
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x49
	.4byte	0x11a5
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x4b
	.4byte	0x11b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4c
	.4byte	0x11c0
	.4byte	.LLST45
	.4byte	.LVUS45
	.byte	0
	.byte	0
	.uleb128 0x5e
	.4byte	0x11f3
	.4byte	.LBI150
	.byte	.LVU326
	.4byte	.LBB150
	.4byte	.LBE150-.LBB150
	.byte	0x1
	.byte	0xa6
	.byte	0x11
	.4byte	0x1f44
	.uleb128 0x49
	.4byte	0x1201
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x4a
	.4byte	0x118e
	.4byte	.LBI151
	.byte	.LVU327
	.4byte	.LBB151
	.4byte	.LBE151-.LBB151
	.byte	0x2
	.byte	0xfd
	.byte	0x14
	.uleb128 0x49
	.4byte	0x119c
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x49
	.4byte	0x11a5
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x4b
	.4byte	0x11b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4c
	.4byte	0x11c0
	.4byte	.LLST50
	.4byte	.LVUS50
	.byte	0
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL58
	.4byte	0x10fb
	.uleb128 0x4e
	.4byte	.LVL59
	.4byte	0x10de
	.4byte	0x1f7b
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL61
	.4byte	0x10fb
	.uleb128 0x4e
	.4byte	.LVL62
	.4byte	0x10de
	.4byte	0x1fb2
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL68
	.4byte	0x2068
	.uleb128 0x5d
	.4byte	.LVL69
	.4byte	0x21aa
	.uleb128 0x5d
	.4byte	.LVL71
	.4byte	0x21aa
	.uleb128 0x5d
	.4byte	.LVL74
	.4byte	0x10fb
	.uleb128 0x4e
	.4byte	.LVL75
	.4byte	0x10de
	.4byte	0x2004
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL76
	.4byte	0x24a3
	.uleb128 0x4e
	.4byte	.LVL77
	.4byte	0x21aa
	.4byte	0x2020
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL79
	.4byte	0x2134
	.uleb128 0x4e
	.4byte	.LVL80
	.4byte	0x24a3
	.4byte	0x203c
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL86
	.4byte	0x2134
	.uleb128 0x4e
	.4byte	.LVL88
	.4byte	0x24a3
	.4byte	0x2058
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL89
	.4byte	0x2167
	.byte	0
	.uleb128 0x38
	.byte	0x4
	.4byte	0xcf9
	.uleb128 0x61
	.4byte	.LASF309
	.byte	0x1
	.byte	0x68
	.byte	0xd
	.4byte	.LFB766
	.4byte	.LFE766-.LFB766
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2134
	.uleb128 0x59
	.4byte	0x2090
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x69
	.byte	0x98
	.4byte	0xe40
	.byte	0
	.uleb128 0x5b
	.4byte	.LBB126
	.4byte	.LBE126-.LBB126
	.4byte	0x20aa
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x69
	.byte	0xb6
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x20bc
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x69
	.byte	0xb7
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x20ce
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x69
	.byte	0xb9
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x20e0
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x69
	.byte	0x7f
	.4byte	0xe40
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL51
	.4byte	0x10fb
	.uleb128 0x4e
	.4byte	.LVL52
	.4byte	0x10de
	.4byte	0x2117
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL53
	.4byte	0x24a3
	.4byte	0x212a
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL54
	.4byte	0x2167
	.byte	0
	.uleb128 0x61
	.4byte	.LASF310
	.byte	0x1
	.byte	0x61
	.byte	0xd
	.4byte	.LFB765
	.4byte	.LFE765-.LFB765
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2167
	.uleb128 0x64
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.uleb128 0x63
	.string	"i"
	.byte	0x1
	.byte	0x62
	.byte	0xe
	.4byte	0x151
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.byte	0
	.uleb128 0x61
	.4byte	.LASF311
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.4byte	.LFB764
	.4byte	.LFE764-.LFB764
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21aa
	.uleb128 0x64
	.4byte	.LBB124
	.4byte	.LBE124-.LBB124
	.uleb128 0x63
	.string	"i"
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.4byte	0x151
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x50
	.4byte	.LVL49
	.4byte	0x21aa
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x61
	.4byte	.LASF312
	.byte	0x1
	.byte	0x4b
	.byte	0xd
	.4byte	.LFB763
	.4byte	.LFE763-.LFB763
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x243e
	.uleb128 0x58
	.string	"a"
	.byte	0x1
	.byte	0x4b
	.byte	0x1f
	.4byte	0xad2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x62
	.4byte	.LASF313
	.byte	0x1
	.byte	0x4e
	.byte	0xd
	.4byte	0x1a1
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x59
	.4byte	0x21f2
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x56
	.byte	0x98
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x2204
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x56
	.byte	0xf6
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x2216
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x56
	.byte	0xf7
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x2228
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x56
	.byte	0xf9
	.4byte	0xe40
	.byte	0
	.uleb128 0x5b
	.4byte	.LBB123
	.4byte	.LBE123-.LBB123
	.4byte	0x2242
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x56
	.byte	0xbf
	.4byte	0xe40
	.byte	0
	.uleb128 0x5e
	.4byte	0x11f3
	.4byte	.LBI113
	.byte	.LVU95
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.byte	0x1
	.byte	0x4c
	.byte	0x9
	.4byte	0x22ae
	.uleb128 0x49
	.4byte	0x1201
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x4a
	.4byte	0x118e
	.4byte	.LBI114
	.byte	.LVU96
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.byte	0x2
	.byte	0xfd
	.byte	0x14
	.uleb128 0x49
	.4byte	0x119c
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x49
	.4byte	0x11a5
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x4b
	.4byte	0x11b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4c
	.4byte	0x11c0
	.4byte	.LLST22
	.4byte	.LVUS22
	.byte	0
	.byte	0
	.uleb128 0x5e
	.4byte	0x11f3
	.4byte	.LBI116
	.byte	.LVU101
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.byte	0x1
	.byte	0x4c
	.byte	0x27
	.4byte	0x231a
	.uleb128 0x49
	.4byte	0x1201
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x4a
	.4byte	0x118e
	.4byte	.LBI117
	.byte	.LVU102
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.byte	0x2
	.byte	0xfd
	.byte	0x14
	.uleb128 0x49
	.4byte	0x119c
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x49
	.4byte	0x11a5
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x4b
	.4byte	0x11b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4c
	.4byte	0x11c0
	.4byte	.LLST26
	.4byte	.LVUS26
	.byte	0
	.byte	0
	.uleb128 0x5e
	.4byte	0x11f3
	.4byte	.LBI119
	.byte	.LVU109
	.4byte	.LBB119
	.4byte	.LBE119-.LBB119
	.byte	0x1
	.byte	0x4f
	.byte	0x9
	.4byte	0x2386
	.uleb128 0x49
	.4byte	0x1201
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x4a
	.4byte	0x118e
	.4byte	.LBI120
	.byte	.LVU110
	.4byte	.LBB120
	.4byte	.LBE120-.LBB120
	.byte	0x2
	.byte	0xfd
	.byte	0x14
	.uleb128 0x49
	.4byte	0x119c
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x49
	.4byte	0x11a5
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x4b
	.4byte	0x11b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4c
	.4byte	0x11c0
	.4byte	.LLST30
	.4byte	.LVUS30
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL36
	.4byte	0x243e
	.4byte	0x239a
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x4e
	.4byte	.LVL37
	.4byte	0x243e
	.4byte	0x23ae
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL39
	.4byte	0x10fb
	.uleb128 0x5d
	.4byte	.LVL40
	.4byte	0x27df
	.uleb128 0x4e
	.4byte	.LVL42
	.4byte	0x2747
	.4byte	0x23d4
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL43
	.4byte	0x27e8
	.uleb128 0x5d
	.4byte	.LVL44
	.4byte	0x27f1
	.uleb128 0x4e
	.4byte	.LVL45
	.4byte	0x10de
	.4byte	0x2427
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x4f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x50
	.4byte	.LVL46
	.4byte	0x10a0
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x65
	.4byte	.LASF345
	.byte	0x1
	.byte	0x34
	.byte	0x10
	.4byte	0x1a1
	.4byte	.LFB762
	.4byte	.LFE762-.LFB762
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24a3
	.uleb128 0x55
	.string	"a"
	.byte	0x1
	.byte	0x34
	.byte	0x26
	.4byte	0xad2
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x62
	.4byte	.LASF314
	.byte	0x1
	.byte	0x35
	.byte	0x13
	.4byte	0x1ad
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x4e
	.4byte	.LVL18
	.4byte	0x2747
	.4byte	0x2492
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x50
	.4byte	.LVL26
	.4byte	0x1086
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x61
	.4byte	.LASF315
	.byte	0x1
	.byte	0x29
	.byte	0xd
	.4byte	.LFB761
	.4byte	.LFE761-.LFB761
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26b5
	.uleb128 0x58
	.string	"s"
	.byte	0x1
	.byte	0x29
	.byte	0x26
	.4byte	0xc57
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x59
	.4byte	0x24d7
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x2b
	.byte	0x98
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x24e9
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x2b
	.byte	0xe2
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x24fb
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x2b
	.byte	0xe3
	.4byte	0xe40
	.byte	0
	.uleb128 0x59
	.4byte	0x250d
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x2b
	.byte	0xe5
	.4byte	0xe40
	.byte	0
	.uleb128 0x5b
	.4byte	.LBB105
	.4byte	.LBE105-.LBB105
	.4byte	0x2527
	.uleb128 0x5a
	.4byte	.LASF300
	.byte	0x1
	.byte	0x2b
	.byte	0xab
	.4byte	0xe40
	.byte	0
	.uleb128 0x5e
	.4byte	0x11f3
	.4byte	.LBI101
	.byte	.LVU12
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.byte	0x1
	.byte	0x2a
	.byte	0x9
	.4byte	0x2593
	.uleb128 0x49
	.4byte	0x1201
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x4a
	.4byte	0x118e
	.4byte	.LBI102
	.byte	.LVU13
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.byte	0x2
	.byte	0xfd
	.byte	0x14
	.uleb128 0x49
	.4byte	0x119c
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x49
	.4byte	0x11a5
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x4b
	.4byte	0x11b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4c
	.4byte	0x11c0
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.byte	0
	.uleb128 0x5e
	.4byte	0x11f3
	.4byte	.LBI106
	.byte	.LVU31
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.byte	0x1
	.byte	0x2b
	.byte	0x60
	.4byte	0x25ff
	.uleb128 0x49
	.4byte	0x1201
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x4a
	.4byte	0x118e
	.4byte	.LBI107
	.byte	.LVU32
	.4byte	.LBB107
	.4byte	.LBE107-.LBB107
	.byte	0x2
	.byte	0xfd
	.byte	0x14
	.uleb128 0x49
	.4byte	0x119c
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x49
	.4byte	0x11a5
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x4b
	.4byte	0x11b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4c
	.4byte	0x11c0
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.byte	0
	.uleb128 0x5e
	.4byte	0x11ce
	.4byte	.LBI109
	.byte	.LVU43
	.4byte	.LBB109
	.4byte	.LBE109-.LBB109
	.byte	0x1
	.byte	0x2c
	.byte	0xb
	.4byte	0x2671
	.uleb128 0x49
	.4byte	0x11dc
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x49
	.4byte	0x11e5
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x48
	.4byte	0x1128
	.4byte	.LBI111
	.byte	.LVU44
	.4byte	.LBB111
	.4byte	.LBE111-.LBB111
	.byte	0x2
	.2byte	0x104
	.byte	0xe
	.uleb128 0x49
	.4byte	0x1136
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x49
	.4byte	0x113f
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x49
	.4byte	0x114c
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL6
	.4byte	0x10fb
	.uleb128 0x50
	.4byte	.LVL8
	.4byte	0x10de
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x4f
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0xb
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	_ZL10STATE_NAME
	.byte	0x22
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x66
	.4byte	.LASF346
	.byte	0x4
	.2byte	0x173
	.byte	0x10
	.4byte	0xe8f
	.byte	0x3
	.4byte	0x2747
	.uleb128 0x44
	.4byte	.LASF316
	.byte	0x4
	.2byte	0x173
	.byte	0x2c
	.4byte	0xe83
	.uleb128 0x44
	.4byte	.LASF317
	.byte	0x4
	.2byte	0x174
	.byte	0x30
	.4byte	0x2f9
	.uleb128 0x44
	.4byte	.LASF318
	.byte	0x4
	.2byte	0x175
	.byte	0x2c
	.4byte	0x1be
	.uleb128 0x44
	.4byte	.LASF319
	.byte	0x4
	.2byte	0x176
	.byte	0x2a
	.4byte	0x2d2
	.uleb128 0x44
	.4byte	.LASF320
	.byte	0x4
	.2byte	0x177
	.byte	0x29
	.4byte	0xe9b
	.uleb128 0x44
	.4byte	.LASF321
	.byte	0x4
	.2byte	0x178
	.byte	0x32
	.4byte	0x1036
	.uleb128 0x67
	.4byte	.LASF266
	.byte	0x4
	.2byte	0x17e
	.byte	0x1b
	.4byte	0xe8f
	.uleb128 0x1b
	.4byte	0xe83
	.uleb128 0x1b
	.4byte	0x2f3
	.uleb128 0x1b
	.4byte	0x1b2
	.uleb128 0x1b
	.4byte	0x2d0
	.uleb128 0x1b
	.4byte	0xe9b
	.uleb128 0x1b
	.4byte	0x1030
	.uleb128 0x1b
	.4byte	0xe8f
	.byte	0
	.byte	0
	.uleb128 0x54
	.4byte	.LASF323
	.byte	0x3
	.byte	0x76
	.byte	0x14
	.4byte	.LASF324
	.4byte	0x1b2
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27a5
	.uleb128 0x55
	.string	"a"
	.byte	0x3
	.byte	0x76
	.byte	0x2d
	.4byte	0xad2
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x68
	.4byte	.LASF325
	.byte	0x3
	.byte	0x78
	.byte	0x18
	.4byte	0x1db
	.4byte	0x335b98c9
	.uleb128 0x4e
	.4byte	.LVL14
	.4byte	0x27a5
	.4byte	0x279b
	.uleb128 0x4f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x5d
	.4byte	.LVL15
	.4byte	0x27fa
	.byte	0
	.uleb128 0x54
	.4byte	.LASF326
	.byte	0x3
	.byte	0x67
	.byte	0x14
	.4byte	.LASF327
	.4byte	0x1cf
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27d6
	.uleb128 0x55
	.string	"a"
	.byte	0x3
	.byte	0x67
	.byte	0x2e
	.4byte	0xad2
	.4byte	.LLST14
	.4byte	.LVUS14
	.byte	0
	.uleb128 0x69
	.4byte	.LASF328
	.4byte	.LASF330
	.uleb128 0x69
	.4byte	.LASF329
	.4byte	.LASF329
	.uleb128 0x69
	.4byte	.LASF331
	.4byte	.LASF331
	.uleb128 0x69
	.4byte	.LASF332
	.4byte	.LASF332
	.uleb128 0x69
	.4byte	.LASF333
	.4byte	.LASF333
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x21
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x88
	.uleb128 0xb
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
	.uleb128 0x48
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0x5d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5e
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
	.uleb128 0x5f
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
	.uleb128 0x60
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
	.uleb128 0x61
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
	.uleb128 0x62
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
	.uleb128 0x63
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
	.uleb128 0x64
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x65
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
	.uleb128 0x66
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x68
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
	.uleb128 0x69
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
.LVUS76:
	.uleb128 .LVU577
	.uleb128 .LVU581
.LLST76:
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS77:
	.uleb128 .LVU578
	.uleb128 .LVU581
.LLST77:
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS78:
	.uleb128 .LVU578
	.uleb128 .LVU581
.LLST78:
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS79:
	.uleb128 .LVU579
	.uleb128 0
.LLST79:
	.4byte	.LVL150
	.4byte	.LFE778
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS75:
	.uleb128 0
	.uleb128 .LVU566
	.uleb128 .LVU566
	.uleb128 0
.LLST75:
	.4byte	.LVL144
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LFE776
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LVUS74:
	.uleb128 0
	.uleb128 .LVU552
	.uleb128 .LVU552
	.uleb128 0
.LLST74:
	.4byte	.LVL140
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LFE775
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
.LVUS73:
	.uleb128 0
	.uleb128 .LVU540
	.uleb128 .LVU540
	.uleb128 0
.LLST73:
	.4byte	.LVL136
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139
	.4byte	.LFE774
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LVUS72:
	.uleb128 0
	.uleb128 .LVU528
	.uleb128 .LVU528
	.uleb128 0
.LLST72:
	.4byte	.LVL132
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL135
	.4byte	.LFE773
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LVUS71:
	.uleb128 0
	.uleb128 .LVU514
	.uleb128 .LVU514
	.uleb128 0
.LLST71:
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
	.4byte	.LFE772
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LVUS65:
	.uleb128 .LVU454
	.uleb128 .LVU458
.LLST65:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x6
	.byte	0x3
	.4byte	_Z11motion_taskPv
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS66:
	.uleb128 .LVU454
	.uleb128 .LVU458
.LLST66:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS67:
	.uleb128 .LVU454
	.uleb128 .LVU458
.LLST67:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xa
	.2byte	0x1000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS68:
	.uleb128 .LVU454
	.uleb128 .LVU458
.LLST68:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS69:
	.uleb128 .LVU454
	.uleb128 .LVU458
.LLST69:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS64:
	.uleb128 .LVU420
	.uleb128 0
.LLST64:
	.4byte	.LVL113
	.4byte	.LFE769
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS51:
	.uleb128 .LVU341
	.uleb128 .LVU351
	.uleb128 .LVU354
	.uleb128 .LVU373
	.uleb128 .LVU390
	.uleb128 .LVU392
.LLST51:
	.4byte	.LVL90
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS52:
	.uleb128 .LVU343
	.uleb128 .LVU347
.LLST52:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS53:
	.uleb128 .LVU344
	.uleb128 .LVU347
.LLST53:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS54:
	.uleb128 .LVU344
	.uleb128 .LVU347
.LLST54:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS55:
	.uleb128 .LVU345
	.uleb128 .LVU354
.LLST55:
	.4byte	.LVL91
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS56:
	.uleb128 .LVU356
	.uleb128 .LVU360
.LLST56:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS57:
	.uleb128 .LVU357
	.uleb128 .LVU360
.LLST57:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS58:
	.uleb128 .LVU357
	.uleb128 .LVU360
.LLST58:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS59:
	.uleb128 .LVU358
	.uleb128 .LVU362
	.uleb128 .LVU370
	.uleb128 .LVU390
.LLST59:
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL105
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS60:
	.uleb128 .LVU364
	.uleb128 .LVU368
.LLST60:
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS61:
	.uleb128 .LVU365
	.uleb128 .LVU368
.LLST61:
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS62:
	.uleb128 .LVU365
	.uleb128 .LVU368
.LLST62:
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS63:
	.uleb128 .LVU366
	.uleb128 .LVU370
	.uleb128 .LVU390
	.uleb128 .LVU417
.LLST63:
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL112
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 0
	.uleb128 .LVU217
	.uleb128 .LVU217
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU336
	.uleb128 .LVU336
	.uleb128 0
.LLST32:
	.4byte	.LVL55
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL66
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
	.4byte	.LVL66
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LFE767
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
.LVUS37:
	.uleb128 .LVU238
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU247
.LLST37:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 .LVU313
	.uleb128 .LVU315
	.uleb128 .LVU315
	.uleb128 .LVU317
	.uleb128 .LVU317
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU321
.LLST46:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU184
	.uleb128 .LVU188
.LLST33:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU185
	.uleb128 .LVU188
.LLST34:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU185
	.uleb128 .LVU188
.LLST35:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU186
	.uleb128 0
.LLST36:
	.4byte	.LVL56
	.4byte	.LFE767
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU250
	.uleb128 .LVU254
.LLST38:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 .LVU251
	.uleb128 .LVU254
.LLST39:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU251
	.uleb128 .LVU254
.LLST40:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU252
	.uleb128 .LVU267
.LLST41:
	.4byte	.LVL66
	.4byte	.LVL70
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 .LVU276
	.uleb128 .LVU280
.LLST42:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 .LVU277
	.uleb128 .LVU280
.LLST43:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU277
	.uleb128 .LVU280
.LLST44:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 .LVU278
	.uleb128 .LVU307
.LLST45:
	.4byte	.LVL72
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 .LVU326
	.uleb128 .LVU330
.LLST47:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 .LVU327
	.uleb128 .LVU330
.LLST48:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 .LVU327
	.uleb128 .LVU330
.LLST49:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 .LVU328
	.uleb128 .LVU336
.LLST50:
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
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
	.4byte	.LFE765
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU153
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 0
.LLST31:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE764
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU108
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 .LVU150
.LLST18:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU95
	.uleb128 .LVU99
.LLST19:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU96
	.uleb128 .LVU99
.LLST20:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU96
	.uleb128 .LVU99
.LLST21:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU97
	.uleb128 0
.LLST22:
	.4byte	.LVL29
	.4byte	.LFE763
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU101
	.uleb128 .LVU105
.LLST23:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU102
	.uleb128 .LVU105
.LLST24:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU102
	.uleb128 .LVU105
.LLST25:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU103
	.uleb128 .LVU150
.LLST26:
	.4byte	.LVL31
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU109
	.uleb128 .LVU113
.LLST27:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU110
	.uleb128 .LVU113
.LLST28:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU110
	.uleb128 .LVU113
.LLST29:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU111
	.uleb128 .LVU150
.LLST30:
	.4byte	.LVL33
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 0
.LLST16:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
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
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
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
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
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
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE762
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
.LVUS17:
	.uleb128 .LVU73
	.uleb128 .LVU90
.LLST17:
	.4byte	.LVL18
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU12
	.uleb128 .LVU16
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU13
	.uleb128 .LVU16
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU13
	.uleb128 .LVU16
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU14
	.uleb128 0
.LLST4:
	.4byte	.LVL4
	.4byte	.LFE761
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU31
	.uleb128 .LVU35
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU32
	.uleb128 .LVU35
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU32
	.uleb128 .LVU35
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU33
	.uleb128 .LVU46
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU43
	.uleb128 .LVU46
.LLST9:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU43
	.uleb128 .LVU46
.LLST10:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU44
	.uleb128 .LVU46
.LLST11:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL5state
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU44
	.uleb128 .LVU46
.LLST12:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU44
	.uleb128 .LVU46
.LLST13:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 0
.LLST15:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
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
.LVUS14:
	.uleb128 0
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 0
.LLST14:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
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
	.4byte	0xb4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB765
	.4byte	.LFE765-.LFB765
	.4byte	.LFB761
	.4byte	.LFE761-.LFB761
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB762
	.4byte	.LFE762-.LFB762
	.4byte	.LFB763
	.4byte	.LFE763-.LFB763
	.4byte	.LFB764
	.4byte	.LFE764-.LFB764
	.4byte	.LFB766
	.4byte	.LFE766-.LFB766
	.4byte	.LFB767
	.4byte	.LFE767-.LFB767
	.4byte	.LFB768
	.4byte	.LFE768-.LFB768
	.4byte	.LFB769
	.4byte	.LFE769-.LFB769
	.4byte	.LFB770
	.4byte	.LFE770-.LFB770
	.4byte	.LFB771
	.4byte	.LFE771-.LFB771
	.4byte	.LFB772
	.4byte	.LFE772-.LFB772
	.4byte	.LFB773
	.4byte	.LFE773-.LFB773
	.4byte	.LFB774
	.4byte	.LFE774-.LFB774
	.4byte	.LFB775
	.4byte	.LFE775-.LFB775
	.4byte	.LFB776
	.4byte	.LFE776-.LFB776
	.4byte	.LFB777
	.4byte	.LFE777-.LFB777
	.4byte	.LFB778
	.4byte	.LFE778-.LFB778
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB765
	.4byte	.LFE765
	.4byte	.LFB761
	.4byte	.LFE761
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB762
	.4byte	.LFE762
	.4byte	.LFB763
	.4byte	.LFE763
	.4byte	.LFB764
	.4byte	.LFE764
	.4byte	.LFB766
	.4byte	.LFE766
	.4byte	.LFB767
	.4byte	.LFE767
	.4byte	.LFB768
	.4byte	.LFE768
	.4byte	.LFB769
	.4byte	.LFE769
	.4byte	.LFB770
	.4byte	.LFE770
	.4byte	.LFB771
	.4byte	.LFE771
	.4byte	.LFB772
	.4byte	.LFE772
	.4byte	.LFB773
	.4byte	.LFE773
	.4byte	.LFB774
	.4byte	.LFE774
	.4byte	.LFB775
	.4byte	.LFE775
	.4byte	.LFB776
	.4byte	.LFE776
	.4byte	.LFB777
	.4byte	.LFE777
	.4byte	.LFB778
	.4byte	.LFE778
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF308:
	.string	"handle_cmd"
.LASF80:
	.string	"operator motion_state_t"
.LASF24:
	.string	"__uint_least64_t"
.LASF215:
	.string	"char32_t"
.LASF99:
	.string	"_ZNVSt6atomicI14motion_state_tE21compare_exchange_weakERS0_S0_St12memory_orderS3_"
.LASF69:
	.string	"_S_min_alignment"
.LASF263:
	.string	"manual"
.LASF320:
	.string	"uxPriority"
.LASF184:
	.string	"shaft"
.LASF257:
	.string	"STATE_NAME"
.LASF255:
	.string	"tskTaskControlBlock"
.LASF115:
	.string	"GPIO_NUM_NC"
.LASF337:
	.string	"memory_order"
.LASF296:
	.string	"_Z15motion_set_rate13motion_rate_t"
.LASF84:
	.string	"_ZNVSt6atomicI14motion_state_tEaSES0_"
.LASF266:
	.string	"xTaskCreatePinnedToCore"
.LASF218:
	.string	"_Float32"
.LASF200:
	.string	"MOTION_RATE_FIND"
.LASF1:
	.string	"unsigned int"
.LASF323:
	.string	"axis_sidereal_mhz"
.LASF165:
	.string	"TMC_V_FS_MV"
.LASF181:
	.string	"irun_hot"
.LASF113:
	.string	"__gnu_cxx"
.LASF188:
	.string	"belt_ratio"
.LASF288:
	.string	"_Z12motion_trackb"
.LASF38:
	.string	"intmax_t"
.LASF72:
	.string	"atomic"
.LASF57:
	.string	"uint_fast64_t"
.LASF52:
	.string	"int_fast16_t"
.LASF10:
	.string	"__int32_t"
.LASF212:
	.string	"wchar_t"
.LASF306:
	.string	"blocked"
.LASF237:
	.string	"dis_timestamp"
.LASF193:
	.string	"CMD_STOP"
.LASF26:
	.string	"__uintmax_t"
.LASF344:
	.string	"esp_log_timestamp"
.LASF60:
	.string	"__swappable_details"
.LASF21:
	.string	"__int_least32_t"
.LASF207:
	.string	"axis"
.LASF334:
	.ascii	"GNU C++26 15.2.0 -ftls-model=local-exec -mdynconfig=xtensa_e"
	.ascii	"sp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gn"
	.string	"u++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec"
.LASF126:
	.string	"GPIO_NUM_10"
.LASF127:
	.string	"GPIO_NUM_11"
.LASF128:
	.string	"GPIO_NUM_12"
.LASF129:
	.string	"GPIO_NUM_13"
.LASF130:
	.string	"GPIO_NUM_14"
.LASF131:
	.string	"GPIO_NUM_15"
.LASF132:
	.string	"GPIO_NUM_16"
.LASF133:
	.string	"GPIO_NUM_17"
.LASF134:
	.string	"GPIO_NUM_18"
.LASF135:
	.string	"GPIO_NUM_19"
.LASF213:
	.string	"char8_t"
.LASF179:
	.string	"irun"
.LASF326:
	.string	"axis_steps_per_rev"
.LASF281:
	.string	"motion_get_state"
.LASF27:
	.string	"__intptr_t"
.LASF269:
	.string	"_Z18stepper_is_running6axis_t"
.LASF208:
	.string	"isForward"
.LASF83:
	.string	"_ZNSt6atomicI14motion_state_tEaSES0_"
.LASF313:
	.string	"speed"
.LASF342:
	.string	"stepper_is_blocked"
.LASF144:
	.string	"GPIO_NUM_32"
.LASF36:
	.string	"int64_t"
.LASF56:
	.string	"int_fast64_t"
.LASF201:
	.string	"MOTION_RATE_SLEW"
.LASF327:
	.string	"_Z18axis_steps_per_rev6axis_t"
.LASF272:
	.string	"stepper_run_mhz"
.LASF94:
	.string	"exchange"
.LASF45:
	.string	"uint_least16_t"
.LASF151:
	.string	"GPIO_NUM_39"
.LASF30:
	.string	"int8_t"
.LASF271:
	.string	"_Z22stepper_slew_speed_mhz6axis_t"
.LASF329:
	.string	"__floatsidf"
.LASF136:
	.string	"GPIO_NUM_20"
.LASF137:
	.string	"GPIO_NUM_21"
.LASF78:
	.string	"_ZNSt6atomicI14motion_state_tEC4EvQ26is_default_constructible_vIT_E"
.LASF248:
	.string	"esp_log_args_type_t"
.LASF138:
	.string	"GPIO_NUM_26"
.LASF139:
	.string	"GPIO_NUM_27"
.LASF140:
	.string	"GPIO_NUM_28"
.LASF141:
	.string	"GPIO_NUM_29"
.LASF216:
	.string	"float"
.LASF205:
	.string	"MOTION_STATE_GOTO"
.LASF276:
	.string	"xQueueReceive"
.LASF318:
	.string	"usStackDepth"
.LASF256:
	.string	"QueueDefinition"
.LASF340:
	.string	"_ZNSt13__atomic_impl15__clear_paddingI14motion_state_tEEPT_RS2_"
.LASF61:
	.string	"__swappable_with_details"
.LASF192:
	.string	"CMD_MOVE"
.LASF32:
	.string	"int16_t"
.LASF283:
	.string	"_Z16motion_get_statev"
.LASF44:
	.string	"int_least16_t"
.LASF39:
	.string	"uintmax_t"
.LASF228:
	.string	"ESP_LOG_MAX"
.LASF0:
	.string	"long long unsigned int"
.LASF303:
	.string	"motion_task"
.LASF191:
	.string	"CMD_SET_RATE"
.LASF186:
	.string	"microsteps"
.LASF338:
	.string	"_M_i"
.LASF206:
	.string	"MOTION_STATE_FAULT"
.LASF236:
	.string	"dis_color"
.LASF285:
	.string	"motion_goto"
.LASF219:
	.string	"_Float64"
.LASF142:
	.string	"GPIO_NUM_30"
.LASF143:
	.string	"GPIO_NUM_31"
.LASF8:
	.string	"__uint16_t"
.LASF145:
	.string	"GPIO_NUM_33"
.LASF146:
	.string	"GPIO_NUM_34"
.LASF147:
	.string	"GPIO_NUM_35"
.LASF148:
	.string	"GPIO_NUM_36"
.LASF149:
	.string	"GPIO_NUM_37"
.LASF150:
	.string	"GPIO_NUM_38"
.LASF268:
	.string	"stepper_is_running"
.LASF224:
	.string	"ESP_LOG_WARN"
.LASF49:
	.string	"uint_least64_t"
.LASF88:
	.string	"store"
.LASF316:
	.string	"pxTaskCode"
.LASF280:
	.string	"__buf"
.LASF185:
	.string	"full_steps"
.LASF345:
	.string	"rate_speed_mhz"
.LASF302:
	.string	"_Z12motion_startv"
.LASF162:
	.string	"gpio_num_t"
.LASF156:
	.string	"GPIO_NUM_44"
.LASF210:
	.string	"target"
.LASF158:
	.string	"GPIO_NUM_46"
.LASF178:
	.string	"dir_pin"
.LASF160:
	.string	"GPIO_NUM_48"
.LASF48:
	.string	"int_least64_t"
.LASF152:
	.string	"GPIO_NUM_40"
.LASF153:
	.string	"GPIO_NUM_41"
.LASF154:
	.string	"GPIO_NUM_42"
.LASF155:
	.string	"GPIO_NUM_43"
.LASF245:
	.string	"ESP_LOG_ARGS_TYPE_32BITS"
.LASF157:
	.string	"GPIO_NUM_45"
.LASF242:
	.string	"esp_log_config_t"
.LASF159:
	.string	"GPIO_NUM_47"
.LASF322:
	.string	"esp_log"
.LASF177:
	.string	"step_pin"
.LASF22:
	.string	"__uint_least32_t"
.LASF230:
	.string	"12motion_cmd_t"
.LASF282:
	.string	"motion_abort"
.LASF295:
	.string	"_Z11motion_move6axis_tb"
.LASF16:
	.string	"__uint64_t"
.LASF317:
	.string	"pcName"
.LASF91:
	.string	"load"
.LASF222:
	.string	"ESP_LOG_NONE"
.LASF332:
	.string	"__divdf3"
.LASF265:
	.string	"xQueueGenericSend"
.LASF172:
	.string	"atomic<motion_state_t>"
.LASF221:
	.string	"15esp_log_level_t"
.LASF211:
	.string	"motion_cmd_t"
.LASF199:
	.string	"MOTION_RATE_CENTER"
.LASF173:
	.string	"axis_config_t"
.LASF71:
	.string	"~atomic"
.LASF95:
	.string	"_ZNSt6atomicI14motion_state_tE8exchangeES0_St12memory_order"
.LASF180:
	.string	"ihold"
.LASF244:
	.string	"ESP_LOG_ARGS_TYPE_NONE"
.LASF110:
	.string	"_ZNSt6atomicI14motion_state_tE10notify_oneEv"
.LASF183:
	.string	"mres"
.LASF314:
	.string	"sidereal"
.LASF105:
	.string	"_ZNSt6atomicI14motion_state_tE23compare_exchange_strongERS0_S0_St12memory_order"
.LASF287:
	.string	"motion_track"
.LASF209:
	.string	"rate"
.LASF251:
	.string	"UBaseType_t"
.LASF335:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.cpp"
.LASF293:
	.string	"dec_steps"
.LASF311:
	.string	"apply_all_axes"
.LASF339:
	.string	"__atomic_impl"
.LASF171:
	.string	"AXIS_COUNT"
.LASF241:
	.string	"data"
.LASF254:
	.string	"QueueHandle_t"
.LASF346:
	.string	"xTaskCreate"
.LASF246:
	.string	"ESP_LOG_ARGS_TYPE_64BITS"
.LASF214:
	.string	"char16_t"
.LASF31:
	.string	"uint8_t"
.LASF233:
	.string	"log_level"
.LASF43:
	.string	"uint_least8_t"
.LASF102:
	.string	"compare_exchange_strong"
.LASF298:
	.string	"_Z11motion_send12motion_cmd_tm"
.LASF267:
	.string	"xQueueGenericCreate"
.LASF168:
	.string	"TMC_FULL_SCALE_MA"
.LASF203:
	.string	"MOTION_STATE_IDLE"
.LASF309:
	.string	"abort_goto"
.LASF343:
	.string	"_Z18stepper_is_blockedv"
.LASF15:
	.string	"long long int"
.LASF176:
	.string	"en_pin"
.LASF104:
	.string	"_ZNVSt6atomicI14motion_state_tE23compare_exchange_strongERS0_S0_St12memory_orderS3_"
.LASF182:
	.string	"pwm_grad"
.LASF292:
	.string	"motion_move"
.LASF229:
	.string	"esp_log_level_t"
.LASF97:
	.string	"compare_exchange_weak"
.LASF74:
	.string	"_ZNSt6atomicI14motion_state_tEC4ERKS1_"
.LASF250:
	.string	"BaseType_t"
.LASF79:
	.string	"_ZNSt6atomicI14motion_state_tEC4ES0_"
.LASF163:
	.string	"bool"
.LASF114:
	.string	"__cxx11"
.LASF6:
	.string	"__int16_t"
.LASF249:
	.string	"TaskFunction_t"
.LASF234:
	.string	"constrained_env"
.LASF169:
	.string	"AXIS_RA"
.LASF50:
	.string	"int_fast8_t"
.LASF328:
	.string	"memset"
.LASF77:
	.string	"_ZNVSt6atomicI14motion_state_tEaSERKS1_"
.LASF262:
	.string	"forward"
.LASF64:
	.string	"consume"
.LASF331:
	.string	"__floatunsidf"
.LASF273:
	.string	"_Z15stepper_run_mhz6axis_tl"
.LASF75:
	.string	"operator="
.LASF19:
	.string	"__int_least16_t"
.LASF55:
	.string	"uint_fast32_t"
.LASF225:
	.string	"ESP_LOG_INFO"
.LASF253:
	.string	"TaskHandle_t"
.LASF231:
	.string	"16esp_log_config_t"
.LASF109:
	.string	"notify_one"
.LASF341:
	.string	"AXES"
.LASF93:
	.string	"_ZNVKSt6atomicI14motion_state_tE4loadESt12memory_order"
.LASF70:
	.string	"_S_alignment"
.LASF161:
	.string	"GPIO_NUM_MAX"
.LASF107:
	.string	"wait"
.LASF307:
	.string	"poll"
.LASF252:
	.string	"TickType_t"
.LASF4:
	.string	"__int8_t"
.LASF85:
	.string	"is_lock_free"
.LASF274:
	.string	"stepper_move_to_async"
.LASF187:
	.string	"worm_teeth"
.LASF305:
	.string	"args"
.LASF14:
	.string	"__int64_t"
.LASF264:
	.string	"__clear_padding<motion_state_t>"
.LASF270:
	.string	"stepper_slew_speed_mhz"
.LASF25:
	.string	"__intmax_t"
.LASF29:
	.string	"long double"
.LASF40:
	.string	"intptr_t"
.LASF33:
	.string	"uint16_t"
.LASF279:
	.string	"this"
.LASF167:
	.string	"TMC_R_INTERNAL_MOHM"
.LASF28:
	.string	"__uintptr_t"
.LASF92:
	.string	"_ZNKSt6atomicI14motion_state_tE4loadESt12memory_order"
.LASF195:
	.string	"CMD_GOTO"
.LASF89:
	.string	"_ZNSt6atomicI14motion_state_tE5storeES0_St12memory_order"
.LASF23:
	.string	"__int_least64_t"
.LASF58:
	.string	"char"
.LASF68:
	.string	"seq_cst"
.LASF18:
	.string	"__uint_least8_t"
.LASF54:
	.string	"int_fast32_t"
.LASF101:
	.string	"_ZNVSt6atomicI14motion_state_tE21compare_exchange_weakERS0_S0_St12memory_order"
.LASF7:
	.string	"short int"
.LASF204:
	.string	"MOTION_STATE_TRACKING"
.LASF62:
	.string	"__detail"
.LASF166:
	.string	"TMC_R_SENSE_MOHM"
.LASF197:
	.string	"motion_rate_t"
.LASF319:
	.string	"pvParameters"
.LASF11:
	.string	"long int"
.LASF82:
	.string	"_ZNVKSt6atomicI14motion_state_tEcvS0_Ev"
.LASF325:
	.string	"SIDEREAL_DAY_X10000"
.LASF42:
	.string	"int_least8_t"
.LASF106:
	.string	"_ZNVSt6atomicI14motion_state_tE23compare_exchange_strongERS0_S0_St12memory_order"
.LASF333:
	.string	"__udivdi3"
.LASF53:
	.string	"uint_fast16_t"
.LASF258:
	.string	"RATE_NAME"
.LASF37:
	.string	"uint64_t"
.LASF235:
	.string	"require_formatting"
.LASF190:
	.string	"e_motion_cmd_t"
.LASF240:
	.string	"opts"
.LASF76:
	.string	"_ZNSt6atomicI14motion_state_tEaSERKS1_"
.LASF247:
	.string	"ESP_LOG_ARGS_TYPE_POINTER"
.LASF5:
	.string	"__uint8_t"
.LASF304:
	.string	"_Z11motion_taskPv"
.LASF174:
	.string	"name"
.LASF170:
	.string	"AXIS_DEC"
.LASF47:
	.string	"uint_least32_t"
.LASF330:
	.string	"__builtin_memset"
.LASF175:
	.string	"uart_addr"
.LASF17:
	.string	"__int_least8_t"
.LASF41:
	.string	"uintptr_t"
.LASF20:
	.string	"__uint_least16_t"
.LASF90:
	.string	"_ZNVSt6atomicI14motion_state_tE5storeES0_St12memory_order"
.LASF13:
	.string	"long unsigned int"
.LASF227:
	.string	"ESP_LOG_VERBOSE"
.LASF278:
	.string	"__ptr"
.LASF108:
	.string	"_ZNKSt6atomicI14motion_state_tE4waitES0_St12memory_order"
.LASF34:
	.string	"int32_t"
.LASF284:
	.string	"_Z12motion_abortv"
.LASF289:
	.string	"ra_steps"
.LASF46:
	.string	"int_least32_t"
.LASF297:
	.string	"motion_send"
.LASF87:
	.string	"_ZNVKSt6atomicI14motion_state_tE12is_lock_freeEv"
.LASF63:
	.string	"relaxed"
.LASF324:
	.string	"_Z17axis_sidereal_mhz6axis_t"
.LASF116:
	.string	"GPIO_NUM_0"
.LASF301:
	.string	"motion_start"
.LASF291:
	.string	"_Z11motion_stop6axis_t"
.LASF310:
	.string	"clear_manual"
.LASF2:
	.string	"unsigned char"
.LASF12:
	.string	"__uint32_t"
.LASF290:
	.string	"motion_stop"
.LASF100:
	.string	"_ZNSt6atomicI14motion_state_tE21compare_exchange_weakERS0_S0_St12memory_order"
.LASF238:
	.string	"binary_mode"
.LASF299:
	.string	"timeout"
.LASF98:
	.string	"_ZNSt6atomicI14motion_state_tE21compare_exchange_weakERS0_S0_St12memory_orderS3_"
.LASF65:
	.string	"acquire"
.LASF51:
	.string	"uint_fast8_t"
.LASF261:
	.string	"moving"
.LASF196:
	.string	"CMD_ABORT"
.LASF300:
	.string	"__esp_log_config"
.LASF189:
	.string	"axis_t"
.LASF260:
	.string	"state"
.LASF81:
	.string	"_ZNKSt6atomicI14motion_state_tEcvS0_Ev"
.LASF226:
	.string	"ESP_LOG_DEBUG"
.LASF315:
	.string	"set_state"
.LASF73:
	.string	"_ZNSt6atomicI14motion_state_tED4Ev"
.LASF232:
	.string	"is_always_lock_free"
.LASF67:
	.string	"acq_rel"
.LASF198:
	.string	"MOTION_RATE_GUIDE"
.LASF117:
	.string	"GPIO_NUM_1"
.LASF118:
	.string	"GPIO_NUM_2"
.LASF119:
	.string	"GPIO_NUM_3"
.LASF120:
	.string	"GPIO_NUM_4"
.LASF121:
	.string	"GPIO_NUM_5"
.LASF122:
	.string	"GPIO_NUM_6"
.LASF123:
	.string	"GPIO_NUM_7"
.LASF124:
	.string	"GPIO_NUM_8"
.LASF125:
	.string	"GPIO_NUM_9"
.LASF59:
	.string	"esp_err_t"
.LASF111:
	.string	"notify_all"
.LASF3:
	.string	"signed char"
.LASF112:
	.string	"_ZNSt6atomicI14motion_state_tE10notify_allEv"
.LASF9:
	.string	"short unsigned int"
.LASF66:
	.string	"release"
.LASF194:
	.string	"CMD_TRACK"
.LASF277:
	.string	"__val"
.LASF96:
	.string	"_ZNVSt6atomicI14motion_state_tE8exchangeES0_St12memory_order"
.LASF243:
	.string	"19esp_log_args_type_t"
.LASF239:
	.string	"reserved"
.LASF217:
	.string	"double"
.LASF336:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/build"
.LASF259:
	.string	"motion_queue"
.LASF86:
	.string	"_ZNKSt6atomicI14motion_state_tE12is_lock_freeEv"
.LASF35:
	.string	"uint32_t"
.LASF312:
	.string	"apply_axis"
.LASF202:
	.string	"motion_state_t"
.LASF286:
	.string	"_Z11motion_gotoll"
.LASF321:
	.string	"pxCreatedTask"
.LASF164:
	.string	"TMC_VSENSE"
.LASF103:
	.string	"_ZNSt6atomicI14motion_state_tE23compare_exchange_strongERS0_S0_St12memory_orderS3_"
.LASF220:
	.string	"10gpio_num_t"
.LASF275:
	.string	"_Z21stepper_move_to_async6axis_tl"
.LASF223:
	.string	"ESP_LOG_ERROR"
.LASF294:
	.string	"motion_set_rate"
	.global	__divdf3
	.global	__floatunsidf
	.global	__floatsidf
	.global	__udivdi3
	.ident	"GCC: (crosstool-NG esp-15.2.0_20251204) 15.2.0"
