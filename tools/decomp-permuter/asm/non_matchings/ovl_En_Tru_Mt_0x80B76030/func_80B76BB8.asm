glabel func_80B76BB8
/* 000738 0x80B76BB8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000739 0x80B76BBC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000740 0x80B76BC0 AFA40018 */ sw	$a0, 0X18($sp)
/* 000741 0x80B76BC4 24A44908 */ addiu	$a0, $a1, 0X4908
/* 000742 0x80B76BC8 0C054926 */ jal	func_80152498
/* 000743 0x80B76BCC AFA5001C */ sw	$a1, 0X1C($sp)
/* 000744 0x80B76BD0 24010005 */ li	$at, 0X5
/* 000745 0x80B76BD4 14410014 */ bne	$v0, $at, .L80B76C28
/* 000746 0x80B76BD8 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000747 0x80B76BDC 00A02025 */ move	$a0, $a1
/* 000748 0x80B76BE0 0C051D89 */ jal	func_80147624
/* 000749 0x80B76BE4 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000750 0x80B76BE8 1040000F */ beqz	$v0, .L80B76C28
/* 000751 0x80B76BEC 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000752 0x80B76BF0 3C010002 */ lui	$at, 0x0002
/* 000753 0x80B76BF4 00250821 */ addu	$at, $at, $a1
/* 000754 0x80B76BF8 340EA810 */ ori	$t6, $zero, 0XA810
/* 000755 0x80B76BFC A42E887A */ sh	$t6, -0X7786($at)
/* 000756 0x80B76C00 3C010002 */ lui	$at, 0x0002
/* 000757 0x80B76C04 24020003 */ li	$v0, 0X3
/* 000758 0x80B76C08 00250821 */ addu	$at, $at, $a1
/* 000759 0x80B76C0C A022887F */ sb	$v0, -0X7781($at)
/* 000760 0x80B76C10 3C01801F */ lui	$at, %hi(gSaveContext + 0x3F55)
/* 000761 0x80B76C14 A02235C5 */ sb	$v0, %lo(gSaveContext + 0x3F55)($at)
/* 000762 0x80B76C18 3C010002 */ lui	$at, 0x0002
/* 000763 0x80B76C1C 00250821 */ addu	$at, $at, $a1
/* 000764 0x80B76C20 240F0014 */ li	$t7, 0X14
/* 000765 0x80B76C24 A02F8875 */ sb	$t7, -0X778B($at)
.L80B76C28:
/* 000766 0x80B76C28 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000767 0x80B76C2C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000768 0x80B76C30 03E00008 */ jr	$ra
/* 000769 0x80B76C34 00000000 */ nop

