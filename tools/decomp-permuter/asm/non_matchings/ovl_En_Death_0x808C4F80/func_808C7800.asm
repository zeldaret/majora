glabel func_808C7800
/* 002592 0x808C7800 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002593 0x808C7804 AFBF0014 */ sw	$ra, 0X14($sp)
/* 002594 0x808C7808 00803025 */ move	$a2, $a0
/* 002595 0x808C780C 00001825 */ move	$v1, $zero
/* 002596 0x808C7810 00C01025 */ move	$v0, $a2
/* 002597 0x808C7814 24040038 */ li	$a0, 0X38
.L808C7818:
/* 002598 0x808C7818 24630004 */ addiu	$v1, $v1, 0X4
/* 002599 0x808C781C A04001AA */ sb	$zero, 0X1AA($v0)
/* 002600 0x808C7820 A04001AB */ sb	$zero, 0X1AB($v0)
/* 002601 0x808C7824 A04001AC */ sb	$zero, 0X1AC($v0)
/* 002602 0x808C7828 24420004 */ addiu	$v0, $v0, 0X4
/* 002603 0x808C782C 1464FFFA */ bne	$v1, $a0, .L808C7818
/* 002604 0x808C7830 A04001A5 */ sb	$zero, 0X1A5($v0)
/* 002605 0x808C7834 24C40024 */ addiu	$a0, $a2, 0X24
/* 002606 0x808C7838 24C5003C */ addiu	$a1, $a2, 0X3C
/* 002607 0x808C783C 0C03FD43 */ jal	Math_Vec3f_Copy
/* 002608 0x808C7840 AFA60018 */ sw	$a2, 0X18($sp)
/* 002609 0x808C7844 8FA60018 */ lw	$a2, 0X18($sp)
/* 002610 0x808C7848 3C01BF80 */ lui	$at, 0xBF80
/* 002611 0x808C784C 44812000 */ mtc1	$at, $f4
/* 002612 0x808C7850 94CE0090 */ lhu	$t6, 0X90($a2)
/* 002613 0x808C7854 44803000 */ mtc1	$zero, $f6
/* 002614 0x808C7858 3C18808C */ lui	$t8, %hi(func_808C7888)
/* 002615 0x808C785C 27187888 */ addiu	$t8, $t8, %lo(func_808C7888)
/* 002616 0x808C7860 31CFFFFE */ andi	$t7, $t6, 0XFFFE
/* 002617 0x808C7864 A4CF0090 */ sh	$t7, 0X90($a2)
/* 002618 0x808C7868 A4C002EE */ sh	$zero, 0X2EE($a2)
/* 002619 0x808C786C ACD80188 */ sw	$t8, 0X188($a2)
/* 002620 0x808C7870 E4C40074 */ swc1	$f4, 0X74($a2)
/* 002621 0x808C7874 E4C600C4 */ swc1	$f6, 0XC4($a2)
/* 002622 0x808C7878 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002623 0x808C787C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002624 0x808C7880 03E00008 */ jr	$ra
/* 002625 0x808C7884 00000000 */ nop

