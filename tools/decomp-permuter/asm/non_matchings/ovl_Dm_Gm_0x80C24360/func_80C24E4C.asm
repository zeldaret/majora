glabel func_80C24E4C
/* 000699 0x80C24E4C 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000700 0x80C24E50 AFB00020 */ sw	$s0, 0X20($sp)
/* 000701 0x80C24E54 00C08025 */ move	$s0, $a2
/* 000702 0x80C24E58 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000703 0x80C24E5C AFA40028 */ sw	$a0, 0X28($sp)
/* 000704 0x80C24E60 960202AE */ lhu	$v0, 0X2AE($s0)
/* 000705 0x80C24E64 00001825 */ move	$v1, $zero
/* 000706 0x80C24E68 24010009 */ li	$at, 0X9
/* 000707 0x80C24E6C 304E0001 */ andi	$t6, $v0, 0X1
/* 000708 0x80C24E70 15C00008 */ bnez	$t6, .L80C24E94
/* 000709 0x80C24E74 304F0002 */ andi	$t7, $v0, 0X2
/* 000710 0x80C24E78 11E00004 */ beqz	$t7, .L80C24E8C
/* 000711 0x80C24E7C 00001025 */ move	$v0, $zero
/* 000712 0x80C24E80 24020001 */ li	$v0, 0X1
/* 000713 0x80C24E84 10000004 */ b	.L80C24E98
/* 000714 0x80C24E88 24030001 */ li	$v1, 0X1
.L80C24E8C:
/* 000715 0x80C24E8C 10000002 */ b	.L80C24E98
/* 000716 0x80C24E90 24030001 */ li	$v1, 0X1
.L80C24E94:
/* 000717 0x80C24E94 00001025 */ move	$v0, $zero
.L80C24E98:
/* 000718 0x80C24E98 14A1002C */ bne	$a1, $at, .L80C24F4C
/* 000719 0x80C24E9C 2606018C */ addiu	$a2, $s0, 0X18C
/* 000720 0x80C24EA0 860802C0 */ lh	$t0, 0X2C0($s0)
/* 000721 0x80C24EA4 860902C4 */ lh	$t1, 0X2C4($s0)
/* 000722 0x80C24EA8 861802BE */ lh	$t8, 0X2BE($s0)
/* 000723 0x80C24EAC 861902C2 */ lh	$t9, 0X2C2($s0)
/* 000724 0x80C24EB0 860B00BE */ lh	$t3, 0XBE($s0)
/* 000725 0x80C24EB4 01095021 */ addu	$t2, $t0, $t1
/* 000726 0x80C24EB8 03192021 */ addu	$a0, $t8, $t9
/* 000727 0x80C24EBC 014B2821 */ addu	$a1, $t2, $t3
/* 000728 0x80C24EC0 24A54000 */ addiu	$a1, $a1, 0X4000
/* 000729 0x80C24EC4 24844000 */ addiu	$a0, $a0, 0X4000
/* 000730 0x80C24EC8 00042400 */ sll	$a0, $a0, 16
/* 000731 0x80C24ECC 00052C00 */ sll	$a1, $a1, 16
/* 000732 0x80C24ED0 00052C03 */ sra	$a1, $a1, 16
/* 000733 0x80C24ED4 00042403 */ sra	$a0, $a0, 16
/* 000734 0x80C24ED8 AFA20014 */ sw	$v0, 0X14($sp)
/* 000735 0x80C24EDC AFA30010 */ sw	$v1, 0X10($sp)
/* 000736 0x80C24EE0 0C04EB67 */ jal	func_8013AD9C
/* 000737 0x80C24EE4 260701A4 */ addiu	$a3, $s0, 0X1A4
/* 000738 0x80C24EE8 0C060073 */ jal	SysMatrix_StatePop
/* 000739 0x80C24EEC 00000000 */ nop
/* 000740 0x80C24EF0 C60C018C */ lwc1	$f12, 0X18C($s0)
/* 000741 0x80C24EF4 C60E0190 */ lwc1	$f14, 0X190($s0)
/* 000742 0x80C24EF8 8E060194 */ lw	$a2, 0X194($s0)
/* 000743 0x80C24EFC 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000744 0x80C24F00 00003825 */ move	$a3, $zero
/* 000745 0x80C24F04 C60C0058 */ lwc1	$f12, 0X58($s0)
/* 000746 0x80C24F08 C60E005C */ lwc1	$f14, 0X5C($s0)
/* 000747 0x80C24F0C 8E060060 */ lw	$a2, 0X60($s0)
/* 000748 0x80C24F10 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000749 0x80C24F14 24070001 */ li	$a3, 0X1
/* 000750 0x80C24F18 860401A6 */ lh	$a0, 0X1A6($s0)
/* 000751 0x80C24F1C 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000752 0x80C24F20 24050001 */ li	$a1, 0X1
/* 000753 0x80C24F24 860401A4 */ lh	$a0, 0X1A4($s0)
/* 000754 0x80C24F28 0C06011E */ jal	SysMatrix_InsertXRotation_s
/* 000755 0x80C24F2C 24050001 */ li	$a1, 0X1
/* 000756 0x80C24F30 860401A8 */ lh	$a0, 0X1A8($s0)
/* 000757 0x80C24F34 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 000758 0x80C24F38 24050001 */ li	$a1, 0X1
/* 000759 0x80C24F3C 0C060067 */ jal	SysMatrix_StatePush
/* 000760 0x80C24F40 00000000 */ nop
/* 000761 0x80C24F44 1000002A */ b	.L80C24FF0
/* 000762 0x80C24F48 8FBF0024 */ lw	$ra, 0X24($sp)
.L80C24F4C:
/* 000763 0x80C24F4C 24010002 */ li	$at, 0X2
/* 000764 0x80C24F50 14A10026 */ bne	$a1, $at, .L80C24FEC
/* 000765 0x80C24F54 26060198 */ addiu	$a2, $s0, 0X198
/* 000766 0x80C24F58 860C02C4 */ lh	$t4, 0X2C4($s0)
/* 000767 0x80C24F5C 860D00BE */ lh	$t5, 0XBE($s0)
/* 000768 0x80C24F60 860402C2 */ lh	$a0, 0X2C2($s0)
/* 000769 0x80C24F64 AFA20014 */ sw	$v0, 0X14($sp)
/* 000770 0x80C24F68 018D2821 */ addu	$a1, $t4, $t5
/* 000771 0x80C24F6C 24A54000 */ addiu	$a1, $a1, 0X4000
/* 000772 0x80C24F70 24844000 */ addiu	$a0, $a0, 0X4000
/* 000773 0x80C24F74 00042400 */ sll	$a0, $a0, 16
/* 000774 0x80C24F78 00052C00 */ sll	$a1, $a1, 16
/* 000775 0x80C24F7C 00052C03 */ sra	$a1, $a1, 16
/* 000776 0x80C24F80 00042403 */ sra	$a0, $a0, 16
/* 000777 0x80C24F84 AFA30010 */ sw	$v1, 0X10($sp)
/* 000778 0x80C24F88 0C04EB67 */ jal	func_8013AD9C
/* 000779 0x80C24F8C 260701AA */ addiu	$a3, $s0, 0X1AA
/* 000780 0x80C24F90 0C060073 */ jal	SysMatrix_StatePop
/* 000781 0x80C24F94 00000000 */ nop
/* 000782 0x80C24F98 C60C0198 */ lwc1	$f12, 0X198($s0)
/* 000783 0x80C24F9C C60E019C */ lwc1	$f14, 0X19C($s0)
/* 000784 0x80C24FA0 8E0601A0 */ lw	$a2, 0X1A0($s0)
/* 000785 0x80C24FA4 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000786 0x80C24FA8 00003825 */ move	$a3, $zero
/* 000787 0x80C24FAC C60C0058 */ lwc1	$f12, 0X58($s0)
/* 000788 0x80C24FB0 C60E005C */ lwc1	$f14, 0X5C($s0)
/* 000789 0x80C24FB4 8E060060 */ lw	$a2, 0X60($s0)
/* 000790 0x80C24FB8 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000791 0x80C24FBC 24070001 */ li	$a3, 0X1
/* 000792 0x80C24FC0 860401AC */ lh	$a0, 0X1AC($s0)
/* 000793 0x80C24FC4 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000794 0x80C24FC8 24050001 */ li	$a1, 0X1
/* 000795 0x80C24FCC 860401AA */ lh	$a0, 0X1AA($s0)
/* 000796 0x80C24FD0 0C06011E */ jal	SysMatrix_InsertXRotation_s
/* 000797 0x80C24FD4 24050001 */ li	$a1, 0X1
/* 000798 0x80C24FD8 860401AE */ lh	$a0, 0X1AE($s0)
/* 000799 0x80C24FDC 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 000800 0x80C24FE0 24050001 */ li	$a1, 0X1
/* 000801 0x80C24FE4 0C060067 */ jal	SysMatrix_StatePush
/* 000802 0x80C24FE8 00000000 */ nop
.L80C24FEC:
/* 000803 0x80C24FEC 8FBF0024 */ lw	$ra, 0X24($sp)
.L80C24FF0:
/* 000804 0x80C24FF0 8FB00020 */ lw	$s0, 0X20($sp)
/* 000805 0x80C24FF4 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000806 0x80C24FF8 03E00008 */ jr	$ra
/* 000807 0x80C24FFC 00000000 */ nop

