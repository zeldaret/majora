glabel func_80B27B54
/* 001581 0x80B27B54 AFA40000 */ sw	$a0, 0X0($sp)
/* 001582 0x80B27B58 AFA60008 */ sw	$a2, 0X8($sp)
/* 001583 0x80B27B5C AFA7000C */ sw	$a3, 0XC($sp)
/* 001584 0x80B27B60 2401000C */ li	$at, 0XC
/* 001585 0x80B27B64 14A10006 */ bne	$a1, $at, .L80B27B80
/* 001586 0x80B27B68 8FA20010 */ lw	$v0, 0X10($sp)
/* 001587 0x80B27B6C 8FAF0014 */ lw	$t7, 0X14($sp)
/* 001588 0x80B27B70 844E0002 */ lh	$t6, 0X2($v0)
/* 001589 0x80B27B74 85F8027A */ lh	$t8, 0X27A($t7)
/* 001590 0x80B27B78 01D8C823 */ subu	$t9, $t6, $t8
/* 001591 0x80B27B7C A4590002 */ sh	$t9, 0X2($v0)
.L80B27B80:
/* 001592 0x80B27B80 00001025 */ move	$v0, $zero
/* 001593 0x80B27B84 03E00008 */ jr	$ra
/* 001594 0x80B27B88 00000000 */ nop

