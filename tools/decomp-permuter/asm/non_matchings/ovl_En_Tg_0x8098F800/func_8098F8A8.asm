glabel func_8098F8A8
/* 000042 0x8098F8A8 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000043 0x8098F8AC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000044 0x8098F8B0 AFA50024 */ sw	$a1, 0X24($sp)
/* 000045 0x8098F8B4 00803825 */ move	$a3, $a0
/* 000046 0x8098F8B8 C4E40024 */ lwc1	$f4, 0X24($a3)
/* 000047 0x8098F8BC C4E80028 */ lwc1	$f8, 0X28($a3)
/* 000048 0x8098F8C0 C4F0002C */ lwc1	$f16, 0X2C($a3)
/* 000049 0x8098F8C4 4600218D */ trunc.w.s	$f6, $f4
/* 000050 0x8098F8C8 3C010001 */ lui	$at, 0x0001
/* 000051 0x8098F8CC 34218884 */ ori	$at, $at, 0X8884
/* 000052 0x8098F8D0 4600428D */ trunc.w.s	$f10, $f8
/* 000053 0x8098F8D4 440F3000 */ mfc1	$t7, $f6
/* 000054 0x8098F8D8 24E6018C */ addiu	$a2, $a3, 0X18C
/* 000055 0x8098F8DC 4600848D */ trunc.w.s	$f18, $f16
/* 000056 0x8098F8E0 44195000 */ mfc1	$t9, $f10
/* 000057 0x8098F8E4 A4EF01D2 */ sh	$t7, 0X1D2($a3)
/* 000058 0x8098F8E8 44099000 */ mfc1	$t1, $f18
/* 000059 0x8098F8EC A4F901D4 */ sh	$t9, 0X1D4($a3)
/* 000060 0x8098F8F0 A4E901D6 */ sh	$t1, 0X1D6($a3)
/* 000061 0x8098F8F4 8FA40024 */ lw	$a0, 0X24($sp)
/* 000062 0x8098F8F8 AFA60018 */ sw	$a2, 0X18($sp)
/* 000063 0x8098F8FC 00812821 */ addu	$a1, $a0, $at
/* 000064 0x8098F900 0C0389D0 */ jal	Collision_AddAC
/* 000065 0x8098F904 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000066 0x8098F908 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000067 0x8098F90C 8FA60018 */ lw	$a2, 0X18($sp)
/* 000068 0x8098F910 0C038A4A */ jal	Collision_AddOT
/* 000069 0x8098F914 8FA40024 */ lw	$a0, 0X24($sp)
/* 000070 0x8098F918 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000071 0x8098F91C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000072 0x8098F920 03E00008 */ jr	$ra
/* 000073 0x8098F924 00000000 */ nop

