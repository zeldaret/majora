glabel func_80AECE60
/* 000640 0x80AECE60 27BDFB38 */ addiu	$sp, $sp, -0X4C8
/* 000641 0x80AECE64 AFB30038 */ sw	$s3, 0X38($sp)
/* 000642 0x80AECE68 AFB20034 */ sw	$s2, 0X34($sp)
/* 000643 0x80AECE6C 00809025 */ move	$s2, $a0
/* 000644 0x80AECE70 00A09825 */ move	$s3, $a1
/* 000645 0x80AECE74 AFBF003C */ sw	$ra, 0X3C($sp)
/* 000646 0x80AECE78 AFB10030 */ sw	$s1, 0X30($sp)
/* 000647 0x80AECE7C AFB0002C */ sw	$s0, 0X2C($sp)
/* 000648 0x80AECE80 8E4E03C8 */ lw	$t6, 0X3C8($s2)
/* 000649 0x80AECE84 27A400A0 */ addiu	$a0, $sp, 0XA0
/* 000650 0x80AECE88 24050003 */ li	$a1, 0X3
/* 000651 0x80AECE8C 91C60000 */ lbu	$a2, 0X0($t6)
/* 000652 0x80AECE90 0C04EBC0 */ jal	func_8013AF00
/* 000653 0x80AECE94 24C60003 */ addiu	$a2, $a2, 0X3
/* 000654 0x80AECE98 964F03CE */ lhu	$t7, 0X3CE($s2)
/* 000655 0x80AECE9C 31F80004 */ andi	$t8, $t7, 0X4
/* 000656 0x80AECEA0 17000023 */ bnez	$t8, .L80AECF30
/* 000657 0x80AECEA4 3C19801D */ lui	$t9, %hi(D_801D15B0)
/* 000658 0x80AECEA8 273915B0 */ addiu	$t9, $t9, %lo(D_801D15B0)
/* 000659 0x80AECEAC 8F290000 */ lw	$t1, 0X0($t9)
/* 000660 0x80AECEB0 27A3007C */ addiu	$v1, $sp, 0X7C
/* 000661 0x80AECEB4 264203EC */ addiu	$v0, $s2, 0X3EC
/* 000662 0x80AECEB8 AC690000 */ sw	$t1, 0X0($v1)
/* 000663 0x80AECEBC 8F280004 */ lw	$t0, 0X4($t9)
/* 000664 0x80AECEC0 27AB00A0 */ addiu	$t3, $sp, 0XA0
/* 000665 0x80AECEC4 265103E0 */ addiu	$s1, $s2, 0X3E0
/* 000666 0x80AECEC8 AC680004 */ sw	$t0, 0X4($v1)
/* 000667 0x80AECECC 8F290008 */ lw	$t1, 0X8($t9)
/* 000668 0x80AECED0 264603F0 */ addiu	$a2, $s2, 0X3F0
/* 000669 0x80AECED4 02202825 */ move	$a1, $s1
/* 000670 0x80AECED8 AC690008 */ sw	$t1, 0X8($v1)
/* 000671 0x80AECEDC 8E4A03E4 */ lw	$t2, 0X3E4($s2)
/* 000672 0x80AECEE0 8E4703E8 */ lw	$a3, 0X3E8($s2)
/* 000673 0x80AECEE4 8E4403C8 */ lw	$a0, 0X3C8($s2)
/* 000674 0x80AECEE8 AFA3001C */ sw	$v1, 0X1C($sp)
/* 000675 0x80AECEEC AFAB0018 */ sw	$t3, 0X18($sp)
/* 000676 0x80AECEF0 AFA20014 */ sw	$v0, 0X14($sp)
/* 000677 0x80AECEF4 AFAA0010 */ sw	$t2, 0X10($sp)
/* 000678 0x80AECEF8 8E4C03D0 */ lw	$t4, 0X3D0($s2)
/* 000679 0x80AECEFC AFA60050 */ sw	$a2, 0X50($sp)
/* 000680 0x80AECF00 AFA2004C */ sw	$v0, 0X4C($sp)
/* 000681 0x80AECF04 0C04EDAC */ jal	func_8013B6B0
/* 000682 0x80AECF08 AFAC0020 */ sw	$t4, 0X20($sp)
/* 000683 0x80AECF0C 02602025 */ move	$a0, $s3
/* 000684 0x80AECF10 8E4503C8 */ lw	$a1, 0X3C8($s2)
/* 000685 0x80AECF14 8E4603EC */ lw	$a2, 0X3EC($s2)
/* 000686 0x80AECF18 0C04EE1E */ jal	func_8013B878
/* 000687 0x80AECF1C 27A7007C */ addiu	$a3, $sp, 0X7C
/* 000688 0x80AECF20 C7A40080 */ lwc1	$f4, 0X80($sp)
/* 000689 0x80AECF24 265003D4 */ addiu	$s0, $s2, 0X3D4
/* 000690 0x80AECF28 1000000E */ b	.L80AECF64
/* 000691 0x80AECF2C E6440028 */ swc1	$f4, 0X28($s2)
.L80AECF30:
/* 000692 0x80AECF30 265003D4 */ addiu	$s0, $s2, 0X3D4
/* 000693 0x80AECF34 8E0F0000 */ lw	$t7, 0X0($s0)
/* 000694 0x80AECF38 27AD007C */ addiu	$t5, $sp, 0X7C
/* 000695 0x80AECF3C 265803F0 */ addiu	$t8, $s2, 0X3F0
/* 000696 0x80AECF40 ADAF0000 */ sw	$t7, 0X0($t5)
/* 000697 0x80AECF44 8E0E0004 */ lw	$t6, 0X4($s0)
/* 000698 0x80AECF48 265903EC */ addiu	$t9, $s2, 0X3EC
/* 000699 0x80AECF4C 265103E0 */ addiu	$s1, $s2, 0X3E0
/* 000700 0x80AECF50 ADAE0004 */ sw	$t6, 0X4($t5)
/* 000701 0x80AECF54 8E0F0008 */ lw	$t7, 0X8($s0)
/* 000702 0x80AECF58 ADAF0008 */ sw	$t7, 0X8($t5)
/* 000703 0x80AECF5C AFB9004C */ sw	$t9, 0X4C($sp)
/* 000704 0x80AECF60 AFB80050 */ sw	$t8, 0X50($sp)
.L80AECF64:
/* 000705 0x80AECF64 C7A6007C */ lwc1	$f6, 0X7C($sp)
/* 000706 0x80AECF68 964803CE */ lhu	$t0, 0X3CE($s2)
/* 000707 0x80AECF6C 26440108 */ addiu	$a0, $s2, 0X108
/* 000708 0x80AECF70 E6460024 */ swc1	$f6, 0X24($s2)
/* 000709 0x80AECF74 C7A80084 */ lwc1	$f8, 0X84($sp)
/* 000710 0x80AECF78 31090004 */ andi	$t1, $t0, 0X4
/* 000711 0x80AECF7C 15200006 */ bnez	$t1, .L80AECF98
/* 000712 0x80AECF80 E648002C */ swc1	$f8, 0X2C($s2)
/* 000713 0x80AECF84 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000714 0x80AECF88 26450024 */ addiu	$a1, $s2, 0X24
/* 000715 0x80AECF8C 964A03CE */ lhu	$t2, 0X3CE($s2)
/* 000716 0x80AECF90 354B0004 */ ori	$t3, $t2, 0X4
/* 000717 0x80AECF94 A64B03CE */ sh	$t3, 0X3CE($s2)
.L80AECF98:
/* 000718 0x80AECF98 3C010001 */ lui	$at, 0x0001
/* 000719 0x80AECF9C 34218000 */ ori	$at, $at, 0X8000
/* 000720 0x80AECFA0 02611821 */ addu	$v1, $s3, $at
/* 000721 0x80AECFA4 906C0B4A */ lbu	$t4, 0XB4A($v1)
/* 000722 0x80AECFA8 3C09801D */ lui	$t1, %hi(D_801D15B0)
/* 000723 0x80AECFAC 252915B0 */ addiu	$t1, $t1, %lo(D_801D15B0)
/* 000724 0x80AECFB0 55800005 */ bnezl	$t4, .L80AECFC8
/* 000725 0x80AECFB4 8E4E03F0 */ lw	$t6, 0X3F0($s2)
/* 000726 0x80AECFB8 8E4D03D0 */ lw	$t5, 0X3D0($s2)
/* 000727 0x80AECFBC 55A0000D */ bnezl	$t5, .L80AECFF4
/* 000728 0x80AECFC0 8D2B0000 */ lw	$t3, 0X0($t1)
/* 000729 0x80AECFC4 8E4E03F0 */ lw	$t6, 0X3F0($s2)
.L80AECFC8:
/* 000730 0x80AECFC8 27B8007C */ addiu	$t8, $sp, 0X7C
/* 000731 0x80AECFCC AFAE0078 */ sw	$t6, 0X78($sp)
/* 000732 0x80AECFD0 8E4F03EC */ lw	$t7, 0X3EC($s2)
/* 000733 0x80AECFD4 AFAF0074 */ sw	$t7, 0X74($sp)
/* 000734 0x80AECFD8 8E480024 */ lw	$t0, 0X24($s2)
/* 000735 0x80AECFDC AF080000 */ sw	$t0, 0X0($t8)
/* 000736 0x80AECFE0 8E590028 */ lw	$t9, 0X28($s2)
/* 000737 0x80AECFE4 AF190004 */ sw	$t9, 0X4($t8)
/* 000738 0x80AECFE8 8E48002C */ lw	$t0, 0X2C($s2)
/* 000739 0x80AECFEC AF080008 */ sw	$t0, 0X8($t8)
/* 000740 0x80AECFF0 8D2B0000 */ lw	$t3, 0X0($t1)
.L80AECFF4:
/* 000741 0x80AECFF4 27AE00A0 */ addiu	$t6, $sp, 0XA0
/* 000742 0x80AECFF8 02202825 */ move	$a1, $s1
/* 000743 0x80AECFFC AE0B0000 */ sw	$t3, 0X0($s0)
/* 000744 0x80AED000 8D2A0004 */ lw	$t2, 0X4($t1)
/* 000745 0x80AED004 AE0A0004 */ sw	$t2, 0X4($s0)
/* 000746 0x80AED008 8D2B0008 */ lw	$t3, 0X8($t1)
/* 000747 0x80AED00C AE0B0008 */ sw	$t3, 0X8($s0)
/* 000748 0x80AED010 8E4C03E4 */ lw	$t4, 0X3E4($s2)
/* 000749 0x80AED014 8E4703E8 */ lw	$a3, 0X3E8($s2)
/* 000750 0x80AED018 8E4403C8 */ lw	$a0, 0X3C8($s2)
/* 000751 0x80AED01C 8FAD004C */ lw	$t5, 0X4C($sp)
/* 000752 0x80AED020 AFB0001C */ sw	$s0, 0X1C($sp)
/* 000753 0x80AED024 AFAE0018 */ sw	$t6, 0X18($sp)
/* 000754 0x80AED028 AFAC0010 */ sw	$t4, 0X10($sp)
/* 000755 0x80AED02C AFAD0014 */ sw	$t5, 0X14($sp)
/* 000756 0x80AED030 8E4F03D0 */ lw	$t7, 0X3D0($s2)
/* 000757 0x80AED034 AFA30044 */ sw	$v1, 0X44($sp)
/* 000758 0x80AED038 8FA60050 */ lw	$a2, 0X50($sp)
/* 000759 0x80AED03C 0C04EDAC */ jal	func_8013B6B0
/* 000760 0x80AED040 AFAF0020 */ sw	$t7, 0X20($sp)
/* 000761 0x80AED044 10400005 */ beqz	$v0, .L80AED05C
/* 000762 0x80AED048 8FA30044 */ lw	$v1, 0X44($sp)
/* 000763 0x80AED04C 965803CE */ lhu	$t8, 0X3CE($s2)
/* 000764 0x80AED050 37190008 */ ori	$t9, $t8, 0X8
/* 000765 0x80AED054 10000013 */ b	.L80AED0A4
/* 000766 0x80AED058 A65903CE */ sh	$t9, 0X3CE($s2)
.L80AED05C:
/* 000767 0x80AED05C 8E490024 */ lw	$t1, 0X24($s2)
/* 000768 0x80AED060 27A40094 */ addiu	$a0, $sp, 0X94
/* 000769 0x80AED064 27A50088 */ addiu	$a1, $sp, 0X88
/* 000770 0x80AED068 AC890000 */ sw	$t1, 0X0($a0)
/* 000771 0x80AED06C 8E480028 */ lw	$t0, 0X28($s2)
/* 000772 0x80AED070 AC880004 */ sw	$t0, 0X4($a0)
/* 000773 0x80AED074 8E49002C */ lw	$t1, 0X2C($s2)
/* 000774 0x80AED078 AC890008 */ sw	$t1, 0X8($a0)
/* 000775 0x80AED07C 8E0B0000 */ lw	$t3, 0X0($s0)
/* 000776 0x80AED080 ACAB0000 */ sw	$t3, 0X0($a1)
/* 000777 0x80AED084 8E0A0004 */ lw	$t2, 0X4($s0)
/* 000778 0x80AED088 ACAA0004 */ sw	$t2, 0X4($a1)
/* 000779 0x80AED08C 8E0B0008 */ lw	$t3, 0X8($s0)
/* 000780 0x80AED090 ACAB0008 */ sw	$t3, 0X8($a1)
/* 000781 0x80AED094 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000782 0x80AED098 AFA30044 */ sw	$v1, 0X44($sp)
/* 000783 0x80AED09C 8FA30044 */ lw	$v1, 0X44($sp)
/* 000784 0x80AED0A0 A6420032 */ sh	$v0, 0X32($s2)
.L80AED0A4:
/* 000785 0x80AED0A4 906C0B4A */ lbu	$t4, 0XB4A($v1)
/* 000786 0x80AED0A8 8FAE0078 */ lw	$t6, 0X78($sp)
/* 000787 0x80AED0AC 00008825 */ move	$s1, $zero
/* 000788 0x80AED0B0 55800005 */ bnezl	$t4, .L80AED0C8
/* 000789 0x80AED0B4 AE4E03F0 */ sw	$t6, 0X3F0($s2)
/* 000790 0x80AED0B8 8E4D03D0 */ lw	$t5, 0X3D0($s2)
/* 000791 0x80AED0BC 55A0000C */ bnezl	$t5, .L80AED0F0
/* 000792 0x80AED0C0 AFA004C4 */ sw	$zero, 0X4C4($sp)
/* 000793 0x80AED0C4 AE4E03F0 */ sw	$t6, 0X3F0($s2)
.L80AED0C8:
/* 000794 0x80AED0C8 8FAF0074 */ lw	$t7, 0X74($sp)
/* 000795 0x80AED0CC 27B8007C */ addiu	$t8, $sp, 0X7C
/* 000796 0x80AED0D0 AE4F03EC */ sw	$t7, 0X3EC($s2)
/* 000797 0x80AED0D4 8F080000 */ lw	$t0, 0X0($t8)
/* 000798 0x80AED0D8 AE080000 */ sw	$t0, 0X0($s0)
/* 000799 0x80AED0DC 8F190004 */ lw	$t9, 0X4($t8)
/* 000800 0x80AED0E0 AE190004 */ sw	$t9, 0X4($s0)
/* 000801 0x80AED0E4 8F080008 */ lw	$t0, 0X8($t8)
/* 000802 0x80AED0E8 AE080008 */ sw	$t0, 0X8($s0)
/* 000803 0x80AED0EC AFA004C4 */ sw	$zero, 0X4C4($sp)
.L80AED0F0:
/* 000804 0x80AED0F0 964902CA */ lhu	$t1, 0X2CA($s2)
/* 000805 0x80AED0F4 00008025 */ move	$s0, $zero
/* 000806 0x80AED0F8 312A0C00 */ andi	$t2, $t1, 0XC00
/* 000807 0x80AED0FC 15400038 */ bnez	$t2, .L80AED1E0
/* 000808 0x80AED100 00000000 */ nop
/* 000809 0x80AED104 02602025 */ move	$a0, $s3
.L80AED108:
/* 000810 0x80AED108 02202825 */ move	$a1, $s1
/* 000811 0x80AED10C 2406000A */ li	$a2, 0XA
/* 000812 0x80AED110 0C04F658 */ jal	func_ActorCategoryIterateById
/* 000813 0x80AED114 24070005 */ li	$a3, 0X5
/* 000814 0x80AED118 1040002D */ beqz	$v0, .L80AED1D0
/* 000815 0x80AED11C 00408825 */ move	$s1, $v0
/* 000816 0x80AED120 02402025 */ move	$a0, $s2
/* 000817 0x80AED124 0C02DB87 */ jal	Actor_XZDistanceBetweenActors
/* 000818 0x80AED128 00402825 */ move	$a1, $v0
/* 000819 0x80AED12C 3C0142F0 */ lui	$at, 0x42F0
/* 000820 0x80AED130 44815000 */ mtc1	$at, $f10
/* 000821 0x80AED134 02402025 */ move	$a0, $s2
/* 000822 0x80AED138 26300024 */ addiu	$s0, $s1, 0X24
/* 000823 0x80AED13C 460A003E */ c.le.s	$f0, $f10
/* 000824 0x80AED140 00000000 */ nop
/* 000825 0x80AED144 45020022 */ bc1fl .L80AED1D0
/* 000826 0x80AED148 8E31012C */ lw	$s1, 0X12C($s1)
/* 000827 0x80AED14C 0C02DB4B */ jal	Actor_YawToPoint
/* 000828 0x80AED150 02002825 */ move	$a1, $s0
/* 000829 0x80AED154 864B00BE */ lh	$t3, 0XBE($s2)
/* 000830 0x80AED158 02402025 */ move	$a0, $s2
/* 000831 0x80AED15C 02002825 */ move	$a1, $s0
/* 000832 0x80AED160 004B6023 */ subu	$t4, $v0, $t3
/* 000833 0x80AED164 000C6C00 */ sll	$t5, $t4, 16
/* 000834 0x80AED168 000D7403 */ sra	$t6, $t5, 16
/* 000835 0x80AED16C 05C00008 */ bltz	$t6, .L80AED190
/* 000836 0x80AED170 00000000 */ nop
/* 000837 0x80AED174 0C02DB4B */ jal	Actor_YawToPoint
/* 000838 0x80AED178 02402025 */ move	$a0, $s2
/* 000839 0x80AED17C 864F00BE */ lh	$t7, 0XBE($s2)
/* 000840 0x80AED180 004F1823 */ subu	$v1, $v0, $t7
/* 000841 0x80AED184 00031C00 */ sll	$v1, $v1, 16
/* 000842 0x80AED188 10000008 */ b	.L80AED1AC
/* 000843 0x80AED18C 00031C03 */ sra	$v1, $v1, 16
.L80AED190:
/* 000844 0x80AED190 0C02DB4B */ jal	Actor_YawToPoint
/* 000845 0x80AED194 02002825 */ move	$a1, $s0
/* 000846 0x80AED198 865800BE */ lh	$t8, 0XBE($s2)
/* 000847 0x80AED19C 00581823 */ subu	$v1, $v0, $t8
/* 000848 0x80AED1A0 00031C00 */ sll	$v1, $v1, 16
/* 000849 0x80AED1A4 00031C03 */ sra	$v1, $v1, 16
/* 000850 0x80AED1A8 00031823 */ negu	$v1, $v1
.L80AED1AC:
/* 000851 0x80AED1AC 28612001 */ slti	$at, $v1, 0X2001
/* 000852 0x80AED1B0 50200007 */ beqzl	$at, .L80AED1D0
/* 000853 0x80AED1B4 8E31012C */ lw	$s1, 0X12C($s1)
/* 000854 0x80AED1B8 965902CA */ lhu	$t9, 0X2CA($s2)
/* 000855 0x80AED1BC 37280400 */ ori	$t0, $t9, 0X400
/* 000856 0x80AED1C0 A64802CA */ sh	$t0, 0X2CA($s2)
/* 000857 0x80AED1C4 1000001C */ b	.L80AED238
/* 000858 0x80AED1C8 AFB104C4 */ sw	$s1, 0X4C4($sp)
/* 000859 0x80AED1CC 8E31012C */ lw	$s1, 0X12C($s1)
.L80AED1D0:
/* 000860 0x80AED1D0 5620FFCD */ bnezl	$s1, .L80AED108
/* 000861 0x80AED1D4 02602025 */ move	$a0, $s3
/* 000862 0x80AED1D8 10000018 */ b	.L80AED23C
/* 000863 0x80AED1DC 8FA904C4 */ lw	$t1, 0X4C4($sp)
.L80AED1E0:
/* 000864 0x80AED1E0 02602025 */ move	$a0, $s3
.L80AED1E4:
/* 000865 0x80AED1E4 02002825 */ move	$a1, $s0
/* 000866 0x80AED1E8 2406000A */ li	$a2, 0XA
/* 000867 0x80AED1EC 0C04F658 */ jal	func_ActorCategoryIterateById
/* 000868 0x80AED1F0 24070005 */ li	$a3, 0X5
/* 000869 0x80AED1F4 1040000E */ beqz	$v0, .L80AED230
/* 000870 0x80AED1F8 00408025 */ move	$s0, $v0
/* 000871 0x80AED1FC 02402025 */ move	$a0, $s2
/* 000872 0x80AED200 0C02DB87 */ jal	Actor_XZDistanceBetweenActors
/* 000873 0x80AED204 00402825 */ move	$a1, $v0
/* 000874 0x80AED208 3C014320 */ lui	$at, 0x4320
/* 000875 0x80AED20C 44818000 */ mtc1	$at, $f16
/* 000876 0x80AED210 00000000 */ nop
/* 000877 0x80AED214 4610003E */ c.le.s	$f0, $f16
/* 000878 0x80AED218 00000000 */ nop
/* 000879 0x80AED21C 45020004 */ bc1fl .L80AED230
/* 000880 0x80AED220 8E10012C */ lw	$s0, 0X12C($s0)
/* 000881 0x80AED224 10000004 */ b	.L80AED238
/* 000882 0x80AED228 AFB004C4 */ sw	$s0, 0X4C4($sp)
/* 000883 0x80AED22C 8E10012C */ lw	$s0, 0X12C($s0)
.L80AED230:
/* 000884 0x80AED230 5600FFEC */ bnezl	$s0, .L80AED1E4
/* 000885 0x80AED234 02602025 */ move	$a0, $s3
.L80AED238:
/* 000886 0x80AED238 8FA904C4 */ lw	$t1, 0X4C4($sp)
.L80AED23C:
/* 000887 0x80AED23C 5120001A */ beqzl	$t1, .L80AED2A8
/* 000888 0x80AED240 8FA804C4 */ lw	$t0, 0X4C4($sp)
/* 000889 0x80AED244 964A02CA */ lhu	$t2, 0X2CA($s2)
/* 000890 0x80AED248 02402025 */ move	$a0, $s2
/* 000891 0x80AED24C 27A5005C */ addiu	$a1, $sp, 0X5C
/* 000892 0x80AED250 314B0400 */ andi	$t3, $t2, 0X400
/* 000893 0x80AED254 51600014 */ beqzl	$t3, .L80AED2A8
/* 000894 0x80AED258 8FA804C4 */ lw	$t0, 0X4C4($sp)
/* 000895 0x80AED25C 0C02DB9B */ jal	Actor_CalcOffsetOrientedToDrawRotation
/* 000896 0x80AED260 25260024 */ addiu	$a2, $t1, 0X24
/* 000897 0x80AED264 8FAD04C4 */ lw	$t5, 0X4C4($sp)
/* 000898 0x80AED268 240C0002 */ li	$t4, 0X2
/* 000899 0x80AED26C 3C01C1A0 */ lui	$at, 0xC1A0
/* 000900 0x80AED270 A1AC01A7 */ sb	$t4, 0X1A7($t5)
/* 000901 0x80AED274 C7B20064 */ lwc1	$f18, 0X64($sp)
/* 000902 0x80AED278 44812000 */ mtc1	$at, $f4
/* 000903 0x80AED27C 00000000 */ nop
/* 000904 0x80AED280 4604903C */ c.lt.s	$f18, $f4
/* 000905 0x80AED284 00000000 */ nop
/* 000906 0x80AED288 45020007 */ bc1fl .L80AED2A8
/* 000907 0x80AED28C 8FA804C4 */ lw	$t0, 0X4C4($sp)
/* 000908 0x80AED290 964E02CA */ lhu	$t6, 0X2CA($s2)
/* 000909 0x80AED294 31D8FBFF */ andi	$t8, $t6, 0XFBFF
/* 000910 0x80AED298 A65802CA */ sh	$t8, 0X2CA($s2)
/* 000911 0x80AED29C 37190800 */ ori	$t9, $t8, 0X800
/* 000912 0x80AED2A0 A65902CA */ sh	$t9, 0X2CA($s2)
/* 000913 0x80AED2A4 8FA804C4 */ lw	$t0, 0X4C4($sp)
.L80AED2A8:
/* 000914 0x80AED2A8 5100000B */ beqzl	$t0, .L80AED2D8
/* 000915 0x80AED2AC 964C03CE */ lhu	$t4, 0X3CE($s2)
/* 000916 0x80AED2B0 964202CA */ lhu	$v0, 0X2CA($s2)
/* 000917 0x80AED2B4 304A0800 */ andi	$t2, $v0, 0X800
/* 000918 0x80AED2B8 51400007 */ beqzl	$t2, .L80AED2D8
/* 000919 0x80AED2BC 964C03CE */ lhu	$t4, 0X3CE($s2)
/* 000920 0x80AED2C0 810B01A7 */ lb	$t3, 0X1A7($t0)
/* 000921 0x80AED2C4 3049F7FF */ andi	$t1, $v0, 0XF7FF
/* 000922 0x80AED2C8 55600003 */ bnezl	$t3, .L80AED2D8
/* 000923 0x80AED2CC 964C03CE */ lhu	$t4, 0X3CE($s2)
/* 000924 0x80AED2D0 A64902CA */ sh	$t1, 0X2CA($s2)
/* 000925 0x80AED2D4 964C03CE */ lhu	$t4, 0X3CE($s2)
.L80AED2D8:
/* 000926 0x80AED2D8 318D0008 */ andi	$t5, $t4, 0X8
/* 000927 0x80AED2DC 55A00016 */ bnezl	$t5, .L80AED338
/* 000928 0x80AED2E0 00001025 */ move	$v0, $zero
/* 000929 0x80AED2E4 964E02CA */ lhu	$t6, 0X2CA($s2)
/* 000930 0x80AED2E8 3C0142C8 */ lui	$at, 0x42C8
/* 000931 0x80AED2EC 31CF0010 */ andi	$t7, $t6, 0X10
/* 000932 0x80AED2F0 55E00011 */ bnezl	$t7, .L80AED338
/* 000933 0x80AED2F4 00001025 */ move	$v0, $zero
/* 000934 0x80AED2F8 44810000 */ mtc1	$at, $f0
/* 000935 0x80AED2FC C6460098 */ lwc1	$f6, 0X98($s2)
/* 000936 0x80AED300 02402025 */ move	$a0, $s2
/* 000937 0x80AED304 02602825 */ move	$a1, $s3
/* 000938 0x80AED308 4600303C */ c.lt.s	$f6, $f0
/* 000939 0x80AED30C 24184000 */ li	$t8, 0X4000
/* 000940 0x80AED310 24194000 */ li	$t9, 0X4000
/* 000941 0x80AED314 45020008 */ bc1fl .L80AED338
/* 000942 0x80AED318 00001025 */ move	$v0, $zero
/* 000943 0x80AED31C 44060000 */ mfc1	$a2, $f0
/* 000944 0x80AED320 44070000 */ mfc1	$a3, $f0
/* 000945 0x80AED324 AFA00010 */ sw	$zero, 0X10($sp)
/* 000946 0x80AED328 AFB80014 */ sw	$t8, 0X14($sp)
/* 000947 0x80AED32C 0C04FA3E */ jal	func_8013E8F8
/* 000948 0x80AED330 AFB90018 */ sw	$t9, 0X18($sp)
/* 000949 0x80AED334 00001025 */ move	$v0, $zero
.L80AED338:
/* 000950 0x80AED338 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000951 0x80AED33C 8FB0002C */ lw	$s0, 0X2C($sp)
/* 000952 0x80AED340 8FB10030 */ lw	$s1, 0X30($sp)
/* 000953 0x80AED344 8FB20034 */ lw	$s2, 0X34($sp)
/* 000954 0x80AED348 8FB30038 */ lw	$s3, 0X38($sp)
/* 000955 0x80AED34C 03E00008 */ jr	$ra
/* 000956 0x80AED350 27BD04C8 */ addiu	$sp, $sp, 0X4C8

