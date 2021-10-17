glabel func_80B80F08
/* 000778 0x80B80F08 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 000779 0x80B80F0C AFB00018 */ sw	$s0, 0X18($sp)
/* 000780 0x80B80F10 00808025 */ move	$s0, $a0
/* 000781 0x80B80F14 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000782 0x80B80F18 AFA5004C */ sw	$a1, 0X4C($sp)
/* 000783 0x80B80F1C 8E020204 */ lw	$v0, 0X204($s0)
/* 000784 0x80B80F20 AFA00024 */ sw	$zero, 0X24($sp)
/* 000785 0x80B80F24 50400035 */ beqzl	$v0, .L80B80FFC
/* 000786 0x80B80F28 8FA20024 */ lw	$v0, 0X24($sp)
/* 000787 0x80B80F2C 0C060067 */ jal	SysMatrix_StatePush
/* 000788 0x80B80F30 AFA20040 */ sw	$v0, 0X40($sp)
/* 000789 0x80B80F34 C60C0024 */ lwc1	$f12, 0X24($s0)
/* 000790 0x80B80F38 C60E0028 */ lwc1	$f14, 0X28($s0)
/* 000791 0x80B80F3C 8E06002C */ lw	$a2, 0X2C($s0)
/* 000792 0x80B80F40 0C060594 */ jal	SysMatrix_SetStateRotationAndTranslation
/* 000793 0x80B80F44 260700BC */ addiu	$a3, $s0, 0XBC
/* 000794 0x80B80F48 3C0380B8 */ lui	$v1, %hi(D_80B82178)
/* 000795 0x80B80F4C 24632178 */ addiu	$v1, $v1, %lo(D_80B82178)
/* 000796 0x80B80F50 C46C0000 */ lwc1	$f12, 0X0($v1)
/* 000797 0x80B80F54 C46E0004 */ lwc1	$f14, 0X4($v1)
/* 000798 0x80B80F58 8C660008 */ lw	$a2, 0X8($v1)
/* 000799 0x80B80F5C 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000800 0x80B80F60 24070001 */ li	$a3, 0X1
/* 000801 0x80B80F64 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 000802 0x80B80F68 27A40034 */ addiu	$a0, $sp, 0X34
/* 000803 0x80B80F6C 8FA20040 */ lw	$v0, 0X40($sp)
/* 000804 0x80B80F70 C4440028 */ lwc1	$f4, 0X28($v0)
/* 000805 0x80B80F74 C4460170 */ lwc1	$f6, 0X170($v0)
/* 000806 0x80B80F78 C44C0024 */ lwc1	$f12, 0X24($v0)
/* 000807 0x80B80F7C 8C46002C */ lw	$a2, 0X2C($v0)
/* 000808 0x80B80F80 244700BC */ addiu	$a3, $v0, 0XBC
/* 000809 0x80B80F84 0C060594 */ jal	SysMatrix_SetStateRotationAndTranslation
/* 000810 0x80B80F88 46062380 */ add.s	$f14, $f4, $f6
/* 000811 0x80B80F8C 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 000812 0x80B80F90 27A40028 */ addiu	$a0, $sp, 0X28
/* 000813 0x80B80F94 0C060073 */ jal	SysMatrix_StatePop
/* 000814 0x80B80F98 00000000 */ nop
/* 000815 0x80B80F9C 27A40034 */ addiu	$a0, $sp, 0X34
/* 000816 0x80B80FA0 0C05E9BE */ jal	Math3D_DistanceSquared
/* 000817 0x80B80FA4 27A50028 */ addiu	$a1, $sp, 0X28
/* 000818 0x80B80FA8 3C014040 */ lui	$at, 0x4040
/* 000819 0x80B80FAC 44814000 */ mtc1	$at, $f8
/* 000820 0x80B80FB0 00000000 */ nop
/* 000821 0x80B80FB4 4608003C */ c.lt.s	$f0, $f8
/* 000822 0x80B80FB8 00000000 */ nop
/* 000823 0x80B80FBC 4502000F */ bc1fl .L80B80FFC
/* 000824 0x80B80FC0 8FA20024 */ lw	$v0, 0X24($sp)
/* 000825 0x80B80FC4 8605001C */ lh	$a1, 0X1C($s0)
/* 000826 0x80B80FC8 8FA4004C */ lw	$a0, 0X4C($sp)
/* 000827 0x80B80FCC 00052A03 */ sra	$a1, $a1, 8
/* 000828 0x80B80FD0 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000829 0x80B80FD4 30A5007F */ andi	$a1, $a1, 0X7F
/* 000830 0x80B80FD8 14400002 */ bnez	$v0, .L80B80FE4
/* 000831 0x80B80FDC 240E0001 */ li	$t6, 0X1
/* 000832 0x80B80FE0 AFAE0024 */ sw	$t6, 0X24($sp)
.L80B80FE4:
/* 000833 0x80B80FE4 8605001C */ lh	$a1, 0X1C($s0)
/* 000834 0x80B80FE8 8FA4004C */ lw	$a0, 0X4C($sp)
/* 000835 0x80B80FEC 00052A03 */ sra	$a1, $a1, 8
/* 000836 0x80B80FF0 0C02D6FD */ jal	Actor_SetSwitchFlag
/* 000837 0x80B80FF4 30A5007F */ andi	$a1, $a1, 0X7F
/* 000838 0x80B80FF8 8FA20024 */ lw	$v0, 0X24($sp)
.L80B80FFC:
/* 000839 0x80B80FFC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000840 0x80B81000 8FB00018 */ lw	$s0, 0X18($sp)
/* 000841 0x80B81004 27BD0048 */ addiu	$sp, $sp, 0X48
/* 000842 0x80B81008 03E00008 */ jr	$ra
/* 000843 0x80B8100C 00000000 */ nop

