glabel func_80BBB2C4
/* 000393 0x80BBB2C4 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000394 0x80BBB2C8 AFB00020 */ sw	$s0, 0X20($sp)
/* 000395 0x80BBB2CC 00808025 */ move	$s0, $a0
/* 000396 0x80BBB2D0 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000397 0x80BBB2D4 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000398 0x80BBB2D8 02002025 */ move	$a0, $s0
/* 000399 0x80BBB2DC 0C02E134 */ jal	func_800B84D0
/* 000400 0x80BBB2E0 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000401 0x80BBB2E4 1040000E */ beqz	$v0, .L80BBB320
/* 000402 0x80BBB2E8 3C01447A */ lui	$at, 0x447A
/* 000403 0x80BBB2EC 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000404 0x80BBB2F0 2405124F */ li	$a1, 0X124F
/* 000405 0x80BBB2F4 0C05462C */ jal	func_801518B0
/* 000406 0x80BBB2F8 02003025 */ move	$a2, $s0
/* 000407 0x80BBB2FC 8E0F0004 */ lw	$t7, 0X4($s0)
/* 000408 0x80BBB300 3C01FFFE */ lui	$at, 0xFFFE
/* 000409 0x80BBB304 3C0E80BC */ lui	$t6, %hi(func_80BBB8AC)
/* 000410 0x80BBB308 3421FFFF */ ori	$at, $at, 0XFFFF
/* 000411 0x80BBB30C 25CEB8AC */ addiu	$t6, $t6, %lo(func_80BBB8AC)
/* 000412 0x80BBB310 01E1C024 */ and	$t8, $t7, $at
/* 000413 0x80BBB314 AE0E02C0 */ sw	$t6, 0X2C0($s0)
/* 000414 0x80BBB318 10000009 */ b	.L80BBB340
/* 000415 0x80BBB31C AE180004 */ sw	$t8, 0X4($s0)
.L80BBB320:
/* 000416 0x80BBB320 44810000 */ mtc1	$at, $f0
/* 000417 0x80BBB324 2419FFFF */ li	$t9, -0X1
/* 000418 0x80BBB328 AFB90010 */ sw	$t9, 0X10($sp)
/* 000419 0x80BBB32C 44060000 */ mfc1	$a2, $f0
/* 000420 0x80BBB330 44070000 */ mfc1	$a3, $f0
/* 000421 0x80BBB334 02002025 */ move	$a0, $s0
/* 000422 0x80BBB338 0C02E140 */ jal	func_800B8500
/* 000423 0x80BBB33C 8FA5002C */ lw	$a1, 0X2C($sp)
.L80BBB340:
/* 000424 0x80BBB340 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000425 0x80BBB344 8FB00020 */ lw	$s0, 0X20($sp)
/* 000426 0x80BBB348 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000427 0x80BBB34C 03E00008 */ jr	$ra
/* 000428 0x80BBB350 00000000 */ nop

