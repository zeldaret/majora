glabel func_80AFF45C
/* 000751 0x80AFF45C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000752 0x80AFF460 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000753 0x80AFF464 00803825 */ move	$a3, $a0
/* 000754 0x80AFF468 3C0580B0 */ lui	$a1, %hi(D_80B01200)
/* 000755 0x80AFF46C 24A51200 */ addiu	$a1, $a1, %lo(D_80B01200)
/* 000756 0x80AFF470 24E40190 */ addiu	$a0, $a3, 0X190
/* 000757 0x80AFF474 2406000A */ li	$a2, 0XA
/* 000758 0x80AFF478 0C02F717 */ jal	func_800BDC5C
/* 000759 0x80AFF47C AFA70018 */ sw	$a3, 0X18($sp)
/* 000760 0x80AFF480 8FA70018 */ lw	$a3, 0X18($sp)
/* 000761 0x80AFF484 3C0180B0 */ lui	$at, %hi(D_80B0147C)
/* 000762 0x80AFF488 C424147C */ lwc1	$f4, %lo(D_80B0147C)($at)
/* 000763 0x80AFF48C 3C0E80B0 */ lui	$t6, %hi(func_80AFF4AC)
/* 000764 0x80AFF490 25CEF4AC */ addiu	$t6, $t6, %lo(func_80AFF4AC)
/* 000765 0x80AFF494 ACEE01D4 */ sw	$t6, 0X1D4($a3)
/* 000766 0x80AFF498 E4E40070 */ swc1	$f4, 0X70($a3)
/* 000767 0x80AFF49C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000768 0x80AFF4A0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000769 0x80AFF4A4 03E00008 */ jr	$ra
/* 000770 0x80AFF4A8 00000000 */ nop


.section .late_rodata

glabel D_80B0147C
/* 002807 0x80B0147C */ .word	0x3ECCCCCD
