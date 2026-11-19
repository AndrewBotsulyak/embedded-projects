	.file	"lx200.cpp"
# GNU C++26 (crosstool-NG esp-15.2.0_20251204) version 15.2.0 (xtensa-esp-elf)
#	compiled by GNU C version Debian Clang 19.1.7 (3+b1), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -ftls-model=local-exec -mdynconfig=xtensa_esp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gnu++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec
	.text
.Ltext0:
	.file 1 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp"
	.section	.text._ZL12to_mount_dir11lx200_dir_t,"ax",@progbits
	.align	4
	.type	_ZL12to_mount_dir11lx200_dir_t, @function
_ZL12to_mount_dir11lx200_dir_t:
.LVL0:
.LFB24:
	.loc 1 39 50 view -0
	.loc 1 39 50 is_stmt 0 view .LVU1
	entry	sp, 32	#
.LCFI0:
	.loc 1 40 5 is_stmt 1 view .LVU2
	beqi	a2, 2, .L2	# dir,,
	beqi	a2, 3, .L2	# dir,,
	beqi	a2, 1, .L2	# dir,,
	movi.n	a2, 0	# dir,
.LVL1:
.L2:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:47: }
	.loc 1 47 1 is_stmt 0 view .LVU3
	retw.n	
.LFE24:
	.size	_ZL12to_mount_dir11lx200_dir_t, .-_ZL12to_mount_dir11lx200_dir_t
	.section	.text._ZL13to_mount_rate12lx200_rate_t,"ax",@progbits
	.align	4
	.type	_ZL13to_mount_rate12lx200_rate_t, @function
_ZL13to_mount_rate12lx200_rate_t:
.LVL2:
.LFB25:
	.loc 1 49 54 is_stmt 1 view -0
	.loc 1 49 54 is_stmt 0 view .LVU5
	entry	sp, 32	#
.LCFI1:
	.loc 1 50 5 is_stmt 1 view .LVU6
	beqi	a2, 2, .L5	# rate,,
	bgeui	a2, 3, .L6	# rate,,
	beqz.n	a2, .L5	# rate,
	beqi	a2, 1, .L5	# rate,,
	j	.L7		#
.L6:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:54:         case LX200_RATE_SLEW:   return MOUNT_RATE_SLEW;
	.loc 1 54 38 is_stmt 0 view .LVU7
	movi.n	a2, 3	# rate,
.LVL3:
	.loc 1 54 38 view .LVU8
	j	.L5		#
.LVL4:
.L7:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:56:     return MOUNT_RATE_SLEW;
	.loc 1 56 12 view .LVU9
	movi.n	a2, 3	# rate,
.LVL5:
.L5:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:57: }
	.loc 1 57 1 view .LVU10
	retw.n	
.LFE25:
	.size	_ZL13to_mount_rate12lx200_rate_t, .-_ZL13to_mount_rate12lx200_rate_t
	.section	.text._ZL10copy_replyPKcPcj,"ax",@progbits
	.align	4
	.type	_ZL10copy_replyPKcPcj, @function
_ZL10copy_replyPKcPcj:
.LVL6:
.LFB23:
	.loc 1 32 70 is_stmt 1 view -0
	.loc 1 32 70 is_stmt 0 view .LVU12
	entry	sp, 32	#
.LCFI2:
	mov.n	a7, a2	# text, text
	.loc 1 33 5 is_stmt 1 view .LVU13
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:33:     size_t n = strlen(text);
	.loc 1 33 22 is_stmt 0 view .LVU14
	mov.n	a10, a2	#, text
	call8	strlen		#
.LVL7:
	mov.n	a2, a10	# <retval>, <retval>
.LVL8:
	.loc 1 34 5 is_stmt 1 view .LVU15
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:34:     if (n + 1 > size) return 0;
	.loc 1 34 11 is_stmt 0 view .LVU16
	addi.n	a12, a10, 1	# _1, <retval>,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:34:     if (n + 1 > size) return 0;
	.loc 1 34 5 view .LVU17
	bltu	a4, a12, .L10	# size, _1,
	.loc 1 35 5 is_stmt 1 view .LVU18
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:35:     memcpy(reply, text, n + 1);
	.loc 1 35 11 is_stmt 0 view .LVU19
	mov.n	a11, a7	#, text
	mov.n	a10, a3	#, reply
	call8	memcpy		#
.LVL9:
	.loc 1 36 5 is_stmt 1 view .LVU20
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:36:     return n;
	.loc 1 36 12 is_stmt 0 view .LVU21
	j	.L8		#
.L10:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:34:     if (n + 1 > size) return 0;
	.loc 1 34 30 discriminator 1 view .LVU22
	movi.n	a2, 0	# <retval>,
.LVL10:
.L8:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:37: }
	.loc 1 37 1 view .LVU23
	retw.n	
.LFE23:
	.size	_ZL10copy_replyPKcPcj, .-_ZL10copy_replyPKcPcj
	.section	.rodata._ZL7executeP11lx200_ctx_tPKcPcj.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"lx200"
	.align	4
.LC3:
	.string	"I (%lu) %s: [%s] :%s#\n"
	.align	4
.LC6:
	.base64	"VyAoJWx1KSAlczogWyVzXSDQvdC10LjQt9Cy0LXRgdGC0L3QsNGPINC60L7QvNCw0L3QtNCwIDolcyMg4oCUINCx0LXQtyDQvtGC0LLQtdGC0LAKAA=="
	.section	.text._ZL7executeP11lx200_ctx_tPKcPcj,"ax",@progbits
	.literal_position
	.literal .LC0, _ZL8COMMANDS
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC5, _ZL8COMMANDS+180
	.literal .LC7, .LC6
	.align	4
	.type	_ZL7executeP11lx200_ctx_tPKcPcj, @function
_ZL7executeP11lx200_ctx_tPKcPcj:
.LVL11:
.LFB31:
	.loc 1 123 84 is_stmt 1 view -0
	.loc 1 123 84 is_stmt 0 view .LVU25
	entry	sp, 48	#
.LCFI3:
	mov.n	a6, a5	# size, size
	.loc 1 124 5 is_stmt 1 view .LVU26
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:124:     if (cmd[0] == '\0') return 0;   // ":#" — пустая команда
	.loc 1 124 14 is_stmt 0 view .LVU27
	l8ui	a8, a3, 0	# *cmd_36(D), _1
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:124:     if (cmd[0] == '\0') return 0;   // ":#" — пустая команда
	.loc 1 124 5 view .LVU28
	beqz.n	a8, .L18	# _1,
.LBB2:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:126:     for (const lx200_cmd_t &c : COMMANDS) {
	.loc 1 126 33 view .LVU29
	l32r	a5, .LC0	#, __for_begin
.LVL12:
	.loc 1 126 33 view .LVU30
	j	.L13		#
.LVL13:
.L17:
.LBB3:
	.loc 1 127 9 is_stmt 1 view .LVU31
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:127:         bool match = c.has_args ? strncmp(cmd, c.name, strlen(c.name)) == 0
	.loc 1 127 24 is_stmt 0 view .LVU32
	l8ui	a8, a5, 4	# __for_begin_37->has_args, _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:127:         bool match = c.has_args ? strncmp(cmd, c.name, strlen(c.name)) == 0
	.loc 1 127 33 view .LVU33
	beqz.n	a8, .L14	# _2,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:127:         bool match = c.has_args ? strncmp(cmd, c.name, strlen(c.name)) == 0
	.loc 1 127 50 discriminator 1 view .LVU34
	l32i.n	a7, a5, 0	# __for_begin_37->name, _3
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:127:         bool match = c.has_args ? strncmp(cmd, c.name, strlen(c.name)) == 0
	.loc 1 127 42 discriminator 1 view .LVU35
	mov.n	a10, a7	#, _3
	call8	strlen		#
.LVL14:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:127:         bool match = c.has_args ? strncmp(cmd, c.name, strlen(c.name)) == 0
	.loc 1 127 42 discriminator 3 view .LVU36
	mov.n	a12, a10	#, tmp90
	mov.n	a11, a7	#, _3
	mov.n	a10, a3	#, cmd
	call8	strncmp		#
.LVL15:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:127:         bool match = c.has_args ? strncmp(cmd, c.name, strlen(c.name)) == 0
	.loc 1 127 14 discriminator 4 view .LVU37
	nsau	a10, a10	# match, tmp91
	srli	a10, a10, 5	# match, match,
.LVL16:
	.loc 1 127 14 discriminator 4 view .LVU38
	j	.L15		#
.LVL17:
.L14:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:128:                                 : strcmp(cmd, c.name) == 0;
	.loc 1 128 41 view .LVU39
	l32i.n	a11, a5, 0	# __for_begin_37->name,
	mov.n	a10, a3	#, cmd
	call8	strcmp		#
.LVL18:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:127:         bool match = c.has_args ? strncmp(cmd, c.name, strlen(c.name)) == 0
	.loc 1 127 14 discriminator 2 view .LVU40
	nsau	a10, a10	# match, tmp92
	srli	a10, a10, 5	# match, match,
.L15:
.LVL19:
	.loc 1 129 9 is_stmt 1 view .LVU41
.LBB4:
	beqz.n	a10, .L16	# match,
.LBB5:
	.loc 1 130 13 view .LVU42
	.loc 1 130 18 view .LVU43
	.loc 1 130 23 view .LVU44
	.loc 1 130 55 view .LVU45
	.loc 1 130 60 view .LVU46
	.loc 1 130 97 discriminator 2 view .LVU47
	.loc 1 130 97 discriminator 6 view .LVU48
	.loc 1 130 97 discriminator 10 view .LVU49
.LBB6:
	.loc 1 130 99 discriminator 14 view .LVU50
.LBB7:
	.loc 1 130 124 discriminator 14 view .LVU51
	.loc 1 130 159 discriminator 14 view .LVU52
	.loc 1 130 199 view .LVU53
.LBE7:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:130:             ESP_LOGI(TAG, "[%s] :%s#", ctx->name, cmd);
	.loc 1 130 106 is_stmt 0 discriminator 14 view .LVU54
	call8	esp_log_timestamp		#
.LVL20:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:130:             ESP_LOGI(TAG, "[%s] :%s#", ctx->name, cmd);
	.loc 1 130 106 discriminator 17 view .LVU55
	l32r	a11, .LC2	#, tmp78
	s32i.n	a3, sp, 0	#, cmd
	l32i.n	a15, a2, 52	# ctx_26(D)->name,
	mov.n	a14, a11	#, tmp78
	mov.n	a13, a10	#, _21
	l32r	a12, .LC4	#,
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL21:
	.loc 1 130 55 is_stmt 1 view .LVU56
	.loc 1 130 18 view .LVU57
.LBE6:
	.loc 1 130 13 view .LVU58
	.loc 1 131 13 view .LVU59
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:131:             return c.handler(ctx, cmd, reply, size);
	.loc 1 131 22 is_stmt 0 view .LVU60
	l32i.n	a8, a5, 8	# __for_begin_37->handler, _24
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:131:             return c.handler(ctx, cmd, reply, size);
	.loc 1 131 29 view .LVU61
	mov.n	a13, a6	#, size
	mov.n	a12, a4	#, reply
	mov.n	a11, a3	#, cmd
	mov.n	a10, a2	#, ctx
	callx8	a8	# _24
.LVL22:
	mov.n	a2, a10	# <retval>, <retval>
.LVL23:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:131:             return c.handler(ctx, cmd, reply, size);
	.loc 1 131 51 view .LVU62
	j	.L11		#
.LVL24:
.L16:
	.loc 1 131 51 view .LVU63
.LBE5:
.LBE4:
.LBE3:
	.loc 1 126 5 is_stmt 1 discriminator 2 view .LVU64
	addi.n	a5, a5, 12	# __for_begin, __for_begin,
.LVL25:
.L13:
	.loc 1 126 33 discriminator 1 view .LVU65
	l32r	a8, .LC5	#, tmp81
	bne	a5, a8, .L17	# __for_begin, tmp81,
.LBE2:
	.loc 1 137 5 view .LVU66
	.loc 1 137 10 view .LVU67
	.loc 1 137 15 view .LVU68
	.loc 1 137 47 view .LVU69
	.loc 1 137 52 view .LVU70
	.loc 1 137 151 discriminator 2 view .LVU71
.LBB8:
	.loc 1 137 208 discriminator 5 view .LVU72
.LBB9:
	.loc 1 137 233 discriminator 5 view .LVU73
	.loc 1 137 268 discriminator 5 view .LVU74
	.loc 1 137 308 view .LVU75
.LBE9:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:137:     ESP_LOGW(TAG, "[%s] неизвестная команда :%s# — без ответа", ctx->name, cmd);
	.loc 1 137 215 is_stmt 0 discriminator 5 view .LVU76
	call8	esp_log_timestamp		#
.LVL26:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:137:     ESP_LOGW(TAG, "[%s] неизвестная команда :%s# — без ответа", ctx->name, cmd);
	.loc 1 137 215 discriminator 7 view .LVU77
	l32r	a11, .LC2	#, tmp82
	s32i.n	a3, sp, 0	#, cmd
	l32i.n	a15, a2, 52	# ctx_26(D)->name,
	mov.n	a14, a11	#, tmp82
	mov.n	a13, a10	#, _29
	l32r	a12, .LC7	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL27:
	.loc 1 137 47 is_stmt 1 view .LVU78
	.loc 1 137 10 view .LVU79
.LBE8:
	.loc 1 137 5 view .LVU80
	.loc 1 138 5 view .LVU81
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:138:     return 0;
	.loc 1 138 12 is_stmt 0 view .LVU82
	movi.n	a2, 0	# <retval>,
.LVL28:
	.loc 1 138 12 view .LVU83
	j	.L11		#
.LVL29:
.L18:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:124:     if (cmd[0] == '\0') return 0;   // ":#" — пустая команда
	.loc 1 124 32 discriminator 1 view .LVU84
	mov.n	a2, a8	# <retval>, _1
.LVL30:
.L11:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:139: }
	.loc 1 139 1 view .LVU85
	retw.n	
.LFE31:
	.size	_ZL7executeP11lx200_ctx_tPKcPcj, .-_ZL7executeP11lx200_ctx_tPKcPcj
	.section	.rodata._ZL9cmd_trackP11lx200_ctx_tPKcPcj.str1.4,"aMS",@progbits,1
	.align	4
.LC8:
	.string	"1"
	.align	4
.LC10:
	.string	"0"
	.section	.text._ZL9cmd_trackP11lx200_ctx_tPKcPcj,"ax",@progbits
	.literal_position
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.align	4
	.type	_ZL9cmd_trackP11lx200_ctx_tPKcPcj, @function
_ZL9cmd_trackP11lx200_ctx_tPKcPcj:
.LVL31:
.LFB30:
	.loc 1 98 83 is_stmt 1 view -0
	.loc 1 98 83 is_stmt 0 view .LVU87
	entry	sp, 32	#
.LCFI4:
	.loc 1 99 5 is_stmt 1 view .LVU88
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:99:     esp_err_t err = mount_track(cmd[1] == 'e');
	.loc 1 99 38 is_stmt 0 view .LVU89
	l8ui	a10, a3, 1	# MEM[(const char *)cmd_5(D) + 1B], _1
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:99:     esp_err_t err = mount_track(cmd[1] == 'e');
	.loc 1 99 32 view .LVU90
	addi	a10, a10, -101	# tmp55, _1,
	nsau	a10, a10	#, tmp55
	srli	a10, a10, 5	#,,
	call8	_Z11mount_trackb		#
.LVL32:
	.loc 1 100 5 is_stmt 1 view .LVU91
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:100:     return copy_reply(err == ESP_OK ? "1" : "0", reply, size);
	.loc 1 100 22 is_stmt 0 view .LVU92
	bnez.n	a10, .L21	# err,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:100:     return copy_reply(err == ESP_OK ? "1" : "0", reply, size);
	.loc 1 100 22 discriminator 1 view .LVU93
	l32r	a10, .LC9	#, iftmp$63_4
.LVL33:
	.loc 1 100 22 discriminator 1 view .LVU94
	j	.L20		#
.LVL34:
.L21:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:100:     return copy_reply(err == ESP_OK ? "1" : "0", reply, size);
	.loc 1 100 22 discriminator 2 view .LVU95
	l32r	a10, .LC11	#, iftmp$63_4
.LVL35:
.L20:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:100:     return copy_reply(err == ESP_OK ? "1" : "0", reply, size);
	.loc 1 100 22 discriminator 4 view .LVU96
	mov.n	a12, a5	#, size
	mov.n	a11, a4	#, reply
	call8	_ZL10copy_replyPKcPcj		#
.LVL36:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:101: }
	.loc 1 101 1 view .LVU97
	mov.n	a2, a10	#, <retval>
	retw.n	
.LFE30:
	.size	_ZL9cmd_trackP11lx200_ctx_tPKcPcj, .-_ZL9cmd_trackP11lx200_ctx_tPKcPcj
	.section	.text._ZL8cmd_rateP11lx200_ctx_tPKcPcj,"ax",@progbits
	.align	4
	.type	_ZL8cmd_rateP11lx200_ctx_tPKcPcj, @function
_ZL8cmd_rateP11lx200_ctx_tPKcPcj:
.LVL37:
.LFB29:
	.loc 1 86 72 is_stmt 1 view -0
	.loc 1 86 72 is_stmt 0 view .LVU99
	entry	sp, 48	#
.LCFI5:
	.loc 1 87 5 is_stmt 1 view .LVU100
	.loc 1 88 5 view .LVU101
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:88:     if (lx200_rate_from_char(cmd[1], &rate)) {
	.loc 1 88 29 is_stmt 0 view .LVU102
	mov.n	a11, sp	#,
	l8ui	a10, a3, 1	# MEM[(const char *)cmd_6(D) + 1B],
	call8	_Z20lx200_rate_from_charcP12lx200_rate_t		#
.LVL38:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:88:     if (lx200_rate_from_char(cmd[1], &rate)) {
	.loc 1 88 5 discriminator 1 view .LVU103
	beqz.n	a10, .L23	# tmp55,
	.loc 1 89 9 is_stmt 1 view .LVU104
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:89:         mount_set_rate(to_mount_rate(rate));
	.loc 1 89 23 is_stmt 0 view .LVU105
	l32i.n	a10, sp, 0	# rate,
	call8	_ZL13to_mount_rate12lx200_rate_t		#
.LVL39:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:89:         mount_set_rate(to_mount_rate(rate));
	.loc 1 89 23 discriminator 1 view .LVU106
	call8	_Z14mount_set_rate12mount_rate_t		#
.LVL40:
.L23:
	.loc 1 91 5 is_stmt 1 view .LVU107
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:92: }
	.loc 1 92 1 is_stmt 0 view .LVU108
	movi.n	a2, 0	#,
	retw.n	
.LFE29:
	.size	_ZL8cmd_rateP11lx200_ctx_tPKcPcj, .-_ZL8cmd_rateP11lx200_ctx_tPKcPcj
	.section	.text._ZL12cmd_stop_allP11lx200_ctx_tPKcPcj,"ax",@progbits
	.align	4
	.type	_ZL12cmd_stop_allP11lx200_ctx_tPKcPcj, @function
_ZL12cmd_stop_allP11lx200_ctx_tPKcPcj:
.LFB28:
	.loc 1 80 73 is_stmt 1 view -0
	entry	sp, 32	#
.LCFI6:
	.loc 1 81 5 view .LVU110
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:81:     mount_stop_all();
	.loc 1 81 19 is_stmt 0 view .LVU111
	call8	_Z14mount_stop_allv		#
.LVL41:
	.loc 1 82 5 is_stmt 1 view .LVU112
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:83: }
	.loc 1 83 1 is_stmt 0 view .LVU113
	movi.n	a2, 0	#,
	retw.n	
.LFE28:
	.size	_ZL12cmd_stop_allP11lx200_ctx_tPKcPcj, .-_ZL12cmd_stop_allP11lx200_ctx_tPKcPcj
	.section	.text._ZL12cmd_stop_dirP11lx200_ctx_tPKcPcj,"ax",@progbits
	.align	4
	.type	_ZL12cmd_stop_dirP11lx200_ctx_tPKcPcj, @function
_ZL12cmd_stop_dirP11lx200_ctx_tPKcPcj:
.LVL42:
.LFB27:
	.loc 1 71 76 is_stmt 1 view -0
	.loc 1 71 76 is_stmt 0 view .LVU115
	entry	sp, 48	#
.LCFI7:
	.loc 1 72 5 is_stmt 1 view .LVU116
	.loc 1 73 5 view .LVU117
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:73:     if (lx200_dir_from_char(cmd[1], &dir)) {
	.loc 1 73 28 is_stmt 0 view .LVU118
	mov.n	a11, sp	#,
	l8ui	a10, a3, 1	# MEM[(const char *)cmd_6(D) + 1B],
	call8	_Z19lx200_dir_from_charcP11lx200_dir_t		#
.LVL43:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:73:     if (lx200_dir_from_char(cmd[1], &dir)) {
	.loc 1 73 5 discriminator 1 view .LVU119
	beqz.n	a10, .L26	# tmp55,
	.loc 1 74 9 is_stmt 1 view .LVU120
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:74:         mount_stop(to_mount_dir(dir));
	.loc 1 74 19 is_stmt 0 view .LVU121
	l32i.n	a10, sp, 0	# dir,
	call8	_ZL12to_mount_dir11lx200_dir_t		#
.LVL44:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:74:         mount_stop(to_mount_dir(dir));
	.loc 1 74 19 discriminator 1 view .LVU122
	call8	_Z10mount_stop11mount_dir_t		#
.LVL45:
.L26:
	.loc 1 76 5 is_stmt 1 view .LVU123
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:77: }
	.loc 1 77 1 is_stmt 0 view .LVU124
	movi.n	a2, 0	#,
	retw.n	
.LFE27:
	.size	_ZL12cmd_stop_dirP11lx200_ctx_tPKcPcj, .-_ZL12cmd_stop_dirP11lx200_ctx_tPKcPcj
	.section	.text._ZL8cmd_moveP11lx200_ctx_tPKcPcj,"ax",@progbits
	.align	4
	.type	_ZL8cmd_moveP11lx200_ctx_tPKcPcj, @function
_ZL8cmd_moveP11lx200_ctx_tPKcPcj:
.LVL46:
.LFB26:
	.loc 1 62 72 is_stmt 1 view -0
	.loc 1 62 72 is_stmt 0 view .LVU126
	entry	sp, 48	#
.LCFI8:
	.loc 1 63 5 is_stmt 1 view .LVU127
	.loc 1 64 5 view .LVU128
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:64:     if (lx200_dir_from_char(cmd[1], &dir)) {
	.loc 1 64 28 is_stmt 0 view .LVU129
	mov.n	a11, sp	#,
	l8ui	a10, a3, 1	# MEM[(const char *)cmd_6(D) + 1B],
	call8	_Z19lx200_dir_from_charcP11lx200_dir_t		#
.LVL47:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:64:     if (lx200_dir_from_char(cmd[1], &dir)) {
	.loc 1 64 5 discriminator 1 view .LVU130
	beqz.n	a10, .L28	# tmp55,
	.loc 1 65 9 is_stmt 1 view .LVU131
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:65:         mount_move(to_mount_dir(dir));
	.loc 1 65 19 is_stmt 0 view .LVU132
	l32i.n	a10, sp, 0	# dir,
	call8	_ZL12to_mount_dir11lx200_dir_t		#
.LVL48:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:65:         mount_move(to_mount_dir(dir));
	.loc 1 65 19 discriminator 1 view .LVU133
	call8	_Z10mount_move11mount_dir_t		#
.LVL49:
.L28:
	.loc 1 67 5 is_stmt 1 view .LVU134
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:68: }
	.loc 1 68 1 is_stmt 0 view .LVU135
	movi.n	a2, 0	#,
	retw.n	
.LFE26:
	.size	_ZL8cmd_moveP11lx200_ctx_tPKcPcj, .-_ZL8cmd_moveP11lx200_ctx_tPKcPcj
	.section	.text._Z14lx200_ctx_initP11lx200_ctx_tPKc,"ax",@progbits
	.align	4
	.global	_Z14lx200_ctx_initP11lx200_ctx_tPKc
	.type	_Z14lx200_ctx_initP11lx200_ctx_tPKc, @function
_Z14lx200_ctx_initP11lx200_ctx_tPKc:
.LVL50:
.LFB32:
	.loc 1 141 57 is_stmt 1 view -0
	.loc 1 141 57 is_stmt 0 view .LVU137
	entry	sp, 32	#
.LCFI9:
	.loc 1 142 5 is_stmt 1 view .LVU138
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:142:     memset(ctx, 0, sizeof(*ctx));
	.loc 1 142 11 is_stmt 0 view .LVU139
	movi.n	a12, 0x38	#,
	movi.n	a11, 0	#,
	mov.n	a10, a2	#, ctx
	call8	memset		#
.LVL51:
	.loc 1 143 5 is_stmt 1 view .LVU140
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:143:     ctx->long_format = true;   // формат координат по умолчанию; :U# переключает
	.loc 1 143 22 is_stmt 0 view .LVU141
	movi.n	a8, 1	# tmp44,
	s8i	a8, a2, 48	# ctx_2(D)->long_format, tmp44
	.loc 1 144 5 is_stmt 1 view .LVU142
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:144:     ctx->name = name;
	.loc 1 144 15 is_stmt 0 view .LVU143
	s32i.n	a3, a2, 52	# ctx_2(D)->name, name
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:145: }
	.loc 1 145 1 view .LVU144
	retw.n	
.LFE32:
	.size	_Z14lx200_ctx_initP11lx200_ctx_tPKc, .-_Z14lx200_ctx_initP11lx200_ctx_tPKc
	.section	.rodata._Z10lx200_feedP11lx200_ctx_thPcj.str1.4,"aMS",@progbits,1
	.align	4
.LC12:
	.string	"P"
	.align	4
.LC16:
	.base64	"VyAoJWx1KSAlczogWyVzXSDQutC+0LzQsNC90LTQsCDQsdC10LcgJyMnINC00L7Qu9GM0YjQtSAxINGBIOKAlCDRgdCx0YDQvtGI0LXQvdCwCgA="
	.align	4
.LC18:
	.base64	"VyAoJWx1KSAlczogWyVzXSDQutC+0LzQsNC90LTQsCDQtNC70LjQvdC90LXQtSAlZCDQsdCw0LnRgiDigJQg0LLRi9Cx0YDQvtGI0LXQvdCwCgA="
	.section	.text._Z10lx200_feedP11lx200_ctx_thPcj,"ax",@progbits
	.literal_position
	.literal .LC13, .LC12
	.literal .LC14, 1000000
	.literal .LC15, .LC1
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.align	4
	.global	_Z10lx200_feedP11lx200_ctx_thPcj
	.type	_Z10lx200_feedP11lx200_ctx_thPcj, @function
_Z10lx200_feedP11lx200_ctx_thPcj:
.LVL52:
.LFB33:
	.loc 1 147 83 is_stmt 1 view -0
	.loc 1 147 83 is_stmt 0 view .LVU146
	entry	sp, 48	#
.LCFI10:
	extui	a3, a3, 0, 8	# byte, byte
	.loc 1 150 5 is_stmt 1 view .LVU147
	bnei	a3, 6, .L31	# byte,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:150:     if (byte == LX200_ACK && !ctx->collecting) {
	.loc 1 150 31 is_stmt 0 discriminator 1 view .LVU148
	l8ui	a8, a2, 33	# ctx_37(D)->collecting, _1
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:150:     if (byte == LX200_ACK && !ctx->collecting) {
	.loc 1 150 22 discriminator 1 view .LVU149
	bnez.n	a8, .L31	# _1,
	.loc 1 151 9 is_stmt 1 view .LVU150
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:151:         return copy_reply("P", reply, reply_size);
	.loc 1 151 26 is_stmt 0 view .LVU151
	mov.n	a12, a5	#, reply_size
	mov.n	a11, a4	#, reply
	l32r	a10, .LC13	#,
	call8	_ZL10copy_replyPKcPcj		#
.LVL53:
	mov.n	a2, a10	# <retval>, <retval>
.LVL54:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:151:         return copy_reply("P", reply, reply_size);
	.loc 1 151 49 view .LVU152
	j	.L30		#
.LVL55:
.L31:
	.loc 1 155 5 is_stmt 1 view .LVU153
.LBB10:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:155:     if (ctx->collecting && esp_timer_get_time() - ctx->started_us > LX200_STALE_US) {
	.loc 1 155 14 is_stmt 0 view .LVU154
	l8ui	a8, a2, 33	# ctx_37(D)->collecting, _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:155:     if (ctx->collecting && esp_timer_get_time() - ctx->started_us > LX200_STALE_US) {
	.loc 1 155 25 view .LVU155
	beqz.n	a8, .L33	# _2,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:155:     if (ctx->collecting && esp_timer_get_time() - ctx->started_us > LX200_STALE_US) {
	.loc 1 155 46 discriminator 1 view .LVU156
	call8	esp_timer_get_time		#
.LVL56:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:155:     if (ctx->collecting && esp_timer_get_time() - ctx->started_us > LX200_STALE_US) {
	.loc 1 155 56 discriminator 3 view .LVU157
	l32i.n	a8, a2, 40	# ctx_37(D)->started_us, _4
	l32i.n	a9, a2, 44	# ctx_37(D)->started_us, _4
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:155:     if (ctx->collecting && esp_timer_get_time() - ctx->started_us > LX200_STALE_US) {
	.loc 1 155 49 discriminator 3 view .LVU158
	sub	a11, a11, a9	# _5, _3, _4
	bgeu	a10, a8, .L34	# _3, _4,
	addi.n	a11, a11, -1	# _5, _5,
.L34:
	sub	a10, a10, a8	# _5, _3, _4
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:155:     if (ctx->collecting && esp_timer_get_time() - ctx->started_us > LX200_STALE_US) {
	.loc 1 155 25 discriminator 3 view .LVU159
	bgei	a11, 1, .L40	# _5,,
	bnez.n	a11, .L33	# _5,
	l32r	a8, .LC14	#, tmp70
	bgeu	a8, a10, .L33	# tmp70, _5,
.L40:
.LBB11:
	.loc 1 156 9 is_stmt 1 view .LVU160
	.loc 1 156 14 view .LVU161
	.loc 1 156 19 view .LVU162
	.loc 1 156 51 view .LVU163
	.loc 1 156 56 view .LVU164
	.loc 1 156 148 discriminator 2 view .LVU165
.LBB12:
	.loc 1 156 205 discriminator 5 view .LVU166
.LBB13:
	.loc 1 156 230 discriminator 5 view .LVU167
	.loc 1 156 265 discriminator 5 view .LVU168
	.loc 1 156 305 view .LVU169
.LBE13:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:156:         ESP_LOGW(TAG, "[%s] команда без '#' дольше 1 с — сброшена", ctx->name);
	.loc 1 156 212 is_stmt 0 discriminator 5 view .LVU170
	call8	esp_log_timestamp		#
.LVL57:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:156:         ESP_LOGW(TAG, "[%s] команда без '#' дольше 1 с — сброшена", ctx->name);
	.loc 1 156 212 discriminator 7 view .LVU171
	l32r	a11, .LC15	#, tmp71
	l32i.n	a15, a2, 52	# ctx_37(D)->name,
	mov.n	a14, a11	#, tmp71
	mov.n	a13, a10	#, _11
	l32r	a12, .LC17	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL58:
	.loc 1 156 51 is_stmt 1 view .LVU172
	.loc 1 156 14 view .LVU173
.LBE12:
	.loc 1 156 9 view .LVU174
	.loc 1 157 9 view .LVU175
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:157:         ctx->collecting = false;
	.loc 1 157 25 is_stmt 0 view .LVU176
	movi.n	a8, 0	# tmp74,
	s8i	a8, a2, 33	# ctx_37(D)->collecting, tmp74
.L33:
	.loc 1 157 25 view .LVU177
.LBE11:
.LBE10:
	.loc 1 160 5 is_stmt 1 view .LVU178
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:160:     if (!ctx->collecting) {
	.loc 1 160 15 is_stmt 0 view .LVU179
	l8ui	a8, a2, 33	# ctx_37(D)->collecting, _23
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:160:     if (!ctx->collecting) {
	.loc 1 160 5 view .LVU180
	bnez.n	a8, .L36	# _23,
	.loc 1 163 9 is_stmt 1 view .LVU181
	movi.n	a8, 0x3a	# tmp76,
	bne	a3, a8, .L37	# byte, tmp76,
	.loc 1 164 13 view .LVU182
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:164:             ctx->collecting = true;
	.loc 1 164 29 is_stmt 0 view .LVU183
	movi.n	a8, 1	# tmp77,
	s8i	a8, a2, 33	# ctx_37(D)->collecting, tmp77
	.loc 1 165 13 is_stmt 1 view .LVU184
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:165:             ctx->len = 0;
	.loc 1 165 22 is_stmt 0 view .LVU185
	movi.n	a8, 0	# tmp78,
	s8i	a8, a2, 32	# ctx_37(D)->len, tmp78
	.loc 1 166 13 is_stmt 1 view .LVU186
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:166:             ctx->started_us = esp_timer_get_time();
	.loc 1 166 49 is_stmt 0 view .LVU187
	call8	esp_timer_get_time		#
.LVL59:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:166:             ctx->started_us = esp_timer_get_time();
	.loc 1 166 29 discriminator 1 view .LVU188
	s32i.n	a10, a2, 40	# ctx_37(D)->started_us,
	s32i.n	a11, a2, 44	# ctx_37(D)->started_us,
.L37:
	.loc 1 168 9 is_stmt 1 view .LVU189
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:168:         return 0;
	.loc 1 168 16 is_stmt 0 view .LVU190
	movi.n	a2, 0	# <retval>,
.LVL60:
	.loc 1 168 16 view .LVU191
	j	.L30		#
.LVL61:
.L36:
	.loc 1 171 5 is_stmt 1 view .LVU192
	movi.n	a8, 0x23	# tmp80,
	bne	a3, a8, .L38	# byte, tmp80,
	.loc 1 172 9 view .LVU193
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:172:         ctx->buf[ctx->len] = '\0';
	.loc 1 172 23 is_stmt 0 view .LVU194
	l8ui	a8, a2, 32	# ctx_37(D)->len, _26
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:172:         ctx->buf[ctx->len] = '\0';
	.loc 1 172 28 view .LVU195
	add.n	a8, a2, a8	# tmp81, ctx, _26
	movi.n	a9, 0	# tmp82,
	s8i	a9, a8, 0	# ctx_37(D)->buf[_26], tmp82
	.loc 1 173 9 is_stmt 1 view .LVU196
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:173:         ctx->collecting = false;
	.loc 1 173 25 is_stmt 0 view .LVU197
	s8i	a9, a2, 33	# ctx_37(D)->collecting, tmp82
	.loc 1 174 9 is_stmt 1 view .LVU198
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:174:         return execute(ctx, ctx->buf, reply, reply_size);
	.loc 1 174 23 is_stmt 0 view .LVU199
	mov.n	a13, a5	#, reply_size
	mov.n	a12, a4	#, reply
	mov.n	a11, a2	#, ctx
	mov.n	a10, a2	#, ctx
	call8	_ZL7executeP11lx200_ctx_tPKcPcj		#
.LVL62:
	mov.n	a2, a10	# <retval>, <retval>
.LVL63:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:174:         return execute(ctx, ctx->buf, reply, reply_size);
	.loc 1 174 56 view .LVU200
	j	.L30		#
.LVL64:
.L38:
	.loc 1 177 5 is_stmt 1 view .LVU201
.LBB14:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:177:     if (ctx->len >= LX200_CMD_MAX_LEN - 1) {
	.loc 1 177 14 is_stmt 0 view .LVU202
	l8ui	a8, a2, 32	# ctx_37(D)->len, _28
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:177:     if (ctx->len >= LX200_CMD_MAX_LEN - 1) {
	.loc 1 177 5 view .LVU203
	movi.n	a9, 0x1e	# tmp85,
	bgeu	a9, a8, .L39	# tmp85, _28,
.LBB15:
	.loc 1 178 9 is_stmt 1 view .LVU204
	.loc 1 178 14 view .LVU205
	.loc 1 178 19 view .LVU206
	.loc 1 178 51 view .LVU207
	.loc 1 178 56 view .LVU208
	.loc 1 178 156 discriminator 2 view .LVU209
.LBB16:
	.loc 1 178 213 discriminator 5 view .LVU210
.LBB17:
	.loc 1 178 238 discriminator 5 view .LVU211
	.loc 1 178 273 discriminator 5 view .LVU212
	.loc 1 178 313 view .LVU213
.LBE17:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:178:         ESP_LOGW(TAG, "[%s] команда длиннее %d байт — выброшена", ctx->name, LX200_CMD_MAX_LEN - 1);
	.loc 1 178 220 is_stmt 0 discriminator 5 view .LVU214
	call8	esp_log_timestamp		#
.LVL65:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:178:         ESP_LOGW(TAG, "[%s] команда длиннее %d байт — выброшена", ctx->name, LX200_CMD_MAX_LEN - 1);
	.loc 1 178 220 discriminator 7 view .LVU215
	l32r	a11, .LC15	#, tmp86
	movi.n	a8, 0x1f	# tmp89,
	s32i.n	a8, sp, 0	#, tmp89
	l32i.n	a15, a2, 52	# ctx_37(D)->name,
	mov.n	a14, a11	#, tmp86
	mov.n	a13, a10	#, _33
	l32r	a12, .LC19	#,
	movi.n	a10, 2	#,
	call8	esp_log		#
.LVL66:
	.loc 1 178 51 is_stmt 1 view .LVU216
	.loc 1 178 14 view .LVU217
.LBE16:
	.loc 1 178 9 view .LVU218
	.loc 1 179 9 view .LVU219
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:179:         ctx->collecting = false;
	.loc 1 179 25 is_stmt 0 view .LVU220
	movi.n	a8, 0	# tmp90,
	s8i	a8, a2, 33	# ctx_37(D)->collecting, tmp90
	.loc 1 180 9 is_stmt 1 view .LVU221
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:180:         return 0;
	.loc 1 180 16 is_stmt 0 view .LVU222
	movi.n	a2, 0	# <retval>,
.LVL67:
	.loc 1 180 16 view .LVU223
	j	.L30		#
.LVL68:
.L39:
	.loc 1 180 16 view .LVU224
.LBE15:
.LBE14:
	.loc 1 183 5 is_stmt 1 view .LVU225
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:183:     ctx->buf[ctx->len++] = (char)byte;
	.loc 1 183 22 is_stmt 0 view .LVU226
	addi.n	a9, a8, 1	# tmp91, _28,
	s8i	a9, a2, 32	# ctx_37(D)->len, tmp91
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:183:     ctx->buf[ctx->len++] = (char)byte;
	.loc 1 183 26 view .LVU227
	add.n	a2, a2, a8	# tmp92, ctx, _28
.LVL69:
	.loc 1 183 26 view .LVU228
	s8i	a3, a2, 0	# ctx_37(D)->buf[_46], byte
	.loc 1 184 5 is_stmt 1 view .LVU229
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:184:     return 0;
	.loc 1 184 12 is_stmt 0 view .LVU230
	movi.n	a2, 0	# <retval>,
.L30:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp:185: }
	.loc 1 185 1 view .LVU231
	retw.n	
.LFE33:
	.size	_Z10lx200_feedP11lx200_ctx_thPcj, .-_Z10lx200_feedP11lx200_ctx_thPcj
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC20:
	.string	"Mn"
	.align	4
.LC21:
	.string	"Ms"
	.align	4
.LC22:
	.string	"Me"
	.align	4
.LC23:
	.string	"Mw"
	.align	4
.LC24:
	.string	"Qn"
	.align	4
.LC25:
	.string	"Qs"
	.align	4
.LC26:
	.string	"Qe"
	.align	4
.LC27:
	.string	"Qw"
	.align	4
.LC28:
	.string	"Q"
	.align	4
.LC29:
	.string	"RG"
	.align	4
.LC30:
	.string	"RC"
	.align	4
.LC31:
	.string	"RM"
	.align	4
.LC32:
	.string	"RS"
	.align	4
.LC33:
	.string	"Te"
	.align	4
.LC34:
	.string	"Td"
	.section	.rodata._ZL8COMMANDS,"a"
	.align	4
	.type	_ZL8COMMANDS, @object
	.size	_ZL8COMMANDS, 180
_ZL8COMMANDS:
# name:
	.word	.LC20
# has_args:
	.byte	0
# handler:
	.zero	3
	.word	_ZL8cmd_moveP11lx200_ctx_tPKcPcj
# name:
	.word	.LC21
# has_args:
	.byte	0
# handler:
	.zero	3
	.word	_ZL8cmd_moveP11lx200_ctx_tPKcPcj
# name:
	.word	.LC22
# has_args:
	.byte	0
# handler:
	.zero	3
	.word	_ZL8cmd_moveP11lx200_ctx_tPKcPcj
# name:
	.word	.LC23
# has_args:
	.byte	0
# handler:
	.zero	3
	.word	_ZL8cmd_moveP11lx200_ctx_tPKcPcj
# name:
	.word	.LC24
# has_args:
	.byte	0
# handler:
	.zero	3
	.word	_ZL12cmd_stop_dirP11lx200_ctx_tPKcPcj
# name:
	.word	.LC25
# has_args:
	.byte	0
# handler:
	.zero	3
	.word	_ZL12cmd_stop_dirP11lx200_ctx_tPKcPcj
# name:
	.word	.LC26
# has_args:
	.byte	0
# handler:
	.zero	3
	.word	_ZL12cmd_stop_dirP11lx200_ctx_tPKcPcj
# name:
	.word	.LC27
# has_args:
	.byte	0
# handler:
	.zero	3
	.word	_ZL12cmd_stop_dirP11lx200_ctx_tPKcPcj
# name:
	.word	.LC28
# has_args:
	.byte	0
# handler:
	.zero	3
	.word	_ZL12cmd_stop_allP11lx200_ctx_tPKcPcj
# name:
	.word	.LC29
# has_args:
	.byte	0
# handler:
	.zero	3
	.word	_ZL8cmd_rateP11lx200_ctx_tPKcPcj
# name:
	.word	.LC30
# has_args:
	.byte	0
# handler:
	.zero	3
	.word	_ZL8cmd_rateP11lx200_ctx_tPKcPcj
# name:
	.word	.LC31
# has_args:
	.byte	0
# handler:
	.zero	3
	.word	_ZL8cmd_rateP11lx200_ctx_tPKcPcj
# name:
	.word	.LC32
# has_args:
	.byte	0
# handler:
	.zero	3
	.word	_ZL8cmd_rateP11lx200_ctx_tPKcPcj
# name:
	.word	.LC33
# has_args:
	.byte	0
# handler:
	.zero	3
	.word	_ZL9cmd_trackP11lx200_ctx_tPKcPcj
# name:
	.word	.LC34
# has_args:
	.byte	0
# handler:
	.zero	3
	.word	_ZL9cmd_trackP11lx200_ctx_tPKcPcj
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI0-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI1-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI2-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI3-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI5-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI6-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI7-.LFB27
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI8-.LFB26
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI9-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI10-.LFB33
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/cstddef"
	.file 3 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/cstdint"
	.file 4 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/cstring"
	.file 5 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/xtensa-esp-elf/include/c++/15.2.0/xtensa-esp-elf/esp32s3/no-rtti/bits/c++config.h"
	.file 6 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/lib/gcc/xtensa-esp-elf/15.2.0/include/stddef.h"
	.file 7 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/machine/_default_types.h"
	.file 8 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/sys/_stdint.h"
	.file 9 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/stdint.h"
	.file 10 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.h"
	.file 11 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/string.h"
	.file 12 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_level.h"
	.file 13 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_config.h"
	.file 14 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_args.h"
	.file 15 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_common/include/esp_err.h"
	.file 16 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/components/lx200_format/include/lx200_format.h"
	.file 17 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/mount/mount.h"
	.file 18 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_timestamp.h"
	.file 19 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_timer/include/esp_timer.h"
	.file 20 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1167
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
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.string	"std"
	.byte	0x5
	.2byte	0x150
	.byte	0xb
	.4byte	0x16b
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x5
	.2byte	0x173
	.byte	0x41
	.uleb128 0x5
	.byte	0x5
	.2byte	0x173
	.byte	0x41
	.4byte	0x40
	.uleb128 0x6
	.byte	0x2
	.byte	0x42
	.byte	0xb
	.4byte	0x1da
	.uleb128 0x6
	.byte	0x3
	.byte	0x35
	.byte	0xb
	.4byte	0x30c
	.uleb128 0x6
	.byte	0x3
	.byte	0x36
	.byte	0xb
	.4byte	0x324
	.uleb128 0x6
	.byte	0x3
	.byte	0x37
	.byte	0xb
	.4byte	0x33c
	.uleb128 0x6
	.byte	0x3
	.byte	0x38
	.byte	0xb
	.4byte	0x354
	.uleb128 0x6
	.byte	0x3
	.byte	0x3a
	.byte	0xb
	.4byte	0x3fc
	.uleb128 0x6
	.byte	0x3
	.byte	0x3b
	.byte	0xb
	.4byte	0x414
	.uleb128 0x6
	.byte	0x3
	.byte	0x3c
	.byte	0xb
	.4byte	0x42c
	.uleb128 0x6
	.byte	0x3
	.byte	0x3d
	.byte	0xb
	.4byte	0x444
	.uleb128 0x6
	.byte	0x3
	.byte	0x3f
	.byte	0xb
	.4byte	0x39c
	.uleb128 0x6
	.byte	0x3
	.byte	0x40
	.byte	0xb
	.4byte	0x3b4
	.uleb128 0x6
	.byte	0x3
	.byte	0x41
	.byte	0xb
	.4byte	0x3cc
	.uleb128 0x6
	.byte	0x3
	.byte	0x42
	.byte	0xb
	.4byte	0x3e4
	.uleb128 0x6
	.byte	0x3
	.byte	0x44
	.byte	0xb
	.4byte	0x36c
	.uleb128 0x6
	.byte	0x3
	.byte	0x45
	.byte	0xb
	.4byte	0x384
	.uleb128 0x6
	.byte	0x3
	.byte	0x47
	.byte	0xb
	.4byte	0x318
	.uleb128 0x6
	.byte	0x3
	.byte	0x48
	.byte	0xb
	.4byte	0x330
	.uleb128 0x6
	.byte	0x3
	.byte	0x49
	.byte	0xb
	.4byte	0x348
	.uleb128 0x6
	.byte	0x3
	.byte	0x4a
	.byte	0xb
	.4byte	0x360
	.uleb128 0x6
	.byte	0x3
	.byte	0x4c
	.byte	0xb
	.4byte	0x408
	.uleb128 0x6
	.byte	0x3
	.byte	0x4d
	.byte	0xb
	.4byte	0x420
	.uleb128 0x6
	.byte	0x3
	.byte	0x4e
	.byte	0xb
	.4byte	0x438
	.uleb128 0x6
	.byte	0x3
	.byte	0x4f
	.byte	0xb
	.4byte	0x450
	.uleb128 0x6
	.byte	0x3
	.byte	0x51
	.byte	0xb
	.4byte	0x3a8
	.uleb128 0x6
	.byte	0x3
	.byte	0x52
	.byte	0xb
	.4byte	0x3c0
	.uleb128 0x6
	.byte	0x3
	.byte	0x53
	.byte	0xb
	.4byte	0x3d8
	.uleb128 0x6
	.byte	0x3
	.byte	0x54
	.byte	0xb
	.4byte	0x3f0
	.uleb128 0x6
	.byte	0x3
	.byte	0x56
	.byte	0xb
	.4byte	0x378
	.uleb128 0x6
	.byte	0x3
	.byte	0x57
	.byte	0xb
	.4byte	0x390
	.uleb128 0x6
	.byte	0x4
	.byte	0x52
	.byte	0xb
	.4byte	0x4ed
	.uleb128 0x6
	.byte	0x4
	.byte	0x54
	.byte	0xb
	.4byte	0x516
	.uleb128 0x6
	.byte	0x4
	.byte	0x57
	.byte	0xb
	.4byte	0x536
	.uleb128 0x6
	.byte	0x4
	.byte	0x5a
	.byte	0xb
	.4byte	0x551
	.uleb128 0x6
	.byte	0x4
	.byte	0x61
	.byte	0xb
	.4byte	0x56d
	.uleb128 0x6
	.byte	0x4
	.byte	0x63
	.byte	0xb
	.4byte	0x588
	.byte	0
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x5
	.2byte	0x175
	.byte	0xb
	.4byte	0x18b
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x5
	.2byte	0x177
	.byte	0x41
	.uleb128 0x5
	.byte	0x5
	.2byte	0x177
	.byte	0x41
	.4byte	0x178
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.4byte	.LASF9
	.byte	0x6
	.byte	0xe5
	.byte	0x16
	.4byte	0x2c
	.uleb128 0xa
	.byte	0x10
	.byte	0x8
	.byte	0x6
	.2byte	0x1b8
	.byte	0x10
	.4byte	.LASF175
	.4byte	0x1cc
	.uleb128 0xb
	.4byte	.LASF4
	.byte	0x6
	.2byte	0x1b9
	.byte	0xd
	.4byte	0x1cc
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF5
	.byte	0x6
	.2byte	0x1ba
	.byte	0xf
	.4byte	0x1d3
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF7
	.uleb128 0xc
	.4byte	.LASF176
	.byte	0x6
	.2byte	0x1c3
	.byte	0x3
	.4byte	0x19e
	.byte	0x8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x7
	.byte	0xd2
	.byte	0x15
	.4byte	0x1fb
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF11
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x7
	.byte	0xd7
	.byte	0x17
	.4byte	0x1e8
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x7
	.byte	0xdb
	.byte	0x13
	.4byte	0x21a
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x7
	.byte	0xe0
	.byte	0x1c
	.4byte	0x22d
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x7
	.byte	0xe4
	.byte	0x12
	.4byte	0x240
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF18
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x7
	.byte	0xe9
	.byte	0x1b
	.4byte	0x253
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x7
	.byte	0xed
	.byte	0x17
	.4byte	0x1cc
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x7
	.byte	0xf2
	.byte	0x20
	.4byte	0x25
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x7
	.byte	0xf6
	.byte	0x15
	.4byte	0x1fb
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x7
	.byte	0xf8
	.byte	0x17
	.4byte	0x1e8
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x7
	.2byte	0x110
	.byte	0x13
	.4byte	0x21a
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x7
	.2byte	0x112
	.byte	0x1c
	.4byte	0x22d
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x7
	.2byte	0x126
	.byte	0x12
	.4byte	0x240
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x7
	.2byte	0x128
	.byte	0x1b
	.4byte	0x253
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x7
	.2byte	0x138
	.byte	0x17
	.4byte	0x1cc
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x7
	.2byte	0x13a
	.byte	0x20
	.4byte	0x25
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x7
	.2byte	0x146
	.byte	0x17
	.4byte	0x1cc
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x14e
	.byte	0x20
	.4byte	0x25
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x7
	.2byte	0x156
	.byte	0xd
	.4byte	0x18b
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x7
	.2byte	0x158
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x8
	.byte	0x12
	.byte	0x12
	.4byte	0x1ef
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x8
	.byte	0x16
	.byte	0x13
	.4byte	0x202
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x8
	.byte	0x1e
	.byte	0x13
	.4byte	0x20e
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x8
	.byte	0x22
	.byte	0x14
	.4byte	0x221
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x8
	.byte	0x2a
	.byte	0x13
	.4byte	0x234
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x8
	.byte	0x2e
	.byte	0x14
	.4byte	0x247
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x8
	.byte	0x36
	.byte	0x13
	.4byte	0x25a
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x8
	.byte	0x3a
	.byte	0x14
	.4byte	0x266
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x8
	.byte	0x41
	.byte	0x14
	.4byte	0x2d8
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x8
	.byte	0x46
	.byte	0x15
	.4byte	0x2e5
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x8
	.byte	0x4b
	.byte	0x14
	.4byte	0x2f2
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x8
	.byte	0x50
	.byte	0x15
	.4byte	0x2ff
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x9
	.byte	0x14
	.byte	0x18
	.4byte	0x272
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x9
	.byte	0x15
	.byte	0x19
	.4byte	0x27e
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x9
	.byte	0x1a
	.byte	0x19
	.4byte	0x28a
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.4byte	0x297
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x9
	.byte	0x20
	.byte	0x19
	.4byte	0x2a4
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x9
	.byte	0x21
	.byte	0x1a
	.4byte	0x2b1
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x9
	.byte	0x26
	.byte	0x19
	.4byte	0x2be
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x9
	.byte	0x27
	.byte	0x1a
	.4byte	0x2cb
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x9
	.byte	0x32
	.byte	0xf
	.4byte	0x18b
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x9
	.byte	0x33
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x9
	.byte	0x3c
	.byte	0xf
	.4byte	0x18b
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x9
	.byte	0x3d
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x9
	.byte	0x46
	.byte	0xf
	.4byte	0x18b
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x9
	.byte	0x47
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x9
	.byte	0x50
	.byte	0x19
	.4byte	0x1cc
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x9
	.byte	0x51
	.byte	0x22
	.4byte	0x25
	.uleb128 0xe
	.byte	0x38
	.byte	0xa
	.byte	0x17
	.byte	0x10
	.4byte	.LASF84
	.4byte	0x4b8
	.uleb128 0xf
	.string	"buf"
	.byte	0xa
	.byte	0x18
	.byte	0xa
	.4byte	0x4b8
	.byte	0
	.uleb128 0xf
	.string	"len"
	.byte	0xa
	.byte	0x19
	.byte	0xd
	.4byte	0x318
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0xa
	.byte	0x1a
	.byte	0xa
	.4byte	0x4d4
	.byte	0x21
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0xa
	.byte	0x1b
	.byte	0xd
	.4byte	0x354
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0xa
	.byte	0x1c
	.byte	0xa
	.4byte	0x4d4
	.byte	0x30
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0xa
	.byte	0x1d
	.byte	0x11
	.4byte	0x4db
	.byte	0x34
	.byte	0
	.uleb128 0x11
	.4byte	0x4c8
	.4byte	0x4c8
	.uleb128 0x12
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF67
	.uleb128 0x13
	.4byte	0x4c8
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF68
	.uleb128 0x14
	.byte	0x4
	.4byte	0x4cf
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0xa
	.byte	0x1e
	.byte	0x3
	.4byte	0x45c
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0xb
	.byte	0x55
	.byte	0x7
	.4byte	0x50d
	.4byte	0x50d
	.uleb128 0x16
	.4byte	0x50d
	.uleb128 0x16
	.4byte	0x50f
	.uleb128 0x16
	.4byte	0x192
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.uleb128 0x14
	.byte	0x4
	.4byte	0x515
	.uleb128 0x18
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0xb
	.byte	0x5e
	.byte	0x7
	.4byte	0x50d
	.4byte	0x536
	.uleb128 0x16
	.4byte	0x50d
	.uleb128 0x16
	.4byte	0x18b
	.uleb128 0x16
	.4byte	0x192
	.byte	0
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0xb
	.byte	0x72
	.byte	0x5
	.4byte	0x18b
	.4byte	0x551
	.uleb128 0x16
	.4byte	0x4db
	.uleb128 0x16
	.4byte	0x4db
	.byte	0
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0xb
	.byte	0x89
	.byte	0x7
	.4byte	0x567
	.4byte	0x567
	.uleb128 0x16
	.4byte	0x18b
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x4c8
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0xb
	.byte	0xbf
	.byte	0x7
	.4byte	0x567
	.4byte	0x588
	.uleb128 0x16
	.4byte	0x567
	.uleb128 0x16
	.4byte	0x4db
	.byte	0
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0xb
	.byte	0xc9
	.byte	0x8
	.4byte	0x192
	.4byte	0x5a8
	.uleb128 0x16
	.4byte	0x567
	.uleb128 0x16
	.4byte	0x4db
	.uleb128 0x16
	.4byte	0x192
	.byte	0
	.uleb128 0x19
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x14
	.byte	0xe
	.4byte	.LASF96
	.4byte	0x5e5
	.uleb128 0x1a
	.4byte	.LASF76
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF77
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF78
	.byte	0x2
	.uleb128 0x1a
	.4byte	.LASF79
	.byte	0x3
	.uleb128 0x1a
	.4byte	.LASF80
	.byte	0x4
	.uleb128 0x1a
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF82
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0xc
	.byte	0x1c
	.byte	0x3
	.4byte	0x5a8
	.uleb128 0xe
	.byte	0x4
	.byte	0xd
	.byte	0x77
	.byte	0x10
	.4byte	.LASF85
	.4byte	0x6a1
	.uleb128 0x1b
	.byte	0x4
	.byte	0xd
	.byte	0x78
	.byte	0xb
	.4byte	0x69a
	.uleb128 0x1c
	.byte	0x4
	.byte	0xd
	.byte	0x79
	.byte	0x10
	.4byte	0x681
	.uleb128 0x1d
	.4byte	.LASF86
	.byte	0xd
	.byte	0x7a
	.byte	0x1d
	.4byte	0x5e5
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF87
	.byte	0xd
	.byte	0x7b
	.byte	0x16
	.4byte	0x348
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF88
	.byte	0xd
	.byte	0x7c
	.byte	0x16
	.4byte	0x348
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF89
	.byte	0xd
	.byte	0x7d
	.byte	0x16
	.4byte	0x348
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF90
	.byte	0xd
	.byte	0x7e
	.byte	0x16
	.4byte	0x348
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF91
	.byte	0xd
	.byte	0x7f
	.byte	0x16
	.4byte	0x348
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF92
	.byte	0xd
	.byte	0x80
	.byte	0x16
	.4byte	0x348
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF93
	.byte	0xd
	.byte	0x81
	.byte	0xb
	.4byte	0x607
	.uleb128 0x1e
	.4byte	.LASF94
	.byte	0xd
	.byte	0x82
	.byte	0x12
	.4byte	0x348
	.byte	0
	.uleb128 0x1f
	.4byte	0x5fe
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0xd
	.byte	0x84
	.byte	0x3
	.4byte	0x5f1
	.uleb128 0x19
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.4byte	.LASF97
	.4byte	0x6d8
	.uleb128 0x1a
	.4byte	.LASF98
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF99
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0x2
	.uleb128 0x1a
	.4byte	.LASF101
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0xe
	.byte	0x29
	.byte	0x3
	.4byte	0x6ad
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0xf
	.byte	0x13
	.byte	0xd
	.4byte	0x18b
	.uleb128 0x20
	.4byte	.LASF108
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.byte	0x17
	.byte	0x6
	.4byte	0x71b
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF105
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF106
	.byte	0x2
	.uleb128 0x1a
	.4byte	.LASF107
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.4byte	.LASF109
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.byte	0x1f
	.byte	0x6
	.4byte	0x746
	.uleb128 0x1a
	.4byte	.LASF110
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF111
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF112
	.byte	0x2
	.uleb128 0x1a
	.4byte	.LASF113
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.4byte	.LASF114
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x11
	.byte	0x13
	.byte	0x6
	.4byte	0x771
	.uleb128 0x1a
	.4byte	.LASF115
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF116
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF117
	.byte	0x2
	.uleb128 0x1a
	.4byte	.LASF118
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.4byte	.LASF119
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x11
	.byte	0x1b
	.byte	0x6
	.4byte	0x79c
	.uleb128 0x1a
	.4byte	.LASF120
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF121
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF122
	.byte	0x2
	.uleb128 0x1a
	.4byte	.LASF123
	.byte	0x3
	.byte	0
	.uleb128 0x21
	.string	"TAG"
	.byte	0x1
	.byte	0xb
	.byte	0x14
	.4byte	0x4db
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0x1
	.byte	0x16
	.byte	0x12
	.4byte	0x7b4
	.uleb128 0x14
	.byte	0x4
	.4byte	0x7ba
	.uleb128 0x22
	.4byte	0x192
	.4byte	0x7d8
	.uleb128 0x16
	.4byte	0x7d8
	.uleb128 0x16
	.4byte	0x4db
	.uleb128 0x16
	.4byte	0x567
	.uleb128 0x16
	.4byte	0x192
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x4e1
	.uleb128 0xe
	.byte	0xc
	.byte	0x1
	.byte	0x18
	.byte	0x10
	.4byte	.LASF125
	.4byte	0x813
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0x19
	.byte	0x11
	.4byte	0x4db
	.byte	0
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0x1
	.byte	0x1a
	.byte	0xa
	.4byte	0x4d4
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0x1
	.byte	0x1c
	.byte	0x15
	.4byte	0x7a8
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.4byte	0x7de
	.uleb128 0x13
	.4byte	0x813
	.uleb128 0x11
	.4byte	0x81f
	.4byte	0x834
	.uleb128 0x12
	.4byte	0x2c
	.byte	0xe
	.byte	0
	.uleb128 0x13
	.4byte	0x824
	.uleb128 0x23
	.4byte	.LASF157
	.byte	0x1
	.byte	0x68
	.byte	0x1a
	.4byte	0x834
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL8COMMANDS
	.uleb128 0x24
	.4byte	.LASF129
	.byte	0x11
	.byte	0x23
	.byte	0xb
	.4byte	.LASF131
	.4byte	0x6e4
	.4byte	0x865
	.uleb128 0x16
	.4byte	0x746
	.byte	0
	.uleb128 0x24
	.4byte	.LASF130
	.byte	0x11
	.byte	0x26
	.byte	0xb
	.4byte	.LASF132
	.4byte	0x6e4
	.4byte	0x87f
	.uleb128 0x16
	.4byte	0x746
	.byte	0
	.uleb128 0x24
	.4byte	.LASF133
	.byte	0x10
	.byte	0x49
	.byte	0x6
	.4byte	.LASF134
	.4byte	0x4d4
	.4byte	0x89e
	.uleb128 0x16
	.4byte	0x4c8
	.uleb128 0x16
	.4byte	0x89e
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x6f0
	.uleb128 0x25
	.4byte	.LASF177
	.byte	0x11
	.byte	0x29
	.byte	0xb
	.4byte	.LASF178
	.4byte	0x6e4
	.uleb128 0x26
	.4byte	.LASF135
	.byte	0x11
	.byte	0x31
	.byte	0x6
	.4byte	.LASF179
	.4byte	0x8ca
	.uleb128 0x16
	.4byte	0x771
	.byte	0
	.uleb128 0x24
	.4byte	.LASF136
	.byte	0x10
	.byte	0x4d
	.byte	0x6
	.4byte	.LASF137
	.4byte	0x4d4
	.4byte	0x8e9
	.uleb128 0x16
	.4byte	0x4c8
	.uleb128 0x16
	.4byte	0x8e9
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x71b
	.uleb128 0x24
	.4byte	.LASF138
	.byte	0x11
	.byte	0x2d
	.byte	0xb
	.4byte	.LASF139
	.4byte	0x6e4
	.4byte	0x909
	.uleb128 0x16
	.4byte	0x4d4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF140
	.byte	0xb
	.byte	0x71
	.byte	0x5
	.4byte	0x18b
	.4byte	0x924
	.uleb128 0x16
	.4byte	0x4db
	.uleb128 0x16
	.4byte	0x4db
	.byte	0
	.uleb128 0x15
	.4byte	.LASF141
	.byte	0xb
	.byte	0xaa
	.byte	0x5
	.4byte	0x18b
	.4byte	0x944
	.uleb128 0x16
	.4byte	0x4db
	.uleb128 0x16
	.4byte	0x4db
	.uleb128 0x16
	.4byte	0x192
	.byte	0
	.uleb128 0x15
	.4byte	.LASF142
	.byte	0xb
	.byte	0xa2
	.byte	0x8
	.4byte	0x192
	.4byte	0x95a
	.uleb128 0x16
	.4byte	0x4db
	.byte	0
	.uleb128 0x27
	.4byte	.LASF180
	.byte	0x14
	.byte	0x26
	.byte	0x6
	.4byte	0x977
	.uleb128 0x16
	.4byte	0x6a1
	.uleb128 0x16
	.4byte	0x4db
	.uleb128 0x16
	.4byte	0x4db
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.4byte	.LASF143
	.byte	0x12
	.byte	0x26
	.byte	0xa
	.4byte	0x348
	.uleb128 0x29
	.4byte	.LASF144
	.byte	0x13
	.byte	0xdf
	.byte	0x9
	.4byte	0x354
	.uleb128 0x2a
	.4byte	.LASF181
	.byte	0x1
	.byte	0x93
	.byte	0x8
	.4byte	.LASF182
	.4byte	0x192
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb7d
	.uleb128 0x2b
	.string	"ctx"
	.byte	0x1
	.byte	0x93
	.byte	0x20
	.4byte	0x7d8
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x2c
	.4byte	.LASF145
	.byte	0x1
	.byte	0x93
	.byte	0x2d
	.4byte	0x318
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF146
	.byte	0x1
	.byte	0x93
	.byte	0x39
	.4byte	0x567
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.LASF147
	.byte	0x1
	.byte	0x93
	.byte	0x47
	.4byte	0x192
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2d
	.4byte	0x9fd
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x9c
	.byte	0x9c
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0xa17
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x9c
	.byte	0xf7
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2d
	.4byte	0xa29
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x9c
	.byte	0xf8
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2d
	.4byte	0xa3b
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x9c
	.byte	0xfa
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2d
	.4byte	0xa4d
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x9c
	.byte	0xc0
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2d
	.4byte	0xa5f
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0xb2
	.byte	0x9c
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0xa79
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0xb2
	.byte	0xff
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2d
	.4byte	0xa8c
	.uleb128 0x30
	.4byte	.LASF148
	.byte	0x1
	.byte	0xb2
	.2byte	0x100
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2d
	.4byte	0xa9f
	.uleb128 0x30
	.4byte	.LASF148
	.byte	0x1
	.byte	0xb2
	.2byte	0x102
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2d
	.4byte	0xab1
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0xb2
	.byte	0xc8
	.4byte	0x6a1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL53
	.4byte	0x10b3
	.4byte	0xad4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL56
	.4byte	0x983
	.uleb128 0x33
	.4byte	.LVL57
	.4byte	0x977
	.uleb128 0x31
	.4byte	.LVL58
	.4byte	0x95a
	.4byte	0xb14
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x33
	.4byte	.LVL59
	.4byte	0x983
	.uleb128 0x31
	.4byte	.LVL62
	.4byte	0xbcf
	.4byte	0xb43
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL65
	.4byte	0x977
	.uleb128 0x34
	.4byte	.LVL66
	.4byte	0x95a
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF183
	.byte	0x1
	.byte	0x8d
	.byte	0x6
	.4byte	.LASF184
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbcf
	.uleb128 0x36
	.string	"ctx"
	.byte	0x1
	.byte	0x8d
	.byte	0x22
	.4byte	0x7d8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.4byte	.LASF66
	.byte	0x1
	.byte	0x8d
	.byte	0x33
	.4byte	0x4db
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.4byte	.LVL51
	.4byte	0x516
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF154
	.byte	0x1
	.byte	0x7b
	.byte	0xf
	.4byte	0x192
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe2b
	.uleb128 0x2b
	.string	"ctx"
	.byte	0x1
	.byte	0x7b
	.byte	0x24
	.4byte	0x7d8
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x36
	.string	"cmd"
	.byte	0x1
	.byte	0x7b
	.byte	0x35
	.4byte	0x4db
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF146
	.byte	0x1
	.byte	0x7b
	.byte	0x40
	.4byte	0x567
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.4byte	.LASF149
	.byte	0x1
	.byte	0x7b
	.byte	0x4e
	.4byte	0x192
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2f
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xd8e
	.uleb128 0x39
	.string	"c"
	.byte	0x1
	.byte	0x7e
	.byte	0x1d
	.4byte	0xe2b
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x3a
	.4byte	.LASF151
	.4byte	0xe31
	.uleb128 0x3b
	.4byte	.LASF150
	.4byte	0xe37
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x3a
	.4byte	.LASF152
	.4byte	0xe37
	.uleb128 0x3c
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x3d
	.4byte	.LASF153
	.byte	0x1
	.byte	0x7f
	.byte	0xe
	.4byte	0x4d4
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2d
	.4byte	0xc9e
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x82
	.byte	0xa0
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2d
	.4byte	0xcb0
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x82
	.byte	0xc4
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2d
	.4byte	0xcc2
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x82
	.byte	0xc5
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2d
	.4byte	0xcd4
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x82
	.byte	0xc7
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0xcee
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x82
	.byte	0x8d
	.4byte	0x6a1
	.byte	0
	.uleb128 0x31
	.4byte	.LVL14
	.4byte	0x944
	.4byte	0xd02
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL15
	.4byte	0x924
	.4byte	0xd1c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL18
	.4byte	0x909
	.4byte	0xd30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL20
	.4byte	0x977
	.uleb128 0x31
	.4byte	.LVL21
	.4byte	0x95a
	.4byte	0xd6e
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
	.4byte	.LC1
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.4byte	.LVL22
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0xda0
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x89
	.byte	0x98
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xdba
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x89
	.byte	0xfa
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2d
	.4byte	0xdcc
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x89
	.byte	0xfb
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2d
	.4byte	0xdde
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x89
	.byte	0xfd
	.4byte	0x6a1
	.byte	0
	.uleb128 0x2d
	.4byte	0xdf0
	.uleb128 0x2e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x89
	.byte	0xc3
	.4byte	0x6a1
	.byte	0
	.uleb128 0x33
	.4byte	.LVL26
	.4byte	0x977
	.uleb128 0x34
	.4byte	.LVL27
	.4byte	0x95a
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
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
	.4byte	.LC1
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.byte	0x4
	.4byte	0x81f
	.uleb128 0x3f
	.byte	0x4
	.4byte	0x824
	.uleb128 0x14
	.byte	0x4
	.4byte	0x81f
	.uleb128 0x37
	.4byte	.LASF155
	.byte	0x1
	.byte	0x62
	.byte	0xf
	.4byte	0x192
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xebc
	.uleb128 0x40
	.4byte	0x7d8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.string	"cmd"
	.byte	0x1
	.byte	0x62
	.byte	0x34
	.4byte	0x4db
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF146
	.byte	0x1
	.byte	0x62
	.byte	0x3f
	.4byte	0x567
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2c
	.4byte	.LASF149
	.byte	0x1
	.byte	0x62
	.byte	0x4d
	.4byte	0x192
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x39
	.string	"err"
	.byte	0x1
	.byte	0x63
	.byte	0xf
	.4byte	0x6e4
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x33
	.4byte	.LVL32
	.4byte	0x8ef
	.uleb128 0x34
	.4byte	.LVL36
	.4byte	0x10b3
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF156
	.byte	0x1
	.byte	0x56
	.byte	0xf
	.4byte	0x192
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf2f
	.uleb128 0x40
	.4byte	0x7d8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.string	"cmd"
	.byte	0x1
	.byte	0x56
	.byte	0x33
	.4byte	0x4db
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	0x567
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x40
	.4byte	0x192
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF158
	.byte	0x1
	.byte	0x57
	.byte	0x12
	.4byte	0x71b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.4byte	.LVL38
	.4byte	0x8ca
	.4byte	0xf1c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x33
	.4byte	.LVL39
	.4byte	0x1055
	.uleb128 0x33
	.4byte	.LVL40
	.4byte	0x8b4
	.byte	0
	.uleb128 0x37
	.4byte	.LASF159
	.byte	0x1
	.byte	0x50
	.byte	0xf
	.4byte	0x192
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf6f
	.uleb128 0x40
	.4byte	0x7d8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x40
	.4byte	0x4db
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	0x567
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x40
	.4byte	0x192
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x33
	.4byte	.LVL41
	.4byte	0x8a4
	.byte	0
	.uleb128 0x37
	.4byte	.LASF160
	.byte	0x1
	.byte	0x47
	.byte	0xf
	.4byte	0x192
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe2
	.uleb128 0x40
	.4byte	0x7d8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.string	"cmd"
	.byte	0x1
	.byte	0x47
	.byte	0x37
	.4byte	0x4db
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	0x567
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x40
	.4byte	0x192
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x41
	.string	"dir"
	.byte	0x1
	.byte	0x48
	.byte	0x11
	.4byte	0x6f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.4byte	.LVL43
	.4byte	0x87f
	.4byte	0xfcf
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x33
	.4byte	.LVL44
	.4byte	0x1084
	.uleb128 0x33
	.4byte	.LVL45
	.4byte	0x865
	.byte	0
	.uleb128 0x37
	.4byte	.LASF161
	.byte	0x1
	.byte	0x3e
	.byte	0xf
	.4byte	0x192
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1055
	.uleb128 0x40
	.4byte	0x7d8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.string	"cmd"
	.byte	0x1
	.byte	0x3e
	.byte	0x33
	.4byte	0x4db
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	0x567
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x40
	.4byte	0x192
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x41
	.string	"dir"
	.byte	0x1
	.byte	0x3f
	.byte	0x11
	.4byte	0x6f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.4byte	.LVL47
	.4byte	0x87f
	.4byte	0x1042
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x33
	.4byte	.LVL48
	.4byte	0x1084
	.uleb128 0x33
	.4byte	.LVL49
	.4byte	0x84b
	.byte	0
	.uleb128 0x37
	.4byte	.LASF162
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.4byte	0x771
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1084
	.uleb128 0x38
	.4byte	.LASF158
	.byte	0x1
	.byte	0x31
	.byte	0x30
	.4byte	0x71b
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x37
	.4byte	.LASF163
	.byte	0x1
	.byte	0x27
	.byte	0x14
	.4byte	0x746
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10b3
	.uleb128 0x2b
	.string	"dir"
	.byte	0x1
	.byte	0x27
	.byte	0x2d
	.4byte	0x6f0
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF164
	.byte	0x1
	.byte	0x20
	.byte	0xf
	.4byte	0x192
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1140
	.uleb128 0x38
	.4byte	.LASF165
	.byte	0x1
	.byte	0x20
	.byte	0x26
	.4byte	0x4db
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2c
	.4byte	.LASF146
	.byte	0x1
	.byte	0x20
	.byte	0x32
	.4byte	0x567
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF149
	.byte	0x1
	.byte	0x20
	.byte	0x40
	.4byte	0x192
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x39
	.string	"n"
	.byte	0x1
	.byte	0x21
	.byte	0xc
	.4byte	0x192
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x31
	.4byte	.LVL7
	.4byte	0x944
	.4byte	0x1123
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.4byte	.LVL9
	.4byte	0x4ed
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF166
	.uleb128 0x2
	.byte	0x1
	.byte	0x10
	.4byte	.LASF167
	.uleb128 0x2
	.byte	0x2
	.byte	0x10
	.4byte	.LASF168
	.uleb128 0x2
	.byte	0x4
	.byte	0x10
	.4byte	.LASF169
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF170
	.uleb128 0x2
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS10:
	.uleb128 0
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 0
.LLST10:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL55
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
	.4byte	.LVL55
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
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
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL64
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
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LVL68
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
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LFE33
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
	.uleb128 0
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 0
.LLST4:
	.4byte	.LVL11
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
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
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
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE31
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
	.uleb128 0
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU31
	.uleb128 .LVU65
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU31
	.uleb128 .LVU84
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU38
	.uleb128 .LVU39
	.uleb128 .LVU41
	.uleb128 .LVU55
	.uleb128 .LVU63
	.uleb128 .LVU65
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU91
	.uleb128 .LVU94
	.uleb128 .LVU95
	.uleb128 .LVU96
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
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
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE25
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
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE24
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
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU15
	.uleb128 .LVU23
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF83:
	.string	"esp_log_level_t"
.LASF58:
	.string	"uint_fast16_t"
.LASF146:
	.string	"reply"
.LASF169:
	.string	"char32_t"
.LASF128:
	.string	"lx200_cmd_t"
.LASF142:
	.string	"strlen"
.LASF120:
	.string	"MOUNT_RATE_GUIDE"
.LASF141:
	.string	"strncmp"
.LASF183:
	.string	"lx200_ctx_init"
.LASF113:
	.string	"LX200_RATE_SLEW"
.LASF1:
	.string	"unsigned int"
.LASF159:
	.string	"cmd_stop_all"
.LASF84:
	.string	"11lx200_ctx_t"
.LASF2:
	.string	"__gnu_cxx"
.LASF147:
	.string	"reply_size"
.LASF43:
	.string	"intmax_t"
.LASF62:
	.string	"uint_fast64_t"
.LASF57:
	.string	"int_fast16_t"
.LASF17:
	.string	"__int32_t"
.LASF119:
	.string	"mount_rate_t"
.LASF85:
	.string	"16esp_log_config_t"
.LASF90:
	.string	"dis_timestamp"
.LASF125:
	.string	"11lx200_cmd_t"
.LASF73:
	.string	"strerror"
.LASF32:
	.string	"__uintmax_t"
.LASF177:
	.string	"mount_stop_all"
.LASF143:
	.string	"esp_log_timestamp"
.LASF127:
	.string	"handler"
.LASF27:
	.string	"__int_least32_t"
.LASF172:
	.ascii	"GNU C++26 15.2.0 -ftls-model=local-exec -mdynconfig=xtensa_e"
	.ascii	"sp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gn"
	.string	"u++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec"
.LASF135:
	.string	"mount_set_rate"
.LASF167:
	.string	"char8_t"
.LASF176:
	.string	"max_align_t"
.LASF33:
	.string	"__intptr_t"
.LASF61:
	.string	"int_fast64_t"
.LASF50:
	.string	"uint_least16_t"
.LASF40:
	.string	"uint32_t"
.LASF35:
	.string	"int8_t"
.LASF102:
	.string	"esp_log_args_type_t"
.LASF114:
	.string	"mount_dir_t"
.LASF5:
	.string	"__max_align_ld"
.LASF4:
	.string	"__max_align_ll"
.LASF175:
	.string	"11max_align_t"
.LASF151:
	.string	"__for_range"
.LASF37:
	.string	"int16_t"
.LASF49:
	.string	"int_least16_t"
.LASF44:
	.string	"uintmax_t"
.LASF82:
	.string	"ESP_LOG_MAX"
.LASF0:
	.string	"long long unsigned int"
.LASF182:
	.string	"_Z10lx200_feedP11lx200_ctx_thPcj"
.LASF89:
	.string	"dis_color"
.LASF15:
	.string	"__uint16_t"
.LASF78:
	.string	"ESP_LOG_WARN"
.LASF54:
	.string	"uint_least64_t"
.LASF132:
	.string	"_Z10mount_stop11mount_dir_t"
.LASF9:
	.string	"size_t"
.LASF47:
	.string	"int_least8_t"
.LASF41:
	.string	"int64_t"
.LASF75:
	.string	"strxfrm"
.LASF53:
	.string	"int_least64_t"
.LASF138:
	.string	"mount_track"
.LASF99:
	.string	"ESP_LOG_ARGS_TYPE_32BITS"
.LASF48:
	.string	"uint_least8_t"
.LASF180:
	.string	"esp_log"
.LASF28:
	.string	"__uint_least32_t"
.LASF63:
	.string	"collecting"
.LASF101:
	.string	"ESP_LOG_ARGS_TYPE_POINTER"
.LASF22:
	.string	"__uint64_t"
.LASF76:
	.string	"ESP_LOG_NONE"
.LASF131:
	.string	"_Z10mount_move11mount_dir_t"
.LASF72:
	.string	"strcoll"
.LASF98:
	.string	"ESP_LOG_ARGS_TYPE_NONE"
.LASF67:
	.string	"char"
.LASF158:
	.string	"rate"
.LASF133:
	.string	"lx200_dir_from_char"
.LASF161:
	.string	"cmd_move"
.LASF110:
	.string	"LX200_RATE_GUIDE"
.LASF164:
	.string	"copy_reply"
.LASF86:
	.string	"log_level"
.LASF165:
	.string	"text"
.LASF94:
	.string	"data"
.LASF166:
	.string	"wchar_t"
.LASF134:
	.string	"_Z19lx200_dir_from_charcP11lx200_dir_t"
.LASF100:
	.string	"ESP_LOG_ARGS_TYPE_64BITS"
.LASF168:
	.string	"char16_t"
.LASF173:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/lx200/lx200.cpp"
.LASF36:
	.string	"uint8_t"
.LASF154:
	.string	"execute"
.LASF150:
	.string	"__for_begin"
.LASF6:
	.string	"long long int"
.LASF122:
	.string	"MOUNT_RATE_FIND"
.LASF174:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/build/dev"
.LASF68:
	.string	"bool"
.LASF3:
	.string	"__cxx11"
.LASF144:
	.string	"esp_timer_get_time"
.LASF13:
	.string	"__int16_t"
.LASF153:
	.string	"match"
.LASF87:
	.string	"constrained_env"
.LASF55:
	.string	"int_fast8_t"
.LASF71:
	.string	"memset"
.LASF111:
	.string	"LX200_RATE_CENTER"
.LASF149:
	.string	"size"
.LASF25:
	.string	"__int_least16_t"
.LASF60:
	.string	"uint_fast32_t"
.LASF79:
	.string	"ESP_LOG_INFO"
.LASF124:
	.string	"lx200_handler_t"
.LASF178:
	.string	"_Z14mount_stop_allv"
.LASF126:
	.string	"has_args"
.LASF162:
	.string	"to_mount_rate"
.LASF10:
	.string	"__int8_t"
.LASF163:
	.string	"to_mount_dir"
.LASF21:
	.string	"__int64_t"
.LASF123:
	.string	"MOUNT_RATE_SLEW"
.LASF156:
	.string	"cmd_rate"
.LASF130:
	.string	"mount_stop"
.LASF31:
	.string	"__intmax_t"
.LASF7:
	.string	"long double"
.LASF45:
	.string	"intptr_t"
.LASF129:
	.string	"mount_move"
.LASF38:
	.string	"uint16_t"
.LASF34:
	.string	"__uintptr_t"
.LASF117:
	.string	"MOUNT_DIR_E"
.LASF29:
	.string	"__int_least64_t"
.LASF137:
	.string	"_Z20lx200_rate_from_charcP12lx200_rate_t"
.LASF155:
	.string	"cmd_track"
.LASF115:
	.string	"MOUNT_DIR_N"
.LASF24:
	.string	"__uint_least8_t"
.LASF59:
	.string	"int_fast32_t"
.LASF106:
	.string	"LX200_DIR_E"
.LASF118:
	.string	"MOUNT_DIR_W"
.LASF14:
	.string	"short int"
.LASF95:
	.string	"esp_log_config_t"
.LASF18:
	.string	"long int"
.LASF157:
	.string	"COMMANDS"
.LASF179:
	.string	"_Z14mount_set_rate12mount_rate_t"
.LASF42:
	.string	"uint64_t"
.LASF88:
	.string	"require_formatting"
.LASF93:
	.string	"opts"
.LASF77:
	.string	"ESP_LOG_ERROR"
.LASF12:
	.string	"__uint8_t"
.LASF66:
	.string	"name"
.LASF52:
	.string	"uint_least32_t"
.LASF23:
	.string	"__int_least8_t"
.LASF46:
	.string	"uintptr_t"
.LASF26:
	.string	"__uint_least16_t"
.LASF116:
	.string	"MOUNT_DIR_S"
.LASF136:
	.string	"lx200_rate_from_char"
.LASF152:
	.string	"__for_end"
.LASF20:
	.string	"long unsigned int"
.LASF81:
	.string	"ESP_LOG_VERBOSE"
.LASF171:
	.string	"float"
.LASF39:
	.string	"int32_t"
.LASF51:
	.string	"int_least32_t"
.LASF145:
	.string	"byte"
.LASF64:
	.string	"started_us"
.LASF181:
	.string	"lx200_feed"
.LASF8:
	.string	"unsigned char"
.LASF19:
	.string	"__uint32_t"
.LASF91:
	.string	"binary_mode"
.LASF139:
	.string	"_Z11mount_trackb"
.LASF56:
	.string	"uint_fast8_t"
.LASF74:
	.string	"strtok"
.LASF103:
	.string	"esp_err_t"
.LASF184:
	.string	"_Z14lx200_ctx_initP11lx200_ctx_tPKc"
.LASF30:
	.string	"__uint_least64_t"
.LASF104:
	.string	"LX200_DIR_N"
.LASF105:
	.string	"LX200_DIR_S"
.LASF107:
	.string	"LX200_DIR_W"
.LASF80:
	.string	"ESP_LOG_DEBUG"
.LASF11:
	.string	"signed char"
.LASF16:
	.string	"short unsigned int"
.LASF108:
	.string	"lx200_dir_t"
.LASF70:
	.string	"memcpy"
.LASF96:
	.string	"15esp_log_level_t"
.LASF97:
	.string	"19esp_log_args_type_t"
.LASF92:
	.string	"reserved"
.LASF148:
	.string	"__esp_log_config"
.LASF170:
	.string	"double"
.LASF160:
	.string	"cmd_stop_dir"
.LASF65:
	.string	"long_format"
.LASF112:
	.string	"LX200_RATE_FIND"
.LASF121:
	.string	"MOUNT_RATE_CENTER"
.LASF109:
	.string	"lx200_rate_t"
.LASF140:
	.string	"strcmp"
.LASF69:
	.string	"lx200_ctx_t"
	.ident	"GCC: (crosstool-NG esp-15.2.0_20251204) 15.2.0"
