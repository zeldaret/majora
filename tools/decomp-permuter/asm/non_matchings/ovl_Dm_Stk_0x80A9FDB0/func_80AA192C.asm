glabel func_80AA192C
/* 001759 0x80AA192C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 001760 0x80AA1930 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001761 0x80AA1934 90AE1F2C */ lbu	$t6, 0X1F2C($a1)
/* 001762 0x80AA1938 240F0021 */ li	$t7, 0X21
/* 001763 0x80AA193C 24180003 */ li	$t8, 0X3
/* 001764 0x80AA1940 15C00011 */ bnez	$t6, .L80AA1988
/* 001765 0x80AA1944 24860144 */ addiu	$a2, $a0, 0X144
/* 001766 0x80AA1948 A48F02E0 */ sh	$t7, 0X2E0($a0)
/* 001767 0x80AA194C 849902E0 */ lh	$t9, 0X2E0($a0)
/* 001768 0x80AA1950 3C0980AA */ lui	$t1, %hi(D_80AA35F8)
/* 001769 0x80AA1954 A098032D */ sb	$t8, 0X32D($a0)
/* 001770 0x80AA1958 00194080 */ sll	$t0, $t9, 2
/* 001771 0x80AA195C 01194023 */ subu	$t0, $t0, $t9
/* 001772 0x80AA1960 000840C0 */ sll	$t0, $t0, 3
/* 001773 0x80AA1964 252935F8 */ addiu	$t1, $t1, %lo(D_80AA35F8)
/* 001774 0x80AA1968 01093821 */ addu	$a3, $t0, $t1
/* 001775 0x80AA196C AFA40020 */ sw	$a0, 0X20($sp)
/* 001776 0x80AA1970 0C2A7F8F */ jal	func_80A9FE3C
/* 001777 0x80AA1974 AFA00010 */ sw	$zero, 0X10($sp)
/* 001778 0x80AA1978 8FA40020 */ lw	$a0, 0X20($sp)
/* 001779 0x80AA197C 3C0A80AA */ lui	$t2, %hi(func_80AA2720)
/* 001780 0x80AA1980 254A2720 */ addiu	$t2, $t2, %lo(func_80AA2720)
/* 001781 0x80AA1984 AC8A0290 */ sw	$t2, 0X290($a0)
.L80AA1988:
/* 001782 0x80AA1988 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001783 0x80AA198C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 001784 0x80AA1990 03E00008 */ jr	$ra
/* 001785 0x80AA1994 00000000 */ nop

