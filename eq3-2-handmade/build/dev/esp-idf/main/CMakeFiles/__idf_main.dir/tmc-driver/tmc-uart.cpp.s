	.file	"tmc-uart.cpp"
# GNU C++26 (crosstool-NG esp-15.2.0_20251204) version 15.2.0 (xtensa-esp-elf)
#	compiled by GNU C version Debian Clang 19.1.7 (3+b1), GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -ftls-model=local-exec -mdynconfig=xtensa_esp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gnu++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec
	.text
.Ltext0:
	.file 1 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp"
	.section	.text._ZL8tmc_crc8Phh,"ax",@progbits
	.align	4
	.type	_ZL8tmc_crc8Phh, @function
_ZL8tmc_crc8Phh:
.LVL0:
.LFB99:
	.loc 1 22 53 view -0
	.loc 1 22 53 is_stmt 0 view .LVU1
	entry	sp, 32	#
.LCFI0:
	mov.n	a13, a2	# data, data
	.loc 1 24 5 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 26 5 view .LVU3
.LBB10:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:26:     for (int i = 0; i < len; i++) {
	.loc 1 26 14 is_stmt 0 view .LVU4
	movi.n	a12, 0	# i,
.LBE10:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:24:     uint8_t crc = 0;
	.loc 1 24 13 view .LVU5
	mov.n	a2, a12	# <retval>, i
.LVL2:
.LBB13:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:26:     for (int i = 0; i < len; i++) {
	.loc 1 26 5 view .LVU6
	j	.L2		#
.LVL3:
.L7:
.LBB11:
	.loc 1 29 9 is_stmt 1 view .LVU7
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:29:         uint8_t b = data[i];
	.loc 1 29 27 is_stmt 0 view .LVU8
	add.n	a8, a13, a12	# _2, data, i
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:29:         uint8_t b = data[i];
	.loc 1 29 17 view .LVU9
	l8ui	a10, a8, 0	# *_2, b
.LVL4:
	.loc 1 31 9 is_stmt 1 view .LVU10
.LBB12:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:31:         for (int j = 0; j < 8; j++) {
	.loc 1 31 18 is_stmt 0 view .LVU11
	movi.n	a9, 0	# j,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:31:         for (int j = 0; j < 8; j++) {
	.loc 1 31 9 view .LVU12
	j	.L3		#
.LVL5:
.L6:
	.loc 1 34 13 is_stmt 1 view .LVU13
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:34:             if ((crc >> 7) ^ (b & 0x01)) {
	.loc 1 34 22 is_stmt 0 view .LVU14
	srli	a8, a2, 7	# _3, <retval>,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:34:             if ((crc >> 7) ^ (b & 0x01)) {
	.loc 1 34 33 view .LVU15
	extui	a11, a10, 0, 1	# _4, b,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:34:             if ((crc >> 7) ^ (b & 0x01)) {
	.loc 1 34 13 view .LVU16
	beq	a8, a11, .L4	# _3, _4,
	.loc 1 36 17 is_stmt 1 view .LVU17
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:36:                 crc = (crc << 1) ^ 0x07;
	.loc 1 36 34 is_stmt 0 view .LVU18
	add.n	a2, a2, a2	# tmp60, <retval>, <retval>
.LVL6:
	.loc 1 36 34 view .LVU19
	movi.n	a8, 7	# tmp61,
	xor	a2, a2, a8	# tmp63, tmp60, tmp61
	extui	a2, a2, 0, 8	# <retval>, tmp63
.LVL7:
	.loc 1 36 34 view .LVU20
	j	.L5		#
.L4:
	.loc 1 39 17 is_stmt 1 view .LVU21
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:39:                 crc = (crc << 1);
	.loc 1 39 21 is_stmt 0 view .LVU22
	add.n	a2, a2, a2	# tmp64, <retval>, <retval>
.LVL8:
	.loc 1 39 21 view .LVU23
	extui	a2, a2, 0, 8	# <retval>, tmp64
.LVL9:
.L5:
	.loc 1 43 13 is_stmt 1 view .LVU24
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:43:             b >>= 1;
	.loc 1 43 15 is_stmt 0 view .LVU25
	srli	a10, a10, 1	# b, b,
.LVL10:
	.loc 1 31 9 is_stmt 1 discriminator 2 view .LVU26
	addi.n	a9, a9, 1	# j, j,
.LVL11:
.L3:
	.loc 1 31 27 discriminator 1 view .LVU27
	blti	a9, 8, .L6	# j,,
	.loc 1 31 27 is_stmt 0 discriminator 1 view .LVU28
.LBE12:
.LBE11:
	.loc 1 26 5 is_stmt 1 discriminator 2 view .LVU29
	addi.n	a12, a12, 1	# i, i,
.LVL12:
.L2:
	.loc 1 26 23 discriminator 1 view .LVU30
	blt	a12, a3, .L7	# i, len,
.LBE13:
	.loc 1 47 5 view .LVU31
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:48: }
	.loc 1 48 1 is_stmt 0 view .LVU32
	retw.n	
.LFE99:
	.size	_ZL8tmc_crc8Phh, .-_ZL8tmc_crc8Phh
	.section	.text._ZL22validate_uart_responsePh,"ax",@progbits
	.align	4
	.type	_ZL22validate_uart_responsePh, @function
_ZL22validate_uart_responsePh:
.LVL13:
.LFB100:
	.loc 1 50 51 is_stmt 1 view -0
	.loc 1 50 51 is_stmt 0 view .LVU34
	entry	sp, 32	#
.LCFI1:
	mov.n	a10, a2	# resp, resp
	.loc 1 51 5 is_stmt 1 view .LVU35
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:51:     if (resp[0] != UART_TMC_SYNC_BYTE || resp[1] != UART_TMC_MASTER_ADDR
	.loc 1 51 15 is_stmt 0 view .LVU36
	l8ui	a8, a2, 0	# *resp_7(D), _1
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:52:         || resp[7] != tmc_crc8(resp, 7)) {
	.loc 1 52 9 view .LVU37
	bnei	a8, 5, .L10	# _1,,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:51:     if (resp[0] != UART_TMC_SYNC_BYTE || resp[1] != UART_TMC_MASTER_ADDR
	.loc 1 51 34 view .LVU38
	l8ui	a9, a2, 1	# MEM[(uint8_t *)resp_7(D) + 1B], _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:51:     if (resp[0] != UART_TMC_SYNC_BYTE || resp[1] != UART_TMC_MASTER_ADDR
	.loc 1 51 25 view .LVU39
	movi	a8, 0xff	# tmp48,
	bne	a9, a8, .L11	# _2, tmp48,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:52:         || resp[7] != tmc_crc8(resp, 7)) {
	.loc 1 52 18 view .LVU40
	l8ui	a2, a2, 7	# MEM[(uint8_t *)resp_7(D) + 7B], _3
.LVL14:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:52:         || resp[7] != tmc_crc8(resp, 7)) {
	.loc 1 52 31 view .LVU41
	movi.n	a11, 7	#,
	call8	_ZL8tmc_crc8Phh		#
.LVL15:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:52:         || resp[7] != tmc_crc8(resp, 7)) {
	.loc 1 52 9 discriminator 2 view .LVU42
	bne	a2, a10, .L12	# _3, tmp52,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:56:     return true;
	.loc 1 56 12 view .LVU43
	movi.n	a2, 1	# <retval>,
	j	.L9		#
.LVL16:
.L10:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:53:             return false;
	.loc 1 53 20 view .LVU44
	movi.n	a2, 0	# <retval>,
.LVL17:
	.loc 1 53 20 view .LVU45
	j	.L9		#
.LVL18:
.L11:
	.loc 1 53 20 view .LVU46
	movi.n	a2, 0	# <retval>,
.LVL19:
	.loc 1 53 20 view .LVU47
	j	.L9		#
.LVL20:
.L12:
	.loc 1 53 20 view .LVU48
	movi.n	a2, 0	# <retval>,
.L9:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:57: }
	.loc 1 57 1 view .LVU49
	retw.n	
.LFE100:
	.size	_ZL22validate_uart_responsePh, .-_ZL22validate_uart_responsePh
	.section	.text._ZL21get_uart_read_requesthhPh,"ax",@progbits
	.align	4
	.type	_ZL21get_uart_read_requesthhPh, @function
_ZL21get_uart_read_requesthhPh:
.LVL21:
.LFB102:
	.loc 1 90 80 is_stmt 1 view -0
	.loc 1 90 80 is_stmt 0 view .LVU51
	entry	sp, 32	#
.LCFI2:
	.loc 1 91 5 is_stmt 1 view .LVU52
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:91:     request[0] = UART_TMC_SYNC_BYTE;
	.loc 1 91 16 is_stmt 0 view .LVU53
	movi.n	a8, 5	# tmp49,
	s8i	a8, a4, 0	# *request_4(D), tmp49
	.loc 1 92 5 is_stmt 1 view .LVU54
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:92:     request[1] = addr;
	.loc 1 92 16 is_stmt 0 view .LVU55
	s8i	a2, a4, 1	# MEM[(uint8_t *)request_4(D) + 1B], addr
	.loc 1 93 5 is_stmt 1 view .LVU56
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:93:     request[2] = (uint8_t)(reg & ~(1 << 7));
	.loc 1 93 32 is_stmt 0 view .LVU57
	extui	a3, a3, 0, 7	# _1, reg,
.LVL22:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:93:     request[2] = (uint8_t)(reg & ~(1 << 7));
	.loc 1 93 16 view .LVU58
	s8i	a3, a4, 2	# MEM[(uint8_t *)request_4(D) + 2B], _1
	.loc 1 94 5 is_stmt 1 view .LVU59
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:94:     request[3] = tmc_crc8(request, UART_TMC_WRITE_PACKAGE_LENGTH - 1);
	.loc 1 94 26 is_stmt 0 view .LVU60
	movi.n	a11, 3	#,
	mov.n	a10, a4	#, request
	call8	_ZL8tmc_crc8Phh		#
.LVL23:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:94:     request[3] = tmc_crc8(request, UART_TMC_WRITE_PACKAGE_LENGTH - 1);
	.loc 1 94 16 discriminator 1 view .LVU61
	s8i	a10, a4, 3	# MEM[(uint8_t *)request_4(D) + 3B], tmp55
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:95: }
	.loc 1 95 1 view .LVU62
	retw.n	
.LFE102:
	.size	_ZL21get_uart_read_requesthhPh, .-_ZL21get_uart_read_requesthhPh
	.section	.rodata._ZL13set_IFCNT_reghPh.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"tmc-uart"
	.align	4
.LC4:
	.base64	"RSAoJWx1KSAlczog0J7RiNC40LHQutCwOiAlcwoA"
	.align	4
.LC6:
	.base64	"RSAoJWx1KSAlczogc2V0X0lGQ05UX3JlZzog0J3QtdGCINC/0LjRgtCw0L3QuNGPINC80L7RgtC+0YDQsCBWUy4g0KLQsNC60LbQtSDQstC+0LfQvNC+0LbQvdC+LCDRh9GC0L4g0L3QtdC/0YDQsNCy0LjQu9GM0L3Ri9C5INCw0LTRgNC10YEgKE1TMS9NUzIpINC40LvQuCDQv9GA0L7QstC+0LQg0L3QtSDQtNC+0YXQvtC00LjRgiDQtNC+IFBETl9VQVJULgoA"
	.align	4
.LC8:
	.string	"I (%lu) %s: set_IFCNT_reg: respLen is %d\n"
	.align	4
.LC10:
	.string	"E (%lu) %s: set_IFCNT_reg: UART Response failed validation\n"
	.section	.text._ZL13set_IFCNT_reghPh,"ax",@progbits
	.literal_position
	.literal .LC0, 131073
	.literal .LC1, 131079
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.align	4
	.type	_ZL13set_IFCNT_reghPh, @function
_ZL13set_IFCNT_reghPh:
.LVL24:
.LFB103:
	.loc 1 97 62 is_stmt 1 view -0
	.loc 1 97 62 is_stmt 0 view .LVU64
	entry	sp, 48	#
.LCFI3:
	mov.n	a10, a2	# addr, addr
	.loc 1 98 5 is_stmt 1 view .LVU65
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:98:     uint8_t request[UART_TMC_WRITE_PACKAGE_LENGTH] = {};
	.loc 1 98 13 is_stmt 0 view .LVU66
	movi.n	a8, 0	# tmp63,
	s32i.n	a8, sp, 0	# request, tmp63
	.loc 1 99 5 is_stmt 1 view .LVU67
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:99:     get_uart_read_request(addr, TMC_REG_IFCNT, request);
	.loc 1 99 26 is_stmt 0 view .LVU68
	mov.n	a12, sp	#,
	movi.n	a11, 2	#,
	call8	_ZL21get_uart_read_requesthhPh		#
.LVL25:
	.loc 1 103 5 is_stmt 1 view .LVU69
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:103:     uart_write_bytes(UART_TMC_NUM, request, UART_TMC_WRITE_PACKAGE_LENGTH);
	.loc 1 103 21 is_stmt 0 view .LVU70
	movi.n	a12, 4	#,
	mov.n	a11, sp	#,
	movi.n	a10, 1	#,
	call8	uart_write_bytes		#
.LVL26:
	.loc 1 104 5 is_stmt 1 view .LVU71
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:104:     esp_err_t tx_err = uart_wait_tx_done(UART_TMC_NUM, pdMS_TO_TICKS(UART_WAIT_TX_DONE_MS));
	.loc 1 104 41 is_stmt 0 view .LVU72
	movi	a11, 0x64	#,
	movi.n	a10, 1	#,
	call8	uart_wait_tx_done		#
.LVL27:
	mov.n	a2, a10	# <retval>, <retval>
.LVL28:
	.loc 1 106 5 is_stmt 1 view .LVU73
.LBB14:
	beqz.n	a10, .L15	# <retval>,
.LBB15:
	.loc 1 107 9 view .LVU74
	.loc 1 107 14 view .LVU75
	.loc 1 107 19 view .LVU76
	.loc 1 107 52 view .LVU77
	.loc 1 107 57 view .LVU78
.LBB16:
	.loc 1 107 116 discriminator 1 view .LVU79
.LBB17:
	.loc 1 107 141 discriminator 1 view .LVU80
	.loc 1 107 176 discriminator 1 view .LVU81
	.loc 1 107 217 view .LVU82
.LBE17:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:107:         ESP_LOGE(TAG, "Ошибка: %s", esp_err_to_name(tx_err));
	.loc 1 107 123 is_stmt 0 discriminator 1 view .LVU83
	call8	esp_log_timestamp		#
.LVL29:
	mov.n	a3, a10	# _3, _3
.LVL30:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:107:         ESP_LOGE(TAG, "Ошибка: %s", esp_err_to_name(tx_err));
	.loc 1 107 123 discriminator 3 view .LVU84
	mov.n	a10, a2	#, <retval>
	call8	esp_err_to_name		#
.LVL31:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:107:         ESP_LOGE(TAG, "Ошибка: %s", esp_err_to_name(tx_err));
	.loc 1 107 123 discriminator 4 view .LVU85
	l32r	a11, .LC3	#, tmp64
	mov.n	a15, a10	#, _5
	mov.n	a14, a11	#, tmp64
	mov.n	a13, a3	#, _3
	l32r	a12, .LC5	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL32:
	.loc 1 107 52 is_stmt 1 view .LVU86
	.loc 1 107 14 view .LVU87
.LBE16:
	.loc 1 107 9 view .LVU88
	.loc 1 108 9 view .LVU89
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:108:         return tx_err;
	.loc 1 108 16 is_stmt 0 view .LVU90
	j	.L14		#
.LVL33:
.L15:
	.loc 1 108 16 view .LVU91
.LBE15:
.LBE14:
	.loc 1 111 5 is_stmt 1 view .LVU92
	.loc 1 112 5 view .LVU93
	.loc 1 114 5 view .LVU94
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:114:     int respLen = uart_read_bytes(UART_TMC_NUM, response, bufferLength, pdMS_TO_TICKS(UART_READ_WAIT_MS));
	.loc 1 114 34 is_stmt 0 view .LVU95
	movi.n	a13, 2	#,
	movi.n	a12, 0xc	#,
	addi.n	a11, sp, 4	#,,
	movi.n	a10, 1	#,
	call8	uart_read_bytes		#
.LVL34:
	mov.n	a7, a10	# respLen, respLen
.LVL35:
	.loc 1 116 5 is_stmt 1 view .LVU96
.LBB18:
	movi.n	a8, 0xb	# tmp68,
	blt	a8, a10, .L17	# tmp68, respLen,
.LBB19:
	.loc 1 117 9 view .LVU97
	.loc 1 117 14 view .LVU98
	.loc 1 117 19 view .LVU99
	.loc 1 117 52 view .LVU100
	.loc 1 117 57 view .LVU101
.LBB20:
	.loc 1 117 116 discriminator 1 view .LVU102
.LBB21:
	.loc 1 117 141 discriminator 1 view .LVU103
	.loc 1 117 176 discriminator 1 view .LVU104
	.loc 1 117 217 view .LVU105
.LBE21:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:117:         ESP_LOGE(TAG, "set_IFCNT_reg: Нет питания мотора VS. Также возможно, что неправильный адрес (MS1/MS2) или провод не доходит до PDN_UART.");
	.loc 1 117 123 is_stmt 0 discriminator 1 view .LVU106
	call8	esp_log_timestamp		#
.LVL36:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:117:         ESP_LOGE(TAG, "set_IFCNT_reg: Нет питания мотора VS. Также возможно, что неправильный адрес (MS1/MS2) или провод не доходит до PDN_UART.");
	.loc 1 117 123 discriminator 3 view .LVU107
	l32r	a2, .LC3	#, tmp69
.LVL37:
	.loc 1 117 123 discriminator 3 view .LVU108
	mov.n	a14, a2	#, tmp69
	mov.n	a13, a10	#, _13
	l32r	a12, .LC7	#,
	mov.n	a11, a2	#, tmp69
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL38:
	.loc 1 117 52 is_stmt 1 view .LVU109
	.loc 1 117 14 view .LVU110
.LBE20:
	.loc 1 117 9 view .LVU111
	.loc 1 118 9 view .LVU112
	.loc 1 118 14 view .LVU113
	.loc 1 118 19 view .LVU114
	.loc 1 118 51 view .LVU115
	.loc 1 118 56 view .LVU116
	.loc 1 118 105 discriminator 2 view .LVU117
	.loc 1 118 105 discriminator 6 view .LVU118
	.loc 1 118 105 discriminator 10 view .LVU119
.LBB22:
	.loc 1 118 107 discriminator 14 view .LVU120
.LBB23:
	.loc 1 118 132 discriminator 14 view .LVU121
	.loc 1 118 167 discriminator 14 view .LVU122
	.loc 1 118 207 view .LVU123
.LBE23:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:118:         ESP_LOGI(TAG, "set_IFCNT_reg: respLen is %d", respLen);
	.loc 1 118 114 is_stmt 0 discriminator 14 view .LVU124
	call8	esp_log_timestamp		#
.LVL39:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:118:         ESP_LOGI(TAG, "set_IFCNT_reg: respLen is %d", respLen);
	.loc 1 118 114 discriminator 17 view .LVU125
	mov.n	a15, a7	#, respLen
	mov.n	a14, a2	#, tmp69
	mov.n	a13, a10	#, _35
	l32r	a12, .LC9	#,
	mov.n	a11, a2	#, tmp69
	movi.n	a10, 3	#,
	call8	esp_log		#
.LVL40:
	.loc 1 118 51 is_stmt 1 view .LVU126
	.loc 1 118 14 view .LVU127
.LBE22:
	.loc 1 118 9 view .LVU128
	.loc 1 120 9 view .LVU129
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:120:         return ESP_ERR_TMC_NO_RESPONSE;
	.loc 1 120 16 is_stmt 0 view .LVU130
	l32r	a2, .LC0	#, <retval>
	j	.L14		#
.LVL41:
.L17:
	.loc 1 120 16 view .LVU131
.LBE19:
.LBE18:
	.loc 1 123 5 is_stmt 1 view .LVU132
.LBB24:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:123:     if (validate_uart_response(&response[UART_TMC_WRITE_PACKAGE_LENGTH]) == false) {
	.loc 1 123 31 is_stmt 0 view .LVU133
	addi.n	a10, sp, 8	#,,
	call8	_ZL22validate_uart_responsePh		#
.LVL42:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:123:     if (validate_uart_response(&response[UART_TMC_WRITE_PACKAGE_LENGTH]) == false) {
	.loc 1 123 5 discriminator 1 view .LVU134
	bnez.n	a10, .L18	# tmp90,
.LBB25:
	.loc 1 124 9 is_stmt 1 view .LVU135
	.loc 1 124 14 view .LVU136
	.loc 1 124 19 view .LVU137
	.loc 1 124 52 view .LVU138
	.loc 1 124 57 view .LVU139
.LBB26:
	.loc 1 124 116 discriminator 1 view .LVU140
.LBB27:
	.loc 1 124 141 discriminator 1 view .LVU141
	.loc 1 124 176 discriminator 1 view .LVU142
	.loc 1 124 217 view .LVU143
.LBE27:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:124:         ESP_LOGE(TAG, "set_IFCNT_reg: UART Response failed validation");
	.loc 1 124 123 is_stmt 0 discriminator 1 view .LVU144
	call8	esp_log_timestamp		#
.LVL43:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:124:         ESP_LOGE(TAG, "set_IFCNT_reg: UART Response failed validation");
	.loc 1 124 123 discriminator 3 view .LVU145
	l32r	a11, .LC3	#, tmp78
	mov.n	a14, a11	#, tmp78
	mov.n	a13, a10	#, _39
	l32r	a12, .LC11	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL44:
	.loc 1 124 52 is_stmt 1 view .LVU146
	.loc 1 124 14 view .LVU147
.LBE26:
	.loc 1 124 9 view .LVU148
	.loc 1 125 9 view .LVU149
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:125:         return ESP_ERR_TMC_INVALID_CRC;
	.loc 1 125 16 is_stmt 0 view .LVU150
	l32r	a2, .LC1	#, <retval>
.LVL45:
	.loc 1 125 16 view .LVU151
	j	.L14		#
.LVL46:
.L18:
	.loc 1 125 16 view .LVU152
.LBE25:
.LBE24:
	.loc 1 128 5 is_stmt 1 view .LVU153
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:128:     *value = response[UART_TMC_WRITE_PACKAGE_LENGTH + 6];
	.loc 1 128 31 is_stmt 0 view .LVU154
	l8ui	a8, sp, 14	# response[10], _52
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:128:     *value = response[UART_TMC_WRITE_PACKAGE_LENGTH + 6];
	.loc 1 128 12 view .LVU155
	s8i	a8, a3, 0	# *value_33(D), _52
	.loc 1 130 5 is_stmt 1 view .LVU156
.LVL47:
.L14:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:131: }
	.loc 1 131 1 is_stmt 0 view .LVU157
	retw.n	
.LFE103:
	.size	_ZL13set_IFCNT_reghPh, .-_ZL13set_IFCNT_reghPh
	.section	.rodata._Z13tmc_uart_initv.str1.4,"aMS",@progbits,1
	.align	4
.LC14:
	.string	"E (%lu) %s: uart_driver_install Error: %s\n"
	.align	4
.LC16:
	.string	"E (%lu) %s: uart_param_config Error: %s\n"
	.section	.text._Z13tmc_uart_initv,"ax",@progbits
	.literal_position
	.literal .LC12, 115200
	.literal .LC13, .LC2
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.literal .LC18, tmc_uart_mutex
	.align	4
	.global	_Z13tmc_uart_initv
	.type	_Z13tmc_uart_initv, @function
_Z13tmc_uart_initv:
.LFB101:
	.loc 1 59 22 is_stmt 1 view -0
	entry	sp, 80	#
.LCFI4:
	.loc 1 61 5 view .LVU159
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:61:     const uart_config_t uart_config = {
	.loc 1 61 25 is_stmt 0 view .LVU160
	movi.n	a12, 0x20	#,
	movi.n	a11, 0	#,
	addi	a10, sp, 16	#,,
	call8	memset		#
.LVL48:
	l32r	a8, .LC12	#, tmp56
	s32i.n	a8, sp, 16	# uart_config.baud_rate, tmp56
	movi.n	a8, 3	# tmp57,
	s32i.n	a8, sp, 20	# uart_config.data_bits, tmp57
	movi.n	a8, 1	# tmp58,
	s32i.n	a8, sp, 28	# uart_config.stop_bits, tmp58
	movi.n	a8, 4	# tmp59,
	s32i.n	a8, sp, 40	# uart_config.D.6667.source_clk, tmp59
	.loc 1 73 5 is_stmt 1 view .LVU161
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:73:     esp_err_t err_driver_install = uart_driver_install(UART_TMC_NUM, UART_RX_BUF_SIZE, 0, 0, NULL, 0);
	.loc 1 73 55 is_stmt 0 view .LVU162
	movi.n	a15, 0	#,
	mov.n	a14, a15	#,
	mov.n	a13, a15	#, tmp14
	mov.n	a12, a15	#, tmp13
	movi	a11, 0x400	#,
	movi.n	a10, 1	#,
	call8	uart_driver_install		#
.LVL49:
	mov.n	a6, a10	# err_driver_install, err_driver_install
.LVL50:
	.loc 1 75 5 is_stmt 1 view .LVU163
.LBB28:
	beqz.n	a10, .L20	# err_driver_install,
	.loc 1 76 9 view .LVU164
	.loc 1 76 14 view .LVU165
	.loc 1 76 19 view .LVU166
	.loc 1 76 52 view .LVU167
	.loc 1 76 57 view .LVU168
.LBB29:
	.loc 1 76 116 discriminator 1 view .LVU169
.LBB30:
	.loc 1 76 141 discriminator 1 view .LVU170
	.loc 1 76 176 discriminator 1 view .LVU171
	.loc 1 76 217 view .LVU172
.LBE30:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:76:         ESP_LOGE(TAG, "uart_driver_install Error: %s", esp_err_to_name(err_driver_install));
	.loc 1 76 123 is_stmt 0 discriminator 1 view .LVU173
	call8	esp_log_timestamp		#
.LVL51:
	mov.n	a7, a10	# _2, _2
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:76:         ESP_LOGE(TAG, "uart_driver_install Error: %s", esp_err_to_name(err_driver_install));
	.loc 1 76 123 discriminator 3 view .LVU174
	mov.n	a10, a6	#, err_driver_install
	call8	esp_err_to_name		#
.LVL52:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:76:         ESP_LOGE(TAG, "uart_driver_install Error: %s", esp_err_to_name(err_driver_install));
	.loc 1 76 123 discriminator 4 view .LVU175
	l32r	a11, .LC13	#, tmp60
	mov.n	a15, a10	#, _4
	mov.n	a14, a11	#, tmp60
	mov.n	a13, a7	#, _2
	l32r	a12, .LC15	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL53:
	.loc 1 76 52 is_stmt 1 view .LVU176
	.loc 1 76 14 view .LVU177
	.loc 1 76 9 view .LVU178
.L20:
.LBE29:
.LBE28:
	.loc 1 79 5 view .LVU179
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:79:     esp_err_t err_param_config = uart_param_config(UART_TMC_NUM, &uart_config);
	.loc 1 79 51 is_stmt 0 view .LVU180
	addi	a11, sp, 16	#,,
	movi.n	a10, 1	#,
	call8	uart_param_config		#
.LVL54:
	mov.n	a6, a10	# err_param_config, err_param_config
.LVL55:
	.loc 1 81 5 is_stmt 1 view .LVU181
.LBB31:
	beqz.n	a10, .L21	# err_param_config,
	.loc 1 82 9 view .LVU182
	.loc 1 82 14 view .LVU183
	.loc 1 82 19 view .LVU184
	.loc 1 82 52 view .LVU185
	.loc 1 82 57 view .LVU186
.LBB32:
	.loc 1 82 116 discriminator 1 view .LVU187
.LBB33:
	.loc 1 82 141 discriminator 1 view .LVU188
	.loc 1 82 176 discriminator 1 view .LVU189
	.loc 1 82 217 view .LVU190
.LBE33:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:82:         ESP_LOGE(TAG, "uart_param_config Error: %s", esp_err_to_name(err_param_config));
	.loc 1 82 123 is_stmt 0 discriminator 1 view .LVU191
	call8	esp_log_timestamp		#
.LVL56:
	mov.n	a7, a10	# _18, _18
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:82:         ESP_LOGE(TAG, "uart_param_config Error: %s", esp_err_to_name(err_param_config));
	.loc 1 82 123 discriminator 3 view .LVU192
	mov.n	a10, a6	#, err_param_config
	call8	esp_err_to_name		#
.LVL57:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:82:         ESP_LOGE(TAG, "uart_param_config Error: %s", esp_err_to_name(err_param_config));
	.loc 1 82 123 discriminator 4 view .LVU193
	l32r	a11, .LC13	#, tmp63
	mov.n	a15, a10	#, _20
	mov.n	a14, a11	#, tmp63
	mov.n	a13, a7	#, _18
	l32r	a12, .LC17	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL58:
	.loc 1 82 52 is_stmt 1 view .LVU194
	.loc 1 82 14 view .LVU195
	.loc 1 82 9 view .LVU196
.L21:
.LBE32:
.LBE31:
	.loc 1 85 5 view .LVU197
.LBB34:
.LBI34:
	.file 2 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_driver_uart/include/driver/uart.h"
	.loc 2 392 25 view .LVU198
.LBB35:
	.loc 2 394 5 view .LVU199
# /Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_driver_uart/include/driver/uart.h:394:     return _uart_set_pin6(uart_num, tx_io_num, rx_io_num, rts_io_num, cts_io_num, -1, -1);
	.loc 2 394 26 is_stmt 0 view .LVU200
	movi.n	a8, -1	# tmp66,
	s32i.n	a8, sp, 0	#, tmp66
	mov.n	a15, a8	#, tmp66
	mov.n	a14, a8	#, tmp15
	mov.n	a13, a8	#, tmp14
	movi.n	a12, 0x12	#,
	movi.n	a11, 0x11	#,
	movi.n	a10, 1	#,
	call8	_uart_set_pin6		#
.LVL59:
	.loc 2 394 26 view .LVU201
.LBE35:
.LBE34:
	.loc 1 87 5 is_stmt 1 view .LVU202
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:87:     tmc_uart_mutex = xSemaphoreCreateMutex();
	.loc 1 87 39 is_stmt 0 view .LVU203
	movi.n	a10, 1	#,
	call8	xQueueCreateMutex		#
.LVL60:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:87:     tmc_uart_mutex = xSemaphoreCreateMutex();
	.loc 1 87 20 discriminator 1 view .LVU204
	l32r	a8, .LC18	#, tmp67
	s32i.n	a10, a8, 0	# tmc_uart_mutex, _37
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:88: }
	.loc 1 88 1 view .LVU205
	retw.n	
.LFE101:
	.size	_Z13tmc_uart_initv, .-_Z13tmc_uart_initv
	.section	.rodata._Z12read_tmc_reghhPm.str1.4,"aMS",@progbits,1
	.align	4
.LC24:
	.string	"E (%lu) %s: UART Response failed validation\n"
	.section	.text._Z12read_tmc_reghhPm,"ax",@progbits
	.literal_position
	.literal .LC19, 131073
	.literal .LC20, 131079
	.literal .LC21, tmc_uart_mutex
	.literal .LC22, .LC2
	.literal .LC23, .LC4
	.literal .LC25, .LC24
	.align	4
	.global	_Z12read_tmc_reghhPm
	.type	_Z12read_tmc_reghhPm, @function
_Z12read_tmc_reghhPm:
.LVL61:
.LFB104:
	.loc 1 133 68 is_stmt 1 view -0
	.loc 1 133 68 is_stmt 0 view .LVU207
	entry	sp, 48	#
.LCFI5:
	.loc 1 135 5 is_stmt 1 view .LVU208
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:135:     uint8_t request[UART_TMC_WRITE_PACKAGE_LENGTH] = {};
	.loc 1 135 13 is_stmt 0 view .LVU209
	movi.n	a8, 0	# tmp76,
	s32i.n	a8, sp, 0	# request, tmp76
	.loc 1 136 5 is_stmt 1 view .LVU210
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:136:     get_uart_read_request(addr, reg, request);
	.loc 1 136 26 is_stmt 0 view .LVU211
	mov.n	a12, sp	#,
	extui	a11, a3, 0, 8	#, reg
	extui	a10, a2, 0, 8	#, addr
	call8	_ZL21get_uart_read_requesthhPh		#
.LVL62:
	.loc 1 140 5 is_stmt 1 view .LVU212
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:140:     xSemaphoreTake(tmc_uart_mutex, portMAX_DELAY);
	.loc 1 140 24 is_stmt 0 view .LVU213
	movi.n	a11, -1	#,
	l32r	a8, .LC21	#, tmp77
	l32i.n	a10, a8, 0	# tmc_uart_mutex,
	call8	xQueueSemaphoreTake		#
.LVL63:
	.loc 1 143 9 is_stmt 1 view .LVU214
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:143:         uart_flush(UART_TMC_NUM);
	.loc 1 143 19 is_stmt 0 view .LVU215
	movi.n	a10, 1	#,
	call8	uart_flush		#
.LVL64:
	.loc 1 145 9 is_stmt 1 view .LVU216
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:145:         uart_write_bytes(UART_TMC_NUM, request, UART_TMC_WRITE_PACKAGE_LENGTH);
	.loc 1 145 25 is_stmt 0 view .LVU217
	movi.n	a12, 4	#,
	mov.n	a11, sp	#,
	movi.n	a10, 1	#,
	call8	uart_write_bytes		#
.LVL65:
	.loc 1 147 9 is_stmt 1 view .LVU218
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:147:         esp_err_t tx_err = uart_wait_tx_done(UART_TMC_NUM, pdMS_TO_TICKS(UART_WAIT_TX_DONE_MS));
	.loc 1 147 45 is_stmt 0 view .LVU219
	movi	a11, 0x64	#,
	movi.n	a10, 1	#,
	call8	uart_wait_tx_done		#
.LVL66:
	mov.n	a2, a10	# <retval>, <retval>
.LVL67:
	.loc 1 149 9 is_stmt 1 view .LVU220
.LBB36:
	beqz.n	a10, .L23	# <retval>,
.LBB37:
	.loc 1 150 13 view .LVU221
	.loc 1 150 18 view .LVU222
	.loc 1 150 23 view .LVU223
	.loc 1 150 56 view .LVU224
	.loc 1 150 61 view .LVU225
.LBB38:
	.loc 1 150 120 discriminator 1 view .LVU226
.LBB39:
	.loc 1 150 145 discriminator 1 view .LVU227
	.loc 1 150 180 discriminator 1 view .LVU228
	.loc 1 150 221 view .LVU229
.LBE39:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:150:             ESP_LOGE(TAG, "Ошибка: %s", esp_err_to_name(tx_err));
	.loc 1 150 127 is_stmt 0 discriminator 1 view .LVU230
	call8	esp_log_timestamp		#
.LVL68:
	mov.n	a4, a10	# _5, _5
.LVL69:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:150:             ESP_LOGE(TAG, "Ошибка: %s", esp_err_to_name(tx_err));
	.loc 1 150 127 discriminator 3 view .LVU231
	mov.n	a10, a2	#, <retval>
	call8	esp_err_to_name		#
.LVL70:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:150:             ESP_LOGE(TAG, "Ошибка: %s", esp_err_to_name(tx_err));
	.loc 1 150 127 discriminator 4 view .LVU232
	l32r	a11, .LC22	#, tmp78
	mov.n	a15, a10	#, _7
	mov.n	a14, a11	#, tmp78
	mov.n	a13, a4	#, _5
	l32r	a12, .LC23	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL71:
	.loc 1 150 56 is_stmt 1 view .LVU233
	.loc 1 150 18 view .LVU234
.LBE38:
	.loc 1 150 13 view .LVU235
	.loc 1 151 13 view .LVU236
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:151:             xSemaphoreGive(tmc_uart_mutex);
	.loc 1 151 30 is_stmt 0 view .LVU237
	movi.n	a13, 0	#,
	mov.n	a12, a13	#,
	mov.n	a11, a13	#, tmp12
	l32r	a8, .LC21	#, tmp81
	l32i.n	a10, a8, 0	# tmc_uart_mutex,
	call8	xQueueGenericSend		#
.LVL72:
	.loc 1 152 13 is_stmt 1 view .LVU238
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:152:             return ESP_ERR_TMC_NO_RESPONSE;
	.loc 1 152 20 is_stmt 0 view .LVU239
	l32r	a2, .LC19	#, <retval>
.LVL73:
	.loc 1 152 20 view .LVU240
	j	.L22		#
.LVL74:
.L23:
	.loc 1 152 20 view .LVU241
.LBE37:
.LBE36:
	.loc 1 155 9 is_stmt 1 view .LVU242
	.loc 1 157 9 view .LVU243
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:157:         uint8_t response[readLength] = {};
	.loc 1 157 17 is_stmt 0 view .LVU244
	addi.n	a3, sp, 4	# tmp82,,
.LVL75:
	.loc 1 157 17 view .LVU245
	movi.n	a12, 0xc	#,
	mov.n	a11, a10	#, <retval>
	mov.n	a10, a3	#, tmp82
	call8	memset		#
.LVL76:
	.loc 1 159 9 is_stmt 1 view .LVU246
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:159:         int respLen = uart_read_bytes(UART_TMC_NUM, response,
	.loc 1 159 38 is_stmt 0 view .LVU247
	movi.n	a13, 2	#,
	movi.n	a12, 0xc	#,
	mov.n	a11, a3	#, tmp82
	movi.n	a10, 1	#,
	call8	uart_read_bytes		#
.LVL77:
	mov.n	a3, a10	# respLen, respLen
.LVL78:
	.loc 1 162 5 is_stmt 1 view .LVU248
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:162:     xSemaphoreGive(tmc_uart_mutex);
	.loc 1 162 22 is_stmt 0 view .LVU249
	mov.n	a13, a2	#, <retval>
	mov.n	a12, a2	#, tmp13
	mov.n	a11, a2	#, tmp12
	l32r	a8, .LC21	#, tmp86
	l32i.n	a10, a8, 0	# tmc_uart_mutex,
	call8	xQueueGenericSend		#
.LVL79:
	.loc 1 166 5 is_stmt 1 view .LVU250
	movi.n	a8, 0xb	# tmp87,
	bge	a8, a3, .L26	# tmp87, respLen,
	.loc 1 172 5 view .LVU251
.LBB40:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:172:     if (validate_uart_response(&response[UART_TMC_WRITE_PACKAGE_LENGTH]) == false) {
	.loc 1 172 31 is_stmt 0 view .LVU252
	addi.n	a10, sp, 8	#,,
	call8	_ZL22validate_uart_responsePh		#
.LVL80:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:172:     if (validate_uart_response(&response[UART_TMC_WRITE_PACKAGE_LENGTH]) == false) {
	.loc 1 172 5 discriminator 1 view .LVU253
	bnez.n	a10, .L25	# tmp103,
.LBB41:
	.loc 1 173 9 is_stmt 1 view .LVU254
	.loc 1 173 14 view .LVU255
	.loc 1 173 19 view .LVU256
	.loc 1 173 52 view .LVU257
	.loc 1 173 57 view .LVU258
.LBB42:
	.loc 1 173 116 discriminator 1 view .LVU259
.LBB43:
	.loc 1 173 141 discriminator 1 view .LVU260
	.loc 1 173 176 discriminator 1 view .LVU261
	.loc 1 173 217 view .LVU262
.LBE43:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:173:         ESP_LOGE(TAG, "UART Response failed validation");
	.loc 1 173 123 is_stmt 0 discriminator 1 view .LVU263
	call8	esp_log_timestamp		#
.LVL81:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:173:         ESP_LOGE(TAG, "UART Response failed validation");
	.loc 1 173 123 discriminator 3 view .LVU264
	l32r	a11, .LC22	#, tmp91
	mov.n	a14, a11	#, tmp91
	mov.n	a13, a10	#, _24
	l32r	a12, .LC25	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL82:
	.loc 1 173 52 is_stmt 1 view .LVU265
	.loc 1 173 14 view .LVU266
.LBE42:
	.loc 1 173 9 view .LVU267
	.loc 1 174 9 view .LVU268
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:174:         return ESP_ERR_TMC_INVALID_CRC;
	.loc 1 174 16 is_stmt 0 view .LVU269
	l32r	a2, .LC20	#, <retval>
.LVL83:
	.loc 1 174 16 view .LVU270
	j	.L22		#
.LVL84:
.L25:
	.loc 1 174 16 view .LVU271
.LBE41:
.LBE40:
	.loc 1 177 5 is_stmt 1 view .LVU272
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:177:     *value = (uint32_t)response[UART_TMC_WRITE_PACKAGE_LENGTH + 3] << 24;
	.loc 1 177 41 is_stmt 0 view .LVU273
	l8ui	a8, sp, 11	# response[7], _38
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:177:     *value = (uint32_t)response[UART_TMC_WRITE_PACKAGE_LENGTH + 3] << 24;
	.loc 1 177 43 view .LVU274
	slli	a8, a8, 24	# _40, _38,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:177:     *value = (uint32_t)response[UART_TMC_WRITE_PACKAGE_LENGTH + 3] << 24;
	.loc 1 177 12 view .LVU275
	s32i.n	a8, a4, 0	# *value_16(D), _40
	.loc 1 178 5 is_stmt 1 view .LVU276
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:178:     *value |= (uint32_t)response[UART_TMC_WRITE_PACKAGE_LENGTH + 4] << 16;
	.loc 1 178 42 is_stmt 0 view .LVU277
	l8ui	a9, sp, 12	# response[8], _41
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:178:     *value |= (uint32_t)response[UART_TMC_WRITE_PACKAGE_LENGTH + 4] << 16;
	.loc 1 178 44 view .LVU278
	slli	a9, a9, 16	# _43, _41,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:178:     *value |= (uint32_t)response[UART_TMC_WRITE_PACKAGE_LENGTH + 4] << 16;
	.loc 1 178 12 view .LVU279
	or	a8, a8, a9	# _44, _40, _43
	s32i.n	a8, a4, 0	# *value_16(D), _44
	.loc 1 179 5 is_stmt 1 view .LVU280
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:179:     *value |= (uint32_t)response[UART_TMC_WRITE_PACKAGE_LENGTH + 5] << 8;
	.loc 1 179 42 is_stmt 0 view .LVU281
	l8ui	a9, sp, 13	# response[9], _45
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:179:     *value |= (uint32_t)response[UART_TMC_WRITE_PACKAGE_LENGTH + 5] << 8;
	.loc 1 179 44 view .LVU282
	slli	a9, a9, 8	# _47, _45,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:179:     *value |= (uint32_t)response[UART_TMC_WRITE_PACKAGE_LENGTH + 5] << 8;
	.loc 1 179 12 view .LVU283
	or	a8, a8, a9	# _48, _44, _47
	s32i.n	a8, a4, 0	# *value_16(D), _48
	.loc 1 180 5 is_stmt 1 view .LVU284
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:180:     *value |= (uint32_t)response[UART_TMC_WRITE_PACKAGE_LENGTH+ 6];
	.loc 1 180 42 is_stmt 0 view .LVU285
	l8ui	a9, sp, 14	# response[10], _49
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:180:     *value |= (uint32_t)response[UART_TMC_WRITE_PACKAGE_LENGTH+ 6];
	.loc 1 180 12 view .LVU286
	or	a8, a8, a9	# _51, _48, _49
	s32i.n	a8, a4, 0	# *value_16(D), _51
	.loc 1 182 5 is_stmt 1 view .LVU287
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:182:     return ESP_OK;
	.loc 1 182 12 is_stmt 0 view .LVU288
	j	.L22		#
.L26:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:169:         return ESP_ERR_TMC_NO_RESPONSE;
	.loc 1 169 16 view .LVU289
	l32r	a2, .LC19	#, <retval>
.LVL85:
.L22:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:183: }
	.loc 1 183 1 view .LVU290
	retw.n	
.LFE104:
	.size	_Z12read_tmc_reghhPm, .-_Z12read_tmc_reghhPm
	.section	.rodata._Z13write_tmc_reghhm.str1.4,"aMS",@progbits,1
	.align	4
.LC29:
	.base64	"RSAoJWx1KSAlczogd3JpdGVfdG1jX3JlZzog0J7RiNC40LHQutCwINC/0YDQuCDQv9C+0L/Ri9GC0LrQtSDQuNC30LzQtdC90LXQvdC40Y8g0YDQtdCz0LjRgdGC0YDQsCBJRkNOVC4KAA=="
	.align	4
.LC31:
	.base64	"RSAoJWx1KSAlczogd3JpdGVfdG1jX3JlZzog0J7RiNC40LHQutCwINC+0YLQv9GA0LDQstC60Lgg0LTQsNC90L3Ri9GFINC/0L4gVUFSVDogJXMKAA=="
	.align	4
.LC33:
	.base64	"RSAoJWx1KSAlczogd3JpdGVfdG1jX3JlZzog0JfQsNC/0LjRgdGMINCyINGA0LXQs9C40YHRgtGAINC90LUg0YHQvtGB0YLQvtGP0LvQsNGB0YwgISEhCgA="
	.section	.text._Z13write_tmc_reghhm,"ax",@progbits
	.literal_position
	.literal .LC26, 131076
	.literal .LC27, tmc_uart_mutex
	.literal .LC28, .LC2
	.literal .LC30, .LC29
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.align	4
	.global	_Z13write_tmc_reghhm
	.type	_Z13write_tmc_reghhm, @function
_Z13write_tmc_reghhm:
.LVL86:
.LFB105:
	.loc 1 185 68 is_stmt 1 view -0
	.loc 1 185 68 is_stmt 0 view .LVU292
	entry	sp, 48	#
.LCFI6:
	extui	a7, a2, 0, 8	# addr, addr
	extui	a3, a3, 0, 8	# reg, reg
	.loc 1 186 5 is_stmt 1 view .LVU293
	.loc 1 188 5 view .LVU294
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:188:     request[0] = UART_TMC_SYNC_BYTE;
	.loc 1 188 16 is_stmt 0 view .LVU295
	movi.n	a8, 5	# tmp79,
	s8i	a8, sp, 0	# request[0], tmp79
	.loc 1 189 5 is_stmt 1 view .LVU296
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:189:     request[1] = addr;
	.loc 1 189 16 is_stmt 0 view .LVU297
	s8i	a7, sp, 1	# request[1], addr
	.loc 1 190 5 is_stmt 1 view .LVU298
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:190:     request[2] = reg | ((uint8_t)1 << 7);
	.loc 1 190 22 is_stmt 0 view .LVU299
	movi	a8, -0x80	# tmp80,
	or	a3, a3, a8	# tmp81, reg, tmp80
.LVL87:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:190:     request[2] = reg | ((uint8_t)1 << 7);
	.loc 1 190 16 view .LVU300
	s8i	a3, sp, 2	# request[2], tmp81
	.loc 1 191 5 is_stmt 1 view .LVU301
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:191:     request[3] = (uint8_t)(value >> 24);
	.loc 1 191 34 is_stmt 0 view .LVU302
	extui	a8, a4, 24, 8	# _2, value,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:191:     request[3] = (uint8_t)(value >> 24);
	.loc 1 191 16 view .LVU303
	s8i	a8, sp, 3	# request[3], _2
	.loc 1 192 5 is_stmt 1 view .LVU304
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:192:     request[4] = (uint8_t)(value >> 16);
	.loc 1 192 34 is_stmt 0 view .LVU305
	extui	a8, a4, 16, 16	# _4, value,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:192:     request[4] = (uint8_t)(value >> 16);
	.loc 1 192 16 view .LVU306
	s8i	a8, sp, 4	# request[4], _4
	.loc 1 193 5 is_stmt 1 view .LVU307
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:193:     request[5] = (uint8_t)(value >> 8);
	.loc 1 193 34 is_stmt 0 view .LVU308
	srli	a8, a4, 8	# _6, value,
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:193:     request[5] = (uint8_t)(value >> 8);
	.loc 1 193 16 view .LVU309
	s8i	a8, sp, 5	# request[5], _6
	.loc 1 194 5 is_stmt 1 view .LVU310
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:194:     request[6] = (uint8_t)value;
	.loc 1 194 16 is_stmt 0 view .LVU311
	s8i	a4, sp, 6	# request[6], value
	.loc 1 195 5 is_stmt 1 view .LVU312
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:195:     request[7] = tmc_crc8(request, UART_TMC_WRITE_REGISTER_PACKAGE_LENGTH - 1);
	.loc 1 195 26 is_stmt 0 view .LVU313
	movi.n	a11, 7	#,
	mov.n	a10, sp	#,
	call8	_ZL8tmc_crc8Phh		#
.LVL88:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:195:     request[7] = tmc_crc8(request, UART_TMC_WRITE_REGISTER_PACKAGE_LENGTH - 1);
	.loc 1 195 16 discriminator 1 view .LVU314
	s8i	a10, sp, 7	# request[7], tmp109
	.loc 1 198 5 is_stmt 1 view .LVU315
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:198:     xSemaphoreTake(tmc_uart_mutex, portMAX_DELAY);
	.loc 1 198 24 is_stmt 0 view .LVU316
	movi.n	a11, -1	#,
	l32r	a8, .LC27	#, tmp83
	l32i.n	a10, a8, 0	# tmc_uart_mutex,
	call8	xQueueSemaphoreTake		#
.LVL89:
	.loc 1 200 9 is_stmt 1 view .LVU317
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:200:         uart_flush(UART_TMC_NUM);
	.loc 1 200 19 is_stmt 0 view .LVU318
	movi.n	a10, 1	#,
	call8	uart_flush		#
.LVL90:
	.loc 1 202 9 is_stmt 1 view .LVU319
	.loc 1 203 9 view .LVU320
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:203:         esp_err_t ifcnt_err = set_IFCNT_reg(addr, &ifcntBefore);
	.loc 1 203 44 is_stmt 0 view .LVU321
	addi.n	a11, sp, 8	#,,
	mov.n	a10, a7	#, addr
	call8	_ZL13set_IFCNT_reghPh		#
.LVL91:
	mov.n	a2, a10	# <retval>, <retval>
.LVL92:
	.loc 1 205 9 is_stmt 1 view .LVU322
.LBB44:
	beqz.n	a10, .L28	# <retval>,
.LBB45:
	.loc 1 206 13 view .LVU323
	.loc 1 206 18 view .LVU324
	.loc 1 206 23 view .LVU325
	.loc 1 206 56 view .LVU326
	.loc 1 206 61 view .LVU327
.LBB46:
	.loc 1 206 120 discriminator 1 view .LVU328
.LBB47:
	.loc 1 206 145 discriminator 1 view .LVU329
	.loc 1 206 180 discriminator 1 view .LVU330
	.loc 1 206 221 view .LVU331
.LBE47:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:206:             ESP_LOGE(TAG, "write_tmc_reg: Ошибка при попытке изменения регистра IFCNT.");
	.loc 1 206 127 is_stmt 0 discriminator 1 view .LVU332
	call8	esp_log_timestamp		#
.LVL93:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:206:             ESP_LOGE(TAG, "write_tmc_reg: Ошибка при попытке изменения регистра IFCNT.");
	.loc 1 206 127 discriminator 3 view .LVU333
	l32r	a11, .LC28	#, tmp85
	mov.n	a14, a11	#, tmp85
	mov.n	a13, a10	#, _13
	l32r	a12, .LC30	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL94:
	.loc 1 206 56 is_stmt 1 view .LVU334
	.loc 1 206 18 view .LVU335
.LBE46:
	.loc 1 206 13 view .LVU336
	.loc 1 207 13 view .LVU337
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:207:             xSemaphoreGive(tmc_uart_mutex);
	.loc 1 207 30 is_stmt 0 view .LVU338
	movi.n	a13, 0	#,
	mov.n	a12, a13	#,
	mov.n	a11, a13	#, tmp12
	l32r	a8, .LC27	#, tmp88
	l32i.n	a10, a8, 0	# tmc_uart_mutex,
	call8	xQueueGenericSend		#
.LVL95:
	.loc 1 208 13 is_stmt 1 view .LVU339
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:208:             return ifcnt_err;
	.loc 1 208 20 is_stmt 0 view .LVU340
	j	.L27		#
.L28:
	.loc 1 208 20 view .LVU341
.LBE45:
.LBE44:
	.loc 1 211 9 is_stmt 1 view .LVU342
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:211:         uart_flush(UART_TMC_NUM);
	.loc 1 211 19 is_stmt 0 view .LVU343
	movi.n	a10, 1	#,
	call8	uart_flush		#
.LVL96:
	.loc 1 213 9 is_stmt 1 view .LVU344
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:213:         uart_write_bytes(UART_TMC_NUM, request, UART_TMC_WRITE_REGISTER_PACKAGE_LENGTH);
	.loc 1 213 25 is_stmt 0 view .LVU345
	movi.n	a12, 8	#,
	mov.n	a11, sp	#,
	movi.n	a10, 1	#,
	call8	uart_write_bytes		#
.LVL97:
	.loc 1 215 9 is_stmt 1 view .LVU346
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:215:         esp_err_t tx_err = uart_wait_tx_done(UART_TMC_NUM, pdMS_TO_TICKS(UART_WAIT_TX_DONE_MS));
	.loc 1 215 45 is_stmt 0 view .LVU347
	movi	a11, 0x64	#,
	movi.n	a10, 1	#,
	call8	uart_wait_tx_done		#
.LVL98:
	mov.n	a2, a10	# <retval>, <retval>
.LVL99:
	.loc 1 217 9 is_stmt 1 view .LVU348
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:217:         uart_flush(UART_TMC_NUM);
	.loc 1 217 19 is_stmt 0 view .LVU349
	movi.n	a10, 1	#,
	call8	uart_flush		#
.LVL100:
	.loc 1 219 9 is_stmt 1 view .LVU350
.LBB48:
	beqz.n	a2, .L30	# <retval>,
.LBB49:
	.loc 1 220 13 view .LVU351
	.loc 1 220 18 view .LVU352
	.loc 1 220 23 view .LVU353
	.loc 1 220 56 view .LVU354
	.loc 1 220 61 view .LVU355
.LBB50:
	.loc 1 220 120 discriminator 1 view .LVU356
.LBB51:
	.loc 1 220 145 discriminator 1 view .LVU357
	.loc 1 220 180 discriminator 1 view .LVU358
	.loc 1 220 221 view .LVU359
.LBE51:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:220:             ESP_LOGE(TAG, "write_tmc_reg: Ошибка отправки данных по UART: %s", esp_err_to_name(tx_err));
	.loc 1 220 127 is_stmt 0 discriminator 1 view .LVU360
	call8	esp_log_timestamp		#
.LVL101:
	mov.n	a7, a10	# _27, _27
.LVL102:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:220:             ESP_LOGE(TAG, "write_tmc_reg: Ошибка отправки данных по UART: %s", esp_err_to_name(tx_err));
	.loc 1 220 127 discriminator 3 view .LVU361
	mov.n	a10, a2	#, <retval>
	call8	esp_err_to_name		#
.LVL103:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:220:             ESP_LOGE(TAG, "write_tmc_reg: Ошибка отправки данных по UART: %s", esp_err_to_name(tx_err));
	.loc 1 220 127 discriminator 4 view .LVU362
	l32r	a11, .LC28	#, tmp89
	mov.n	a15, a10	#, _29
	mov.n	a14, a11	#, tmp89
	mov.n	a13, a7	#, _27
	l32r	a12, .LC32	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL104:
	.loc 1 220 56 is_stmt 1 view .LVU363
	.loc 1 220 18 view .LVU364
.LBE50:
	.loc 1 220 13 view .LVU365
	.loc 1 221 13 view .LVU366
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:221:             xSemaphoreGive(tmc_uart_mutex);
	.loc 1 221 30 is_stmt 0 view .LVU367
	movi.n	a13, 0	#,
	mov.n	a12, a13	#,
	mov.n	a11, a13	#, tmp12
	l32r	a8, .LC27	#, tmp92
	l32i.n	a10, a8, 0	# tmc_uart_mutex,
	call8	xQueueGenericSend		#
.LVL105:
	.loc 1 222 13 is_stmt 1 view .LVU368
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:222:             return tx_err;
	.loc 1 222 20 is_stmt 0 view .LVU369
	j	.L27		#
.L30:
.LBE49:
.LBE48:
	.loc 1 225 9 is_stmt 1 view .LVU370
	.loc 1 226 9 view .LVU371
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:226:         esp_err_t ifcnt_after_err = set_IFCNT_reg(addr, &ifcntAfter);
	.loc 1 226 50 is_stmt 0 view .LVU372
	addi.n	a11, sp, 9	#,,
	mov.n	a10, a7	#, addr
	call8	_ZL13set_IFCNT_reghPh		#
.LVL106:
	mov.n	a2, a10	# <retval>, <retval>
.LVL107:
	.loc 1 228 9 is_stmt 1 view .LVU373
.LBB52:
	beqz.n	a10, .L31	# <retval>,
.LBB53:
	.loc 1 229 13 view .LVU374
	.loc 1 229 18 view .LVU375
	.loc 1 229 23 view .LVU376
	.loc 1 229 56 view .LVU377
	.loc 1 229 61 view .LVU378
.LBB54:
	.loc 1 229 120 discriminator 1 view .LVU379
.LBB55:
	.loc 1 229 145 discriminator 1 view .LVU380
	.loc 1 229 180 discriminator 1 view .LVU381
	.loc 1 229 221 view .LVU382
.LBE55:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:229:             ESP_LOGE(TAG, "write_tmc_reg: Ошибка при попытке изменения регистра IFCNT.");
	.loc 1 229 127 is_stmt 0 discriminator 1 view .LVU383
	call8	esp_log_timestamp		#
.LVL108:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:229:             ESP_LOGE(TAG, "write_tmc_reg: Ошибка при попытке изменения регистра IFCNT.");
	.loc 1 229 127 discriminator 3 view .LVU384
	l32r	a11, .LC28	#, tmp94
	mov.n	a14, a11	#, tmp94
	mov.n	a13, a10	#, _46
	l32r	a12, .LC30	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL109:
	.loc 1 229 56 is_stmt 1 view .LVU385
	.loc 1 229 18 view .LVU386
.LBE54:
	.loc 1 229 13 view .LVU387
	.loc 1 230 13 view .LVU388
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:230:             xSemaphoreGive(tmc_uart_mutex);
	.loc 1 230 30 is_stmt 0 view .LVU389
	movi.n	a13, 0	#,
	mov.n	a12, a13	#,
	mov.n	a11, a13	#, tmp12
	l32r	a8, .LC27	#, tmp97
	l32i.n	a10, a8, 0	# tmc_uart_mutex,
	call8	xQueueGenericSend		#
.LVL110:
	.loc 1 231 13 is_stmt 1 view .LVU390
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:231:             return ifcnt_after_err;
	.loc 1 231 20 is_stmt 0 view .LVU391
	j	.L27		#
.L31:
	.loc 1 231 20 view .LVU392
.LBE53:
.LBE52:
	.loc 1 234 9 is_stmt 1 view .LVU393
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:234:         uart_flush(UART_TMC_NUM);
	.loc 1 234 19 is_stmt 0 view .LVU394
	movi.n	a10, 1	#,
	call8	uart_flush		#
.LVL111:
	.loc 1 236 5 is_stmt 1 view .LVU395
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:236:     xSemaphoreGive(tmc_uart_mutex);
	.loc 1 236 22 is_stmt 0 view .LVU396
	mov.n	a13, a2	#, <retval>
	mov.n	a12, a2	#, tmp13
	mov.n	a11, a2	#, tmp12
	l32r	a8, .LC27	#, tmp98
	l32i.n	a10, a8, 0	# tmc_uart_mutex,
	call8	xQueueGenericSend		#
.LVL112:
	.loc 1 239 5 is_stmt 1 view .LVU397
.LBB56:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:239:     if ((uint8_t)(ifcntAfter - ifcntBefore) != 1) {
	.loc 1 239 30 is_stmt 0 view .LVU398
	l8ui	a8, sp, 9	# ifcntAfter,
	l8ui	a9, sp, 8	# ifcntBefore,
	sub	a8, a8, a9	# tmp101, ifcntAfter, ifcntBefore
	extui	a8, a8, 0, 8	# _63, tmp101
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:239:     if ((uint8_t)(ifcntAfter - ifcntBefore) != 1) {
	.loc 1 239 5 view .LVU399
	beqi	a8, 1, .L27	# _63,,
.LBB57:
	.loc 1 240 9 is_stmt 1 view .LVU400
	.loc 1 240 14 view .LVU401
	.loc 1 240 19 view .LVU402
	.loc 1 240 52 view .LVU403
	.loc 1 240 57 view .LVU404
.LBB58:
	.loc 1 240 116 discriminator 1 view .LVU405
.LBB59:
	.loc 1 240 141 discriminator 1 view .LVU406
	.loc 1 240 176 discriminator 1 view .LVU407
	.loc 1 240 217 view .LVU408
.LBE59:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:240:         ESP_LOGE(TAG, "write_tmc_reg: Запись в регистр не состоялась !!!");
	.loc 1 240 123 is_stmt 0 discriminator 1 view .LVU409
	call8	esp_log_timestamp		#
.LVL113:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:240:         ESP_LOGE(TAG, "write_tmc_reg: Запись в регистр не состоялась !!!");
	.loc 1 240 123 discriminator 3 view .LVU410
	l32r	a11, .LC28	#, tmp102
	mov.n	a14, a11	#, tmp102
	mov.n	a13, a10	#, _65
	l32r	a12, .LC34	#,
	movi.n	a10, 1	#,
	call8	esp_log		#
.LVL114:
	.loc 1 240 52 is_stmt 1 view .LVU411
	.loc 1 240 14 view .LVU412
.LBE58:
	.loc 1 240 9 view .LVU413
	.loc 1 241 9 view .LVU414
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:241:         return ESP_ERR_TMC_WRITE_LOST;
	.loc 1 241 16 is_stmt 0 view .LVU415
	l32r	a2, .LC26	#, <retval>
.LVL115:
.L27:
	.loc 1 241 16 view .LVU416
.LBE57:
.LBE56:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:245: }
	.loc 1 245 1 view .LVU417
	retw.n	
.LFE105:
	.size	_Z13write_tmc_reghhm, .-_Z13write_tmc_reghhm
	.section	.text._Z8tmc_read6axis_thPm,"ax",@progbits
	.literal_position
	.literal .LC35, AXES
	.align	4
	.global	_Z8tmc_read6axis_thPm
	.type	_Z8tmc_read6axis_thPm, @function
_Z8tmc_read6axis_thPm:
.LVL116:
.LFB106:
	.loc 1 248 60 is_stmt 1 view -0
	.loc 1 248 60 is_stmt 0 view .LVU419
	entry	sp, 32	#
.LCFI7:
	mov.n	a12, a4	# value, value
	.loc 1 249 5 is_stmt 1 view .LVU420
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:249:     return read_tmc_reg(AXES[a].uart_addr, reg, value);
	.loc 1 249 33 is_stmt 0 view .LVU421
	addx4	a8, a2, a2	#, tmp54, a, a
	addx2	a8, a8, a2	#, tmp56, tmp54, a
	l32r	a9, .LC35	#, tmp51
	addx4	a8, a8, a9	#, tmp58, tmp56, tmp51
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:249:     return read_tmc_reg(AXES[a].uart_addr, reg, value);
	.loc 1 249 24 view .LVU422
	extui	a11, a3, 0, 8	#, reg
	l8ui	a10, a8, 4	# AXES[a$196_1].uart_addr,
	call8	_Z12read_tmc_reghhPm		#
.LVL117:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:250: }
	.loc 1 250 1 view .LVU423
	mov.n	a2, a10	#, <retval>
.LVL118:
	.loc 1 250 1 view .LVU424
	retw.n	
.LFE106:
	.size	_Z8tmc_read6axis_thPm, .-_Z8tmc_read6axis_thPm
	.section	.text._Z9tmc_write6axis_thm,"ax",@progbits
	.literal_position
	.literal .LC36, AXES
	.align	4
	.global	_Z9tmc_write6axis_thm
	.type	_Z9tmc_write6axis_thm, @function
_Z9tmc_write6axis_thm:
.LVL119:
.LFB107:
	.loc 1 252 60 is_stmt 1 view -0
	.loc 1 252 60 is_stmt 0 view .LVU426
	entry	sp, 32	#
.LCFI8:
	mov.n	a12, a4	# value, value
	.loc 1 253 5 is_stmt 1 view .LVU427
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:253:     return write_tmc_reg(AXES[a].uart_addr, reg, value);
	.loc 1 253 34 is_stmt 0 view .LVU428
	addx4	a8, a2, a2	#, tmp54, a, a
	addx2	a8, a8, a2	#, tmp56, tmp54, a
	l32r	a9, .LC36	#, tmp51
	addx4	a8, a8, a9	#, tmp58, tmp56, tmp51
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:253:     return write_tmc_reg(AXES[a].uart_addr, reg, value);
	.loc 1 253 25 view .LVU429
	extui	a11, a3, 0, 8	#, reg
	l8ui	a10, a8, 4	# AXES[a$197_1].uart_addr,
	call8	_Z13write_tmc_reghhm		#
.LVL120:
# /Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp:254: }
	.loc 1 254 1 view .LVU430
	mov.n	a2, a10	#, <retval>
.LVL121:
	.loc 1 254 1 view .LVU431
	retw.n	
.LFE107:
	.size	_Z9tmc_write6axis_thm, .-_Z9tmc_write6axis_thm
	.global	tmc_uart_mutex
	.section	.bss.tmc_uart_mutex,"aw",@nobits
	.align	4
	.type	tmc_uart_mutex, @object
	.size	tmc_uart_mutex, 4
tmc_uart_mutex:
	.zero	4
	.weak	AXES
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC37:
	.string	"RA"
	.align	4
.LC38:
	.string	"DEC"
	.section	.rodata.AXES,"aG",@progbits,AXES,comdat
	.align	4
	.type	AXES, @object
	.size	AXES, 88
AXES:
# name:
	.word	.LC37
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
	.word	.LC38
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
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.byte	0x4
	.4byte	.LCFI0-.LFB99
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.byte	0x4
	.4byte	.LCFI1-.LFB100
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.byte	0x4
	.4byte	.LCFI2-.LFB102
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.byte	0x4
	.4byte	.LCFI3-.LFB103
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.byte	0x4
	.4byte	.LCFI4-.LFB101
	.byte	0xe
	.uleb128 0x50
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
	.uleb128 0x30
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
	.uleb128 0x30
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
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 3 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/xtensa-esp-elf/include/c++/15.2.0/cstdint"
	.file 4 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/xtensa-esp-elf/include/c++/15.2.0/xtensa-esp-elf/esp32s3/no-rtti/bits/c++config.h"
	.file 5 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/machine/_default_types.h"
	.file 6 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/lib/gcc/xtensa-esp-elf/15.2.0/include/stddef.h"
	.file 7 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/sys/_stdint.h"
	.file 8 "/Users/andrew/.espressif/tools/xtensa-esp-elf/esp-15.2.0_20251204/xtensa-esp-elf/picolibc/include/stdint.h"
	.file 9 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_common/include/esp_err.h"
	.file 10 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos/portmacro.h"
	.file 11 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/queue.h"
	.file 12 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/freertos/FreeRTOS-Kernel/include/freertos/semphr.h"
	.file 13 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/soc/esp32s3/include/soc/clk_tree_defs.h"
	.file 14 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_hal_uart/include/hal/uart_types.h"
	.file 15 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_level.h"
	.file 16 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_config.h"
	.file 17 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/esp_hal_gpio/esp32s3/include/soc/gpio_num.h"
	.file 18 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-current.h"
	.file 19 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/axis-config.h"
	.file 20 "/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/utils/tmc-err-codes.h"
	.file 21 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log.h"
	.file 22 "/Users/andrew/.espressif/v6.0.2/esp-idf/components/log/include/esp_log_timestamp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1d45
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF267
	.byte	0x4
	.4byte	.LASF268
	.4byte	.LASF269
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x4
	.2byte	0x150
	.byte	0xb
	.4byte	0x13a
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x173
	.byte	0x41
	.uleb128 0x5
	.byte	0x4
	.2byte	0x173
	.byte	0x41
	.4byte	0x47
	.uleb128 0x6
	.byte	0x3
	.byte	0x35
	.byte	0xb
	.4byte	0x298
	.uleb128 0x6
	.byte	0x3
	.byte	0x36
	.byte	0xb
	.4byte	0x2b5
	.uleb128 0x6
	.byte	0x3
	.byte	0x37
	.byte	0xb
	.4byte	0x2cd
	.uleb128 0x6
	.byte	0x3
	.byte	0x38
	.byte	0xb
	.4byte	0x2ea
	.uleb128 0x6
	.byte	0x3
	.byte	0x3a
	.byte	0xb
	.4byte	0x392
	.uleb128 0x6
	.byte	0x3
	.byte	0x3b
	.byte	0xb
	.4byte	0x3aa
	.uleb128 0x6
	.byte	0x3
	.byte	0x3c
	.byte	0xb
	.4byte	0x3c2
	.uleb128 0x6
	.byte	0x3
	.byte	0x3d
	.byte	0xb
	.4byte	0x3da
	.uleb128 0x6
	.byte	0x3
	.byte	0x3f
	.byte	0xb
	.4byte	0x332
	.uleb128 0x6
	.byte	0x3
	.byte	0x40
	.byte	0xb
	.4byte	0x34a
	.uleb128 0x6
	.byte	0x3
	.byte	0x41
	.byte	0xb
	.4byte	0x362
	.uleb128 0x6
	.byte	0x3
	.byte	0x42
	.byte	0xb
	.4byte	0x37a
	.uleb128 0x6
	.byte	0x3
	.byte	0x44
	.byte	0xb
	.4byte	0x302
	.uleb128 0x6
	.byte	0x3
	.byte	0x45
	.byte	0xb
	.4byte	0x31a
	.uleb128 0x6
	.byte	0x3
	.byte	0x47
	.byte	0xb
	.4byte	0x2a4
	.uleb128 0x6
	.byte	0x3
	.byte	0x48
	.byte	0xb
	.4byte	0x2c1
	.uleb128 0x6
	.byte	0x3
	.byte	0x49
	.byte	0xb
	.4byte	0x2d9
	.uleb128 0x6
	.byte	0x3
	.byte	0x4a
	.byte	0xb
	.4byte	0x2f6
	.uleb128 0x6
	.byte	0x3
	.byte	0x4c
	.byte	0xb
	.4byte	0x39e
	.uleb128 0x6
	.byte	0x3
	.byte	0x4d
	.byte	0xb
	.4byte	0x3b6
	.uleb128 0x6
	.byte	0x3
	.byte	0x4e
	.byte	0xb
	.4byte	0x3ce
	.uleb128 0x6
	.byte	0x3
	.byte	0x4f
	.byte	0xb
	.4byte	0x3e6
	.uleb128 0x6
	.byte	0x3
	.byte	0x51
	.byte	0xb
	.4byte	0x33e
	.uleb128 0x6
	.byte	0x3
	.byte	0x52
	.byte	0xb
	.4byte	0x356
	.uleb128 0x6
	.byte	0x3
	.byte	0x53
	.byte	0xb
	.4byte	0x36e
	.uleb128 0x6
	.byte	0x3
	.byte	0x54
	.byte	0xb
	.4byte	0x386
	.uleb128 0x6
	.byte	0x3
	.byte	0x56
	.byte	0xb
	.4byte	0x30e
	.uleb128 0x6
	.byte	0x3
	.byte	0x57
	.byte	0xb
	.4byte	0x326
	.byte	0
	.uleb128 0x7
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x175
	.byte	0xb
	.4byte	0x15a
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x177
	.byte	0x41
	.uleb128 0x5
	.byte	0x4
	.2byte	0x177
	.byte	0x41
	.4byte	0x147
	.byte	0
	.uleb128 0x8
	.4byte	.LASF6
	.byte	0x5
	.byte	0xd2
	.byte	0x15
	.4byte	0x166
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x5
	.byte	0xd7
	.byte	0x17
	.4byte	0x33
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
	.4byte	0x166
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0xf8
	.byte	0x17
	.4byte	0x33
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
	.4byte	0x15a
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x7
	.byte	0x16
	.byte	0x13
	.4byte	0x16d
	.uleb128 0xb
	.4byte	0x2a4
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
	.4byte	0x2d9
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
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF61
	.uleb128 0xb
	.4byte	0x3f4
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3fb
	.uleb128 0xd
	.byte	0x4
	.4byte	0x40c
	.uleb128 0xe
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x9
	.byte	0x13
	.byte	0xd
	.4byte	0x271
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF63
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0xa
	.byte	0x52
	.byte	0xd
	.4byte	0x271
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0xa
	.byte	0x59
	.byte	0x12
	.4byte	0x2d9
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2a4
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0xb
	.byte	0x37
	.byte	0x22
	.4byte	0x44a
	.uleb128 0xd
	.byte	0x4
	.4byte	0x450
	.uleb128 0xf
	.4byte	.LASF270
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0xc
	.byte	0x2a
	.byte	0x17
	.4byte	0x43e
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.2byte	0x10b
	.byte	0xe
	.4byte	.LASF271
	.4byte	0x48d
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x9
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0xb
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0xd
	.2byte	0x110
	.byte	0x3
	.4byte	0x461
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x16
	.byte	0xe
	.4byte	.LASF78
	.4byte	0x4c5
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0xe
	.byte	0x26
	.byte	0x3
	.4byte	0x49a
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x38
	.byte	0xe
	.4byte	.LASF79
	.4byte	0x502
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0xe
	.byte	0x3e
	.byte	0x3
	.4byte	0x4d1
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x43
	.byte	0xe
	.4byte	.LASF86
	.4byte	0x539
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF90
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0xe
	.byte	0x48
	.byte	0x3
	.4byte	0x50e
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x4d
	.byte	0xe
	.4byte	.LASF92
	.4byte	0x56a
	.uleb128 0x11
	.4byte	.LASF93
	.byte	0
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0xe
	.byte	0x51
	.byte	0x3
	.4byte	0x545
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x56
	.byte	0xe
	.4byte	.LASF97
	.4byte	0x5a7
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF103
	.byte	0xe
	.byte	0x5c
	.byte	0x3
	.4byte	0x576
	.uleb128 0x8
	.4byte	.LASF104
	.byte	0xe
	.byte	0x70
	.byte	0x2a
	.4byte	0x48d
	.uleb128 0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xf
	.byte	0x14
	.byte	0xe
	.4byte	.LASF105
	.4byte	0x5fc
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF113
	.byte	0xf
	.byte	0x1c
	.byte	0x3
	.4byte	0x5bf
	.uleb128 0x13
	.byte	0x4
	.byte	0x10
	.byte	0x77
	.byte	0x10
	.4byte	.LASF124
	.4byte	0x6b8
	.uleb128 0x14
	.byte	0x4
	.byte	0x10
	.byte	0x78
	.byte	0xb
	.4byte	0x6b1
	.uleb128 0x15
	.byte	0x4
	.byte	0x10
	.byte	0x79
	.byte	0x10
	.4byte	0x698
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x10
	.byte	0x7a
	.byte	0x1d
	.4byte	0x5fc
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x10
	.byte	0x7b
	.byte	0x16
	.4byte	0x2d9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x10
	.byte	0x7c
	.byte	0x16
	.4byte	0x2d9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x10
	.byte	0x7d
	.byte	0x16
	.4byte	0x2d9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF118
	.byte	0x10
	.byte	0x7e
	.byte	0x16
	.4byte	0x2d9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x10
	.byte	0x7f
	.byte	0x16
	.4byte	0x2d9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x16
	.4byte	.LASF120
	.byte	0x10
	.byte	0x80
	.byte	0x16
	.4byte	0x2d9
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF121
	.byte	0x10
	.byte	0x81
	.byte	0xb
	.4byte	0x61e
	.uleb128 0x17
	.4byte	.LASF122
	.byte	0x10
	.byte	0x82
	.byte	0x12
	.4byte	0x2d9
	.byte	0
	.uleb128 0x18
	.4byte	0x615
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF123
	.byte	0x10
	.byte	0x84
	.byte	0x3
	.4byte	0x608
	.uleb128 0x13
	.byte	0x20
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.4byte	.LASF125
	.4byte	0x773
	.uleb128 0x14
	.byte	0x4
	.byte	0x2
	.byte	0x2b
	.byte	0xb
	.4byte	0x6e7
	.uleb128 0x17
	.4byte	.LASF126
	.byte	0x2
	.byte	0x2c
	.byte	0x15
	.4byte	0x5b3
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0x2
	.byte	0x31
	.byte	0xc
	.4byte	0x711
	.uleb128 0x16
	.4byte	.LASF127
	.byte	0x2
	.byte	0x32
	.byte	0x12
	.4byte	0x2d9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x2
	.byte	0x34
	.byte	0x12
	.4byte	0x2d9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF129
	.byte	0x2
	.byte	0x24
	.byte	0x9
	.4byte	0x271
	.byte	0
	.uleb128 0x19
	.4byte	.LASF130
	.byte	0x2
	.byte	0x26
	.byte	0x18
	.4byte	0x502
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF131
	.byte	0x2
	.byte	0x27
	.byte	0x13
	.4byte	0x56a
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF132
	.byte	0x2
	.byte	0x28
	.byte	0x16
	.4byte	0x539
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF133
	.byte	0x2
	.byte	0x29
	.byte	0x1b
	.4byte	0x5a7
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF134
	.byte	0x2
	.byte	0x2a
	.byte	0xd
	.4byte	0x2a4
	.byte	0x14
	.uleb128 0x18
	.4byte	0x6d1
	.byte	0x18
	.uleb128 0x19
	.4byte	.LASF135
	.byte	0x2
	.byte	0x35
	.byte	0x7
	.4byte	0x6e7
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF136
	.byte	0x2
	.byte	0x36
	.byte	0x3
	.4byte	0x6c4
	.uleb128 0xb
	.4byte	0x773
	.uleb128 0x12
	.byte	0x5
	.byte	0x4
	.4byte	0x271
	.byte	0x11
	.byte	0x10
	.byte	0xe
	.4byte	.LASF137
	.4byte	0x8b1
	.uleb128 0x1a
	.4byte	.LASF138
	.sleb128 -1
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0x7
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0x9
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0xa
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xb
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0xd
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0xe
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0xf
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0x11
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0x12
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0x13
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0x15
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0x1a
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0x1b
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0x1d
	.uleb128 0x11
	.4byte	.LASF165
	.byte	0x1e
	.uleb128 0x11
	.4byte	.LASF166
	.byte	0x1f
	.uleb128 0x11
	.4byte	.LASF167
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF168
	.byte	0x21
	.uleb128 0x11
	.4byte	.LASF169
	.byte	0x22
	.uleb128 0x11
	.4byte	.LASF170
	.byte	0x23
	.uleb128 0x11
	.4byte	.LASF171
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF172
	.byte	0x25
	.uleb128 0x11
	.4byte	.LASF173
	.byte	0x26
	.uleb128 0x11
	.4byte	.LASF174
	.byte	0x27
	.uleb128 0x11
	.4byte	.LASF175
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF176
	.byte	0x29
	.uleb128 0x11
	.4byte	.LASF177
	.byte	0x2a
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0x2b
	.uleb128 0x11
	.4byte	.LASF179
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF180
	.byte	0x2d
	.uleb128 0x11
	.4byte	.LASF181
	.byte	0x2e
	.uleb128 0x11
	.4byte	.LASF182
	.byte	0x2f
	.uleb128 0x11
	.4byte	.LASF183
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0x31
	.byte	0
	.uleb128 0x8
	.4byte	.LASF185
	.byte	0x11
	.byte	0x40
	.byte	0x3
	.4byte	0x784
	.uleb128 0x1b
	.4byte	.LASF186
	.byte	0x12
	.byte	0x29
	.byte	0x14
	.4byte	0x2e5
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF187
	.byte	0x12
	.byte	0x2b
	.byte	0x14
	.4byte	0x2e5
	.byte	0xb4
	.uleb128 0x1b
	.4byte	.LASF188
	.byte	0x12
	.byte	0x2c
	.byte	0x14
	.4byte	0x2e5
	.byte	0x6e
	.uleb128 0x1b
	.4byte	.LASF189
	.byte	0x12
	.byte	0x2d
	.byte	0x14
	.4byte	0x2e5
	.byte	0x14
	.uleb128 0x1c
	.4byte	.LASF190
	.byte	0x12
	.byte	0x33
	.byte	0x14
	.4byte	0x2e5
	.2byte	0x3d2
	.uleb128 0x1d
	.4byte	.LASF209
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x13
	.byte	0x17
	.byte	0x6
	.4byte	0x924
	.uleb128 0x11
	.4byte	.LASF191
	.byte	0
	.uleb128 0x11
	.4byte	.LASF192
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF193
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF272
	.byte	0x2c
	.byte	0x13
	.byte	0x1d
	.byte	0x8
	.4byte	0x9f5
	.uleb128 0x19
	.4byte	.LASF194
	.byte	0x13
	.byte	0x1e
	.byte	0x11
	.4byte	0x400
	.byte	0
	.uleb128 0x19
	.4byte	.LASF195
	.byte	0x13
	.byte	0x21
	.byte	0xd
	.4byte	0x2a4
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF196
	.byte	0x13
	.byte	0x22
	.byte	0x10
	.4byte	0x8b1
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF197
	.byte	0x13
	.byte	0x23
	.byte	0x10
	.4byte	0x8b1
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF198
	.byte	0x13
	.byte	0x24
	.byte	0x10
	.4byte	0x8b1
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF199
	.byte	0x13
	.byte	0x27
	.byte	0xd
	.4byte	0x2a4
	.byte	0x14
	.uleb128 0x19
	.4byte	.LASF200
	.byte	0x13
	.byte	0x28
	.byte	0xd
	.4byte	0x2a4
	.byte	0x15
	.uleb128 0x19
	.4byte	.LASF201
	.byte	0x13
	.byte	0x29
	.byte	0xd
	.4byte	0x2a4
	.byte	0x16
	.uleb128 0x19
	.4byte	.LASF202
	.byte	0x13
	.byte	0x2a
	.byte	0xd
	.4byte	0x2a4
	.byte	0x17
	.uleb128 0x19
	.4byte	.LASF203
	.byte	0x13
	.byte	0x2b
	.byte	0xd
	.4byte	0x2a4
	.byte	0x18
	.uleb128 0x19
	.4byte	.LASF204
	.byte	0x13
	.byte	0x2c
	.byte	0xa
	.4byte	0x419
	.byte	0x19
	.uleb128 0x19
	.4byte	.LASF205
	.byte	0x13
	.byte	0x2f
	.byte	0xe
	.4byte	0x2d9
	.byte	0x1c
	.uleb128 0x19
	.4byte	.LASF206
	.byte	0x13
	.byte	0x30
	.byte	0xe
	.4byte	0x2d9
	.byte	0x20
	.uleb128 0x19
	.4byte	.LASF207
	.byte	0x13
	.byte	0x31
	.byte	0xe
	.4byte	0x2d9
	.byte	0x24
	.uleb128 0x19
	.4byte	.LASF208
	.byte	0x13
	.byte	0x32
	.byte	0xe
	.4byte	0x2d9
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.4byte	0x924
	.uleb128 0x1f
	.4byte	0x9f5
	.4byte	0xa0a
	.uleb128 0x20
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x9fa
	.uleb128 0x21
	.4byte	.LASF273
	.byte	0x13
	.byte	0x37
	.byte	0x20
	.4byte	0xa0a
	.byte	0x3
	.uleb128 0x5
	.byte	0x3
	.4byte	AXES
	.uleb128 0x1d
	.4byte	.LASF210
	.byte	0x5
	.byte	0x4
	.4byte	0x40d
	.byte	0x14
	.byte	0x16
	.byte	0x6
	.4byte	0xa86
	.uleb128 0x22
	.4byte	.LASF211
	.4byte	0x20000
	.uleb128 0x22
	.4byte	.LASF212
	.4byte	0x20001
	.uleb128 0x22
	.4byte	.LASF213
	.4byte	0x20002
	.uleb128 0x22
	.4byte	.LASF214
	.4byte	0x20003
	.uleb128 0x22
	.4byte	.LASF215
	.4byte	0x20004
	.uleb128 0x22
	.4byte	.LASF216
	.4byte	0x20005
	.uleb128 0x22
	.4byte	.LASF217
	.4byte	0x20006
	.uleb128 0x22
	.4byte	.LASF218
	.4byte	0x20007
	.uleb128 0x22
	.4byte	.LASF219
	.4byte	0x20008
	.byte	0
	.uleb128 0x23
	.string	"TAG"
	.byte	0x1
	.byte	0xe
	.byte	0x14
	.4byte	0x400
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.byte	0x10
	.byte	0x13
	.4byte	0x455
	.uleb128 0x5
	.byte	0x3
	.4byte	tmc_uart_mutex
	.uleb128 0x25
	.4byte	.LASF221
	.byte	0x2
	.2byte	0x24e
	.byte	0x5
	.4byte	0x271
	.4byte	0xaca
	.uleb128 0x26
	.4byte	0x4c5
	.uleb128 0x26
	.4byte	0x3f2
	.uleb128 0x26
	.4byte	0x2d9
	.uleb128 0x26
	.4byte	0x2d9
	.byte	0
	.uleb128 0x25
	.4byte	.LASF222
	.byte	0xb
	.2byte	0x270
	.byte	0xc
	.4byte	0x420
	.4byte	0xaf0
	.uleb128 0x26
	.4byte	0x43e
	.uleb128 0x26
	.4byte	0x406
	.uleb128 0x26
	.4byte	0x42c
	.uleb128 0x26
	.4byte	0x420
	.byte	0
	.uleb128 0x25
	.4byte	.LASF223
	.byte	0x2
	.2byte	0x207
	.byte	0xb
	.4byte	0x40d
	.4byte	0xb0c
	.uleb128 0x26
	.4byte	0x4c5
	.uleb128 0x26
	.4byte	0x2d9
	.byte	0
	.uleb128 0x25
	.4byte	.LASF224
	.byte	0x2
	.2byte	0x22a
	.byte	0x5
	.4byte	0x271
	.4byte	0xb2d
	.uleb128 0x26
	.4byte	0x4c5
	.uleb128 0x26
	.4byte	0x406
	.uleb128 0x26
	.4byte	0x285
	.byte	0
	.uleb128 0x25
	.4byte	.LASF225
	.byte	0x2
	.2byte	0x25b
	.byte	0xb
	.4byte	0x40d
	.4byte	0xb44
	.uleb128 0x26
	.4byte	0x4c5
	.byte	0
	.uleb128 0x25
	.4byte	.LASF226
	.byte	0xb
	.2byte	0x549
	.byte	0xc
	.4byte	0x420
	.4byte	0xb60
	.uleb128 0x26
	.4byte	0x43e
	.uleb128 0x26
	.4byte	0x42c
	.byte	0
	.uleb128 0x25
	.4byte	.LASF227
	.byte	0x2
	.2byte	0x187
	.byte	0xb
	.4byte	0x40d
	.4byte	0xb95
	.uleb128 0x26
	.4byte	0x4c5
	.uleb128 0x26
	.4byte	0x271
	.uleb128 0x26
	.4byte	0x271
	.uleb128 0x26
	.4byte	0x271
	.uleb128 0x26
	.4byte	0x271
	.uleb128 0x26
	.4byte	0x271
	.uleb128 0x26
	.4byte	0x271
	.byte	0
	.uleb128 0x25
	.4byte	.LASF228
	.byte	0xb
	.2byte	0x541
	.byte	0xf
	.4byte	0x43e
	.4byte	0xbac
	.uleb128 0x26
	.4byte	0x2a4
	.byte	0
	.uleb128 0x25
	.4byte	.LASF229
	.byte	0x2
	.2byte	0x1ee
	.byte	0xb
	.4byte	0x40d
	.4byte	0xbc8
	.uleb128 0x26
	.4byte	0x4c5
	.uleb128 0x26
	.4byte	0xbc8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x77f
	.uleb128 0x27
	.4byte	.LASF274
	.byte	0x15
	.byte	0x26
	.byte	0x6
	.4byte	0xbeb
	.uleb128 0x26
	.4byte	0x6b8
	.uleb128 0x26
	.4byte	0x400
	.uleb128 0x26
	.4byte	0x400
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.4byte	.LASF230
	.byte	0x9
	.byte	0x3a
	.byte	0xd
	.4byte	0x400
	.4byte	0xc01
	.uleb128 0x26
	.4byte	0x40d
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF275
	.byte	0x16
	.byte	0x26
	.byte	0xa
	.4byte	0x2d9
	.uleb128 0x29
	.4byte	.LASF231
	.byte	0x2
	.byte	0x76
	.byte	0xb
	.4byte	0x40d
	.4byte	0xc3c
	.uleb128 0x26
	.4byte	0x4c5
	.uleb128 0x26
	.4byte	0x271
	.uleb128 0x26
	.4byte	0x271
	.uleb128 0x26
	.4byte	0x271
	.uleb128 0x26
	.4byte	0xc3c
	.uleb128 0x26
	.4byte	0x271
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x43e
	.uleb128 0x2b
	.4byte	.LASF233
	.byte	0x1
	.byte	0xfc
	.byte	0xb
	.4byte	.LASF235
	.4byte	0x40d
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc7
	.uleb128 0x2c
	.string	"a"
	.byte	0x1
	.byte	0xfc
	.byte	0x1c
	.4byte	0x8ff
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.byte	0xfc
	.byte	0x27
	.4byte	0x2a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LASF232
	.byte	0x1
	.byte	0xfc
	.byte	0x35
	.4byte	0x2d9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.4byte	.LVL120
	.4byte	0xd52
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
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
	.uleb128 0x4
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF234
	.byte	0x1
	.byte	0xf8
	.byte	0xb
	.4byte	.LASF236
	.4byte	0x40d
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4c
	.uleb128 0x2c
	.string	"a"
	.byte	0x1
	.byte	0xf8
	.byte	0x1b
	.4byte	0x8ff
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x2d
	.string	"reg"
	.byte	0x1
	.byte	0xf8
	.byte	0x26
	.4byte	0x2a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LASF232
	.byte	0x1
	.byte	0xf8
	.byte	0x35
	.4byte	0xd4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.4byte	.LVL117
	.4byte	0x11fe
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
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
	.uleb128 0x4
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2d9
	.uleb128 0x2b
	.4byte	.LASF237
	.byte	0x1
	.byte	0xb9
	.byte	0xb
	.4byte	.LASF238
	.4byte	0x40d
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ee
	.uleb128 0x31
	.4byte	.LASF239
	.byte	0x1
	.byte	0xb9
	.byte	0x21
	.4byte	0x2a4
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.byte	0xb9
	.byte	0x2f
	.4byte	0x2a4
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x2e
	.4byte	.LASF232
	.byte	0x1
	.byte	0xb9
	.byte	0x3d
	.4byte	0x2d9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.4byte	.LASF240
	.byte	0x1
	.byte	0xba
	.byte	0xd
	.4byte	0x11ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.4byte	.LASF241
	.byte	0x1
	.byte	0xca
	.byte	0x11
	.4byte	0x2a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.4byte	.LASF242
	.byte	0x1
	.byte	0xcb
	.byte	0x13
	.4byte	0x40d
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x33
	.4byte	.LASF243
	.byte	0x1
	.byte	0xd7
	.byte	0x13
	.4byte	0x40d
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x32
	.4byte	.LASF244
	.byte	0x1
	.byte	0xe1
	.byte	0x11
	.4byte	0x2a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0x33
	.4byte	.LASF245
	.byte	0x1
	.byte	0xe2
	.byte	0x13
	.4byte	0x40d
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x34
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.4byte	0xe29
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xce
	.byte	0xa2
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xe3c
	.uleb128 0x37
	.4byte	.LASF246
	.byte	0x1
	.byte	0xce
	.2byte	0x108
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xe4f
	.uleb128 0x37
	.4byte	.LASF246
	.byte	0x1
	.byte	0xce
	.2byte	0x109
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xe62
	.uleb128 0x37
	.4byte	.LASF246
	.byte	0x1
	.byte	0xce
	.2byte	0x10b
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xe74
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xce
	.byte	0xd0
	.4byte	0x6b8
	.byte	0
	.uleb128 0x34
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.4byte	0xe8e
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xdc
	.byte	0xa2
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xea1
	.uleb128 0x37
	.4byte	.LASF246
	.byte	0x1
	.byte	0xdc
	.2byte	0x10c
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xeb4
	.uleb128 0x37
	.4byte	.LASF246
	.byte	0x1
	.byte	0xdc
	.2byte	0x10d
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xec7
	.uleb128 0x37
	.4byte	.LASF246
	.byte	0x1
	.byte	0xdc
	.2byte	0x10f
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xed9
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xdc
	.byte	0xd4
	.4byte	0x6b8
	.byte	0
	.uleb128 0x34
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.4byte	0xef3
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xe5
	.byte	0xa2
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xf06
	.uleb128 0x37
	.4byte	.LASF246
	.byte	0x1
	.byte	0xe5
	.2byte	0x108
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xf19
	.uleb128 0x37
	.4byte	.LASF246
	.byte	0x1
	.byte	0xe5
	.2byte	0x109
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xf2c
	.uleb128 0x37
	.4byte	.LASF246
	.byte	0x1
	.byte	0xe5
	.2byte	0x10b
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xf3e
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xe5
	.byte	0xd0
	.4byte	0x6b8
	.byte	0
	.uleb128 0x34
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.4byte	0xf58
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xf0
	.byte	0x9e
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xf6a
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xf0
	.byte	0xf3
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xf7c
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xf0
	.byte	0xf4
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xf8e
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xf0
	.byte	0xf6
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0xfa0
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xf0
	.byte	0xbb
	.4byte	0x6b8
	.byte	0
	.uleb128 0x38
	.4byte	.LVL88
	.4byte	0x1c3c
	.4byte	0xfb9
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x38
	.4byte	.LVL89
	.4byte	0xb44
	.4byte	0xfcd
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x38
	.4byte	.LVL90
	.4byte	0xb2d
	.4byte	0xfe0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x38
	.4byte	.LVL91
	.4byte	0x1532
	.4byte	0xffa
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x39
	.4byte	.LVL93
	.4byte	0xc01
	.uleb128 0x38
	.4byte	.LVL94
	.4byte	0xbce
	.4byte	0x1031
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x38
	.4byte	.LVL95
	.4byte	0xaca
	.4byte	0x104e
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL96
	.4byte	0xb2d
	.4byte	0x1061
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x38
	.4byte	.LVL97
	.4byte	0xb0c
	.4byte	0x107f
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x38
	.4byte	.LVL98
	.4byte	0xaf0
	.4byte	0x1098
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x38
	.4byte	.LVL100
	.4byte	0xb2d
	.4byte	0x10ab
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x39
	.4byte	.LVL101
	.4byte	0xc01
	.uleb128 0x38
	.4byte	.LVL103
	.4byte	0xbeb
	.4byte	0x10c8
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL104
	.4byte	0xbce
	.4byte	0x10fc
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x38
	.4byte	.LVL105
	.4byte	0xaca
	.4byte	0x1119
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL106
	.4byte	0x1532
	.4byte	0x1133
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.byte	0
	.uleb128 0x39
	.4byte	.LVL108
	.4byte	0xc01
	.uleb128 0x38
	.4byte	.LVL109
	.4byte	0xbce
	.4byte	0x116a
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x38
	.4byte	.LVL110
	.4byte	0xaca
	.4byte	0x1187
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL111
	.4byte	0xb2d
	.4byte	0x119a
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x38
	.4byte	.LVL112
	.4byte	0xaca
	.4byte	0x11ba
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL113
	.4byte	0xc01
	.uleb128 0x2f
	.4byte	.LVL114
	.4byte	0xbce
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x2a4
	.4byte	0x11fe
	.uleb128 0x20
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF247
	.byte	0x1
	.byte	0x85
	.byte	0xb
	.4byte	.LASF248
	.4byte	0x40d
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1512
	.uleb128 0x31
	.4byte	.LASF239
	.byte	0x1
	.byte	0x85
	.byte	0x20
	.4byte	0x2a4
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.byte	0x85
	.byte	0x2e
	.4byte	0x2a4
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x31
	.4byte	.LASF232
	.byte	0x1
	.byte	0x85
	.byte	0x3d
	.4byte	0xd4c
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x32
	.4byte	.LASF240
	.byte	0x1
	.byte	0x87
	.byte	0xd
	.4byte	0x1512
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.4byte	.LASF243
	.byte	0x1
	.byte	0x93
	.byte	0x13
	.4byte	0x40d
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x33
	.4byte	.LASF249
	.byte	0x1
	.byte	0x9b
	.byte	0x17
	.4byte	0x2b0
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x32
	.4byte	.LASF250
	.byte	0x1
	.byte	0x9d
	.byte	0x11
	.4byte	0x1522
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.4byte	.LASF251
	.byte	0x1
	.byte	0x9f
	.byte	0xd
	.4byte	0x271
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x34
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.4byte	0x12cc
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x96
	.byte	0xa2
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x12de
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x96
	.byte	0xd5
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x12f0
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x96
	.byte	0xd6
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1302
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x96
	.byte	0xd8
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1314
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x96
	.byte	0x9d
	.4byte	0x6b8
	.byte	0
	.uleb128 0x34
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0x132e
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xad
	.byte	0x9e
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1340
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xad
	.byte	0xc7
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1352
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xad
	.byte	0xc8
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1364
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xad
	.byte	0xca
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1376
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0xad
	.byte	0x8f
	.4byte	0x6b8
	.byte	0
	.uleb128 0x38
	.4byte	.LVL62
	.4byte	0x18db
	.4byte	0x139c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x38
	.4byte	.LVL63
	.4byte	0xb44
	.4byte	0x13b0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x38
	.4byte	.LVL64
	.4byte	0xb2d
	.4byte	0x13c3
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x38
	.4byte	.LVL65
	.4byte	0xb0c
	.4byte	0x13e1
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x38
	.4byte	.LVL66
	.4byte	0xaf0
	.4byte	0x13fa
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x39
	.4byte	.LVL68
	.4byte	0xc01
	.uleb128 0x38
	.4byte	.LVL70
	.4byte	0xbeb
	.4byte	0x1417
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL71
	.4byte	0xbce
	.4byte	0x144b
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x38
	.4byte	.LVL72
	.4byte	0xaca
	.4byte	0x1468
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.4byte	.LVL76
	.4byte	0x1d3f
	.4byte	0x1487
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x38
	.4byte	.LVL77
	.4byte	0xaa4
	.4byte	0x14aa
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x38
	.4byte	.LVL79
	.4byte	0xaca
	.4byte	0x14ca
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL80
	.4byte	0x1bf1
	.4byte	0x14de
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x39
	.4byte	.LVL81
	.4byte	0xc01
	.uleb128 0x2f
	.4byte	.LVL82
	.4byte	0xbce
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x2a4
	.4byte	0x1522
	.uleb128 0x20
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0x1f
	.4byte	0x2a4
	.4byte	0x1532
	.uleb128 0x20
	.4byte	0x2c
	.byte	0xb
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF256
	.byte	0x1
	.byte	0x61
	.byte	0x12
	.4byte	0x40d
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18db
	.uleb128 0x31
	.4byte	.LASF239
	.byte	0x1
	.byte	0x61
	.byte	0x28
	.4byte	0x2a4
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x31
	.4byte	.LASF232
	.byte	0x1
	.byte	0x61
	.byte	0x37
	.4byte	0x438
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x32
	.4byte	.LASF240
	.byte	0x1
	.byte	0x62
	.byte	0xd
	.4byte	0x1512
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.4byte	.LASF243
	.byte	0x1
	.byte	0x68
	.byte	0xf
	.4byte	0x40d
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x33
	.4byte	.LASF252
	.byte	0x1
	.byte	0x6f
	.byte	0x13
	.4byte	0x2b0
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x32
	.4byte	.LASF250
	.byte	0x1
	.byte	0x70
	.byte	0xd
	.4byte	0x1522
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.4byte	.LASF251
	.byte	0x1
	.byte	0x72
	.byte	0x9
	.4byte	0x271
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x34
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x15e8
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x6b
	.byte	0x9e
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x15fa
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x6b
	.byte	0xd1
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x160c
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x6b
	.byte	0xd2
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x161e
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x6b
	.byte	0xd4
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1630
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x6b
	.byte	0x99
	.4byte	0x6b8
	.byte	0
	.uleb128 0x34
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x164a
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x75
	.byte	0x9e
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x165d
	.uleb128 0x37
	.4byte	.LASF246
	.byte	0x1
	.byte	0x75
	.2byte	0x166
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1670
	.uleb128 0x37
	.4byte	.LASF246
	.byte	0x1
	.byte	0x75
	.2byte	0x167
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1683
	.uleb128 0x37
	.4byte	.LASF246
	.byte	0x1
	.byte	0x75
	.2byte	0x169
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1696
	.uleb128 0x37
	.4byte	.LASF246
	.byte	0x1
	.byte	0x75
	.2byte	0x12e
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x16a8
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x76
	.byte	0x9c
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x16ba
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x76
	.byte	0xcc
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x16cc
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x76
	.byte	0xcd
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x16de
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x76
	.byte	0xcf
	.4byte	0x6b8
	.byte	0
	.uleb128 0x34
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x16f8
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x76
	.byte	0x95
	.4byte	0x6b8
	.byte	0
	.uleb128 0x34
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.4byte	0x1712
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x7c
	.byte	0x9e
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1724
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x7c
	.byte	0xd6
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1736
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x7c
	.byte	0xd7
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1748
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x7c
	.byte	0xd9
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x175a
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x7c
	.byte	0x9e
	.4byte	0x6b8
	.byte	0
	.uleb128 0x38
	.4byte	.LVL25
	.4byte	0x18db
	.4byte	0x1780
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x38
	.4byte	.LVL26
	.4byte	0xb0c
	.4byte	0x179e
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x38
	.4byte	.LVL27
	.4byte	0xaf0
	.4byte	0x17b7
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x39
	.4byte	.LVL29
	.4byte	0xc01
	.uleb128 0x38
	.4byte	.LVL31
	.4byte	0xbeb
	.4byte	0x17d4
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL32
	.4byte	0xbce
	.4byte	0x1808
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x38
	.4byte	.LVL34
	.4byte	0xaa4
	.4byte	0x182b
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x39
	.4byte	.LVL36
	.4byte	0xc01
	.uleb128 0x38
	.4byte	.LVL38
	.4byte	0xbce
	.4byte	0x185c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.4byte	.LVL39
	.4byte	0xc01
	.uleb128 0x38
	.4byte	.LVL40
	.4byte	0xbce
	.4byte	0x1893
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL42
	.4byte	0x1bf1
	.4byte	0x18a7
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x39
	.4byte	.LVL43
	.4byte	0xc01
	.uleb128 0x2f
	.4byte	.LVL44
	.4byte	0xbce
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF276
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1937
	.uleb128 0x2e
	.4byte	.LASF239
	.byte	0x1
	.byte	0x5a
	.byte	0x2b
	.4byte	0x2a4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.byte	0x5a
	.byte	0x39
	.4byte	0x2a4
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x2e
	.4byte	.LASF240
	.byte	0x1
	.byte	0x5a
	.byte	0x47
	.4byte	0x438
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.4byte	.LVL23
	.4byte	0x1c3c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF277
	.byte	0x1
	.byte	0x3b
	.byte	0x6
	.4byte	.LASF278
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bf1
	.uleb128 0x32
	.4byte	.LASF253
	.byte	0x1
	.byte	0x3d
	.byte	0x19
	.4byte	0x77f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.4byte	.LASF254
	.byte	0x1
	.byte	0x49
	.byte	0xf
	.4byte	0x40d
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x33
	.4byte	.LASF255
	.byte	0x1
	.byte	0x4f
	.byte	0xf
	.4byte	0x40d
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x34
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x19a2
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x4c
	.byte	0x9e
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x19b4
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x4c
	.byte	0xea
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x19c6
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x4c
	.byte	0xeb
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x19d8
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x4c
	.byte	0xed
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x19ea
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x4c
	.byte	0xb2
	.4byte	0x6b8
	.byte	0
	.uleb128 0x34
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0x1a04
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x52
	.byte	0x9e
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1a16
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x52
	.byte	0xe6
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1a28
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x52
	.byte	0xe7
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1a3a
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x52
	.byte	0xe9
	.4byte	0x6b8
	.byte	0
	.uleb128 0x36
	.4byte	0x1a4c
	.uleb128 0x35
	.4byte	.LASF246
	.byte	0x1
	.byte	0x52
	.byte	0xae
	.4byte	0x6b8
	.byte	0
	.uleb128 0x3d
	.4byte	0x1cdd
	.4byte	.LBI34
	.byte	.LVU198
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0x55
	.byte	0x13
	.4byte	0x1ad9
	.uleb128 0x3e
	.4byte	0x1cef
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x3e
	.4byte	0x1cfc
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x3e
	.4byte	0x1d09
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x3e
	.4byte	0x1d16
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x3e
	.4byte	0x1d23
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x2f
	.4byte	.LVL59
	.4byte	0xb60
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x30
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL48
	.4byte	0x1d3f
	.4byte	0x1af8
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x38
	.4byte	.LVL49
	.4byte	0xc0d
	.4byte	0x1b26
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x39
	.4byte	.LVL51
	.4byte	0xc01
	.uleb128 0x38
	.4byte	.LVL52
	.4byte	0xbeb
	.4byte	0x1b43
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL53
	.4byte	0xbce
	.4byte	0x1b77
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x38
	.4byte	.LVL54
	.4byte	0xbac
	.4byte	0x1b90
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x39
	.4byte	.LVL56
	.4byte	0xc01
	.uleb128 0x38
	.4byte	.LVL57
	.4byte	0xbeb
	.4byte	0x1bad
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL58
	.4byte	0xbce
	.4byte	0x1be1
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL60
	.4byte	0xb95
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF257
	.byte	0x1
	.byte	0x32
	.byte	0xd
	.4byte	0x419
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c3c
	.uleb128 0x31
	.4byte	.LASF258
	.byte	0x1
	.byte	0x32
	.byte	0x2d
	.4byte	0x438
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2f
	.4byte	.LVL15
	.4byte	0x1c3c
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x9
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF259
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.4byte	0x2a4
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cdd
	.uleb128 0x31
	.4byte	.LASF122
	.byte	0x1
	.byte	0x16
	.byte	0x22
	.4byte	0x438
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.4byte	0x2a4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3f
	.string	"crc"
	.byte	0x1
	.byte	0x18
	.byte	0xd
	.4byte	0x2a4
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x40
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x3f
	.string	"i"
	.byte	0x1
	.byte	0x1a
	.byte	0xe
	.4byte	0x271
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x41
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x3f
	.string	"b"
	.byte	0x1
	.byte	0x1d
	.byte	0x11
	.4byte	0x2a4
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x41
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x3f
	.string	"j"
	.byte	0x1
	.byte	0x1f
	.byte	0x12
	.4byte	0x271
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF279
	.byte	0x2
	.2byte	0x188
	.byte	0x19
	.4byte	0x40d
	.byte	0x3
	.4byte	0x1d31
	.uleb128 0x43
	.4byte	.LASF260
	.byte	0x2
	.2byte	0x188
	.byte	0x34
	.4byte	0x4c5
	.uleb128 0x43
	.4byte	.LASF261
	.byte	0x2
	.2byte	0x188
	.byte	0x42
	.4byte	0x271
	.uleb128 0x43
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x188
	.byte	0x51
	.4byte	0x271
	.uleb128 0x43
	.4byte	.LASF263
	.byte	0x2
	.2byte	0x188
	.byte	0x60
	.4byte	0x271
	.uleb128 0x43
	.4byte	.LASF264
	.byte	0x2
	.2byte	0x188
	.byte	0x70
	.4byte	0x271
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF265
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF266
	.uleb128 0x44
	.4byte	.LASF280
	.4byte	.LASF281
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x22
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
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
	.uleb128 0x39
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
.LVUS31:
	.uleb128 0
	.uleb128 .LVU431
	.uleb128 .LVU431
	.uleb128 0
.LLST31:
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
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
.LVUS30:
	.uleb128 0
	.uleb128 .LVU424
	.uleb128 .LVU424
	.uleb128 0
.LLST30:
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
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
.LVUS25:
	.uleb128 0
	.uleb128 .LVU322
	.uleb128 .LVU322
	.uleb128 .LVU361
	.uleb128 .LVU361
	.uleb128 0
.LLST25:
	.4byte	.LVL86
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL102
	.4byte	.LFE105
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
.LVUS26:
	.uleb128 0
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 0
.LLST26:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LFE105
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
.LVUS27:
	.uleb128 .LVU322
	.uleb128 .LVU348
.LLST27:
	.4byte	.LVL92
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU348
	.uleb128 .LVU373
.LLST28:
	.4byte	.LVL99
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU373
	.uleb128 .LVU416
.LLST29:
	.4byte	.LVL107
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 0
.LLST19:
	.4byte	.LVL61
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE104
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
.LVUS20:
	.uleb128 0
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 0
.LLST20:
	.4byte	.LVL61
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75
	.4byte	.LFE104
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
.LVUS21:
	.uleb128 0
	.uleb128 .LVU231
	.uleb128 .LVU231
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 0
.LLST21:
	.4byte	.LVL61
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85
	.4byte	.LFE104
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU220
	.uleb128 .LVU240
	.uleb128 .LVU241
	.uleb128 .LVU270
	.uleb128 .LVU271
	.uleb128 .LVU290
.LLST22:
	.4byte	.LVL67
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU243
	.uleb128 .LVU290
.LLST23:
	.4byte	.LVL74
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU248
	.uleb128 .LVU290
.LLST24:
	.4byte	.LVL78
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE103
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
.LVUS8:
	.uleb128 0
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 0
.LLST8:
	.4byte	.LVL24
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
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47
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
.LVUS9:
	.uleb128 .LVU73
	.uleb128 .LVU108
	.uleb128 .LVU131
	.uleb128 .LVU151
	.uleb128 .LVU152
	.uleb128 .LVU157
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU93
	.uleb128 .LVU157
.LLST10:
	.4byte	.LVL33
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU96
	.uleb128 .LVU157
.LLST11:
	.4byte	.LVL35
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LFE102
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
.LVUS12:
	.uleb128 .LVU163
	.uleb128 .LVU181
.LLST12:
	.4byte	.LVL50
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU181
	.uleb128 0
.LLST13:
	.4byte	.LVL55
	.4byte	.LFE101
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU198
	.uleb128 .LVU201
.LLST14:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU198
	.uleb128 .LVU201
.LLST15:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x41
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU198
	.uleb128 .LVU201
.LLST16:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x42
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU198
	.uleb128 .LVU201
.LLST17:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-1
	.4byte	.LVL16
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
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE99
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU3
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU19
	.uleb128 .LVU20
	.uleb128 .LVU23
	.uleb128 .LVU24
	.uleb128 0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE99
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU4
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE99
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU10
	.uleb128 .LVU30
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU11
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU30
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB99
	.4byte	.LFE99
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"int8_t"
.LASF260:
	.string	"uart_num"
.LASF250:
	.string	"response"
.LASF31:
	.string	"size_t"
.LASF132:
	.string	"stop_bits"
.LASF224:
	.string	"uart_write_bytes"
.LASF191:
	.string	"AXIS_RA"
.LASF245:
	.string	"ifcnt_after_err"
.LASF60:
	.string	"uint_fast64_t"
.LASF37:
	.string	"int32_t"
.LASF20:
	.string	"__uint_least8_t"
.LASF240:
	.string	"request"
.LASF229:
	.string	"uart_param_config"
.LASF64:
	.string	"BaseType_t"
.LASF214:
	.string	"ESP_ERR_TMC_ENN_LOW"
.LASF261:
	.string	"tx_io_num"
.LASF84:
	.string	"UART_DATA_BITS_MAX"
.LASF48:
	.string	"uint_least16_t"
.LASF53:
	.string	"int_fast8_t"
.LASF221:
	.string	"uart_read_bytes"
.LASF278:
	.string	"_Z13tmc_uart_initv"
.LASF114:
	.string	"log_level"
.LASF254:
	.string	"err_driver_install"
.LASF58:
	.string	"uint_fast32_t"
.LASF7:
	.string	"__uint8_t"
.LASF249:
	.string	"readLength"
.LASF105:
	.string	"15esp_log_level_t"
.LASF192:
	.string	"AXIS_DEC"
.LASF111:
	.string	"ESP_LOG_VERBOSE"
.LASF93:
	.string	"UART_PARITY_DISABLE"
.LASF264:
	.string	"cts_io_num"
.LASF13:
	.string	"long int"
.LASF96:
	.string	"uart_parity_t"
.LASF258:
	.string	"resp"
.LASF272:
	.string	"axis_config_t"
.LASF270:
	.string	"QueueDefinition"
.LASF281:
	.string	"__builtin_memset"
.LASF116:
	.string	"require_formatting"
.LASF205:
	.string	"full_steps"
.LASF71:
	.string	"UART_SCLK_DEFAULT"
.LASF100:
	.string	"UART_HW_FLOWCTRL_CTS"
.LASF234:
	.string	"tmc_read"
.LASF52:
	.string	"uint_least64_t"
.LASF99:
	.string	"UART_HW_FLOWCTRL_RTS"
.LASF66:
	.string	"QueueHandle_t"
.LASF5:
	.string	"signed char"
.LASF34:
	.string	"uint8_t"
.LASF118:
	.string	"dis_timestamp"
.LASF139:
	.string	"GPIO_NUM_0"
.LASF140:
	.string	"GPIO_NUM_1"
.LASF141:
	.string	"GPIO_NUM_2"
.LASF142:
	.string	"GPIO_NUM_3"
.LASF143:
	.string	"GPIO_NUM_4"
.LASF144:
	.string	"GPIO_NUM_5"
.LASF145:
	.string	"GPIO_NUM_6"
.LASF146:
	.string	"GPIO_NUM_7"
.LASF147:
	.string	"GPIO_NUM_8"
.LASF148:
	.string	"GPIO_NUM_9"
.LASF209:
	.string	"axis_t"
.LASF22:
	.string	"__uint_least16_t"
.LASF87:
	.string	"UART_STOP_BITS_1"
.LASF89:
	.string	"UART_STOP_BITS_2"
.LASF2:
	.string	"unsigned char"
.LASF138:
	.string	"GPIO_NUM_NC"
.LASF19:
	.string	"__int_least8_t"
.LASF94:
	.string	"UART_PARITY_EVEN"
.LASF232:
	.string	"value"
.LASF189:
	.string	"TMC_R_INTERNAL_MOHM"
.LASF134:
	.string	"rx_flow_ctrl_thresh"
.LASF228:
	.string	"xQueueCreateMutex"
.LASF212:
	.string	"ESP_ERR_TMC_NO_RESPONSE"
.LASF61:
	.string	"char"
.LASF50:
	.string	"uint_least32_t"
.LASF101:
	.string	"UART_HW_FLOWCTRL_CTS_RTS"
.LASF67:
	.string	"SemaphoreHandle_t"
.LASF243:
	.string	"tx_err"
.LASF10:
	.string	"__uint16_t"
.LASF82:
	.string	"UART_DATA_7_BITS"
.LASF274:
	.string	"esp_log"
.LASF149:
	.string	"GPIO_NUM_10"
.LASF135:
	.string	"flags"
.LASF246:
	.string	"__esp_log_config"
.LASF265:
	.string	"double"
.LASF47:
	.string	"int_least16_t"
.LASF107:
	.string	"ESP_LOG_ERROR"
.LASF223:
	.string	"uart_wait_tx_done"
.LASF193:
	.string	"AXIS_COUNT"
.LASF126:
	.string	"source_clk"
.LASF197:
	.string	"step_pin"
.LASF26:
	.string	"__uint_least64_t"
.LASF128:
	.string	"backup_before_sleep"
.LASF103:
	.string	"uart_hw_flowcontrol_t"
.LASF190:
	.string	"TMC_FULL_SCALE_MA"
.LASF81:
	.string	"UART_DATA_6_BITS"
.LASF255:
	.string	"err_param_config"
.LASF236:
	.string	"_Z8tmc_read6axis_thPm"
.LASF164:
	.string	"GPIO_NUM_29"
.LASF263:
	.string	"rts_io_num"
.LASF222:
	.string	"xQueueGenericSend"
.LASF237:
	.string	"write_tmc_reg"
.LASF18:
	.string	"__uint64_t"
.LASF15:
	.string	"long unsigned int"
.LASF198:
	.string	"dir_pin"
.LASF208:
	.string	"belt_ratio"
.LASF186:
	.string	"TMC_VSENSE"
.LASF24:
	.string	"__uint_least32_t"
.LASF69:
	.string	"UART_SCLK_RTC"
.LASF51:
	.string	"int_least64_t"
.LASF242:
	.string	"ifcnt_err"
.LASF44:
	.string	"uintptr_t"
.LASF252:
	.string	"bufferLength"
.LASF185:
	.string	"gpio_num_t"
.LASF256:
	.string	"set_IFCNT_reg"
.LASF95:
	.string	"UART_PARITY_ODD"
.LASF72:
	.string	"soc_periph_uart_clk_src_legacy_t"
.LASF203:
	.string	"mres"
.LASF29:
	.string	"__intptr_t"
.LASF14:
	.string	"__uint32_t"
.LASF17:
	.string	"long long int"
.LASF181:
	.string	"GPIO_NUM_46"
.LASF188:
	.string	"TMC_R_SENSE_MOHM"
.LASF49:
	.string	"int_least32_t"
.LASF119:
	.string	"binary_mode"
.LASF62:
	.string	"esp_err_t"
.LASF42:
	.string	"uintmax_t"
.LASF150:
	.string	"GPIO_NUM_11"
.LASF151:
	.string	"GPIO_NUM_12"
.LASF152:
	.string	"GPIO_NUM_13"
.LASF153:
	.string	"GPIO_NUM_14"
.LASF154:
	.string	"GPIO_NUM_15"
.LASF155:
	.string	"GPIO_NUM_16"
.LASF156:
	.string	"GPIO_NUM_17"
.LASF157:
	.string	"GPIO_NUM_18"
.LASF158:
	.string	"GPIO_NUM_19"
.LASF184:
	.string	"GPIO_NUM_MAX"
.LASF131:
	.string	"parity"
.LASF137:
	.string	"10gpio_num_t"
.LASF266:
	.string	"float"
.LASF225:
	.string	"uart_flush"
.LASF239:
	.string	"addr"
.LASF267:
	.ascii	"GNU C++26 15.2.0 -ftls-model=local-exec -mdynconfig=xtensa_e"
	.ascii	"sp32s3.so -mlongcalls -gdwarf-4 -ggdb -Og -std=gn"
	.string	"u++26 -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-rtti -ffunction-sections -fdata-sections -fno-shrink-wrap -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -fno-exceptions -fuse-cxa-atexit -ftls-model=local-exec"
.LASF27:
	.string	"__intmax_t"
.LASF204:
	.string	"shaft"
.LASF1:
	.string	"unsigned int"
.LASF125:
	.string	"13uart_config_t"
.LASF159:
	.string	"GPIO_NUM_20"
.LASF160:
	.string	"GPIO_NUM_21"
.LASF161:
	.string	"GPIO_NUM_26"
.LASF162:
	.string	"GPIO_NUM_27"
.LASF163:
	.string	"GPIO_NUM_28"
.LASF113:
	.string	"esp_log_level_t"
.LASF121:
	.string	"opts"
.LASF43:
	.string	"intptr_t"
.LASF235:
	.string	"_Z9tmc_write6axis_thm"
.LASF244:
	.string	"ifcntAfter"
.LASF102:
	.string	"UART_HW_FLOWCTRL_MAX"
.LASF77:
	.string	"uart_port_t"
.LASF257:
	.string	"validate_uart_response"
.LASF213:
	.string	"ESP_ERR_TMC_WRONG_CHIP"
.LASF108:
	.string	"ESP_LOG_WARN"
.LASF55:
	.string	"int_fast16_t"
.LASF165:
	.string	"GPIO_NUM_30"
.LASF166:
	.string	"GPIO_NUM_31"
.LASF167:
	.string	"GPIO_NUM_32"
.LASF168:
	.string	"GPIO_NUM_33"
.LASF169:
	.string	"GPIO_NUM_34"
.LASF170:
	.string	"GPIO_NUM_35"
.LASF171:
	.string	"GPIO_NUM_36"
.LASF172:
	.string	"GPIO_NUM_37"
.LASF173:
	.string	"GPIO_NUM_38"
.LASF174:
	.string	"GPIO_NUM_39"
.LASF216:
	.string	"ESP_ERR_TMC_RA_NOT_CONFIGURED"
.LASF124:
	.string	"16esp_log_config_t"
.LASF112:
	.string	"ESP_LOG_MAX"
.LASF269:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/build/dev"
.LASF98:
	.string	"UART_HW_FLOWCTRL_DISABLE"
.LASF86:
	.string	"16uart_stop_bits_t"
.LASF262:
	.string	"rx_io_num"
.LASF3:
	.string	"__gnu_cxx"
.LASF90:
	.string	"UART_STOP_BITS_MAX"
.LASF175:
	.string	"GPIO_NUM_40"
.LASF176:
	.string	"GPIO_NUM_41"
.LASF177:
	.string	"GPIO_NUM_42"
.LASF178:
	.string	"GPIO_NUM_43"
.LASF179:
	.string	"GPIO_NUM_44"
.LASF180:
	.string	"GPIO_NUM_45"
.LASF63:
	.string	"bool"
.LASF182:
	.string	"GPIO_NUM_47"
.LASF183:
	.string	"GPIO_NUM_48"
.LASF46:
	.string	"uint_least8_t"
.LASF45:
	.string	"int_least8_t"
.LASF41:
	.string	"intmax_t"
.LASF32:
	.string	"long double"
.LASF133:
	.string	"flow_ctrl"
.LASF70:
	.string	"UART_SCLK_XTAL"
.LASF73:
	.string	"UART_NUM_0"
.LASF74:
	.string	"UART_NUM_1"
.LASF75:
	.string	"UART_NUM_2"
.LASF130:
	.string	"data_bits"
.LASF218:
	.string	"ESP_ERR_TMC_INVALID_CRC"
.LASF275:
	.string	"esp_log_timestamp"
.LASF6:
	.string	"__int8_t"
.LASF0:
	.string	"long long unsigned int"
.LASF36:
	.string	"uint16_t"
.LASF220:
	.string	"tmc_uart_mutex"
.LASF231:
	.string	"uart_driver_install"
.LASF207:
	.string	"worm_teeth"
.LASF21:
	.string	"__int_least16_t"
.LASF59:
	.string	"int_fast64_t"
.LASF123:
	.string	"esp_log_config_t"
.LASF217:
	.string	"ESP_ERR_TMC_DEC_NOT_CONFIGURED"
.LASF210:
	.string	"tmc_err_t"
.LASF106:
	.string	"ESP_LOG_NONE"
.LASF65:
	.string	"TickType_t"
.LASF4:
	.string	"__cxx11"
.LASF80:
	.string	"UART_DATA_5_BITS"
.LASF91:
	.string	"uart_stop_bits_t"
.LASF280:
	.string	"memset"
.LASF226:
	.string	"xQueueSemaphoreTake"
.LASF109:
	.string	"ESP_LOG_INFO"
.LASF233:
	.string	"tmc_write"
.LASF136:
	.string	"uart_config_t"
.LASF211:
	.string	"ESP_ERR_TMC_BASE"
.LASF248:
	.string	"_Z12read_tmc_reghhPm"
.LASF8:
	.string	"__int16_t"
.LASF219:
	.string	"ESP_ERR_TMC_VERIFY_FAILED"
.LASF79:
	.string	"18uart_word_length_t"
.LASF253:
	.string	"uart_config"
.LASF104:
	.string	"uart_sclk_t"
.LASF30:
	.string	"__uintptr_t"
.LASF241:
	.string	"ifcntBefore"
.LASF76:
	.string	"UART_NUM_MAX"
.LASF215:
	.string	"ESP_ERR_TMC_WRITE_LOST"
.LASF57:
	.string	"int_fast32_t"
.LASF200:
	.string	"ihold"
.LASF194:
	.string	"name"
.LASF54:
	.string	"uint_fast8_t"
.LASF9:
	.string	"short int"
.LASF40:
	.string	"uint64_t"
.LASF230:
	.string	"esp_err_to_name"
.LASF35:
	.string	"int16_t"
.LASF25:
	.string	"__int_least64_t"
.LASF196:
	.string	"en_pin"
.LASF28:
	.string	"__uintmax_t"
.LASF251:
	.string	"respLen"
.LASF271:
	.string	"32soc_periph_uart_clk_src_legacy_t"
.LASF115:
	.string	"constrained_env"
.LASF247:
	.string	"read_tmc_reg"
.LASF110:
	.string	"ESP_LOG_DEBUG"
.LASF68:
	.string	"UART_SCLK_APB"
.LASF16:
	.string	"__int64_t"
.LASF117:
	.string	"dis_color"
.LASF276:
	.string	"get_uart_read_request"
.LASF85:
	.string	"uart_word_length_t"
.LASF277:
	.string	"tmc_uart_init"
.LASF238:
	.string	"_Z13write_tmc_reghhm"
.LASF127:
	.string	"allow_pd"
.LASF38:
	.string	"uint32_t"
.LASF259:
	.string	"tmc_crc8"
.LASF83:
	.string	"UART_DATA_8_BITS"
.LASF56:
	.string	"uint_fast16_t"
.LASF201:
	.string	"irun_hot"
.LASF129:
	.string	"baud_rate"
.LASF23:
	.string	"__int_least32_t"
.LASF199:
	.string	"irun"
.LASF11:
	.string	"short unsigned int"
.LASF273:
	.string	"AXES"
.LASF97:
	.string	"21uart_hw_flowcontrol_t"
.LASF78:
	.string	"11uart_port_t"
.LASF195:
	.string	"uart_addr"
.LASF88:
	.string	"UART_STOP_BITS_1_5"
.LASF12:
	.string	"__int32_t"
.LASF39:
	.string	"int64_t"
.LASF268:
	.string	"/Users/andrew/embedded/pet-projects/eq3-2-handmade/main/tmc-driver/tmc-uart.cpp"
.LASF202:
	.string	"pwm_grad"
.LASF92:
	.string	"13uart_parity_t"
.LASF187:
	.string	"TMC_V_FS_MV"
.LASF206:
	.string	"microsteps"
.LASF120:
	.string	"reserved"
.LASF279:
	.string	"_uart_set_pin4"
.LASF122:
	.string	"data"
.LASF227:
	.string	"_uart_set_pin6"
	.ident	"GCC: (crosstool-NG esp-15.2.0_20251204) 15.2.0"
