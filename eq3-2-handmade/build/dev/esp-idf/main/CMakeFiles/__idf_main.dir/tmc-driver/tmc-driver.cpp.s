	.file	"tmc-driver.cpp"
# GNU C++26 (crosstool-NG esp-15.2.0_20251204) version 15.2.0 (xtensa-esp-elf)
#	compiled by GNU C version Debian Clang 19.1.7 (3+b1), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -ftls-model=local-exec -mdynconfig=xtensa_esp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gnu++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec
	.text
.Ltext0:
	.file 1 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp"
	.section	.rodata._ZL16log_step_success6axis_th.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"tmc"
	.align	4
.LC3:
	.string	"I (%lu) %s: [%s] TMC INIT STEP %d - SUCCESS\n"
	.section	.text._ZL16log_step_success6axis_th,"ax",@progbits
	.literal_position
	.literal .LC0, AXES
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.align	4
	.type	_ZL16log_step_success6axis_th, @function
_ZL16log_step_success6axis_th:
.LVL0:
.LFB103:
	.loc 1 212 54 view -0
	.loc 1 212 54 is_stmt 0 view .LVU1
	entry	sp, 48	#
.LCFI0:
	.loc 1 213 5 is_stmt 1 view .LVU2
	.loc 1 213 10 view .LVU3
	.loc 1 213 15 view .LVU4
	.loc 1 213 47 view .LVU5
	.loc 1 213 52 view .LVU6
	.loc 1 213 115 discriminator 2 view .LVU7
	.loc 1 213 115 discriminator 6 view .LVU8
	.loc 1 213 115 discriminator 10 view .LVU9
.LBB36:
	.loc 1 213 117 discriminator 14 view .LVU10
.LBB37:
	.loc 1 213 142 discriminator 14 view .LVU11
	.loc 1 213 177 discriminator 14 view .LVU12
	.loc 1 213 217 view .LVU13
.LBE37:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:213:     ESP_LOGI(TAG, "[%s] TMC INIT STEP %d - SUCCESS", AXES[a].name, step);
	.loc 1 213 124 is_stmt 0 discriminator 14 view .LVU14
	call8	esp_log_timestamp		#
.LVL1:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:213:     ESP_LOGI(TAG, "[%s] TMC INIT STEP %d - SUCCESS", AXES[a].name, step);
	.loc 1 213 95 discriminator 17 view .LVU15
	addx4	a8, a2, a2	#, tmp54, a, a
	addx2	a8, a8, a2	#, tmp56, tmp54, a
	l32r	a9, .LC0	#, tmp51
	addx4	a8, a8, a9	#, tmp58, tmp56, tmp51
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:213:     ESP_LOGI(TAG, "[%s] TMC INIT STEP %d - SUCCESS", AXES[a].name, step);
	.loc 1 213 124 discriminator 17 view .LVU16
	l32r	a11, .LC2	#, tmp59
	s32i.n	a3, sp, 0	#, step
	l32i.n	a15, a8, 0	# AXES[a$768_12].name,
	mov.n	a14, a11	#, tmp59
	mov.n	a13, a10	#, _10
	l32r	a12, .LC4	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL2:
	.loc 1 213 47 is_stmt 1 view .LVU17
	.loc 1 213 10 view .LVU18
.LBE36:
	.loc 1 213 5 view .LVU19
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:214: }
	.loc 1 214 1 is_stmt 0 view .LVU20
	retw.n	
.LFE103:
	.size	_ZL16log_step_success6axis_th, .-_ZL16log_step_success6axis_th
	.section	.text._Z18tmc_overheat_reset6axis_t,"ax",@progbits
	.literal_position
	.literal .LC5, _ZL24overheat_current_reduced
	.align	4
	.global	_Z18tmc_overheat_reset6axis_t
	.type	_Z18tmc_overheat_reset6axis_t, @function
_Z18tmc_overheat_reset6axis_t:
.LVL3:
.LFB99:
	.loc 1 29 35 is_stmt 1 view -0
	.loc 1 29 35 is_stmt 0 view .LVU22
	entry	sp, 32	#
.LCFI1:
	.loc 1 30 5 is_stmt 1 view .LVU23
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:30:     overheat_current_reduced[a] = false;
	.loc 1 30 33 is_stmt 0 view .LVU24
	l32r	a8, .LC5	#, tmp44
	add.n	a8, a8, a2	# tmp45, tmp44, a
	movi.n	a9, 0	# tmp46,
	s8i	a9, a8, 0	# overheat_current_reduced[a$0_1], tmp46
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:31: }
	.loc 1 31 1 view .LVU25
	retw.n	
.LFE99:
	.size	_Z18tmc_overheat_reset6axis_t, .-_Z18tmc_overheat_reset6axis_t
	.section	.rodata._Z18tmc_check_overheat6axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC11:
	.base64	"VyAoJWx1KSAlczogWyVzXSDQn9C10YDQtdCz0YDQtdCyOiDQtNGA0LDQudCy0LXRgCDQvdCw0LPRgNC10LvRgdGPINC00L4gMTIwIMKwQywg0YHQvdC40LbQsNGOINGC0L7QuiAlbHUg4oaSICVsdSDQvNCQCgA="
	.align	4
.LC14:
	.base64	"SSAoJWx1KSAlczogWyVzXSDQlNGA0LDQudCy0LXRgCDQvtGB0YLRi9C7LCDQstC+0LfQstGA0LDRidCw0Y4g0YDQsNCx0L7Rh9C40Lkg0YLQvtC6ICVsdSDQvNCQCgA="
	.section	.text._Z18tmc_check_overheat6axis_t,"ax",@progbits
	.literal_position
	.literal .LC6, _ZL20overheat_last_hot_us
	.literal .LC7, _ZL24overheat_current_reduced
	.literal .LC8, AXES
	.literal .LC9, 393216
	.literal .LC10, .LC1
	.literal .LC12, .LC11
	.literal .LC13, 29999999
	.literal .LC15, .LC14
	.align	4
	.global	_Z18tmc_check_overheat6axis_t
	.type	_Z18tmc_check_overheat6axis_t, @function
_Z18tmc_check_overheat6axis_t:
.LVL4:
.LFB100:
	.loc 1 46 40 is_stmt 1 view -0
	.loc 1 46 40 is_stmt 0 view .LVU27
	entry	sp, 64	#
.LCFI2:
	.loc 1 47 5 is_stmt 1 view .LVU28
	.loc 1 48 5 view .LVU29
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:48:     esp_err_t err = tmc_read(a, TMC_REG_DRV_STATUS, &status);
	.loc 1 48 29 is_stmt 0 view .LVU30
	addi	a12, sp, 16	#,,
	movi	a11, 0x6f	#,
	mov.n	a10, a2	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL5:
	mov.n	a7, a10	# <retval>, <retval>
.LVL6:
	.loc 1 49 5 is_stmt 1 view .LVU31
	bnez.n	a10, .L3	# <retval>,
	.loc 1 53 5 view .LVU32
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:53:     bool is_hot = status & DRV_STATUS_OTPW;
	.loc 1 53 26 is_stmt 0 view .LVU33
	l32i.n	a8, sp, 16	# status, status
	extui	a6, a8, 0, 1	# _2, status,
.LVL7:
	.loc 1 54 5 is_stmt 1 view .LVU34
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:54:     int64_t now_us = esp_timer_get_time();   // время от включения ESP, в микросекундах
	.loc 1 54 40 is_stmt 0 view .LVU35
	call8	esp_timer_get_time		#
.LVL8:
	.loc 1 56 5 is_stmt 1 view .LVU36
.LBB38:
	beqz.n	a6, .L5	# _2,
.LBB39:
	.loc 1 57 9 view .LVU37
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:57:         overheat_last_hot_us[a] = now_us;
	.loc 1 57 33 is_stmt 0 view .LVU38
	l32r	a8, .LC6	#, tmp93
	addx8	a8, a2, a8	#, tmp95, a, tmp93
	s32i.n	a10, a8, 0	# overheat_last_hot_us[a$2_3], now_us
	s32i.n	a11, a8, 4	# overheat_last_hot_us[a$2_3], now_us
	.loc 1 59 9 is_stmt 1 view .LVU39
.LBB40:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:59:         if (!overheat_current_reduced[a]) {
	.loc 1 59 40 is_stmt 0 view .LVU40
	l32r	a8, .LC7	#, tmp96
	add.n	a8, a8, a2	# tmp97, tmp96, a
	l8ui	a8, a8, 0	# overheat_current_reduced[a$2_3], _4
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:59:         if (!overheat_current_reduced[a]) {
	.loc 1 59 9 view .LVU41
	bnez.n	a8, .L3	# _4,
.LBB41:
	.loc 1 60 13 is_stmt 1 view .LVU42
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:60:             uint32_t ihold_irun = (TMC_IHOLDDELAY << 16) | (AXES[a].irun_hot << 8) | AXES[a].ihold;
	.loc 1 60 56 is_stmt 0 view .LVU43
	addx4	a8, a2, a2	#, tmp101, a, a
	addx2	a8, a8, a2	#, tmp103, tmp101, a
	l32r	a9, .LC8	#, tmp98
	addx4	a8, a8, a9	#, tmp105, tmp103, tmp98
	l8ui	a9, a8, 22	# AXES[a$2_3].irun_hot, _6
	mov.n	a6, a9	# _6, _6
.LVL9:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:60:             uint32_t ihold_irun = (TMC_IHOLDDELAY << 16) | (AXES[a].irun_hot << 8) | AXES[a].ihold;
	.loc 1 60 65 view .LVU44
	slli	a9, a9, 8	# _7, _6,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:60:             uint32_t ihold_irun = (TMC_IHOLDDELAY << 16) | (AXES[a].irun_hot << 8) | AXES[a].ihold;
	.loc 1 60 45 view .LVU45
	l32r	a10, .LC9	#, tmp107
.LVL10:
	.loc 1 60 45 view .LVU46
	or	a9, a9, a10	# _8, _7, tmp107
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:60:             uint32_t ihold_irun = (TMC_IHOLDDELAY << 16) | (AXES[a].irun_hot << 8) | AXES[a].ihold;
	.loc 1 60 81 view .LVU47
	l8ui	a12, a8, 21	# AXES[a$2_3].ihold, _10
.LVL11:
	.loc 1 61 13 is_stmt 1 view .LVU48
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:61:             err = tmc_write(a, TMC_REG_IHOLD_IRUN, ihold_irun);
	.loc 1 61 28 is_stmt 0 view .LVU49
	or	a12, a9, a12	#, _8, _10
.LVL12:
	.loc 1 61 28 view .LVU50
	movi.n	a11, 0x10	#,
.LVL13:
	.loc 1 61 28 view .LVU51
	mov.n	a10, a2	#, a
	call8	_Z9tmc_write6axis_thm		#
.LVL14:
	.loc 1 62 13 is_stmt 1 view .LVU52
	bnez.n	a10, .L9	# err,
	.loc 1 66 13 view .LVU53
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:66:             overheat_current_reduced[a] = true;
	.loc 1 66 41 is_stmt 0 view .LVU54
	l32r	a8, .LC7	#, tmp117
	add.n	a8, a8, a2	# tmp118, tmp117, a
	movi.n	a9, 1	# tmp119,
	s8i	a9, a8, 0	# overheat_current_reduced[a$2_3], tmp119
	.loc 1 67 13 is_stmt 1 view .LVU55
	.loc 1 67 18 view .LVU56
	.loc 1 67 23 view .LVU57
	.loc 1 67 55 view .LVU58
	.loc 1 67 60 view .LVU59
	.loc 1 67 142 discriminator 2 view .LVU60
.LBB42:
.LBB43:
	.loc 1 67 199 discriminator 7 view .LVU61
.LBB44:
	.loc 1 67 224 discriminator 7 view .LVU62
	.loc 1 67 259 discriminator 7 view .LVU63
	.loc 1 67 299 view .LVU64
.LBE44:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:67:             ESP_LOGW(TAG, "[%s] Перегрев: драйвер нагрелся до 120 °C, снижаю ток %" PRIu32 " → %" PRIu32 " мА",
	.loc 1 67 206 is_stmt 0 discriminator 7 view .LVU65
	call8	esp_log_timestamp		#
.LVL15:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:67:             ESP_LOGW(TAG, "[%s] Перегрев: драйвер нагрелся до 120 °C, снижаю ток %" PRIu32 " → %" PRIu32 " мА",
	.loc 1 67 68 discriminator 9 view .LVU66
	l32r	a9, .LC8	#, tmp120
.LVL16:
	.loc 1 67 68 discriminator 9 view .LVU67
	addx4	a8, a2, a2	#, tmp123, a, a
.LVL17:
	.loc 1 67 68 discriminator 9 view .LVU68
	addx2	a12, a8, a2	#, tmp125, tmp123, a
.LVL18:
	.loc 1 67 68 discriminator 9 view .LVU69
	addx4	a12, a12, a9	#, tmp127, tmp125, tmp120
.LVL19:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:67:             ESP_LOGW(TAG, "[%s] Перегрев: драйвер нагрелся до 120 °C, снижаю ток %" PRIu32 " → %" PRIu32 " мА",
	.loc 1 67 95 discriminator 9 view .LVU70
	l8ui	a9, a12, 20	# AXES[a$2_3].irun, _16
.LVL20:
.LBB45:
.LBI45:
	.file 2 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h"
	.loc 2 81 20 is_stmt 1 view .LVU71
.LBB46:
	.loc 2 83 5 view .LVU72
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h:83:     return (cs + 1) * TMC_FULL_SCALE_MA / 32;
	.loc 2 83 16 is_stmt 0 view .LVU73
	addi.n	a9, a9, 1	# _27, _16,
.LVL21:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h:83:     return (cs + 1) * TMC_FULL_SCALE_MA / 32;
	.loc 2 83 21 view .LVU74
	movi	a11, 0x3d2	# tmp137,
	mull	a9, a9, a11	# _28, _27, tmp137
.LVL22:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h:83:     return (cs + 1) * TMC_FULL_SCALE_MA / 32;
	.loc 2 83 43 view .LVU75
	srli	a9, a9, 5	# _29, _28,
.LVL23:
	.loc 2 83 43 view .LVU76
.LBE46:
.LBE45:
.LBB47:
.LBI47:
	.loc 2 81 20 is_stmt 1 view .LVU77
.LBB48:
	.loc 2 83 5 view .LVU78
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h:83:     return (cs + 1) * TMC_FULL_SCALE_MA / 32;
	.loc 2 83 16 is_stmt 0 view .LVU79
	addi.n	a8, a6, 1	# _22, _6,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h:83:     return (cs + 1) * TMC_FULL_SCALE_MA / 32;
	.loc 2 83 21 view .LVU80
	mull	a8, a8, a11	# _23, _22, tmp137
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h:83:     return (cs + 1) * TMC_FULL_SCALE_MA / 32;
	.loc 2 83 43 view .LVU81
	srli	a8, a8, 5	# _24, _23,
.LVL24:
	.loc 2 83 43 view .LVU82
.LBE48:
.LBE47:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:67:             ESP_LOGW(TAG, "[%s] Перегрев: драйвер нагрелся до 120 °C, снижаю ток %" PRIu32 " → %" PRIu32 " мА",
	.loc 1 67 206 discriminator 11 view .LVU83
	l32r	a11, .LC10	#, tmp139
	s32i.n	a8, sp, 4	#, _24
	s32i.n	a9, sp, 0	#, _29
	l32i.n	a15, a12, 0	# AXES[a$2_3].name,
	mov.n	a14, a11	#, tmp139
	mov.n	a13, a10	#, _13
	l32r	a12, .LC12	#,
.LVL25:
	.loc 1 67 206 discriminator 11 view .LVU84
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL26:
	.loc 1 67 55 is_stmt 1 view .LVU85
	.loc 1 67 18 view .LVU86
.LBE43:
.LBE42:
	.loc 1 67 13 view .LVU87
.LBE41:
.LBE40:
	.loc 1 70 9 view .LVU88
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:70:         return ESP_OK;
	.loc 1 70 16 is_stmt 0 view .LVU89
	j	.L3		#
.LVL27:
.L5:
	.loc 1 70 16 view .LVU90
.LBE39:
.LBE38:
	.loc 1 74 5 is_stmt 1 view .LVU91
.LBB52:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:74:     if (overheat_current_reduced[a] && (now_us - overheat_last_hot_us[a]) >= TMC_COOLDOWN_US) {
	.loc 1 74 35 is_stmt 0 view .LVU92
	l32r	a8, .LC7	#, tmp142
	add.n	a8, a8, a2	# tmp143, tmp142, a
	l8ui	a8, a8, 0	# overheat_current_reduced[a$37_30], _31
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:74:     if (overheat_current_reduced[a] && (now_us - overheat_last_hot_us[a]) >= TMC_COOLDOWN_US) {
	.loc 1 74 5 view .LVU93
	beqz.n	a8, .L3	# _31,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:74:     if (overheat_current_reduced[a] && (now_us - overheat_last_hot_us[a]) >= TMC_COOLDOWN_US) {
	.loc 1 74 72 discriminator 1 view .LVU94
	l32r	a8, .LC6	#, tmp144
	addx8	a8, a2, a8	#, tmp146, a, tmp144
	l32i.n	a9, a8, 0	# overheat_last_hot_us[a$37_30], _32
	l32i.n	a8, a8, 4	# overheat_last_hot_us[a$37_30], _32
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:74:     if (overheat_current_reduced[a] && (now_us - overheat_last_hot_us[a]) >= TMC_COOLDOWN_US) {
	.loc 1 74 48 discriminator 1 view .LVU95
	sub	a11, a11, a8	# _33, now_us, _32
.LVL28:
	.loc 1 74 48 discriminator 1 view .LVU96
	bgeu	a10, a9, .L7	# now_us, _32,
	addi.n	a11, a11, -1	# _33, _33,
.L7:
	sub	a10, a10, a9	# _33, now_us, _32
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:74:     if (overheat_current_reduced[a] && (now_us - overheat_last_hot_us[a]) >= TMC_COOLDOWN_US) {
	.loc 1 74 37 discriminator 1 view .LVU97
	bgei	a11, 1, .L10	# _33,,
	bnez.n	a11, .L3	# _33,
	l32r	a8, .LC13	#, tmp147
	bgeu	a8, a10, .L3	# tmp147, _33,
.L10:
.LBB53:
	.loc 1 75 9 is_stmt 1 view .LVU98
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:75:         uint32_t ihold_irun = (TMC_IHOLDDELAY << 16) | (AXES[a].irun << 8) | AXES[a].ihold;
	.loc 1 75 52 is_stmt 0 view .LVU99
	addx4	a8, a2, a2	#, tmp151, a, a
	addx2	a8, a8, a2	#, tmp153, tmp151, a
	l32r	a9, .LC8	#, tmp148
	addx4	a8, a8, a9	#, tmp155, tmp153, tmp148
	l8ui	a6, a8, 20	# AXES[a$37_30].irun, _35
.LVL29:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:75:         uint32_t ihold_irun = (TMC_IHOLDDELAY << 16) | (AXES[a].irun << 8) | AXES[a].ihold;
	.loc 1 75 57 view .LVU100
	slli	a9, a6, 8	# _36, _35,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:75:         uint32_t ihold_irun = (TMC_IHOLDDELAY << 16) | (AXES[a].irun << 8) | AXES[a].ihold;
	.loc 1 75 41 view .LVU101
	l32r	a10, .LC9	#, tmp157
	or	a9, a9, a10	# _37, _36, tmp157
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:75:         uint32_t ihold_irun = (TMC_IHOLDDELAY << 16) | (AXES[a].irun << 8) | AXES[a].ihold;
	.loc 1 75 73 view .LVU102
	l8ui	a12, a8, 21	# AXES[a$37_30].ihold, _39
.LVL30:
	.loc 1 76 9 is_stmt 1 view .LVU103
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:76:         err = tmc_write(a, TMC_REG_IHOLD_IRUN, ihold_irun);
	.loc 1 76 24 is_stmt 0 view .LVU104
	or	a12, a9, a12	#, _37, _39
.LVL31:
	.loc 1 76 24 view .LVU105
	movi.n	a11, 0x10	#,
	mov.n	a10, a2	#, a
	call8	_Z9tmc_write6axis_thm		#
.LVL32:
	.loc 1 76 24 view .LVU106
	mov.n	a7, a10	# <retval>, <retval>
.LVL33:
	.loc 1 77 9 is_stmt 1 view .LVU107
	bnez.n	a10, .L3	# <retval>,
	.loc 1 81 9 view .LVU108
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:81:         overheat_current_reduced[a] = false;
	.loc 1 81 37 is_stmt 0 view .LVU109
	l32r	a8, .LC7	#, tmp167
	add.n	a8, a8, a2	# tmp168, tmp167, a
	movi.n	a9, 0	# tmp169,
	s8i	a9, a8, 0	# overheat_current_reduced[a$37_30], tmp169
	.loc 1 82 9 is_stmt 1 view .LVU110
	.loc 1 82 14 view .LVU111
	.loc 1 82 19 view .LVU112
	.loc 1 82 51 view .LVU113
	.loc 1 82 56 view .LVU114
	.loc 1 82 106 discriminator 2 view .LVU115
	.loc 1 82 106 discriminator 7 view .LVU116
	.loc 1 82 106 discriminator 12 view .LVU117
.LBB54:
	.loc 1 82 108 discriminator 17 view .LVU118
.LBB55:
	.loc 1 82 133 discriminator 17 view .LVU119
	.loc 1 82 168 discriminator 17 view .LVU120
	.loc 1 82 208 view .LVU121
.LBE55:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:82:         ESP_LOGI(TAG, "[%s] Драйвер остыл, возвращаю рабочий ток %" PRIu32 " мА",
	.loc 1 82 115 is_stmt 0 discriminator 17 view .LVU122
	call8	esp_log_timestamp		#
.LVL34:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:82:         ESP_LOGI(TAG, "[%s] Драйвер остыл, возвращаю рабочий ток %" PRIu32 " мА",
	.loc 1 82 64 discriminator 21 view .LVU123
	addx4	a9, a2, a2	#, tmp173, a, a
.LVL35:
	.loc 1 82 64 discriminator 21 view .LVU124
	addx2	a9, a9, a2	#, tmp175, tmp173, a
.LVL36:
	.loc 1 82 64 discriminator 21 view .LVU125
	l32r	a8, .LC8	#, tmp170
.LVL37:
	.loc 1 82 64 discriminator 21 view .LVU126
	addx4	a9, a9, a8	#, tmp177, tmp175, tmp170
.LVL38:
.LBB56:
.LBI56:
	.loc 2 81 20 is_stmt 1 view .LVU127
.LBB57:
	.loc 2 83 5 view .LVU128
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h:83:     return (cs + 1) * TMC_FULL_SCALE_MA / 32;
	.loc 2 83 16 is_stmt 0 view .LVU129
	addi.n	a8, a6, 1	# _18, _35,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h:83:     return (cs + 1) * TMC_FULL_SCALE_MA / 32;
	.loc 2 83 21 view .LVU130
	movi	a11, 0x3d2	# tmp178,
	mull	a8, a8, a11	# _19, _18, tmp178
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h:83:     return (cs + 1) * TMC_FULL_SCALE_MA / 32;
	.loc 2 83 43 view .LVU131
	srli	a8, a8, 5	# _20, _19,
.LVL39:
	.loc 2 83 43 view .LVU132
.LBE57:
.LBE56:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:82:         ESP_LOGI(TAG, "[%s] Драйвер остыл, возвращаю рабочий ток %" PRIu32 " мА",
	.loc 1 82 115 discriminator 22 view .LVU133
	l32r	a11, .LC10	#, tmp179
	s32i.n	a8, sp, 0	#, _20
	l32i.n	a15, a9, 0	# AXES[a$37_30].name,
	mov.n	a14, a11	#, tmp179
	mov.n	a13, a10	#, _71
	l32r	a12, .LC15	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL40:
	.loc 1 82 51 is_stmt 1 view .LVU134
	.loc 1 82 14 view .LVU135
.LBE54:
	.loc 1 82 9 view .LVU136
	j	.L3		#
.LVL41:
.L9:
	.loc 1 82 9 is_stmt 0 view .LVU137
.LBE53:
.LBE52:
.LBB58:
.LBB51:
.LBB50:
.LBB49:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:63:                 return err;
	.loc 1 63 24 view .LVU138
	mov.n	a7, a10	# <retval>, err
.LVL42:
.L3:
	.loc 1 63 24 view .LVU139
.LBE49:
.LBE50:
.LBE51:
.LBE58:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:87: }
	.loc 1 87 1 view .LVU140
	mov.n	a2, a7	#, <retval>
.LVL43:
	.loc 1 87 1 view .LVU141
	retw.n	
.LFE100:
	.size	_Z18tmc_check_overheat6axis_t, .-_Z18tmc_check_overheat6axis_t
	.section	.rodata._Z18tmc_log_drv_status6axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC18:
	.base64	"RSAoJWx1KSAlczogWyVzXSBEUlZfU1RBVFVTOiDQvdC1INGD0LTQsNC70L7RgdGMINC/0YDQvtGH0LjRgtCw0YLRjCDRgNC10LPQuNGB0YLRgDogJXMKAA=="
	.align	4
.LC20:
	.base64	"RSAoJWx1KSAlczogRFJWX1NUQVRVUy5vdDog0L/QtdGA0LXQs9GA0LXQsiwg0LTRgNCw0LnQstC10YAg0L7RgtC60LvRjtGH0LjQuyDQvNC+0YLQvtGAINC00L4g0L7RgdGC0YvQstCw0L3QuNGPCgA="
	.align	4
.LC22:
	.base64	"RSAoJWx1KSAlczogRFJWX1NUQVRVUy5zMmdhOiDQt9Cw0LzRi9C60LDQvdC40LUg0YTQsNC30YsgQSDQvdCwINC30LXQvNC70Y4sINC/0YDQvtCy0LXRgNGMINC/0YDQvtCy0L7QtNCwINC80L7RgtC+0YDQsAoA"
	.align	4
.LC24:
	.base64	"RSAoJWx1KSAlczogRFJWX1NUQVRVUy5zMmdiOiDQt9Cw0LzRi9C60LDQvdC40LUg0YTQsNC30YsgQiDQvdCwINC30LXQvNC70Y4sINC/0YDQvtCy0LXRgNGMINC/0YDQvtCy0L7QtNCwINC80L7RgtC+0YDQsAoA"
	.align	4
.LC26:
	.base64	"RSAoJWx1KSAlczogRFJWX1NUQVRVUy5zMnZzYTog0LfQsNC80YvQutCw0L3QuNC1INC90LjQttC90LXQs9C+INC60LvRjtGH0LAg0YTQsNC30YsgQQoA"
	.align	4
.LC28:
	.base64	"RSAoJWx1KSAlczogRFJWX1NUQVRVUy5zMnZzYjog0LfQsNC80YvQutCw0L3QuNC1INC90LjQttC90LXQs9C+INC60LvRjtGH0LAg0YTQsNC30YsgQgoA"
	.align	4
.LC30:
	.base64	"VyAoJWx1KSAlczogRFJWX1NUQVRVUy5vdHB3OiDQtNGA0LDQudCy0LXRgCDQvdCw0LPRgNC10LvRgdGPINC00L4gMTIwIMKwQywg0YHRgtC+0LjRgiDRgdC90LjQt9C40YLRjCDRgtC+0LoKAA=="
	.align	4
.LC33:
	.base64	"VyAoJWx1KSAlczogRFJWX1NUQVRVUzog0YLQtdC80L/QtdGA0LDRgtGD0YDQsCDQstGL0YjQtSAxNTcgwrBDCgA="
	.align	4
.LC35:
	.base64	"VyAoJWx1KSAlczogRFJWX1NUQVRVUzog0YLQtdC80L/QtdGA0LDRgtGD0YDQsCDQstGL0YjQtSAxNTAgwrBDCgA="
	.align	4
.LC37:
	.base64	"VyAoJWx1KSAlczogRFJWX1NUQVRVUzog0YLQtdC80L/QtdGA0LDRgtGD0YDQsCDQstGL0YjQtSAxNDMgwrBDCgA="
	.align	4
.LC39:
	.base64	"VyAoJWx1KSAlczogRFJWX1NUQVRVUzog0YLQtdC80L/QtdGA0LDRgtGD0YDQsCDQstGL0YjQtSAxMjAgwrBDCgA="
	.align	4
.LC41:
	.base64	"VyAoJWx1KSAlczogRFJWX1NUQVRVUy5vbGE6INCy0L7Qt9C80L7QttC10L0g0L7QsdGA0YvQsiDQvtCx0LzQvtGC0LrQuCBBICjQsiDQv9C+0LrQvtC1INCx0YvQstCw0LXRgiDQu9C+0LbQvdGL0LwpCgA="
	.align	4
.LC43:
	.base64	"VyAoJWx1KSAlczogRFJWX1NUQVRVUy5vbGI6INCy0L7Qt9C80L7QttC10L0g0L7QsdGA0YvQsiDQvtCx0LzQvtGC0LrQuCBCICjQsiDQv9C+0LrQvtC1INCx0YvQstCw0LXRgiDQu9C+0LbQvdGL0LwpCgA="
	.section	.text._Z18tmc_log_drv_status6axis_t,"ax",@progbits
	.literal_position
	.literal .LC16, AXES
	.literal .LC17, .LC1
	.literal .LC19, .LC18
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.literal .LC31, .LC30
	.literal .LC34, .LC33
	.literal .LC36, .LC35
	.literal .LC38, .LC37
	.literal .LC40, .LC39
	.literal .LC42, .LC41
	.literal .LC44, .LC43
	.align	4
	.global	_Z18tmc_log_drv_status6axis_t
	.type	_Z18tmc_log_drv_status6axis_t, @function
_Z18tmc_log_drv_status6axis_t:
.LVL44:
.LFB101:
	.loc 1 97 40 is_stmt 1 view -0
	.loc 1 97 40 is_stmt 0 view .LVU143
	entry	sp, 64	#
.LCFI3:
	mov.n	a10, a2	# a, a
	mov.n	a7, a2	# a, a
	.loc 1 98 5 is_stmt 1 view .LVU144
	.loc 1 100 5 view .LVU145
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:100:     esp_err_t err = tmc_read(a, TMC_REG_DRV_STATUS, &status);
	.loc 1 100 29 is_stmt 0 view .LVU146
	addi	a12, sp, 16	#,,
	movi	a11, 0x6f	#,
	call8	_Z8tmc_read6axis_thPm		#
.LVL45:
	mov.n	a2, a10	# <retval>, <retval>
.LVL46:
	.loc 1 101 5 is_stmt 1 view .LVU147
.LBB59:
	beqz.n	a10, .L12	# <retval>,
.LBB60:
	.loc 1 102 9 view .LVU148
	.loc 1 102 14 view .LVU149
	.loc 1 102 19 view .LVU150
	.loc 1 102 52 view .LVU151
	.loc 1 102 57 view .LVU152
.LBB61:
	.loc 1 102 116 discriminator 1 view .LVU153
.LBB62:
	.loc 1 102 141 discriminator 1 view .LVU154
	.loc 1 102 176 discriminator 1 view .LVU155
	.loc 1 102 217 view .LVU156
.LBE62:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:102:         ESP_LOGE(TAG, "[%s] DRV_STATUS: не удалось прочитать регистр: %s", AXES[a].name, tmc_err_to_name(err));
	.loc 1 102 123 is_stmt 0 discriminator 1 view .LVU157
	call8	esp_log_timestamp		#
.LVL47:
	mov.n	a6, a10	# _2, _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:102:         ESP_LOGE(TAG, "[%s] DRV_STATUS: не удалось прочитать регистр: %s", AXES[a].name, tmc_err_to_name(err));
	.loc 1 102 142 discriminator 3 view .LVU158
	addx4	a8, a7, a7	#, tmp112, a, a
	addx2	a8, a8, a7	#, tmp114, tmp112, a
	l32r	a9, .LC16	#, tmp109
	addx4	a8, a8, a9	#, tmp116, tmp114, tmp109
	l32i.n	a8, a8, 0	# AXES[a$70_4].name, _5
	mov.n	a7, a8	# _5, _5
.LVL48:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:102:         ESP_LOGE(TAG, "[%s] DRV_STATUS: не удалось прочитать регистр: %s", AXES[a].name, tmc_err_to_name(err));
	.loc 1 102 123 discriminator 3 view .LVU159
	mov.n	a10, a2	#, <retval>
	call8	_Z15tmc_err_to_namei		#
.LVL49:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:102:         ESP_LOGE(TAG, "[%s] DRV_STATUS: не удалось прочитать регистр: %s", AXES[a].name, tmc_err_to_name(err));
	.loc 1 102 123 discriminator 4 view .LVU160
	l32r	a11, .LC17	#, tmp117
	s32i.n	a10, sp, 0	#, _6
	mov.n	a15, a7	#, _5
	mov.n	a14, a11	#, tmp117
	mov.n	a13, a6	#, _2
	l32r	a12, .LC19	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL50:
	.loc 1 102 52 is_stmt 1 view .LVU161
	.loc 1 102 14 view .LVU162
.LBE61:
	.loc 1 102 9 view .LVU163
	.loc 1 103 9 view .LVU164
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:103:         return err;
	.loc 1 103 16 is_stmt 0 view .LVU165
	j	.L11		#
.LVL51:
.L12:
	.loc 1 103 16 view .LVU166
.LBE60:
.LBE59:
	.loc 1 107 5 is_stmt 1 view .LVU167
.LBB63:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:107:     if (status & DRV_STATUS_OT) {
	.loc 1 107 16 is_stmt 0 view .LVU168
	l32i.n	a8, sp, 16	# status, status
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:107:     if (status & DRV_STATUS_OT) {
	.loc 1 107 5 view .LVU169
	bbci	a8, 1, .L14	# status,,
	.loc 1 108 9 is_stmt 1 view .LVU170
	.loc 1 108 14 view .LVU171
	.loc 1 108 19 view .LVU172
	.loc 1 108 52 view .LVU173
	.loc 1 108 57 view .LVU174
.LBB64:
	.loc 1 108 116 discriminator 1 view .LVU175
.LBB65:
	.loc 1 108 141 discriminator 1 view .LVU176
	.loc 1 108 176 discriminator 1 view .LVU177
	.loc 1 108 217 view .LVU178
.LBE65:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:108:         ESP_LOGE(TAG, "DRV_STATUS.ot: перегрев, драйвер отключил мотор до остывания");
	.loc 1 108 123 is_stmt 0 discriminator 1 view .LVU179
	call8	esp_log_timestamp		#
.LVL52:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:108:         ESP_LOGE(TAG, "DRV_STATUS.ot: перегрев, драйвер отключил мотор до остывания");
	.loc 1 108 123 discriminator 3 view .LVU180
	l32r	a11, .LC17	#, tmp122
	mov.n	a14, a11	#, tmp122
	mov.n	a13, a10	#, _10
	l32r	a12, .LC21	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL53:
	.loc 1 108 52 is_stmt 1 view .LVU181
	.loc 1 108 14 view .LVU182
	.loc 1 108 9 view .LVU183
.L14:
.LBE64:
.LBE63:
	.loc 1 110 5 view .LVU184
.LBB66:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:110:     if (status & DRV_STATUS_S2GA) {
	.loc 1 110 16 is_stmt 0 view .LVU185
	l32i.n	a8, sp, 16	# status, status
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:110:     if (status & DRV_STATUS_S2GA) {
	.loc 1 110 5 view .LVU186
	bbci	a8, 2, .L15	# status,,
	.loc 1 111 9 is_stmt 1 view .LVU187
	.loc 1 111 14 view .LVU188
	.loc 1 111 19 view .LVU189
	.loc 1 111 52 view .LVU190
	.loc 1 111 57 view .LVU191
.LBB67:
	.loc 1 111 116 discriminator 1 view .LVU192
.LBB68:
	.loc 1 111 141 discriminator 1 view .LVU193
	.loc 1 111 176 discriminator 1 view .LVU194
	.loc 1 111 217 view .LVU195
.LBE68:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:111:         ESP_LOGE(TAG, "DRV_STATUS.s2ga: замыкание фазы A на землю, проверь провода мотора");
	.loc 1 111 123 is_stmt 0 discriminator 1 view .LVU196
	call8	esp_log_timestamp		#
.LVL54:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:111:         ESP_LOGE(TAG, "DRV_STATUS.s2ga: замыкание фазы A на землю, проверь провода мотора");
	.loc 1 111 123 discriminator 3 view .LVU197
	l32r	a11, .LC17	#, tmp127
	mov.n	a14, a11	#, tmp127
	mov.n	a13, a10	#, _15
	l32r	a12, .LC23	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL55:
	.loc 1 111 52 is_stmt 1 view .LVU198
	.loc 1 111 14 view .LVU199
	.loc 1 111 9 view .LVU200
.L15:
.LBE67:
.LBE66:
	.loc 1 113 5 view .LVU201
.LBB69:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:113:     if (status & DRV_STATUS_S2GB) {
	.loc 1 113 16 is_stmt 0 view .LVU202
	l32i.n	a8, sp, 16	# status, status
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:113:     if (status & DRV_STATUS_S2GB) {
	.loc 1 113 5 view .LVU203
	bbci	a8, 3, .L16	# status,,
	.loc 1 114 9 is_stmt 1 view .LVU204
	.loc 1 114 14 view .LVU205
	.loc 1 114 19 view .LVU206
	.loc 1 114 52 view .LVU207
	.loc 1 114 57 view .LVU208
.LBB70:
	.loc 1 114 116 discriminator 1 view .LVU209
.LBB71:
	.loc 1 114 141 discriminator 1 view .LVU210
	.loc 1 114 176 discriminator 1 view .LVU211
	.loc 1 114 217 view .LVU212
.LBE71:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:114:         ESP_LOGE(TAG, "DRV_STATUS.s2gb: замыкание фазы B на землю, проверь провода мотора");
	.loc 1 114 123 is_stmt 0 discriminator 1 view .LVU213
	call8	esp_log_timestamp		#
.LVL56:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:114:         ESP_LOGE(TAG, "DRV_STATUS.s2gb: замыкание фазы B на землю, проверь провода мотора");
	.loc 1 114 123 discriminator 3 view .LVU214
	l32r	a11, .LC17	#, tmp132
	mov.n	a14, a11	#, tmp132
	mov.n	a13, a10	#, _20
	l32r	a12, .LC25	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL57:
	.loc 1 114 52 is_stmt 1 view .LVU215
	.loc 1 114 14 view .LVU216
	.loc 1 114 9 view .LVU217
.L16:
.LBE70:
.LBE69:
	.loc 1 116 5 view .LVU218
.LBB72:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:116:     if (status & DRV_STATUS_S2VSA) {
	.loc 1 116 16 is_stmt 0 view .LVU219
	l32i.n	a8, sp, 16	# status, status
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:116:     if (status & DRV_STATUS_S2VSA) {
	.loc 1 116 5 view .LVU220
	bbci	a8, 4, .L17	# status,,
	.loc 1 117 9 is_stmt 1 view .LVU221
	.loc 1 117 14 view .LVU222
	.loc 1 117 19 view .LVU223
	.loc 1 117 52 view .LVU224
	.loc 1 117 57 view .LVU225
.LBB73:
	.loc 1 117 116 discriminator 1 view .LVU226
.LBB74:
	.loc 1 117 141 discriminator 1 view .LVU227
	.loc 1 117 176 discriminator 1 view .LVU228
	.loc 1 117 217 view .LVU229
.LBE74:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:117:         ESP_LOGE(TAG, "DRV_STATUS.s2vsa: замыкание нижнего ключа фазы A");
	.loc 1 117 123 is_stmt 0 discriminator 1 view .LVU230
	call8	esp_log_timestamp		#
.LVL58:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:117:         ESP_LOGE(TAG, "DRV_STATUS.s2vsa: замыкание нижнего ключа фазы A");
	.loc 1 117 123 discriminator 3 view .LVU231
	l32r	a11, .LC17	#, tmp137
	mov.n	a14, a11	#, tmp137
	mov.n	a13, a10	#, _25
	l32r	a12, .LC27	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL59:
	.loc 1 117 52 is_stmt 1 view .LVU232
	.loc 1 117 14 view .LVU233
	.loc 1 117 9 view .LVU234
.L17:
.LBE73:
.LBE72:
	.loc 1 119 5 view .LVU235
.LBB75:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:119:     if (status & DRV_STATUS_S2VSB) {
	.loc 1 119 16 is_stmt 0 view .LVU236
	l32i.n	a8, sp, 16	# status, status
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:119:     if (status & DRV_STATUS_S2VSB) {
	.loc 1 119 5 view .LVU237
	bbci	a8, 5, .L18	# status,,
	.loc 1 120 9 is_stmt 1 view .LVU238
	.loc 1 120 14 view .LVU239
	.loc 1 120 19 view .LVU240
	.loc 1 120 52 view .LVU241
	.loc 1 120 57 view .LVU242
.LBB76:
	.loc 1 120 116 discriminator 1 view .LVU243
.LBB77:
	.loc 1 120 141 discriminator 1 view .LVU244
	.loc 1 120 176 discriminator 1 view .LVU245
	.loc 1 120 217 view .LVU246
.LBE77:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:120:         ESP_LOGE(TAG, "DRV_STATUS.s2vsb: замыкание нижнего ключа фазы B");
	.loc 1 120 123 is_stmt 0 discriminator 1 view .LVU247
	call8	esp_log_timestamp		#
.LVL60:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:120:         ESP_LOGE(TAG, "DRV_STATUS.s2vsb: замыкание нижнего ключа фазы B");
	.loc 1 120 123 discriminator 3 view .LVU248
	l32r	a11, .LC17	#, tmp142
	mov.n	a14, a11	#, tmp142
	mov.n	a13, a10	#, _30
	l32r	a12, .LC29	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL61:
	.loc 1 120 52 is_stmt 1 view .LVU249
	.loc 1 120 14 view .LVU250
	.loc 1 120 9 view .LVU251
.L18:
.LBE76:
.LBE75:
	.loc 1 124 5 view .LVU252
.LBB78:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:124:     if (status & DRV_STATUS_OTPW) {
	.loc 1 124 16 is_stmt 0 view .LVU253
	l32i.n	a8, sp, 16	# status, status
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:124:     if (status & DRV_STATUS_OTPW) {
	.loc 1 124 5 view .LVU254
	bbci	a8, 0, .L19	# status,,
	.loc 1 125 9 is_stmt 1 view .LVU255
	.loc 1 125 14 view .LVU256
	.loc 1 125 19 view .LVU257
	.loc 1 125 51 view .LVU258
	.loc 1 125 56 view .LVU259
	.loc 1 125 163 discriminator 2 view .LVU260
.LBB79:
	.loc 1 125 220 discriminator 5 view .LVU261
.LBB80:
	.loc 1 125 245 discriminator 5 view .LVU262
	.loc 1 125 280 discriminator 5 view .LVU263
	.loc 1 125 320 view .LVU264
.LBE80:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:125:         ESP_LOGW(TAG, "DRV_STATUS.otpw: драйвер нагрелся до 120 °C, стоит снизить ток");
	.loc 1 125 227 is_stmt 0 discriminator 5 view .LVU265
	call8	esp_log_timestamp		#
.LVL62:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:125:         ESP_LOGW(TAG, "DRV_STATUS.otpw: драйвер нагрелся до 120 °C, стоит снизить ток");
	.loc 1 125 227 discriminator 7 view .LVU266
	l32r	a11, .LC17	#, tmp146
	mov.n	a14, a11	#, tmp146
	mov.n	a13, a10	#, _38
	l32r	a12, .LC31	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL63:
	.loc 1 125 51 is_stmt 1 view .LVU267
	.loc 1 125 14 view .LVU268
	.loc 1 125 9 view .LVU269
.L19:
.LBE79:
.LBE78:
	.loc 1 129 5 view .LVU270
.LBB81:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:129:     if (status & DRV_STATUS_T157) {
	.loc 1 129 16 is_stmt 0 view .LVU271
	l32i.n	a8, sp, 16	# status, status$183_47
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:129:     if (status & DRV_STATUS_T157) {
	.loc 1 129 5 view .LVU272
	bbci	a8, 11, .L20	# status$183_47,,
	.loc 1 130 9 is_stmt 1 view .LVU273
	.loc 1 130 14 view .LVU274
	.loc 1 130 19 view .LVU275
	.loc 1 130 51 view .LVU276
	.loc 1 130 56 view .LVU277
	.loc 1 130 119 discriminator 2 view .LVU278
.LBB82:
	.loc 1 130 176 discriminator 5 view .LVU279
.LBB83:
	.loc 1 130 201 discriminator 5 view .LVU280
	.loc 1 130 236 discriminator 5 view .LVU281
	.loc 1 130 276 view .LVU282
.LBE83:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:130:         ESP_LOGW(TAG, "DRV_STATUS: температура выше 157 °C");
	.loc 1 130 183 is_stmt 0 discriminator 5 view .LVU283
	call8	esp_log_timestamp		#
.LVL64:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:130:         ESP_LOGW(TAG, "DRV_STATUS: температура выше 157 °C");
	.loc 1 130 183 discriminator 7 view .LVU284
	l32r	a11, .LC17	#, tmp150
	mov.n	a14, a11	#, tmp150
	mov.n	a13, a10	#, _53
	l32r	a12, .LC34	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL65:
	.loc 1 130 51 is_stmt 1 view .LVU285
	.loc 1 130 14 view .LVU286
	.loc 1 130 9 view .LVU287
.LBE82:
	j	.L21		#
.L20:
	.loc 1 131 12 view .LVU288
.LBB84:
	bbci	a8, 10, .L22	# status$183_47,,
	.loc 1 132 9 view .LVU289
	.loc 1 132 14 view .LVU290
	.loc 1 132 19 view .LVU291
	.loc 1 132 51 view .LVU292
	.loc 1 132 56 view .LVU293
	.loc 1 132 119 discriminator 2 view .LVU294
.LBB85:
	.loc 1 132 176 discriminator 5 view .LVU295
.LBB86:
	.loc 1 132 201 discriminator 5 view .LVU296
	.loc 1 132 236 discriminator 5 view .LVU297
	.loc 1 132 276 view .LVU298
.LBE86:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:132:         ESP_LOGW(TAG, "DRV_STATUS: температура выше 150 °C");
	.loc 1 132 183 is_stmt 0 discriminator 5 view .LVU299
	call8	esp_log_timestamp		#
.LVL66:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:132:         ESP_LOGW(TAG, "DRV_STATUS: температура выше 150 °C");
	.loc 1 132 183 discriminator 7 view .LVU300
	l32r	a11, .LC17	#, tmp154
	mov.n	a14, a11	#, tmp154
	mov.n	a13, a10	#, _69
	l32r	a12, .LC36	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL67:
	.loc 1 132 51 is_stmt 1 view .LVU301
	.loc 1 132 14 view .LVU302
	.loc 1 132 9 view .LVU303
.LBE85:
	j	.L21		#
.L22:
	.loc 1 133 12 view .LVU304
.LBB87:
	bbci	a8, 9, .L23	# status$183_47,,
	.loc 1 134 9 view .LVU305
	.loc 1 134 14 view .LVU306
	.loc 1 134 19 view .LVU307
	.loc 1 134 51 view .LVU308
	.loc 1 134 56 view .LVU309
	.loc 1 134 119 discriminator 2 view .LVU310
.LBB88:
	.loc 1 134 176 discriminator 5 view .LVU311
.LBB89:
	.loc 1 134 201 discriminator 5 view .LVU312
	.loc 1 134 236 discriminator 5 view .LVU313
	.loc 1 134 276 view .LVU314
.LBE89:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:134:         ESP_LOGW(TAG, "DRV_STATUS: температура выше 143 °C");
	.loc 1 134 183 is_stmt 0 discriminator 5 view .LVU315
	call8	esp_log_timestamp		#
.LVL68:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:134:         ESP_LOGW(TAG, "DRV_STATUS: температура выше 143 °C");
	.loc 1 134 183 discriminator 7 view .LVU316
	l32r	a11, .LC17	#, tmp158
	mov.n	a14, a11	#, tmp158
	mov.n	a13, a10	#, _85
	l32r	a12, .LC38	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL69:
	.loc 1 134 51 is_stmt 1 view .LVU317
	.loc 1 134 14 view .LVU318
	.loc 1 134 9 view .LVU319
.LBE88:
	j	.L21		#
.L23:
	.loc 1 135 12 view .LVU320
.LBB90:
	bbci	a8, 8, .L21	# status$183_47,,
	.loc 1 136 9 view .LVU321
	.loc 1 136 14 view .LVU322
	.loc 1 136 19 view .LVU323
	.loc 1 136 51 view .LVU324
	.loc 1 136 56 view .LVU325
	.loc 1 136 119 discriminator 2 view .LVU326
.LBB91:
	.loc 1 136 176 discriminator 5 view .LVU327
.LBB92:
	.loc 1 136 201 discriminator 5 view .LVU328
	.loc 1 136 236 discriminator 5 view .LVU329
	.loc 1 136 276 view .LVU330
.LBE92:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:136:         ESP_LOGW(TAG, "DRV_STATUS: температура выше 120 °C");
	.loc 1 136 183 is_stmt 0 discriminator 5 view .LVU331
	call8	esp_log_timestamp		#
.LVL70:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:136:         ESP_LOGW(TAG, "DRV_STATUS: температура выше 120 °C");
	.loc 1 136 183 discriminator 7 view .LVU332
	l32r	a11, .LC17	#, tmp162
	mov.n	a14, a11	#, tmp162
	mov.n	a13, a10	#, _101
	l32r	a12, .LC40	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL71:
	.loc 1 136 51 is_stmt 1 view .LVU333
	.loc 1 136 14 view .LVU334
	.loc 1 136 9 view .LVU335
.L21:
.LBE91:
.LBE90:
.LBE87:
.LBE84:
.LBE81:
	.loc 1 139 5 view .LVU336
.LBB93:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:139:     if (status & DRV_STATUS_OLA) {
	.loc 1 139 16 is_stmt 0 view .LVU337
	l32i.n	a8, sp, 16	# status, status
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:139:     if (status & DRV_STATUS_OLA) {
	.loc 1 139 5 view .LVU338
	bbci	a8, 6, .L24	# status,,
	.loc 1 140 9 is_stmt 1 view .LVU339
	.loc 1 140 14 view .LVU340
	.loc 1 140 19 view .LVU341
	.loc 1 140 51 view .LVU342
	.loc 1 140 56 view .LVU343
	.loc 1 140 170 discriminator 2 view .LVU344
.LBB94:
	.loc 1 140 227 discriminator 5 view .LVU345
.LBB95:
	.loc 1 140 252 discriminator 5 view .LVU346
	.loc 1 140 287 discriminator 5 view .LVU347
	.loc 1 140 327 view .LVU348
.LBE95:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:140:         ESP_LOGW(TAG, "DRV_STATUS.ola: возможен обрыв обмотки A (в покое бывает ложным)");
	.loc 1 140 234 is_stmt 0 discriminator 5 view .LVU349
	call8	esp_log_timestamp		#
.LVL72:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:140:         ESP_LOGW(TAG, "DRV_STATUS.ola: возможен обрыв обмотки A (в покое бывает ложным)");
	.loc 1 140 234 discriminator 7 view .LVU350
	l32r	a11, .LC17	#, tmp167
	mov.n	a14, a11	#, tmp167
	mov.n	a13, a10	#, _118
	l32r	a12, .LC42	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL73:
	.loc 1 140 51 is_stmt 1 view .LVU351
	.loc 1 140 14 view .LVU352
	.loc 1 140 9 view .LVU353
.L24:
.LBE94:
.LBE93:
	.loc 1 142 5 view .LVU354
.LBB96:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:142:     if (status & DRV_STATUS_OLB) {
	.loc 1 142 16 is_stmt 0 view .LVU355
	l32i.n	a8, sp, 16	# status, status
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:142:     if (status & DRV_STATUS_OLB) {
	.loc 1 142 5 view .LVU356
	bbci	a8, 7, .L25	# status,,
	.loc 1 143 9 is_stmt 1 view .LVU357
	.loc 1 143 14 view .LVU358
	.loc 1 143 19 view .LVU359
	.loc 1 143 51 view .LVU360
	.loc 1 143 56 view .LVU361
	.loc 1 143 170 discriminator 2 view .LVU362
.LBB97:
	.loc 1 143 227 discriminator 5 view .LVU363
.LBB98:
	.loc 1 143 252 discriminator 5 view .LVU364
	.loc 1 143 287 discriminator 5 view .LVU365
	.loc 1 143 327 view .LVU366
.LBE98:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:143:         ESP_LOGW(TAG, "DRV_STATUS.olb: возможен обрыв обмотки B (в покое бывает ложным)");
	.loc 1 143 234 is_stmt 0 discriminator 5 view .LVU367
	call8	esp_log_timestamp		#
.LVL74:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:143:         ESP_LOGW(TAG, "DRV_STATUS.olb: возможен обрыв обмотки B (в покое бывает ложным)");
	.loc 1 143 234 discriminator 7 view .LVU368
	l32r	a11, .LC17	#, tmp172
	mov.n	a14, a11	#, tmp172
	mov.n	a13, a10	#, _135
	l32r	a12, .LC44	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL75:
	.loc 1 143 51 is_stmt 1 view .LVU369
	.loc 1 143 14 view .LVU370
	.loc 1 143 9 view .LVU371
.L25:
.LBE97:
.LBE96:
	.loc 1 146 5 view .LVU372
	l32i.n	a8, sp, 16	# status, status
	extui	a8, a8, 1, 5	# tmp195, status,,
	beqz.n	a8, .L11	# tmp195,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:147:         return ESP_ERR_INVALID_STATE;
	.loc 1 147 16 is_stmt 0 view .LVU373
	movi	a2, 0x103	# <retval>,
.LVL76:
.L11:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:151: }
	.loc 1 151 1 view .LVU374
	retw.n	
.LFE101:
	.size	_Z18tmc_log_drv_status6axis_t, .-_Z18tmc_log_drv_status6axis_t
	.section	.rodata._Z20tmc_check_connection6axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC45:
	.base64	"0LTRgNCw0LnQstC10YAg0LLRi9C60LvRjtGH0LXQvQA="
	.align	4
.LC47:
	.base64	"0LTRgNCw0LnQstC10YAg0JLQmtCb0K7Qp9CB0J0A"
	.align	4
.LC52:
	.base64	"RSAoJWx1KSAlczogWyVzXSDQodCy0Y/Qt9GMOiDQtNGA0LDQudCy0LXRgCDRgSDQsNC00YDQtdGB0L7QvCAldSDQvdC1INC+0YLQstC10YfQsNC10YIgKCVzKS4g0J/RgNC+0LLQtdGA0Ywg0L/QuNGC0LDQvdC40LUgVlMsIE1TMS9NUzIgKNCw0LTRgNC10YEpLCDQv9GA0L7QstC+0LQgUEROX1VBUlQKAA=="
	.align	4
.LC54:
	.base64	"SSAoJWx1KSAlczogWyVzXSDQodCy0Y/Qt9GMOiDQsNC00YDQtdGBICV1INC+0YLQstC10YLQuNC7LCDQstC10YDRgdC40Y8gMHglMDJYLCBNUzEgPSAlbHUsIE1TMiA9ICVsdSAo0LDQtNGA0LXRgSDQv9C+INC/0LjQvdCw0LwgPSAlbHUpLCBFTk4gPSAlbHUgKCVzKQoA"
	.align	4
.LC56:
	.base64	"RSAoJWx1KSAlczogWyVzXSDQodCy0Y/Qt9GMOiDQv9C40L3RiyBNUzEvTVMyINC00LDRjtGCINCw0LTRgNC10YEgJWx1LCDQsCDQsiDQutC+0L3RhNC40LPQtSAldSDigJQg0L/RgNC+0LLQtdGA0YwgTVMxL01TMgoA"
	.align	4
.LC58:
	.base64	"RSAoJWx1KSAlczogWyVzXSDQodCy0Y/Qt9GMOiDQstC10YDRgdC40Y8gMHglMDJYIOKAlCDRjdGC0L4g0L3QtSBUTUMyMjA5ICjQvtC20LjQtNCw0LvQsNGB0YwgMHglMDJYKQoA"
	.section	.text._Z20tmc_check_connection6axis_t,"ax",@progbits
	.literal_position
	.literal .LC46, .LC45
	.literal .LC48, .LC47
	.literal .LC49, 131074
	.literal .LC50, AXES
	.literal .LC51, .LC1
	.literal .LC53, .LC52
	.literal .LC55, .LC54
	.literal .LC57, .LC56
	.literal .LC59, .LC58
	.align	4
	.global	_Z20tmc_check_connection6axis_t
	.type	_Z20tmc_check_connection6axis_t, @function
_Z20tmc_check_connection6axis_t:
.LVL77:
.LFB102:
	.loc 1 165 42 is_stmt 1 view -0
	.loc 1 165 42 is_stmt 0 view .LVU376
	entry	sp, 96	#
.LCFI4:
	mov.n	a7, a2	# a, a
	.loc 1 166 5 is_stmt 1 view .LVU377
.LVL78:
	.loc 1 167 5 view .LVU378
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:167:     uint32_t ioin = 0;
	.loc 1 167 14 is_stmt 0 view .LVU379
	movi.n	a8, 0	# tmp79,
	s32i.n	a8, sp, 32	# ioin, tmp79
	.loc 1 168 5 is_stmt 1 view .LVU380
.LVL79:
	.loc 1 170 5 view .LVU381
.LBB99:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:170:     for (int i = 0; i < ATTEMPTS; i++) {
	.loc 1 170 14 is_stmt 0 view .LVU382
	mov.n	a6, a8	# i, tmp79
.LBE99:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:168:     esp_err_t err = ESP_FAIL;
	.loc 1 168 15 view .LVU383
	movi.n	a2, -1	# <retval>,
.LVL80:
.LBB100:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:170:     for (int i = 0; i < ATTEMPTS; i++) {
	.loc 1 170 5 view .LVU384
	j	.L28		#
.LVL81:
.L30:
	.loc 1 171 9 is_stmt 1 view .LVU385
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:171:         err = tmc_read(a, TMC_REG_IOIN, &ioin);
	.loc 1 171 23 is_stmt 0 view .LVU386
	addi	a12, sp, 32	#,,
	movi.n	a11, 6	#,
	mov.n	a10, a7	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL82:
	mov.n	a2, a10	# <retval>, <retval>
.LVL83:
	.loc 1 172 9 is_stmt 1 view .LVU387
	beqz.n	a10, .L29	# <retval>,
	.loc 1 173 9 view .LVU388
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:173:         vTaskDelay(pdMS_TO_TICKS(100));
	.loc 1 173 19 is_stmt 0 view .LVU389
	movi.n	a10, 0xa	#,
	call8	vTaskDelay		#
.LVL84:
	.loc 1 170 5 is_stmt 1 discriminator 2 view .LVU390
	addi.n	a6, a6, 1	# i, i,
.LVL85:
.L28:
	.loc 1 170 23 discriminator 1 view .LVU391
	blti	a6, 5, .L30	# i,,
.L29:
	.loc 1 170 23 is_stmt 0 discriminator 1 view .LVU392
.LBE100:
	.loc 1 176 5 is_stmt 1 view .LVU393
.LBB101:
	beqz.n	a2, .L31	# <retval>,
.LBB102:
	.loc 1 177 9 view .LVU394
	.loc 1 177 14 view .LVU395
	.loc 1 177 19 view .LVU396
	.loc 1 177 52 view .LVU397
	.loc 1 177 57 view .LVU398
.LBB103:
	.loc 1 177 116 discriminator 1 view .LVU399
.LBB104:
	.loc 1 177 141 discriminator 1 view .LVU400
	.loc 1 177 176 discriminator 1 view .LVU401
	.loc 1 177 217 view .LVU402
.LBE104:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:177:         ESP_LOGE(TAG, "[%s] Связь: драйвер с адресом %u не отвечает (%s). "
	.loc 1 177 123 is_stmt 0 discriminator 1 view .LVU403
	call8	esp_log_timestamp		#
.LVL86:
	mov.n	a6, a10	# _2, _2
.LVL87:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:177:         ESP_LOGE(TAG, "[%s] Связь: драйвер с адресом %u не отвечает (%s). "
	.loc 1 177 229 discriminator 3 view .LVU404
	l32r	a10, .LC50	#, tmp80
	addx4	a8, a7, a7	#, tmp83, a, a
	addx2	a9, a8, a7	#, tmp85, tmp83, a
	addx4	a9, a9, a10	#, tmp87, tmp85, tmp80
	l32i.n	a5, a9, 0	# AXES[a$283_4].name, _5
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:177:         ESP_LOGE(TAG, "[%s] Связь: драйвер с адресом %u не отвечает (%s). "
	.loc 1 177 243 discriminator 3 view .LVU405
	l8ui	a7, a9, 4	# AXES[a$283_4].uart_addr, _6
.LVL88:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:177:         ESP_LOGE(TAG, "[%s] Связь: драйвер с адресом %u не отвечает (%s). "
	.loc 1 177 123 discriminator 3 view .LVU406
	mov.n	a10, a2	#, <retval>
	call8	_Z15tmc_err_to_namei		#
.LVL89:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:177:         ESP_LOGE(TAG, "[%s] Связь: драйвер с адресом %u не отвечает (%s). "
	.loc 1 177 123 discriminator 4 view .LVU407
	l32r	a11, .LC51	#, tmp97
	s32i.n	a10, sp, 4	#, _8
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:177:         ESP_LOGE(TAG, "[%s] Связь: драйвер с адресом %u не отвечает (%s). "
	.loc 1 177 123 discriminator 3 view .LVU408
	s32i.n	a7, sp, 0	#, _6
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:177:         ESP_LOGE(TAG, "[%s] Связь: драйвер с адресом %u не отвечает (%s). "
	.loc 1 177 123 discriminator 4 view .LVU409
	mov.n	a15, a5	#, _5
	mov.n	a14, a11	#, tmp97
	mov.n	a13, a6	#, _2
	l32r	a12, .LC53	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL90:
	.loc 1 177 52 is_stmt 1 view .LVU410
	.loc 1 177 14 view .LVU411
.LBE103:
	.loc 1 177 9 view .LVU412
	.loc 1 180 9 view .LVU413
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:180:         return err;
	.loc 1 180 16 is_stmt 0 view .LVU414
	j	.L27		#
.LVL91:
.L31:
	.loc 1 180 16 view .LVU415
.LBE102:
.LBE101:
	.loc 1 183 5 is_stmt 1 view .LVU416
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:183:     uint8_t  version = ioin >> 24;
	.loc 1 183 28 is_stmt 0 view .LVU417
	l32i.n	a6, sp, 32	# ioin, ioin$305_9
.LVL92:
	.loc 1 183 28 view .LVU418
	extui	a8, a6, 24, 8	# _10, ioin$305_9,
	s32i.n	a8, sp, 52	# %sfp, _10
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:183:     uint8_t  version = ioin >> 24;
	.loc 1 183 13 view .LVU419
	s32i.n	a8, sp, 56	# %sfp, version
.LVL93:
	.loc 1 184 5 is_stmt 1 view .LVU420
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:184:     uint32_t enn = (ioin >> 0) & 1;
	.loc 1 184 14 is_stmt 0 view .LVU421
	extui	a3, a6, 0, 1	# enn, ioin$305_9,
.LVL94:
	.loc 1 185 5 is_stmt 1 view .LVU422
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:185:     uint32_t ms1 = (ioin >> 2) & 1;
	.loc 1 185 14 is_stmt 0 view .LVU423
	extui	a4, a6, 2, 1	# ms1, ioin$305_9,,
.LVL95:
	.loc 1 186 5 is_stmt 1 view .LVU424
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:186:     uint32_t ms2 = (ioin >> 3) & 1;
	.loc 1 186 14 is_stmt 0 view .LVU425
	extui	a6, a6, 3, 1	# ms2, ioin$305_9,,
.LVL96:
	.loc 1 187 5 is_stmt 1 view .LVU426
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:187:     uint32_t addr_by_pins = ms1 + 2 * ms2;
	.loc 1 187 14 is_stmt 0 view .LVU427
	addx2	a5, a6, a4	#, addr_by_pins, ms2, ms1
.LVL97:
	.loc 1 189 5 is_stmt 1 view .LVU428
	.loc 1 189 10 view .LVU429
	.loc 1 189 15 view .LVU430
	.loc 1 189 47 view .LVU431
	.loc 1 189 52 view .LVU432
	.loc 1 189 206 discriminator 2 view .LVU433
	.loc 1 189 206 discriminator 10 view .LVU434
	.loc 1 189 206 discriminator 18 view .LVU435
.LBB105:
	.loc 1 189 208 discriminator 26 view .LVU436
.LBB106:
	.loc 1 189 233 discriminator 26 view .LVU437
	.loc 1 189 268 discriminator 26 view .LVU438
	.loc 1 189 308 view .LVU439
.LBE106:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:189:     ESP_LOGI(TAG, "[%s] Связь: адрес %u ответил, версия 0x%02X, MS1 = %" PRIu32 ", MS2 = %" PRIu32
	.loc 1 189 215 is_stmt 0 discriminator 26 view .LVU440
	call8	esp_log_timestamp		#
.LVL98:
	mov.n	a13, a10	# _15, _15
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:189:     ESP_LOGI(TAG, "[%s] Связь: адрес %u ответил, версия 0x%02X, MS1 = %" PRIu32 ", MS2 = %" PRIu32
	.loc 1 189 60 discriminator 33 view .LVU441
	l32r	a10, .LC50	#, tmp100
	addx4	a8, a7, a7	#, tmp103, a, a
	addx2	a9, a8, a7	#, tmp105, tmp103, a
	addx4	a9, a9, a10	#, tmp107, tmp105, tmp100
	l32i.n	a9, a9, 0	# AXES[a$336_17].name, _18
	s32i.n	a9, sp, 48	# %sfp, _18
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:189:     ESP_LOGI(TAG, "[%s] Связь: адрес %u ответил, версия 0x%02X, MS1 = %" PRIu32 ", MS2 = %" PRIu32
	.loc 1 189 74 discriminator 33 view .LVU442
	addx2	a8, a8, a7	#, tmp113, tmp103, a
	addx4	a8, a8, a10	#, tmp115, tmp113, tmp100
	l8ui	a7, a8, 4	# AXES[a$336_17].uart_addr, _19
.LVL99:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:189:     ESP_LOGI(TAG, "[%s] Связь: адрес %u ответил, версия 0x%02X, MS1 = %" PRIu32 ", MS2 = %" PRIu32
	.loc 1 189 215 discriminator 33 view .LVU443
	beqz.n	a3, .L35	# enn,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:189:     ESP_LOGI(TAG, "[%s] Связь: адрес %u ответил, версия 0x%02X, MS1 = %" PRIu32 ", MS2 = %" PRIu32
	.loc 1 189 215 discriminator 34 view .LVU444
	l32r	a8, .LC46	#, iftmp$338_69
	j	.L33		#
.L35:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:189:     ESP_LOGI(TAG, "[%s] Связь: адрес %u ответил, версия 0x%02X, MS1 = %" PRIu32 ", MS2 = %" PRIu32
	.loc 1 189 215 discriminator 35 view .LVU445
	l32r	a8, .LC48	#, iftmp$338_69
.L33:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:189:     ESP_LOGI(TAG, "[%s] Связь: адрес %u ответил, версия 0x%02X, MS1 = %" PRIu32 ", MS2 = %" PRIu32
	.loc 1 189 215 discriminator 37 view .LVU446
	l32r	a11, .LC51	#, tmp117
	s32i.n	a8, sp, 24	#, iftmp$338_69
	s32i.n	a3, sp, 20	#, enn
	s32i.n	a5, sp, 16	#, addr_by_pins
	s32i.n	a6, sp, 12	#, ms2
	s32i.n	a4, sp, 8	#, ms1
	l32i.n	a8, sp, 52	# %sfp, _10
	s32i.n	a8, sp, 4	#, _10
	s32i.n	a7, sp, 0	#, _19
	l32i.n	a15, sp, 48	# %sfp,
	mov.n	a14, a11	#, tmp117
	l32r	a12, .LC55	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL100:
	.loc 1 189 47 is_stmt 1 view .LVU447
	.loc 1 189 10 view .LVU448
.LBE105:
	.loc 1 189 5 view .LVU449
	.loc 1 194 5 view .LVU450
.LBB107:
	beq	a7, a5, .L34	# _19, addr_by_pins,
.LBB108:
	.loc 1 197 9 view .LVU451
	.loc 1 197 14 view .LVU452
	.loc 1 197 19 view .LVU453
	.loc 1 197 52 view .LVU454
	.loc 1 197 57 view .LVU455
.LBB109:
	.loc 1 197 116 discriminator 1 view .LVU456
.LBB110:
	.loc 1 197 141 discriminator 1 view .LVU457
	.loc 1 197 176 discriminator 1 view .LVU458
	.loc 1 197 217 view .LVU459
.LBE110:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:197:         ESP_LOGE(TAG, "[%s] Связь: пины MS1/MS2 дают адрес %" PRIu32 ", а в конфиге %u — проверь MS1/MS2",
	.loc 1 197 123 is_stmt 0 discriminator 1 view .LVU460
	call8	esp_log_timestamp		#
.LVL101:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:197:         ESP_LOGE(TAG, "[%s] Связь: пины MS1/MS2 дают адрес %" PRIu32 ", а в конфиге %u — проверь MS1/MS2",
	.loc 1 197 123 discriminator 3 view .LVU461
	l32r	a11, .LC51	#, tmp120
	s32i.n	a7, sp, 4	#, _19
	s32i.n	a5, sp, 0	#, addr_by_pins
	l32i.n	a15, sp, 48	# %sfp,
	mov.n	a14, a11	#, tmp120
	mov.n	a13, a10	#, _24
	l32r	a12, .LC57	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL102:
	.loc 1 197 52 is_stmt 1 view .LVU462
	.loc 1 197 14 view .LVU463
.LBE109:
	.loc 1 197 9 view .LVU464
	.loc 1 199 9 view .LVU465
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:199:         return ESP_ERR_INVALID_STATE;
	.loc 1 199 16 is_stmt 0 view .LVU466
	movi	a2, 0x103	# <retval>,
.LVL103:
	.loc 1 199 16 view .LVU467
	j	.L27		#
.LVL104:
.L34:
	.loc 1 199 16 view .LVU468
.LBE108:
.LBE107:
	.loc 1 202 5 is_stmt 1 view .LVU469
.LBB111:
	movi.n	a8, 0x21	# tmp124,
	l32i.n	a9, sp, 56	# %sfp, version
	beq	a9, a8, .L27	# version, tmp124,
.LBB112:
	.loc 1 203 9 view .LVU470
	.loc 1 203 14 view .LVU471
	.loc 1 203 19 view .LVU472
	.loc 1 203 52 view .LVU473
	.loc 1 203 57 view .LVU474
.LBB113:
	.loc 1 203 116 discriminator 1 view .LVU475
.LBB114:
	.loc 1 203 141 discriminator 1 view .LVU476
	.loc 1 203 176 discriminator 1 view .LVU477
	.loc 1 203 217 view .LVU478
.LBE114:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:203:         ESP_LOGE(TAG, "[%s] Связь: версия 0x%02X — это не TMC2209 (ожидалась 0x%02X)",
	.loc 1 203 123 is_stmt 0 discriminator 1 view .LVU479
	call8	esp_log_timestamp		#
.LVL105:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:203:         ESP_LOGE(TAG, "[%s] Связь: версия 0x%02X — это не TMC2209 (ожидалась 0x%02X)",
	.loc 1 203 123 discriminator 3 view .LVU480
	l32r	a11, .LC51	#, tmp125
	movi.n	a8, 0x21	# tmp128,
	s32i.n	a8, sp, 4	#, tmp128
	l32i.n	a8, sp, 52	# %sfp, _10
	s32i.n	a8, sp, 0	#, _10
	l32i.n	a15, sp, 48	# %sfp,
	mov.n	a14, a11	#, tmp125
	mov.n	a13, a10	#, _48
	l32r	a12, .LC59	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL106:
	.loc 1 203 52 is_stmt 1 view .LVU481
	.loc 1 203 14 view .LVU482
.LBE113:
	.loc 1 203 9 view .LVU483
	.loc 1 205 9 view .LVU484
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:205:         return ESP_ERR_TMC_WRONG_CHIP;
	.loc 1 205 16 is_stmt 0 view .LVU485
	l32r	a2, .LC49	#, <retval>
.LVL107:
.L27:
	.loc 1 205 16 view .LVU486
.LBE112:
.LBE111:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:209: }
	.loc 1 209 1 view .LVU487
	retw.n	
.LFE102:
	.size	_Z20tmc_check_connection6axis_t, .-_Z20tmc_check_connection6axis_t
	.section	.rodata._Z18log_default_config6axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC60:
	.base64	"0YLQvtC6INC80LXRgNGP0Y7RgiDQstGB0YLRgNC+0LXQvdC90YvQtSDRgNC10LfQuNGB0YLQvtGA0YsA"
	.align	4
.LC62:
	.base64	"0YLQvtC6INC80LXRgNGP0Y7RgiDQstC90LXRiNC90LjQtSDRgNC10LfQuNGB0YLQvtGA0Ysg0L3QsCDQv9C70LDRgtC1AA=="
	.align	4
.LC64:
	.base64	"0L/QviDRg9C80L7Qu9GH0LDQvdC40Y4gU3ByZWFkQ3ljbGUA"
	.align	4
.LC66:
	.base64	"0L/QviDRg9C80L7Qu9GH0LDQvdC40Y4gU3RlYWx0aENob3AA"
	.align	4
.LC69:
	.base64	"RSAoJWx1KSAlczog0JfQsNCy0L7QtNGB0LrQuNC1INC90LDRgdGC0YDQvtC50LrQuDog0L3QtSDRg9C00LDQu9C+0YHRjCDQv9GA0L7Rh9C40YLQsNGC0Ywg0YDQtdCz0LjRgdGC0YDRiwoA"
	.align	4
.LC72:
	.base64	"SSAoJWx1KSAlczogPT09IFslc10g0JfQsNCy0L7QtNGB0LrQuNC1INC90LDRgdGC0YDQvtC50LrQuCDQtNGA0LDQudCy0LXRgNCwICjQuNC3IE9UUCkgPT09CgA="
	.align	4
.LC74:
	.string	"I (%lu) %s: GCONF    = 0x%08lX\n"
	.align	4
.LC76:
	.string	"I (%lu) %s:   internal_Rsense = %lu (%s)\n"
	.align	4
.LC78:
	.string	"I (%lu) %s:   en_spreadCycle  = %lu (%s)\n"
	.align	4
.LC80:
	.string	"I (%lu) %s: CHOPCONF = 0x%08lX\n"
	.align	4
.LC82:
	.base64	"SSAoJWx1KSAlczogICBUT0ZGICA9ICVsdSAoMCA9INC00YDQsNC50LLQtdGAINCy0YvQutC70Y7Rh9C10L0pCgA="
	.align	4
.LC84:
	.base64	"SSAoJWx1KSAlczogICBIU1RSVCA9ICVsdSwgSEVORCA9ICVsdSAo0L/QsNGA0LDQvNC10YLRgNGLIFNwcmVhZEN5Y2xlKQoA"
	.align	4
.LC86:
	.base64	"SSAoJWx1KSAlczogICBUQkwgICA9ICVsdSAo0LLRgNC10LzRjyDRgdC70LXQv9C+0YLRiyDQtNCw0YLRh9C40LrQsCDRgtC+0LrQsDogMTYvMjQvMzIvNDAg0YLQsNC60YLQvtCyKQoA"
	.align	4
.LC88:
	.string	"I (%lu) %s: PWMCONF  = 0x%08lX\n"
	.align	4
.LC90:
	.base64	"SSAoJWx1KSAlczogICBQV01fT0ZTID0gJWx1LCBQV01fR1JBRCA9ICVsdSAo0YHRgtCw0YDRgiDQsNCy0YLQvtC/0L7QtNGB0YLRgNC+0LnQutC4IFN0ZWFsdGhDaG9wKQoA"
	.align	4
.LC92:
	.base64	"SSAoJWx1KSAlczogICBwd21fZnJlcSA9ICVsdSAoMC4uMywg0YfQsNGB0YLQvtGC0LAg0KjQmNCcKSwgUFdNX1JFRyA9ICVsdSAo0YHQutC+0YDQvtGB0YLRjCDQsNCy0YLQvtC/0L7QtNGB0YLRgNC+0LnQutC4KQoA"
	.align	4
.LC94:
	.base64	"SSAoJWx1KSAlczogICBwd21fYXV0b3NjYWxlID0gJWx1LCBwd21fYXV0b2dyYWQgPSAlbHUgKDEgPSDQsNCy0YLQvtC/0L7QtNGB0YLRgNC+0LnQutCwINCy0LrQu9GO0YfQtdC90LApCgA="
	.align	4
.LC97:
	.base64	"SSAoJWx1KSAlczogT1RQX1JFQUQgPSAweCUwNmxYICjRgdGL0YDRi9C1INCx0LDQudGC0YsgT1RQKQoA"
	.align	4
.LC99:
	.base64	"SSAoJWx1KSAlczogICBGQ0xLVFJJTSA9ICVsdSAo0LfQsNCy0L7QtNGB0LrQsNGPINC60LDQu9C40LHRgNC+0LLQutCwINCz0LXQvdC10YDQsNGC0L7RgNCwLCDRgyDQutCw0LbQtNC+0LPQviDRh9C40L/QsCDRgdCy0L7RjykKAA=="
	.align	4
.LC101:
	.string	"I (%lu) %s:   otp_internalRsense = %lu, otp_en_spreadCycle = %lu\n"
	.section	.text._Z18log_default_config6axis_t,"ax",@progbits
	.literal_position
	.literal .LC61, .LC60
	.literal .LC63, .LC62
	.literal .LC65, .LC64
	.literal .LC67, .LC66
	.literal .LC68, .LC1
	.literal .LC70, .LC69
	.literal .LC71, AXES
	.literal .LC73, .LC72
	.literal .LC75, .LC74
	.literal .LC77, .LC76
	.literal .LC79, .LC78
	.literal .LC81, .LC80
	.literal .LC83, .LC82
	.literal .LC85, .LC84
	.literal .LC87, .LC86
	.literal .LC89, .LC88
	.literal .LC91, .LC90
	.literal .LC93, .LC92
	.literal .LC95, .LC94
	.literal .LC98, .LC97
	.literal .LC100, .LC99
	.literal .LC102, .LC101
	.align	4
	.global	_Z18log_default_config6axis_t
	.type	_Z18log_default_config6axis_t, @function
_Z18log_default_config6axis_t:
.LVL108:
.LFB104:
	.loc 1 221 35 is_stmt 1 view -0
	.loc 1 221 35 is_stmt 0 view .LVU489
	entry	sp, 64	#
.LCFI5:
	.loc 1 222 5 is_stmt 1 view .LVU490
	.loc 1 224 5 view .LVU491
.LBB115:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:224:     if (tmc_read(a, TMC_REG_GCONF, &gconf) != ESP_OK ||
	.loc 1 224 17 is_stmt 0 view .LVU492
	addi	a12, sp, 16	#,,
	movi.n	a11, 0	#,
	mov.n	a10, a2	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL109:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:226:         tmc_read(a, TMC_REG_PWMCONF, &pwmconf) != ESP_OK ||
	.loc 1 226 42 view .LVU493
	bnez.n	a10, .L37	# _1,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:225:         tmc_read(a, TMC_REG_CHOPCONF, &chopconf) != ESP_OK ||
	.loc 1 225 17 view .LVU494
	addi	a12, sp, 20	#,,
	movi	a11, 0x6c	#,
	mov.n	a10, a2	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL110:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:224:     if (tmc_read(a, TMC_REG_GCONF, &gconf) != ESP_OK ||
	.loc 1 224 40 view .LVU495
	bnez.n	a10, .L37	# _2,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:226:         tmc_read(a, TMC_REG_PWMCONF, &pwmconf) != ESP_OK ||
	.loc 1 226 17 view .LVU496
	addi	a12, sp, 24	#,,
	movi	a11, 0x70	#,
	mov.n	a10, a2	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL111:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:225:         tmc_read(a, TMC_REG_CHOPCONF, &chopconf) != ESP_OK ||
	.loc 1 225 43 view .LVU497
	bnez.n	a10, .L37	# _3,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:227:         tmc_read(a, TMC_REG_OTP_READ, &otp) != ESP_OK) {
	.loc 1 227 17 view .LVU498
	addi	a12, sp, 28	#,,
	movi.n	a11, 5	#,
	mov.n	a10, a2	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL112:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:226:         tmc_read(a, TMC_REG_PWMCONF, &pwmconf) != ESP_OK ||
	.loc 1 226 42 discriminator 3 view .LVU499
	beqz.n	a10, .L38	# _4,
.L37:
	.loc 1 228 9 is_stmt 1 view .LVU500
	.loc 1 228 14 view .LVU501
	.loc 1 228 19 view .LVU502
	.loc 1 228 52 view .LVU503
	.loc 1 228 57 view .LVU504
.LBB116:
	.loc 1 228 116 discriminator 1 view .LVU505
.LBB117:
	.loc 1 228 141 discriminator 1 view .LVU506
	.loc 1 228 176 discriminator 1 view .LVU507
	.loc 1 228 217 view .LVU508
.LBE117:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:228:         ESP_LOGE(TAG, "Заводские настройки: не удалось прочитать регистры");
	.loc 1 228 123 is_stmt 0 discriminator 1 view .LVU509
	call8	esp_log_timestamp		#
.LVL113:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:228:         ESP_LOGE(TAG, "Заводские настройки: не удалось прочитать регистры");
	.loc 1 228 123 discriminator 3 view .LVU510
	l32r	a11, .LC68	#, tmp146
	mov.n	a14, a11	#, tmp146
	mov.n	a13, a10	#, _6
	l32r	a12, .LC70	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL114:
	.loc 1 228 52 is_stmt 1 view .LVU511
	.loc 1 228 14 view .LVU512
	.loc 1 228 9 view .LVU513
	.loc 1 229 9 view .LVU514
	j	.L36		#
.L38:
.LBE116:
.LBE115:
	.loc 1 232 5 view .LVU515
	.loc 1 232 10 view .LVU516
	.loc 1 232 15 view .LVU517
	.loc 1 232 47 view .LVU518
	.loc 1 232 52 view .LVU519
	.loc 1 232 156 discriminator 2 view .LVU520
	.loc 1 232 156 discriminator 6 view .LVU521
	.loc 1 232 156 discriminator 10 view .LVU522
.LBB118:
	.loc 1 232 158 discriminator 14 view .LVU523
.LBB119:
	.loc 1 232 183 discriminator 14 view .LVU524
	.loc 1 232 218 discriminator 14 view .LVU525
	.loc 1 232 258 view .LVU526
.LBE119:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:232:     ESP_LOGI(TAG, "=== [%s] Заводские настройки драйвера (из OTP) ===", AXES[a].name);
	.loc 1 232 165 is_stmt 0 discriminator 14 view .LVU527
	call8	esp_log_timestamp		#
.LVL115:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:232:     ESP_LOGI(TAG, "=== [%s] Заводские настройки драйвера (из OTP) ===", AXES[a].name);
	.loc 1 232 142 discriminator 17 view .LVU528
	addx4	a8, a2, a2	#, tmp152, a, a
	addx2	a8, a8, a2	#, tmp154, tmp152, a
	l32r	a9, .LC71	#, tmp149
	addx4	a8, a8, a9	#, tmp156, tmp154, tmp149
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:232:     ESP_LOGI(TAG, "=== [%s] Заводские настройки драйвера (из OTP) ===", AXES[a].name);
	.loc 1 232 165 discriminator 17 view .LVU529
	l32r	a2, .LC68	#, tmp157
.LVL116:
	.loc 1 232 165 discriminator 17 view .LVU530
	l32i.n	a15, a8, 0	# AXES[a$421_11].name,
	mov.n	a14, a2	#, tmp157
	mov.n	a13, a10	#, _9
	l32r	a12, .LC73	#,
	mov.n	a11, a2	#, tmp157
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL117:
	.loc 1 232 47 is_stmt 1 view .LVU531
	.loc 1 232 10 view .LVU532
.LBE118:
	.loc 1 232 5 view .LVU533
	.loc 1 235 5 view .LVU534
	.loc 1 235 10 view .LVU535
	.loc 1 235 15 view .LVU536
	.loc 1 235 47 view .LVU537
	.loc 1 235 52 view .LVU538
	.loc 1 235 59 discriminator 2 view .LVU539
	.loc 1 235 59 discriminator 6 view .LVU540
	.loc 1 235 59 discriminator 10 view .LVU541
.LBB120:
	.loc 1 235 61 discriminator 14 view .LVU542
.LBB121:
	.loc 1 235 86 discriminator 14 view .LVU543
	.loc 1 235 121 discriminator 14 view .LVU544
	.loc 1 235 161 view .LVU545
.LBE121:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:235:     ESP_LOGI(TAG, "GCONF    = 0x%08" PRIX32, gconf);
	.loc 1 235 68 is_stmt 0 discriminator 14 view .LVU546
	call8	esp_log_timestamp		#
.LVL118:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:235:     ESP_LOGI(TAG, "GCONF    = 0x%08" PRIX32, gconf);
	.loc 1 235 68 discriminator 17 view .LVU547
	l32i.n	a15, sp, 16	# gconf,
	mov.n	a14, a2	#, tmp157
	mov.n	a13, a10	#, _14
	l32r	a12, .LC75	#,
	mov.n	a11, a2	#, tmp157
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL119:
	.loc 1 235 47 is_stmt 1 view .LVU548
	.loc 1 235 10 view .LVU549
.LBE120:
	.loc 1 235 5 view .LVU550
	.loc 1 236 5 view .LVU551
	.loc 1 236 10 view .LVU552
	.loc 1 236 15 view .LVU553
	.loc 1 236 47 view .LVU554
	.loc 1 236 52 view .LVU555
	.loc 1 236 240 discriminator 2 view .LVU556
	.loc 1 236 240 discriminator 10 view .LVU557
	.loc 1 236 240 discriminator 18 view .LVU558
.LBB122:
	.loc 1 236 242 discriminator 26 view .LVU559
.LBB123:
	.loc 1 236 267 discriminator 26 view .LVU560
	.loc 1 236 302 discriminator 26 view .LVU561
	.loc 1 236 342 view .LVU562
.LBE123:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:236:     ESP_LOGI(TAG, "  internal_Rsense = %" PRIu32 " (%s)", (gconf >> 1) & 0x1,
	.loc 1 236 249 is_stmt 0 discriminator 26 view .LVU563
	call8	esp_log_timestamp		#
.LVL120:
	mov.n	a13, a10	# _18, _18
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:236:     ESP_LOGI(TAG, "  internal_Rsense = %" PRIu32 " (%s)", (gconf >> 1) & 0x1,
	.loc 1 236 59 discriminator 33 view .LVU564
	l32i.n	a8, sp, 16	# gconf, gconf$469_20
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:236:     ESP_LOGI(TAG, "  internal_Rsense = %" PRIu32 " (%s)", (gconf >> 1) & 0x1,
	.loc 1 236 249 discriminator 33 view .LVU565
	extui	a15, a8, 1, 1	# _22, gconf$469_20,,
	bbci	a8, 1, .L42	# gconf$469_20,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:236:     ESP_LOGI(TAG, "  internal_Rsense = %" PRIu32 " (%s)", (gconf >> 1) & 0x1,
	.loc 1 236 249 discriminator 34 view .LVU566
	l32r	a8, .LC61	#, iftmp$470_182
	j	.L40		#
.L42:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:236:     ESP_LOGI(TAG, "  internal_Rsense = %" PRIu32 " (%s)", (gconf >> 1) & 0x1,
	.loc 1 236 249 discriminator 35 view .LVU567
	l32r	a8, .LC63	#, iftmp$470_182
.L40:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:236:     ESP_LOGI(TAG, "  internal_Rsense = %" PRIu32 " (%s)", (gconf >> 1) & 0x1,
	.loc 1 236 249 discriminator 37 view .LVU568
	l32r	a11, .LC68	#, tmp164
	s32i.n	a8, sp, 0	#, iftmp$470_182
	mov.n	a14, a11	#, tmp164
	l32r	a12, .LC77	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL121:
	.loc 1 236 47 is_stmt 1 view .LVU569
	.loc 1 236 10 view .LVU570
.LBE122:
	.loc 1 236 5 view .LVU571
	.loc 1 238 5 view .LVU572
	.loc 1 238 10 view .LVU573
	.loc 1 238 15 view .LVU574
	.loc 1 238 47 view .LVU575
	.loc 1 238 52 view .LVU576
	.loc 1 238 182 discriminator 2 view .LVU577
	.loc 1 238 182 discriminator 10 view .LVU578
	.loc 1 238 182 discriminator 18 view .LVU579
.LBB124:
	.loc 1 238 184 discriminator 26 view .LVU580
.LBB125:
	.loc 1 238 209 discriminator 26 view .LVU581
	.loc 1 238 244 discriminator 26 view .LVU582
	.loc 1 238 284 view .LVU583
.LBE125:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:238:     ESP_LOGI(TAG, "  en_spreadCycle  = %" PRIu32 " (%s)", (gconf >> 2) & 0x1,
	.loc 1 238 191 is_stmt 0 discriminator 26 view .LVU584
	call8	esp_log_timestamp		#
.LVL122:
	mov.n	a13, a10	# _25, _25
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:238:     ESP_LOGI(TAG, "  en_spreadCycle  = %" PRIu32 " (%s)", (gconf >> 2) & 0x1,
	.loc 1 238 59 discriminator 33 view .LVU585
	l32i.n	a8, sp, 16	# gconf, gconf$499_27
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:238:     ESP_LOGI(TAG, "  en_spreadCycle  = %" PRIu32 " (%s)", (gconf >> 2) & 0x1,
	.loc 1 238 191 discriminator 33 view .LVU586
	extui	a15, a8, 2, 1	# _29, gconf$499_27,,
	bbci	a8, 2, .L43	# gconf$499_27,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:238:     ESP_LOGI(TAG, "  en_spreadCycle  = %" PRIu32 " (%s)", (gconf >> 2) & 0x1,
	.loc 1 238 191 discriminator 34 view .LVU587
	l32r	a8, .LC65	#, iftmp$500_183
	j	.L41		#
.L43:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:238:     ESP_LOGI(TAG, "  en_spreadCycle  = %" PRIu32 " (%s)", (gconf >> 2) & 0x1,
	.loc 1 238 191 discriminator 35 view .LVU588
	l32r	a8, .LC67	#, iftmp$500_183
.L41:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:238:     ESP_LOGI(TAG, "  en_spreadCycle  = %" PRIu32 " (%s)", (gconf >> 2) & 0x1,
	.loc 1 238 191 discriminator 37 view .LVU589
	l32r	a2, .LC68	#, tmp168
	s32i.n	a8, sp, 0	#, iftmp$500_183
	mov.n	a14, a2	#, tmp168
	l32r	a12, .LC79	#,
	mov.n	a11, a2	#, tmp168
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL123:
	.loc 1 238 47 is_stmt 1 view .LVU590
	.loc 1 238 10 view .LVU591
.LBE124:
	.loc 1 238 5 view .LVU592
	.loc 1 242 5 view .LVU593
	.loc 1 242 10 view .LVU594
	.loc 1 242 15 view .LVU595
	.loc 1 242 47 view .LVU596
	.loc 1 242 52 view .LVU597
	.loc 1 242 62 discriminator 2 view .LVU598
	.loc 1 242 62 discriminator 6 view .LVU599
	.loc 1 242 62 discriminator 10 view .LVU600
.LBB126:
	.loc 1 242 64 discriminator 14 view .LVU601
.LBB127:
	.loc 1 242 89 discriminator 14 view .LVU602
	.loc 1 242 124 discriminator 14 view .LVU603
	.loc 1 242 164 view .LVU604
.LBE127:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:242:     ESP_LOGI(TAG, "CHOPCONF = 0x%08" PRIX32, chopconf);
	.loc 1 242 71 is_stmt 0 discriminator 14 view .LVU605
	call8	esp_log_timestamp		#
.LVL124:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:242:     ESP_LOGI(TAG, "CHOPCONF = 0x%08" PRIX32, chopconf);
	.loc 1 242 71 discriminator 17 view .LVU606
	l32i.n	a15, sp, 20	# chopconf,
	mov.n	a14, a2	#, tmp168
	mov.n	a13, a10	#, _32
	l32r	a12, .LC81	#,
	mov.n	a11, a2	#, tmp168
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL125:
	.loc 1 242 47 is_stmt 1 view .LVU607
	.loc 1 242 10 view .LVU608
.LBE126:
	.loc 1 242 5 view .LVU609
	.loc 1 243 5 view .LVU610
	.loc 1 243 10 view .LVU611
	.loc 1 243 15 view .LVU612
	.loc 1 243 47 view .LVU613
	.loc 1 243 52 view .LVU614
	.loc 1 243 109 discriminator 2 view .LVU615
	.loc 1 243 109 discriminator 6 view .LVU616
	.loc 1 243 109 discriminator 10 view .LVU617
.LBB128:
	.loc 1 243 111 discriminator 14 view .LVU618
.LBB129:
	.loc 1 243 136 discriminator 14 view .LVU619
	.loc 1 243 171 discriminator 14 view .LVU620
	.loc 1 243 211 view .LVU621
.LBE129:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:243:     ESP_LOGI(TAG, "  TOFF  = %" PRIu32 " (0 = драйвер выключен)", chopconf & 0xF);
	.loc 1 243 118 is_stmt 0 discriminator 14 view .LVU622
	call8	esp_log_timestamp		#
.LVL126:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:243:     ESP_LOGI(TAG, "  TOFF  = %" PRIu32 " (0 = драйвер выключен)", chopconf & 0xF);
	.loc 1 243 118 discriminator 17 view .LVU623
	l32i.n	a15, sp, 20	# chopconf, chopconf
	extui	a15, a15, 0, 4	#, chopconf,
	mov.n	a14, a2	#, tmp168
	mov.n	a13, a10	#, _36
	l32r	a12, .LC83	#,
	mov.n	a11, a2	#, tmp168
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL127:
	.loc 1 243 47 is_stmt 1 view .LVU624
	.loc 1 243 10 view .LVU625
.LBE128:
	.loc 1 243 5 view .LVU626
	.loc 1 244 5 view .LVU627
	.loc 1 244 10 view .LVU628
	.loc 1 244 15 view .LVU629
	.loc 1 244 47 view .LVU630
	.loc 1 244 52 view .LVU631
	.loc 1 244 134 discriminator 2 view .LVU632
	.loc 1 244 134 discriminator 6 view .LVU633
	.loc 1 244 134 discriminator 10 view .LVU634
.LBB130:
	.loc 1 244 136 discriminator 14 view .LVU635
.LBB131:
	.loc 1 244 161 discriminator 14 view .LVU636
	.loc 1 244 196 discriminator 14 view .LVU637
	.loc 1 244 236 view .LVU638
.LBE131:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:244:     ESP_LOGI(TAG, "  HSTRT = %" PRIu32 ", HEND = %" PRIu32 " (параметры SpreadCycle)",
	.loc 1 244 143 is_stmt 0 discriminator 14 view .LVU639
	call8	esp_log_timestamp		#
.LVL128:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:244:     ESP_LOGI(TAG, "  HSTRT = %" PRIu32 ", HEND = %" PRIu32 " (параметры SpreadCycle)",
	.loc 1 244 90 discriminator 17 view .LVU640
	l32i.n	a15, sp, 20	# chopconf, chopconf$565_43
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:244:     ESP_LOGI(TAG, "  HSTRT = %" PRIu32 ", HEND = %" PRIu32 " (параметры SpreadCycle)",
	.loc 1 244 143 discriminator 17 view .LVU641
	extui	a8, a15, 7, 4	# _47, chopconf$565_43,,
	s32i.n	a8, sp, 0	#, _47
	extui	a15, a15, 4, 3	#, chopconf$565_43,,
	mov.n	a14, a2	#, tmp168
	mov.n	a13, a10	#, _41
	l32r	a12, .LC85	#,
	mov.n	a11, a2	#, tmp168
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL129:
	.loc 1 244 47 is_stmt 1 view .LVU642
	.loc 1 244 10 view .LVU643
.LBE130:
	.loc 1 244 5 view .LVU644
	.loc 1 246 5 view .LVU645
	.loc 1 246 10 view .LVU646
	.loc 1 246 15 view .LVU647
	.loc 1 246 47 view .LVU648
	.loc 1 246 52 view .LVU649
	.loc 1 246 157 discriminator 2 view .LVU650
	.loc 1 246 157 discriminator 6 view .LVU651
	.loc 1 246 157 discriminator 10 view .LVU652
.LBB132:
	.loc 1 246 159 discriminator 14 view .LVU653
.LBB133:
	.loc 1 246 184 discriminator 14 view .LVU654
	.loc 1 246 219 discriminator 14 view .LVU655
	.loc 1 246 259 view .LVU656
.LBE133:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:246:     ESP_LOGI(TAG, "  TBL   = %" PRIu32 " (время слепоты датчика тока: 16/24/32/40 тактов)",
	.loc 1 246 166 is_stmt 0 discriminator 14 view .LVU657
	call8	esp_log_timestamp		#
.LVL130:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:246:     ESP_LOGI(TAG, "  TBL   = %" PRIu32 " (время слепоты датчика тока: 16/24/32/40 тактов)",
	.loc 1 246 166 discriminator 17 view .LVU658
	l32i.n	a15, sp, 20	# chopconf, chopconf
	extui	a15, a15, 15, 2	#, chopconf,,
	mov.n	a14, a2	#, tmp168
	mov.n	a13, a10	#, _49
	l32r	a12, .LC87	#,
	mov.n	a11, a2	#, tmp168
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL131:
	.loc 1 246 47 is_stmt 1 view .LVU659
	.loc 1 246 10 view .LVU660
.LBE132:
	.loc 1 246 5 view .LVU661
	.loc 1 250 5 view .LVU662
	.loc 1 250 10 view .LVU663
	.loc 1 250 15 view .LVU664
	.loc 1 250 47 view .LVU665
	.loc 1 250 52 view .LVU666
	.loc 1 250 61 discriminator 2 view .LVU667
	.loc 1 250 61 discriminator 6 view .LVU668
	.loc 1 250 61 discriminator 10 view .LVU669
.LBB134:
	.loc 1 250 63 discriminator 14 view .LVU670
.LBB135:
	.loc 1 250 88 discriminator 14 view .LVU671
	.loc 1 250 123 discriminator 14 view .LVU672
	.loc 1 250 163 view .LVU673
.LBE135:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:250:     ESP_LOGI(TAG, "PWMCONF  = 0x%08" PRIX32, pwmconf);
	.loc 1 250 70 is_stmt 0 discriminator 14 view .LVU674
	call8	esp_log_timestamp		#
.LVL132:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:250:     ESP_LOGI(TAG, "PWMCONF  = 0x%08" PRIX32, pwmconf);
	.loc 1 250 70 discriminator 17 view .LVU675
	l32i.n	a15, sp, 24	# pwmconf,
	mov.n	a14, a2	#, tmp168
	mov.n	a13, a10	#, _55
	l32r	a12, .LC89	#,
	mov.n	a11, a2	#, tmp168
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL133:
	.loc 1 250 47 is_stmt 1 view .LVU676
	.loc 1 250 10 view .LVU677
.LBE134:
	.loc 1 250 5 view .LVU678
	.loc 1 251 5 view .LVU679
	.loc 1 251 10 view .LVU680
	.loc 1 251 15 view .LVU681
	.loc 1 251 47 view .LVU682
	.loc 1 251 52 view .LVU683
	.loc 1 251 148 discriminator 2 view .LVU684
	.loc 1 251 148 discriminator 6 view .LVU685
	.loc 1 251 148 discriminator 10 view .LVU686
.LBB136:
	.loc 1 251 150 discriminator 14 view .LVU687
.LBB137:
	.loc 1 251 175 discriminator 14 view .LVU688
	.loc 1 251 210 discriminator 14 view .LVU689
	.loc 1 251 250 view .LVU690
.LBE137:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:251:     ESP_LOGI(TAG, "  PWM_OFS = %" PRIu32 ", PWM_GRAD = %" PRIu32 " (старт автоподстройки StealthChop)",
	.loc 1 251 157 is_stmt 0 discriminator 14 view .LVU691
	call8	esp_log_timestamp		#
.LVL134:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:251:     ESP_LOGI(TAG, "  PWM_OFS = %" PRIu32 ", PWM_GRAD = %" PRIu32 " (старт автоподстройки StealthChop)",
	.loc 1 251 157 discriminator 17 view .LVU692
	l32i.n	a15, sp, 24	# pwmconf, pwmconf$630_61
	extui	a8, a15, 8, 8	# _64, pwmconf$630_61,,
	s32i.n	a8, sp, 0	#, _64
	extui	a15, a15, 0, 8	#, pwmconf$630_61
	mov.n	a14, a2	#, tmp168
	mov.n	a13, a10	#, _59
	l32r	a12, .LC91	#,
	mov.n	a11, a2	#, tmp168
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL135:
	.loc 1 251 47 is_stmt 1 view .LVU693
	.loc 1 251 10 view .LVU694
.LBE136:
	.loc 1 251 5 view .LVU695
	.loc 1 253 5 view .LVU696
	.loc 1 253 10 view .LVU697
	.loc 1 253 15 view .LVU698
	.loc 1 253 47 view .LVU699
	.loc 1 253 52 view .LVU700
	.loc 1 253 149 discriminator 2 view .LVU701
	.loc 1 253 149 discriminator 6 view .LVU702
	.loc 1 253 149 discriminator 10 view .LVU703
.LBB138:
	.loc 1 253 151 discriminator 14 view .LVU704
.LBB139:
	.loc 1 253 176 discriminator 14 view .LVU705
	.loc 1 253 211 discriminator 14 view .LVU706
	.loc 1 253 251 view .LVU707
.LBE139:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:253:     ESP_LOGI(TAG, "  pwm_freq = %" PRIu32 " (0..3, частота ШИМ), PWM_REG = %" PRIu32 " (скорость автоподстройки)",
	.loc 1 253 158 is_stmt 0 discriminator 14 view .LVU708
	call8	esp_log_timestamp		#
.LVL136:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:253:     ESP_LOGI(TAG, "  pwm_freq = %" PRIu32 " (0..3, частота ШИМ), PWM_REG = %" PRIu32 " (скорость автоподстройки)",
	.loc 1 253 104 discriminator 17 view .LVU709
	l32i.n	a15, sp, 24	# pwmconf, pwmconf$655_68
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:253:     ESP_LOGI(TAG, "  pwm_freq = %" PRIu32 " (0..3, частота ШИМ), PWM_REG = %" PRIu32 " (скорость автоподстройки)",
	.loc 1 253 158 discriminator 17 view .LVU710
	extui	a8, a15, 24, 4	# _72, pwmconf$655_68,,
	s32i.n	a8, sp, 0	#, _72
	extui	a15, a15, 16, 2	#, pwmconf$655_68,,
	mov.n	a14, a2	#, tmp168
	mov.n	a13, a10	#, _66
	l32r	a12, .LC93	#,
	mov.n	a11, a2	#, tmp168
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL137:
	.loc 1 253 47 is_stmt 1 view .LVU711
	.loc 1 253 10 view .LVU712
.LBE138:
	.loc 1 253 5 view .LVU713
	.loc 1 255 5 view .LVU714
	.loc 1 255 10 view .LVU715
	.loc 1 255 15 view .LVU716
	.loc 1 255 47 view .LVU717
	.loc 1 255 52 view .LVU718
	.loc 1 255 153 discriminator 2 view .LVU719
	.loc 1 255 153 discriminator 6 view .LVU720
	.loc 1 255 153 discriminator 10 view .LVU721
.LBB140:
	.loc 1 255 155 discriminator 14 view .LVU722
.LBB141:
	.loc 1 255 180 discriminator 14 view .LVU723
	.loc 1 255 215 discriminator 14 view .LVU724
	.loc 1 255 255 view .LVU725
.LBE141:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:255:     ESP_LOGI(TAG, "  pwm_autoscale = %" PRIu32 ", pwm_autograd = %" PRIu32 " (1 = автоподстройка включена)",
	.loc 1 255 162 is_stmt 0 discriminator 14 view .LVU726
	call8	esp_log_timestamp		#
.LVL138:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:255:     ESP_LOGI(TAG, "  pwm_autoscale = %" PRIu32 ", pwm_autograd = %" PRIu32 " (1 = автоподстройка включена)",
	.loc 1 255 108 discriminator 17 view .LVU727
	l32i.n	a15, sp, 24	# pwmconf, pwmconf$680_107
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:255:     ESP_LOGI(TAG, "  pwm_autoscale = %" PRIu32 ", pwm_autograd = %" PRIu32 " (1 = автоподстройка включена)",
	.loc 1 255 162 discriminator 17 view .LVU728
	extui	a8, a15, 19, 1	# _111, pwmconf$680_107,,
	s32i.n	a8, sp, 0	#, _111
	extui	a15, a15, 18, 1	#, pwmconf$680_107,,
	mov.n	a14, a2	#, tmp168
	mov.n	a13, a10	#, _105
	l32r	a12, .LC95	#,
	mov.n	a11, a2	#, tmp168
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL139:
	.loc 1 255 47 is_stmt 1 view .LVU729
	.loc 1 255 10 view .LVU730
.LBE140:
	.loc 1 255 5 view .LVU731
	.loc 1 259 5 view .LVU732
	.loc 1 259 10 view .LVU733
	.loc 1 259 15 view .LVU734
	.loc 1 259 47 view .LVU735
	.loc 1 259 52 view .LVU736
	.loc 1 259 99 discriminator 2 view .LVU737
	.loc 1 259 99 discriminator 6 view .LVU738
	.loc 1 259 99 discriminator 10 view .LVU739
.LBB142:
	.loc 1 259 101 discriminator 14 view .LVU740
.LBB143:
	.loc 1 259 126 discriminator 14 view .LVU741
	.loc 1 259 161 discriminator 14 view .LVU742
	.loc 1 259 201 view .LVU743
.LBE143:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:259:     ESP_LOGI(TAG, "OTP_READ = 0x%06" PRIX32 " (сырые байты OTP)", otp & 0xFFFFFF);
	.loc 1 259 108 is_stmt 0 discriminator 14 view .LVU744
	call8	esp_log_timestamp		#
.LVL140:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:259:     ESP_LOGI(TAG, "OTP_READ = 0x%06" PRIX32 " (сырые байты OTP)", otp & 0xFFFFFF);
	.loc 1 259 108 discriminator 17 view .LVU745
	l32i.n	a15, sp, 28	# otp, otp
	slli	a15, a15, 8	#, otp,
	srli	a15, a15, 8	#,,
	mov.n	a14, a2	#, tmp168
	mov.n	a13, a10	#, _133
	l32r	a12, .LC98	#,
	mov.n	a11, a2	#, tmp168
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL141:
	.loc 1 259 47 is_stmt 1 view .LVU746
	.loc 1 259 10 view .LVU747
.LBE142:
	.loc 1 259 5 view .LVU748
	.loc 1 260 5 view .LVU749
	.loc 1 260 10 view .LVU750
	.loc 1 260 15 view .LVU751
	.loc 1 260 47 view .LVU752
	.loc 1 260 52 view .LVU753
	.loc 1 260 167 discriminator 2 view .LVU754
	.loc 1 260 167 discriminator 6 view .LVU755
	.loc 1 260 167 discriminator 10 view .LVU756
.LBB144:
	.loc 1 260 169 discriminator 14 view .LVU757
.LBB145:
	.loc 1 260 194 discriminator 14 view .LVU758
	.loc 1 260 229 discriminator 14 view .LVU759
	.loc 1 260 269 view .LVU760
.LBE145:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:260:     ESP_LOGI(TAG, "  FCLKTRIM = %" PRIu32 " (заводская калибровка генератора, у каждого чипа своя)",
	.loc 1 260 176 is_stmt 0 discriminator 14 view .LVU761
	call8	esp_log_timestamp		#
.LVL142:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:260:     ESP_LOGI(TAG, "  FCLKTRIM = %" PRIu32 " (заводская калибровка генератора, у каждого чипа своя)",
	.loc 1 260 176 discriminator 17 view .LVU762
	l32i.n	a15, sp, 28	# otp, otp
	extui	a15, a15, 0, 5	#, otp,
	mov.n	a14, a2	#, tmp168
	mov.n	a13, a10	#, _156
	l32r	a12, .LC100	#,
	mov.n	a11, a2	#, tmp168
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL143:
	.loc 1 260 47 is_stmt 1 view .LVU763
	.loc 1 260 10 view .LVU764
.LBE144:
	.loc 1 260 5 view .LVU765
	.loc 1 262 5 view .LVU766
	.loc 1 262 10 view .LVU767
	.loc 1 262 15 view .LVU768
	.loc 1 262 47 view .LVU769
	.loc 1 262 52 view .LVU770
	.loc 1 262 89 discriminator 2 view .LVU771
	.loc 1 262 89 discriminator 6 view .LVU772
	.loc 1 262 89 discriminator 10 view .LVU773
.LBB146:
	.loc 1 262 91 discriminator 14 view .LVU774
.LBB147:
	.loc 1 262 116 discriminator 14 view .LVU775
	.loc 1 262 151 discriminator 14 view .LVU776
	.loc 1 262 191 view .LVU777
.LBE147:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:262:     ESP_LOGI(TAG, "  otp_internalRsense = %" PRIu32 ", otp_en_spreadCycle = %" PRIu32,
	.loc 1 262 98 is_stmt 0 discriminator 14 view .LVU778
	call8	esp_log_timestamp		#
.LVL144:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:262:     ESP_LOGI(TAG, "  otp_internalRsense = %" PRIu32 ", otp_en_spreadCycle = %" PRIu32,
	.loc 1 262 49 discriminator 17 view .LVU779
	l32i.n	a15, sp, 28	# otp, otp$745_192
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:262:     ESP_LOGI(TAG, "  otp_internalRsense = %" PRIu32 ", otp_en_spreadCycle = %" PRIu32,
	.loc 1 262 98 discriminator 17 view .LVU780
	extui	a8, a15, 23, 1	# _196, otp$745_192,,
	s32i.n	a8, sp, 0	#, _196
	extui	a15, a15, 6, 1	#, otp$745_192,,
	mov.n	a14, a2	#, tmp168
	mov.n	a13, a10	#, _190
	l32r	a12, .LC102	#,
	mov.n	a11, a2	#, tmp168
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL145:
	.loc 1 262 47 is_stmt 1 view .LVU781
	.loc 1 262 10 view .LVU782
.LBE146:
	.loc 1 262 5 view .LVU783
.L36:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:264: }
	.loc 1 264 1 is_stmt 0 view .LVU784
	retw.n	
.LFE104:
	.size	_Z18log_default_config6axis_t, .-_Z18log_default_config6axis_t
	.section	.text._Z15tmc_init_step_06axis_t,"ax",@progbits
	.literal_position
	.literal .LC103, AXES
	.align	4
	.global	_Z15tmc_init_step_06axis_t
	.type	_Z15tmc_init_step_06axis_t, @function
_Z15tmc_init_step_06axis_t:
.LVL146:
.LFB105:
	.loc 1 272 37 is_stmt 1 view -0
	.loc 1 272 37 is_stmt 0 view .LVU786
	entry	sp, 64	#
.LCFI6:
	.loc 1 273 5 is_stmt 1 view .LVU787
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:273:     gpio_config_t pGPIOConfig = {
	.loc 1 273 19 is_stmt 0 view .LVU788
	movi.n	a12, 0x18	#,
	movi.n	a11, 0	#,
	mov.n	a10, sp	#,
	call8	memset		#
.LVL147:
	movi.n	a8, 2	# tmp50,
	s32i.n	a8, sp, 8	# pGPIOConfig.mode, tmp50
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:274:         .pin_bit_mask = 1ULL << AXES[a].en_pin,
	.loc 1 274 41 view .LVU789
	addx4	a8, a2, a2	#, tmp54, a, a
	addx2	a8, a8, a2	#, tmp56, tmp54, a
	l32r	a9, .LC103	#, tmp51
	addx4	a8, a8, a9	#, tmp58, tmp56, tmp51
	l32i.n	a6, a8, 8	# AXES[a$747_1].en_pin, _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:274:         .pin_bit_mask = 1ULL << AXES[a].en_pin,
	.loc 1 274 30 view .LVU790
	movi.n	a9, 0x20	# tmp60,
	and	a9, a6, a9	# tmp61, _2, tmp60
	movi.n	a10, 0	# tmp62,
	movi.n	a8, 1	# tmp63,
	ssl	a6	# _2
	sll	a8, a8	# _3, tmp63
	mov.n	a11, a8	# _3, _3
	moveqz	a11, a10, a9	# _3, tmp62, tmp61
	movnez	a8, a10, a9	# _3, tmp62, tmp61
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:279:     };
	.loc 1 279 5 view .LVU791
	s32i.n	a8, sp, 0	# pGPIOConfig.pin_bit_mask, _3
	s32i.n	a11, sp, 4	# pGPIOConfig.pin_bit_mask, _3
	.loc 1 281 5 is_stmt 1 view .LVU792
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:281:     esp_err_t err = gpio_config(&pGPIOConfig);
	.loc 1 281 32 is_stmt 0 view .LVU793
	mov.n	a10, sp	#,
	call8	gpio_config		#
.LVL148:
	mov.n	a7, a10	# <retval>, <retval>
.LVL149:
	.loc 1 283 5 is_stmt 1 view .LVU794
	bnez.n	a10, .L44	# <retval>,
	.loc 1 285 5 view .LVU795
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:285:     gpio_set_level(AXES[a].en_pin, 1);
	.loc 1 285 19 is_stmt 0 view .LVU796
	movi.n	a11, 1	#,
	mov.n	a10, a6	#, _2
	call8	gpio_set_level		#
.LVL150:
	.loc 1 287 5 is_stmt 1 view .LVU797
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:287:     log_step_success(a, 0);
	.loc 1 287 21 is_stmt 0 view .LVU798
	mov.n	a11, a7	#, <retval>
	mov.n	a10, a2	#, a
	call8	_ZL16log_step_success6axis_th		#
.LVL151:
	.loc 1 289 5 is_stmt 1 view .LVU799
.L44:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:290: }
	.loc 1 290 1 is_stmt 0 view .LVU800
	mov.n	a2, a7	#, <retval>
.LVL152:
	.loc 1 290 1 view .LVU801
	retw.n	
.LFE105:
	.size	_Z15tmc_init_step_06axis_t, .-_Z15tmc_init_step_06axis_t
	.section	.rodata._Z15tmc_init_step_16axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC110:
	.base64	"RSAoJWx1KSAlczogWyVzXSB0bWNfaW5pdF9zdGVwXzE6INC00YDQsNC50LLQtdGAINC90LUg0L7RgtCy0LXRgtC40Lsg0LfQsCB+JWQg0LzRgSDigJQg0L3QtdGCINC/0LjRgtCw0L3QuNGPIFZTINC40LvQuCDRgdC40LPQvdCw0LvQsCBVQVJUCgA="
	.align	4
.LC112:
	.base64	"RSAoJWx1KSAlczog0J7RiNC40LHQutCwOiAlcwoA"
	.align	4
.LC114:
	.string	"E (%lu) %s: TMC VERSION ISN'T correct: version = %d\n"
	.align	4
.LC116:
	.string	"I (%lu) %s: TMC VERSION IS '%d'\n"
	.align	4
.LC118:
	.string	"E (%lu) %s: TMC ENN pin has LOW level (should be HIGH by default)\n"
	.section	.text._Z15tmc_init_step_16axis_t,"ax",@progbits
	.literal_position
	.literal .LC104, 131074
	.literal .LC105, 131075
	.literal .LC106, 131073
	.literal .LC107, 131079
	.literal .LC108, AXES
	.literal .LC109, .LC1
	.literal .LC111, .LC110
	.literal .LC113, .LC112
	.literal .LC115, .LC114
	.literal .LC117, .LC116
	.literal .LC119, .LC118
	.align	4
	.global	_Z15tmc_init_step_16axis_t
	.type	_Z15tmc_init_step_16axis_t, @function
_Z15tmc_init_step_16axis_t:
.LVL153:
.LFB106:
	.loc 1 308 37 is_stmt 1 view -0
	.loc 1 308 37 is_stmt 0 view .LVU803
	entry	sp, 64	#
.LCFI7:
	mov.n	a6, a2	# a, a
	.loc 1 309 5 is_stmt 1 view .LVU804
	.loc 1 310 5 view .LVU805
.LVL154:
	.loc 1 312 5 view .LVU806
.LBB148:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:312:     for (int i = 0; i < TMC_STEP1_ATTEMPTS; i++) {
	.loc 1 312 14 is_stmt 0 view .LVU807
	movi.n	a7, 0	# i,
.LBE148:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:310:     esp_err_t err = ESP_FAIL;
	.loc 1 310 15 view .LVU808
	movi.n	a2, -1	# <retval>,
.LVL155:
.LBB149:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:312:     for (int i = 0; i < TMC_STEP1_ATTEMPTS; i++) {
	.loc 1 312 5 view .LVU809
	j	.L47		#
.LVL156:
.L49:
	.loc 1 313 9 is_stmt 1 view .LVU810
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:313:         err = tmc_read(a, TMC_REG_IOIN, &regValue);
	.loc 1 313 23 is_stmt 0 view .LVU811
	addi	a12, sp, 16	#,,
	movi.n	a11, 6	#,
	mov.n	a10, a6	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL157:
	mov.n	a2, a10	# <retval>, <retval>
.LVL158:
	.loc 1 315 9 is_stmt 1 view .LVU812
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:315:         if (err != ESP_ERR_TMC_NO_RESPONSE && err != ESP_ERR_TMC_INVALID_CRC) {
	.loc 1 315 17 is_stmt 0 view .LVU813
	l32r	a8, .LC106	#, tmp75
	sub	a8, a10, a8	# tmp77, <retval>, tmp75
	movi.n	a10, 1	# _1,
	moveqz	a10, a8, a8	# _1, tmp77, tmp77
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:315:         if (err != ESP_ERR_TMC_NO_RESPONSE && err != ESP_ERR_TMC_INVALID_CRC) {
	.loc 1 315 51 view .LVU814
	l32r	a8, .LC107	#, tmp81
	sub	a8, a2, a8	# tmp83, <retval>, tmp81
	movi.n	a9, 1	# _2,
	moveqz	a9, a8, a8	# _2, tmp83, tmp83
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:315:         if (err != ESP_ERR_TMC_NO_RESPONSE && err != ESP_ERR_TMC_INVALID_CRC) {
	.loc 1 315 9 view .LVU815
	bany	a10, a9, .L48	# _1, _2,
	.loc 1 318 9 is_stmt 1 view .LVU816
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:318:         vTaskDelay(pdMS_TO_TICKS(100));
	.loc 1 318 19 is_stmt 0 view .LVU817
	movi.n	a10, 0xa	#,
	call8	vTaskDelay		#
.LVL159:
	.loc 1 312 5 is_stmt 1 discriminator 2 view .LVU818
	addi.n	a7, a7, 1	# i, i,
.LVL160:
.L47:
	.loc 1 312 23 discriminator 1 view .LVU819
	movi.n	a8, 0x13	# tmp87,
	bge	a8, a7, .L49	# tmp87, i,
.L48:
	.loc 1 312 23 is_stmt 0 discriminator 1 view .LVU820
.LBE149:
	.loc 1 321 5 is_stmt 1 view .LVU821
.LBB150:
	l32r	a8, .LC106	#, tmp88
	bne	a2, a8, .L50	# <retval>, tmp88,
.LBB151:
	.loc 1 322 9 view .LVU822
	.loc 1 322 14 view .LVU823
	.loc 1 322 19 view .LVU824
	.loc 1 322 52 view .LVU825
	.loc 1 322 57 view .LVU826
.LBB152:
	.loc 1 322 116 discriminator 1 view .LVU827
.LBB153:
	.loc 1 322 141 discriminator 1 view .LVU828
	.loc 1 322 176 discriminator 1 view .LVU829
	.loc 1 322 217 view .LVU830
.LBE153:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:322:         ESP_LOGE(TAG, "[%s] tmc_init_step_1: драйвер не ответил за ~%d мс — нет питания VS или сигнала UART",
	.loc 1 322 123 is_stmt 0 discriminator 1 view .LVU831
	call8	esp_log_timestamp		#
.LVL161:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:322:         ESP_LOGE(TAG, "[%s] tmc_init_step_1: драйвер не ответил за ~%d мс — нет питания VS или сигнала UART",
	.loc 1 322 194 discriminator 3 view .LVU832
	addx4	a8, a6, a6	#, tmp92, a, a
	addx2	a8, a8, a6	#, tmp94, tmp92, a
	l32r	a9, .LC108	#, tmp89
	addx4	a8, a8, a9	#, tmp96, tmp94, tmp89
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:322:         ESP_LOGE(TAG, "[%s] tmc_init_step_1: драйвер не ответил за ~%d мс — нет питания VS или сигнала UART",
	.loc 1 322 123 discriminator 3 view .LVU833
	l32r	a11, .LC109	#, tmp97
	movi	a9, 0x7d0	# tmp100,
	s32i.n	a9, sp, 0	#, tmp100
	l32i.n	a15, a8, 0	# AXES[a$772_7].name,
	mov.n	a14, a11	#, tmp97
	mov.n	a13, a10	#, _5
	l32r	a12, .LC111	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL162:
	.loc 1 322 52 is_stmt 1 view .LVU834
	.loc 1 322 14 view .LVU835
.LBE152:
	.loc 1 322 9 view .LVU836
	.loc 1 324 9 view .LVU837
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:324:         return ESP_ERR_TIMEOUT;
	.loc 1 324 16 is_stmt 0 view .LVU838
	movi	a2, 0x107	# <retval>,
.LVL163:
	.loc 1 324 16 view .LVU839
	j	.L46		#
.LVL164:
.L50:
	.loc 1 324 16 view .LVU840
.LBE151:
.LBE150:
	.loc 1 327 5 is_stmt 1 view .LVU841
.LBB154:
	beqz.n	a2, .L52	# <retval>,
.LBB155:
	.loc 1 328 9 view .LVU842
	.loc 1 328 14 view .LVU843
	.loc 1 328 19 view .LVU844
	.loc 1 328 52 view .LVU845
	.loc 1 328 57 view .LVU846
.LBB156:
	.loc 1 328 116 discriminator 1 view .LVU847
.LBB157:
	.loc 1 328 141 discriminator 1 view .LVU848
	.loc 1 328 176 discriminator 1 view .LVU849
	.loc 1 328 217 view .LVU850
.LBE157:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:328:         ESP_LOGE(TAG, "Ошибка: %s", tmc_err_to_name(err));
	.loc 1 328 123 is_stmt 0 discriminator 1 view .LVU851
	call8	esp_log_timestamp		#
.LVL165:
	mov.n	a7, a10	# _10, _10
.LVL166:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:328:         ESP_LOGE(TAG, "Ошибка: %s", tmc_err_to_name(err));
	.loc 1 328 123 discriminator 3 view .LVU852
	mov.n	a10, a2	#, <retval>
	call8	_Z15tmc_err_to_namei		#
.LVL167:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:328:         ESP_LOGE(TAG, "Ошибка: %s", tmc_err_to_name(err));
	.loc 1 328 123 discriminator 4 view .LVU853
	l32r	a11, .LC109	#, tmp101
	mov.n	a15, a10	#, _12
	mov.n	a14, a11	#, tmp101
	mov.n	a13, a7	#, _10
	l32r	a12, .LC113	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL168:
	.loc 1 328 52 is_stmt 1 view .LVU854
	.loc 1 328 14 view .LVU855
.LBE156:
	.loc 1 328 9 view .LVU856
	.loc 1 329 9 view .LVU857
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:329:         return err;
	.loc 1 329 16 is_stmt 0 view .LVU858
	j	.L46		#
.LVL169:
.L52:
	.loc 1 329 16 view .LVU859
.LBE155:
.LBE154:
	.loc 1 332 5 is_stmt 1 view .LVU860
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:332:     uint8_t currVersion = (regValue >> 24);
	.loc 1 332 37 is_stmt 0 view .LVU861
	l8ui	a7, sp, 19	# regValue, _19
.LVL170:
	.loc 1 334 5 is_stmt 1 view .LVU862
.LBB158:
	movi.n	a8, 0x21	# tmp106,
	beq	a7, a8, .L53	# _19, tmp106,
.LBB159:
	.loc 1 335 9 view .LVU863
	.loc 1 335 14 view .LVU864
	.loc 1 335 19 view .LVU865
	.loc 1 335 52 view .LVU866
	.loc 1 335 57 view .LVU867
.LBB160:
	.loc 1 335 116 discriminator 1 view .LVU868
.LBB161:
	.loc 1 335 141 discriminator 1 view .LVU869
	.loc 1 335 176 discriminator 1 view .LVU870
	.loc 1 335 217 view .LVU871
.LBE161:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:335:         ESP_LOGE(TAG, "TMC VERSION ISN'T correct: version = %d", currVersion);
	.loc 1 335 123 is_stmt 0 discriminator 1 view .LVU872
	call8	esp_log_timestamp		#
.LVL171:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:335:         ESP_LOGE(TAG, "TMC VERSION ISN'T correct: version = %d", currVersion);
	.loc 1 335 123 discriminator 3 view .LVU873
	l32r	a11, .LC109	#, tmp107
	mov.n	a15, a7	#, _19
	mov.n	a14, a11	#, tmp107
	mov.n	a13, a10	#, _21
	l32r	a12, .LC115	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL172:
	.loc 1 335 52 is_stmt 1 view .LVU874
	.loc 1 335 14 view .LVU875
.LBE160:
	.loc 1 335 9 view .LVU876
	.loc 1 336 9 view .LVU877
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:336:         return ESP_ERR_TMC_WRONG_CHIP;
	.loc 1 336 16 is_stmt 0 view .LVU878
	l32r	a2, .LC104	#, <retval>
.LVL173:
	.loc 1 336 16 view .LVU879
	j	.L46		#
.LVL174:
.L53:
	.loc 1 336 16 view .LVU880
.LBE159:
.LBE158:
	.loc 1 339 5 is_stmt 1 view .LVU881
	.loc 1 339 10 view .LVU882
	.loc 1 339 15 view .LVU883
	.loc 1 339 47 view .LVU884
	.loc 1 339 52 view .LVU885
	.loc 1 339 96 discriminator 2 view .LVU886
	.loc 1 339 96 discriminator 6 view .LVU887
	.loc 1 339 96 discriminator 10 view .LVU888
.LBB162:
	.loc 1 339 98 discriminator 14 view .LVU889
.LBB163:
	.loc 1 339 123 discriminator 14 view .LVU890
	.loc 1 339 158 discriminator 14 view .LVU891
	.loc 1 339 198 view .LVU892
.LBE163:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:339:     ESP_LOGI(TAG, "TMC VERSION IS '%d'", currVersion);
	.loc 1 339 105 is_stmt 0 discriminator 14 view .LVU893
	call8	esp_log_timestamp		#
.LVL175:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:339:     ESP_LOGI(TAG, "TMC VERSION IS '%d'", currVersion);
	.loc 1 339 105 discriminator 17 view .LVU894
	l32r	a11, .LC109	#, tmp110
	mov.n	a15, a7	#, _19
	mov.n	a14, a11	#, tmp110
	mov.n	a13, a10	#, _53
	l32r	a12, .LC117	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL176:
	.loc 1 339 47 is_stmt 1 view .LVU895
	.loc 1 339 10 view .LVU896
.LBE162:
	.loc 1 339 5 view .LVU897
	.loc 1 341 5 view .LVU898
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:341:     uint8_t isEnnPinHIGH = regValue & TMC_ENN_PIN_DISABLE;
	.loc 1 341 37 is_stmt 0 view .LVU899
	l8ui	a8, sp, 16	# regValue, _57
.LVL177:
	.loc 1 343 5 is_stmt 1 view .LVU900
.LBB164:
	bbsi	a8, 0, .L54	# _57,,
.LBB165:
	.loc 1 344 9 view .LVU901
	.loc 1 344 14 view .LVU902
	.loc 1 344 19 view .LVU903
	.loc 1 344 52 view .LVU904
	.loc 1 344 57 view .LVU905
.LBB166:
	.loc 1 344 116 discriminator 1 view .LVU906
.LBB167:
	.loc 1 344 141 discriminator 1 view .LVU907
	.loc 1 344 176 discriminator 1 view .LVU908
	.loc 1 344 217 view .LVU909
.LBE167:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:344:         ESP_LOGE(TAG, "TMC ENN pin has LOW level (should be HIGH by default)");
	.loc 1 344 123 is_stmt 0 discriminator 1 view .LVU910
	call8	esp_log_timestamp		#
.LVL178:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:344:         ESP_LOGE(TAG, "TMC ENN pin has LOW level (should be HIGH by default)");
	.loc 1 344 123 discriminator 3 view .LVU911
	l32r	a11, .LC109	#, tmp115
	mov.n	a14, a11	#, tmp115
	mov.n	a13, a10	#, _59
	l32r	a12, .LC119	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL179:
	.loc 1 344 52 is_stmt 1 view .LVU912
	.loc 1 344 14 view .LVU913
.LBE166:
	.loc 1 344 9 view .LVU914
	.loc 1 345 9 view .LVU915
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:345:         return ESP_ERR_TMC_ENN_LOW;
	.loc 1 345 16 is_stmt 0 view .LVU916
	l32r	a2, .LC105	#, <retval>
.LVL180:
	.loc 1 345 16 view .LVU917
	j	.L46		#
.LVL181:
.L54:
	.loc 1 345 16 view .LVU918
.LBE165:
.LBE164:
	.loc 1 348 5 is_stmt 1 view .LVU919
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:348:     log_step_success(a, 1);
	.loc 1 348 21 is_stmt 0 view .LVU920
	movi.n	a11, 1	#,
	mov.n	a10, a6	#, a
	call8	_ZL16log_step_success6axis_th		#
.LVL182:
	.loc 1 350 5 is_stmt 1 view .LVU921
.L46:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:351: }
	.loc 1 351 1 is_stmt 0 view .LVU922
	retw.n	
.LFE106:
	.size	_Z15tmc_init_step_16axis_t, .-_Z15tmc_init_step_16axis_t
	.section	.rodata._Z15tmc_init_step_26axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC122:
	.base64	"RSAoJWx1KSAlczogR1NUQVQuZHJ2X2Vycjog0LTRgNCw0LnQstC10YAg0L7RgtC60LvRjtGH0LjQuyDQvNC+0YLQvtGAINC40Lct0LfQsCDQv9C10YDQtdCz0YDQtdCy0LAg0LjQu9C4INC60L7RgNC+0YLQutC+0LPQviDQt9Cw0LzRi9C60LDQvdC40Y8uINCf0L7QtNGA0L7QsdC90L7RgdGC0Lgg0LIgRFJWX1NUQVRVUyAoMHg2RikKAA=="
	.align	4
.LC124:
	.base64	"RSAoJWx1KSAlczogR1NUQVQudXZfY3A6INC90LjQt9C60L7QtSDQvdCw0L/RgNGP0LbQtdC90LjQtSDQv9C40YLQsNC90LjRjyDQvNC+0YLQvtGA0LAgKFZTKSwg0LTRgNCw0LnQstC10YAg0L7RgtC60LvRjtGH0ZHQvS4KAA=="
	.align	4
.LC126:
	.string	"E (%lu) %s: tmc_init_step_2: Write to TMC_REG_GSTAT with Error\n"
	.section	.text._Z15tmc_init_step_26axis_t,"ax",@progbits
	.literal_position
	.literal .LC120, .LC1
	.literal .LC121, .LC112
	.literal .LC123, .LC122
	.literal .LC125, .LC124
	.literal .LC127, .LC126
	.align	4
	.global	_Z15tmc_init_step_26axis_t
	.type	_Z15tmc_init_step_26axis_t, @function
_Z15tmc_init_step_26axis_t:
.LVL183:
.LFB107:
	.loc 1 358 37 is_stmt 1 view -0
	.loc 1 358 37 is_stmt 0 view .LVU924
	entry	sp, 48	#
.LCFI8:
	mov.n	a10, a2	# a, a
	mov.n	a7, a2	# a, a
	.loc 1 359 5 is_stmt 1 view .LVU925
	.loc 1 361 5 view .LVU926
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:361:     esp_err_t err = tmc_read(a, TMC_REG_GSTAT, &gstat);
	.loc 1 361 29 is_stmt 0 view .LVU927
	mov.n	a12, sp	#,
	movi.n	a11, 1	#,
	call8	_Z8tmc_read6axis_thPm		#
.LVL184:
	mov.n	a2, a10	# <retval>, <retval>
.LVL185:
	.loc 1 363 5 is_stmt 1 view .LVU928
.LBB168:
	beqz.n	a10, .L56	# <retval>,
.LBB169:
	.loc 1 364 9 view .LVU929
	.loc 1 364 14 view .LVU930
	.loc 1 364 19 view .LVU931
	.loc 1 364 52 view .LVU932
	.loc 1 364 57 view .LVU933
.LBB170:
	.loc 1 364 116 discriminator 1 view .LVU934
.LBB171:
	.loc 1 364 141 discriminator 1 view .LVU935
	.loc 1 364 176 discriminator 1 view .LVU936
	.loc 1 364 217 view .LVU937
.LBE171:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:364:         ESP_LOGE(TAG, "Ошибка: %s", tmc_err_to_name(err));
	.loc 1 364 123 is_stmt 0 discriminator 1 view .LVU938
	call8	esp_log_timestamp		#
.LVL186:
	mov.n	a7, a10	# _2, _2
.LVL187:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:364:         ESP_LOGE(TAG, "Ошибка: %s", tmc_err_to_name(err));
	.loc 1 364 123 discriminator 3 view .LVU939
	mov.n	a10, a2	#, <retval>
	call8	_Z15tmc_err_to_namei		#
.LVL188:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:364:         ESP_LOGE(TAG, "Ошибка: %s", tmc_err_to_name(err));
	.loc 1 364 123 discriminator 4 view .LVU940
	l32r	a11, .LC120	#, tmp60
	mov.n	a15, a10	#, _4
	mov.n	a14, a11	#, tmp60
	mov.n	a13, a7	#, _2
	l32r	a12, .LC121	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL189:
	.loc 1 364 52 is_stmt 1 view .LVU941
	.loc 1 364 14 view .LVU942
.LBE170:
	.loc 1 364 9 view .LVU943
	.loc 1 365 9 view .LVU944
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:365:         return err;
	.loc 1 365 16 is_stmt 0 view .LVU945
	j	.L55		#
.LVL190:
.L56:
	.loc 1 365 16 view .LVU946
.LBE169:
.LBE168:
	.loc 1 368 5 is_stmt 1 view .LVU947
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:368:     bool isOverTemperature = gstat & (1UL << 1);
	.loc 1 368 36 is_stmt 0 view .LVU948
	l32i.n	a9, sp, 0	# gstat, gstat$866_8
.LVL191:
	.loc 1 369 5 is_stmt 1 view .LVU949
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:369:     bool isUnderVoltage = gstat & (1UL << 2);
	.loc 1 369 33 is_stmt 0 view .LVU950
	movi.n	a8, 4	# tmp64,
	and	a8, a9, a8	# _10, gstat$866_8, tmp64
.LVL192:
	.loc 1 371 5 is_stmt 1 view .LVU951
.LBB172:
	bbci	a9, 1, .L58	# gstat$866_8,,
.LBB173:
	.loc 1 372 9 view .LVU952
	.loc 1 372 14 view .LVU953
	.loc 1 372 19 view .LVU954
	.loc 1 372 52 view .LVU955
	.loc 1 372 57 view .LVU956
.LBB174:
	.loc 1 372 116 discriminator 1 view .LVU957
.LBB175:
	.loc 1 372 141 discriminator 1 view .LVU958
	.loc 1 372 176 discriminator 1 view .LVU959
	.loc 1 372 217 view .LVU960
.LBE175:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:372:         ESP_LOGE(TAG, "GSTAT.drv_err: драйвер отключил мотор из-за перегрева или короткого замыкания. "
	.loc 1 372 123 is_stmt 0 discriminator 1 view .LVU961
	call8	esp_log_timestamp		#
.LVL193:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:372:         ESP_LOGE(TAG, "GSTAT.drv_err: драйвер отключил мотор из-за перегрева или короткого замыкания. "
	.loc 1 372 123 discriminator 3 view .LVU962
	l32r	a11, .LC120	#, tmp65
	mov.n	a14, a11	#, tmp65
	mov.n	a13, a10	#, _12
	l32r	a12, .LC123	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL194:
	.loc 1 372 52 is_stmt 1 view .LVU963
	.loc 1 372 14 view .LVU964
.LBE174:
	.loc 1 372 9 view .LVU965
	.loc 1 374 9 view .LVU966
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:374:         tmc_log_drv_status(a);
	.loc 1 374 27 is_stmt 0 view .LVU967
	mov.n	a10, a7	#, a
	call8	_Z18tmc_log_drv_status6axis_t		#
.LVL195:
	.loc 1 375 9 is_stmt 1 view .LVU968
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:375:         return ESP_ERR_NOT_ALLOWED;
	.loc 1 375 16 is_stmt 0 view .LVU969
	movi	a2, 0x10d	# <retval>,
.LVL196:
	.loc 1 375 16 view .LVU970
	j	.L55		#
.LVL197:
.L58:
	.loc 1 375 16 view .LVU971
.LBE173:
.LBE172:
	.loc 1 378 5 is_stmt 1 view .LVU972
.LBB176:
	beqz.n	a8, .L59	# _10,
.LBB177:
	.loc 1 379 9 view .LVU973
	.loc 1 379 14 view .LVU974
	.loc 1 379 19 view .LVU975
	.loc 1 379 52 view .LVU976
	.loc 1 379 57 view .LVU977
.LBB178:
	.loc 1 379 116 discriminator 1 view .LVU978
.LBB179:
	.loc 1 379 141 discriminator 1 view .LVU979
	.loc 1 379 176 discriminator 1 view .LVU980
	.loc 1 379 217 view .LVU981
.LBE179:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:379:         ESP_LOGE(TAG, "GSTAT.uv_cp: низкое напряжение питания мотора (VS), драйвер отключён.");
	.loc 1 379 123 is_stmt 0 discriminator 1 view .LVU982
	call8	esp_log_timestamp		#
.LVL198:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:379:         ESP_LOGE(TAG, "GSTAT.uv_cp: низкое напряжение питания мотора (VS), драйвер отключён.");
	.loc 1 379 123 discriminator 3 view .LVU983
	l32r	a11, .LC120	#, tmp68
	mov.n	a14, a11	#, tmp68
	mov.n	a13, a10	#, _25
	l32r	a12, .LC125	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL199:
	.loc 1 379 52 is_stmt 1 view .LVU984
	.loc 1 379 14 view .LVU985
.LBE178:
	.loc 1 379 9 view .LVU986
	.loc 1 380 9 view .LVU987
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:380:         tmc_log_drv_status(a);
	.loc 1 380 27 is_stmt 0 view .LVU988
	mov.n	a10, a7	#, a
	call8	_Z18tmc_log_drv_status6axis_t		#
.LVL200:
	.loc 1 381 9 is_stmt 1 view .LVU989
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:381:         return ESP_ERR_NOT_ALLOWED;
	.loc 1 381 16 is_stmt 0 view .LVU990
	movi	a2, 0x10d	# <retval>,
.LVL201:
	.loc 1 381 16 view .LVU991
	j	.L55		#
.LVL202:
.L59:
	.loc 1 381 16 view .LVU992
.LBE177:
.LBE176:
	.loc 1 384 5 is_stmt 1 view .LVU993
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:384:     esp_err_t gstat_err = tmc_write(a, TMC_REG_GSTAT, 7); // устанавливаю 0000 0111 - этим сбрасываю все флаги
	.loc 1 384 36 is_stmt 0 view .LVU994
	movi.n	a12, 7	#,
	movi.n	a11, 1	#,
	mov.n	a10, a7	#, a
	call8	_Z9tmc_write6axis_thm		#
.LVL203:
	.loc 1 384 36 view .LVU995
	mov.n	a2, a10	# <retval>, <retval>
.LVL204:
	.loc 1 386 5 is_stmt 1 view .LVU996
.LBB180:
	beqz.n	a10, .L60	# <retval>,
.LBB181:
	.loc 1 387 9 view .LVU997
	.loc 1 387 14 view .LVU998
	.loc 1 387 19 view .LVU999
	.loc 1 387 52 view .LVU1000
	.loc 1 387 57 view .LVU1001
.LBB182:
	.loc 1 387 116 discriminator 1 view .LVU1002
.LBB183:
	.loc 1 387 141 discriminator 1 view .LVU1003
	.loc 1 387 176 discriminator 1 view .LVU1004
	.loc 1 387 217 view .LVU1005
.LBE183:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:387:         ESP_LOGE(TAG, "tmc_init_step_2: Write to TMC_REG_GSTAT with Error");
	.loc 1 387 123 is_stmt 0 discriminator 1 view .LVU1006
	call8	esp_log_timestamp		#
.LVL205:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:387:         ESP_LOGE(TAG, "tmc_init_step_2: Write to TMC_REG_GSTAT with Error");
	.loc 1 387 123 discriminator 3 view .LVU1007
	l32r	a11, .LC120	#, tmp71
	mov.n	a14, a11	#, tmp71
	mov.n	a13, a10	#, _39
	l32r	a12, .LC127	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL206:
	.loc 1 387 52 is_stmt 1 view .LVU1008
	.loc 1 387 14 view .LVU1009
.LBE182:
	.loc 1 387 9 view .LVU1010
	.loc 1 388 9 view .LVU1011
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:388:         return gstat_err;
	.loc 1 388 16 is_stmt 0 view .LVU1012
	j	.L55		#
.L60:
	.loc 1 388 16 view .LVU1013
.LBE181:
.LBE180:
	.loc 1 391 5 is_stmt 1 view .LVU1014
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:391:     log_step_success(a, 2);
	.loc 1 391 21 is_stmt 0 view .LVU1015
	movi.n	a11, 2	#,
	mov.n	a10, a7	#, a
	call8	_ZL16log_step_success6axis_th		#
.LVL207:
	.loc 1 392 5 is_stmt 1 view .LVU1016
.L55:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:393: }
	.loc 1 393 1 is_stmt 0 view .LVU1017
	retw.n	
.LFE107:
	.size	_Z15tmc_init_step_26axis_t, .-_Z15tmc_init_step_26axis_t
	.section	.rodata._Z15tmc_init_step_36axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC129:
	.base64	"RSAoJWx1KSAlczogdG1jX2luaXRfc3RlcF8zOiDQntGI0LjQsdC60LAg0YfRgtC10L3QuNGPIFRNQ19SRUdfQ0hPUENPTkYKAA=="
	.align	4
.LC131:
	.base64	"RSAoJWx1KSAlczogdG1jX2luaXRfc3RlcF8zOiDQntGI0LjQsdC60LAg0LfQsNC/0LjRgdC4IFRNQ19SRUdfQ0hPUENPTkYKAA=="
	.section	.text._Z15tmc_init_step_36axis_t,"ax",@progbits
	.literal_position
	.literal .LC128, .LC1
	.literal .LC130, .LC129
	.literal .LC132, .LC131
	.align	4
	.global	_Z15tmc_init_step_36axis_t
	.type	_Z15tmc_init_step_36axis_t, @function
_Z15tmc_init_step_36axis_t:
.LVL208:
.LFB108:
	.loc 1 413 37 is_stmt 1 view -0
	.loc 1 413 37 is_stmt 0 view .LVU1019
	entry	sp, 48	#
.LCFI9:
	mov.n	a10, a2	# a, a
	mov.n	a7, a2	# a, a
	.loc 1 414 5 is_stmt 1 view .LVU1020
	.loc 1 415 5 view .LVU1021
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:415:     esp_err_t err_chop = tmc_read(a, TMC_REG_CHOPCONF, &chopConf);
	.loc 1 415 34 is_stmt 0 view .LVU1022
	mov.n	a12, sp	#,
	movi	a11, 0x6c	#,
	call8	_Z8tmc_read6axis_thPm		#
.LVL209:
	mov.n	a2, a10	# <retval>, <retval>
.LVL210:
	.loc 1 417 5 is_stmt 1 view .LVU1023
.LBB184:
	beqz.n	a10, .L62	# <retval>,
.LBB185:
	.loc 1 418 9 view .LVU1024
	.loc 1 418 14 view .LVU1025
	.loc 1 418 19 view .LVU1026
	.loc 1 418 52 view .LVU1027
	.loc 1 418 57 view .LVU1028
.LBB186:
	.loc 1 418 116 discriminator 1 view .LVU1029
.LBB187:
	.loc 1 418 141 discriminator 1 view .LVU1030
	.loc 1 418 176 discriminator 1 view .LVU1031
	.loc 1 418 217 view .LVU1032
.LBE187:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:418:         ESP_LOGE(TAG, "tmc_init_step_3: Ошибка чтения TMC_REG_CHOPCONF");
	.loc 1 418 123 is_stmt 0 discriminator 1 view .LVU1033
	call8	esp_log_timestamp		#
.LVL211:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:418:         ESP_LOGE(TAG, "tmc_init_step_3: Ошибка чтения TMC_REG_CHOPCONF");
	.loc 1 418 123 discriminator 3 view .LVU1034
	l32r	a11, .LC128	#, tmp52
	mov.n	a14, a11	#, tmp52
	mov.n	a13, a10	#, _2
	l32r	a12, .LC130	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL212:
	.loc 1 418 52 is_stmt 1 view .LVU1035
	.loc 1 418 14 view .LVU1036
.LBE186:
	.loc 1 418 9 view .LVU1037
	.loc 1 419 9 view .LVU1038
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:419:         return err_chop;
	.loc 1 419 16 is_stmt 0 view .LVU1039
	j	.L61		#
.L62:
	.loc 1 419 16 view .LVU1040
.LBE185:
.LBE184:
	.loc 1 422 5 is_stmt 1 view .LVU1041
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:422:     chopConf &= ~(uint32_t)0x0F;
	.loc 1 422 14 is_stmt 0 view .LVU1042
	movi.n	a12, -0x10	# tmp55,
	l32i.n	a8, sp, 0	# chopConf, chopConf
	and	a12, a12, a8	# _15, tmp55, chopConf
	s32i.n	a12, sp, 0	# chopConf, _15
	.loc 1 424 5 is_stmt 1 view .LVU1043
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:424:     esp_err_t err_write = tmc_write(a, TMC_REG_CHOPCONF, chopConf);
	.loc 1 424 36 is_stmt 0 view .LVU1044
	movi	a11, 0x6c	#,
	mov.n	a10, a7	#, a
	call8	_Z9tmc_write6axis_thm		#
.LVL213:
	mov.n	a2, a10	# <retval>, <retval>
.LVL214:
	.loc 1 426 5 is_stmt 1 view .LVU1045
.LBB188:
	beqz.n	a10, .L64	# <retval>,
.LBB189:
	.loc 1 427 9 view .LVU1046
	.loc 1 427 14 view .LVU1047
	.loc 1 427 19 view .LVU1048
	.loc 1 427 52 view .LVU1049
	.loc 1 427 57 view .LVU1050
.LBB190:
	.loc 1 427 116 discriminator 1 view .LVU1051
.LBB191:
	.loc 1 427 141 discriminator 1 view .LVU1052
	.loc 1 427 176 discriminator 1 view .LVU1053
	.loc 1 427 217 view .LVU1054
.LBE191:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:427:         ESP_LOGE(TAG, "tmc_init_step_3: Ошибка записи TMC_REG_CHOPCONF");
	.loc 1 427 123 is_stmt 0 discriminator 1 view .LVU1055
	call8	esp_log_timestamp		#
.LVL215:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:427:         ESP_LOGE(TAG, "tmc_init_step_3: Ошибка записи TMC_REG_CHOPCONF");
	.loc 1 427 123 discriminator 3 view .LVU1056
	l32r	a11, .LC128	#, tmp57
	mov.n	a14, a11	#, tmp57
	mov.n	a13, a10	#, _17
	l32r	a12, .LC132	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL216:
	.loc 1 427 52 is_stmt 1 view .LVU1057
	.loc 1 427 14 view .LVU1058
.LBE190:
	.loc 1 427 9 view .LVU1059
	.loc 1 428 9 view .LVU1060
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:428:         return err_write;
	.loc 1 428 16 is_stmt 0 view .LVU1061
	j	.L61		#
.L64:
	.loc 1 428 16 view .LVU1062
.LBE189:
.LBE188:
	.loc 1 431 5 is_stmt 1 view .LVU1063
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:431:     log_step_success(a, 3);
	.loc 1 431 21 is_stmt 0 view .LVU1064
	movi.n	a11, 3	#,
	mov.n	a10, a7	#, a
	call8	_ZL16log_step_success6axis_th		#
.LVL217:
	.loc 1 432 5 is_stmt 1 view .LVU1065
.L61:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:433: }
	.loc 1 433 1 is_stmt 0 view .LVU1066
	retw.n	
.LFE108:
	.size	_Z15tmc_init_step_36axis_t, .-_Z15tmc_init_step_36axis_t
	.section	.rodata._Z15tmc_init_step_46axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC134:
	.base64	"RSAoJWx1KSAlczogdG1jX2luaXRfc3RlcF80OiDQntGI0LjQsdC60LAg0YfRgtC10L3QuNGPINGA0LXQs9C40YHRgtGA0LAgVE1DX1JFR19HQ09ORi4KAA=="
	.align	4
.LC137:
	.base64	"RSAoJWx1KSAlczogdG1jX2luaXRfc3RlcF80OiDQntGI0LjQsdC60LAg0LfQsNC/0LjRgdC4INGA0LXQs9C40YHRgtGA0LAgVE1DX1JFR19HQ09ORi4KAA=="
	.section	.text._Z15tmc_init_step_46axis_t,"ax",@progbits
	.literal_position
	.literal .LC133, .LC1
	.literal .LC135, .LC134
	.literal .LC136, AXES
	.literal .LC138, .LC137
	.align	4
	.global	_Z15tmc_init_step_46axis_t
	.type	_Z15tmc_init_step_46axis_t, @function
_Z15tmc_init_step_46axis_t:
.LVL218:
.LFB109:
	.loc 1 447 37 is_stmt 1 view -0
	.loc 1 447 37 is_stmt 0 view .LVU1068
	entry	sp, 48	#
.LCFI10:
	mov.n	a7, a2	# a, a
	.loc 1 448 5 is_stmt 1 view .LVU1069
	.loc 1 450 5 view .LVU1070
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:450:     esp_err_t err_gconf = tmc_read(a, TMC_REG_GCONF, &gconf);
	.loc 1 450 35 is_stmt 0 view .LVU1071
	mov.n	a12, sp	#,
	movi.n	a11, 0	#,
	mov.n	a10, a2	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL219:
	mov.n	a2, a10	# <retval>, <retval>
.LVL220:
	.loc 1 452 5 is_stmt 1 view .LVU1072
.LBB192:
	beqz.n	a10, .L66	# <retval>,
.LBB193:
	.loc 1 453 9 view .LVU1073
	.loc 1 453 14 view .LVU1074
	.loc 1 453 19 view .LVU1075
	.loc 1 453 52 view .LVU1076
	.loc 1 453 57 view .LVU1077
.LBB194:
	.loc 1 453 116 discriminator 1 view .LVU1078
.LBB195:
	.loc 1 453 141 discriminator 1 view .LVU1079
	.loc 1 453 176 discriminator 1 view .LVU1080
	.loc 1 453 217 view .LVU1081
.LBE195:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:453:         ESP_LOGE(TAG, "tmc_init_step_4: Ошибка чтения регистра TMC_REG_GCONF.");
	.loc 1 453 123 is_stmt 0 discriminator 1 view .LVU1082
	call8	esp_log_timestamp		#
.LVL221:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:453:         ESP_LOGE(TAG, "tmc_init_step_4: Ошибка чтения регистра TMC_REG_GCONF.");
	.loc 1 453 123 discriminator 3 view .LVU1083
	l32r	a11, .LC133	#, tmp65
	mov.n	a14, a11	#, tmp65
	mov.n	a13, a10	#, _2
	l32r	a12, .LC135	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL222:
	.loc 1 453 52 is_stmt 1 view .LVU1084
	.loc 1 453 14 view .LVU1085
.LBE194:
	.loc 1 453 9 view .LVU1086
	.loc 1 454 9 view .LVU1087
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:454:         return err_gconf;
	.loc 1 454 16 is_stmt 0 view .LVU1088
	j	.L65		#
.L66:
	.loc 1 454 16 view .LVU1089
.LBE193:
.LBE192:
	.loc 1 463 5 is_stmt 1 view .LVU1090
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:463:     gconf &= ~(uint32_t)1; // I_scale_analog: ток задают регистры, подстроечник VREF не влияет
	.loc 1 463 11 is_stmt 0 view .LVU1091
	l32i.n	a9, sp, 0	# gconf, gconf$960_15
	movi.n	a8, -2	# tmp68,
	and	a8, a9, a8	# _16, gconf$960_15, tmp68
	s32i.n	a8, sp, 0	# gconf, _16
	.loc 1 464 5 is_stmt 1 view .LVU1092
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:464:     gconf &= ~(1UL << 1); // internal_Rsense: ток меряется внешними резисторами, два резистора R110
	.loc 1 464 11 is_stmt 0 view .LVU1093
	movi.n	a8, -4	# tmp70,
	and	a8, a9, a8	# _17, gconf$960_15, tmp70
	s32i.n	a8, sp, 0	# gconf, _17
	.loc 1 465 5 is_stmt 1 view .LVU1094
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:465:     gconf &= ~(1UL << 2); // en_spreadCycle: StealthChop: тихо и плавно на скорости ведения
	.loc 1 465 11 is_stmt 0 view .LVU1095
	movi.n	a10, -8	# tmp72,
	and	a10, a9, a10	# _18, gconf$960_15, tmp72
	s32i.n	a10, sp, 0	# gconf, _18
	.loc 1 466 5 is_stmt 1 view .LVU1096
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:466:     if (AXES[a].shaft) gconf |= (1UL << 3);   // shaft: инвертировать направление (из конфига оси)
	.loc 1 466 17 is_stmt 0 view .LVU1097
	addx4	a8, a7, a7	#, tmp76, a, a
	addx2	a8, a8, a7	#, tmp78, tmp76, a
	l32r	a11, .LC136	#, tmp73
	addx4	a8, a8, a11	#, tmp80, tmp78, tmp73
	l8ui	a8, a8, 25	# AXES[a$963_19].shaft, _20
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:466:     if (AXES[a].shaft) gconf |= (1UL << 3);   // shaft: инвертировать направление (из конфига оси)
	.loc 1 466 5 view .LVU1098
	beqz.n	a8, .L68	# _20,
	.loc 1 466 24 is_stmt 1 discriminator 1 view .LVU1099
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:466:     if (AXES[a].shaft) gconf |= (1UL << 3);   // shaft: инвертировать направление (из конфига оси)
	.loc 1 466 30 is_stmt 0 discriminator 1 view .LVU1100
	movi.n	a8, 8	# tmp82,
	or	a10, a10, a8	# _21, _18, tmp82
	s32i.n	a10, sp, 0	# gconf, _21
	j	.L69		#
.L68:
	.loc 1 467 10 is_stmt 1 view .LVU1101
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:467:     else               gconf &= ~(1UL << 3);
	.loc 1 467 16 is_stmt 0 view .LVU1102
	movi.n	a8, -0x10	# tmp84,
	and	a9, a9, a8	# _22, gconf$960_15, tmp84
	s32i.n	a9, sp, 0	# gconf, _22
.L69:
	.loc 1 468 5 is_stmt 1 view .LVU1103
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:468:     gconf &= ~(3UL << 4); // bit 4 (index_otpw) and 5 (index_step) default values are 0, не влияет ни на что.
	.loc 1 468 11 is_stmt 0 view .LVU1104
	l32i.n	a12, sp, 0	# gconf, gconf$966_23
	movi	a8, -0x31	# tmp86,
	and	a8, a12, a8	# _24, gconf$966_23, tmp86
	s32i.n	a8, sp, 0	# gconf, _24
	.loc 1 469 5 is_stmt 1 view .LVU1105
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:469:     gconf |= (1UL << 6); // pdn_disable: отключить вторую функцию пина UART → 1 (обязательно)
	.loc 1 469 11 is_stmt 0 view .LVU1106
	movi.n	a9, 0x40	# tmp87,
	or	a9, a8, a9	# _25, _24, tmp87
	s32i.n	a9, sp, 0	# gconf, _25
	.loc 1 470 5 is_stmt 1 view .LVU1107
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:470:     gconf |= (1UL << 7); // mstep_reg_select: микрошаг = поле MRES в CHOPCONF → что зададим (1/16, 1/64 ...)
	.loc 1 470 11 is_stmt 0 view .LVU1108
	movi	a9, 0xc0	# tmp89,
	or	a9, a8, a9	# _26, _24, tmp89
	s32i.n	a9, sp, 0	# gconf, _26
	.loc 1 471 5 is_stmt 1 view .LVU1109
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:471:     gconf |= (1UL << 8); // multistep_filt: сглаживание шагов на высокой скорости → 1
	.loc 1 471 11 is_stmt 0 view .LVU1110
	movi	a9, 0x1c0	# tmp91,
	or	a8, a8, a9	# _27, _24, tmp91
	s32i.n	a8, sp, 0	# gconf, _27
	.loc 1 472 5 is_stmt 1 view .LVU1111
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:472:     gconf &= ~(1UL << 9); // test_mode: заводской тестовый режим → 0 (всегда)
	.loc 1 472 11 is_stmt 0 view .LVU1112
	movi	a8, -0x231	# tmp93,
	and	a12, a12, a8	# _51, gconf$966_23, tmp93
	or	a12, a12, a9	# _28, _51, tmp91
	s32i.n	a12, sp, 0	# gconf, _28
	.loc 1 474 5 is_stmt 1 view .LVU1113
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:474:     esp_err_t err_write = tmc_write(a, TMC_REG_GCONF, gconf);
	.loc 1 474 36 is_stmt 0 view .LVU1114
	movi.n	a11, 0	#,
	mov.n	a10, a7	#, a
	call8	_Z9tmc_write6axis_thm		#
.LVL223:
	mov.n	a2, a10	# <retval>, <retval>
.LVL224:
	.loc 1 476 5 is_stmt 1 view .LVU1115
.LBB196:
	beqz.n	a10, .L70	# <retval>,
.LBB197:
	.loc 1 477 9 view .LVU1116
	.loc 1 477 14 view .LVU1117
	.loc 1 477 19 view .LVU1118
	.loc 1 477 52 view .LVU1119
	.loc 1 477 57 view .LVU1120
.LBB198:
	.loc 1 477 116 discriminator 1 view .LVU1121
.LBB199:
	.loc 1 477 141 discriminator 1 view .LVU1122
	.loc 1 477 176 discriminator 1 view .LVU1123
	.loc 1 477 217 view .LVU1124
.LBE199:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:477:         ESP_LOGE(TAG, "tmc_init_step_4: Ошибка записи регистра TMC_REG_GCONF.");
	.loc 1 477 123 is_stmt 0 discriminator 1 view .LVU1125
	call8	esp_log_timestamp		#
.LVL225:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:477:         ESP_LOGE(TAG, "tmc_init_step_4: Ошибка записи регистра TMC_REG_GCONF.");
	.loc 1 477 123 discriminator 3 view .LVU1126
	l32r	a11, .LC133	#, tmp96
	mov.n	a14, a11	#, tmp96
	mov.n	a13, a10	#, _30
	l32r	a12, .LC138	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL226:
	.loc 1 477 52 is_stmt 1 view .LVU1127
	.loc 1 477 14 view .LVU1128
.LBE198:
	.loc 1 477 9 view .LVU1129
	.loc 1 478 9 view .LVU1130
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:478:         return err_write;
	.loc 1 478 16 is_stmt 0 view .LVU1131
	j	.L65		#
.L70:
	.loc 1 478 16 view .LVU1132
.LBE197:
.LBE196:
	.loc 1 481 5 is_stmt 1 view .LVU1133
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:481:     log_step_success(a, 4);
	.loc 1 481 21 is_stmt 0 view .LVU1134
	movi.n	a11, 4	#,
	mov.n	a10, a7	#, a
	call8	_ZL16log_step_success6axis_th		#
.LVL227:
	.loc 1 482 5 is_stmt 1 view .LVU1135
.L65:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:483: }
	.loc 1 483 1 is_stmt 0 view .LVU1136
	retw.n	
.LFE109:
	.size	_Z15tmc_init_step_46axis_t, .-_Z15tmc_init_step_46axis_t
	.section	.rodata._Z15tmc_init_step_56axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC142:
	.base64	"RSAoJWx1KSAlczogdG1jX2luaXRfc3RlcF81OiDQntGI0LjQsdC60LAg0LfQsNC/0LjRgdC4INGA0LXQs9C40YHRgtGA0LAgVE1DX1JFR19JSE9MRF9JUlVOLgoA"
	.section	.text._Z15tmc_init_step_56axis_t,"ax",@progbits
	.literal_position
	.literal .LC139, AXES
	.literal .LC140, 393216
	.literal .LC141, .LC1
	.literal .LC143, .LC142
	.align	4
	.global	_Z15tmc_init_step_56axis_t
	.type	_Z15tmc_init_step_56axis_t, @function
_Z15tmc_init_step_56axis_t:
.LVL228:
.LFB110:
	.loc 1 497 37 is_stmt 1 view -0
	.loc 1 497 37 is_stmt 0 view .LVU1138
	entry	sp, 32	#
.LCFI11:
	.loc 1 498 5 is_stmt 1 view .LVU1139
.LVL229:
	.loc 1 500 5 view .LVU1140
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:500:     ihold_irun |= AXES[a].ihold;
	.loc 1 500 27 is_stmt 0 view .LVU1141
	l32r	a10, .LC139	#, tmp55
	addx4	a8, a2, a2	#, tmp58, a, a
	addx2	a9, a8, a2	#, tmp60, tmp58, a
	addx4	a9, a9, a10	#, tmp62, tmp60, tmp55
	l8ui	a12, a9, 21	# AXES[a$987_1].ihold, _3
.LVL230:
	.loc 1 501 5 is_stmt 1 view .LVU1142
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:501:     ihold_irun |= (AXES[a].irun << 8);
	.loc 1 501 28 is_stmt 0 view .LVU1143
	l8ui	a8, a9, 20	# AXES[a$987_1].irun, _4
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:501:     ihold_irun |= (AXES[a].irun << 8);
	.loc 1 501 33 view .LVU1144
	slli	a8, a8, 8	# _6, _4,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:501:     ihold_irun |= (AXES[a].irun << 8);
	.loc 1 501 16 view .LVU1145
	or	a8, a12, a8	# ihold_irun, _3, _6
.LVL231:
	.loc 1 502 5 is_stmt 1 view .LVU1146
	.loc 1 504 5 view .LVU1147
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:504:     esp_err_t err_write = tmc_write(a, TMC_REG_IHOLD_IRUN, ihold_irun);
	.loc 1 504 36 is_stmt 0 view .LVU1148
	l32r	a12, .LC140	#, tmp73
	or	a12, a8, a12	#, ihold_irun, tmp73
.LVL232:
	.loc 1 504 36 view .LVU1149
	movi.n	a11, 0x10	#,
	mov.n	a10, a2	#, a
	call8	_Z9tmc_write6axis_thm		#
.LVL233:
	.loc 1 504 36 view .LVU1150
	mov.n	a7, a10	# <retval>, <retval>
.LVL234:
	.loc 1 506 5 is_stmt 1 view .LVU1151
.LBB200:
	beqz.n	a10, .L72	# <retval>,
.LBB201:
	.loc 1 507 9 view .LVU1152
	.loc 1 507 14 view .LVU1153
	.loc 1 507 19 view .LVU1154
	.loc 1 507 52 view .LVU1155
	.loc 1 507 57 view .LVU1156
.LBB202:
	.loc 1 507 116 discriminator 1 view .LVU1157
.LBB203:
	.loc 1 507 141 discriminator 1 view .LVU1158
	.loc 1 507 176 discriminator 1 view .LVU1159
	.loc 1 507 217 view .LVU1160
.LBE203:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:507:         ESP_LOGE(TAG, "tmc_init_step_5: Ошибка записи регистра TMC_REG_IHOLD_IRUN.");
	.loc 1 507 123 is_stmt 0 discriminator 1 view .LVU1161
	call8	esp_log_timestamp		#
.LVL235:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:507:         ESP_LOGE(TAG, "tmc_init_step_5: Ошибка записи регистра TMC_REG_IHOLD_IRUN.");
	.loc 1 507 123 discriminator 3 view .LVU1162
	l32r	a11, .LC141	#, tmp74
	mov.n	a14, a11	#, tmp74
	mov.n	a13, a10	#, _8
	l32r	a12, .LC143	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL236:
	.loc 1 507 52 is_stmt 1 view .LVU1163
	.loc 1 507 14 view .LVU1164
.LBE202:
	.loc 1 507 9 view .LVU1165
	.loc 1 508 9 view .LVU1166
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:508:         return err_write;
	.loc 1 508 16 is_stmt 0 view .LVU1167
	j	.L71		#
.L72:
	.loc 1 508 16 view .LVU1168
.LBE201:
.LBE200:
	.loc 1 511 5 is_stmt 1 view .LVU1169
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:511:     log_step_success(a, 5);
	.loc 1 511 21 is_stmt 0 view .LVU1170
	movi.n	a11, 5	#,
	mov.n	a10, a2	#, a
	call8	_ZL16log_step_success6axis_th		#
.LVL237:
	.loc 1 512 5 is_stmt 1 view .LVU1171
.L71:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:513: }
	.loc 1 513 1 is_stmt 0 view .LVU1172
	mov.n	a2, a7	#, <retval>
.LVL238:
	.loc 1 513 1 view .LVU1173
	retw.n	
.LFE110:
	.size	_Z15tmc_init_step_56axis_t, .-_Z15tmc_init_step_56axis_t
	.section	.rodata._Z15tmc_init_step_66axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC145:
	.base64	"RSAoJWx1KSAlczogdG1jX2luaXRfc3RlcF82OiDQntGI0LjQsdC60LAg0LfQsNC/0LjRgdC4INGA0LXQs9C40YHRgtGA0LAgVE1DX1JFR19UUE9XRVJET1dOLgoA"
	.section	.text._Z15tmc_init_step_66axis_t,"ax",@progbits
	.literal_position
	.literal .LC144, .LC1
	.literal .LC146, .LC145
	.align	4
	.global	_Z15tmc_init_step_66axis_t
	.type	_Z15tmc_init_step_66axis_t, @function
_Z15tmc_init_step_66axis_t:
.LVL239:
.LFB111:
	.loc 1 525 37 is_stmt 1 view -0
	.loc 1 525 37 is_stmt 0 view .LVU1175
	entry	sp, 32	#
.LCFI12:
	mov.n	a10, a2	# a, a
	mov.n	a7, a2	# a, a
	.loc 1 526 5 is_stmt 1 view .LVU1176
.LVL240:
	.loc 1 528 5 view .LVU1177
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:528:     esp_err_t write_tpower_down = tmc_write(a, TMC_REG_TPOWERDOWN, tpower_down);
	.loc 1 528 44 is_stmt 0 view .LVU1178
	movi	a12, 0x80	#,
	movi.n	a11, 0x11	#,
	call8	_Z9tmc_write6axis_thm		#
.LVL241:
	mov.n	a2, a10	# <retval>, <retval>
.LVL242:
	.loc 1 530 5 is_stmt 1 view .LVU1179
.LBB204:
	beqz.n	a10, .L75	# <retval>,
.LBB205:
	.loc 1 531 9 view .LVU1180
	.loc 1 531 14 view .LVU1181
	.loc 1 531 19 view .LVU1182
	.loc 1 531 52 view .LVU1183
	.loc 1 531 57 view .LVU1184
.LBB206:
	.loc 1 531 116 discriminator 1 view .LVU1185
.LBB207:
	.loc 1 531 141 discriminator 1 view .LVU1186
	.loc 1 531 176 discriminator 1 view .LVU1187
	.loc 1 531 217 view .LVU1188
.LBE207:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:531:         ESP_LOGE(TAG, "tmc_init_step_6: Ошибка записи регистра TMC_REG_TPOWERDOWN.");
	.loc 1 531 123 is_stmt 0 discriminator 1 view .LVU1189
	call8	esp_log_timestamp		#
.LVL243:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:531:         ESP_LOGE(TAG, "tmc_init_step_6: Ошибка записи регистра TMC_REG_TPOWERDOWN.");
	.loc 1 531 123 discriminator 3 view .LVU1190
	l32r	a11, .LC144	#, tmp47
	mov.n	a14, a11	#, tmp47
	mov.n	a13, a10	#, _2
	l32r	a12, .LC146	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL244:
	.loc 1 531 52 is_stmt 1 view .LVU1191
	.loc 1 531 14 view .LVU1192
.LBE206:
	.loc 1 531 9 view .LVU1193
	.loc 1 532 9 view .LVU1194
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:532:         return write_tpower_down;
	.loc 1 532 16 is_stmt 0 view .LVU1195
	j	.L74		#
.L75:
	.loc 1 532 16 view .LVU1196
.LBE205:
.LBE204:
	.loc 1 535 5 is_stmt 1 view .LVU1197
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:535:     log_step_success(a, 6);
	.loc 1 535 21 is_stmt 0 view .LVU1198
	movi.n	a11, 6	#,
	mov.n	a10, a7	#, a
	call8	_ZL16log_step_success6axis_th		#
.LVL245:
	.loc 1 536 5 is_stmt 1 view .LVU1199
.L74:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:537: }
	.loc 1 537 1 is_stmt 0 view .LVU1200
	retw.n	
.LFE111:
	.size	_Z15tmc_init_step_66axis_t, .-_Z15tmc_init_step_66axis_t
	.section	.rodata._Z15tmc_init_step_76axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC151:
	.base64	"RSAoJWx1KSAlczogdG1jX2luaXRfc3RlcF83OiDQntGI0LjQsdC60LAg0LfQsNC/0LjRgdC4INGA0LXQs9C40YHRgtGA0LAgVE1DX1JFR19QV01DT05GLgoA"
	.section	.text._Z15tmc_init_step_76axis_t,"ax",@progbits
	.literal_position
	.literal .LC147, AXES
	.literal .LC149, -939196380
	.literal .LC150, .LC1
	.literal .LC152, .LC151
	.align	4
	.global	_Z15tmc_init_step_76axis_t
	.type	_Z15tmc_init_step_76axis_t, @function
_Z15tmc_init_step_76axis_t:
.LVL246:
.LFB112:
	.loc 1 539 37 is_stmt 1 view -0
	.loc 1 539 37 is_stmt 0 view .LVU1202
	entry	sp, 32	#
.LCFI13:
	.loc 1 541 5 is_stmt 1 view .LVU1203
	.loc 1 543 5 view .LVU1204
.LVL247:
	.loc 1 544 5 view .LVU1205
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:544:     pwmconf |= ((uint32_t)AXES[a].pwm_grad << 8); // PWM_GRAD (из конфига оси): На сколько увеличивать напряжение с ростом скорости. стартовая точка: во время движения на средней скорости (AT#2) драйвер подстраивает его сам
	.loc 1 544 35 is_stmt 0 view .LVU1206
	addx4	a8, a2, a2	#, tmp56, a, a
	addx2	a8, a8, a2	#, tmp58, tmp56, a
	l32r	a9, .LC147	#, tmp53
	addx4	a8, a8, a9	#, tmp60, tmp58, tmp53
	l8ui	a8, a8, 23	# AXES[a$1019_1].pwm_grad, _2
	.loc 1 545 5 is_stmt 1 view .LVU1207
	.loc 1 546 5 view .LVU1208
	.loc 1 547 5 view .LVU1209
.LVL248:
	.loc 1 550 5 view .LVU1210
	.loc 1 551 5 view .LVU1211
	.loc 1 552 5 view .LVU1212
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:552:     pwmconf |= (12UL << 28); // PWM_LIM: ограничение рывка при смене режима
	.loc 1 552 13 is_stmt 0 view .LVU1213
	slli	a8, a8, 8	# _15, _2,
.LVL249:
	.loc 1 554 5 is_stmt 1 view .LVU1214
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:554:     esp_err_t err_pwmconf = tmc_write(a, TMC_REG_PWMCONF, pwmconf);
	.loc 1 554 38 is_stmt 0 view .LVU1215
	l32r	a12, .LC149	#, tmp64
	or	a12, a8, a12	#, _15, tmp64
.LVL250:
	.loc 1 554 38 view .LVU1216
	movi	a11, 0x70	#,
	mov.n	a10, a2	#, a
	call8	_Z9tmc_write6axis_thm		#
.LVL251:
	.loc 1 554 38 view .LVU1217
	mov.n	a7, a10	# <retval>, <retval>
.LVL252:
	.loc 1 556 5 is_stmt 1 view .LVU1218
.LBB208:
	beqz.n	a10, .L78	# <retval>,
.LBB209:
	.loc 1 557 9 view .LVU1219
	.loc 1 557 14 view .LVU1220
	.loc 1 557 19 view .LVU1221
	.loc 1 557 52 view .LVU1222
	.loc 1 557 57 view .LVU1223
.LBB210:
	.loc 1 557 116 discriminator 1 view .LVU1224
.LBB211:
	.loc 1 557 141 discriminator 1 view .LVU1225
	.loc 1 557 176 discriminator 1 view .LVU1226
	.loc 1 557 217 view .LVU1227
.LBE211:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:557:         ESP_LOGE(TAG, "tmc_init_step_7: Ошибка записи регистра TMC_REG_PWMCONF.");
	.loc 1 557 123 is_stmt 0 discriminator 1 view .LVU1228
	call8	esp_log_timestamp		#
.LVL253:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:557:         ESP_LOGE(TAG, "tmc_init_step_7: Ошибка записи регистра TMC_REG_PWMCONF.");
	.loc 1 557 123 discriminator 3 view .LVU1229
	l32r	a11, .LC150	#, tmp65
	mov.n	a14, a11	#, tmp65
	mov.n	a13, a10	#, _6
	l32r	a12, .LC152	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL254:
	.loc 1 557 52 is_stmt 1 view .LVU1230
	.loc 1 557 14 view .LVU1231
.LBE210:
	.loc 1 557 9 view .LVU1232
	.loc 1 558 9 view .LVU1233
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:558:         return err_pwmconf;
	.loc 1 558 16 is_stmt 0 view .LVU1234
	j	.L77		#
.L78:
	.loc 1 558 16 view .LVU1235
.LBE209:
.LBE208:
	.loc 1 561 5 is_stmt 1 view .LVU1236
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:561:     log_step_success(a, 7);
	.loc 1 561 21 is_stmt 0 view .LVU1237
	movi.n	a11, 7	#,
	mov.n	a10, a2	#, a
	call8	_ZL16log_step_success6axis_th		#
.LVL255:
	.loc 1 562 5 is_stmt 1 view .LVU1238
.L77:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:563: }
	.loc 1 563 1 is_stmt 0 view .LVU1239
	mov.n	a2, a7	#, <retval>
.LVL256:
	.loc 1 563 1 view .LVU1240
	retw.n	
.LFE112:
	.size	_Z15tmc_init_step_76axis_t, .-_Z15tmc_init_step_76axis_t
	.section	.rodata._Z15tmc_init_step_86axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC154:
	.base64	"RSAoJWx1KSAlczogdG1jX2luaXRfc3RlcF84OiDQntGI0LjQsdC60LAg0LfQsNC/0LjRgdC4INGA0LXQs9C40YHRgtGA0LAgVE1DX1JFR19UUFdNVEhSUy4KAA=="
	.section	.text._Z15tmc_init_step_86axis_t,"ax",@progbits
	.literal_position
	.literal .LC153, .LC1
	.literal .LC155, .LC154
	.align	4
	.global	_Z15tmc_init_step_86axis_t
	.type	_Z15tmc_init_step_86axis_t, @function
_Z15tmc_init_step_86axis_t:
.LVL257:
.LFB113:
	.loc 1 570 37 is_stmt 1 view -0
	.loc 1 570 37 is_stmt 0 view .LVU1242
	entry	sp, 32	#
.LCFI14:
	mov.n	a10, a2	# a, a
	mov.n	a7, a2	# a, a
	.loc 1 571 5 is_stmt 1 view .LVU1243
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:571:     esp_err_t err = tmc_write(a, TMC_REG_TPWMTHRS, 0);
	.loc 1 571 30 is_stmt 0 view .LVU1244
	movi.n	a12, 0	#,
	movi.n	a11, 0x13	#,
	call8	_Z9tmc_write6axis_thm		#
.LVL258:
	mov.n	a2, a10	# <retval>, <retval>
.LVL259:
	.loc 1 573 5 is_stmt 1 view .LVU1245
.LBB212:
	beqz.n	a10, .L81	# <retval>,
.LBB213:
	.loc 1 574 9 view .LVU1246
	.loc 1 574 14 view .LVU1247
	.loc 1 574 19 view .LVU1248
	.loc 1 574 52 view .LVU1249
	.loc 1 574 57 view .LVU1250
.LBB214:
	.loc 1 574 116 discriminator 1 view .LVU1251
.LBB215:
	.loc 1 574 141 discriminator 1 view .LVU1252
	.loc 1 574 176 discriminator 1 view .LVU1253
	.loc 1 574 217 view .LVU1254
.LBE215:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:574:         ESP_LOGE(TAG, "tmc_init_step_8: Ошибка записи регистра TMC_REG_TPWMTHRS.");
	.loc 1 574 123 is_stmt 0 discriminator 1 view .LVU1255
	call8	esp_log_timestamp		#
.LVL260:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:574:         ESP_LOGE(TAG, "tmc_init_step_8: Ошибка записи регистра TMC_REG_TPWMTHRS.");
	.loc 1 574 123 discriminator 3 view .LVU1256
	l32r	a11, .LC153	#, tmp47
	mov.n	a14, a11	#, tmp47
	mov.n	a13, a10	#, _2
	l32r	a12, .LC155	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL261:
	.loc 1 574 52 is_stmt 1 view .LVU1257
	.loc 1 574 14 view .LVU1258
.LBE214:
	.loc 1 574 9 view .LVU1259
	.loc 1 575 9 view .LVU1260
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:575:         return err;
	.loc 1 575 16 is_stmt 0 view .LVU1261
	j	.L80		#
.L81:
	.loc 1 575 16 view .LVU1262
.LBE213:
.LBE212:
	.loc 1 578 5 is_stmt 1 view .LVU1263
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:578:     log_step_success(a, 8);
	.loc 1 578 21 is_stmt 0 view .LVU1264
	movi.n	a11, 8	#,
	mov.n	a10, a7	#, a
	call8	_ZL16log_step_success6axis_th		#
.LVL262:
	.loc 1 579 5 is_stmt 1 view .LVU1265
.L80:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:580: }
	.loc 1 580 1 is_stmt 0 view .LVU1266
	retw.n	
.LFE113:
	.size	_Z15tmc_init_step_86axis_t, .-_Z15tmc_init_step_86axis_t
	.section	.rodata._Z15tmc_init_step_96axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC157:
	.base64	"RSAoJWx1KSAlczogdG1jX2luaXRfc3RlcF85OiDQntGI0LjQsdC60LAg0LfQsNC/0LjRgdC4INGA0LXQs9C40YHRgtGA0LAgVE1DX1JFR19UQ09PTFRIUlMuCgA="
	.align	4
.LC159:
	.base64	"RSAoJWx1KSAlczogdG1jX2luaXRfc3RlcF85OiDQntGI0LjQsdC60LAg0LfQsNC/0LjRgdC4INGA0LXQs9C40YHRgtGA0LAgVE1DX1JFR19TR1RIUlMuCgA="
	.align	4
.LC161:
	.base64	"RSAoJWx1KSAlczogdG1jX2luaXRfc3RlcF85OiDQntGI0LjQsdC60LAg0LfQsNC/0LjRgdC4INGA0LXQs9C40YHRgtGA0LAgVE1DX1JFR19DT09MQ09ORi4KAA=="
	.section	.text._Z15tmc_init_step_96axis_t,"ax",@progbits
	.literal_position
	.literal .LC156, .LC1
	.literal .LC158, .LC157
	.literal .LC160, .LC159
	.literal .LC162, .LC161
	.align	4
	.global	_Z15tmc_init_step_96axis_t
	.type	_Z15tmc_init_step_96axis_t, @function
_Z15tmc_init_step_96axis_t:
.LVL263:
.LFB114:
	.loc 1 593 37 is_stmt 1 view -0
	.loc 1 593 37 is_stmt 0 view .LVU1268
	entry	sp, 32	#
.LCFI15:
	mov.n	a10, a2	# a, a
	mov.n	a7, a2	# a, a
	.loc 1 594 5 is_stmt 1 view .LVU1269
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:594:     esp_err_t err = tmc_write(a, TMC_REG_TCOOLTHRS, 0); // 0 = CoolStep и сигнал упора не включаются ни на какой скорости
	.loc 1 594 30 is_stmt 0 view .LVU1270
	movi.n	a12, 0	#,
	movi.n	a11, 0x14	#,
	call8	_Z9tmc_write6axis_thm		#
.LVL264:
	mov.n	a2, a10	# <retval>, <retval>
.LVL265:
	.loc 1 595 5 is_stmt 1 view .LVU1271
.LBB216:
	beqz.n	a10, .L84	# <retval>,
.LBB217:
	.loc 1 596 9 view .LVU1272
	.loc 1 596 14 view .LVU1273
	.loc 1 596 19 view .LVU1274
	.loc 1 596 52 view .LVU1275
	.loc 1 596 57 view .LVU1276
.LBB218:
	.loc 1 596 116 discriminator 1 view .LVU1277
.LBB219:
	.loc 1 596 141 discriminator 1 view .LVU1278
	.loc 1 596 176 discriminator 1 view .LVU1279
	.loc 1 596 217 view .LVU1280
.LBE219:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:596:         ESP_LOGE(TAG, "tmc_init_step_9: Ошибка записи регистра TMC_REG_TCOOLTHRS.");
	.loc 1 596 123 is_stmt 0 discriminator 1 view .LVU1281
	call8	esp_log_timestamp		#
.LVL266:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:596:         ESP_LOGE(TAG, "tmc_init_step_9: Ошибка записи регистра TMC_REG_TCOOLTHRS.");
	.loc 1 596 123 discriminator 3 view .LVU1282
	l32r	a11, .LC156	#, tmp53
	mov.n	a14, a11	#, tmp53
	mov.n	a13, a10	#, _2
	l32r	a12, .LC158	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL267:
	.loc 1 596 52 is_stmt 1 view .LVU1283
	.loc 1 596 14 view .LVU1284
.LBE218:
	.loc 1 596 9 view .LVU1285
	.loc 1 597 9 view .LVU1286
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:597:         return err;
	.loc 1 597 16 is_stmt 0 view .LVU1287
	j	.L83		#
.L84:
	.loc 1 597 16 view .LVU1288
.LBE217:
.LBE216:
	.loc 1 600 5 is_stmt 1 view .LVU1289
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:600:     err = tmc_write(a, TMC_REG_SGTHRS, 0); // 0 = сигнал «упёрся» никогда не срабатывает
	.loc 1 600 20 is_stmt 0 view .LVU1290
	mov.n	a12, a10	#, <retval>
	movi.n	a11, 0x40	#,
	mov.n	a10, a7	#, a
	call8	_Z9tmc_write6axis_thm		#
.LVL268:
	mov.n	a2, a10	# <retval>, <retval>
.LVL269:
	.loc 1 601 5 is_stmt 1 view .LVU1291
.LBB220:
	beqz.n	a10, .L86	# <retval>,
.LBB221:
	.loc 1 602 9 view .LVU1292
	.loc 1 602 14 view .LVU1293
	.loc 1 602 19 view .LVU1294
	.loc 1 602 52 view .LVU1295
	.loc 1 602 57 view .LVU1296
.LBB222:
	.loc 1 602 116 discriminator 1 view .LVU1297
.LBB223:
	.loc 1 602 141 discriminator 1 view .LVU1298
	.loc 1 602 176 discriminator 1 view .LVU1299
	.loc 1 602 217 view .LVU1300
.LBE223:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:602:         ESP_LOGE(TAG, "tmc_init_step_9: Ошибка записи регистра TMC_REG_SGTHRS.");
	.loc 1 602 123 is_stmt 0 discriminator 1 view .LVU1301
	call8	esp_log_timestamp		#
.LVL270:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:602:         ESP_LOGE(TAG, "tmc_init_step_9: Ошибка записи регистра TMC_REG_SGTHRS.");
	.loc 1 602 123 discriminator 3 view .LVU1302
	l32r	a11, .LC156	#, tmp56
	mov.n	a14, a11	#, tmp56
	mov.n	a13, a10	#, _10
	l32r	a12, .LC160	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL271:
	.loc 1 602 52 is_stmt 1 view .LVU1303
	.loc 1 602 14 view .LVU1304
.LBE222:
	.loc 1 602 9 view .LVU1305
	.loc 1 603 9 view .LVU1306
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:603:         return err;
	.loc 1 603 16 is_stmt 0 view .LVU1307
	j	.L83		#
.L86:
	.loc 1 603 16 view .LVU1308
.LBE221:
.LBE220:
	.loc 1 606 5 is_stmt 1 view .LVU1309
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:606:     err = tmc_write(a, TMC_REG_COOLCONF, 0); // SEMIN = 0 → CoolStep выключен (стр. 27)
	.loc 1 606 20 is_stmt 0 view .LVU1310
	mov.n	a12, a10	#, <retval>
	movi.n	a11, 0x42	#,
	mov.n	a10, a7	#, a
	call8	_Z9tmc_write6axis_thm		#
.LVL272:
	mov.n	a2, a10	# <retval>, <retval>
.LVL273:
	.loc 1 607 5 is_stmt 1 view .LVU1311
.LBB224:
	beqz.n	a10, .L87	# <retval>,
.LBB225:
	.loc 1 608 9 view .LVU1312
	.loc 1 608 14 view .LVU1313
	.loc 1 608 19 view .LVU1314
	.loc 1 608 52 view .LVU1315
	.loc 1 608 57 view .LVU1316
.LBB226:
	.loc 1 608 116 discriminator 1 view .LVU1317
.LBB227:
	.loc 1 608 141 discriminator 1 view .LVU1318
	.loc 1 608 176 discriminator 1 view .LVU1319
	.loc 1 608 217 view .LVU1320
.LBE227:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:608:         ESP_LOGE(TAG, "tmc_init_step_9: Ошибка записи регистра TMC_REG_COOLCONF.");
	.loc 1 608 123 is_stmt 0 discriminator 1 view .LVU1321
	call8	esp_log_timestamp		#
.LVL274:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:608:         ESP_LOGE(TAG, "tmc_init_step_9: Ошибка записи регистра TMC_REG_COOLCONF.");
	.loc 1 608 123 discriminator 3 view .LVU1322
	l32r	a11, .LC156	#, tmp59
	mov.n	a14, a11	#, tmp59
	mov.n	a13, a10	#, _23
	l32r	a12, .LC162	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL275:
	.loc 1 608 52 is_stmt 1 view .LVU1323
	.loc 1 608 14 view .LVU1324
.LBE226:
	.loc 1 608 9 view .LVU1325
	.loc 1 609 9 view .LVU1326
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:609:         return err;
	.loc 1 609 16 is_stmt 0 view .LVU1327
	j	.L83		#
.L87:
	.loc 1 609 16 view .LVU1328
.LBE225:
.LBE224:
	.loc 1 612 5 is_stmt 1 view .LVU1329
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:612:     log_step_success(a, 9);
	.loc 1 612 21 is_stmt 0 view .LVU1330
	movi.n	a11, 9	#,
	mov.n	a10, a7	#, a
	call8	_ZL16log_step_success6axis_th		#
.LVL276:
	.loc 1 613 5 is_stmt 1 view .LVU1331
.L83:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:614: }
	.loc 1 614 1 is_stmt 0 view .LVU1332
	retw.n	
.LFE114:
	.size	_Z15tmc_init_step_96axis_t, .-_Z15tmc_init_step_96axis_t
	.section	.rodata._Z16tmc_init_step_106axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC164:
	.base64	"RSAoJWx1KSAlczogdG1jX2luaXRfc3RlcF8xMDog0J7RiNC40LHQutCwINC30LDQv9C40YHQuCDRgNC10LPQuNGB0YLRgNCwIFRNQ19SRUdfVkFDVFVBTC4KAA=="
	.section	.text._Z16tmc_init_step_106axis_t,"ax",@progbits
	.literal_position
	.literal .LC163, .LC1
	.literal .LC165, .LC164
	.align	4
	.global	_Z16tmc_init_step_106axis_t
	.type	_Z16tmc_init_step_106axis_t, @function
_Z16tmc_init_step_106axis_t:
.LVL277:
.LFB115:
	.loc 1 627 38 is_stmt 1 view -0
	.loc 1 627 38 is_stmt 0 view .LVU1334
	entry	sp, 32	#
.LCFI16:
	mov.n	a10, a2	# a, a
	mov.n	a7, a2	# a, a
	.loc 1 628 5 is_stmt 1 view .LVU1335
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:628:     esp_err_t err = tmc_write(a, TMC_REG_VACTUAL, 0);
	.loc 1 628 30 is_stmt 0 view .LVU1336
	movi.n	a12, 0	#,
	movi.n	a11, 0x22	#,
	call8	_Z9tmc_write6axis_thm		#
.LVL278:
	mov.n	a2, a10	# <retval>, <retval>
.LVL279:
	.loc 1 630 5 is_stmt 1 view .LVU1337
.LBB228:
	beqz.n	a10, .L89	# <retval>,
.LBB229:
	.loc 1 631 9 view .LVU1338
	.loc 1 631 14 view .LVU1339
	.loc 1 631 19 view .LVU1340
	.loc 1 631 52 view .LVU1341
	.loc 1 631 57 view .LVU1342
.LBB230:
	.loc 1 631 116 discriminator 1 view .LVU1343
.LBB231:
	.loc 1 631 141 discriminator 1 view .LVU1344
	.loc 1 631 176 discriminator 1 view .LVU1345
	.loc 1 631 217 view .LVU1346
.LBE231:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:631:         ESP_LOGE(TAG, "tmc_init_step_10: Ошибка записи регистра TMC_REG_VACTUAL.");
	.loc 1 631 123 is_stmt 0 discriminator 1 view .LVU1347
	call8	esp_log_timestamp		#
.LVL280:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:631:         ESP_LOGE(TAG, "tmc_init_step_10: Ошибка записи регистра TMC_REG_VACTUAL.");
	.loc 1 631 123 discriminator 3 view .LVU1348
	l32r	a11, .LC163	#, tmp47
	mov.n	a14, a11	#, tmp47
	mov.n	a13, a10	#, _2
	l32r	a12, .LC165	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL281:
	.loc 1 631 52 is_stmt 1 view .LVU1349
	.loc 1 631 14 view .LVU1350
.LBE230:
	.loc 1 631 9 view .LVU1351
	.loc 1 632 9 view .LVU1352
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:632:         return err;
	.loc 1 632 16 is_stmt 0 view .LVU1353
	j	.L88		#
.L89:
	.loc 1 632 16 view .LVU1354
.LBE229:
.LBE228:
	.loc 1 635 5 is_stmt 1 view .LVU1355
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:635:     log_step_success(a, 10);
	.loc 1 635 21 is_stmt 0 view .LVU1356
	movi.n	a11, 0xa	#,
	mov.n	a10, a7	#, a
	call8	_ZL16log_step_success6axis_th		#
.LVL282:
	.loc 1 636 5 is_stmt 1 view .LVU1357
.L88:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:637: }
	.loc 1 637 1 is_stmt 0 view .LVU1358
	retw.n	
.LFE115:
	.size	_Z16tmc_init_step_106axis_t, .-_Z16tmc_init_step_106axis_t
	.section	.rodata._Z16tmc_init_step_116axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC171:
	.base64	"RSAoJWx1KSAlczogdG1jX2luaXRfc3RlcF8xMTog0J7RiNC40LHQutCwINC30LDQv9C40YHQuCDRgNC10LPQuNGB0YLRgNCwIFRNQ19SRUdfQ0hPUENPTkYuCgA="
	.align	4
.LC173:
	.base64	"RSAoJWx1KSAlczogdG1jX2luaXRfc3RlcF8xMTog0J7RiNC40LHQutCwINGH0YLQtdC90LjRjyDRgNC10LPQuNGB0YLRgNCwIFRNQ19SRUdfQ0hPUENPTkYuCgA="
	.align	4
.LC175:
	.base64	"RSAoJWx1KSAlczogdG1jX2luaXRfc3RlcF8xMTog0JfQvdCw0YfQtdC90LjQtSDQv9GA0Lgg0LfQsNC/0LjRgdC4INC4INGH0YLQtdC90LjQuCDQvtGC0LvQuNGH0LDRjtGC0YHRjyBUTUNfUkVHX0NIT1BDT05GLgoA"
	.section	.text._Z16tmc_init_step_116axis_t,"ax",@progbits
	.literal_position
	.literal .LC166, 131080
	.literal .LC167, AXES
	.literal .LC169, 268632133
	.literal .LC170, .LC1
	.literal .LC172, .LC171
	.literal .LC174, .LC173
	.literal .LC176, .LC175
	.align	4
	.global	_Z16tmc_init_step_116axis_t
	.type	_Z16tmc_init_step_116axis_t, @function
_Z16tmc_init_step_116axis_t:
.LVL283:
.LFB116:
	.loc 1 655 38 is_stmt 1 view -0
	.loc 1 655 38 is_stmt 0 view .LVU1360
	entry	sp, 48	#
.LCFI17:
	mov.n	a7, a2	# a, a
	.loc 1 656 5 is_stmt 1 view .LVU1361
	.loc 1 658 5 view .LVU1362
	.loc 1 659 5 view .LVU1363
	.loc 1 660 5 view .LVU1364
	.loc 1 662 5 view .LVU1365
	.loc 1 664 5 view .LVU1366
	.loc 1 664 21 discriminator 1 view .LVU1367
	.loc 1 666 5 view .LVU1368
.LVL284:
	.loc 1 667 5 view .LVU1369
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:667:     chopconf |= ((uint32_t)AXES[a].mres << 24); // MRES: микрошаг из конфига оси (0 = 1/256, 2 = 1/64 ...)
	.loc 1 667 36 is_stmt 0 view .LVU1370
	addx4	a8, a2, a2	#, tmp63, a, a
	addx2	a8, a8, a2	#, tmp65, tmp63, a
	l32r	a9, .LC167	#, tmp60
	addx4	a8, a8, a9	#, tmp67, tmp65, tmp60
	l8ui	a8, a8, 24	# AXES[a$1110_1].mres, _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:667:     chopconf |= ((uint32_t)AXES[a].mres << 24); // MRES: микрошаг из конфига оси (0 = 1/256, 2 = 1/64 ...)
	.loc 1 667 41 view .LVU1371
	slli	a8, a8, 24	# _4, _2,
	.loc 1 668 5 is_stmt 1 view .LVU1372
	.loc 1 670 5 view .LVU1373
	.loc 1 671 5 view .LVU1374
.LVL285:
	.loc 1 672 5 view .LVU1375
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:672:     chopconf &= ~(1UL << 31); // diss2vs: защита от замыкания. Всегда 0: защита должна работать.
	.loc 1 672 14 is_stmt 0 view .LVU1376
	extui	a8, a8, 24, 5	# _35, _4,,
.LVL286:
	.loc 1 672 14 view .LVU1377
	slli	a8, a8, 24	# _35, _35,
	l32r	a9, .LC169	#, tmp71
.LVL287:
	.loc 1 672 14 view .LVU1378
	or	a2, a8, a9	# chopconf, _35, tmp71
.LVL288:
	.loc 1 674 5 is_stmt 1 view .LVU1379
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:674:     esp_err_t err_chopconf = tmc_write(a, TMC_REG_CHOPCONF, chopconf);
	.loc 1 674 39 is_stmt 0 view .LVU1380
	mov.n	a12, a2	#, chopconf
	movi	a11, 0x6c	#,
	mov.n	a10, a7	#, a
	call8	_Z9tmc_write6axis_thm		#
.LVL289:
	mov.n	a6, a10	# <retval>, <retval>
.LVL290:
	.loc 1 676 5 is_stmt 1 view .LVU1381
.LBB232:
	beqz.n	a10, .L92	# <retval>,
.LBB233:
	.loc 1 677 9 view .LVU1382
	.loc 1 677 14 view .LVU1383
	.loc 1 677 19 view .LVU1384
	.loc 1 677 52 view .LVU1385
	.loc 1 677 57 view .LVU1386
.LBB234:
	.loc 1 677 116 discriminator 1 view .LVU1387
.LBB235:
	.loc 1 677 141 discriminator 1 view .LVU1388
	.loc 1 677 176 discriminator 1 view .LVU1389
	.loc 1 677 217 view .LVU1390
.LBE235:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:677:         ESP_LOGE(TAG, "tmc_init_step_11: Ошибка записи регистра TMC_REG_CHOPCONF.");
	.loc 1 677 123 is_stmt 0 discriminator 1 view .LVU1391
	call8	esp_log_timestamp		#
.LVL291:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:677:         ESP_LOGE(TAG, "tmc_init_step_11: Ошибка записи регистра TMC_REG_CHOPCONF.");
	.loc 1 677 123 discriminator 3 view .LVU1392
	l32r	a11, .LC170	#, tmp72
	mov.n	a14, a11	#, tmp72
	mov.n	a13, a10	#, _6
	l32r	a12, .LC172	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL292:
	.loc 1 677 52 is_stmt 1 view .LVU1393
	.loc 1 677 14 view .LVU1394
.LBE234:
	.loc 1 677 9 view .LVU1395
	.loc 1 678 9 view .LVU1396
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:678:         return err_chopconf;
	.loc 1 678 16 is_stmt 0 view .LVU1397
	j	.L91		#
.L92:
	.loc 1 678 16 view .LVU1398
.LBE233:
.LBE232:
	.loc 1 681 5 is_stmt 1 view .LVU1399
	.loc 1 682 5 view .LVU1400
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:682:     esp_err_t err_read_chopconf = tmc_read(a, TMC_REG_CHOPCONF, &chopconf_read);
	.loc 1 682 43 is_stmt 0 view .LVU1401
	mov.n	a12, sp	#,
	movi	a11, 0x6c	#,
	mov.n	a10, a7	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL293:
	mov.n	a6, a10	# <retval>, <retval>
.LVL294:
	.loc 1 684 5 is_stmt 1 view .LVU1402
.LBB236:
	beqz.n	a10, .L94	# <retval>,
.LBB237:
	.loc 1 685 9 view .LVU1403
	.loc 1 685 14 view .LVU1404
	.loc 1 685 19 view .LVU1405
	.loc 1 685 52 view .LVU1406
	.loc 1 685 57 view .LVU1407
.LBB238:
	.loc 1 685 116 discriminator 1 view .LVU1408
.LBB239:
	.loc 1 685 141 discriminator 1 view .LVU1409
	.loc 1 685 176 discriminator 1 view .LVU1410
	.loc 1 685 217 view .LVU1411
.LBE239:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:685:         ESP_LOGE(TAG, "tmc_init_step_11: Ошибка чтения регистра TMC_REG_CHOPCONF.");
	.loc 1 685 123 is_stmt 0 discriminator 1 view .LVU1412
	call8	esp_log_timestamp		#
.LVL295:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:685:         ESP_LOGE(TAG, "tmc_init_step_11: Ошибка чтения регистра TMC_REG_CHOPCONF.");
	.loc 1 685 123 discriminator 3 view .LVU1413
	l32r	a11, .LC170	#, tmp75
	mov.n	a14, a11	#, tmp75
	mov.n	a13, a10	#, _19
	l32r	a12, .LC174	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL296:
	.loc 1 685 52 is_stmt 1 view .LVU1414
	.loc 1 685 14 view .LVU1415
.LBE238:
	.loc 1 685 9 view .LVU1416
	.loc 1 686 9 view .LVU1417
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:686:         return err_read_chopconf;
	.loc 1 686 16 is_stmt 0 view .LVU1418
	j	.L91		#
.L94:
	.loc 1 686 16 view .LVU1419
.LBE237:
.LBE236:
	.loc 1 689 5 is_stmt 1 view .LVU1420
.LBB240:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:689:     if (chopconf_read != chopconf) {
	.loc 1 689 23 is_stmt 0 view .LVU1421
	l32i.n	a8, sp, 0	# chopconf_read, chopconf_read$1141_29
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:689:     if (chopconf_read != chopconf) {
	.loc 1 689 5 view .LVU1422
	beq	a2, a8, .L95	# chopconf, chopconf_read$1141_29,
.LBB241:
	.loc 1 690 9 is_stmt 1 view .LVU1423
	.loc 1 690 14 view .LVU1424
	.loc 1 690 19 view .LVU1425
	.loc 1 690 52 view .LVU1426
	.loc 1 690 57 view .LVU1427
.LBB242:
	.loc 1 690 116 discriminator 1 view .LVU1428
.LBB243:
	.loc 1 690 141 discriminator 1 view .LVU1429
	.loc 1 690 176 discriminator 1 view .LVU1430
	.loc 1 690 217 view .LVU1431
.LBE243:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:690:         ESP_LOGE(TAG, "tmc_init_step_11: Значение при записи и чтении отличаются TMC_REG_CHOPCONF.");
	.loc 1 690 123 is_stmt 0 discriminator 1 view .LVU1432
	call8	esp_log_timestamp		#
.LVL297:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:690:         ESP_LOGE(TAG, "tmc_init_step_11: Значение при записи и чтении отличаются TMC_REG_CHOPCONF.");
	.loc 1 690 123 discriminator 3 view .LVU1433
	l32r	a11, .LC170	#, tmp78
	mov.n	a14, a11	#, tmp78
	mov.n	a13, a10	#, _31
	l32r	a12, .LC176	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL298:
	.loc 1 690 52 is_stmt 1 view .LVU1434
	.loc 1 690 14 view .LVU1435
.LBE242:
	.loc 1 690 9 view .LVU1436
	.loc 1 691 9 view .LVU1437
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:691:         return ESP_ERR_TMC_VERIFY_FAILED;
	.loc 1 691 16 is_stmt 0 view .LVU1438
	l32r	a6, .LC166	#, <retval>
.LVL299:
	.loc 1 691 16 view .LVU1439
	j	.L91		#
.LVL300:
.L95:
	.loc 1 691 16 view .LVU1440
.LBE241:
.LBE240:
	.loc 1 694 5 is_stmt 1 view .LVU1441
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:694:     log_step_success(a, 11);
	.loc 1 694 21 is_stmt 0 view .LVU1442
	movi.n	a11, 0xb	#,
	mov.n	a10, a7	#, a
	call8	_ZL16log_step_success6axis_th		#
.LVL301:
	.loc 1 695 5 is_stmt 1 view .LVU1443
.L91:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:696: }
	.loc 1 696 1 is_stmt 0 view .LVU1444
	mov.n	a2, a6	#, <retval>
.LVL302:
	.loc 1 696 1 view .LVU1445
	retw.n	
.LFE116:
	.size	_Z16tmc_init_step_116axis_t, .-_Z16tmc_init_step_116axis_t
	.section	.rodata._Z21initialize_tmc_driver6axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC179:
	.string	"I (%lu) %s: [%s] PWMCONF = 0x%08lX: PWM_GRAD = %lu, pwm_autograd = %lu\n"
	.section	.text._Z21initialize_tmc_driver6axis_t,"ax",@progbits
	.literal_position
	.literal .LC177, AXES
	.literal .LC178, .LC1
	.literal .LC180, .LC179
	.align	4
	.global	_Z21initialize_tmc_driver6axis_t
	.type	_Z21initialize_tmc_driver6axis_t, @function
_Z21initialize_tmc_driver6axis_t:
.LVL303:
.LFB118:
	.loc 1 731 43 is_stmt 1 view -0
	.loc 1 731 43 is_stmt 0 view .LVU1447
	entry	sp, 64	#
.LCFI18:
	mov.n	a7, a2	# a, a
	.loc 1 733 5 is_stmt 1 view .LVU1448
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:733:     esp_err_t err_step_0 = tmc_init_step_0(a);
	.loc 1 733 43 is_stmt 0 view .LVU1449
	mov.n	a10, a2	#, a
	call8	_Z15tmc_init_step_06axis_t		#
.LVL304:
	mov.n	a2, a10	# <retval>, <retval>
.LVL305:
	.loc 1 734 5 is_stmt 1 view .LVU1450
	bnez.n	a10, .L96	# <retval>,
	.loc 1 737 5 view .LVU1451
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:737:     esp_err_t err_step_1 = tmc_init_step_1(a);
	.loc 1 737 43 is_stmt 0 view .LVU1452
	mov.n	a10, a7	#, a
	call8	_Z15tmc_init_step_16axis_t		#
.LVL306:
	mov.n	a2, a10	# <retval>, <retval>
.LVL307:
	.loc 1 738 5 is_stmt 1 view .LVU1453
	bnez.n	a10, .L96	# <retval>,
	.loc 1 741 5 view .LVU1454
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:741:     esp_err_t err_step_2 = tmc_init_step_2(a);
	.loc 1 741 43 is_stmt 0 view .LVU1455
	mov.n	a10, a7	#, a
	call8	_Z15tmc_init_step_26axis_t		#
.LVL308:
	mov.n	a2, a10	# <retval>, <retval>
.LVL309:
	.loc 1 742 5 is_stmt 1 view .LVU1456
	bnez.n	a10, .L96	# <retval>,
	.loc 1 745 5 view .LVU1457
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:745:     log_default_config(a);
	.loc 1 745 23 is_stmt 0 view .LVU1458
	mov.n	a10, a7	#, a
	call8	_Z18log_default_config6axis_t		#
.LVL310:
	.loc 1 748 5 is_stmt 1 view .LVU1459
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:748:     esp_err_t err_step_3 = tmc_init_step_3(a);
	.loc 1 748 43 is_stmt 0 view .LVU1460
	mov.n	a10, a7	#, a
	call8	_Z15tmc_init_step_36axis_t		#
.LVL311:
	mov.n	a2, a10	# <retval>, <retval>
.LVL312:
	.loc 1 749 5 is_stmt 1 view .LVU1461
	bnez.n	a10, .L96	# <retval>,
	.loc 1 752 5 view .LVU1462
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:752:     esp_err_t err_step_4 = tmc_init_step_4(a);
	.loc 1 752 43 is_stmt 0 view .LVU1463
	mov.n	a10, a7	#, a
	call8	_Z15tmc_init_step_46axis_t		#
.LVL313:
	mov.n	a2, a10	# <retval>, <retval>
.LVL314:
	.loc 1 753 5 is_stmt 1 view .LVU1464
	bnez.n	a10, .L96	# <retval>,
	.loc 1 756 5 view .LVU1465
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:756:     esp_err_t err_step_5 = tmc_init_step_5(a);
	.loc 1 756 43 is_stmt 0 view .LVU1466
	mov.n	a10, a7	#, a
	call8	_Z15tmc_init_step_56axis_t		#
.LVL315:
	mov.n	a2, a10	# <retval>, <retval>
.LVL316:
	.loc 1 757 5 is_stmt 1 view .LVU1467
	bnez.n	a10, .L96	# <retval>,
	.loc 1 760 5 view .LVU1468
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:760:     esp_err_t err_step_6 = tmc_init_step_6(a);
	.loc 1 760 43 is_stmt 0 view .LVU1469
	mov.n	a10, a7	#, a
	call8	_Z15tmc_init_step_66axis_t		#
.LVL317:
	mov.n	a2, a10	# <retval>, <retval>
.LVL318:
	.loc 1 761 5 is_stmt 1 view .LVU1470
	bnez.n	a10, .L96	# <retval>,
	.loc 1 764 5 view .LVU1471
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:764:     esp_err_t err_step_7 = tmc_init_step_7(a);
	.loc 1 764 43 is_stmt 0 view .LVU1472
	mov.n	a10, a7	#, a
	call8	_Z15tmc_init_step_76axis_t		#
.LVL319:
	mov.n	a2, a10	# <retval>, <retval>
.LVL320:
	.loc 1 765 5 is_stmt 1 view .LVU1473
	bnez.n	a10, .L96	# <retval>,
	.loc 1 768 5 view .LVU1474
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:768:     esp_err_t err_step_8 = tmc_init_step_8(a);
	.loc 1 768 43 is_stmt 0 view .LVU1475
	mov.n	a10, a7	#, a
	call8	_Z15tmc_init_step_86axis_t		#
.LVL321:
	mov.n	a2, a10	# <retval>, <retval>
.LVL322:
	.loc 1 769 5 is_stmt 1 view .LVU1476
	bnez.n	a10, .L96	# <retval>,
	.loc 1 772 5 view .LVU1477
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:772:     esp_err_t err_step_9 = tmc_init_step_9(a);
	.loc 1 772 43 is_stmt 0 view .LVU1478
	mov.n	a10, a7	#, a
	call8	_Z15tmc_init_step_96axis_t		#
.LVL323:
	mov.n	a2, a10	# <retval>, <retval>
.LVL324:
	.loc 1 773 5 is_stmt 1 view .LVU1479
	bnez.n	a10, .L96	# <retval>,
	.loc 1 776 5 view .LVU1480
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:776:     esp_err_t err_step_10 = tmc_init_step_10(a);
	.loc 1 776 45 is_stmt 0 view .LVU1481
	mov.n	a10, a7	#, a
	call8	_Z16tmc_init_step_106axis_t		#
.LVL325:
	mov.n	a2, a10	# <retval>, <retval>
.LVL326:
	.loc 1 777 5 is_stmt 1 view .LVU1482
	bnez.n	a10, .L96	# <retval>,
	.loc 1 780 5 view .LVU1483
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:780:     esp_err_t err_step_11 = tmc_init_step_11(a);
	.loc 1 780 45 is_stmt 0 view .LVU1484
	mov.n	a10, a7	#, a
	call8	_Z16tmc_init_step_116axis_t		#
.LVL327:
	mov.n	a2, a10	# <retval>, <retval>
.LVL328:
	.loc 1 781 5 is_stmt 1 view .LVU1485
	bnez.n	a10, .L96	# <retval>,
	.loc 1 783 5 view .LVU1486
	.loc 1 784 5 view .LVU1487
.LBB244:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:784:     if (tmc_read(a, TMC_REG_PWMCONF, &pwmconf) == ESP_OK) {
	.loc 1 784 17 is_stmt 0 view .LVU1488
	addi	a12, sp, 16	#,,
	movi	a11, 0x70	#,
	mov.n	a10, a7	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL329:
	mov.n	a6, a10	# _1, _1
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:784:     if (tmc_read(a, TMC_REG_PWMCONF, &pwmconf) == ESP_OK) {
	.loc 1 784 5 discriminator 1 view .LVU1489
	bnez.n	a10, .L96	# _1,
	.loc 1 785 5 is_stmt 1 view .LVU1490
	.loc 1 785 10 view .LVU1491
	.loc 1 785 15 view .LVU1492
	.loc 1 785 47 view .LVU1493
	.loc 1 785 52 view .LVU1494
	.loc 1 785 119 discriminator 2 view .LVU1495
	.loc 1 785 119 discriminator 6 view .LVU1496
	.loc 1 785 119 discriminator 10 view .LVU1497
.LBB245:
	.loc 1 785 121 discriminator 14 view .LVU1498
.LBB246:
	.loc 1 785 146 discriminator 14 view .LVU1499
	.loc 1 785 181 discriminator 14 view .LVU1500
	.loc 1 785 221 view .LVU1501
.LBE246:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:785:     ESP_LOGI(TAG, "[%s] PWMCONF = 0x%08" PRIX32 ": PWM_GRAD = %" PRIu32 ", pwm_autograd = %" PRIu32,
	.loc 1 785 128 is_stmt 0 discriminator 14 view .LVU1502
	call8	esp_log_timestamp		#
.LVL330:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:785:     ESP_LOGI(TAG, "[%s] PWMCONF = 0x%08" PRIX32 ": PWM_GRAD = %" PRIu32 ", pwm_autograd = %" PRIu32,
	.loc 1 785 52 discriminator 17 view .LVU1503
	addx4	a8, a7, a7	#, tmp58, a, a
	addx2	a8, a8, a7	#, tmp60, tmp58, a
	l32r	a9, .LC177	#, tmp55
	addx4	a8, a8, a9	#, tmp62, tmp60, tmp55
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:785:     ESP_LOGI(TAG, "[%s] PWMCONF = 0x%08" PRIX32 ": PWM_GRAD = %" PRIu32 ", pwm_autograd = %" PRIu32,
	.loc 1 785 128 discriminator 17 view .LVU1504
	l32i.n	a9, sp, 16	# pwmconf, pwmconf$1222_42
	l32r	a11, .LC178	#, tmp63
	extui	a12, a9, 19, 1	# _46, pwmconf$1222_42,,
	s32i.n	a12, sp, 8	#, _46
	extui	a12, a9, 8, 8	# _44, pwmconf$1222_42,,
	s32i.n	a12, sp, 4	#, _44
	s32i.n	a9, sp, 0	#, pwmconf$1222_42
	l32i.n	a15, a8, 0	# AXES[a$1221_40].name,
	mov.n	a14, a11	#, tmp63
	mov.n	a13, a10	#, _38
	l32r	a12, .LC180	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL331:
	.loc 1 785 47 is_stmt 1 view .LVU1505
	.loc 1 785 10 view .LVU1506
	.loc 1 785 5 view .LVU1507
.LBE245:
.LBE244:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:789:     return ESP_OK;
	.loc 1 789 12 is_stmt 0 view .LVU1508
	mov.n	a2, a6	# <retval>, _1
.LVL332:
.L96:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:790: }
	.loc 1 790 1 view .LVU1509
	retw.n	
.LFE118:
	.size	_Z21initialize_tmc_driver6axis_t, .-_Z21initialize_tmc_driver6axis_t
	.section	.rodata._Z25handle_drivers_connectionv.str1.4,"aMS",@progbits,1
	.align	4
.LC184:
	.base64	"VyAoJWx1KSAlczogYXBwX21haW46INC00YDQsNC50LLQtdGAIFJBINC90LUg0L7RgtCy0LXRh9Cw0LXRgiDigJQg0LbQtNGDINC/0LjRgtCw0L3QuNC1INC80L7RgtC+0YDQvtCyIFZTCgA="
	.align	4
.LC186:
	.base64	"RSAoJWx1KSAlczogYXBwX21haW46INC00YDQsNC50LLQtdGAIERFQyDQvdC1INC90LDRgdGC0YDQvtC10L0g4oCUINC+0YHRjCBERUMg0LLRi9C60LvRjtGH0LXQvdCwCgA="
	.section	.text._Z25handle_drivers_connectionv,"ax",@progbits
	.literal_position
	.literal .LC181, 131077
	.literal .LC182, 131078
	.literal .LC183, .LC1
	.literal .LC185, .LC184
	.literal .LC187, .LC186
	.align	4
	.global	_Z25handle_drivers_connectionv
	.type	_Z25handle_drivers_connectionv, @function
_Z25handle_drivers_connectionv:
.LFB117:
	.loc 1 698 39 is_stmt 1 view -0
	entry	sp, 32	#
.LCFI19:
	.loc 1 702 5 view .LVU1511
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:702:     tmc_init_step_0(AXIS_RA);
	.loc 1 702 20 is_stmt 0 view .LVU1512
	movi.n	a10, 0	#,
	call8	_Z15tmc_init_step_06axis_t		#
.LVL333:
	.loc 1 703 5 is_stmt 1 view .LVU1513
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:703:     tmc_init_step_0(AXIS_DEC);
	.loc 1 703 20 is_stmt 0 view .LVU1514
	movi.n	a10, 1	#,
	call8	_Z15tmc_init_step_06axis_t		#
.LVL334:
	.loc 1 708 5 is_stmt 1 view .LVU1515
	.loc 1 709 5 view .LVU1516
	j	.L99		#
.LVL335:
.L100:
	.loc 1 710 9 view .LVU1517
	.loc 1 710 14 view .LVU1518
	.loc 1 710 19 view .LVU1519
	.loc 1 710 51 view .LVU1520
	.loc 1 710 56 view .LVU1521
	.loc 1 710 161 discriminator 2 view .LVU1522
.LBB247:
.LBB248:
	.loc 1 710 218 discriminator 5 view .LVU1523
.LBB249:
	.loc 1 710 243 discriminator 5 view .LVU1524
	.loc 1 710 278 discriminator 5 view .LVU1525
	.loc 1 710 318 view .LVU1526
.LBE249:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:710:         ESP_LOGW(TAG, "app_main: драйвер RA не отвечает — жду питание моторов VS");
	.loc 1 710 225 is_stmt 0 discriminator 5 view .LVU1527
	call8	esp_log_timestamp		#
.LVL336:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:710:         ESP_LOGW(TAG, "app_main: драйвер RA не отвечает — жду питание моторов VS");
	.loc 1 710 225 discriminator 7 view .LVU1528
	l32r	a11, .LC183	#, tmp51
	mov.n	a14, a11	#, tmp51
	mov.n	a13, a10	#, _4
	l32r	a12, .LC185	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL337:
.L99:
	.loc 1 710 51 is_stmt 1 view .LVU1529
	.loc 1 710 14 view .LVU1530
	.loc 1 710 9 view .LVU1531
.LBE248:
.LBE247:
	.loc 1 709 56 view .LVU1532
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:709:     while ((err_init = initialize_tmc_driver(AXIS_RA)) == ESP_ERR_TIMEOUT) {
	.loc 1 709 45 is_stmt 0 view .LVU1533
	movi.n	a10, 0	#,
	call8	_Z21initialize_tmc_driver6axis_t		#
.LVL338:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:709:     while ((err_init = initialize_tmc_driver(AXIS_RA)) == ESP_ERR_TIMEOUT) {
	.loc 1 709 56 discriminator 1 view .LVU1534
	movi	a8, 0x107	# tmp54,
	beq	a10, a8, .L100	# err_init, tmp54,
	.loc 1 713 5 is_stmt 1 view .LVU1535
	bnez.n	a10, .L103	# err_init,
	.loc 1 716 5 view .LVU1536
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:716:     bool dec_ok = (tmc_check_connection(AXIS_DEC) == ESP_OK)
	.loc 1 716 40 is_stmt 0 view .LVU1537
	movi.n	a10, 1	#,
.LVL339:
	.loc 1 716 40 view .LVU1538
	call8	_Z20tmc_check_connection6axis_t		#
.LVL340:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:717:                && (initialize_tmc_driver(AXIS_DEC) == ESP_OK);
	.loc 1 717 16 view .LVU1539
	bnez.n	a10, .L102	# _11,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:717:                && (initialize_tmc_driver(AXIS_DEC) == ESP_OK);
	.loc 1 717 41 discriminator 1 view .LVU1540
	movi.n	a10, 1	#,
	call8	_Z21initialize_tmc_driver6axis_t		#
.LVL341:
	mov.n	a2, a10	# <retval>, <retval>
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:717:                && (initialize_tmc_driver(AXIS_DEC) == ESP_OK);
	.loc 1 717 16 discriminator 3 view .LVU1541
	beqz.n	a10, .L98	# <retval>,
.L102:
.LVL342:
	.loc 1 718 5 is_stmt 1 view .LVU1542
.LBB250:
	.loc 1 719 9 view .LVU1543
	.loc 1 719 14 view .LVU1544
	.loc 1 719 19 view .LVU1545
	.loc 1 719 52 view .LVU1546
	.loc 1 719 57 view .LVU1547
.LBB251:
	.loc 1 719 116 discriminator 1 view .LVU1548
.LBB252:
	.loc 1 719 141 discriminator 1 view .LVU1549
	.loc 1 719 176 discriminator 1 view .LVU1550
	.loc 1 719 217 view .LVU1551
.LBE252:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:719:         ESP_LOGE(TAG, "app_main: драйвер DEC не настроен — ось DEC выключена");
	.loc 1 719 123 is_stmt 0 discriminator 1 view .LVU1552
	call8	esp_log_timestamp		#
.LVL343:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:719:         ESP_LOGE(TAG, "app_main: драйвер DEC не настроен — ось DEC выключена");
	.loc 1 719 123 discriminator 3 view .LVU1553
	l32r	a11, .LC183	#, tmp55
	mov.n	a14, a11	#, tmp55
	mov.n	a13, a10	#, _14
	l32r	a12, .LC187	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL344:
	.loc 1 719 52 is_stmt 1 view .LVU1554
	.loc 1 719 14 view .LVU1555
.LBE251:
	.loc 1 719 9 view .LVU1556
	.loc 1 720 9 view .LVU1557
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:720:         return ESP_ERR_TMC_DEC_NOT_CONFIGURED;
	.loc 1 720 16 is_stmt 0 view .LVU1558
	l32r	a2, .LC182	#, <retval>
	j	.L98		#
.LVL345:
.L103:
	.loc 1 720 16 view .LVU1559
.LBE250:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:713:     if (err_init != ESP_OK) return ESP_ERR_TMC_RA_NOT_CONFIGURED;
	.loc 1 713 31 discriminator 1 view .LVU1560
	l32r	a2, .LC181	#, <retval>
.LVL346:
.L98:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:724: }
	.loc 1 724 1 view .LVU1561
	retw.n	
.LFE117:
	.size	_Z25handle_drivers_connectionv, .-_Z25handle_drivers_connectionv
	.section	.text._Z13tmc_driver_on6axis_t,"ax",@progbits
	.literal_position
	.literal .LC188, AXES
	.align	4
	.global	_Z13tmc_driver_on6axis_t
	.type	_Z13tmc_driver_on6axis_t, @function
_Z13tmc_driver_on6axis_t:
.LVL347:
.LFB119:
	.loc 1 792 30 is_stmt 1 view -0
	.loc 1 792 30 is_stmt 0 view .LVU1563
	entry	sp, 32	#
.LCFI20:
	.loc 1 793 5 is_stmt 1 view .LVU1564
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:793:     gpio_set_level(AXES[a].en_pin, 0);       // мотор под током IRUN
	.loc 1 793 28 is_stmt 0 view .LVU1565
	addx4	a8, a2, a2	#, tmp48, a, a
	addx2	a8, a8, a2	#, tmp50, tmp48, a
	l32r	a9, .LC188	#, tmp45
	addx4	a8, a8, a9	#, tmp52, tmp50, tmp45
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:793:     gpio_set_level(AXES[a].en_pin, 0);       // мотор под током IRUN
	.loc 1 793 19 view .LVU1566
	movi.n	a11, 0	#,
	l32i.n	a10, a8, 8	# AXES[a$1225_1].en_pin,
	call8	gpio_set_level		#
.LVL348:
	.loc 1 794 5 is_stmt 1 view .LVU1567
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:794:     vTaskDelay(pdMS_TO_TICKS(200));      // AT#1: драйвер сам подстраивается, шагов не подаём
	.loc 1 794 15 is_stmt 0 view .LVU1568
	movi.n	a10, 0x14	#,
	call8	vTaskDelay		#
.LVL349:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:796: }
	.loc 1 796 1 view .LVU1569
	retw.n	
.LFE119:
	.size	_Z13tmc_driver_on6axis_t, .-_Z13tmc_driver_on6axis_t
	.section	.text._Z14tmc_driver_off6axis_t,"ax",@progbits
	.literal_position
	.literal .LC189, AXES
	.align	4
	.global	_Z14tmc_driver_off6axis_t
	.type	_Z14tmc_driver_off6axis_t, @function
_Z14tmc_driver_off6axis_t:
.LVL350:
.LFB120:
	.loc 1 801 31 is_stmt 1 view -0
	.loc 1 801 31 is_stmt 0 view .LVU1571
	entry	sp, 32	#
.LCFI21:
	.loc 1 802 5 is_stmt 1 view .LVU1572
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:802:     gpio_set_level(AXES[a].en_pin, 1);
	.loc 1 802 28 is_stmt 0 view .LVU1573
	addx4	a8, a2, a2	#, tmp48, a, a
	addx2	a8, a8, a2	#, tmp50, tmp48, a
	l32r	a9, .LC189	#, tmp45
	addx4	a8, a8, a9	#, tmp52, tmp50, tmp45
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:802:     gpio_set_level(AXES[a].en_pin, 1);
	.loc 1 802 19 view .LVU1574
	movi.n	a11, 1	#,
	l32i.n	a10, a8, 8	# AXES[a$1226_1].en_pin,
	call8	gpio_set_level		#
.LVL351:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:803: }
	.loc 1 803 1 view .LVU1575
	retw.n	
.LFE120:
	.size	_Z14tmc_driver_off6axis_t, .-_Z14tmc_driver_off6axis_t
	.section	.text._Z17tmc_read_at_state6axis_tP14tmc_at_state_t,"ax",@progbits
	.align	4
	.global	_Z17tmc_read_at_state6axis_tP14tmc_at_state_t
	.type	_Z17tmc_read_at_state6axis_tP14tmc_at_state_t, @function
_Z17tmc_read_at_state6axis_tP14tmc_at_state_t:
.LVL352:
.LFB121:
	.loc 1 834 59 is_stmt 1 view -0
	.loc 1 834 59 is_stmt 0 view .LVU1577
	entry	sp, 48	#
.LCFI22:
	mov.n	a7, a2	# a, a
	.loc 1 835 5 is_stmt 1 view .LVU1578
	.loc 1 837 5 view .LVU1579
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:837:     esp_err_t err = tmc_read(a, TMC_REG_PWM_SCALE, &pwm_scale);
	.loc 1 837 29 is_stmt 0 view .LVU1580
	mov.n	a12, sp	#,
	movi	a11, 0x71	#,
	mov.n	a10, a2	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL353:
	mov.n	a2, a10	# <retval>, <retval>
.LVL354:
	.loc 1 838 5 is_stmt 1 view .LVU1581
	bnez.n	a10, .L106	# <retval>,
	.loc 1 839 5 view .LVU1582
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:839:     err = tmc_read(a, TMC_REG_PWM_AUTO, &pwm_auto);
	.loc 1 839 19 is_stmt 0 view .LVU1583
	addi.n	a12, sp, 4	#,,
	movi	a11, 0x72	#,
	mov.n	a10, a7	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL355:
	mov.n	a2, a10	# <retval>, <retval>
.LVL356:
	.loc 1 840 5 is_stmt 1 view .LVU1584
	bnez.n	a10, .L106	# <retval>,
	.loc 1 842 5 view .LVU1585
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:842:     st->scale_sum = pwm_scale & 0xFF;
	.loc 1 842 19 is_stmt 0 view .LVU1586
	l32i.n	a8, sp, 0	# pwm_scale, pwm_scale
	s8i	a8, a3, 0	# st_21(D)->scale_sum, pwm_scale
	.loc 1 845 5 is_stmt 1 view .LVU1587
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:845:     int16_t raw = (pwm_scale >> 16) & 0x1FF;
	.loc 1 845 37 is_stmt 0 view .LVU1588
	srai	a9, a8, 16	# _5, pwm_scale,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:845:     int16_t raw = (pwm_scale >> 16) & 0x1FF;
	.loc 1 845 13 view .LVU1589
	extui	a8, a8, 16, 9	# raw, pwm_scale,,
.LVL357:
	.loc 1 846 5 is_stmt 1 view .LVU1590
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:846:     st->scale_auto = (raw & 0x100) ? raw - 512 : raw;
	.loc 1 846 20 is_stmt 0 view .LVU1591
	movi	a10, 0x100	# tmp62,
	and	a9, a9, a10	# tmp63, _5, tmp62
	sext	a9, a9, 15	# tmp65, tmp63
	beqz.n	a9, .L108	# tmp65,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:846:     st->scale_auto = (raw & 0x100) ? raw - 512 : raw;
	.loc 1 846 20 discriminator 1 view .LVU1592
	addmi	a8, a8, -0x200	# raw, raw,
.LVL358:
.L108:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:846:     st->scale_auto = (raw & 0x100) ? raw - 512 : raw;
	.loc 1 846 20 discriminator 4 view .LVU1593
	s16i	a8, a3, 2	# st_21(D)->scale_auto, raw
	.loc 1 848 5 is_stmt 1 view .LVU1594
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:848:     st->ofs_auto  = pwm_auto & 0xFF;
	.loc 1 848 18 is_stmt 0 view .LVU1595
	l32i.n	a8, sp, 4	# pwm_auto, pwm_auto$1232_8
	s8i	a8, a3, 4	# st_21(D)->ofs_auto, pwm_auto$1232_8
	.loc 1 849 5 is_stmt 1 view .LVU1596
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:849:     st->grad_auto = (pwm_auto >> 16) & 0xFF;
	.loc 1 849 31 is_stmt 0 view .LVU1597
	extui	a8, a8, 16, 16	# _10, pwm_auto$1232_8,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:849:     st->grad_auto = (pwm_auto >> 16) & 0xFF;
	.loc 1 849 19 view .LVU1598
	s8i	a8, a3, 5	# st_21(D)->grad_auto, _10
	.loc 1 850 5 is_stmt 1 view .LVU1599
.LVL359:
.L106:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:851: }
	.loc 1 851 1 is_stmt 0 view .LVU1600
	retw.n	
.LFE121:
	.size	_Z17tmc_read_at_state6axis_tP14tmc_at_state_t, .-_Z17tmc_read_at_state6axis_tP14tmc_at_state_t
	.section	.rodata._ZL16monitor_log_axis6axis_t.str1.4,"aMS",@progbits,1
	.align	4
.LC190:
	.string	"> 157 \302\260C"
	.align	4
.LC192:
	.string	"> 150 \302\260C"
	.align	4
.LC194:
	.string	"> 143 \302\260C"
	.align	4
.LC196:
	.string	"< 120 \302\260C"
	.align	4
.LC198:
	.string	"> 120 \302\260C"
	.align	4
.LC200:
	.string	"StealthChop"
	.align	4
.LC202:
	.string	"SpreadCycle"
	.align	4
.LC204:
	.string	" (otpw!)"
	.align	4
.LC206:
	.string	""
	.align	4
.LC208:
	.base64	"ICjQn9Ce0KLQntCb0J7Qmjog0L3QtSDRhdCy0LDRgtCw0LXRgiDQvdCw0L/RgNGP0LbQtdC90LjRjykA"
	.align	4
.LC211:
	.string	"monitor"
	.align	4
.LC213:
	.base64	"VyAoJWx1KSAlczogWyVzXSDQndC1INGD0LTQsNC70L7RgdGMINC/0YDQvtGH0LjRgtCw0YLRjCBEUlZfU1RBVFVTICjQtNGA0LDQudCy0LXRgCDQvdC1INC+0YLQstC10YfQsNC10YIpCgA="
	.align	4
.LC217:
	.base64	"SSAoJWx1KSAlczogWyVzXSDRgtC+0LogQ1M9JXUgKCVsdSDQvNCQKSB8INGB0YLQvtC40YI9JWx1IHwgJXMgfCDQvtCx0YDRi9CyIEE9JWx1IEI9JWx1IHwgdCAlcyVzCgA="
	.align	4
.LC219:
	.base64	"VyAoJWx1KSAlczogWyVzXSDQndC1INGD0LTQsNC70L7RgdGMINC/0YDQvtGH0LjRgtCw0YLRjCBQV01fU0NBTEUgLyBQV01fQVVUTwoA"
	.align	4
.LC221:
	.base64	"SSAoJWx1KSAlczogWyVzXSBTdGVhbHRoQ2hvcDog0L3QsNC/0YDRj9C20LXQvdC40LUgJXUvMjU1JXMgfCDQv9C+0L/RgNCw0LLQutCwICVkIHwgT0ZTX0FVVE89JXUgR1JBRF9BVVRPPSV1CgA="
	.align	4
.LC223:
	.string	"I (%lu) %s: [%s] MSCNT = %lu\n"
	.section	.text._ZL16monitor_log_axis6axis_t,"ax",@progbits
	.literal_position
	.literal .LC191, .LC190
	.literal .LC193, .LC192
	.literal .LC195, .LC194
	.literal .LC197, .LC196
	.literal .LC199, .LC198
	.literal .LC201, .LC200
	.literal .LC203, .LC202
	.literal .LC205, .LC204
	.literal .LC207, .LC206
	.literal .LC209, .LC208
	.literal .LC210, AXES
	.literal .LC212, .LC211
	.literal .LC214, .LC213
	.literal .LC218, .LC217
	.literal .LC220, .LC219
	.literal .LC222, .LC221
	.literal .LC224, .LC223
	.align	4
	.type	_ZL16monitor_log_axis6axis_t, @function
_ZL16monitor_log_axis6axis_t:
.LVL360:
.LFB122:
	.loc 1 879 40 is_stmt 1 view -0
	.loc 1 879 40 is_stmt 0 view .LVU1602
	entry	sp, 80	#
.LCFI23:
	.loc 1 880 9 is_stmt 1 view .LVU1603
	.loc 1 881 9 view .LVU1604
.LBB253:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:881:         if (tmc_read(a, TMC_REG_DRV_STATUS, &drv) != ESP_OK) {
	.loc 1 881 21 is_stmt 0 view .LVU1605
	addi	a12, sp, 32	#,,
	movi	a11, 0x6f	#,
	mov.n	a10, a2	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL361:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:881:         if (tmc_read(a, TMC_REG_DRV_STATUS, &drv) != ESP_OK) {
	.loc 1 881 9 discriminator 1 view .LVU1606
	beqz.n	a10, .L110	# _1,
.LBB254:
	.loc 1 882 13 is_stmt 1 view .LVU1607
	.loc 1 882 18 view .LVU1608
	.loc 1 882 23 view .LVU1609
	.loc 1 882 55 view .LVU1610
	.loc 1 882 60 view .LVU1611
	.loc 1 882 187 discriminator 2 view .LVU1612
.LBB255:
	.loc 1 882 244 discriminator 5 view .LVU1613
.LBB256:
	.loc 1 882 269 discriminator 5 view .LVU1614
	.loc 1 882 304 discriminator 5 view .LVU1615
	.loc 1 882 344 view .LVU1616
.LBE256:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:882:             ESP_LOGW(TAG_MONITOR, "[%s] Не удалось прочитать DRV_STATUS (драйвер не отвечает)", AXES[a].name);
	.loc 1 882 251 is_stmt 0 discriminator 5 view .LVU1617
	call8	esp_log_timestamp		#
.LVL362:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:882:             ESP_LOGW(TAG_MONITOR, "[%s] Не удалось прочитать DRV_STATUS (драйвер не отвечает)", AXES[a].name);
	.loc 1 882 173 discriminator 7 view .LVU1618
	addx4	a8, a2, a2	#, tmp103, a, a
	addx2	a8, a8, a2	#, tmp105, tmp103, a
	l32r	a9, .LC210	#, tmp100
	addx4	a8, a8, a9	#, tmp107, tmp105, tmp100
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:882:             ESP_LOGW(TAG_MONITOR, "[%s] Не удалось прочитать DRV_STATUS (драйвер не отвечает)", AXES[a].name);
	.loc 1 882 251 discriminator 7 view .LVU1619
	l32r	a11, .LC212	#, tmp108
	l32i.n	a15, a8, 0	# AXES[a$1242_5].name,
	mov.n	a14, a11	#, tmp108
	mov.n	a13, a10	#, _3
	l32r	a12, .LC214	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL363:
	.loc 1 882 55 is_stmt 1 view .LVU1620
	.loc 1 882 18 view .LVU1621
.LBE255:
	.loc 1 882 13 view .LVU1622
	.loc 1 883 13 view .LVU1623
	j	.L109		#
.L110:
.LBE254:
.LBE253:
	.loc 1 886 9 view .LVU1624
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:886:         uint8_t cs_actual = (drv >> 16) & 0x1F;
	.loc 1 886 34 is_stmt 0 view .LVU1625
	l32i.n	a8, sp, 32	# drv, drv$1255_7
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:886:         uint8_t cs_actual = (drv >> 16) & 0x1F;
	.loc 1 886 17 view .LVU1626
	extui	a7, a8, 16, 5	# cs_actual, drv$1255_7,,
.LVL364:
	.loc 1 889 9 is_stmt 1 view .LVU1627
	.loc 1 890 9 view .LVU1628
	bbsi	a8, 11, .L119	# drv$1255_7,,
	.loc 1 891 14 view .LVU1629
	bbsi	a8, 10, .L120	# drv$1255_7,,
	.loc 1 892 14 view .LVU1630
	bbsi	a8, 9, .L121	# drv$1255_7,,
	.loc 1 893 14 view .LVU1631
	bbsi	a8, 8, .L122	# drv$1255_7,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:889:         const char *temp = "< 120 °C";
	.loc 1 889 21 is_stmt 0 view .LVU1632
	l32r	a8, .LC197	#, temp
	mov.n	a5, a8	# temp, temp
	j	.L112		#
.L119:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:890:         if      (drv & DRV_STATUS_T157) temp = "> 157 °C";
	.loc 1 890 37 discriminator 1 view .LVU1633
	l32r	a8, .LC191	#, temp
	mov.n	a5, a8	# temp, temp
	j	.L112		#
.L120:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:891:         else if (drv & DRV_STATUS_T150) temp = "> 150 °C";
	.loc 1 891 42 discriminator 1 view .LVU1634
	l32r	a8, .LC193	#, temp
	mov.n	a5, a8	# temp, temp
	j	.L112		#
.L121:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:892:         else if (drv & DRV_STATUS_T143) temp = "> 143 °C";
	.loc 1 892 41 discriminator 1 view .LVU1635
	l32r	a8, .LC195	#, temp
	mov.n	a5, a8	# temp, temp
	j	.L112		#
.L122:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:893:         else if (drv & DRV_STATUS_T120) temp = "> 120 °C";
	.loc 1 893 41 discriminator 1 view .LVU1636
	l32r	a8, .LC199	#, temp
	mov.n	a5, a8	# temp, temp
.L112:
.LVL365:
	.loc 1 895 9 is_stmt 1 view .LVU1637
	.loc 1 895 14 view .LVU1638
	.loc 1 895 19 view .LVU1639
	.loc 1 895 51 view .LVU1640
	.loc 1 895 56 view .LVU1641
	.loc 1 895 270 discriminator 2 view .LVU1642
	.loc 1 895 270 discriminator 15 view .LVU1643
	.loc 1 895 270 discriminator 28 view .LVU1644
.LBB257:
	.loc 1 895 272 discriminator 41 view .LVU1645
.LBB258:
	.loc 1 895 297 discriminator 41 view .LVU1646
	.loc 1 895 332 discriminator 41 view .LVU1647
	.loc 1 895 372 view .LVU1648
.LBE258:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:895:         ESP_LOGI(TAG_MONITOR,
	.loc 1 895 279 is_stmt 0 discriminator 41 view .LVU1649
	call8	esp_log_timestamp		#
.LVL366:
	mov.n	a13, a10	# _15, _15
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:895:         ESP_LOGI(TAG_MONITOR,
	.loc 1 895 76 discriminator 53 view .LVU1650
	addx4	a8, a2, a2	#, tmp119, a, a
	addx2	a8, a8, a2	#, tmp121, tmp119, a
	l32r	a9, .LC210	#, tmp116
	addx4	a8, a8, a9	#, tmp123, tmp121, tmp116
	l32i.n	a8, a8, 0	# AXES[a$1307_17].name, _18
	mov.n	a6, a8	# _18, _18
.LVL367:
.LBB259:
.LBI259:
	.loc 2 81 20 is_stmt 1 view .LVU1651
.LBB260:
	.loc 2 83 5 view .LVU1652
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h:83:     return (cs + 1) * TMC_FULL_SCALE_MA / 32;
	.loc 2 83 16 is_stmt 0 view .LVU1653
	addi.n	a8, a7, 1	# _38, cs_actual,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h:83:     return (cs + 1) * TMC_FULL_SCALE_MA / 32;
	.loc 2 83 21 view .LVU1654
	movi	a9, 0x3d2	# tmp124,
	mull	a8, a8, a9	# _32, _38, tmp124
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h:83:     return (cs + 1) * TMC_FULL_SCALE_MA / 32;
	.loc 2 83 43 view .LVU1655
	srli	a8, a8, 5	# _33, _32,
.LVL368:
	.loc 2 83 43 view .LVU1656
.LBE260:
.LBE259:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:895:         ESP_LOGI(TAG_MONITOR,
	.loc 1 895 279 discriminator 54 view .LVU1657
	l32i.n	a9, sp, 32	# drv, drv$1308_20
	extui	a10, a9, 31, 1	# _21, drv$1308_20,
	bbci	a9, 30, .L123	# drv$1308_20,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:895:         ESP_LOGI(TAG_MONITOR,
	.loc 1 895 279 discriminator 55 view .LVU1658
	l32r	a15, .LC201	#, iftmp$1309_86
	j	.L113		#
.L123:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:895:         ESP_LOGI(TAG_MONITOR,
	.loc 1 895 279 discriminator 56 view .LVU1659
	l32r	a15, .LC203	#, iftmp$1309_86
.L113:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:895:         ESP_LOGI(TAG_MONITOR,
	.loc 1 895 279 discriminator 58 view .LVU1660
	extui	a12, a9, 6, 1	# _24, drv$1308_20,,
	extui	a14, a9, 7, 1	# _26, drv$1308_20,,
	bbci	a9, 0, .L124	# drv$1308_20,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:895:         ESP_LOGI(TAG_MONITOR,
	.loc 1 895 279 discriminator 59 view .LVU1661
	l32r	a9, .LC205	#, iftmp$1313_87
	j	.L114		#
.L124:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:895:         ESP_LOGI(TAG_MONITOR,
	.loc 1 895 279 discriminator 60 view .LVU1662
	l32r	a9, .LC207	#, iftmp$1313_87
.L114:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:895:         ESP_LOGI(TAG_MONITOR,
	.loc 1 895 279 discriminator 62 view .LVU1663
	l32r	a11, .LC212	#, tmp126
	s32i.n	a9, sp, 28	#, iftmp$1313_87
	s32i.n	a5, sp, 24	#, temp
	s32i.n	a14, sp, 20	#, _26
	s32i.n	a12, sp, 16	#, _24
	s32i.n	a15, sp, 12	#, iftmp$1309_86
	s32i.n	a10, sp, 8	#, _21
	s32i.n	a8, sp, 4	#, _33
	s32i.n	a7, sp, 0	#, cs_actual
	mov.n	a15, a6	#, _18
	mov.n	a14, a11	#, tmp126
	l32r	a12, .LC218	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL369:
	.loc 1 895 51 is_stmt 1 view .LVU1664
	.loc 1 895 14 view .LVU1665
.LBE257:
	.loc 1 895 9 view .LVU1666
	.loc 1 904 9 view .LVU1667
	.loc 1 905 9 view .LVU1668
.LBB261:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:905:         if (tmc_read_at_state(a, &st) != ESP_OK) {
	.loc 1 905 30 is_stmt 0 view .LVU1669
	addi	a11, sp, 36	#,,
	mov.n	a10, a2	#, a
	call8	_Z17tmc_read_at_state6axis_tP14tmc_at_state_t		#
.LVL370:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:905:         if (tmc_read_at_state(a, &st) != ESP_OK) {
	.loc 1 905 9 discriminator 1 view .LVU1670
	beqz.n	a10, .L115	# _28,
.LBB262:
	.loc 1 906 13 is_stmt 1 view .LVU1671
	.loc 1 906 18 view .LVU1672
	.loc 1 906 23 view .LVU1673
	.loc 1 906 55 view .LVU1674
	.loc 1 906 60 view .LVU1675
	.loc 1 906 158 discriminator 2 view .LVU1676
.LBB263:
	.loc 1 906 215 discriminator 5 view .LVU1677
.LBB264:
	.loc 1 906 240 discriminator 5 view .LVU1678
	.loc 1 906 275 discriminator 5 view .LVU1679
	.loc 1 906 315 view .LVU1680
.LBE264:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:906:             ESP_LOGW(TAG_MONITOR, "[%s] Не удалось прочитать PWM_SCALE / PWM_AUTO", AXES[a].name);
	.loc 1 906 222 is_stmt 0 discriminator 5 view .LVU1681
	call8	esp_log_timestamp		#
.LVL371:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:906:             ESP_LOGW(TAG_MONITOR, "[%s] Не удалось прочитать PWM_SCALE / PWM_AUTO", AXES[a].name);
	.loc 1 906 222 discriminator 7 view .LVU1682
	l32r	a11, .LC212	#, tmp130
	mov.n	a15, a6	#, _18
	mov.n	a14, a11	#, tmp130
	mov.n	a13, a10	#, _30
	l32r	a12, .LC220	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL372:
	.loc 1 906 55 is_stmt 1 view .LVU1683
	.loc 1 906 18 view .LVU1684
.LBE263:
	.loc 1 906 13 view .LVU1685
	.loc 1 907 13 view .LVU1686
	j	.L109		#
.L115:
.LBE262:
.LBE261:
	.loc 1 910 9 view .LVU1687
	.loc 1 910 14 view .LVU1688
	.loc 1 910 19 view .LVU1689
	.loc 1 910 51 view .LVU1690
	.loc 1 910 56 view .LVU1691
	.loc 1 910 332 discriminator 2 view .LVU1692
	.loc 1 910 332 discriminator 10 view .LVU1693
	.loc 1 910 332 discriminator 18 view .LVU1694
.LBB265:
	.loc 1 910 334 discriminator 26 view .LVU1695
.LBB266:
	.loc 1 910 359 discriminator 26 view .LVU1696
	.loc 1 910 394 discriminator 26 view .LVU1697
	.loc 1 910 434 view .LVU1698
.LBE266:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:910:         ESP_LOGI(TAG_MONITOR,
	.loc 1 910 341 is_stmt 0 discriminator 26 view .LVU1699
	call8	esp_log_timestamp		#
.LVL373:
	mov.n	a13, a10	# _64, _64
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:910:         ESP_LOGI(TAG_MONITOR,
	.loc 1 910 181 discriminator 33 view .LVU1700
	l8ui	a8, sp, 36	# st.scale_sum, _67
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:910:         ESP_LOGI(TAG_MONITOR,
	.loc 1 910 341 discriminator 33 view .LVU1701
	movi	a9, 0xff	# tmp133,
	bne	a8, a9, .L125	# _67, tmp133,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:910:         ESP_LOGI(TAG_MONITOR,
	.loc 1 910 341 discriminator 34 view .LVU1702
	l32r	a9, .LC209	#, iftmp$1360_88
	j	.L116		#
.L125:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:910:         ESP_LOGI(TAG_MONITOR,
	.loc 1 910 341 discriminator 35 view .LVU1703
	l32r	a9, .LC207	#, iftmp$1360_88
.L116:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:910:         ESP_LOGI(TAG_MONITOR,
	.loc 1 910 285 discriminator 37 view .LVU1704
	l16si	a10, sp, 38	# st.scale_auto, _68
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:910:         ESP_LOGI(TAG_MONITOR,
	.loc 1 910 300 discriminator 37 view .LVU1705
	l8ui	a12, sp, 40	# st.ofs_auto, _70
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:910:         ESP_LOGI(TAG_MONITOR,
	.loc 1 910 313 discriminator 37 view .LVU1706
	l8ui	a14, sp, 41	# st.grad_auto, _72
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:910:         ESP_LOGI(TAG_MONITOR,
	.loc 1 910 341 discriminator 37 view .LVU1707
	l32r	a11, .LC212	#, tmp135
	s32i.n	a14, sp, 16	#, _72
	s32i.n	a12, sp, 12	#, _70
	s32i.n	a10, sp, 8	#, _68
	s32i.n	a9, sp, 4	#, iftmp$1360_88
	s32i.n	a8, sp, 0	#, _67
	mov.n	a15, a6	#, _18
	mov.n	a14, a11	#, tmp135
	l32r	a12, .LC222	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL374:
	.loc 1 910 51 is_stmt 1 view .LVU1708
	.loc 1 910 14 view .LVU1709
.LBE265:
	.loc 1 910 9 view .LVU1710
	.loc 1 918 9 view .LVU1711
	.loc 1 919 9 view .LVU1712
.LBB267:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:919:         if (tmc_read(a, 0x6A, &mscnt) == ESP_OK) {
	.loc 1 919 21 is_stmt 0 view .LVU1713
	addi	a12, sp, 44	#,,
	movi	a11, 0x6a	#,
	mov.n	a10, a2	#, a
	call8	_Z8tmc_read6axis_thPm		#
.LVL375:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:919:         if (tmc_read(a, 0x6A, &mscnt) == ESP_OK) {
	.loc 1 919 9 discriminator 1 view .LVU1714
	bnez.n	a10, .L109	# _74,
	.loc 1 920 13 is_stmt 1 view .LVU1715
	.loc 1 920 18 view .LVU1716
	.loc 1 920 23 view .LVU1717
	.loc 1 920 55 view .LVU1718
	.loc 1 920 60 view .LVU1719
	.loc 1 920 97 discriminator 2 view .LVU1720
	.loc 1 920 97 discriminator 6 view .LVU1721
	.loc 1 920 97 discriminator 10 view .LVU1722
.LBB268:
	.loc 1 920 99 discriminator 14 view .LVU1723
.LBB269:
	.loc 1 920 124 discriminator 14 view .LVU1724
	.loc 1 920 159 discriminator 14 view .LVU1725
	.loc 1 920 199 view .LVU1726
.LBE269:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:920:             ESP_LOGI(TAG_MONITOR, "[%s] MSCNT = %" PRIu32, AXES[a].name, mscnt & 0x3FF);
	.loc 1 920 106 is_stmt 0 discriminator 14 view .LVU1727
	call8	esp_log_timestamp		#
.LVL376:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:920:             ESP_LOGI(TAG_MONITOR, "[%s] MSCNT = %" PRIu32, AXES[a].name, mscnt & 0x3FF);
	.loc 1 920 106 discriminator 17 view .LVU1728
	l32r	a11, .LC212	#, tmp139
	l32i.n	a8, sp, 44	# mscnt, mscnt
	extui	a8, a8, 0, 10	# _96, mscnt,
	s32i.n	a8, sp, 0	#, _96
	mov.n	a15, a6	#, _18
	mov.n	a14, a11	#, tmp139
	mov.n	a13, a10	#, _93
	l32r	a12, .LC224	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL377:
	.loc 1 920 55 is_stmt 1 view .LVU1729
	.loc 1 920 18 view .LVU1730
	.loc 1 920 13 view .LVU1731
.L109:
	.loc 1 920 13 is_stmt 0 view .LVU1732
.LBE268:
.LBE267:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:922: }
	.loc 1 922 1 view .LVU1733
	retw.n	
.LFE122:
	.size	_ZL16monitor_log_axis6axis_t, .-_ZL16monitor_log_axis6axis_t
	.section	.text._Z16monitor_log_taskPv,"ax",@progbits
	.literal_position
	.literal .LC225, _ZL12MONITOR_AXES
	.literal .LC226, _ZL12MONITOR_AXES+8
	.align	4
	.global	_Z16monitor_log_taskPv
	.type	_Z16monitor_log_taskPv, @function
_Z16monitor_log_taskPv:
.LFB123:
	.loc 1 924 35 is_stmt 1 view -0
.LVL378:
	.loc 1 924 35 is_stmt 0 view .LVU1735
	entry	sp, 32	#
.LCFI24:
.L129:
	.loc 1 925 5 is_stmt 1 view .LVU1736
.LBB270:
	.loc 1 926 9 view .LVU1737
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:926:         vTaskDelay(pdMS_TO_TICKS(MONITOR_LOG_PERIOD_MS));
	.loc 1 926 19 is_stmt 0 view .LVU1738
	movi	a10, 0x1f4	#,
	call8	vTaskDelay		#
.LVL379:
	.loc 1 928 9 is_stmt 1 view .LVU1739
.LBB271:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:928:         for (axis_t a : MONITOR_AXES) {
	.loc 1 928 25 is_stmt 0 view .LVU1740
	l32r	a7, .LC225	#, __for_begin
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:928:         for (axis_t a : MONITOR_AXES) {
	.loc 1 928 9 view .LVU1741
	j	.L127		#
.LVL380:
.L128:
	.loc 1 929 13 is_stmt 1 view .LVU1742
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp:929:             monitor_log_axis(a);
	.loc 1 929 29 is_stmt 0 view .LVU1743
	l32i.n	a10, a7, 0	# *__for_begin_1,
	call8	_ZL16monitor_log_axis6axis_t		#
.LVL381:
	.loc 1 928 9 is_stmt 1 discriminator 3 view .LVU1744
	addi.n	a7, a7, 4	# __for_begin, __for_begin,
.LVL382:
.L127:
	.loc 1 928 25 discriminator 1 view .LVU1745
	l32r	a8, .LC226	#, tmp45
.LVL383:
	.loc 1 928 25 is_stmt 0 discriminator 1 view .LVU1746
	bne	a7, a8, .L128	# __for_begin, tmp45,
	j	.L129		#
.LBE271:
.LBE270:
.LFE123:
	.size	_Z16monitor_log_taskPv, .-_Z16monitor_log_taskPv
	.section	.rodata._ZL12MONITOR_AXES,"a"
	.align	4
	.type	_ZL12MONITOR_AXES, @object
	.size	_ZL12MONITOR_AXES, 8
_ZL12MONITOR_AXES:
	.word	0
	.word	1
	.section	.bss._ZL20overheat_last_hot_us,"aw",@nobits
	.align	8
	.type	_ZL20overheat_last_hot_us, @object
	.size	_ZL20overheat_last_hot_us, 16
_ZL20overheat_last_hot_us:
	.zero	16
	.section	.bss._ZL24overheat_current_reduced,"aw",@nobits
	.align	4
	.type	_ZL24overheat_current_reduced, @object
	.size	_ZL24overheat_current_reduced, 2
_ZL24overheat_current_reduced:
	.zero	2
	.weak	AXES
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC227:
	.string	"RA"
	.align	4
.LC228:
	.string	"DEC"
	.section	.rodata.AXES,"aG",@progbits,AXES,comdat
	.align	4
	.type	AXES, @object
	.size	AXES, 88
AXES:
# name:
	.word	.LC227
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
	.word	.LC228
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
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.byte	0x4
	.4byte	.LCFI0-.LFB103
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.byte	0x4
	.4byte	.LCFI1-.LFB99
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.byte	0x4
	.4byte	.LCFI2-.LFB100
	.byte	0xe
	.uleb128 0x40
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
	.uleb128 0x40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.byte	0x4
	.4byte	.LCFI4-.LFB102
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.byte	0x4
	.4byte	.LCFI5-.LFB104
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.byte	0x4
	.4byte	.LCFI6-.LFB105
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x4
	.4byte	.LCFI7-.LFB106
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x4
	.4byte	.LCFI8-.LFB107
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x4
	.4byte	.LCFI9-.LFB108
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI11-.LFB110
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI12-.LFB111
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI13-.LFB112
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI14-.LFB113
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI15-.LFB114
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.byte	0x4
	.4byte	.LCFI16-.LFB115
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.byte	0x4
	.4byte	.LCFI17-.LFB116
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.byte	0x4
	.4byte	.LCFI18-.LFB118
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.byte	0x4
	.4byte	.LCFI19-.LFB117
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.byte	0x4
	.4byte	.LCFI20-.LFB119
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.byte	0x4
	.4byte	.LCFI21-.LFB120
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.byte	0x4
	.4byte	.LCFI22-.LFB121
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.byte	0x4
	.4byte	.LCFI23-.LFB122
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.byte	0x4
	.4byte	.LCFI24-.LFB123
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
	.text
.Letext0:
	.file 3 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/cstdint"
	.file 4 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/xtensa-esp-elf/include/c++/15.2.0/xtensa-esp-elf/esp32s3/no-rtti/bits/c++config.h"
	.file 5 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/machine/_default_types.h"
	.file 6 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/sys/_stdint.h"
	.file 7 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/stdint.h"
	.file 8 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_common/include/esp_err.h"
	.file 9 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_hal_gpio/esp32s3/include/soc/gpio_num.h"
	.file 10 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_hal_gpio/include/hal/gpio_types.h"
	.file 11 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h"
	.file 12 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.h"
	.file 13 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_driver_gpio/include/driver/gpio.h"
	.file 14 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_level.h"
	.file 15 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_config.h"
	.file 16 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_args.h"
	.file 17 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h"
	.file 18 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.h"
	.file 19 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/soc/esp32s3/include/soc/clk_tree_defs.h"
	.file 20 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_hal_uart/include/hal/uart_types.h"
	.file 21 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/task.h"
	.file 22 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log.h"
	.file 23 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.h"
	.file 24 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_timestamp.h"
	.file 25 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_timer/include/esp_timer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4b8e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF367
	.byte	0x4
	.4byte	.LASF368
	.4byte	.LASF369
	.4byte	.Ldebug_ranges0+0x48
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
	.4byte	0x291
	.uleb128 0x6
	.byte	0x3
	.byte	0x36
	.byte	0xb
	.4byte	0x2a9
	.uleb128 0x6
	.byte	0x3
	.byte	0x37
	.byte	0xb
	.4byte	0x2c1
	.uleb128 0x6
	.byte	0x3
	.byte	0x38
	.byte	0xb
	.4byte	0x2de
	.uleb128 0x6
	.byte	0x3
	.byte	0x3a
	.byte	0xb
	.4byte	0x386
	.uleb128 0x6
	.byte	0x3
	.byte	0x3b
	.byte	0xb
	.4byte	0x39e
	.uleb128 0x6
	.byte	0x3
	.byte	0x3c
	.byte	0xb
	.4byte	0x3b6
	.uleb128 0x6
	.byte	0x3
	.byte	0x3d
	.byte	0xb
	.4byte	0x3ce
	.uleb128 0x6
	.byte	0x3
	.byte	0x3f
	.byte	0xb
	.4byte	0x326
	.uleb128 0x6
	.byte	0x3
	.byte	0x40
	.byte	0xb
	.4byte	0x33e
	.uleb128 0x6
	.byte	0x3
	.byte	0x41
	.byte	0xb
	.4byte	0x356
	.uleb128 0x6
	.byte	0x3
	.byte	0x42
	.byte	0xb
	.4byte	0x36e
	.uleb128 0x6
	.byte	0x3
	.byte	0x44
	.byte	0xb
	.4byte	0x2f6
	.uleb128 0x6
	.byte	0x3
	.byte	0x45
	.byte	0xb
	.4byte	0x30e
	.uleb128 0x6
	.byte	0x3
	.byte	0x47
	.byte	0xb
	.4byte	0x29d
	.uleb128 0x6
	.byte	0x3
	.byte	0x48
	.byte	0xb
	.4byte	0x2b5
	.uleb128 0x6
	.byte	0x3
	.byte	0x49
	.byte	0xb
	.4byte	0x2cd
	.uleb128 0x6
	.byte	0x3
	.byte	0x4a
	.byte	0xb
	.4byte	0x2ea
	.uleb128 0x6
	.byte	0x3
	.byte	0x4c
	.byte	0xb
	.4byte	0x392
	.uleb128 0x6
	.byte	0x3
	.byte	0x4d
	.byte	0xb
	.4byte	0x3aa
	.uleb128 0x6
	.byte	0x3
	.byte	0x4e
	.byte	0xb
	.4byte	0x3c2
	.uleb128 0x6
	.byte	0x3
	.byte	0x4f
	.byte	0xb
	.4byte	0x3da
	.uleb128 0x6
	.byte	0x3
	.byte	0x51
	.byte	0xb
	.4byte	0x332
	.uleb128 0x6
	.byte	0x3
	.byte	0x52
	.byte	0xb
	.4byte	0x34a
	.uleb128 0x6
	.byte	0x3
	.byte	0x53
	.byte	0xb
	.4byte	0x362
	.uleb128 0x6
	.byte	0x3
	.byte	0x54
	.byte	0xb
	.4byte	0x37a
	.uleb128 0x6
	.byte	0x3
	.byte	0x56
	.byte	0xb
	.4byte	0x302
	.uleb128 0x6
	.byte	0x3
	.byte	0x57
	.byte	0xb
	.4byte	0x31a
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
	.uleb128 0xb
	.4byte	0x271
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x158
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF31
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x6
	.byte	0x12
	.byte	0x12
	.4byte	0x153
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x6
	.byte	0x16
	.byte	0x13
	.4byte	0x166
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x6
	.byte	0x1e
	.byte	0x13
	.4byte	0x179
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x6
	.byte	0x22
	.byte	0x14
	.4byte	0x18c
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x6
	.byte	0x2a
	.byte	0x13
	.4byte	0x19f
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x6
	.byte	0x2e
	.byte	0x14
	.4byte	0x1b2
	.uleb128 0xb
	.4byte	0x2cd
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0x1c5
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x6
	.byte	0x3a
	.byte	0x14
	.4byte	0x1d8
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x6
	.byte	0x41
	.byte	0x14
	.4byte	0x24a
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x6
	.byte	0x46
	.byte	0x15
	.4byte	0x257
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4b
	.byte	0x14
	.4byte	0x264
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x6
	.byte	0x50
	.byte	0x15
	.4byte	0x27d
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x7
	.byte	0x14
	.byte	0x18
	.4byte	0x1e4
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x7
	.byte	0x15
	.byte	0x19
	.4byte	0x1f0
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x7
	.byte	0x1a
	.byte	0x19
	.4byte	0x1fc
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.4byte	0x209
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x7
	.byte	0x20
	.byte	0x19
	.4byte	0x216
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x7
	.byte	0x21
	.byte	0x1a
	.4byte	0x223
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x7
	.byte	0x26
	.byte	0x19
	.4byte	0x230
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x7
	.byte	0x27
	.byte	0x1a
	.4byte	0x23d
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x7
	.byte	0x32
	.byte	0xf
	.4byte	0x271
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x7
	.byte	0x33
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x7
	.byte	0x3c
	.byte	0xf
	.4byte	0x271
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x7
	.byte	0x3d
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x7
	.byte	0x46
	.byte	0xf
	.4byte	0x271
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x7
	.byte	0x47
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x7
	.byte	0x50
	.byte	0x19
	.4byte	0x1d1
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x7
	.byte	0x51
	.byte	0x22
	.4byte	0x25
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF60
	.uleb128 0xb
	.4byte	0x3e8
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3ef
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x8
	.byte	0x13
	.byte	0xd
	.4byte	0x271
	.uleb128 0xe
	.byte	0x5
	.byte	0x4
	.4byte	0x271
	.byte	0x9
	.byte	0x10
	.byte	0xe
	.4byte	.LASF110
	.4byte	0x533
	.uleb128 0xf
	.4byte	.LASF62
	.sleb128 -1
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0xd
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0xe
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0xf
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x11
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x12
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x13
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x15
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x1a
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x1b
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x1d
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0x1e
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x1f
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x21
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x22
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x23
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x25
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x26
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0x27
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x29
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0x2a
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0x2b
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0x2c
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0x2d
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0x2e
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x2f
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x30
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x31
	.byte	0
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x9
	.byte	0x40
	.byte	0x3
	.4byte	0x406
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x5b
	.byte	0xe
	.4byte	.LASF111
	.4byte	0x57c
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF119
	.byte	0xa
	.byte	0x63
	.byte	0x3
	.4byte	0x53f
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x6c
	.byte	0xe
	.4byte	.LASF120
	.4byte	0x5bf
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0
	.uleb128 0x10
	.4byte	.LASF122
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF123
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF127
	.byte	0xa
	.byte	0x73
	.byte	0x3
	.4byte	0x588
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x75
	.byte	0xe
	.4byte	.LASF128
	.4byte	0x5ea
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0xa
	.byte	0x78
	.byte	0x3
	.4byte	0x5cb
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x7a
	.byte	0xe
	.4byte	.LASF132
	.4byte	0x615
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0
	.uleb128 0x10
	.4byte	.LASF134
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0xa
	.byte	0x7d
	.byte	0x3
	.4byte	0x5f6
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF136
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0x2
	.byte	0x29
	.byte	0x14
	.4byte	0x2d9
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0x2
	.byte	0x2b
	.byte	0x14
	.4byte	0x2d9
	.byte	0xb4
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0x2
	.byte	0x2c
	.byte	0x14
	.4byte	0x2d9
	.byte	0x6e
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0x2
	.byte	0x2d
	.byte	0x14
	.4byte	0x2d9
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF141
	.byte	0x2
	.byte	0x33
	.byte	0x14
	.4byte	0x2d9
	.2byte	0x3d2
	.uleb128 0x13
	.4byte	.LASF200
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x17
	.byte	0x6
	.4byte	0x68f
	.uleb128 0x10
	.4byte	.LASF142
	.byte	0
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF144
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x66a
	.uleb128 0x14
	.4byte	.LASF160
	.byte	0x2c
	.byte	0xb
	.byte	0x1d
	.byte	0x8
	.4byte	0x765
	.uleb128 0x15
	.4byte	.LASF145
	.byte	0xb
	.byte	0x1e
	.byte	0x11
	.4byte	0x3f4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF146
	.byte	0xb
	.byte	0x21
	.byte	0xd
	.4byte	0x29d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF147
	.byte	0xb
	.byte	0x22
	.byte	0x10
	.4byte	0x533
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF148
	.byte	0xb
	.byte	0x23
	.byte	0x10
	.4byte	0x533
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF149
	.byte	0xb
	.byte	0x24
	.byte	0x10
	.4byte	0x533
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF150
	.byte	0xb
	.byte	0x27
	.byte	0xd
	.4byte	0x29d
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF151
	.byte	0xb
	.byte	0x28
	.byte	0xd
	.4byte	0x29d
	.byte	0x15
	.uleb128 0x15
	.4byte	.LASF152
	.byte	0xb
	.byte	0x29
	.byte	0xd
	.4byte	0x29d
	.byte	0x16
	.uleb128 0x15
	.4byte	.LASF153
	.byte	0xb
	.byte	0x2a
	.byte	0xd
	.4byte	0x29d
	.byte	0x17
	.uleb128 0x15
	.4byte	.LASF154
	.byte	0xb
	.byte	0x2b
	.byte	0xd
	.4byte	0x29d
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF155
	.byte	0xb
	.byte	0x2c
	.byte	0xa
	.4byte	0x621
	.byte	0x19
	.uleb128 0x15
	.4byte	.LASF156
	.byte	0xb
	.byte	0x2f
	.byte	0xe
	.4byte	0x2cd
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF157
	.byte	0xb
	.byte	0x30
	.byte	0xe
	.4byte	0x2cd
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF158
	.byte	0xb
	.byte	0x31
	.byte	0xe
	.4byte	0x2cd
	.byte	0x24
	.uleb128 0x15
	.4byte	.LASF159
	.byte	0xb
	.byte	0x32
	.byte	0xe
	.4byte	0x2cd
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.4byte	0x694
	.uleb128 0x16
	.4byte	0x765
	.4byte	0x77a
	.uleb128 0x17
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x76a
	.uleb128 0x18
	.4byte	.LASF370
	.byte	0xb
	.byte	0x37
	.byte	0x20
	.4byte	0x77a
	.byte	0x3
	.uleb128 0x5
	.byte	0x3
	.4byte	AXES
	.uleb128 0x14
	.4byte	.LASF161
	.byte	0x6
	.byte	0xc
	.byte	0x33
	.byte	0x8
	.4byte	0x7d4
	.uleb128 0x15
	.4byte	.LASF162
	.byte	0xc
	.byte	0x34
	.byte	0xd
	.4byte	0x29d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF163
	.byte	0xc
	.byte	0x35
	.byte	0xd
	.4byte	0x2a9
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF164
	.byte	0xc
	.byte	0x36
	.byte	0xd
	.4byte	0x29d
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF165
	.byte	0xc
	.byte	0x37
	.byte	0xd
	.4byte	0x29d
	.byte	0x5
	.byte	0
	.uleb128 0x19
	.byte	0x18
	.byte	0xd
	.byte	0x23
	.byte	0x10
	.4byte	.LASF181
	.4byte	0x823
	.uleb128 0x15
	.4byte	.LASF166
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.4byte	0x2ea
	.byte	0
	.uleb128 0x15
	.4byte	.LASF167
	.byte	0xd
	.byte	0x25
	.byte	0x11
	.4byte	0x5bf
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF168
	.byte	0xd
	.byte	0x26
	.byte	0x13
	.4byte	0x5ea
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF169
	.byte	0xd
	.byte	0x27
	.byte	0x15
	.4byte	0x615
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF170
	.byte	0xd
	.byte	0x28
	.byte	0x15
	.4byte	0x57c
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.4byte	.LASF171
	.byte	0xd
	.byte	0x2c
	.byte	0x3
	.4byte	0x7d4
	.uleb128 0xb
	.4byte	0x823
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x14
	.byte	0xe
	.4byte	.LASF172
	.4byte	0x871
	.uleb128 0x10
	.4byte	.LASF173
	.byte	0
	.uleb128 0x10
	.4byte	.LASF174
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF175
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF176
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF177
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF179
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF180
	.byte	0xe
	.byte	0x1c
	.byte	0x3
	.4byte	0x834
	.uleb128 0x19
	.byte	0x4
	.byte	0xf
	.byte	0x77
	.byte	0x10
	.4byte	.LASF182
	.4byte	0x92d
	.uleb128 0x1a
	.byte	0x4
	.byte	0xf
	.byte	0x78
	.byte	0xb
	.4byte	0x926
	.uleb128 0x1b
	.byte	0x4
	.byte	0xf
	.byte	0x79
	.byte	0x10
	.4byte	0x90d
	.uleb128 0x1c
	.4byte	.LASF183
	.byte	0xf
	.byte	0x7a
	.byte	0x1d
	.4byte	0x871
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF184
	.byte	0xf
	.byte	0x7b
	.byte	0x16
	.4byte	0x2cd
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF185
	.byte	0xf
	.byte	0x7c
	.byte	0x16
	.4byte	0x2cd
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF186
	.byte	0xf
	.byte	0x7d
	.byte	0x16
	.4byte	0x2cd
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF187
	.byte	0xf
	.byte	0x7e
	.byte	0x16
	.4byte	0x2cd
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF188
	.byte	0xf
	.byte	0x7f
	.byte	0x16
	.4byte	0x2cd
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF189
	.byte	0xf
	.byte	0x80
	.byte	0x16
	.4byte	0x2cd
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF190
	.byte	0xf
	.byte	0x81
	.byte	0xb
	.4byte	0x893
	.uleb128 0x1d
	.4byte	.LASF191
	.byte	0xf
	.byte	0x82
	.byte	0x12
	.4byte	0x2cd
	.byte	0
	.uleb128 0x1e
	.4byte	0x88a
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF192
	.byte	0xf
	.byte	0x84
	.byte	0x3
	.4byte	0x87d
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.byte	0x24
	.byte	0xe
	.4byte	.LASF193
	.4byte	0x964
	.uleb128 0x10
	.4byte	.LASF194
	.byte	0
	.uleb128 0x10
	.4byte	.LASF195
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF196
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF197
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF198
	.byte	0x10
	.byte	0x29
	.byte	0x3
	.4byte	0x939
	.uleb128 0x8
	.4byte	.LASF199
	.byte	0x11
	.byte	0x59
	.byte	0x12
	.4byte	0x2cd
	.uleb128 0x13
	.4byte	.LASF201
	.byte	0x5
	.byte	0x4
	.4byte	0x3fa
	.byte	0x12
	.byte	0x16
	.byte	0x6
	.4byte	0x9e0
	.uleb128 0x1f
	.4byte	.LASF202
	.4byte	0x20000
	.uleb128 0x1f
	.4byte	.LASF203
	.4byte	0x20001
	.uleb128 0x1f
	.4byte	.LASF204
	.4byte	0x20002
	.uleb128 0x1f
	.4byte	.LASF205
	.4byte	0x20003
	.uleb128 0x1f
	.4byte	.LASF206
	.4byte	0x20004
	.uleb128 0x1f
	.4byte	.LASF207
	.4byte	0x20005
	.uleb128 0x1f
	.4byte	.LASF208
	.4byte	0x20006
	.uleb128 0x1f
	.4byte	.LASF209
	.4byte	0x20007
	.uleb128 0x1f
	.4byte	.LASF210
	.4byte	0x20008
	.byte	0
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x13
	.byte	0x50
	.byte	0xe
	.4byte	.LASF211
	.4byte	0xa11
	.uleb128 0x10
	.4byte	.LASF212
	.byte	0
	.uleb128 0x10
	.4byte	.LASF213
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF214
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF215
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF216
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF217
	.byte	0x13
	.byte	0x57
	.byte	0x3
	.4byte	0x9e0
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x13
	.byte	0x5d
	.byte	0xe
	.4byte	.LASF218
	.4byte	0xa4e
	.uleb128 0x10
	.4byte	.LASF219
	.byte	0
	.uleb128 0x10
	.4byte	.LASF220
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF221
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF222
	.byte	0
	.uleb128 0x10
	.4byte	.LASF223
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF224
	.byte	0x13
	.byte	0x65
	.byte	0x3
	.4byte	0xa1d
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x13
	.byte	0x7a
	.byte	0xe
	.4byte	.LASF225
	.4byte	0xabb
	.uleb128 0x10
	.4byte	.LASF226
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF227
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF228
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF229
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF231
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF232
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF233
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF234
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF235
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF236
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF237
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF238
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	.LASF239
	.byte	0x13
	.byte	0x8b
	.byte	0x3
	.4byte	0xa5a
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x14
	.byte	0x16
	.byte	0xe
	.4byte	.LASF240
	.4byte	0xaf2
	.uleb128 0x10
	.4byte	.LASF241
	.byte	0
	.uleb128 0x10
	.4byte	.LASF242
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF243
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF244
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF245
	.byte	0x14
	.byte	0x26
	.byte	0x3
	.4byte	0xac7
	.uleb128 0x20
	.string	"TAG"
	.byte	0x1
	.byte	0x13
	.byte	0x14
	.4byte	0x3f4
	.uleb128 0x16
	.4byte	0x621
	.4byte	0xb1a
	.uleb128 0x17
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0x21
	.4byte	.LASF246
	.byte	0x1
	.byte	0x16
	.byte	0xd
	.4byte	0xb0a
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL24overheat_current_reduced
	.uleb128 0x16
	.4byte	0x2de
	.4byte	0xb3c
	.uleb128 0x17
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0x21
	.4byte	.LASF247
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.4byte	0xb2c
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL20overheat_last_hot_us
	.uleb128 0x22
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x357
	.byte	0x14
	.4byte	0x3f4
	.uleb128 0x16
	.4byte	0x68f
	.4byte	0xb6b
	.uleb128 0x17
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0xb5b
	.uleb128 0x23
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x36c
	.byte	0x15
	.4byte	0xb6b
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL12MONITOR_AXES
	.uleb128 0x24
	.4byte	.LASF250
	.byte	0xd
	.byte	0x82
	.byte	0xb
	.4byte	0x3fa
	.4byte	0xb9e
	.uleb128 0x25
	.4byte	0x533
	.uleb128 0x25
	.4byte	0x2cd
	.byte	0
	.uleb128 0x24
	.4byte	.LASF251
	.byte	0xd
	.byte	0x3c
	.byte	0xb
	.4byte	0x3fa
	.4byte	0xbb4
	.uleb128 0x25
	.4byte	0xbb4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x82f
	.uleb128 0x26
	.4byte	.LASF252
	.byte	0x15
	.2byte	0x342
	.byte	0x6
	.4byte	0xbcd
	.uleb128 0x25
	.4byte	0x970
	.byte	0
	.uleb128 0x27
	.4byte	.LASF254
	.byte	0x12
	.byte	0x29
	.byte	0xd
	.4byte	.LASF256
	.4byte	0x3f4
	.4byte	0xbe7
	.uleb128 0x25
	.4byte	0x3fa
	.byte	0
	.uleb128 0x28
	.4byte	.LASF253
	.byte	0x16
	.byte	0x26
	.byte	0x6
	.4byte	0xc04
	.uleb128 0x25
	.4byte	0x92d
	.uleb128 0x25
	.4byte	0x3f4
	.uleb128 0x25
	.4byte	0x3f4
	.uleb128 0x29
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF258
	.byte	0x18
	.byte	0x26
	.byte	0xa
	.4byte	0x2cd
	.uleb128 0x27
	.4byte	.LASF255
	.byte	0x17
	.byte	0x25
	.byte	0xb
	.4byte	.LASF257
	.4byte	0x3fa
	.4byte	0xc34
	.uleb128 0x25
	.4byte	0x66a
	.uleb128 0x25
	.4byte	0x29d
	.uleb128 0x25
	.4byte	0x2cd
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF259
	.byte	0x19
	.byte	0xdf
	.byte	0x9
	.4byte	0x2de
	.uleb128 0x27
	.4byte	.LASF260
	.byte	0x17
	.byte	0x24
	.byte	0xb
	.4byte	.LASF261
	.4byte	0x3fa
	.4byte	0xc64
	.uleb128 0x25
	.4byte	0x66a
	.uleb128 0x25
	.4byte	0x29d
	.uleb128 0x25
	.4byte	0xc64
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2cd
	.uleb128 0x2b
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x39c
	.byte	0x6
	.4byte	.LASF273
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd08
	.uleb128 0x2c
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x39c
	.byte	0x1d
	.4byte	0x3e6
	.4byte	.LLST77
	.4byte	.LVUS77
	.uleb128 0x2d
	.4byte	.LBB271
	.4byte	.LBE271-.LBB271
	.4byte	0xcf6
	.uleb128 0x2e
	.string	"a"
	.byte	0x1
	.2byte	0x3a0
	.byte	0x15
	.4byte	0x66a
	.4byte	.LLST78
	.4byte	.LVUS78
	.uleb128 0x2f
	.4byte	.LASF371
	.4byte	0xd08
	.uleb128 0x6
	.byte	0x3
	.4byte	_ZL12MONITOR_AXES
	.byte	0x9f
	.uleb128 0x30
	.4byte	.LASF262
	.4byte	0xd0e
	.4byte	.LLST79
	.4byte	.LVUS79
	.uleb128 0x30
	.4byte	.LASF263
	.4byte	0xd0e
	.4byte	.LLST80
	.4byte	.LVUS80
	.uleb128 0x31
	.4byte	.LVL381
	.4byte	0xd14
	.byte	0
	.uleb128 0x32
	.4byte	.LVL379
	.4byte	0xbba
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0
	.uleb128 0x34
	.byte	0x4
	.4byte	0xb5b
	.uleb128 0xd
	.byte	0x4
	.4byte	0x68f
	.uleb128 0x35
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x36f
	.byte	0xd
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1182
	.uleb128 0x36
	.string	"a"
	.byte	0x1
	.2byte	0x36f
	.byte	0x25
	.4byte	0x66a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x37
	.string	"drv"
	.byte	0x1
	.2byte	0x370
	.byte	0x12
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x376
	.byte	0x11
	.4byte	0x29d
	.4byte	.LLST74
	.4byte	.LVUS74
	.uleb128 0x38
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x379
	.byte	0x15
	.4byte	0x3f4
	.4byte	.LLST75
	.4byte	.LVUS75
	.uleb128 0x37
	.string	"st"
	.byte	0x1
	.2byte	0x388
	.byte	0x18
	.4byte	0x792
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x396
	.byte	0x12
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x39
	.4byte	0xda4
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x372
	.byte	0xa0
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB256
	.4byte	.LBE256-.LBB256
	.4byte	0xdc0
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x372
	.2byte	0x11e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xdd4
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x372
	.2byte	0x11f
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xde8
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x372
	.2byte	0x121
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xdfb
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x372
	.byte	0xe7
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xe0e
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x37f
	.byte	0x9c
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xe22
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x37f
	.2byte	0x171
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xe36
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x37f
	.2byte	0x172
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xe4a
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x37f
	.2byte	0x174
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB258
	.4byte	.LBE258-.LBB258
	.4byte	0xe66
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x37f
	.2byte	0x13a
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xe79
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x38a
	.byte	0xa0
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB264
	.4byte	.LBE264-.LBB264
	.4byte	0xe95
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x38a
	.2byte	0x101
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xea9
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x38a
	.2byte	0x102
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xebd
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x38a
	.2byte	0x104
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xed0
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x38a
	.byte	0xca
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xee3
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x38e
	.byte	0x9c
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xef7
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x38e
	.2byte	0x1af
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xf0b
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x38e
	.2byte	0x1b0
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xf1f
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x38e
	.2byte	0x1b2
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB266
	.4byte	.LBE266-.LBB266
	.4byte	0xf3b
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x38e
	.2byte	0x178
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xf4e
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x398
	.byte	0xa0
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xf61
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x398
	.byte	0xc4
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xf74
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x398
	.byte	0xc5
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0xf87
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x398
	.byte	0xc7
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB269
	.4byte	.LBE269-.LBB269
	.4byte	0xfa2
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x398
	.byte	0x8d
	.4byte	0x92d
	.byte	0
	.uleb128 0x3b
	.4byte	0x4b59
	.4byte	.LBI259
	.2byte	.LVU1651
	.4byte	.LBB259
	.4byte	.LBE259-.LBB259
	.byte	0x1
	.2byte	0x37f
	.2byte	0x117
	.4byte	0xfcc
	.uleb128 0x3c
	.4byte	0x4b6e
	.4byte	.LLST76
	.4byte	.LVUS76
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL361
	.4byte	0xc40
	.4byte	0xfec
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6f
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x31
	.4byte	.LVL362
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL363
	.4byte	0xbe7
	.4byte	0x103c
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC211
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC213
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC211
	.uleb128 0x33
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
	.uleb128 0x31
	.4byte	.LVL366
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL369
	.4byte	0xbe7
	.4byte	0x1094
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC211
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC217
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC211
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x8
	.byte	0x77
	.sleb128 1
	.byte	0xa
	.2byte	0x3d2
	.byte	0x1e
	.byte	0x35
	.byte	0x25
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL370
	.4byte	0x1182
	.4byte	0x10ae
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x31
	.4byte	.LVL371
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL372
	.4byte	0xbe7
	.4byte	0x10eb
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC211
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC219
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC211
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL373
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL374
	.4byte	0xbe7
	.4byte	0x1128
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC211
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC221
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC211
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL375
	.4byte	0xc40
	.4byte	0x1148
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x31
	.4byte	.LVL376
	.4byte	0xc04
	.uleb128 0x32
	.4byte	.LVL377
	.4byte	0xbe7
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC211
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC223
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC211
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x342
	.byte	0xb
	.4byte	.LASF279
	.4byte	0x3fa
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1249
	.uleb128 0x3f
	.string	"a"
	.byte	0x1
	.2byte	0x342
	.byte	0x24
	.4byte	0x66a
	.4byte	.LLST71
	.4byte	.LVUS71
	.uleb128 0x36
	.string	"st"
	.byte	0x1
	.2byte	0x342
	.byte	0x37
	.4byte	0x1249
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x343
	.byte	0xe
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x343
	.byte	0x19
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.string	"err"
	.byte	0x1
	.2byte	0x345
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST72
	.4byte	.LVUS72
	.uleb128 0x2e
	.string	"raw"
	.byte	0x1
	.2byte	0x34d
	.byte	0xd
	.4byte	0x2a9
	.4byte	.LLST73
	.4byte	.LVUS73
	.uleb128 0x3d
	.4byte	.LVL353
	.4byte	0xc40
	.4byte	0x122c
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x71
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x32
	.4byte	.LVL355
	.4byte	0xc40
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x792
	.uleb128 0x2b
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x321
	.byte	0x6
	.4byte	.LASF274
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a2
	.uleb128 0x36
	.string	"a"
	.byte	0x1
	.2byte	0x321
	.byte	0x1c
	.4byte	0x66a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	.LVL351
	.4byte	0xb83
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x17
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
	.byte	0x23
	.uleb128 0x8
	.byte	0x22
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x318
	.byte	0x6
	.4byte	.LASF276
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1308
	.uleb128 0x36
	.string	"a"
	.byte	0x1
	.2byte	0x318
	.byte	0x1b
	.4byte	0x66a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3d
	.4byte	.LVL348
	.4byte	0xb83
	.4byte	0x12f8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x17
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
	.byte	0x23
	.uleb128 0x8
	.byte	0x22
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.4byte	.LVL349
	.4byte	0xbba
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x2db
	.byte	0xb
	.4byte	.LASF280
	.4byte	0x3fa
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x161e
	.uleb128 0x3f
	.string	"a"
	.byte	0x1
	.2byte	0x2db
	.byte	0x28
	.4byte	0x66a
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x38
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x2dd
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x38
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x2e1
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0x38
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x2e5
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0x38
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x2ec
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x38
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x2f0
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST61
	.4byte	.LVUS61
	.uleb128 0x38
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x2f4
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST62
	.4byte	.LVUS62
	.uleb128 0x38
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x2f8
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0x38
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x2fc
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST64
	.4byte	.LVUS64
	.uleb128 0x38
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x300
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST65
	.4byte	.LVUS65
	.uleb128 0x38
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x304
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST66
	.4byte	.LVUS66
	.uleb128 0x38
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x308
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST67
	.4byte	.LVUS67
	.uleb128 0x38
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x30c
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST68
	.4byte	.LVUS68
	.uleb128 0x23
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x30f
	.byte	0xe
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.4byte	0x1459
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x311
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x146c
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x311
	.byte	0xda
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x147f
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x311
	.byte	0xdb
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1492
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x311
	.byte	0xdd
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB246
	.4byte	.LBE246-.LBB246
	.4byte	0x14ad
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x311
	.byte	0xa3
	.4byte	0x92d
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL304
	.4byte	0x2f3d
	.4byte	0x14c1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL306
	.4byte	0x2afa
	.4byte	0x14d5
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL308
	.4byte	0x2750
	.4byte	0x14e9
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL310
	.4byte	0x2ff6
	.4byte	0x14fd
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL311
	.4byte	0x2558
	.4byte	0x1511
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL313
	.4byte	0x2362
	.4byte	0x1525
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL315
	.4byte	0x21f8
	.4byte	0x1539
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL317
	.4byte	0x20d0
	.4byte	0x154d
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL319
	.4byte	0x1f7e
	.4byte	0x1561
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL321
	.4byte	0x1e65
	.4byte	0x1575
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL323
	.4byte	0x1bd0
	.4byte	0x1589
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL325
	.4byte	0x1ab6
	.4byte	0x159d
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL327
	.4byte	0x1802
	.4byte	0x15b1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL329
	.4byte	0xc40
	.4byte	0x15d1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x31
	.4byte	.LVL330
	.4byte	0xc04
	.uleb128 0x32
	.4byte	.LVL331
	.4byte	0xbe7
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC179
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
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
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x2ba
	.byte	0xb
	.4byte	.LASF295
	.4byte	0x3fa
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1802
	.uleb128 0x38
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x2c4
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST69
	.4byte	.LVUS69
	.uleb128 0x38
	.4byte	.LASF297
	.byte	0x1
	.2byte	0x2cc
	.byte	0xa
	.4byte	0x621
	.4byte	.LLST70
	.4byte	.LVUS70
	.uleb128 0x39
	.4byte	0x167a
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2c6
	.byte	0x9c
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB249
	.4byte	.LBE249-.LBB249
	.4byte	0x1696
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2c6
	.2byte	0x104
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x16aa
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2c6
	.2byte	0x105
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x16be
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2c6
	.2byte	0x107
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x16d1
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2c6
	.byte	0xcd
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB252
	.4byte	.LBE252-.LBB252
	.4byte	0x16ec
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2cf
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x16ff
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2cf
	.byte	0xfc
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1712
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2cf
	.byte	0xfd
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1725
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2cf
	.byte	0xff
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1738
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2cf
	.byte	0xc4
	.4byte	0x92d
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL333
	.4byte	0x2f3d
	.4byte	0x174b
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL334
	.4byte	0x2f3d
	.4byte	0x175e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.4byte	.LVL336
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL337
	.4byte	0xbe7
	.4byte	0x1795
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC184
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL338
	.4byte	0x1308
	.4byte	0x17a8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL340
	.4byte	0x3b4b
	.4byte	0x17bb
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL341
	.4byte	0x1308
	.4byte	0x17ce
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.4byte	.LVL343
	.4byte	0xc04
	.uleb128 0x32
	.4byte	.LVL344
	.4byte	0xbe7
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC186
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF298
	.byte	0x1
	.2byte	0x28f
	.byte	0xb
	.4byte	.LASF299
	.4byte	0x3fa
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ab6
	.uleb128 0x3f
	.string	"a"
	.byte	0x1
	.2byte	0x28f
	.byte	0x23
	.4byte	0x66a
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0x38
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x290
	.byte	0xe
	.4byte	0x2cd
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x38
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x2a2
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x23
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x2a9
	.byte	0xe
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x2aa
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0x2d
	.4byte	.LBB235
	.4byte	.LBE235-.LBB235
	.4byte	0x189e
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2a5
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x18b1
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2a5
	.byte	0xf6
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x18c4
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2a5
	.byte	0xf7
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x18d7
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2a5
	.byte	0xf9
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x18ea
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2a5
	.byte	0xbe
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB239
	.4byte	.LBE239-.LBB239
	.4byte	0x1905
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2ad
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1918
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2ad
	.byte	0xf6
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x192b
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2ad
	.byte	0xf7
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x193e
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2ad
	.byte	0xf9
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1951
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2ad
	.byte	0xbe
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB243
	.4byte	.LBE243-.LBB243
	.4byte	0x196c
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2b2
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1980
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2b2
	.2byte	0x115
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1994
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2b2
	.2byte	0x116
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x19a8
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2b2
	.2byte	0x118
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x19bb
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x2b2
	.byte	0xdd
	.4byte	0x92d
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL289
	.4byte	0xc10
	.4byte	0x19db
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6c
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL291
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL292
	.4byte	0xbe7
	.4byte	0x1a12
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC171
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL293
	.4byte	0xc40
	.4byte	0x1a32
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6c
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x31
	.4byte	.LVL295
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL296
	.4byte	0xbe7
	.4byte	0x1a69
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC173
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL297
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL298
	.4byte	0xbe7
	.4byte	0x1aa0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC175
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x32
	.4byte	.LVL301
	.4byte	0x3a5e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x273
	.byte	0xb
	.4byte	.LASF305
	.4byte	0x3fa
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bd0
	.uleb128 0x3f
	.string	"a"
	.byte	0x1
	.2byte	0x273
	.byte	0x23
	.4byte	0x66a
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0x2e
	.string	"err"
	.byte	0x1
	.2byte	0x274
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x2d
	.4byte	.LBB231
	.4byte	.LBE231-.LBB231
	.4byte	0x1b18
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x277
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1b2b
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x277
	.byte	0xf5
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1b3e
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x277
	.byte	0xf6
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1b51
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x277
	.byte	0xf8
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1b64
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x277
	.byte	0xbd
	.4byte	0x92d
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL278
	.4byte	0xc10
	.4byte	0x1b83
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x22
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL280
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL281
	.4byte	0xbe7
	.4byte	0x1bba
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC164
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x32
	.4byte	.LVL282
	.4byte	0x3a5e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x251
	.byte	0xb
	.4byte	.LASF307
	.4byte	0x3fa
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e65
	.uleb128 0x3f
	.string	"a"
	.byte	0x1
	.2byte	0x251
	.byte	0x22
	.4byte	0x66a
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x2e
	.string	"err"
	.byte	0x1
	.2byte	0x252
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x2d
	.4byte	.LBB219
	.4byte	.LBE219-.LBB219
	.4byte	0x1c32
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x254
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1c45
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x254
	.byte	0xf6
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1c58
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x254
	.byte	0xf7
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1c6b
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x254
	.byte	0xf9
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1c7e
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x254
	.byte	0xbe
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB223
	.4byte	.LBE223-.LBB223
	.4byte	0x1c99
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x25a
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1cac
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x25a
	.byte	0xf3
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1cbf
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x25a
	.byte	0xf4
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1cd2
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x25a
	.byte	0xf6
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1ce5
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x25a
	.byte	0xbb
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB227
	.4byte	.LBE227-.LBB227
	.4byte	0x1d00
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x260
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1d13
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x260
	.byte	0xf5
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1d26
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x260
	.byte	0xf6
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1d39
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x260
	.byte	0xf8
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1d4c
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x260
	.byte	0xbd
	.4byte	0x92d
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL264
	.4byte	0xc10
	.4byte	0x1d6a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL266
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL267
	.4byte	0xbe7
	.4byte	0x1da1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC157
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL268
	.4byte	0xc10
	.4byte	0x1dc1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL270
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL271
	.4byte	0xbe7
	.4byte	0x1df8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC159
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL272
	.4byte	0xc10
	.4byte	0x1e18
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x42
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL274
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL275
	.4byte	0xbe7
	.4byte	0x1e4f
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC161
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x32
	.4byte	.LVL276
	.4byte	0x3a5e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF308
	.byte	0x1
	.2byte	0x23a
	.byte	0xb
	.4byte	.LASF309
	.4byte	0x3fa
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f7e
	.uleb128 0x3f
	.string	"a"
	.byte	0x1
	.2byte	0x23a
	.byte	0x22
	.4byte	0x66a
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x2e
	.string	"err"
	.byte	0x1
	.2byte	0x23b
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x2d
	.4byte	.LBB215
	.4byte	.LBE215-.LBB215
	.4byte	0x1ec7
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x23e
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1eda
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x23e
	.byte	0xf5
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1eed
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x23e
	.byte	0xf6
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1f00
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x23e
	.byte	0xf8
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x1f13
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x23e
	.byte	0xbd
	.4byte	0x92d
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL258
	.4byte	0xc10
	.4byte	0x1f31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL260
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL261
	.4byte	0xbe7
	.4byte	0x1f68
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC154
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x32
	.4byte	.LVL262
	.4byte	0x3a5e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x21b
	.byte	0xb
	.4byte	.LASF311
	.4byte	0x3fa
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20d0
	.uleb128 0x3f
	.string	"a"
	.byte	0x1
	.2byte	0x21b
	.byte	0x22
	.4byte	0x66a
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x38
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x21d
	.byte	0xe
	.4byte	0x2cd
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x38
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x22a
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x2d
	.4byte	.LBB211
	.4byte	.LBE211-.LBB211
	.4byte	0x1ff5
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x22d
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2008
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x22d
	.byte	0xf4
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x201b
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x22d
	.byte	0xf5
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x202e
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x22d
	.byte	0xf7
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2041
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x22d
	.byte	0xbc
	.4byte	0x92d
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL251
	.4byte	0xc10
	.4byte	0x2083
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
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
	.byte	0x23
	.uleb128 0x17
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x11
	.sleb128 -939196380
	.byte	0x21
	.byte	0
	.uleb128 0x31
	.4byte	.LVL253
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL254
	.4byte	0xbe7
	.4byte	0x20ba
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC151
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x32
	.4byte	.LVL255
	.4byte	0x3a5e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x20d
	.byte	0xb
	.4byte	.LASF314
	.4byte	0x3fa
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21f8
	.uleb128 0x3f
	.string	"a"
	.byte	0x1
	.2byte	0x20d
	.byte	0x22
	.4byte	0x66a
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x40
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x20e
	.byte	0xe
	.4byte	0x2cd
	.byte	0x80
	.uleb128 0x38
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x210
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x2d
	.4byte	.LBB207
	.4byte	.LBE207-.LBB207
	.4byte	0x2140
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x213
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2153
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x213
	.byte	0xf7
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2166
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x213
	.byte	0xf8
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2179
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x213
	.byte	0xfa
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x218c
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x213
	.byte	0xbf
	.4byte	0x92d
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL241
	.4byte	0xc10
	.4byte	0x21ab
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x31
	.4byte	.LVL243
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL244
	.4byte	0xbe7
	.4byte	0x21e2
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC145
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x32
	.4byte	.LVL245
	.4byte	0x3a5e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x1f1
	.byte	0xb
	.4byte	.LASF318
	.4byte	0x3fa
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2362
	.uleb128 0x3f
	.string	"a"
	.byte	0x1
	.2byte	0x1f1
	.byte	0x22
	.4byte	0x66a
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x38
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x1f2
	.byte	0xe
	.4byte	0x2cd
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x38
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x1f8
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x2d
	.4byte	.LBB203
	.4byte	.LBE203-.LBB203
	.4byte	0x226f
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1fb
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2282
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1fb
	.byte	0xf7
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2295
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1fb
	.byte	0xf8
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x22a8
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1fb
	.byte	0xfa
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x22bb
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1fb
	.byte	0xbf
	.4byte	0x92d
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL233
	.4byte	0xc10
	.4byte	0x2315
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3d
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
	.byte	0x23
	.uleb128 0x14
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
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
	.byte	0x23
	.uleb128 0x15
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0
	.uleb128 0x31
	.4byte	.LVL235
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL236
	.4byte	0xbe7
	.4byte	0x234c
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC142
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x32
	.4byte	.LVL237
	.4byte	0x3a5e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x1bf
	.byte	0xb
	.4byte	.LASF322
	.4byte	0x3fa
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2558
	.uleb128 0x3f
	.string	"a"
	.byte	0x1
	.2byte	0x1bf
	.byte	0x22
	.4byte	0x66a
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x23
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x1c0
	.byte	0xe
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x1c2
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x38
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x1da
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x2d
	.4byte	.LBB195
	.4byte	.LBE195-.LBB195
	.4byte	0x23e9
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1c5
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x23fc
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1c5
	.byte	0xf2
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x240f
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1c5
	.byte	0xf3
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2422
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1c5
	.byte	0xf5
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2435
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1c5
	.byte	0xba
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB199
	.4byte	.LBE199-.LBB199
	.4byte	0x2450
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1dd
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2463
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1dd
	.byte	0xf2
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2476
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1dd
	.byte	0xf3
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2489
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1dd
	.byte	0xf5
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x249c
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1dd
	.byte	0xba
	.4byte	0x92d
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL219
	.4byte	0xc40
	.4byte	0x24bb
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x31
	.4byte	.LVL221
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL222
	.4byte	0xbe7
	.4byte	0x24f2
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC134
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL223
	.4byte	0xc10
	.4byte	0x250b
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL225
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL226
	.4byte	0xbe7
	.4byte	0x2542
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC137
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x32
	.4byte	.LVL227
	.4byte	0x3a5e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x19d
	.byte	0xb
	.4byte	.LASF326
	.4byte	0x3fa
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2750
	.uleb128 0x3f
	.string	"a"
	.byte	0x1
	.2byte	0x19d
	.byte	0x22
	.4byte	0x66a
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x23
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x19e
	.byte	0xe
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x19f
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x38
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x1a8
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x2d
	.4byte	.LBB187
	.4byte	.LBE187-.LBB187
	.4byte	0x25df
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1a2
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x25f2
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1a2
	.byte	0xe3
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2605
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1a2
	.byte	0xe4
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2618
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1a2
	.byte	0xe6
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x262b
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1a2
	.byte	0xab
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB191
	.4byte	.LBE191-.LBB191
	.4byte	0x2646
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1ab
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2659
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1ab
	.byte	0xe3
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x266c
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1ab
	.byte	0xe4
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x267f
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1ab
	.byte	0xe6
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2692
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1ab
	.byte	0xab
	.4byte	0x92d
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL209
	.4byte	0xc40
	.4byte	0x26b2
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6c
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x31
	.4byte	.LVL211
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL212
	.4byte	0xbe7
	.4byte	0x26e9
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC129
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL213
	.4byte	0xc10
	.4byte	0x2703
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6c
	.byte	0
	.uleb128 0x31
	.4byte	.LVL215
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL216
	.4byte	0xbe7
	.4byte	0x273a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC131
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x32
	.4byte	.LVL217
	.4byte	0x3a5e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x166
	.byte	0xb
	.4byte	.LASF330
	.4byte	0x3fa
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2afa
	.uleb128 0x3f
	.string	"a"
	.byte	0x1
	.2byte	0x166
	.byte	0x22
	.4byte	0x66a
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x23
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x167
	.byte	0xe
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"err"
	.byte	0x1
	.2byte	0x169
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x38
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x170
	.byte	0xa
	.4byte	0x621
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x38
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x171
	.byte	0xa
	.4byte	0x621
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x38
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x180
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x2d
	.4byte	.LBB171
	.4byte	.LBE171-.LBB171
	.4byte	0x2801
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x16c
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2814
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x16c
	.byte	0xce
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2827
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x16c
	.byte	0xcf
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x283a
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x16c
	.byte	0xd1
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x284d
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x16c
	.byte	0x96
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB175
	.4byte	.LBE175-.LBB175
	.4byte	0x2868
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x174
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x287c
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x174
	.2byte	0x15b
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2890
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x174
	.2byte	0x15c
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x28a4
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x174
	.2byte	0x15e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x28b8
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x174
	.2byte	0x123
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB179
	.4byte	.LBE179-.LBB179
	.4byte	0x28d3
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x17b
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x28e7
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x17b
	.2byte	0x119
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x28fb
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x17b
	.2byte	0x11a
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x290f
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x17b
	.2byte	0x11c
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2922
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x17b
	.byte	0xe1
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB183
	.4byte	.LBE183-.LBB183
	.4byte	0x293d
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x183
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2950
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x183
	.byte	0xda
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2963
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x183
	.byte	0xdb
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2976
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x183
	.byte	0xdd
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2989
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x183
	.byte	0xa2
	.4byte	0x92d
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL184
	.4byte	0xc40
	.4byte	0x29a8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x31
	.4byte	.LVL186
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL188
	.4byte	0xbcd
	.4byte	0x29c5
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL189
	.4byte	0xbe7
	.4byte	0x29f9
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC112
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL193
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL194
	.4byte	0xbe7
	.4byte	0x2a30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC122
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL195
	.4byte	0x3f4b
	.4byte	0x2a44
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL198
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL199
	.4byte	0xbe7
	.4byte	0x2a7b
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC124
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL200
	.4byte	0x3f4b
	.4byte	0x2a8f
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL203
	.4byte	0xc10
	.4byte	0x2aad
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x31
	.4byte	.LVL205
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL206
	.4byte	0xbe7
	.4byte	0x2ae4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC126
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x32
	.4byte	.LVL207
	.4byte	0x3a5e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x134
	.byte	0xb
	.4byte	.LASF336
	.4byte	0x3fa
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f3d
	.uleb128 0x3f
	.string	"a"
	.byte	0x1
	.2byte	0x134
	.byte	0x22
	.4byte	0x66a
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x23
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x135
	.byte	0xe
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"err"
	.byte	0x1
	.2byte	0x136
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x38
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x14c
	.byte	0xd
	.4byte	0x29d
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x38
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x155
	.byte	0xd
	.4byte	0x29d
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x41
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x2bc6
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x138
	.byte	0xe
	.4byte	0x271
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x3d
	.4byte	.LVL157
	.4byte	0xc40
	.4byte	0x2bb6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x32
	.4byte	.LVL159
	.4byte	0xbba
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB153
	.4byte	.LBE153-.LBB153
	.4byte	0x2be1
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x142
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2bf5
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x142
	.2byte	0x13e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2c09
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x142
	.2byte	0x13f
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2c1d
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x142
	.2byte	0x141
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2c31
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x142
	.2byte	0x106
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB157
	.4byte	.LBE157-.LBB157
	.4byte	0x2c4c
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x148
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2c5f
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x148
	.byte	0xce
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2c72
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x148
	.byte	0xcf
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2c85
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x148
	.byte	0xd1
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2c98
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x148
	.byte	0x96
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB161
	.4byte	.LBE161-.LBB161
	.4byte	0x2cb3
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x14f
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2cc6
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x14f
	.byte	0xdc
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2cd9
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x14f
	.byte	0xdd
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2cec
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x14f
	.byte	0xdf
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2cff
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x14f
	.byte	0xa4
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2d12
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x153
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2d25
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x153
	.byte	0xc3
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2d38
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x153
	.byte	0xc4
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2d4b
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x153
	.byte	0xc6
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB163
	.4byte	.LBE163-.LBB163
	.4byte	0x2d66
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x153
	.byte	0x8c
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB167
	.4byte	.LBE167-.LBB167
	.4byte	0x2d81
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x158
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2d94
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x158
	.byte	0xdd
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2da7
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x158
	.byte	0xde
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2dba
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x158
	.byte	0xe0
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x2dcd
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x158
	.byte	0xa5
	.4byte	0x92d
	.byte	0
	.uleb128 0x31
	.4byte	.LVL161
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL162
	.4byte	0xbe7
	.4byte	0x2e25
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC110
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
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
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL165
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL167
	.4byte	0xbcd
	.4byte	0x2e42
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL168
	.4byte	0xbe7
	.4byte	0x2e76
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC112
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL171
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL172
	.4byte	0xbe7
	.4byte	0x2eb3
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC114
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL175
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL176
	.4byte	0xbe7
	.4byte	0x2ef0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC116
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL178
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL179
	.4byte	0xbe7
	.4byte	0x2f27
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC118
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x32
	.4byte	.LVL182
	.4byte	0x3a5e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x110
	.byte	0xb
	.4byte	.LASF341
	.4byte	0x3fa
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ff6
	.uleb128 0x3f
	.string	"a"
	.byte	0x1
	.2byte	0x110
	.byte	0x22
	.4byte	0x66a
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x23
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x111
	.byte	0x13
	.4byte	0x823
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"err"
	.byte	0x1
	.2byte	0x119
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x3d
	.4byte	.LVL147
	.4byte	0x4b88
	.4byte	0x2fb2
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL148
	.4byte	0xb9e
	.4byte	0x2fc6
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL150
	.4byte	0xb83
	.4byte	0x2fdf
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.4byte	.LVL151
	.4byte	0x3a5e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF343
	.byte	0x1
	.byte	0xdd
	.byte	0x6
	.4byte	.LASF361
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a5e
	.uleb128 0x43
	.string	"a"
	.byte	0x1
	.byte	0xdd
	.byte	0x20
	.4byte	0x66a
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x21
	.4byte	.LASF323
	.byte	0x1
	.byte	0xde
	.byte	0xe
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	.LASF300
	.byte	0x1
	.byte	0xde
	.byte	0x15
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.4byte	.LASF293
	.byte	0x1
	.byte	0xde
	.byte	0x1f
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x44
	.string	"otp"
	.byte	0x1
	.byte	0xde
	.byte	0x28
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.4byte	0x3078
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xe4
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x308b
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xe4
	.2byte	0x106
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x309e
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xe4
	.2byte	0x107
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x30b1
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xe4
	.2byte	0x109
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x30c3
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xe4
	.byte	0xce
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x30d5
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xe8
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x30e7
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xe8
	.byte	0xff
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x30fa
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xe8
	.2byte	0x100
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x310d
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xe8
	.2byte	0x102
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB119
	.4byte	.LBE119-.LBB119
	.4byte	0x3127
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xe8
	.byte	0xc8
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3139
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xeb
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x314b
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xeb
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x315d
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xeb
	.byte	0x9f
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x316f
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xeb
	.byte	0xa1
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB121
	.4byte	.LBE121-.LBB121
	.4byte	0x3189
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xeb
	.byte	0x67
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x319b
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xec
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x31ae
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xec
	.2byte	0x153
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x31c1
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xec
	.2byte	0x154
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x31d4
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xec
	.2byte	0x156
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB123
	.4byte	.LBE123-.LBB123
	.4byte	0x31ef
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xec
	.2byte	0x11c
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3201
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xee
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3214
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xee
	.2byte	0x119
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3227
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xee
	.2byte	0x11a
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x323a
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xee
	.2byte	0x11c
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB125
	.4byte	.LBE125-.LBB125
	.4byte	0x3254
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xee
	.byte	0xe2
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3266
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf2
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3278
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf2
	.byte	0xa1
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x328a
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf2
	.byte	0xa2
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x329c
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf2
	.byte	0xa4
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB127
	.4byte	.LBE127-.LBB127
	.4byte	0x32b6
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf2
	.byte	0x6a
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x32c8
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf3
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x32da
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf3
	.byte	0xd0
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x32ec
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf3
	.byte	0xd1
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x32fe
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf3
	.byte	0xd3
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB129
	.4byte	.LBE129-.LBB129
	.4byte	0x3318
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf3
	.byte	0x99
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x332a
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf4
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x333c
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf4
	.byte	0xe9
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x334e
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf4
	.byte	0xea
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3360
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf4
	.byte	0xec
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB131
	.4byte	.LBE131-.LBB131
	.4byte	0x337a
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf4
	.byte	0xb2
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x338c
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf6
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x339f
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf6
	.2byte	0x100
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x33b2
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf6
	.2byte	0x101
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x33c5
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf6
	.2byte	0x103
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB133
	.4byte	.LBE133-.LBB133
	.4byte	0x33df
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf6
	.byte	0xc9
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x33f1
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xfa
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3403
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xfa
	.byte	0xa0
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3415
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xfa
	.byte	0xa1
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3427
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xfa
	.byte	0xa3
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB135
	.4byte	.LBE135-.LBB135
	.4byte	0x3441
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xfa
	.byte	0x69
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3453
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xfb
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3465
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xfb
	.byte	0xf7
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3477
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xfb
	.byte	0xf8
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3489
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xfb
	.byte	0xfa
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB137
	.4byte	.LBE137-.LBB137
	.4byte	0x34a3
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xfb
	.byte	0xc0
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x34b5
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xfd
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x34c7
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xfd
	.byte	0xf8
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x34d9
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xfd
	.byte	0xf9
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x34eb
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xfd
	.byte	0xfb
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB139
	.4byte	.LBE139-.LBB139
	.4byte	0x3505
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xfd
	.byte	0xc1
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3517
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xff
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3529
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xff
	.byte	0xfc
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x353b
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xff
	.byte	0xfd
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x354d
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xff
	.byte	0xff
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB141
	.4byte	.LBE141-.LBB141
	.4byte	0x3567
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xff
	.byte	0xc5
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x357a
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x103
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x358d
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x103
	.byte	0xc6
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x35a0
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x103
	.byte	0xc7
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x35b3
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x103
	.byte	0xc9
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB143
	.4byte	.LBE143-.LBB143
	.4byte	0x35ce
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x103
	.byte	0x8f
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x35e1
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x104
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x35f5
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x104
	.2byte	0x10a
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3609
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x104
	.2byte	0x10b
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x361d
	.uleb128 0x3a
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x104
	.2byte	0x10d
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB145
	.4byte	.LBE145-.LBB145
	.4byte	0x3638
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x104
	.byte	0xd3
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x364b
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x106
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x365e
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x106
	.byte	0xbc
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3671
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x106
	.byte	0xbd
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3684
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x106
	.byte	0xbf
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB147
	.4byte	.LBE147-.LBB147
	.4byte	0x369f
	.uleb128 0x22
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x106
	.byte	0x85
	.4byte	0x92d
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL109
	.4byte	0xc40
	.4byte	0x36be
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL110
	.4byte	0xc40
	.4byte	0x36de
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6c
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL111
	.4byte	0xc40
	.4byte	0x36fe
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL112
	.4byte	0xc40
	.4byte	0x371d
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x31
	.4byte	.LVL113
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL114
	.4byte	0xbe7
	.4byte	0x3754
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC69
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL115
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL117
	.4byte	0xbe7
	.4byte	0x37b3
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC72
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2a
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
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x22
	.byte	0x6
	.byte	0
	.uleb128 0x31
	.4byte	.LVL118
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL119
	.4byte	0xbe7
	.4byte	0x37e4
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL120
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL121
	.4byte	0xbe7
	.4byte	0x3815
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC76
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL122
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL123
	.4byte	0xbe7
	.4byte	0x3846
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC78
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL124
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL125
	.4byte	0xbe7
	.4byte	0x3877
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC80
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL126
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL127
	.4byte	0xbe7
	.4byte	0x38a8
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC82
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL128
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL129
	.4byte	0xbe7
	.4byte	0x38d9
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC84
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL130
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL131
	.4byte	0xbe7
	.4byte	0x390a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC86
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL132
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL133
	.4byte	0xbe7
	.4byte	0x393b
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL134
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL135
	.4byte	0xbe7
	.4byte	0x396c
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC90
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL136
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL137
	.4byte	0xbe7
	.4byte	0x399d
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC92
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL138
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL139
	.4byte	0xbe7
	.4byte	0x39ce
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC94
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL140
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL141
	.4byte	0xbe7
	.4byte	0x39ff
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC97
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL142
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL143
	.4byte	0xbe7
	.4byte	0x3a30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC99
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL144
	.4byte	0xc04
	.uleb128 0x32
	.4byte	.LVL145
	.4byte	0xbe7
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC101
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LASF345
	.byte	0x1
	.byte	0xd4
	.byte	0xd
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b4b
	.uleb128 0x48
	.string	"a"
	.byte	0x1
	.byte	0xd4
	.byte	0x25
	.4byte	0x66a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x49
	.4byte	.LASF346
	.byte	0x1
	.byte	0xd4
	.byte	0x30
	.4byte	0x29d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x39
	.4byte	0x3aa0
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xd5
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3ab2
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xd5
	.byte	0xd6
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3ac4
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xd5
	.byte	0xd7
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3ad6
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xd5
	.byte	0xd9
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.4byte	0x3af0
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xd5
	.byte	0x9f
	.4byte	0x92d
	.byte	0
	.uleb128 0x31
	.4byte	.LVL1
	.4byte	0xc04
	.uleb128 0x32
	.4byte	.LVL2
	.4byte	0xbe7
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
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
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x9
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x3
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF347
	.byte	0x1
	.byte	0xa5
	.byte	0xb
	.4byte	.LASF353
	.4byte	0x3fa
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f4b
	.uleb128 0x43
	.string	"a"
	.byte	0x1
	.byte	0xa5
	.byte	0x27
	.4byte	0x66a
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x4b
	.4byte	.LASF348
	.byte	0x1
	.byte	0xa6
	.byte	0xf
	.4byte	0x278
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF349
	.byte	0x1
	.byte	0xa7
	.byte	0xe
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4c
	.string	"err"
	.byte	0x1
	.byte	0xa8
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x4d
	.4byte	.LASF350
	.byte	0x1
	.byte	0xb7
	.byte	0xd
	.4byte	0x29d
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x4c
	.string	"enn"
	.byte	0x1
	.byte	0xb8
	.byte	0xe
	.4byte	0x2cd
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x4c
	.string	"ms1"
	.byte	0x1
	.byte	0xb9
	.byte	0xe
	.4byte	0x2cd
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x4c
	.string	"ms2"
	.byte	0x1
	.byte	0xba
	.byte	0xe
	.4byte	0x2cd
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x4d
	.4byte	.LASF351
	.byte	0x1
	.byte	0xbb
	.byte	0xe
	.4byte	0x2cd
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x41
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x3c59
	.uleb128 0x4c
	.string	"i"
	.byte	0x1
	.byte	0xaa
	.byte	0xe
	.4byte	0x271
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x3d
	.4byte	.LVL82
	.4byte	0xc40
	.4byte	0x3c49
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x32
	.4byte	.LVL84
	.4byte	0xbba
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.4byte	0x3c73
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xb1
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3c86
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xb1
	.2byte	0x180
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3c99
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xb1
	.2byte	0x181
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3cac
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xb1
	.2byte	0x183
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3cbf
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xb1
	.2byte	0x148
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3cd1
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xbd
	.byte	0x98
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3ce4
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xbd
	.2byte	0x131
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3cf7
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xbd
	.2byte	0x132
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3d0a
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xbd
	.2byte	0x134
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.4byte	0x3d24
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xbd
	.byte	0xfa
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.4byte	0x3d3e
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xc5
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3d51
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xc5
	.2byte	0x102
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3d64
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xc5
	.2byte	0x103
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3d77
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xc5
	.2byte	0x105
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3d89
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xc5
	.byte	0xca
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.4byte	0x3da3
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xcb
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3db6
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xcb
	.2byte	0x11d
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3dc9
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xcb
	.2byte	0x11e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3ddc
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0xcb
	.2byte	0x120
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3dee
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0xcb
	.byte	0xe5
	.4byte	0x92d
	.byte	0
	.uleb128 0x31
	.4byte	.LVL86
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL89
	.4byte	0xbcd
	.4byte	0x3e0b
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL90
	.4byte	0xbe7
	.4byte	0x3e4c
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC52
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL98
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL100
	.4byte	0xbe7
	.4byte	0x3eb5
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL101
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL102
	.4byte	0xbe7
	.4byte	0x3f01
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL105
	.4byte	0xc04
	.uleb128 0x32
	.4byte	.LVL106
	.4byte	0xbe7
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF352
	.byte	0x1
	.byte	0x61
	.byte	0xb
	.4byte	.LASF354
	.4byte	0x3fa
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47b5
	.uleb128 0x43
	.string	"a"
	.byte	0x1
	.byte	0x61
	.byte	0x25
	.4byte	0x66a
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x21
	.4byte	.LASF355
	.byte	0x1
	.byte	0x62
	.byte	0xe
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4c
	.string	"err"
	.byte	0x1
	.byte	0x64
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x2d
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.4byte	0x3fb8
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x66
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3fcb
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x66
	.2byte	0x116
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3fde
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x66
	.2byte	0x117
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x3ff1
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x66
	.2byte	0x119
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4003
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x66
	.byte	0xde
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.4byte	0x401d
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x6c
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4030
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x6c
	.2byte	0x10b
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4043
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x6c
	.2byte	0x10c
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4056
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x6c
	.2byte	0x10e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4068
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x6c
	.byte	0xd3
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.4byte	0x4082
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x6f
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4095
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x6f
	.2byte	0x112
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x40a8
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x6f
	.2byte	0x113
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x40bb
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x6f
	.2byte	0x115
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x40cd
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x6f
	.byte	0xda
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.4byte	0x40e7
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x72
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x40fa
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x72
	.2byte	0x112
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x410d
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x72
	.2byte	0x113
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4120
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x72
	.2byte	0x115
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4132
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x72
	.byte	0xda
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.4byte	0x414c
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x75
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x415e
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x75
	.byte	0xf1
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4170
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x75
	.byte	0xf2
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4182
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x75
	.byte	0xf4
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4194
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x75
	.byte	0xb9
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.4byte	0x41ae
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x78
	.byte	0x9e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x41c0
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x78
	.byte	0xf1
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x41d2
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x78
	.byte	0xf2
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x41e4
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x78
	.byte	0xf4
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x41f6
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x78
	.byte	0xb9
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4208
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x7d
	.byte	0x9c
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.4byte	0x4223
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x7d
	.2byte	0x106
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4236
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x7d
	.2byte	0x107
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4249
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x7d
	.2byte	0x109
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x425b
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x7d
	.byte	0xcf
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x426d
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x82
	.byte	0x9c
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.4byte	0x4287
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x82
	.byte	0xda
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4299
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x82
	.byte	0xdb
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x42ab
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x82
	.byte	0xdd
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x42bd
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x82
	.byte	0xa3
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x42cf
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x84
	.byte	0x9c
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.4byte	0x42e9
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x84
	.byte	0xda
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x42fb
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x84
	.byte	0xdb
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x430d
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x84
	.byte	0xdd
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x431f
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x84
	.byte	0xa3
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4331
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x86
	.byte	0x9c
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.4byte	0x434b
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x86
	.byte	0xda
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x435d
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x86
	.byte	0xdb
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x436f
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x86
	.byte	0xdd
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4381
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x86
	.byte	0xa3
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4393
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x88
	.byte	0x9c
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.4byte	0x43ad
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x88
	.byte	0xda
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x43bf
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x88
	.byte	0xdb
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x43d1
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x88
	.byte	0xdd
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x43e3
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x88
	.byte	0xa3
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x43f5
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x8c
	.byte	0x9c
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.4byte	0x4410
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x8c
	.2byte	0x10d
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4423
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x8c
	.2byte	0x10e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4436
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x8c
	.2byte	0x110
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4448
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x8c
	.byte	0xd6
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x445a
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x8f
	.byte	0x9c
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.4byte	0x4475
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x8f
	.2byte	0x10d
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4488
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x8f
	.2byte	0x10e
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x449b
	.uleb128 0x46
	.4byte	.LASF267
	.byte	0x1
	.byte	0x8f
	.2byte	0x110
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x44ad
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x8f
	.byte	0xd6
	.4byte	0x92d
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL45
	.4byte	0xc40
	.4byte	0x44cd
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6f
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x31
	.4byte	.LVL47
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL49
	.4byte	0xbcd
	.4byte	0x44ea
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL50
	.4byte	0xbe7
	.4byte	0x4524
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL52
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL53
	.4byte	0xbe7
	.4byte	0x455b
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL54
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL55
	.4byte	0xbe7
	.4byte	0x4592
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL56
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL57
	.4byte	0xbe7
	.4byte	0x45c9
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL58
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL59
	.4byte	0xbe7
	.4byte	0x4600
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL60
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL61
	.4byte	0xbe7
	.4byte	0x4637
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL62
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL63
	.4byte	0xbe7
	.4byte	0x466e
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL64
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL65
	.4byte	0xbe7
	.4byte	0x46a5
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL66
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL67
	.4byte	0xbe7
	.4byte	0x46dc
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC35
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL68
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL69
	.4byte	0xbe7
	.4byte	0x4713
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC37
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL70
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL71
	.4byte	0xbe7
	.4byte	0x474a
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL72
	.4byte	0xc04
	.uleb128 0x3d
	.4byte	.LVL73
	.4byte	0xbe7
	.4byte	0x4781
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL74
	.4byte	0xc04
	.uleb128 0x32
	.4byte	.LVL75
	.4byte	0xbe7
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC43
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF356
	.byte	0x1
	.byte	0x2e
	.byte	0xb
	.4byte	.LASF357
	.4byte	0x3fa
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b32
	.uleb128 0x43
	.string	"a"
	.byte	0x1
	.byte	0x2e
	.byte	0x25
	.4byte	0x66a
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x21
	.4byte	.LASF355
	.byte	0x1
	.byte	0x2f
	.byte	0xe
	.4byte	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4c
	.string	"err"
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.4byte	0x3fa
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x4d
	.4byte	.LASF358
	.byte	0x1
	.byte	0x35
	.byte	0xa
	.4byte	0x621
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x4d
	.4byte	.LASF359
	.byte	0x1
	.byte	0x36
	.byte	0xd
	.4byte	0x2de
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x41
	.4byte	.Ldebug_ranges0+0
	.4byte	0x49c2
	.uleb128 0x4d
	.4byte	.LASF319
	.byte	0x1
	.byte	0x3c
	.byte	0x16
	.4byte	0x2cd
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x39
	.4byte	0x485f
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x43
	.byte	0xa0
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.4byte	0x4879
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x43
	.byte	0xf1
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x488b
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x43
	.byte	0xf2
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x489d
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x43
	.byte	0xf4
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x48af
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x43
	.byte	0xba
	.4byte	0x92d
	.byte	0
	.uleb128 0x4e
	.4byte	0x4b59
	.4byte	.LBI45
	.2byte	.LVU71
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.byte	0x43
	.byte	0xce
	.4byte	0x48d7
	.uleb128 0x3c
	.4byte	0x4b6e
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x4e
	.4byte	0x4b59
	.4byte	.LBI47
	.2byte	.LVU77
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.byte	0x1
	.byte	0x43
	.byte	0xce
	.4byte	0x48ff
	.uleb128 0x3c
	.4byte	0x4b6e
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL14
	.4byte	0xc10
	.4byte	0x4940
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
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
	.byte	0x23
	.uleb128 0x15
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0
	.uleb128 0x31
	.4byte	.LVL15
	.4byte	0xc04
	.uleb128 0x32
	.4byte	.LVL26
	.4byte	0xbe7
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
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
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x23
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
	.byte	0x23
	.uleb128 0x14
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xa
	.2byte	0x3d2
	.byte	0x1e
	.byte	0x35
	.byte	0x25
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x8
	.byte	0x76
	.sleb128 1
	.byte	0xa
	.2byte	0x3d2
	.byte	0x1e
	.byte	0x35
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.4byte	0x4b08
	.uleb128 0x4d
	.4byte	.LASF319
	.byte	0x1
	.byte	0x4b
	.byte	0x12
	.4byte	0x2cd
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x39
	.4byte	0x49f5
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x52
	.byte	0x9c
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4a07
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x52
	.byte	0xcd
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4a19
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x52
	.byte	0xce
	.4byte	0x92d
	.byte	0
	.uleb128 0x39
	.4byte	0x4a2b
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x52
	.byte	0xd0
	.4byte	0x92d
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.4byte	0x4a45
	.uleb128 0x45
	.4byte	.LASF267
	.byte	0x1
	.byte	0x52
	.byte	0x96
	.4byte	0x92d
	.byte	0
	.uleb128 0x4e
	.4byte	0x4b59
	.4byte	.LBI56
	.2byte	.LVU127
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.byte	0x52
	.byte	0x73
	.4byte	0x4a6d
	.uleb128 0x3c
	.4byte	0x4b6e
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL32
	.4byte	0xc10
	.4byte	0x4aae
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
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
	.byte	0x23
	.uleb128 0x15
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0
	.uleb128 0x31
	.4byte	.LVL34
	.4byte	0xc04
	.uleb128 0x32
	.4byte	.LVL40
	.4byte	0xbe7
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x33
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
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x8
	.byte	0x76
	.sleb128 1
	.byte	0xa
	.2byte	0x3d2
	.byte	0x1e
	.byte	0x35
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LVL5
	.4byte	0xc40
	.4byte	0x4b28
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6f
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x31
	.4byte	.LVL8
	.4byte	0xc34
	.byte	0
	.uleb128 0x42
	.4byte	.LASF360
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.4byte	.LASF362
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b59
	.uleb128 0x48
	.string	"a"
	.byte	0x1
	.byte	0x1d
	.byte	0x20
	.4byte	0x66a
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF363
	.byte	0x2
	.byte	0x51
	.byte	0x14
	.4byte	.LASF364
	.4byte	0x2cd
	.byte	0x3
	.4byte	0x4b7a
	.uleb128 0x50
	.string	"cs"
	.byte	0x2
	.byte	0x51
	.byte	0x29
	.4byte	0x29d
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF365
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF366
	.uleb128 0x51
	.4byte	.LASF372
	.4byte	.LASF373
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x23
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
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x50
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
	.uleb128 0x51
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
.LVUS77:
	.uleb128 .LVU1735
	.uleb128 0
.LLST77:
	.4byte	.LVL378
	.4byte	.LFE123
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS78:
	.uleb128 .LVU1742
	.uleb128 .LVU1744
.LLST78:
	.4byte	.LVL380
	.4byte	.LVL381-1
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS79:
	.uleb128 .LVU1740
	.uleb128 .LVU1742
	.uleb128 .LVU1742
	.uleb128 0
.LLST79:
	.4byte	.LVL379
	.4byte	.LVL380
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL12MONITOR_AXES
	.byte	0x9f
	.4byte	.LVL380
	.4byte	.LFE123
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS80:
	.uleb128 .LVU1740
	.uleb128 .LVU1742
	.uleb128 .LVU1742
	.uleb128 .LVU1744
	.uleb128 .LVU1744
	.uleb128 .LVU1746
	.uleb128 .LVU1746
	.uleb128 0
.LLST80:
	.4byte	.LVL379
	.4byte	.LVL380
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL12MONITOR_AXES+8
	.byte	0x9f
	.4byte	.LVL380
	.4byte	.LVL381-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL381-1
	.4byte	.LVL383
	.2byte	0x6
	.byte	0x3
	.4byte	_ZL12MONITOR_AXES+8
	.byte	0x9f
	.4byte	.LVL383
	.4byte	.LFE123
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS74:
	.uleb128 .LVU1627
	.uleb128 .LVU1732
.LLST74:
	.4byte	.LVL364
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS75:
	.uleb128 .LVU1628
	.uleb128 .LVU1637
	.uleb128 .LVU1637
	.uleb128 .LVU1732
.LLST75:
	.4byte	.LVL364
	.4byte	.LVL365
	.2byte	0x6
	.byte	0x3
	.4byte	.LC196
	.byte	0x9f
	.4byte	.LVL365
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS76:
	.uleb128 .LVU1651
	.uleb128 .LVU1656
.LLST76:
	.4byte	.LVL367
	.4byte	.LVL368
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS71:
	.uleb128 0
	.uleb128 .LVU1581
	.uleb128 .LVU1581
	.uleb128 0
.LLST71:
	.4byte	.LVL352
	.4byte	.LVL354
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL354
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS72:
	.uleb128 .LVU1581
	.uleb128 0
.LLST72:
	.4byte	.LVL354
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS73:
	.uleb128 .LVU1590
	.uleb128 .LVU1593
.LLST73:
	.4byte	.LVL357
	.4byte	.LVL358
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS56:
	.uleb128 0
	.uleb128 .LVU1450
	.uleb128 .LVU1450
	.uleb128 0
.LLST56:
	.4byte	.LVL303
	.4byte	.LVL305
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL305
	.4byte	.LFE118
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS57:
	.uleb128 .LVU1450
	.uleb128 .LVU1453
.LLST57:
	.4byte	.LVL305
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS58:
	.uleb128 .LVU1453
	.uleb128 .LVU1456
.LLST58:
	.4byte	.LVL307
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS59:
	.uleb128 .LVU1456
	.uleb128 .LVU1461
.LLST59:
	.4byte	.LVL309
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS60:
	.uleb128 .LVU1461
	.uleb128 .LVU1464
.LLST60:
	.4byte	.LVL312
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS61:
	.uleb128 .LVU1464
	.uleb128 .LVU1467
.LLST61:
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS62:
	.uleb128 .LVU1467
	.uleb128 .LVU1470
.LLST62:
	.4byte	.LVL316
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS63:
	.uleb128 .LVU1470
	.uleb128 .LVU1473
.LLST63:
	.4byte	.LVL318
	.4byte	.LVL320
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS64:
	.uleb128 .LVU1473
	.uleb128 .LVU1476
.LLST64:
	.4byte	.LVL320
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS65:
	.uleb128 .LVU1476
	.uleb128 .LVU1479
.LLST65:
	.4byte	.LVL322
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS66:
	.uleb128 .LVU1479
	.uleb128 .LVU1482
.LLST66:
	.4byte	.LVL324
	.4byte	.LVL326
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS67:
	.uleb128 .LVU1482
	.uleb128 .LVU1485
.LLST67:
	.4byte	.LVL326
	.4byte	.LVL328
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS68:
	.uleb128 .LVU1485
	.uleb128 .LVU1509
.LLST68:
	.4byte	.LVL328
	.4byte	.LVL332
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS69:
	.uleb128 .LVU1517
	.uleb128 .LVU1528
	.uleb128 .LVU1534
	.uleb128 .LVU1538
	.uleb128 .LVU1559
	.uleb128 .LVU1561
.LLST69:
	.4byte	.LVL335
	.4byte	.LVL336-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL338
	.4byte	.LVL339
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL345
	.4byte	.LVL346
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS70:
	.uleb128 .LVU1542
	.uleb128 .LVU1559
.LLST70:
	.4byte	.LVL342
	.4byte	.LVL345
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS52:
	.uleb128 0
	.uleb128 .LVU1379
	.uleb128 .LVU1379
	.uleb128 0
.LLST52:
	.4byte	.LVL283
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL288
	.4byte	.LFE116
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS53:
	.uleb128 .LVU1369
	.uleb128 .LVU1375
	.uleb128 .LVU1375
	.uleb128 .LVU1377
	.uleb128 .LVU1377
	.uleb128 .LVU1378
	.uleb128 .LVU1378
	.uleb128 .LVU1379
	.uleb128 .LVU1379
	.uleb128 .LVU1445
	.uleb128 .LVU1445
	.uleb128 0
.LLST53:
	.4byte	.LVL284
	.4byte	.LVL285
	.2byte	0x6
	.byte	0xc
	.4byte	0x30045
	.byte	0x9f
	.4byte	.LVL285
	.4byte	.LVL286
	.2byte	0x10
	.byte	0x78
	.sleb128 0
	.byte	0x11
	.sleb128 -1610612737
	.byte	0x1a
	.byte	0xc
	.4byte	0x10030045
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL286
	.4byte	.LVL287
	.2byte	0x28
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
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x11
	.sleb128 -1610612737
	.byte	0x1a
	.byte	0xc
	.4byte	0x10030045
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL287
	.4byte	.LVL288
	.2byte	0x2b
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
	.byte	0x23
	.uleb128 0x18
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x11
	.sleb128 -1610612737
	.byte	0x1a
	.byte	0xc
	.4byte	0x10030045
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL288
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL302
	.4byte	.LFE116
	.2byte	0x2c
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
	.byte	0x23
	.uleb128 0x18
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x9
	.byte	0xe7
	.byte	0x24
	.byte	0x9
	.byte	0xff
	.byte	0x25
	.byte	0x48
	.byte	0x24
	.byte	0xc
	.4byte	0x10030045
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS54:
	.uleb128 .LVU1381
	.uleb128 .LVU1402
.LLST54:
	.4byte	.LVL290
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS55:
	.uleb128 .LVU1402
	.uleb128 .LVU1439
	.uleb128 .LVU1440
	.uleb128 .LVU1444
.LLST55:
	.4byte	.LVL294
	.4byte	.LVL299
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL300
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 0
	.uleb128 .LVU1337
	.uleb128 .LVU1337
	.uleb128 0
.LLST50:
	.4byte	.LVL277
	.4byte	.LVL279
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL279
	.4byte	.LFE115
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS51:
	.uleb128 .LVU1337
	.uleb128 0
.LLST51:
	.4byte	.LVL279
	.4byte	.LFE115
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 0
	.uleb128 .LVU1271
	.uleb128 .LVU1271
	.uleb128 0
.LLST48:
	.4byte	.LVL263
	.4byte	.LVL265
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL265
	.4byte	.LFE114
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 .LVU1271
	.uleb128 0
.LLST49:
	.4byte	.LVL265
	.4byte	.LFE114
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 0
	.uleb128 .LVU1245
	.uleb128 .LVU1245
	.uleb128 0
.LLST46:
	.4byte	.LVL257
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL259
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 .LVU1245
	.uleb128 0
.LLST47:
	.4byte	.LVL259
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 0
	.uleb128 .LVU1240
	.uleb128 .LVU1240
	.uleb128 0
.LLST43:
	.4byte	.LVL246
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL256
	.4byte	.LFE112
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
.LVUS44:
	.uleb128 .LVU1205
	.uleb128 .LVU1210
	.uleb128 .LVU1210
	.uleb128 .LVU1212
	.uleb128 .LVU1212
	.uleb128 .LVU1214
	.uleb128 .LVU1214
	.uleb128 .LVU1216
	.uleb128 .LVU1216
	.uleb128 .LVU1217
	.uleb128 .LVU1217
	.uleb128 .LVU1240
	.uleb128 .LVU1240
	.uleb128 0
.LLST44:
	.4byte	.LVL247
	.4byte	.LVL248
	.2byte	0x3
	.byte	0x8
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL248
	.4byte	.LVL248
	.2byte	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0xc
	.4byte	0x50024
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0xb
	.byte	0x78
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0xc
	.4byte	0x8050024
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL250
	.2byte	0xa
	.byte	0x78
	.sleb128 0
	.byte	0x11
	.sleb128 -939196380
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL250
	.4byte	.LVL251-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL251-1
	.4byte	.LVL256
	.2byte	0x25
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
	.byte	0x23
	.uleb128 0x17
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x11
	.sleb128 -939196380
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL256
	.4byte	.LFE112
	.2byte	0x3a
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
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x23
	.uleb128 0x17
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x11
	.sleb128 -939196380
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 .LVU1218
	.uleb128 0
.LLST45:
	.4byte	.LVL252
	.4byte	.LFE112
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 0
	.uleb128 .LVU1179
	.uleb128 .LVU1179
	.uleb128 0
.LLST41:
	.4byte	.LVL239
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL242
	.4byte	.LFE111
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 .LVU1179
	.uleb128 0
.LLST42:
	.4byte	.LVL242
	.4byte	.LFE111
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 0
	.uleb128 .LVU1173
	.uleb128 .LVU1173
	.uleb128 0
.LLST38:
	.4byte	.LVL228
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL238
	.4byte	.LFE110
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
.LVUS39:
	.uleb128 .LVU1140
	.uleb128 .LVU1142
	.uleb128 .LVU1142
	.uleb128 .LVU1146
	.uleb128 .LVU1146
	.uleb128 .LVU1147
	.uleb128 .LVU1147
	.uleb128 .LVU1149
	.uleb128 .LVU1149
	.uleb128 .LVU1150
	.uleb128 .LVU1150
	.uleb128 .LVU1173
	.uleb128 .LVU1173
	.uleb128 0
.LLST39:
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL231
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL232
	.4byte	.LVL233-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL233-1
	.4byte	.LVL238
	.2byte	0x3e
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
	.byte	0x23
	.uleb128 0x14
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
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
	.byte	0x23
	.uleb128 0x15
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL238
	.4byte	.LFE110
	.2byte	0x68
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
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x23
	.uleb128 0x14
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
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
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x23
	.uleb128 0x15
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU1151
	.uleb128 0
.LLST40:
	.4byte	.LVL234
	.4byte	.LFE110
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 0
	.uleb128 .LVU1072
	.uleb128 .LVU1072
	.uleb128 0
.LLST35:
	.4byte	.LVL218
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL220
	.4byte	.LFE109
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU1072
	.uleb128 .LVU1115
.LLST36:
	.4byte	.LVL220
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU1115
	.uleb128 .LVU1136
.LLST37:
	.4byte	.LVL224
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 0
	.uleb128 .LVU1023
	.uleb128 .LVU1023
	.uleb128 0
.LLST32:
	.4byte	.LVL208
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL210
	.4byte	.LFE108
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU1023
	.uleb128 .LVU1045
.LLST33:
	.4byte	.LVL210
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU1045
	.uleb128 .LVU1066
.LLST34:
	.4byte	.LVL214
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU928
	.uleb128 .LVU928
	.uleb128 .LVU939
	.uleb128 .LVU939
	.uleb128 .LVU946
	.uleb128 .LVU946
	.uleb128 .LVU1017
	.uleb128 .LVU1017
	.uleb128 0
.LLST27:
	.4byte	.LVL183
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL185
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL187
	.4byte	.LVL190
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
	.4byte	.LVL190
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL207
	.4byte	.LFE107
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
.LVUS28:
	.uleb128 .LVU928
	.uleb128 .LVU970
	.uleb128 .LVU971
	.uleb128 .LVU991
	.uleb128 .LVU992
	.uleb128 .LVU996
.LLST28:
	.4byte	.LVL185
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU949
	.uleb128 .LVU962
	.uleb128 .LVU971
	.uleb128 .LVU983
	.uleb128 .LVU992
	.uleb128 .LVU995
.LLST29:
	.4byte	.LVL191
	.4byte	.LVL193-1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x32
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL197
	.4byte	.LVL198-1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x32
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203-1
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x32
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU951
	.uleb128 .LVU962
	.uleb128 .LVU971
	.uleb128 .LVU983
	.uleb128 .LVU992
	.uleb128 .LVU995
.LLST30:
	.4byte	.LVL192
	.4byte	.LVL193-1
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL197
	.4byte	.LVL198-1
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203-1
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU996
	.uleb128 .LVU1017
.LLST31:
	.4byte	.LVL204
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU809
	.uleb128 .LVU809
	.uleb128 0
.LLST22:
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL155
	.4byte	.LFE106
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU806
	.uleb128 .LVU810
	.uleb128 .LVU810
	.uleb128 .LVU839
	.uleb128 .LVU840
	.uleb128 .LVU879
	.uleb128 .LVU880
	.uleb128 .LVU917
	.uleb128 .LVU918
	.uleb128 .LVU922
.LLST23:
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL174
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU862
	.uleb128 .LVU922
.LLST24:
	.4byte	.LVL170
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU900
	.uleb128 .LVU911
	.uleb128 .LVU918
	.uleb128 .LVU921
.LLST25:
	.4byte	.LVL177
	.4byte	.LVL178-1
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL182-1
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU807
	.uleb128 .LVU810
	.uleb128 .LVU810
	.uleb128 .LVU852
	.uleb128 .LVU859
	.uleb128 .LVU862
.LLST26:
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU801
	.uleb128 .LVU801
	.uleb128 0
.LLST20:
	.4byte	.LVL146
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152
	.4byte	.LFE105
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
.LVUS21:
	.uleb128 .LVU794
	.uleb128 0
.LLST21:
	.4byte	.LVL149
	.4byte	.LFE105
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU530
	.uleb128 .LVU530
	.uleb128 0
.LLST19:
	.4byte	.LVL108
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
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
.LVUS11:
	.uleb128 0
	.uleb128 .LVU384
	.uleb128 .LVU384
	.uleb128 .LVU406
	.uleb128 .LVU406
	.uleb128 .LVU415
	.uleb128 .LVU415
	.uleb128 .LVU443
	.uleb128 .LVU443
	.uleb128 0
.LLST11:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL88
	.4byte	.LVL91
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
	.4byte	.LVL91
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL99
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
.LVUS12:
	.uleb128 .LVU381
	.uleb128 .LVU385
	.uleb128 .LVU385
	.uleb128 .LVU467
	.uleb128 .LVU468
	.uleb128 .LVU486
.LLST12:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU420
	.uleb128 .LVU486
.LLST13:
	.4byte	.LVL93
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU422
	.uleb128 .LVU486
.LLST14:
	.4byte	.LVL94
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU424
	.uleb128 .LVU486
.LLST15:
	.4byte	.LVL95
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU426
	.uleb128 .LVU486
.LLST16:
	.4byte	.LVL96
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU428
	.uleb128 .LVU486
.LLST17:
	.4byte	.LVL97
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU382
	.uleb128 .LVU385
	.uleb128 .LVU385
	.uleb128 .LVU404
	.uleb128 .LVU415
	.uleb128 .LVU418
.LLST18:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 .LVU374
	.uleb128 .LVU374
	.uleb128 0
.LLST9:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL48
	.4byte	.LVL51
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
	.4byte	.LVL51
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL76
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
.LVUS10:
	.uleb128 .LVU147
	.uleb128 .LVU374
.LLST10:
	.4byte	.LVL46
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 0
.LLST0:
	.4byte	.LVL4
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE100
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
.LVUS1:
	.uleb128 .LVU31
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU66
	.uleb128 .LVU90
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 .LVU139
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU34
	.uleb128 .LVU44
	.uleb128 .LVU90
	.uleb128 .LVU100
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU36
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU52
	.uleb128 .LVU90
	.uleb128 .LVU96
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0xf
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	_ZL20overheat_last_hot_us
	.byte	0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	_ZL20overheat_last_hot_us
	.byte	0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	_ZL20overheat_last_hot_us
	.byte	0x23
	.uleb128 0x4
	.byte	0x22
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU48
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU90
	.uleb128 .LVU137
	.uleb128 .LVU139
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL14-1
	.4byte	.LVL16
	.2byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
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
	.byte	0x23
	.uleb128 0x15
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
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
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x15
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1d
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x15
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x18
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x15
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x11
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x7c
	.sleb128 21
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
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
	.byte	0x23
	.uleb128 0x15
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
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
	.byte	0x23
	.uleb128 0x15
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU71
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU76
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x7c
	.sleb128 20
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU76
	.uleb128 .LVU82
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x2c
	.byte	0x1e
	.byte	0x3
	.4byte	AXES
	.byte	0x23
	.uleb128 0x16
	.byte	0x22
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU103
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU137
.LLST7:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL32-1
	.4byte	.LVL35
	.2byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
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
	.byte	0x23
	.uleb128 0x15
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x20
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x23
	.uleb128 0x15
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1b
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	AXES
	.byte	0x23
	.uleb128 0x15
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x18
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x15
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40-1
	.2byte	0x11
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x79
	.sleb128 21
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL40-1
	.4byte	.LVL41
	.2byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x24
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
	.byte	0x23
	.uleb128 0x15
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x48
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU127
	.uleb128 .LVU132
.LLST8:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x2c
	.byte	0x1e
	.byte	0x3
	.4byte	AXES
	.byte	0x23
	.uleb128 0x14
	.byte	0x22
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xdc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
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
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0
	.4byte	0
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	0
	.4byte	0
	.4byte	.LBB148
	.4byte	.LBE148
	.4byte	.LBB149
	.4byte	.LBE149
	.4byte	0
	.4byte	0
	.4byte	.LFB103
	.4byte	.LFE103
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	.LFB100
	.4byte	.LFE100
	.4byte	.LFB101
	.4byte	.LFE101
	.4byte	.LFB102
	.4byte	.LFE102
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
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LFB123
	.4byte	.LFE123
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF214:
	.string	"SOC_RTC_SLOW_CLK_SRC_RC_FAST_D256"
.LASF281:
	.string	"err_step_0"
.LASF282:
	.string	"err_step_1"
.LASF32:
	.string	"int8_t"
.LASF284:
	.string	"err_step_3"
.LASF285:
	.string	"err_step_4"
.LASF286:
	.string	"err_step_5"
.LASF287:
	.string	"err_step_6"
.LASF288:
	.string	"err_step_7"
.LASF289:
	.string	"err_step_8"
.LASF290:
	.string	"err_step_9"
.LASF273:
	.string	"_Z16monitor_log_taskPv"
.LASF293:
	.string	"pwmconf"
.LASF300:
	.string	"chopconf"
.LASF133:
	.string	"GPIO_PULLDOWN_DISABLE"
.LASF142:
	.string	"AXIS_RA"
.LASF340:
	.string	"tmc_init_step_0"
.LASF335:
	.string	"tmc_init_step_1"
.LASF329:
	.string	"tmc_init_step_2"
.LASF325:
	.string	"tmc_init_step_3"
.LASF321:
	.string	"tmc_init_step_4"
.LASF317:
	.string	"tmc_init_step_5"
.LASF313:
	.string	"tmc_init_step_6"
.LASF116:
	.string	"GPIO_INTR_LOW_LEVEL"
.LASF308:
	.string	"tmc_init_step_8"
.LASF59:
	.string	"uint_fast64_t"
.LASF36:
	.string	"int32_t"
.LASF20:
	.string	"__uint_least8_t"
.LASF125:
	.string	"GPIO_MODE_INPUT_OUTPUT_OD"
.LASF333:
	.string	"isUnderVoltage"
.LASF111:
	.string	"15gpio_int_type_t"
.LASF205:
	.string	"ESP_ERR_TMC_ENN_LOW"
.LASF320:
	.string	"err_write"
.LASF163:
	.string	"scale_auto"
.LASF47:
	.string	"uint_least16_t"
.LASF52:
	.string	"int_fast8_t"
.LASF330:
	.string	"_Z15tmc_init_step_26axis_t"
.LASF183:
	.string	"log_level"
.LASF213:
	.string	"SOC_RTC_SLOW_CLK_SRC_XTAL32K"
.LASF57:
	.string	"uint_fast32_t"
.LASF236:
	.string	"SOC_MOD_CLK_XTAL"
.LASF223:
	.string	"SOC_RTC_FAST_CLK_SRC_XTAL_DIV"
.LASF6:
	.string	"__uint8_t"
.LASF172:
	.string	"15esp_log_level_t"
.LASF143:
	.string	"AXIS_DEC"
.LASF178:
	.string	"ESP_LOG_VERBOSE"
.LASF120:
	.string	"11gpio_mode_t"
.LASF361:
	.string	"_Z18log_default_config6axis_t"
.LASF114:
	.string	"GPIO_INTR_NEGEDGE"
.LASF237:
	.string	"SOC_MOD_CLK_TEMP_SENSOR"
.LASF13:
	.string	"long int"
.LASF196:
	.string	"ESP_LOG_ARGS_TYPE_64BITS"
.LASF160:
	.string	"axis_config_t"
.LASF360:
	.string	"tmc_overheat_reset"
.LASF295:
	.string	"_Z25handle_drivers_connectionv"
.LASF280:
	.string	"_Z21initialize_tmc_driver6axis_t"
.LASF185:
	.string	"require_formatting"
.LASF270:
	.string	"pwm_auto"
.LASF156:
	.string	"full_steps"
.LASF347:
	.string	"tmc_check_connection"
.LASF260:
	.string	"tmc_read"
.LASF363:
	.string	"tmc_cs_to_ma"
.LASF122:
	.string	"GPIO_MODE_INPUT"
.LASF362:
	.string	"_Z18tmc_overheat_reset6axis_t"
.LASF357:
	.string	"_Z18tmc_check_overheat6axis_t"
.LASF51:
	.string	"uint_least64_t"
.LASF283:
	.string	"err_step_2"
.LASF4:
	.string	"signed char"
.LASF33:
	.string	"uint8_t"
.LASF187:
	.string	"dis_timestamp"
.LASF63:
	.string	"GPIO_NUM_0"
.LASF64:
	.string	"GPIO_NUM_1"
.LASF65:
	.string	"GPIO_NUM_2"
.LASF66:
	.string	"GPIO_NUM_3"
.LASF67:
	.string	"GPIO_NUM_4"
.LASF68:
	.string	"GPIO_NUM_5"
.LASF69:
	.string	"GPIO_NUM_6"
.LASF70:
	.string	"GPIO_NUM_7"
.LASF71:
	.string	"GPIO_NUM_8"
.LASF72:
	.string	"GPIO_NUM_9"
.LASF235:
	.string	"SOC_MOD_CLK_RC_FAST_D256"
.LASF200:
	.string	"axis_t"
.LASF346:
	.string	"step"
.LASF251:
	.string	"gpio_config"
.LASF171:
	.string	"gpio_config_t"
.LASF328:
	.string	"err_chop"
.LASF22:
	.string	"__uint_least16_t"
.LASF229:
	.string	"SOC_MOD_CLK_APB"
.LASF309:
	.string	"_Z15tmc_init_step_86axis_t"
.LASF7:
	.string	"unsigned char"
.LASF62:
	.string	"GPIO_NUM_NC"
.LASF136:
	.string	"bool"
.LASF197:
	.string	"ESP_LOG_ARGS_TYPE_POINTER"
.LASF219:
	.string	"SOC_RTC_FAST_CLK_SRC_XTAL_D2"
.LASF310:
	.string	"tmc_init_step_7"
.LASF306:
	.string	"tmc_init_step_9"
.LASF123:
	.string	"GPIO_MODE_OUTPUT"
.LASF19:
	.string	"__int_least8_t"
.LASF217:
	.string	"soc_rtc_slow_clk_src_t"
.LASF140:
	.string	"TMC_R_INTERNAL_MOHM"
.LASF203:
	.string	"ESP_ERR_TMC_NO_RESPONSE"
.LASF278:
	.string	"initialize_tmc_driver"
.LASF60:
	.string	"char"
.LASF238:
	.string	"SOC_MOD_CLK_INVALID"
.LASF49:
	.string	"uint_least32_t"
.LASF10:
	.string	"__uint16_t"
.LASF195:
	.string	"ESP_LOG_ARGS_TYPE_32BITS"
.LASF165:
	.string	"grad_auto"
.LASF253:
	.string	"esp_log"
.LASF301:
	.string	"err_chopconf"
.LASF194:
	.string	"ESP_LOG_ARGS_TYPE_NONE"
.LASF225:
	.string	"16soc_module_clk_t"
.LASF73:
	.string	"GPIO_NUM_10"
.LASF112:
	.string	"GPIO_INTR_DISABLE"
.LASF267:
	.string	"__esp_log_config"
.LASF365:
	.string	"double"
.LASF220:
	.string	"SOC_RTC_FAST_CLK_SRC_RC_FAST"
.LASF344:
	.string	"monitor_log_axis"
.LASF46:
	.string	"int_least16_t"
.LASF174:
	.string	"ESP_LOG_ERROR"
.LASF318:
	.string	"_Z15tmc_init_step_56axis_t"
.LASF247:
	.string	"overheat_last_hot_us"
.LASF331:
	.string	"gstat"
.LASF144:
	.string	"AXIS_COUNT"
.LASF132:
	.string	"15gpio_pulldown_t"
.LASF230:
	.string	"SOC_MOD_CLK_PLL_F80M"
.LASF232:
	.string	"SOC_MOD_CLK_PLL_D2"
.LASF334:
	.string	"gstat_err"
.LASF364:
	.string	"_Z12tmc_cs_to_mah"
.LASF148:
	.string	"step_pin"
.LASF162:
	.string	"scale_sum"
.LASF356:
	.string	"tmc_check_overheat"
.LASF121:
	.string	"GPIO_MODE_DISABLE"
.LASF26:
	.string	"__uint_least64_t"
.LASF249:
	.string	"MONITOR_AXES"
.LASF141:
	.string	"TMC_FULL_SCALE_MA"
.LASF221:
	.string	"SOC_RTC_FAST_CLK_SRC_INVALID"
.LASF322:
	.string	"_Z15tmc_init_step_46axis_t"
.LASF261:
	.string	"_Z8tmc_read6axis_thPm"
.LASF234:
	.string	"SOC_MOD_CLK_RC_FAST"
.LASF124:
	.string	"GPIO_MODE_OUTPUT_OD"
.LASF272:
	.string	"tmc_driver_off"
.LASF314:
	.string	"_Z15tmc_init_step_66axis_t"
.LASF161:
	.string	"tmc_at_state_t"
.LASF119:
	.string	"gpio_int_type_t"
.LASF319:
	.string	"ihold_irun"
.LASF266:
	.string	"mscnt"
.LASF134:
	.string	"GPIO_PULLDOWN_ENABLE"
.LASF332:
	.string	"isOverTemperature"
.LASF343:
	.string	"log_default_config"
.LASF18:
	.string	"__uint64_t"
.LASF15:
	.string	"long unsigned int"
.LASF149:
	.string	"dir_pin"
.LASF159:
	.string	"belt_ratio"
.LASF137:
	.string	"TMC_VSENSE"
.LASF355:
	.string	"status"
.LASF24:
	.string	"__uint_least32_t"
.LASF224:
	.string	"soc_rtc_fast_clk_src_t"
.LASF50:
	.string	"int_least64_t"
.LASF296:
	.string	"err_init"
.LASF353:
	.string	"_Z20tmc_check_connection6axis_t"
.LASF264:
	.string	"cs_actual"
.LASF336:
	.string	"_Z15tmc_init_step_16axis_t"
.LASF43:
	.string	"uintptr_t"
.LASF109:
	.string	"gpio_num_t"
.LASF371:
	.string	"__for_range"
.LASF373:
	.string	"__builtin_memset"
.LASF154:
	.string	"mres"
.LASF268:
	.string	"args"
.LASF299:
	.string	"_Z16tmc_init_step_116axis_t"
.LASF29:
	.string	"__intptr_t"
.LASF130:
	.string	"GPIO_PULLUP_ENABLE"
.LASF14:
	.string	"__uint32_t"
.LASF246:
	.string	"overheat_current_reduced"
.LASF17:
	.string	"long long int"
.LASF113:
	.string	"GPIO_INTR_POSEDGE"
.LASF139:
	.string	"TMC_R_SENSE_MOHM"
.LASF48:
	.string	"int_least32_t"
.LASF126:
	.string	"GPIO_MODE_INPUT_OUTPUT"
.LASF188:
	.string	"binary_mode"
.LASF61:
	.string	"esp_err_t"
.LASF256:
	.string	"_Z15tmc_err_to_namei"
.LASF41:
	.string	"uintmax_t"
.LASF74:
	.string	"GPIO_NUM_11"
.LASF75:
	.string	"GPIO_NUM_12"
.LASF76:
	.string	"GPIO_NUM_13"
.LASF77:
	.string	"GPIO_NUM_14"
.LASF78:
	.string	"GPIO_NUM_15"
.LASF79:
	.string	"GPIO_NUM_16"
.LASF80:
	.string	"GPIO_NUM_17"
.LASF81:
	.string	"GPIO_NUM_18"
.LASF82:
	.string	"GPIO_NUM_19"
.LASF108:
	.string	"GPIO_NUM_MAX"
.LASF248:
	.string	"TAG_MONITOR"
.LASF110:
	.string	"10gpio_num_t"
.LASF366:
	.string	"float"
.LASF367:
	.ascii	"GNU C++26 15.2.0 -ftls-model=local-exec -mdynconfig=xtensa_e"
	.ascii	"sp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gn"
	.string	"u++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec"
.LASF27:
	.string	"__intmax_t"
.LASF155:
	.string	"shaft"
.LASF1:
	.string	"unsigned int"
.LASF83:
	.string	"GPIO_NUM_20"
.LASF84:
	.string	"GPIO_NUM_21"
.LASF85:
	.string	"GPIO_NUM_26"
.LASF86:
	.string	"GPIO_NUM_27"
.LASF87:
	.string	"GPIO_NUM_28"
.LASF88:
	.string	"GPIO_NUM_29"
.LASF190:
	.string	"opts"
.LASF42:
	.string	"intptr_t"
.LASF257:
	.string	"_Z9tmc_write6axis_thm"
.LASF297:
	.string	"dec_ok"
.LASF254:
	.string	"tmc_err_to_name"
.LASF245:
	.string	"uart_port_t"
.LASF204:
	.string	"ESP_ERR_TMC_WRONG_CHIP"
.LASF175:
	.string	"ESP_LOG_WARN"
.LASF311:
	.string	"_Z15tmc_init_step_76axis_t"
.LASF54:
	.string	"int_fast16_t"
.LASF89:
	.string	"GPIO_NUM_30"
.LASF90:
	.string	"GPIO_NUM_31"
.LASF91:
	.string	"GPIO_NUM_32"
.LASF92:
	.string	"GPIO_NUM_33"
.LASF93:
	.string	"GPIO_NUM_34"
.LASF94:
	.string	"GPIO_NUM_35"
.LASF95:
	.string	"GPIO_NUM_36"
.LASF96:
	.string	"GPIO_NUM_37"
.LASF97:
	.string	"GPIO_NUM_38"
.LASF98:
	.string	"GPIO_NUM_39"
.LASF207:
	.string	"ESP_ERR_TMC_RA_NOT_CONFIGURED"
.LASF182:
	.string	"16esp_log_config_t"
.LASF345:
	.string	"log_step_success"
.LASF179:
	.string	"ESP_LOG_MAX"
.LASF212:
	.string	"SOC_RTC_SLOW_CLK_SRC_RC_SLOW"
.LASF369:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/build/dev"
.LASF198:
	.string	"esp_log_args_type_t"
.LASF117:
	.string	"GPIO_INTR_HIGH_LEVEL"
.LASF262:
	.string	"__for_begin"
.LASF2:
	.string	"__gnu_cxx"
.LASF338:
	.string	"currVersion"
.LASF166:
	.string	"pin_bit_mask"
.LASF99:
	.string	"GPIO_NUM_40"
.LASF100:
	.string	"GPIO_NUM_41"
.LASF101:
	.string	"GPIO_NUM_42"
.LASF102:
	.string	"GPIO_NUM_43"
.LASF103:
	.string	"GPIO_NUM_44"
.LASF104:
	.string	"GPIO_NUM_45"
.LASF105:
	.string	"GPIO_NUM_46"
.LASF106:
	.string	"GPIO_NUM_47"
.LASF107:
	.string	"GPIO_NUM_48"
.LASF45:
	.string	"uint_least8_t"
.LASF44:
	.string	"int_least8_t"
.LASF216:
	.string	"SOC_RTC_SLOW_CLK_SRC_DEFAULT"
.LASF226:
	.string	"SOC_MOD_CLK_CPU"
.LASF40:
	.string	"intmax_t"
.LASF279:
	.string	"_Z17tmc_read_at_state6axis_tP14tmc_at_state_t"
.LASF31:
	.string	"long double"
.LASF128:
	.string	"13gpio_pullup_t"
.LASF323:
	.string	"gconf"
.LASF269:
	.string	"pwm_scale"
.LASF354:
	.string	"_Z18tmc_log_drv_status6axis_t"
.LASF231:
	.string	"SOC_MOD_CLK_PLL_F160M"
.LASF241:
	.string	"UART_NUM_0"
.LASF242:
	.string	"UART_NUM_1"
.LASF243:
	.string	"UART_NUM_2"
.LASF348:
	.string	"ATTEMPTS"
.LASF359:
	.string	"now_us"
.LASF252:
	.string	"vTaskDelay"
.LASF239:
	.string	"soc_module_clk_t"
.LASF209:
	.string	"ESP_ERR_TMC_INVALID_CRC"
.LASF304:
	.string	"tmc_init_step_10"
.LASF298:
	.string	"tmc_init_step_11"
.LASF258:
	.string	"esp_log_timestamp"
.LASF5:
	.string	"__int8_t"
.LASF0:
	.string	"long long unsigned int"
.LASF35:
	.string	"uint16_t"
.LASF164:
	.string	"ofs_auto"
.LASF233:
	.string	"SOC_MOD_CLK_XTAL32K"
.LASF158:
	.string	"worm_teeth"
.LASF181:
	.string	"13gpio_config_t"
.LASF21:
	.string	"__int_least16_t"
.LASF58:
	.string	"int_fast64_t"
.LASF263:
	.string	"__for_end"
.LASF316:
	.string	"write_tpower_down"
.LASF192:
	.string	"esp_log_config_t"
.LASF326:
	.string	"_Z15tmc_init_step_36axis_t"
.LASF208:
	.string	"ESP_ERR_TMC_DEC_NOT_CONFIGURED"
.LASF201:
	.string	"tmc_err_t"
.LASF173:
	.string	"ESP_LOG_NONE"
.LASF199:
	.string	"TickType_t"
.LASF3:
	.string	"__cxx11"
.LASF372:
	.string	"memset"
.LASF350:
	.string	"version"
.LASF176:
	.string	"ESP_LOG_INFO"
.LASF255:
	.string	"tmc_write"
.LASF202:
	.string	"ESP_ERR_TMC_BASE"
.LASF8:
	.string	"__int16_t"
.LASF210:
	.string	"ESP_ERR_TMC_VERIFY_FAILED"
.LASF291:
	.string	"err_step_10"
.LASF292:
	.string	"err_step_11"
.LASF193:
	.string	"19esp_log_args_type_t"
.LASF135:
	.string	"gpio_pulldown_t"
.LASF30:
	.string	"__uintptr_t"
.LASF127:
	.string	"gpio_mode_t"
.LASF227:
	.string	"SOC_MOD_CLK_RTC_FAST"
.LASF211:
	.string	"22soc_rtc_slow_clk_src_t"
.LASF244:
	.string	"UART_NUM_MAX"
.LASF352:
	.string	"tmc_log_drv_status"
.LASF259:
	.string	"esp_timer_get_time"
.LASF206:
	.string	"ESP_ERR_TMC_WRITE_LOST"
.LASF56:
	.string	"int_fast32_t"
.LASF151:
	.string	"ihold"
.LASF145:
	.string	"name"
.LASF337:
	.string	"regValue"
.LASF53:
	.string	"uint_fast8_t"
.LASF341:
	.string	"_Z15tmc_init_step_06axis_t"
.LASF9:
	.string	"short int"
.LASF39:
	.string	"uint64_t"
.LASF167:
	.string	"mode"
.LASF358:
	.string	"is_hot"
.LASF271:
	.string	"monitor_log_task"
.LASF34:
	.string	"int16_t"
.LASF131:
	.string	"gpio_pullup_t"
.LASF169:
	.string	"pull_down_en"
.LASF305:
	.string	"_Z16tmc_init_step_106axis_t"
.LASF303:
	.string	"err_read_chopconf"
.LASF368:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-driver.cpp"
.LASF25:
	.string	"__int_least64_t"
.LASF147:
	.string	"en_pin"
.LASF28:
	.string	"__uintmax_t"
.LASF315:
	.string	"tpower_down"
.LASF327:
	.string	"chopConf"
.LASF184:
	.string	"constrained_env"
.LASF307:
	.string	"_Z15tmc_init_step_96axis_t"
.LASF294:
	.string	"handle_drivers_connection"
.LASF276:
	.string	"_Z13tmc_driver_on6axis_t"
.LASF177:
	.string	"ESP_LOG_DEBUG"
.LASF16:
	.string	"__int64_t"
.LASF186:
	.string	"dis_color"
.LASF129:
	.string	"GPIO_PULLUP_DISABLE"
.LASF115:
	.string	"GPIO_INTR_ANYEDGE"
.LASF351:
	.string	"addr_by_pins"
.LASF312:
	.string	"err_pwmconf"
.LASF37:
	.string	"uint32_t"
.LASF274:
	.string	"_Z14tmc_driver_off6axis_t"
.LASF339:
	.string	"isEnnPinHIGH"
.LASF55:
	.string	"uint_fast16_t"
.LASF275:
	.string	"tmc_driver_on"
.LASF152:
	.string	"irun_hot"
.LASF250:
	.string	"gpio_set_level"
.LASF23:
	.string	"__int_least32_t"
.LASF349:
	.string	"ioin"
.LASF180:
	.string	"esp_log_level_t"
.LASF150:
	.string	"irun"
.LASF11:
	.string	"short unsigned int"
.LASF370:
	.string	"AXES"
.LASF240:
	.string	"11uart_port_t"
.LASF146:
	.string	"uart_addr"
.LASF302:
	.string	"chopconf_read"
.LASF12:
	.string	"__int32_t"
.LASF38:
	.string	"int64_t"
.LASF118:
	.string	"GPIO_INTR_MAX"
.LASF153:
	.string	"pwm_grad"
.LASF265:
	.string	"temp"
.LASF218:
	.string	"22soc_rtc_fast_clk_src_t"
.LASF138:
	.string	"TMC_V_FS_MV"
.LASF170:
	.string	"intr_type"
.LASF157:
	.string	"microsteps"
.LASF277:
	.string	"tmc_read_at_state"
.LASF189:
	.string	"reserved"
.LASF191:
	.string	"data"
.LASF324:
	.string	"err_gconf"
.LASF168:
	.string	"pull_up_en"
.LASF342:
	.string	"pGPIOConfig"
.LASF222:
	.string	"SOC_RTC_FAST_CLK_SRC_DEFAULT"
.LASF228:
	.string	"SOC_MOD_CLK_RTC_SLOW"
.LASF215:
	.string	"SOC_RTC_SLOW_CLK_SRC_INVALID"
	.ident	"GCC: (crosstool-NG esp-15.2.0_20251204) 15.2.0"
