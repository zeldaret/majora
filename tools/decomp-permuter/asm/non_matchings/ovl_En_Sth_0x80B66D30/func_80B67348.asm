glabel func_80B67348
/* 000390 0x80B67348 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000391 0x80B6734C AFB00020 */ sw	$s0, 0X20($sp)
/* 000392 0x80B67350 00808025 */ move	$s0, $a0
/* 000393 0x80B67354 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000394 0x80B67358 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000395 0x80B6735C 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000396 0x80B67360 26040190 */ addiu	$a0, $s0, 0X190
/* 000397 0x80B67364 02002025 */ move	$a0, $s0
/* 000398 0x80B67368 0C02E134 */ jal	func_800B84D0
/* 000399 0x80B6736C 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000400 0x80B67370 1040002C */ beqz	$v0, .L80B67424
/* 000401 0x80B67374 3C01447A */ lui	$at, 0x447A
/* 000402 0x80B67378 8E0E0004 */ lw	$t6, 0X4($s0)
/* 000403 0x80B6737C 3C01FFFE */ lui	$at, 0xFFFE
/* 000404 0x80B67380 86020018 */ lh	$v0, 0X18($s0)
/* 000405 0x80B67384 3421FFFF */ ori	$at, $at, 0XFFFF
/* 000406 0x80B67388 3C1880B6 */ lui	$t8, %hi(func_80B67540)
/* 000407 0x80B6738C 01C17824 */ and	$t7, $t6, $at
/* 000408 0x80B67390 27187540 */ addiu	$t8, $t8, %lo(func_80B67540)
/* 000409 0x80B67394 24010005 */ li	$at, 0X5
/* 000410 0x80B67398 AE0F0004 */ sw	$t7, 0X4($s0)
/* 000411 0x80B6739C 1041000C */ beq	$v0, $at, .L80B673D0
/* 000412 0x80B673A0 AE1802A0 */ sw	$t8, 0X2A0($s0)
/* 000413 0x80B673A4 24010006 */ li	$at, 0X6
/* 000414 0x80B673A8 10410007 */ beq	$v0, $at, .L80B673C8
/* 000415 0x80B673AC 24010008 */ li	$at, 0X8
/* 000416 0x80B673B0 10410003 */ beq	$v0, $at, .L80B673C0
/* 000417 0x80B673B4 24010009 */ li	$at, 0X9
/* 000418 0x80B673B8 1441000E */ bne	$v0, $at, .L80B673F4
/* 000419 0x80B673BC 3C09801F */ lui	$t1, %hi(gSaveContext + 0xF05)
.L80B673C0:
/* 000420 0x80B673C0 10000013 */ b	.L80B67410
/* 000421 0x80B673C4 24051137 */ li	$a1, 0X1137
.L80B673C8:
/* 000422 0x80B673C8 10000011 */ b	.L80B67410
/* 000423 0x80B673CC 24051138 */ li	$a1, 0X1138
.L80B673D0:
/* 000424 0x80B673D0 3C19801F */ lui	$t9, %hi(gSaveContext + 0xF05)
/* 000425 0x80B673D4 93390575 */ lbu	$t9, %lo(gSaveContext + 0xF05)($t9)
/* 000426 0x80B673D8 33280040 */ andi	$t0, $t9, 0X40
/* 000427 0x80B673DC 11000003 */ beqz	$t0, .L80B673EC
/* 000428 0x80B673E0 00000000 */ nop
/* 000429 0x80B673E4 1000000A */ b	.L80B67410
/* 000430 0x80B673E8 2405113D */ li	$a1, 0X113D
.L80B673EC:
/* 000431 0x80B673EC 10000008 */ b	.L80B67410
/* 000432 0x80B673F0 2405113C */ li	$a1, 0X113C
.L80B673F4:
/* 000433 0x80B673F4 91290575 */ lbu	$t1, %lo(gSaveContext + 0xF05)($t1)
/* 000434 0x80B673F8 24051141 */ li	$a1, 0X1141
/* 000435 0x80B673FC 312A0040 */ andi	$t2, $t1, 0X40
/* 000436 0x80B67400 11400003 */ beqz	$t2, .L80B67410
/* 000437 0x80B67404 00000000 */ nop
/* 000438 0x80B67408 10000001 */ b	.L80B67410
/* 000439 0x80B6740C 24051142 */ li	$a1, 0X1142
.L80B67410:
/* 000440 0x80B67410 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000441 0x80B67414 0C05462C */ jal	func_801518B0
/* 000442 0x80B67418 02003025 */ move	$a2, $s0
/* 000443 0x80B6741C 1000000A */ b	.L80B67448
/* 000444 0x80B67420 8FBF0024 */ lw	$ra, 0X24($sp)
.L80B67424:
/* 000445 0x80B67424 44810000 */ mtc1	$at, $f0
/* 000446 0x80B67428 240BFFFF */ li	$t3, -0X1
/* 000447 0x80B6742C AFAB0010 */ sw	$t3, 0X10($sp)
/* 000448 0x80B67430 44060000 */ mfc1	$a2, $f0
/* 000449 0x80B67434 44070000 */ mfc1	$a3, $f0
/* 000450 0x80B67438 02002025 */ move	$a0, $s0
/* 000451 0x80B6743C 0C02E140 */ jal	func_800B8500
/* 000452 0x80B67440 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000453 0x80B67444 8FBF0024 */ lw	$ra, 0X24($sp)
.L80B67448:
/* 000454 0x80B67448 8FB00020 */ lw	$s0, 0X20($sp)
/* 000455 0x80B6744C 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000456 0x80B67450 03E00008 */ jr	$ra
/* 000457 0x80B67454 00000000 */ nop

