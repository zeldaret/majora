glabel func_809FB504
/* 006881 0x809FB504 AFA40000 */ sw	$a0, 0X0($sp)
/* 006882 0x809FB508 AFA60008 */ sw	$a2, 0X8($sp)
/* 006883 0x809FB50C AFA7000C */ sw	$a3, 0XC($sp)
/* 006884 0x809FB510 2401001A */ li	$at, 0X1A
/* 006885 0x809FB514 14A1000E */ bne	$a1, $at, .L809FB550
/* 006886 0x809FB518 8FA20014 */ lw	$v0, 0X14($sp)
/* 006887 0x809FB51C 8FA30010 */ lw	$v1, 0X10($sp)
/* 006888 0x809FB520 844F17DA */ lh	$t7, 0X17DA($v0)
/* 006889 0x809FB524 846E0000 */ lh	$t6, 0X0($v1)
/* 006890 0x809FB528 84790002 */ lh	$t9, 0X2($v1)
/* 006891 0x809FB52C 846A0004 */ lh	$t2, 0X4($v1)
/* 006892 0x809FB530 01CFC021 */ addu	$t8, $t6, $t7
/* 006893 0x809FB534 A4780000 */ sh	$t8, 0X0($v1)
/* 006894 0x809FB538 844817D8 */ lh	$t0, 0X17D8($v0)
/* 006895 0x809FB53C 03284821 */ addu	$t1, $t9, $t0
/* 006896 0x809FB540 A4690002 */ sh	$t1, 0X2($v1)
/* 006897 0x809FB544 844B17DC */ lh	$t3, 0X17DC($v0)
/* 006898 0x809FB548 014B6021 */ addu	$t4, $t2, $t3
/* 006899 0x809FB54C A46C0004 */ sh	$t4, 0X4($v1)
.L809FB550:
/* 006900 0x809FB550 00001025 */ move	$v0, $zero
/* 006901 0x809FB554 03E00008 */ jr	$ra
/* 006902 0x809FB558 00000000 */ nop

