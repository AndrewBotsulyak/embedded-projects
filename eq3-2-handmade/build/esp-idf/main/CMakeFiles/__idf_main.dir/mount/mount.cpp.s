	.file	"mount.cpp"
# GNU C++26 (crosstool-NG esp-15.2.0_20251204) version 15.2.0 (xtensa-esp-elf)
#	compiled by GNU C version Debian Clang 19.1.7 (3+b1), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -ftls-model=local-exec -mdynconfig=xtensa_esp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gnu++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec
	.text
.Ltext0:
	.file 1 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp"
	.section	.text._ZL8dir_axis11mount_dir_t,"ax",@progbits
	.align	4
	.type	_ZL8dir_axis11mount_dir_t, @function
_ZL8dir_axis11mount_dir_t:
.LVL0:
.LFB13:
	.loc 1 13 41 view -0
	.loc 1 13 41 is_stmt 0 view .LVU1
	entry	sp, 32	#
.LCFI0:
	.loc 1 14 5 is_stmt 1 view .LVU2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:14:     return (dir == MOUNT_DIR_N || dir == MOUNT_DIR_S) ? AXIS_DEC : AXIS_RA;
	.loc 1 14 55 is_stmt 0 view .LVU3
	bgeui	a2, 2, .L3	# dir,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:14:     return (dir == MOUNT_DIR_N || dir == MOUNT_DIR_S) ? AXIS_DEC : AXIS_RA;
	.loc 1 14 68 discriminator 1 view .LVU4
	movi.n	a2, 1	# <retval>,
.LVL1:
	.loc 1 14 68 discriminator 1 view .LVU5
	j	.L1		#
.LVL2:
.L3:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:14:     return (dir == MOUNT_DIR_N || dir == MOUNT_DIR_S) ? AXIS_DEC : AXIS_RA;
	.loc 1 14 68 discriminator 2 view .LVU6
	movi.n	a2, 0	# <retval>,
.LVL3:
.L1:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:15: }
	.loc 1 15 1 view .LVU7
	retw.n	
.LFE13:
	.size	_ZL8dir_axis11mount_dir_t, .-_ZL8dir_axis11mount_dir_t
	.section	.text._ZL11dir_forward11mount_dir_t,"ax",@progbits
	.align	4
	.type	_ZL11dir_forward11mount_dir_t, @function
_ZL11dir_forward11mount_dir_t:
.LVL4:
.LFB14:
	.loc 1 20 42 is_stmt 1 view -0
	.loc 1 20 42 is_stmt 0 view .LVU9
	entry	sp, 32	#
.LCFI1:
	.loc 1 21 5 is_stmt 1 view .LVU10
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:21:     return dir == MOUNT_DIR_N || dir == MOUNT_DIR_W;
	.loc 1 21 16 is_stmt 0 view .LVU11
	nsau	a8, a2	# _1, dir
	srli	a8, a8, 5	# _1, _1,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:21:     return dir == MOUNT_DIR_N || dir == MOUNT_DIR_W;
	.loc 1 21 38 view .LVU12
	addi	a2, a2, -3	# tmp54, dir,
.LVL5:
	.loc 1 21 38 view .LVU13
	nsau	a2, a2	# _2, tmp54
.LVL6:
	.loc 1 21 38 view .LVU14
	srli	a2, a2, 5	# _2, _2,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:22: }
	.loc 1 22 1 view .LVU15
	or	a2, a8, a2	#, _1, _2
	retw.n	
.LFE14:
	.size	_ZL11dir_forward11mount_dir_t, .-_ZL11dir_forward11mount_dir_t
	.section	.text._ZL14to_motion_rate12mount_rate_t,"ax",@progbits
	.align	4
	.type	_ZL14to_motion_rate12mount_rate_t, @function
_ZL14to_motion_rate12mount_rate_t:
.LVL7:
.LFB15:
	.loc 1 24 56 is_stmt 1 view -0
	.loc 1 24 56 is_stmt 0 view .LVU17
	entry	sp, 32	#
.LCFI2:
	.loc 1 25 5 is_stmt 1 view .LVU18
	beqi	a2, 2, .L6	# rate,,
	bgeui	a2, 3, .L7	# rate,,
	beqz.n	a2, .L6	# rate,
	beqi	a2, 1, .L6	# rate,,
	j	.L8		#
.L7:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:29:         case MOUNT_RATE_SLEW:   return MOTION_RATE_SLEW;
	.loc 1 29 38 is_stmt 0 view .LVU19
	movi.n	a2, 3	# rate,
.LVL8:
	.loc 1 29 38 view .LVU20
	j	.L6		#
.LVL9:
.L8:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:31:     return MOTION_RATE_SLEW;
	.loc 1 31 12 view .LVU21
	movi.n	a2, 3	# rate,
.LVL10:
.L6:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:32: }
	.loc 1 32 1 view .LVU22
	retw.n	
.LFE15:
	.size	_ZL14to_motion_rate12mount_rate_t, .-_ZL14to_motion_rate12mount_rate_t
	.section	.rodata._Z10mount_move11mount_dir_t.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"mount"
	.align	4
.LC3:
	.base64	"SSAoJWx1KSAlczog0JTQstC40LbQtdC90LjQtTogJXMKAA=="
	.section	.text._Z10mount_move11mount_dir_t,"ax",@progbits
	.literal_position
	.literal .LC0, _ZL8DIR_NAME
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.align	4
	.global	_Z10mount_move11mount_dir_t
	.type	_Z10mount_move11mount_dir_t, @function
_Z10mount_move11mount_dir_t:
.LVL11:
.LFB16:
	.loc 1 34 39 is_stmt 1 view -0
	.loc 1 34 39 is_stmt 0 view .LVU24
	entry	sp, 32	#
.LCFI3:
	.loc 1 35 5 is_stmt 1 view .LVU25
	.loc 1 35 10 view .LVU26
	.loc 1 35 15 view .LVU27
	.loc 1 35 47 view .LVU28
	.loc 1 35 52 view .LVU29
	.loc 1 35 99 discriminator 2 view .LVU30
	.loc 1 35 99 discriminator 6 view .LVU31
	.loc 1 35 99 discriminator 10 view .LVU32
.LBB2:
	.loc 1 35 101 discriminator 14 view .LVU33
.LBB3:
	.loc 1 35 126 discriminator 14 view .LVU34
	.loc 1 35 161 discriminator 14 view .LVU35
	.loc 1 35 201 view .LVU36
.LBE3:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:35:     ESP_LOGI(TAG, "Движение: %s", DIR_NAME[dir]);
	.loc 1 35 108 is_stmt 0 discriminator 14 view .LVU37
	call8	esp_log_timestamp		#
.LVL12:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:35:     ESP_LOGI(TAG, "Движение: %s", DIR_NAME[dir]);
	.loc 1 35 88 discriminator 17 view .LVU38
	l32r	a8, .LC0	#, tmp52
	addx4	a8, a2, a8	#, tmp54, dir, tmp52
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:35:     ESP_LOGI(TAG, "Движение: %s", DIR_NAME[dir]);
	.loc 1 35 108 discriminator 17 view .LVU39
	l32r	a11, .LC2	#, tmp55
	l32i.n	a15, a8, 0	# DIR_NAME[dir$19_13],
	mov.n	a14, a11	#, tmp55
	mov.n	a13, a10	#, _11
	l32r	a12, .LC4	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL13:
	.loc 1 35 47 is_stmt 1 view .LVU40
	.loc 1 35 10 view .LVU41
.LBE2:
	.loc 1 35 5 view .LVU42
	.loc 1 36 5 view .LVU43
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:36:     return motion_move(dir_axis(dir), dir_forward(dir));
	.loc 1 36 23 is_stmt 0 view .LVU44
	mov.n	a10, a2	#, dir
	call8	_ZL8dir_axis11mount_dir_t		#
.LVL14:
	mov.n	a7, a10	# _15, _15
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:36:     return motion_move(dir_axis(dir), dir_forward(dir));
	.loc 1 36 50 discriminator 1 view .LVU45
	mov.n	a10, a2	#, dir
	call8	_ZL11dir_forward11mount_dir_t		#
.LVL15:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:36:     return motion_move(dir_axis(dir), dir_forward(dir));
	.loc 1 36 23 discriminator 2 view .LVU46
	mov.n	a11, a10	#, tmp63
	mov.n	a10, a7	#, _15
	call8	_Z11motion_move6axis_tb		#
.LVL16:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:37: }
	.loc 1 37 1 view .LVU47
	mov.n	a2, a10	#, <retval>
.LVL17:
	.loc 1 37 1 view .LVU48
	retw.n	
.LFE16:
	.size	_Z10mount_move11mount_dir_t, .-_Z10mount_move11mount_dir_t
	.section	.rodata._Z10mount_stop11mount_dir_t.str1.4,"aMS",@progbits,1
	.align	4
.LC7:
	.base64	"SSAoJWx1KSAlczog0KHRgtC+0L86ICVzCgA="
	.section	.text._Z10mount_stop11mount_dir_t,"ax",@progbits
	.literal_position
	.literal .LC5, _ZL8DIR_NAME
	.literal .LC6, .LC1
	.literal .LC8, .LC7
	.align	4
	.global	_Z10mount_stop11mount_dir_t
	.type	_Z10mount_stop11mount_dir_t, @function
_Z10mount_stop11mount_dir_t:
.LVL18:
.LFB17:
	.loc 1 39 39 is_stmt 1 view -0
	.loc 1 39 39 is_stmt 0 view .LVU50
	entry	sp, 32	#
.LCFI4:
	.loc 1 40 5 is_stmt 1 view .LVU51
	.loc 1 40 10 view .LVU52
	.loc 1 40 15 view .LVU53
	.loc 1 40 47 view .LVU54
	.loc 1 40 52 view .LVU55
	.loc 1 40 91 discriminator 2 view .LVU56
	.loc 1 40 91 discriminator 6 view .LVU57
	.loc 1 40 91 discriminator 10 view .LVU58
.LBB4:
	.loc 1 40 93 discriminator 14 view .LVU59
.LBB5:
	.loc 1 40 118 discriminator 14 view .LVU60
	.loc 1 40 153 discriminator 14 view .LVU61
	.loc 1 40 193 view .LVU62
.LBE5:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:40:     ESP_LOGI(TAG, "Стоп: %s", DIR_NAME[dir]);
	.loc 1 40 100 is_stmt 0 discriminator 14 view .LVU63
	call8	esp_log_timestamp		#
.LVL19:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:40:     ESP_LOGI(TAG, "Стоп: %s", DIR_NAME[dir]);
	.loc 1 40 80 discriminator 17 view .LVU64
	l32r	a8, .LC5	#, tmp50
	addx4	a8, a2, a8	#, tmp52, dir, tmp50
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:40:     ESP_LOGI(TAG, "Стоп: %s", DIR_NAME[dir]);
	.loc 1 40 100 discriminator 17 view .LVU65
	l32r	a11, .LC6	#, tmp53
	l32i.n	a15, a8, 0	# DIR_NAME[dir$39_13],
	mov.n	a14, a11	#, tmp53
	mov.n	a13, a10	#, _11
	l32r	a12, .LC8	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL20:
	.loc 1 40 47 is_stmt 1 view .LVU66
	.loc 1 40 10 view .LVU67
.LBE4:
	.loc 1 40 5 view .LVU68
	.loc 1 41 5 view .LVU69
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:41:     return motion_stop(dir_axis(dir));
	.loc 1 41 23 is_stmt 0 view .LVU70
	mov.n	a10, a2	#, dir
	call8	_ZL8dir_axis11mount_dir_t		#
.LVL21:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:41:     return motion_stop(dir_axis(dir));
	.loc 1 41 23 discriminator 1 view .LVU71
	call8	_Z11motion_stop6axis_t		#
.LVL22:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:42: }
	.loc 1 42 1 view .LVU72
	mov.n	a2, a10	#, <retval>
.LVL23:
	.loc 1 42 1 view .LVU73
	retw.n	
.LFE17:
	.size	_Z10mount_stop11mount_dir_t, .-_Z10mount_stop11mount_dir_t
	.section	.rodata._Z14mount_stop_allv.str1.4,"aMS",@progbits,1
	.align	4
.LC10:
	.base64	"SSAoJWx1KSAlczog0KHRgtC+0L8g0LLRgdC10LPQvgoA"
	.section	.text._Z14mount_stop_allv,"ax",@progbits
	.literal_position
	.literal .LC9, .LC1
	.literal .LC11, .LC10
	.align	4
	.global	_Z14mount_stop_allv
	.type	_Z14mount_stop_allv, @function
_Z14mount_stop_allv:
.LFB18:
	.loc 1 44 28 is_stmt 1 view -0
	entry	sp, 32	#
.LCFI5:
	.loc 1 45 5 view .LVU75
	.loc 1 45 10 view .LVU76
	.loc 1 45 15 view .LVU77
	.loc 1 45 47 view .LVU78
	.loc 1 45 52 view .LVU79
	.loc 1 45 83 discriminator 2 view .LVU80
	.loc 1 45 83 discriminator 6 view .LVU81
	.loc 1 45 83 discriminator 10 view .LVU82
.LBB6:
	.loc 1 45 85 discriminator 14 view .LVU83
.LBB7:
	.loc 1 45 110 discriminator 14 view .LVU84
	.loc 1 45 145 discriminator 14 view .LVU85
	.loc 1 45 185 view .LVU86
.LBE7:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:45:     ESP_LOGI(TAG, "Стоп всего");
	.loc 1 45 92 is_stmt 0 discriminator 14 view .LVU87
	call8	esp_log_timestamp		#
.LVL24:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:45:     ESP_LOGI(TAG, "Стоп всего");
	.loc 1 45 92 discriminator 17 view .LVU88
	l32r	a11, .LC9	#, tmp46
	mov.n	a14, a11	#, tmp46
	mov.n	a13, a10	#, _10
	l32r	a12, .LC11	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL25:
	.loc 1 45 47 is_stmt 1 view .LVU89
	.loc 1 45 10 view .LVU90
.LBE6:
	.loc 1 45 5 view .LVU91
	.loc 1 46 5 view .LVU92
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:46:     return motion_abort();
	.loc 1 46 24 is_stmt 0 view .LVU93
	call8	_Z12motion_abortv		#
.LVL26:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:47: }
	.loc 1 47 1 view .LVU94
	mov.n	a2, a10	#, <retval>
	retw.n	
.LFE18:
	.size	_Z14mount_stop_allv, .-_Z14mount_stop_allv
	.section	.rodata._Z11mount_trackb.str1.4,"aMS",@progbits,1
	.align	4
.LC12:
	.base64	"0LLQutC70Y7Rh9C40YLRjAA="
	.align	4
.LC14:
	.base64	"0LLRi9C60LvRjtGH0LjRgtGMAA=="
	.align	4
.LC17:
	.base64	"SSAoJWx1KSAlczog0JLQtdC00LXQvdC40LU6ICVzCgA="
	.section	.text._Z11mount_trackb,"ax",@progbits
	.literal_position
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC16, .LC1
	.literal .LC18, .LC17
	.align	4
	.global	_Z11mount_trackb
	.type	_Z11mount_trackb, @function
_Z11mount_trackb:
.LVL27:
.LFB19:
	.loc 1 49 32 is_stmt 1 view -0
	.loc 1 49 32 is_stmt 0 view .LVU96
	entry	sp, 32	#
.LCFI6:
	extui	a2, a2, 0, 8	# on, on
	.loc 1 50 5 is_stmt 1 view .LVU97
	.loc 1 50 10 view .LVU98
	.loc 1 50 15 view .LVU99
	.loc 1 50 47 view .LVU100
	.loc 1 50 52 view .LVU101
	.loc 1 50 130 discriminator 2 view .LVU102
	.loc 1 50 130 discriminator 10 view .LVU103
	.loc 1 50 130 discriminator 18 view .LVU104
.LBB8:
	.loc 1 50 132 discriminator 26 view .LVU105
.LBB9:
	.loc 1 50 157 discriminator 26 view .LVU106
	.loc 1 50 192 discriminator 26 view .LVU107
	.loc 1 50 232 view .LVU108
.LBE9:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:50:     ESP_LOGI(TAG, "Ведение: %s", on ? "включить" : "выключить");
	.loc 1 50 139 is_stmt 0 discriminator 26 view .LVU109
	call8	esp_log_timestamp		#
.LVL28:
	mov.n	a13, a10	# _12, _12
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:50:     ESP_LOGI(TAG, "Ведение: %s", on ? "включить" : "выключить");
	.loc 1 50 139 discriminator 33 view .LVU110
	beqz.n	a2, .L14	# on,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:50:     ESP_LOGI(TAG, "Ведение: %s", on ? "включить" : "выключить");
	.loc 1 50 139 discriminator 34 view .LVU111
	l32r	a15, .LC13	#, iftmp$74_8
	j	.L13		#
.L14:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:50:     ESP_LOGI(TAG, "Ведение: %s", on ? "включить" : "выключить");
	.loc 1 50 139 discriminator 35 view .LVU112
	l32r	a15, .LC15	#, iftmp$74_8
.L13:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:50:     ESP_LOGI(TAG, "Ведение: %s", on ? "включить" : "выключить");
	.loc 1 50 139 discriminator 37 view .LVU113
	l32r	a11, .LC16	#, tmp50
	mov.n	a14, a11	#, tmp50
	l32r	a12, .LC18	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL29:
	.loc 1 50 47 is_stmt 1 view .LVU114
	.loc 1 50 10 view .LVU115
.LBE8:
	.loc 1 50 5 view .LVU116
	.loc 1 51 5 view .LVU117
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:51:     return motion_track(on);
	.loc 1 51 24 is_stmt 0 view .LVU118
	mov.n	a10, a2	#, on
	call8	_Z12motion_trackb		#
.LVL30:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:52: }
	.loc 1 52 1 view .LVU119
	mov.n	a2, a10	#, <retval>
.LVL31:
	.loc 1 52 1 view .LVU120
	retw.n	
.LFE19:
	.size	_Z11mount_trackb, .-_Z11mount_trackb
	.section	.text._Z14mount_set_rate12mount_rate_t,"ax",@progbits
	.align	4
	.global	_Z14mount_set_rate12mount_rate_t
	.type	_Z14mount_set_rate12mount_rate_t, @function
_Z14mount_set_rate12mount_rate_t:
.LVL32:
.LFB20:
	.loc 1 54 40 is_stmt 1 view -0
	.loc 1 54 40 is_stmt 0 view .LVU122
	entry	sp, 32	#
.LCFI7:
	mov.n	a10, a2	# rate, rate
	.loc 1 55 5 is_stmt 1 view .LVU123
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:55:     motion_set_rate(to_motion_rate(rate));
	.loc 1 55 20 is_stmt 0 view .LVU124
	call8	_ZL14to_motion_rate12mount_rate_t		#
.LVL33:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:55:     motion_set_rate(to_motion_rate(rate));
	.loc 1 55 20 discriminator 1 view .LVU125
	call8	_Z15motion_set_rate13motion_rate_t		#
.LVL34:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp:56: }
	.loc 1 56 1 view .LVU126
	retw.n	
.LFE20:
	.size	_Z14mount_set_rate12mount_rate_t, .-_Z14mount_set_rate12mount_rate_t
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC19:
	.base64	"0YHQtdCy0LXRgAA="
	.align	4
.LC20:
	.base64	"0Y7QswA="
	.align	4
.LC21:
	.base64	"0LLQvtGB0YLQvtC6AA=="
	.align	4
.LC22:
	.base64	"0LfQsNC/0LDQtAA="
	.section	.rodata._ZL8DIR_NAME,"a"
	.align	4
	.type	_ZL8DIR_NAME, @object
	.size	_ZL8DIR_NAME, 16
_ZL8DIR_NAME:
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI1-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI2-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI3-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI5-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI6-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI7-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/machine/_default_types.h"
	.file 3 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/sys/_stdint.h"
	.file 4 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/stdint.h"
	.file 5 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_common/include/esp_err.h"
	.file 6 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.h"
	.file 7 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_level.h"
	.file 8 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_config.h"
	.file 9 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/cstdint"
	.file 10 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/xtensa-esp-elf/include/c++/15.2.0/xtensa-esp-elf/esp32s3/no-rtti/bits/c++config.h"
	.file 11 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h"
	.file 12 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h"
	.file 13 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/stepper/motion.h"
	.file 14 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log.h"
	.file 15 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_timestamp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb56
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
	.byte	0x2
	.byte	0xd2
	.byte	0x15
	.4byte	0x46
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd7
	.byte	0x17
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0xdb
	.byte	0x13
	.4byte	0x65
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0xe0
	.byte	0x1c
	.4byte	0x78
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0xe4
	.byte	0x12
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe9
	.byte	0x1b
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0xed
	.byte	0x17
	.4byte	0xb1
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0xf2
	.byte	0x20
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x2
	.byte	0xf6
	.byte	0x15
	.4byte	0x46
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x2
	.byte	0xf8
	.byte	0x17
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x2
	.2byte	0x110
	.byte	0x13
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x2
	.2byte	0x112
	.byte	0x1c
	.4byte	0x78
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x2
	.2byte	0x126
	.byte	0x12
	.4byte	0x8b
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x2
	.2byte	0x128
	.byte	0x1b
	.4byte	0x9e
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x2
	.2byte	0x138
	.byte	0x17
	.4byte	0xb1
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x2
	.2byte	0x13a
	.byte	0x20
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x2
	.2byte	0x146
	.byte	0x17
	.4byte	0xb1
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x2
	.2byte	0x14e
	.byte	0x20
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x2
	.2byte	0x156
	.byte	0xd
	.4byte	0x151
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x2
	.2byte	0x158
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF29
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x3
	.byte	0x12
	.byte	0x12
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x3
	.byte	0x16
	.byte	0x13
	.4byte	0x4d
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x3
	.byte	0x1e
	.byte	0x13
	.4byte	0x59
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x3
	.byte	0x22
	.byte	0x14
	.4byte	0x6c
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x3
	.byte	0x2a
	.byte	0x13
	.4byte	0x7f
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x3
	.byte	0x2e
	.byte	0x14
	.4byte	0x92
	.uleb128 0x6
	.4byte	0x1a8
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x3
	.byte	0x36
	.byte	0x13
	.4byte	0xa5
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x3
	.byte	0x3a
	.byte	0x14
	.4byte	0xb8
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x3
	.byte	0x41
	.byte	0x14
	.4byte	0x12a
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x3
	.byte	0x46
	.byte	0x15
	.4byte	0x137
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x3
	.byte	0x4b
	.byte	0x14
	.4byte	0x144
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x3
	.byte	0x50
	.byte	0x15
	.4byte	0x158
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x4
	.byte	0x14
	.byte	0x18
	.4byte	0xc4
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x4
	.byte	0x15
	.byte	0x19
	.4byte	0xd0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x4
	.byte	0x1a
	.byte	0x19
	.4byte	0xdc
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x4
	.byte	0x1b
	.byte	0x1a
	.4byte	0xe9
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x4
	.byte	0x20
	.byte	0x19
	.4byte	0xf6
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x4
	.byte	0x21
	.byte	0x1a
	.4byte	0x103
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x4
	.byte	0x26
	.byte	0x19
	.4byte	0x110
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x4
	.byte	0x27
	.byte	0x1a
	.4byte	0x11d
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x4
	.byte	0x32
	.byte	0xf
	.4byte	0x151
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x4
	.byte	0x33
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x4
	.byte	0x3c
	.byte	0xf
	.4byte	0x151
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x4
	.byte	0x3d
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x4
	.byte	0x46
	.byte	0xf
	.4byte	0x151
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x4
	.byte	0x47
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x4
	.byte	0x50
	.byte	0x19
	.4byte	0xb1
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x4
	.byte	0x51
	.byte	0x22
	.4byte	0x25
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF58
	.uleb128 0x6
	.4byte	0x2c1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2c8
	.uleb128 0x6
	.4byte	0x2cd
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x5
	.byte	0x13
	.byte	0xd
	.4byte	0x151
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x13
	.byte	0x6
	.4byte	0x30f
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x1b
	.byte	0x6
	.4byte	0x33a
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x14
	.byte	0xe
	.4byte	.LASF131
	.4byte	0x377
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x7
	.byte	0x1c
	.byte	0x3
	.4byte	0x33a
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x77
	.byte	0x10
	.4byte	.LASF132
	.4byte	0x433
	.uleb128 0xc
	.byte	0x4
	.byte	0x8
	.byte	0x78
	.byte	0xb
	.4byte	0x42c
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.byte	0x79
	.byte	0x10
	.4byte	0x413
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x8
	.byte	0x7a
	.byte	0x1d
	.4byte	0x377
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x8
	.byte	0x7b
	.byte	0x16
	.4byte	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x8
	.byte	0x7c
	.byte	0x16
	.4byte	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x8
	.byte	0x7d
	.byte	0x16
	.4byte	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x8
	.byte	0x7e
	.byte	0x16
	.4byte	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x8
	.byte	0x7f
	.byte	0x16
	.4byte	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0x8
	.byte	0x80
	.byte	0x16
	.4byte	0x1a8
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0x8
	.byte	0x81
	.byte	0xb
	.4byte	0x399
	.uleb128 0xf
	.4byte	.LASF86
	.byte	0x8
	.byte	0x82
	.byte	0x12
	.4byte	0x1a8
	.byte	0
	.uleb128 0x10
	.4byte	0x390
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x8
	.byte	0x84
	.byte	0x3
	.4byte	0x383
	.uleb128 0x11
	.string	"std"
	.byte	0xa
	.2byte	0x150
	.byte	0xb
	.4byte	0x53f
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0xa
	.2byte	0x173
	.byte	0x41
	.uleb128 0x13
	.byte	0xa
	.2byte	0x173
	.byte	0x41
	.4byte	0x44c
	.uleb128 0x14
	.byte	0x9
	.byte	0x35
	.byte	0xb
	.4byte	0x16c
	.uleb128 0x14
	.byte	0x9
	.byte	0x36
	.byte	0xb
	.4byte	0x184
	.uleb128 0x14
	.byte	0x9
	.byte	0x37
	.byte	0xb
	.4byte	0x19c
	.uleb128 0x14
	.byte	0x9
	.byte	0x38
	.byte	0xb
	.4byte	0x1b9
	.uleb128 0x14
	.byte	0x9
	.byte	0x3a
	.byte	0xb
	.4byte	0x261
	.uleb128 0x14
	.byte	0x9
	.byte	0x3b
	.byte	0xb
	.4byte	0x279
	.uleb128 0x14
	.byte	0x9
	.byte	0x3c
	.byte	0xb
	.4byte	0x291
	.uleb128 0x14
	.byte	0x9
	.byte	0x3d
	.byte	0xb
	.4byte	0x2a9
	.uleb128 0x14
	.byte	0x9
	.byte	0x3f
	.byte	0xb
	.4byte	0x201
	.uleb128 0x14
	.byte	0x9
	.byte	0x40
	.byte	0xb
	.4byte	0x219
	.uleb128 0x14
	.byte	0x9
	.byte	0x41
	.byte	0xb
	.4byte	0x231
	.uleb128 0x14
	.byte	0x9
	.byte	0x42
	.byte	0xb
	.4byte	0x249
	.uleb128 0x14
	.byte	0x9
	.byte	0x44
	.byte	0xb
	.4byte	0x1d1
	.uleb128 0x14
	.byte	0x9
	.byte	0x45
	.byte	0xb
	.4byte	0x1e9
	.uleb128 0x14
	.byte	0x9
	.byte	0x47
	.byte	0xb
	.4byte	0x178
	.uleb128 0x14
	.byte	0x9
	.byte	0x48
	.byte	0xb
	.4byte	0x190
	.uleb128 0x14
	.byte	0x9
	.byte	0x49
	.byte	0xb
	.4byte	0x1a8
	.uleb128 0x14
	.byte	0x9
	.byte	0x4a
	.byte	0xb
	.4byte	0x1c5
	.uleb128 0x14
	.byte	0x9
	.byte	0x4c
	.byte	0xb
	.4byte	0x26d
	.uleb128 0x14
	.byte	0x9
	.byte	0x4d
	.byte	0xb
	.4byte	0x285
	.uleb128 0x14
	.byte	0x9
	.byte	0x4e
	.byte	0xb
	.4byte	0x29d
	.uleb128 0x14
	.byte	0x9
	.byte	0x4f
	.byte	0xb
	.4byte	0x2b5
	.uleb128 0x14
	.byte	0x9
	.byte	0x51
	.byte	0xb
	.4byte	0x20d
	.uleb128 0x14
	.byte	0x9
	.byte	0x52
	.byte	0xb
	.4byte	0x225
	.uleb128 0x14
	.byte	0x9
	.byte	0x53
	.byte	0xb
	.4byte	0x23d
	.uleb128 0x14
	.byte	0x9
	.byte	0x54
	.byte	0xb
	.4byte	0x255
	.uleb128 0x14
	.byte	0x9
	.byte	0x56
	.byte	0xb
	.4byte	0x1dd
	.uleb128 0x14
	.byte	0x9
	.byte	0x57
	.byte	0xb
	.4byte	0x1f5
	.byte	0
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0xa
	.2byte	0x175
	.byte	0xb
	.4byte	0x55f
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0xa
	.2byte	0x177
	.byte	0x41
	.uleb128 0x13
	.byte	0xa
	.2byte	0x177
	.byte	0x41
	.4byte	0x54c
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF90
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0xb
	.byte	0x29
	.byte	0x14
	.4byte	0x1b4
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0xb
	.byte	0x2b
	.byte	0x14
	.4byte	0x1b4
	.byte	0xb4
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0xb
	.byte	0x2c
	.byte	0x14
	.4byte	0x1b4
	.byte	0x6e
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0xb
	.byte	0x2d
	.byte	0x14
	.4byte	0x1b4
	.byte	0x14
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0xb
	.byte	0x33
	.byte	0x14
	.4byte	0x1b4
	.2byte	0x3d2
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x17
	.byte	0x6
	.4byte	0x5cd
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x20
	.byte	0x6
	.4byte	0x5f8
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.string	"TAG"
	.byte	0x1
	.byte	0x8
	.byte	0x14
	.4byte	0x2cd
	.uleb128 0x19
	.4byte	0x2d3
	.4byte	0x614
	.uleb128 0x1a
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x604
	.uleb128 0x1b
	.4byte	.LASF133
	.byte	0x1
	.byte	0xa
	.byte	0x1a
	.4byte	0x614
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL8DIR_NAME
	.uleb128 0x1c
	.4byte	.LASF105
	.byte	0xd
	.byte	0x42
	.byte	0xb
	.4byte	.LASF107
	.4byte	0x2d8
	.4byte	0x645
	.uleb128 0x1d
	.4byte	0x5cd
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF106
	.byte	0xd
	.byte	0x45
	.byte	0xb
	.4byte	.LASF108
	.4byte	0x2d8
	.4byte	0x65f
	.uleb128 0x1d
	.4byte	0x55f
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0xd
	.byte	0x47
	.byte	0xb
	.4byte	.LASF135
	.4byte	0x2d8
	.uleb128 0x1c
	.4byte	.LASF109
	.byte	0xd
	.byte	0x44
	.byte	0xb
	.4byte	.LASF110
	.4byte	0x2d8
	.4byte	0x689
	.uleb128 0x1d
	.4byte	0x5a8
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF111
	.byte	0xd
	.byte	0x43
	.byte	0xb
	.4byte	.LASF112
	.4byte	0x2d8
	.4byte	0x6a8
	.uleb128 0x1d
	.4byte	0x5a8
	.uleb128 0x1d
	.4byte	0x55f
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF136
	.byte	0xe
	.byte	0x26
	.byte	0x6
	.4byte	0x6c5
	.uleb128 0x1d
	.4byte	0x433
	.uleb128 0x1d
	.4byte	0x2cd
	.uleb128 0x1d
	.4byte	0x2cd
	.uleb128 0x20
	.byte	0
	.uleb128 0x21
	.4byte	.LASF137
	.byte	0xf
	.byte	0x26
	.byte	0xa
	.4byte	0x1a8
	.uleb128 0x22
	.4byte	.LASF138
	.byte	0x1
	.byte	0x36
	.byte	0x6
	.4byte	.LASF139
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x717
	.uleb128 0x23
	.4byte	.LASF122
	.byte	0x1
	.byte	0x36
	.byte	0x22
	.4byte	0x30f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LVL33
	.4byte	0xabe
	.4byte	0x70d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL34
	.4byte	0x62b
	.byte	0
	.uleb128 0x27
	.4byte	.LASF114
	.byte	0x1
	.byte	0x31
	.byte	0xb
	.4byte	.LASF116
	.4byte	0x2d8
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f2
	.uleb128 0x28
	.string	"on"
	.byte	0x1
	.byte	0x31
	.byte	0x1c
	.4byte	0x55f
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x29
	.4byte	0x75a
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x32
	.byte	0x98
	.4byte	0x433
	.byte	0
	.uleb128 0x29
	.4byte	0x76c
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x32
	.byte	0xe5
	.4byte	0x433
	.byte	0
	.uleb128 0x29
	.4byte	0x77e
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x32
	.byte	0xe6
	.4byte	0x433
	.byte	0
	.uleb128 0x29
	.4byte	0x790
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x32
	.byte	0xe8
	.4byte	0x433
	.byte	0
	.uleb128 0x2b
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x7aa
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x32
	.byte	0xae
	.4byte	0x433
	.byte	0
	.uleb128 0x26
	.4byte	.LVL28
	.4byte	0x6c5
	.uleb128 0x24
	.4byte	.LVL29
	.4byte	0x6a8
	.4byte	0x7e1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL30
	.4byte	0x645
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF115
	.byte	0x1
	.byte	0x2c
	.byte	0xb
	.4byte	.LASF117
	.4byte	0x2d8
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b3
	.uleb128 0x29
	.4byte	0x822
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x2d
	.byte	0x98
	.4byte	0x433
	.byte	0
	.uleb128 0x29
	.4byte	0x834
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x2d
	.byte	0xb6
	.4byte	0x433
	.byte	0
	.uleb128 0x29
	.4byte	0x846
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x2d
	.byte	0xb7
	.4byte	0x433
	.byte	0
	.uleb128 0x29
	.4byte	0x858
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x2d
	.byte	0xb9
	.4byte	0x433
	.byte	0
	.uleb128 0x2b
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x872
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x2d
	.byte	0x7f
	.4byte	0x433
	.byte	0
	.uleb128 0x26
	.4byte	.LVL24
	.4byte	0x6c5
	.uleb128 0x24
	.4byte	.LVL25
	.4byte	0x6a8
	.4byte	0x8a9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x26
	.4byte	.LVL26
	.4byte	0x65f
	.byte	0
	.uleb128 0x27
	.4byte	.LASF118
	.byte	0x1
	.byte	0x27
	.byte	0xb
	.4byte	.LASF119
	.4byte	0x2d8
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ab
	.uleb128 0x28
	.string	"dir"
	.byte	0x1
	.byte	0x27
	.byte	0x22
	.4byte	0x2e4
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x29
	.4byte	0x8f7
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x28
	.byte	0x98
	.4byte	0x433
	.byte	0
	.uleb128 0x29
	.4byte	0x909
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x28
	.byte	0xbe
	.4byte	0x433
	.byte	0
	.uleb128 0x29
	.4byte	0x91b
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x28
	.byte	0xbf
	.4byte	0x433
	.byte	0
	.uleb128 0x29
	.4byte	0x92d
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x28
	.byte	0xc1
	.4byte	0x433
	.byte	0
	.uleb128 0x2b
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x947
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x28
	.byte	0x87
	.4byte	0x433
	.byte	0
	.uleb128 0x26
	.4byte	.LVL19
	.4byte	0x6c5
	.uleb128 0x24
	.4byte	.LVL20
	.4byte	0x6a8
	.4byte	0x98d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0xb
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	_ZL8DIR_NAME
	.byte	0x22
	.byte	0x6
	.byte	0
	.uleb128 0x24
	.4byte	.LVL21
	.4byte	0xb1c
	.4byte	0x9a1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL22
	.4byte	0x66f
	.byte	0
	.uleb128 0x27
	.4byte	.LASF120
	.byte	0x1
	.byte	0x22
	.byte	0xb
	.4byte	.LASF121
	.4byte	0x2d8
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xabe
	.uleb128 0x28
	.string	"dir"
	.byte	0x1
	.byte	0x22
	.byte	0x22
	.4byte	0x2e4
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x29
	.4byte	0x9ef
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x23
	.byte	0x98
	.4byte	0x433
	.byte	0
	.uleb128 0x29
	.4byte	0xa01
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x23
	.byte	0xc6
	.4byte	0x433
	.byte	0
	.uleb128 0x29
	.4byte	0xa13
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x23
	.byte	0xc7
	.4byte	0x433
	.byte	0
	.uleb128 0x29
	.4byte	0xa25
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x23
	.byte	0xc9
	.4byte	0x433
	.byte	0
	.uleb128 0x2b
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0xa3f
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x23
	.byte	0x8f
	.4byte	0x433
	.byte	0
	.uleb128 0x26
	.4byte	.LVL12
	.4byte	0x6c5
	.uleb128 0x24
	.4byte	.LVL13
	.4byte	0x6a8
	.4byte	0xa85
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0xb
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	_ZL8DIR_NAME
	.byte	0x22
	.byte	0x6
	.byte	0
	.uleb128 0x24
	.4byte	.LVL14
	.4byte	0xb1c
	.4byte	0xa99
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL15
	.4byte	0xaed
	.4byte	0xaad
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL16
	.4byte	0x689
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF123
	.byte	0x1
	.byte	0x18
	.byte	0x16
	.4byte	0x5cd
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaed
	.uleb128 0x2e
	.4byte	.LASF122
	.byte	0x1
	.byte	0x18
	.byte	0x32
	.4byte	0x30f
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF124
	.byte	0x1
	.byte	0x14
	.byte	0xd
	.4byte	0x55f
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1c
	.uleb128 0x28
	.string	"dir"
	.byte	0x1
	.byte	0x14
	.byte	0x25
	.4byte	0x2e4
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF125
	.byte	0x1
	.byte	0xd
	.byte	0xf
	.4byte	0x5a8
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb4b
	.uleb128 0x28
	.string	"dir"
	.byte	0x1
	.byte	0xd
	.byte	0x24
	.4byte	0x2e4
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF126
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS5:
	.uleb128 0
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST5:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE19
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
.LVUS4:
	.uleb128 0
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE17
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
.LVUS3:
	.uleb128 0
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE16
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
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST2:
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
	.4byte	.LFE15
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
	.uleb128 0
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x72
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE14
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
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2
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
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE13
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
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF77:
	.string	"esp_log_level_t"
.LASF53:
	.string	"uint_fast16_t"
.LASF66:
	.string	"MOUNT_RATE_GUIDE"
.LASF107:
	.string	"_Z15motion_set_rate13motion_rate_t"
.LASF103:
	.string	"MOTION_RATE_FIND"
.LASF1:
	.string	"unsigned int"
.LASF92:
	.string	"TMC_V_FS_MV"
.LASF88:
	.string	"__gnu_cxx"
.LASF108:
	.string	"_Z12motion_trackb"
.LASF38:
	.string	"intmax_t"
.LASF57:
	.string	"uint_fast64_t"
.LASF52:
	.string	"int_fast16_t"
.LASF10:
	.string	"__int32_t"
.LASF65:
	.string	"mount_rate_t"
.LASF132:
	.string	"16esp_log_config_t"
.LASF82:
	.string	"dis_timestamp"
.LASF26:
	.string	"__uintmax_t"
.LASF115:
	.string	"mount_stop_all"
.LASF137:
	.string	"esp_log_timestamp"
.LASF21:
	.string	"__int_least32_t"
.LASF128:
	.ascii	"GNU C++26 15.2.0 -ftls-model=local-exec -mdynconfig=xtensa_e"
	.ascii	"sp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gn"
	.string	"u++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec"
.LASF138:
	.string	"mount_set_rate"
.LASF124:
	.string	"dir_forward"
.LASF27:
	.string	"__intptr_t"
.LASF56:
	.string	"int_fast64_t"
.LASF104:
	.string	"MOTION_RATE_SLEW"
.LASF45:
	.string	"uint_least16_t"
.LASF35:
	.string	"uint32_t"
.LASF30:
	.string	"int8_t"
.LASF64:
	.string	"mount_dir_t"
.LASF127:
	.string	"float"
.LASF32:
	.string	"int16_t"
.LASF44:
	.string	"int_least16_t"
.LASF39:
	.string	"uintmax_t"
.LASF76:
	.string	"ESP_LOG_MAX"
.LASF0:
	.string	"long long unsigned int"
.LASF81:
	.string	"dis_color"
.LASF8:
	.string	"__uint16_t"
.LASF72:
	.string	"ESP_LOG_WARN"
.LASF49:
	.string	"uint_least64_t"
.LASF133:
	.string	"DIR_NAME"
.LASF119:
	.string	"_Z10mount_stop11mount_dir_t"
.LASF42:
	.string	"int_least8_t"
.LASF36:
	.string	"int64_t"
.LASF48:
	.string	"int_least64_t"
.LASF114:
	.string	"mount_track"
.LASF43:
	.string	"uint_least8_t"
.LASF136:
	.string	"esp_log"
.LASF22:
	.string	"__uint_least32_t"
.LASF134:
	.string	"motion_abort"
.LASF112:
	.string	"_Z11motion_move6axis_tb"
.LASF16:
	.string	"__uint64_t"
.LASF70:
	.string	"ESP_LOG_NONE"
.LASF121:
	.string	"_Z10mount_move11mount_dir_t"
.LASF131:
	.string	"15esp_log_level_t"
.LASF102:
	.string	"MOTION_RATE_CENTER"
.LASF58:
	.string	"char"
.LASF106:
	.string	"motion_track"
.LASF122:
	.string	"rate"
.LASF78:
	.string	"log_level"
.LASF99:
	.string	"AXIS_COUNT"
.LASF86:
	.string	"data"
.LASF31:
	.string	"uint8_t"
.LASF15:
	.string	"long long int"
.LASF68:
	.string	"MOUNT_RATE_FIND"
.LASF90:
	.string	"bool"
.LASF89:
	.string	"__cxx11"
.LASF6:
	.string	"__int16_t"
.LASF79:
	.string	"constrained_env"
.LASF97:
	.string	"AXIS_RA"
.LASF50:
	.string	"int_fast8_t"
.LASF129:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.cpp"
.LASF19:
	.string	"__int_least16_t"
.LASF55:
	.string	"uint_fast32_t"
.LASF73:
	.string	"ESP_LOG_INFO"
.LASF117:
	.string	"_Z14mount_stop_allv"
.LASF4:
	.string	"__int8_t"
.LASF14:
	.string	"__int64_t"
.LASF69:
	.string	"MOUNT_RATE_SLEW"
.LASF118:
	.string	"mount_stop"
.LASF25:
	.string	"__intmax_t"
.LASF29:
	.string	"long double"
.LASF40:
	.string	"intptr_t"
.LASF139:
	.string	"_Z14mount_set_rate12mount_rate_t"
.LASF123:
	.string	"to_motion_rate"
.LASF33:
	.string	"uint16_t"
.LASF94:
	.string	"TMC_R_INTERNAL_MOHM"
.LASF28:
	.string	"__uintptr_t"
.LASF62:
	.string	"MOUNT_DIR_E"
.LASF23:
	.string	"__int_least64_t"
.LASF60:
	.string	"MOUNT_DIR_N"
.LASF18:
	.string	"__uint_least8_t"
.LASF54:
	.string	"int_fast32_t"
.LASF63:
	.string	"MOUNT_DIR_W"
.LASF7:
	.string	"short int"
.LASF93:
	.string	"TMC_R_SENSE_MOHM"
.LASF100:
	.string	"motion_rate_t"
.LASF87:
	.string	"esp_log_config_t"
.LASF11:
	.string	"long int"
.LASF37:
	.string	"uint64_t"
.LASF80:
	.string	"require_formatting"
.LASF120:
	.string	"mount_move"
.LASF5:
	.string	"__uint8_t"
.LASF85:
	.string	"opts"
.LASF98:
	.string	"AXIS_DEC"
.LASF125:
	.string	"dir_axis"
.LASF47:
	.string	"uint_least32_t"
.LASF17:
	.string	"__int_least8_t"
.LASF41:
	.string	"uintptr_t"
.LASF20:
	.string	"__uint_least16_t"
.LASF61:
	.string	"MOUNT_DIR_S"
.LASF13:
	.string	"long unsigned int"
.LASF75:
	.string	"ESP_LOG_VERBOSE"
.LASF34:
	.string	"int32_t"
.LASF135:
	.string	"_Z12motion_abortv"
.LASF46:
	.string	"int_least32_t"
.LASF2:
	.string	"unsigned char"
.LASF12:
	.string	"__uint32_t"
.LASF109:
	.string	"motion_stop"
.LASF111:
	.string	"motion_move"
.LASF83:
	.string	"binary_mode"
.LASF116:
	.string	"_Z11mount_trackb"
.LASF51:
	.string	"uint_fast8_t"
.LASF59:
	.string	"esp_err_t"
.LASF24:
	.string	"__uint_least64_t"
.LASF96:
	.string	"axis_t"
.LASF74:
	.string	"ESP_LOG_DEBUG"
.LASF95:
	.string	"TMC_FULL_SCALE_MA"
.LASF101:
	.string	"MOTION_RATE_GUIDE"
.LASF3:
	.string	"signed char"
.LASF9:
	.string	"short unsigned int"
.LASF84:
	.string	"reserved"
.LASF113:
	.string	"__esp_log_config"
.LASF126:
	.string	"double"
.LASF130:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/build"
.LASF67:
	.string	"MOUNT_RATE_CENTER"
.LASF110:
	.string	"_Z11motion_stop6axis_t"
.LASF91:
	.string	"TMC_VSENSE"
.LASF71:
	.string	"ESP_LOG_ERROR"
.LASF105:
	.string	"motion_set_rate"
	.ident	"GCC: (crosstool-NG esp-15.2.0_20251204) 15.2.0"
