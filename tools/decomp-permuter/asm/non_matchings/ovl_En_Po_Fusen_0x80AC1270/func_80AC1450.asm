glabel func_80AC1450
/* 000120 0x80AC1450 848E001C */ lh	$t6, 0X1C($a0)
/* 000121 0x80AC1454 8CA31CE4 */ lw	$v1, 0X1CE4($a1)
/* 000122 0x80AC1458 31CF8000 */ andi	$t7, $t6, 0X8000
/* 000123 0x80AC145C 11E00003 */ beqz	$t7, .L80AC146C
/* 000124 0x80AC1460 00000000 */ nop
/* 000125 0x80AC1464 03E00008 */ jr	$ra
/* 000126 0x80AC1468 24020001 */ li	$v0, 0X1
.L80AC146C:
/* 000127 0x80AC146C 1060000A */ beqz	$v1, .L80AC1498
/* 000128 0x80AC1470 240201A4 */ li	$v0, 0X1A4
/* 000129 0x80AC1474 84780000 */ lh	$t8, 0X0($v1)
.L80AC1478:
/* 000130 0x80AC1478 54580005 */ bnel	$v0, $t8, .L80AC1490
/* 000131 0x80AC147C 8C63012C */ lw	$v1, 0X12C($v1)
/* 000132 0x80AC1480 AC830120 */ sw	$v1, 0X120($a0)
/* 000133 0x80AC1484 03E00008 */ jr	$ra
/* 000134 0x80AC1488 24020001 */ li	$v0, 0X1
/* 000135 0x80AC148C 8C63012C */ lw	$v1, 0X12C($v1)
.L80AC1490:
/* 000136 0x80AC1490 5460FFF9 */ bnezl	$v1, .L80AC1478
/* 000137 0x80AC1494 84780000 */ lh	$t8, 0X0($v1)
.L80AC1498:
/* 000138 0x80AC1498 00001025 */ move	$v0, $zero
/* 000139 0x80AC149C 03E00008 */ jr	$ra
/* 000140 0x80AC14A0 00000000 */ nop

