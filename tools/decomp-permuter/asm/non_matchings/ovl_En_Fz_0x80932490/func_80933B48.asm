glabel func_80933B48
/* 001454 0x80933B48 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 001455 0x80933B4C AFB00020 */ sw	$s0, 0X20($sp)
/* 001456 0x80933B50 00808025 */ move	$s0, $a0
/* 001457 0x80933B54 AFBF0024 */ sw	$ra, 0X24($sp)
/* 001458 0x80933B58 AFA5002C */ sw	$a1, 0X2C($sp)
/* 001459 0x80933B5C 86020BA4 */ lh	$v0, 0XBA4($s0)
/* 001460 0x80933B60 50400022 */ beqzl	$v0, .L80933BEC
/* 001461 0x80933B64 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001462 0x80933B68 18400003 */ blez	$v0, .L80933B78
/* 001463 0x80933B6C 244EFFFF */ addiu	$t6, $v0, -0X1
/* 001464 0x80933B70 A60E0BA4 */ sh	$t6, 0XBA4($s0)
/* 001465 0x80933B74 86020BA4 */ lh	$v0, 0XBA4($s0)
.L80933B78:
/* 001466 0x80933B78 28410014 */ slti	$at, $v0, 0X14
/* 001467 0x80933B7C 10200012 */ beqz	$at, .L80933BC8
/* 001468 0x80933B80 26040BA0 */ addiu	$a0, $s0, 0XBA0
/* 001469 0x80933B84 44800000 */ mtc1	$zero, $f0
/* 001470 0x80933B88 3C073CF5 */ lui	$a3, 0x3CF5
/* 001471 0x80933B8C 34E7C28F */ ori	$a3, $a3, 0XC28F
/* 001472 0x80933B90 44050000 */ mfc1	$a1, $f0
/* 001473 0x80933B94 26040BA0 */ addiu	$a0, $s0, 0XBA0
/* 001474 0x80933B98 3C063F00 */ lui	$a2, 0x3F00
/* 001475 0x80933B9C 0C03FF36 */ jal	Math_SmoothScaleMaxMinF
/* 001476 0x80933BA0 E7A00010 */ swc1	$f0, 0X10($sp)
/* 001477 0x80933BA4 860F0BA4 */ lh	$t7, 0XBA4($s0)
/* 001478 0x80933BA8 3C018093 */ lui	$at, %hi(D_809347F8)
/* 001479 0x80933BAC C42847F8 */ lwc1	$f8, %lo(D_809347F8)($at)
/* 001480 0x80933BB0 448F2000 */ mtc1	$t7, $f4
/* 001481 0x80933BB4 00000000 */ nop
/* 001482 0x80933BB8 468021A0 */ cvt.s.w	$f6, $f4
/* 001483 0x80933BBC 46083282 */ mul.s	$f10, $f6, $f8
/* 001484 0x80933BC0 10000009 */ b	.L80933BE8
/* 001485 0x80933BC4 E60A0B9C */ swc1	$f10, 0XB9C($s0)
.L80933BC8:
/* 001486 0x80933BC8 44800000 */ mtc1	$zero, $f0
/* 001487 0x80933BCC 3C063DCC */ lui	$a2, 0x3DCC
/* 001488 0x80933BD0 3C073CA3 */ lui	$a3, 0x3CA3
/* 001489 0x80933BD4 34E7D70A */ ori	$a3, $a3, 0XD70A
/* 001490 0x80933BD8 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 001491 0x80933BDC 3C053F00 */ lui	$a1, 0x3F00
/* 001492 0x80933BE0 0C03FF36 */ jal	Math_SmoothScaleMaxMinF
/* 001493 0x80933BE4 E7A00010 */ swc1	$f0, 0X10($sp)
.L80933BE8:
/* 001494 0x80933BE8 8FBF0024 */ lw	$ra, 0X24($sp)
.L80933BEC:
/* 001495 0x80933BEC 8FB00020 */ lw	$s0, 0X20($sp)
/* 001496 0x80933BF0 27BD0028 */ addiu	$sp, $sp, 0X28
/* 001497 0x80933BF4 03E00008 */ jr	$ra
/* 001498 0x80933BF8 00000000 */ nop


.section .late_rodata

glabel D_809347F8
/* 002266 0x809347F8 */ .word	0x3D4CCCCD
