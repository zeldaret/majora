glabel func_80993E94
/* 003809 0x80993E94 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 003810 0x80993E98 AFBF0014 */ sw	$ra, 0X14($sp)
/* 003811 0x80993E9C AFA40030 */ sw	$a0, 0X30($sp)
/* 003812 0x80993EA0 AFA50034 */ sw	$a1, 0X34($sp)
/* 003813 0x80993EA4 AFA60038 */ sw	$a2, 0X38($sp)
/* 003814 0x80993EA8 AFA7003C */ sw	$a3, 0X3C($sp)
/* 003815 0x80993EAC 8FA50040 */ lw	$a1, 0X40($sp)
/* 003816 0x80993EB0 8FA40034 */ lw	$a0, 0X34($sp)
/* 003817 0x80993EB4 0C039FF7 */ jal	func_800E7FDC
/* 003818 0x80993EB8 24A50330 */ addiu	$a1, $a1, 0X330
/* 003819 0x80993EBC 8FAE0034 */ lw	$t6, 0X34($sp)
/* 003820 0x80993EC0 3C0F8099 */ lui	$t7, %hi(D_809942FC)
/* 003821 0x80993EC4 25EF42FC */ addiu	$t7, $t7, %lo(D_809942FC)
/* 003822 0x80993EC8 01CF1021 */ addu	$v0, $t6, $t7
/* 003823 0x80993ECC 80430000 */ lb	$v1, 0X0($v0)
/* 003824 0x80993ED0 2401FFFF */ li	$at, -0X1
/* 003825 0x80993ED4 8FB80040 */ lw	$t8, 0X40($sp)
/* 003826 0x80993ED8 10610008 */ beq	$v1, $at, .L80993EFC
/* 003827 0x80993EDC 0003C880 */ sll	$t9, $v1, 2
/* 003828 0x80993EE0 0323C823 */ subu	$t9, $t9, $v1
/* 003829 0x80993EE4 0019C880 */ sll	$t9, $t9, 2
/* 003830 0x80993EE8 03192021 */ addu	$a0, $t8, $t9
/* 003831 0x80993EEC 248402B8 */ addiu	$a0, $a0, 0X2B8
/* 003832 0x80993EF0 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 003833 0x80993EF4 AFA2001C */ sw	$v0, 0X1C($sp)
/* 003834 0x80993EF8 8FA2001C */ lw	$v0, 0X1C($sp)
.L80993EFC:
/* 003835 0x80993EFC 3C088099 */ lui	$t0, %hi(D_80994302)
/* 003836 0x80993F00 25084302 */ addiu	$t0, $t0, %lo(D_80994302)
/* 003837 0x80993F04 14480014 */ bne	$v0, $t0, .L80993F58
/* 003838 0x80993F08 3C014496 */ lui	$at, 0x4496
/* 003839 0x80993F0C 44816000 */ mtc1	$at, $f12
/* 003840 0x80993F10 0C0606DE */ jal	SysMatrix_GetStateTranslationAndScaledX
/* 003841 0x80993F14 27A50020 */ addiu	$a1, $sp, 0X20
/* 003842 0x80993F18 C7A40020 */ lwc1	$f4, 0X20($sp)
/* 003843 0x80993F1C 8FA20040 */ lw	$v0, 0X40($sp)
/* 003844 0x80993F20 4600218D */ trunc.w.s	$f6, $f4
/* 003845 0x80993F24 440A3000 */ mfc1	$t2, $f6
/* 003846 0x80993F28 00000000 */ nop
/* 003847 0x80993F2C A44A04E2 */ sh	$t2, 0X4E2($v0)
/* 003848 0x80993F30 C7A80024 */ lwc1	$f8, 0X24($sp)
/* 003849 0x80993F34 4600428D */ trunc.w.s	$f10, $f8
/* 003850 0x80993F38 440C5000 */ mfc1	$t4, $f10
/* 003851 0x80993F3C 00000000 */ nop
/* 003852 0x80993F40 A44C04E4 */ sh	$t4, 0X4E4($v0)
/* 003853 0x80993F44 C7B00028 */ lwc1	$f16, 0X28($sp)
/* 003854 0x80993F48 4600848D */ trunc.w.s	$f18, $f16
/* 003855 0x80993F4C 440E9000 */ mfc1	$t6, $f18
/* 003856 0x80993F50 00000000 */ nop
/* 003857 0x80993F54 A44E04E6 */ sh	$t6, 0X4E6($v0)
.L80993F58:
/* 003858 0x80993F58 8FBF0014 */ lw	$ra, 0X14($sp)
/* 003859 0x80993F5C 27BD0030 */ addiu	$sp, $sp, 0X30
/* 003860 0x80993F60 03E00008 */ jr	$ra
/* 003861 0x80993F64 00000000 */ nop

