glabel func_80C1CD80
/* 000604 0x80C1CD80 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000605 0x80C1CD84 AFA70044 */ sw	$a3, 0X44($sp)
/* 000606 0x80C1CD88 8FA70048 */ lw	$a3, 0X48($sp)
/* 000607 0x80C1CD8C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000608 0x80C1CD90 AFA40038 */ sw	$a0, 0X38($sp)
/* 000609 0x80C1CD94 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000610 0x80C1CD98 AFA60040 */ sw	$a2, 0X40($sp)
/* 000611 0x80C1CD9C 80EE001E */ lb	$t6, 0X1E($a3)
/* 000612 0x80C1CDA0 8FB8003C */ lw	$t8, 0X3C($sp)
/* 000613 0x80C1CDA4 24010005 */ li	$at, 0X5
/* 000614 0x80C1CDA8 A3AE002B */ sb	$t6, 0X2B($sp)
/* 000615 0x80C1CDAC 80EF02AD */ lb	$t7, 0X2AD($a3)
/* 000616 0x80C1CDB0 17010043 */ bne	$t8, $at, .L80C1CEC0
/* 000617 0x80C1CDB4 A3AF002A */ sb	$t7, 0X2A($sp)
/* 000618 0x80C1CDB8 8CF902D4 */ lw	$t9, 0X2D4($a3)
/* 000619 0x80C1CDBC 8FA80038 */ lw	$t0, 0X38($sp)
/* 000620 0x80C1CDC0 53200040 */ beqzl	$t9, .L80C1CEC4
/* 000621 0x80C1CDC4 8FA9003C */ lw	$t1, 0X3C($sp)
/* 000622 0x80C1CDC8 8D060000 */ lw	$a2, 0X0($t0)
/* 000623 0x80C1CDCC 0C060067 */ jal	SysMatrix_StatePush
/* 000624 0x80C1CDD0 AFA60024 */ sw	$a2, 0X24($sp)
/* 000625 0x80C1CDD4 3C0480C2 */ lui	$a0, %hi(D_80C1D2C8)
/* 000626 0x80C1CDD8 3C0580C2 */ lui	$a1, %hi(D_80C1D2D4)
/* 000627 0x80C1CDDC 24A5D2D4 */ addiu	$a1, $a1, %lo(D_80C1D2D4)
/* 000628 0x80C1CDE0 0C0604BF */ jal	SysMatrix_RotateAndTranslateState
/* 000629 0x80C1CDE4 2484D2C8 */ addiu	$a0, $a0, %lo(D_80C1D2C8)
/* 000630 0x80C1CDE8 8FA60024 */ lw	$a2, 0X24($sp)
/* 000631 0x80C1CDEC 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 000632 0x80C1CDF0 3C0ADA38 */ lui	$t2, 0xDA38
/* 000633 0x80C1CDF4 354A0003 */ ori	$t2, $t2, 0X3
/* 000634 0x80C1CDF8 24490008 */ addiu	$t1, $v0, 0X8
/* 000635 0x80C1CDFC ACC902B0 */ sw	$t1, 0X2B0($a2)
/* 000636 0x80C1CE00 AC4A0000 */ sw	$t2, 0X0($v0)
/* 000637 0x80C1CE04 8FAB0038 */ lw	$t3, 0X38($sp)
/* 000638 0x80C1CE08 8D640000 */ lw	$a0, 0X0($t3)
/* 000639 0x80C1CE0C AFA60024 */ sw	$a2, 0X24($sp)
/* 000640 0x80C1CE10 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000641 0x80C1CE14 AFA2001C */ sw	$v0, 0X1C($sp)
/* 000642 0x80C1CE18 8FA3001C */ lw	$v1, 0X1C($sp)
/* 000643 0x80C1CE1C 8FA60024 */ lw	$a2, 0X24($sp)
/* 000644 0x80C1CE20 3C04DB06 */ lui	$a0, 0xDB06
/* 000645 0x80C1CE24 AC620004 */ sw	$v0, 0X4($v1)
/* 000646 0x80C1CE28 34840018 */ ori	$a0, $a0, 0X18
/* 000647 0x80C1CE2C 24050044 */ li	$a1, 0X44
/* 000648 0x80C1CE30 3C070001 */ lui	$a3, 0x0001
/* 000649 0x80C1CE34 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 000650 0x80C1CE38 3C0ADE00 */ lui	$t2, 0xDE00
/* 000651 0x80C1CE3C 244C0008 */ addiu	$t4, $v0, 0X8
/* 000652 0x80C1CE40 ACCC02B0 */ sw	$t4, 0X2B0($a2)
/* 000653 0x80C1CE44 AC440000 */ sw	$a0, 0X0($v0)
/* 000654 0x80C1CE48 83AE002A */ lb	$t6, 0X2A($sp)
/* 000655 0x80C1CE4C 8FAD0038 */ lw	$t5, 0X38($sp)
/* 000656 0x80C1CE50 01C50019 */ multu	$t6, $a1
/* 000657 0x80C1CE54 00007812 */ mflo	$t7
/* 000658 0x80C1CE58 01AFC021 */ addu	$t8, $t5, $t7
/* 000659 0x80C1CE5C 0307C821 */ addu	$t9, $t8, $a3
/* 000660 0x80C1CE60 8F287D98 */ lw	$t0, 0X7D98($t9)
/* 000661 0x80C1CE64 AC480004 */ sw	$t0, 0X4($v0)
/* 000662 0x80C1CE68 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 000663 0x80C1CE6C 3C0B0600 */ lui	$t3, 0x0600
/* 000664 0x80C1CE70 256B0E70 */ addiu	$t3, $t3, 0XE70
/* 000665 0x80C1CE74 24490008 */ addiu	$t1, $v0, 0X8
/* 000666 0x80C1CE78 ACC902B0 */ sw	$t1, 0X2B0($a2)
/* 000667 0x80C1CE7C AC4B0004 */ sw	$t3, 0X4($v0)
/* 000668 0x80C1CE80 AC4A0000 */ sw	$t2, 0X0($v0)
/* 000669 0x80C1CE84 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 000670 0x80C1CE88 244C0008 */ addiu	$t4, $v0, 0X8
/* 000671 0x80C1CE8C ACCC02B0 */ sw	$t4, 0X2B0($a2)
/* 000672 0x80C1CE90 AC440000 */ sw	$a0, 0X0($v0)
/* 000673 0x80C1CE94 83AD002B */ lb	$t5, 0X2B($sp)
/* 000674 0x80C1CE98 8FAE0038 */ lw	$t6, 0X38($sp)
/* 000675 0x80C1CE9C 01A50019 */ multu	$t5, $a1
/* 000676 0x80C1CEA0 00007812 */ mflo	$t7
/* 000677 0x80C1CEA4 01CFC021 */ addu	$t8, $t6, $t7
/* 000678 0x80C1CEA8 0307C821 */ addu	$t9, $t8, $a3
/* 000679 0x80C1CEAC 8F287D98 */ lw	$t0, 0X7D98($t9)
/* 000680 0x80C1CEB0 AC480004 */ sw	$t0, 0X4($v0)
/* 000681 0x80C1CEB4 0C060073 */ jal	SysMatrix_StatePop
/* 000682 0x80C1CEB8 00000000 */ nop
/* 000683 0x80C1CEBC 8FA70048 */ lw	$a3, 0X48($sp)
.L80C1CEC0:
/* 000684 0x80C1CEC0 8FA9003C */ lw	$t1, 0X3C($sp)
.L80C1CEC4:
/* 000685 0x80C1CEC4 24010009 */ li	$at, 0X9
/* 000686 0x80C1CEC8 3C0480C2 */ lui	$a0, %hi(D_80C1D2DC)
/* 000687 0x80C1CECC 15210007 */ bne	$t1, $at, .L80C1CEEC
/* 000688 0x80C1CED0 2484D2DC */ addiu	$a0, $a0, %lo(D_80C1D2DC)
/* 000689 0x80C1CED4 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000690 0x80C1CED8 24E5003C */ addiu	$a1, $a3, 0X3C
/* 000691 0x80C1CEDC 8FAA0048 */ lw	$t2, 0X48($sp)
/* 000692 0x80C1CEE0 25440048 */ addiu	$a0, $t2, 0X48
/* 000693 0x80C1CEE4 0C03FD4B */ jal	Math_Vec3s_Copy
/* 000694 0x80C1CEE8 25450030 */ addiu	$a1, $t2, 0X30
.L80C1CEEC:
/* 000695 0x80C1CEEC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000696 0x80C1CEF0 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000697 0x80C1CEF4 03E00008 */ jr	$ra
/* 000698 0x80C1CEF8 00000000 */ nop

