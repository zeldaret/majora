glabel func_80B7D47C
/* 000763 0x80B7D47C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000764 0x80B7D480 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000765 0x80B7D484 8482030E */ lh	$v0, 0X30E($a0)
/* 000766 0x80B7D488 24010001 */ li	$at, 0X1
/* 000767 0x80B7D48C 1440000F */ bnez	$v0, .L80B7D4CC
/* 000768 0x80B7D490 00000000 */ nop
/* 000769 0x80B7D494 44800000 */ mtc1	$zero, $f0
/* 000770 0x80B7D498 908E00B7 */ lbu	$t6, 0XB7($a0)
/* 000771 0x80B7D49C A480030E */ sh	$zero, 0X30E($a0)
/* 000772 0x80B7D4A0 E4800304 */ swc1	$f0, 0X304($a0)
/* 000773 0x80B7D4A4 11C00005 */ beqz	$t6, .L80B7D4BC
/* 000774 0x80B7D4A8 E4800300 */ swc1	$f0, 0X300($a0)
/* 000775 0x80B7D4AC 0C2DF53F */ jal	func_80B7D4FC
/* 000776 0x80B7D4B0 00000000 */ nop
/* 000777 0x80B7D4B4 1000000E */ b	.L80B7D4F0
/* 000778 0x80B7D4B8 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B7D4BC:
/* 000779 0x80B7D4BC 0C2DF5B4 */ jal	func_80B7D6D0
/* 000780 0x80B7D4C0 00000000 */ nop
/* 000781 0x80B7D4C4 1000000A */ b	.L80B7D4F0
/* 000782 0x80B7D4C8 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B7D4CC:
/* 000783 0x80B7D4CC 14410006 */ bne	$v0, $at, .L80B7D4E8
/* 000784 0x80B7D4D0 2458FFFF */ addiu	$t8, $v0, -0X1
/* 000785 0x80B7D4D4 244FFFFF */ addiu	$t7, $v0, -0X1
/* 000786 0x80B7D4D8 0C2DF82F */ jal	func_80B7E0BC
/* 000787 0x80B7D4DC A48F030E */ sh	$t7, 0X30E($a0)
/* 000788 0x80B7D4E0 10000003 */ b	.L80B7D4F0
/* 000789 0x80B7D4E4 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B7D4E8:
/* 000790 0x80B7D4E8 A498030E */ sh	$t8, 0X30E($a0)
/* 000791 0x80B7D4EC 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B7D4F0:
/* 000792 0x80B7D4F0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000793 0x80B7D4F4 03E00008 */ jr	$ra
/* 000794 0x80B7D4F8 00000000 */ nop

