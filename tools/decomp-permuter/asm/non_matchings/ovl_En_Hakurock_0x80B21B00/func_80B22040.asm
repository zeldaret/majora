glabel func_80B22040
/* 000336 0x80B22040 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000337 0x80B22044 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000338 0x80B22048 8482001C */ lh	$v0, 0X1C($a0)
/* 000339 0x80B2204C 24010001 */ li	$at, 0X1
/* 000340 0x80B22050 54410006 */ bnel	$v0, $at, .L80B2206C
/* 000341 0x80B22054 24010002 */ li	$at, 0X2
/* 000342 0x80B22058 0C2C882A */ jal	func_80B220A8
/* 000343 0x80B2205C 00000000 */ nop
/* 000344 0x80B22060 1000000E */ b	.L80B2209C
/* 000345 0x80B22064 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000346 0x80B22068 24010002 */ li	$at, 0X2
.L80B2206C:
/* 000347 0x80B2206C 54410006 */ bnel	$v0, $at, .L80B22088
/* 000348 0x80B22070 24010004 */ li	$at, 0X4
/* 000349 0x80B22074 0C2C88AB */ jal	func_80B222AC
/* 000350 0x80B22078 00000000 */ nop
/* 000351 0x80B2207C 10000007 */ b	.L80B2209C
/* 000352 0x80B22080 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000353 0x80B22084 24010004 */ li	$at, 0X4
.L80B22088:
/* 000354 0x80B22088 54410004 */ bnel	$v0, $at, .L80B2209C
/* 000355 0x80B2208C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000356 0x80B22090 0C2C89AB */ jal	func_80B226AC
/* 000357 0x80B22094 00000000 */ nop
/* 000358 0x80B22098 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B2209C:
/* 000359 0x80B2209C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000360 0x80B220A0 03E00008 */ jr	$ra
/* 000361 0x80B220A4 00000000 */ nop

