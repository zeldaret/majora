glabel Math_Rand_S16OffsetStride
/* 091769 0x800FF4A4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 091770 0x800FF4A8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 091771 0x800FF4AC AFA40018 */ sw	$a0, 0X18($sp)
/* 091772 0x800FF4B0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 091773 0x800FF4B4 AFA60020 */ sw	$a2, 0X20($sp)
/* 091774 0x800FF4B8 0C021BF7 */ jal	randZeroOne
/* 091775 0x800FF4BC 00000000 */ nop
/* 091776 0x800FF4C0 87AE0022 */ lh	$t6, 0X22($sp)
/* 091777 0x800FF4C4 87A9001E */ lh	$t1, 0X1E($sp)
/* 091778 0x800FF4C8 87AB001A */ lh	$t3, 0X1A($sp)
/* 091779 0x800FF4CC 448E2000 */ mtc1	$t6, $f4
/* 091780 0x800FF4D0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 091781 0x800FF4D4 468021A0 */ cvt.s.w	$f6, $f4
/* 091782 0x800FF4D8 46060202 */ mul.s	$f8, $f0, $f6
/* 091783 0x800FF4DC 4600428D */ trunc.w.s	$f10, $f8
/* 091784 0x800FF4E0 44185000 */ mfc1	$t8, $f10
/* 091785 0x800FF4E4 00000000 */ nop
/* 091786 0x800FF4E8 0018CC00 */ sll	$t9, $t8, 16
/* 091787 0x800FF4EC 00194403 */ sra	$t0, $t9, 16
/* 091788 0x800FF4F0 01090019 */ multu	$t0, $t1
/* 091789 0x800FF4F4 00005012 */ mflo	$t2
/* 091790 0x800FF4F8 014B1021 */ addu	$v0, $t2, $t3
/* 091791 0x800FF4FC 00021400 */ sll	$v0, $v0, 16
/* 091792 0x800FF500 00021403 */ sra	$v0, $v0, 16
/* 091793 0x800FF504 03E00008 */ jr	$ra
/* 091794 0x800FF508 27BD0018 */ addiu	$sp, $sp, 0X18

