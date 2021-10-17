glabel func_8086D730
/* 003688 0x8086D730 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 003689 0x8086D734 AFBF001C */ sw	$ra, 0X1C($sp)
/* 003690 0x8086D738 AFB00018 */ sw	$s0, 0X18($sp)
/* 003691 0x8086D73C AFA40038 */ sw	$a0, 0X38($sp)
/* 003692 0x8086D740 AFA5003C */ sw	$a1, 0X3C($sp)
/* 003693 0x8086D744 AFA60040 */ sw	$a2, 0X40($sp)
/* 003694 0x8086D748 AFA70044 */ sw	$a3, 0X44($sp)
/* 003695 0x8086D74C 8FAE003C */ lw	$t6, 0X3C($sp)
/* 003696 0x8086D750 24010014 */ li	$at, 0X14
/* 003697 0x8086D754 8FB00048 */ lw	$s0, 0X48($sp)
/* 003698 0x8086D758 55C1003E */ bnel	$t6, $at, .L8086D854
/* 003699 0x8086D75C 8FA8003C */ lw	$t0, 0X3C($sp)
/* 003700 0x8086D760 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 003701 0x8086D764 2604003C */ addiu	$a0, $s0, 0X3C
/* 003702 0x8086D768 860F00BE */ lh	$t7, 0XBE($s0)
/* 003703 0x8086D76C 3C018087 */ lui	$at, %hi(D_8086DA9C)
/* 003704 0x8086D770 27A50028 */ addiu	$a1, $sp, 0X28
/* 003705 0x8086D774 A60F004A */ sh	$t7, 0X4A($s0)
/* 003706 0x8086D778 0C0606F1 */ jal	SysMatrix_GetStateTranslationAndScaledY
/* 003707 0x8086D77C C42CDA9C */ lwc1	$f12, %lo(D_8086DA9C)($at)
/* 003708 0x8086D780 C7A40028 */ lwc1	$f4, 0X28($sp)
/* 003709 0x8086D784 8E0203A0 */ lw	$v0, 0X3A0($s0)
/* 003710 0x8086D788 4600218D */ trunc.w.s	$f6, $f4
/* 003711 0x8086D78C 24420030 */ addiu	$v0, $v0, 0X30
/* 003712 0x8086D790 44193000 */ mfc1	$t9, $f6
/* 003713 0x8086D794 00000000 */ nop
/* 003714 0x8086D798 A4590000 */ sh	$t9, 0X0($v0)
/* 003715 0x8086D79C C7A8002C */ lwc1	$f8, 0X2C($sp)
/* 003716 0x8086D7A0 4600428D */ trunc.w.s	$f10, $f8
/* 003717 0x8086D7A4 44095000 */ mfc1	$t1, $f10
/* 003718 0x8086D7A8 00000000 */ nop
/* 003719 0x8086D7AC A4490002 */ sh	$t1, 0X2($v0)
/* 003720 0x8086D7B0 C7B00030 */ lwc1	$f16, 0X30($sp)
/* 003721 0x8086D7B4 4600848D */ trunc.w.s	$f18, $f16
/* 003722 0x8086D7B8 440B9000 */ mfc1	$t3, $f18
/* 003723 0x8086D7BC 00000000 */ nop
/* 003724 0x8086D7C0 A44B0004 */ sh	$t3, 0X4($v0)
/* 003725 0x8086D7C4 8E0203A0 */ lw	$v0, 0X3A0($s0)
/* 003726 0x8086D7C8 860400BE */ lh	$a0, 0XBE($s0)
/* 003727 0x8086D7CC 24420070 */ addiu	$v0, $v0, 0X70
/* 003728 0x8086D7D0 0C03FB61 */ jal	Math_Sins
/* 003729 0x8086D7D4 AFA20024 */ sw	$v0, 0X24($sp)
/* 003730 0x8086D7D8 3C01420C */ lui	$at, 0x420C
/* 003731 0x8086D7DC 44812000 */ mtc1	$at, $f4
/* 003732 0x8086D7E0 C608003C */ lwc1	$f8, 0X3C($s0)
/* 003733 0x8086D7E4 8FA20024 */ lw	$v0, 0X24($sp)
/* 003734 0x8086D7E8 46040182 */ mul.s	$f6, $f0, $f4
/* 003735 0x8086D7EC 3C014120 */ lui	$at, 0x4120
/* 003736 0x8086D7F0 44812000 */ mtc1	$at, $f4
/* 003737 0x8086D7F4 46083280 */ add.s	$f10, $f6, $f8
/* 003738 0x8086D7F8 4600540D */ trunc.w.s	$f16, $f10
/* 003739 0x8086D7FC 440D8000 */ mfc1	$t5, $f16
/* 003740 0x8086D800 00000000 */ nop
/* 003741 0x8086D804 A44D0000 */ sh	$t5, 0X0($v0)
/* 003742 0x8086D808 C6120040 */ lwc1	$f18, 0X40($s0)
/* 003743 0x8086D80C 46049181 */ sub.s	$f6, $f18, $f4
/* 003744 0x8086D810 4600320D */ trunc.w.s	$f8, $f6
/* 003745 0x8086D814 440F4000 */ mfc1	$t7, $f8
/* 003746 0x8086D818 00000000 */ nop
/* 003747 0x8086D81C A44F0002 */ sh	$t7, 0X2($v0)
/* 003748 0x8086D820 0C03FB51 */ jal	Math_Coss
/* 003749 0x8086D824 860400BE */ lh	$a0, 0XBE($s0)
/* 003750 0x8086D828 3C01420C */ lui	$at, 0x420C
/* 003751 0x8086D82C 44815000 */ mtc1	$at, $f10
/* 003752 0x8086D830 C6120044 */ lwc1	$f18, 0X44($s0)
/* 003753 0x8086D834 8FA20024 */ lw	$v0, 0X24($sp)
/* 003754 0x8086D838 460A0402 */ mul.s	$f16, $f0, $f10
/* 003755 0x8086D83C 46128100 */ add.s	$f4, $f16, $f18
/* 003756 0x8086D840 4600218D */ trunc.w.s	$f6, $f4
/* 003757 0x8086D844 44193000 */ mfc1	$t9, $f6
/* 003758 0x8086D848 00000000 */ nop
/* 003759 0x8086D84C A4590004 */ sh	$t9, 0X4($v0)
/* 003760 0x8086D850 8FA8003C */ lw	$t0, 0X3C($sp)
.L8086D854:
/* 003761 0x8086D854 3C028087 */ lui	$v0, %hi(D_8086DA28)
/* 003762 0x8086D858 2401FFFF */ li	$at, -0X1
/* 003763 0x8086D85C 00481021 */ addu	$v0, $v0, $t0
/* 003764 0x8086D860 8042DA28 */ lb	$v0, %lo(D_8086DA28)($v0)
/* 003765 0x8086D864 8FB00048 */ lw	$s0, 0X48($sp)
/* 003766 0x8086D868 10410006 */ beq	$v0, $at, .L8086D884
/* 003767 0x8086D86C 00024880 */ sll	$t1, $v0, 2
/* 003768 0x8086D870 01224823 */ subu	$t1, $t1, $v0
/* 003769 0x8086D874 00094880 */ sll	$t1, $t1, 2
/* 003770 0x8086D878 02092021 */ addu	$a0, $s0, $t1
/* 003771 0x8086D87C 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 003772 0x8086D880 248402F4 */ addiu	$a0, $a0, 0X2F4
.L8086D884:
/* 003773 0x8086D884 8FBF001C */ lw	$ra, 0X1C($sp)
/* 003774 0x8086D888 8FB00018 */ lw	$s0, 0X18($sp)
/* 003775 0x8086D88C 27BD0038 */ addiu	$sp, $sp, 0X38
/* 003776 0x8086D890 03E00008 */ jr	$ra
/* 003777 0x8086D894 00000000 */ nop

