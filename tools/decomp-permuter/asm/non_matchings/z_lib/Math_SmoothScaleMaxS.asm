glabel Math_SmoothScaleMaxS
/* 092486 0x800FFFD8 AFA50004 */ sw	$a1, 0X4($sp)
/* 092487 0x800FFFDC AFA60008 */ sw	$a2, 0X8($sp)
/* 092488 0x800FFFE0 AFA7000C */ sw	$a3, 0XC($sp)
/* 092489 0x800FFFE4 00073C00 */ sll	$a3, $a3, 16
/* 092490 0x800FFFE8 00063400 */ sll	$a2, $a2, 16
/* 092491 0x800FFFEC 00052C00 */ sll	$a1, $a1, 16
/* 092492 0x800FFFF0 00052C03 */ sra	$a1, $a1, 16
/* 092493 0x800FFFF4 00063403 */ sra	$a2, $a2, 16
/* 092494 0x800FFFF8 00073C03 */ sra	$a3, $a3, 16
/* 092495 0x800FFFFC 84830000 */ lh	$v1, 0X0($a0)
/* 092496 0x80100000 00077823 */ negu	$t7, $a3
/* 092497 0x80100004 00A31023 */ subu	$v0, $a1, $v1
/* 092498 0x80100008 00021400 */ sll	$v0, $v0, 16
/* 092499 0x8010000C 00021403 */ sra	$v0, $v0, 16
/* 092500 0x80100010 0046001A */ div	$zero, $v0, $a2
/* 092501 0x80100014 14C00002 */ bnez	$a2, .L80100020
/* 092502 0x80100018 00000000 */ nop
/* 092503 0x8010001C 0007000D */ break	0x00007
.L80100020:
/* 092504 0x80100020 2401FFFF */ li	$at, -0X1
/* 092505 0x80100024 14C10004 */ bne	$a2, $at, .L80100038
/* 092506 0x80100028 3C018000 */ lui	$at, 0x8000
/* 092507 0x8010002C 14410002 */ bne	$v0, $at, .L80100038
/* 092508 0x80100030 00000000 */ nop
/* 092509 0x80100034 0006000D */ break	0x00006
.L80100038:
/* 092510 0x80100038 00001012 */ mflo	$v0
/* 092511 0x8010003C 00021400 */ sll	$v0, $v0, 16
/* 092512 0x80100040 00021403 */ sra	$v0, $v0, 16
/* 092513 0x80100044 00E2082A */ slt	$at, $a3, $v0
/* 092514 0x80100048 10200003 */ beqz	$at, .L80100058
/* 092515 0x8010004C 00677021 */ addu	$t6, $v1, $a3
/* 092516 0x80100050 03E00008 */ jr	$ra
/* 092517 0x80100054 A48E0000 */ sh	$t6, 0X0($a0)
.L80100058:
/* 092518 0x80100058 004F082A */ slt	$at, $v0, $t7
/* 092519 0x8010005C 10200004 */ beqz	$at, .L80100070
/* 092520 0x80100060 0062C821 */ addu	$t9, $v1, $v0
/* 092521 0x80100064 0067C023 */ subu	$t8, $v1, $a3
/* 092522 0x80100068 03E00008 */ jr	$ra
/* 092523 0x8010006C A4980000 */ sh	$t8, 0X0($a0)
.L80100070:
/* 092524 0x80100070 A4990000 */ sh	$t9, 0X0($a0)
/* 092525 0x80100074 03E00008 */ jr	$ra
/* 092526 0x80100078 00000000 */ nop

