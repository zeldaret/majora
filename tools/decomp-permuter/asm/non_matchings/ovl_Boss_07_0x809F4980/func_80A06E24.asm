glabel func_80A06E24
/* 018729 0x80A06E24 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 018730 0x80A06E28 AFB00024 */ sw	$s0, 0X24($sp)
/* 018731 0x80A06E2C 00808025 */ move	$s0, $a0
/* 018732 0x80A06E30 AFBF002C */ sw	$ra, 0X2C($sp)
/* 018733 0x80A06E34 AFB10028 */ sw	$s1, 0X28($sp)
/* 018734 0x80A06E38 AFA50034 */ sw	$a1, 0X34($sp)
/* 018735 0x80A06E3C 8FAE0034 */ lw	$t6, 0X34($sp)
/* 018736 0x80A06E40 8DC40000 */ lw	$a0, 0X0($t6)
/* 018737 0x80A06E44 0C04B0A3 */ jal	func_8012C28C
/* 018738 0x80A06E48 00808825 */ move	$s1, $a0
/* 018739 0x80A06E4C 860F015E */ lh	$t7, 0X15E($s0)
/* 018740 0x80A06E50 31F80001 */ andi	$t8, $t7, 0X1
/* 018741 0x80A06E54 5300000E */ beqzl	$t8, .L80A06E90
/* 018742 0x80A06E58 C60C0024 */ lwc1	$f12, 0X24($s0)
/* 018743 0x80A06E5C 8E2402B0 */ lw	$a0, 0X2B0($s1)
/* 018744 0x80A06E60 241900FF */ li	$t9, 0XFF
/* 018745 0x80A06E64 2408030C */ li	$t0, 0X30C
/* 018746 0x80A06E68 2409044B */ li	$t1, 0X44B
/* 018747 0x80A06E6C AFA90018 */ sw	$t1, 0X18($sp)
/* 018748 0x80A06E70 AFA80014 */ sw	$t0, 0X14($sp)
/* 018749 0x80A06E74 AFB90010 */ sw	$t9, 0X10($sp)
/* 018750 0x80A06E78 240500FF */ li	$a1, 0XFF
/* 018751 0x80A06E7C 00003025 */ move	$a2, $zero
/* 018752 0x80A06E80 0C04AF14 */ jal	Gfx_SetFog
/* 018753 0x80A06E84 00003825 */ move	$a3, $zero
/* 018754 0x80A06E88 AE2202B0 */ sw	$v0, 0X2B0($s1)
/* 018755 0x80A06E8C C60C0024 */ lwc1	$f12, 0X24($s0)
.L80A06E90:
/* 018756 0x80A06E90 C60E0028 */ lwc1	$f14, 0X28($s0)
/* 018757 0x80A06E94 8E06002C */ lw	$a2, 0X2C($s0)
/* 018758 0x80A06E98 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 018759 0x80A06E9C 00003825 */ move	$a3, $zero
/* 018760 0x80A06EA0 860400BE */ lh	$a0, 0XBE($s0)
/* 018761 0x80A06EA4 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 018762 0x80A06EA8 24050001 */ li	$a1, 0X1
/* 018763 0x80A06EAC 860400C0 */ lh	$a0, 0XC0($s0)
/* 018764 0x80A06EB0 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 018765 0x80A06EB4 24050001 */ li	$a1, 0X1
/* 018766 0x80A06EB8 C60C0178 */ lwc1	$f12, 0X178($s0)
/* 018767 0x80A06EBC 0C0602D2 */ jal	SysMatrix_InsertYRotation_f
/* 018768 0x80A06EC0 24050001 */ li	$a1, 0X1
/* 018769 0x80A06EC4 C60C0058 */ lwc1	$f12, 0X58($s0)
/* 018770 0x80A06EC8 C60E005C */ lwc1	$f14, 0X5C($s0)
/* 018771 0x80A06ECC 8E060060 */ lw	$a2, 0X60($s0)
/* 018772 0x80A06ED0 0C0600E7 */ jal	SysMatrix_InsertScale
/* 018773 0x80A06ED4 24070001 */ li	$a3, 0X1
/* 018774 0x80A06ED8 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 018775 0x80A06EDC 3C0BDA38 */ lui	$t3, 0xDA38
/* 018776 0x80A06EE0 356B0003 */ ori	$t3, $t3, 0X3
/* 018777 0x80A06EE4 244A0008 */ addiu	$t2, $v0, 0X8
/* 018778 0x80A06EE8 AE2A02B0 */ sw	$t2, 0X2B0($s1)
/* 018779 0x80A06EEC AC4B0000 */ sw	$t3, 0X0($v0)
/* 018780 0x80A06EF0 8FAC0034 */ lw	$t4, 0X34($sp)
/* 018781 0x80A06EF4 00408025 */ move	$s0, $v0
/* 018782 0x80A06EF8 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 018783 0x80A06EFC 8D840000 */ lw	$a0, 0X0($t4)
/* 018784 0x80A06F00 AE020004 */ sw	$v0, 0X4($s0)
/* 018785 0x80A06F04 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 018786 0x80A06F08 3C0F0603 */ lui	$t7, 0x0603
/* 018787 0x80A06F0C 25EFF640 */ addiu	$t7, $t7, -0X9C0
/* 018788 0x80A06F10 244D0008 */ addiu	$t5, $v0, 0X8
/* 018789 0x80A06F14 AE2D02B0 */ sw	$t5, 0X2B0($s1)
/* 018790 0x80A06F18 3C0EDE00 */ lui	$t6, 0xDE00
/* 018791 0x80A06F1C AC4E0000 */ sw	$t6, 0X0($v0)
/* 018792 0x80A06F20 AC4F0004 */ sw	$t7, 0X4($v0)
/* 018793 0x80A06F24 8FA40034 */ lw	$a0, 0X34($sp)
/* 018794 0x80A06F28 0C05982E */ jal	func_801660B8
/* 018795 0x80A06F2C 8E2502B0 */ lw	$a1, 0X2B0($s1)
/* 018796 0x80A06F30 AE2202B0 */ sw	$v0, 0X2B0($s1)
/* 018797 0x80A06F34 8FBF002C */ lw	$ra, 0X2C($sp)
/* 018798 0x80A06F38 8FB00024 */ lw	$s0, 0X24($sp)
/* 018799 0x80A06F3C 8FB10028 */ lw	$s1, 0X28($sp)
/* 018800 0x80A06F40 03E00008 */ jr	$ra
/* 018801 0x80A06F44 27BD0030 */ addiu	$sp, $sp, 0X30

