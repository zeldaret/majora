glabel func_80B8B90C
/* 000399 0x80B8B90C 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000400 0x80B8B910 AFB00020 */ sw	$s0, 0X20($sp)
/* 000401 0x80B8B914 00808025 */ move	$s0, $a0
/* 000402 0x80B8B918 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000403 0x80B8B91C 8E0202F0 */ lw	$v0, 0X2F0($s0)
/* 000404 0x80B8B920 54400004 */ bnezl	$v0, .L80B8B934
/* 000405 0x80B8B924 8C440004 */ lw	$a0, 0X4($v0)
/* 000406 0x80B8B928 10000040 */ b	.L80B8BA2C
/* 000407 0x80B8B92C 24020001 */ li	$v0, 0X1
/* 000408 0x80B8B930 8C440004 */ lw	$a0, 0X4($v0)
.L80B8B934:
/* 000409 0x80B8B934 0C040141 */ jal	Lib_PtrSegToVirt
/* 000410 0x80B8B938 AFA20034 */ sw	$v0, 0X34($sp)
/* 000411 0x80B8B93C 8E0E02F4 */ lw	$t6, 0X2F4($s0)
/* 000412 0x80B8B940 C6080024 */ lwc1	$f8, 0X24($s0)
/* 000413 0x80B8B944 C612002C */ lwc1	$f18, 0X2C($s0)
/* 000414 0x80B8B948 000E7880 */ sll	$t7, $t6, 2
/* 000415 0x80B8B94C 01EE7823 */ subu	$t7, $t7, $t6
/* 000416 0x80B8B950 000F7840 */ sll	$t7, $t7, 1
/* 000417 0x80B8B954 004F1821 */ addu	$v1, $v0, $t7
/* 000418 0x80B8B958 84780000 */ lh	$t8, 0X0($v1)
/* 000419 0x80B8B95C 84790004 */ lh	$t9, 0X4($v1)
/* 000420 0x80B8B960 44982000 */ mtc1	$t8, $f4
/* 000421 0x80B8B964 44995000 */ mtc1	$t9, $f10
/* 000422 0x80B8B968 468021A0 */ cvt.s.w	$f6, $f4
/* 000423 0x80B8B96C 46805420 */ cvt.s.w	$f16, $f10
/* 000424 0x80B8B970 46083301 */ sub.s	$f12, $f6, $f8
/* 000425 0x80B8B974 46128381 */ sub.s	$f14, $f16, $f18
/* 000426 0x80B8B978 E7AC002C */ swc1	$f12, 0X2C($sp)
/* 000427 0x80B8B97C 0C05FFB9 */ jal	atans
/* 000428 0x80B8B980 E7AE0028 */ swc1	$f14, 0X28($sp)
/* 000429 0x80B8B984 A6020032 */ sh	$v0, 0X32($s0)
/* 000430 0x80B8B988 86050032 */ lh	$a1, 0X32($s0)
/* 000431 0x80B8B98C 240800C8 */ li	$t0, 0XC8
/* 000432 0x80B8B990 AFA80010 */ sw	$t0, 0X10($sp)
/* 000433 0x80B8B994 260400BE */ addiu	$a0, $s0, 0XBE
/* 000434 0x80B8B998 24060002 */ li	$a2, 0X2
/* 000435 0x80B8B99C 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000436 0x80B8B9A0 240707D0 */ li	$a3, 0X7D0
/* 000437 0x80B8B9A4 C7AC002C */ lwc1	$f12, 0X2C($sp)
/* 000438 0x80B8B9A8 C7AE0028 */ lwc1	$f14, 0X28($sp)
/* 000439 0x80B8B9AC 3C0142C8 */ lui	$at, 0x42C8
/* 000440 0x80B8B9B0 460C6102 */ mul.s	$f4, $f12, $f12
/* 000441 0x80B8B9B4 44815000 */ mtc1	$at, $f10
/* 000442 0x80B8B9B8 00001025 */ move	$v0, $zero
/* 000443 0x80B8B9BC 460E7182 */ mul.s	$f6, $f14, $f14
/* 000444 0x80B8B9C0 46062200 */ add.s	$f8, $f4, $f6
/* 000445 0x80B8B9C4 460A403C */ c.lt.s	$f8, $f10
/* 000446 0x80B8B9C8 00000000 */ nop
/* 000447 0x80B8B9CC 45000017 */ bc1f .L80B8BA2C
/* 000448 0x80B8B9D0 00000000 */ nop
/* 000449 0x80B8B9D4 960902F8 */ lhu	$t1, 0X2F8($s0)
/* 000450 0x80B8B9D8 312A0001 */ andi	$t2, $t1, 0X1
/* 000451 0x80B8B9DC 51400008 */ beqzl	$t2, .L80B8BA00
/* 000452 0x80B8B9E0 8E0E02F4 */ lw	$t6, 0X2F4($s0)
/* 000453 0x80B8B9E4 8E0B02F4 */ lw	$t3, 0X2F4($s0)
/* 000454 0x80B8B9E8 256CFFFF */ addiu	$t4, $t3, -0X1
/* 000455 0x80B8B9EC 0581000D */ bgez	$t4, .L80B8BA24
/* 000456 0x80B8B9F0 AE0C02F4 */ sw	$t4, 0X2F4($s0)
/* 000457 0x80B8B9F4 1000000D */ b	.L80B8BA2C
/* 000458 0x80B8B9F8 24020002 */ li	$v0, 0X2
/* 000459 0x80B8B9FC 8E0E02F4 */ lw	$t6, 0X2F4($s0)
.L80B8BA00:
/* 000460 0x80B8BA00 25CF0001 */ addiu	$t7, $t6, 0X1
/* 000461 0x80B8BA04 AE0F02F4 */ sw	$t7, 0X2F4($s0)
/* 000462 0x80B8BA08 8FB90034 */ lw	$t9, 0X34($sp)
/* 000463 0x80B8BA0C 93280000 */ lbu	$t0, 0X0($t9)
/* 000464 0x80B8BA10 01E8082A */ slt	$at, $t7, $t0
/* 000465 0x80B8BA14 14200003 */ bnez	$at, .L80B8BA24
/* 000466 0x80B8BA18 00000000 */ nop
/* 000467 0x80B8BA1C 10000003 */ b	.L80B8BA2C
/* 000468 0x80B8BA20 24020002 */ li	$v0, 0X2
.L80B8BA24:
/* 000469 0x80B8BA24 10000001 */ b	.L80B8BA2C
/* 000470 0x80B8BA28 24020001 */ li	$v0, 0X1
.L80B8BA2C:
/* 000471 0x80B8BA2C 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000472 0x80B8BA30 8FB00020 */ lw	$s0, 0X20($sp)
/* 000473 0x80B8BA34 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000474 0x80B8BA38 03E00008 */ jr	$ra
/* 000475 0x80B8BA3C 00000000 */ nop

