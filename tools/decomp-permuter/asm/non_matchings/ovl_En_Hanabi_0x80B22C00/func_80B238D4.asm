glabel func_80B238D4
/* 000821 0x80B238D4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000822 0x80B238D8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000823 0x80B238DC 0C2C8DB2 */ jal	func_80B236C8
/* 000824 0x80B238E0 AFA40018 */ sw	$a0, 0X18($sp)
/* 000825 0x80B238E4 8FA40018 */ lw	$a0, 0X18($sp)
/* 000826 0x80B238E8 3C0F80B2 */ lui	$t7, %hi(func_80B23894)
/* 000827 0x80B238EC 25EF3894 */ addiu	$t7, $t7, %lo(func_80B23894)
/* 000828 0x80B238F0 848E0014 */ lh	$t6, 0X14($a0)
/* 000829 0x80B238F4 55C00003 */ bnezl	$t6, .L80B23904
/* 000830 0x80B238F8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000831 0x80B238FC AC8F4654 */ sw	$t7, 0X4654($a0)
/* 000832 0x80B23900 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B23904:
/* 000833 0x80B23904 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000834 0x80B23908 03E00008 */ jr	$ra
/* 000835 0x80B2390C 00000000 */ nop

