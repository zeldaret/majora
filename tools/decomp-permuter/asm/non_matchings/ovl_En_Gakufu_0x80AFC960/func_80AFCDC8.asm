glabel func_80AFCDC8
/* 000282 0x80AFCDC8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000283 0x80AFCDCC 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000284 0x80AFCDD0 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000285 0x80AFCDD4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000286 0x80AFCDD8 9062100F */ lbu	$v0, 0X100F($v1)
/* 000287 0x80AFCDDC 304E0002 */ andi	$t6, $v0, 0X2
/* 000288 0x80AFCDE0 11C00017 */ beqz	$t6, .L80AFCE40
/* 000289 0x80AFCDE4 304F0004 */ andi	$t7, $v0, 0X4
/* 000290 0x80AFCDE8 11E0000C */ beqz	$t7, .L80AFCE1C
/* 000291 0x80AFCDEC 305900FD */ andi	$t9, $v0, 0XFD
/* 000292 0x80AFCDF0 A079100F */ sb	$t9, 0X100F($v1)
/* 000293 0x80AFCDF4 332800FB */ andi	$t0, $t9, 0XFB
/* 000294 0x80AFCDF8 3C0980B0 */ lui	$t1, %hi(func_80AFCD44)
/* 000295 0x80AFCDFC A068100F */ sb	$t0, 0X100F($v1)
/* 000296 0x80AFCE00 2529CD44 */ addiu	$t1, $t1, %lo(func_80AFCD44)
/* 000297 0x80AFCE04 AC890150 */ sw	$t1, 0X150($a0)
/* 000298 0x80AFCE08 0C2BF351 */ jal	func_80AFCD44
/* 000299 0x80AFCE0C AFA40018 */ sw	$a0, 0X18($sp)
/* 000300 0x80AFCE10 8FA40018 */ lw	$a0, 0X18($sp)
/* 000301 0x80AFCE14 10000012 */ b	.L80AFCE60
/* 000302 0x80AFCE18 AC80013C */ sw	$zero, 0X13C($a0)
.L80AFCE1C:
/* 000303 0x80AFCE1C 0C2BF309 */ jal	func_80AFCC24
/* 000304 0x80AFCE20 00000000 */ nop
/* 000305 0x80AFCE24 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000306 0x80AFCE28 1440000D */ bnez	$v0, .L80AFCE60
/* 000307 0x80AFCE2C 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000308 0x80AFCE30 906A100F */ lbu	$t2, 0X100F($v1)
/* 000309 0x80AFCE34 314B00FD */ andi	$t3, $t2, 0XFD
/* 000310 0x80AFCE38 10000009 */ b	.L80AFCE60
/* 000311 0x80AFCE3C A06B100F */ sb	$t3, 0X100F($v1)
.L80AFCE40:
/* 000312 0x80AFCE40 0C2BF309 */ jal	func_80AFCC24
/* 000313 0x80AFCE44 00000000 */ nop
/* 000314 0x80AFCE48 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000315 0x80AFCE4C 10400004 */ beqz	$v0, .L80AFCE60
/* 000316 0x80AFCE50 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000317 0x80AFCE54 906C100F */ lbu	$t4, 0X100F($v1)
/* 000318 0x80AFCE58 358D0002 */ ori	$t5, $t4, 0X2
/* 000319 0x80AFCE5C A06D100F */ sb	$t5, 0X100F($v1)
.L80AFCE60:
/* 000320 0x80AFCE60 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000321 0x80AFCE64 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000322 0x80AFCE68 03E00008 */ jr	$ra
/* 000323 0x80AFCE6C 00000000 */ nop

