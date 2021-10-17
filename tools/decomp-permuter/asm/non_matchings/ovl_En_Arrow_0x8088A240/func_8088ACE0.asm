glabel func_8088ACE0
/* 000680 0x8088ACE0 27BDFF50 */ addiu	$sp, $sp, -0XB0
/* 000681 0x8088ACE4 AFB00030 */ sw	$s0, 0X30($sp)
/* 000682 0x8088ACE8 00808025 */ move	$s0, $a0
/* 000683 0x8088ACEC AFBF0034 */ sw	$ra, 0X34($sp)
/* 000684 0x8088ACF0 AFA500B4 */ sw	$a1, 0XB4($sp)
/* 000685 0x8088ACF4 92030260 */ lbu	$v1, 0X260($s0)
/* 000686 0x8088ACF8 00003025 */ move	$a2, $zero
/* 000687 0x8088ACFC 14600003 */ bnez	$v1, .L8088AD0C
/* 000688 0x8088AD00 246EFFFF */ addiu	$t6, $v1, -0X1
/* 000689 0x8088AD04 10000003 */ b	.L8088AD14
/* 000690 0x8088AD08 00001025 */ move	$v0, $zero
.L8088AD0C:
/* 000691 0x8088AD0C A20E0260 */ sb	$t6, 0X260($s0)
/* 000692 0x8088AD10 31C200FF */ andi	$v0, $t6, 0XFF
.L8088AD14:
/* 000693 0x8088AD14 5040000E */ beqzl	$v0, .L8088AD50
/* 000694 0x8088AD18 8618001C */ lh	$t8, 0X1C($s0)
/* 000695 0x8088AD1C 8603001C */ lh	$v1, 0X1C($s0)
/* 000696 0x8088AD20 24010007 */ li	$at, 0X7
/* 000697 0x8088AD24 14610059 */ bne	$v1, $at, .L8088AE8C
/* 000698 0x8088AD28 0003102B */ sltu	$v0, $zero, $v1
/* 000699 0x8088AD2C 920F0262 */ lbu	$t7, 0X262($s0)
/* 000700 0x8088AD30 55E00007 */ bnezl	$t7, .L8088AD50
/* 000701 0x8088AD34 8618001C */ lh	$t8, 0X1C($s0)
/* 000702 0x8088AD38 920601B8 */ lbu	$a2, 0X1B8($s0)
/* 000703 0x8088AD3C 30C60002 */ andi	$a2, $a2, 0X2
/* 000704 0x8088AD40 0006302B */ sltu	$a2, $zero, $a2
/* 000705 0x8088AD44 10C00051 */ beqz	$a2, .L8088AE8C
/* 000706 0x8088AD48 00000000 */ nop
/* 000707 0x8088AD4C 8618001C */ lh	$t8, 0X1C($s0)
.L8088AD50:
/* 000708 0x8088AD50 24010007 */ li	$at, 0X7
/* 000709 0x8088AD54 17010049 */ bne	$t8, $at, .L8088AE7C
/* 000710 0x8088AD58 00000000 */ nop
/* 000711 0x8088AD5C 50C00026 */ beqzl	$a2, .L8088ADF8
/* 000712 0x8088AD60 920D0262 */ lbu	$t5, 0X262($s0)
/* 000713 0x8088AD64 8E1901E0 */ lw	$t9, 0X1E0($s0)
/* 000714 0x8088AD68 24010004 */ li	$at, 0X4
/* 000715 0x8088AD6C 93280014 */ lbu	$t0, 0X14($t9)
/* 000716 0x8088AD70 51010021 */ beql	$t0, $at, .L8088ADF8
/* 000717 0x8088AD74 920D0262 */ lbu	$t5, 0X262($s0)
/* 000718 0x8088AD78 920901B8 */ lbu	$t1, 0X1B8($s0)
/* 000719 0x8088AD7C 312A0004 */ andi	$t2, $t1, 0X4
/* 000720 0x8088AD80 5140001D */ beqzl	$t2, .L8088ADF8
/* 000721 0x8088AD84 920D0262 */ lbu	$t5, 0X262($s0)
/* 000722 0x8088AD88 8E0201AC */ lw	$v0, 0X1AC($s0)
/* 000723 0x8088AD8C 5040001A */ beqzl	$v0, .L8088ADF8
/* 000724 0x8088AD90 920D0262 */ lbu	$t5, 0X262($s0)
/* 000725 0x8088AD94 844B0000 */ lh	$t3, 0X0($v0)
/* 000726 0x8088AD98 24010039 */ li	$at, 0X39
/* 000727 0x8088AD9C 26040024 */ addiu	$a0, $s0, 0X24
/* 000728 0x8088ADA0 51610015 */ beql	$t3, $at, .L8088ADF8
/* 000729 0x8088ADA4 920D0262 */ lbu	$t5, 0X262($s0)
/* 000730 0x8088ADA8 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000731 0x8088ADAC 26050108 */ addiu	$a1, $s0, 0X108
/* 000732 0x8088ADB0 3C0145FA */ lui	$at, 0x45FA
/* 000733 0x8088ADB4 44816000 */ mtc1	$at, $f12
/* 000734 0x8088ADB8 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000735 0x8088ADBC 00000000 */ nop
/* 000736 0x8088ADC0 4600010D */ trunc.w.s	$f4, $f0
/* 000737 0x8088ADC4 860C0032 */ lh	$t4, 0X32($s0)
/* 000738 0x8088ADC8 C6060068 */ lwc1	$f6, 0X68($s0)
/* 000739 0x8088ADCC 34018000 */ ori	$at, $zero, 0X8000
/* 000740 0x8088ADD0 44182000 */ mfc1	$t8, $f4
/* 000741 0x8088ADD4 46003207 */ neg.s	$f8, $f6
/* 000742 0x8088ADD8 240BFFFF */ li	$t3, -0X1
/* 000743 0x8088ADDC 03014821 */ addu	$t1, $t8, $at
/* 000744 0x8088ADE0 01895021 */ addu	$t2, $t4, $t1
/* 000745 0x8088ADE4 A60A0032 */ sh	$t2, 0X32($s0)
/* 000746 0x8088ADE8 E6080068 */ swc1	$f8, 0X68($s0)
/* 000747 0x8088ADEC 1000020B */ b	.L8088B61C
/* 000748 0x8088ADF0 A20B0149 */ sb	$t3, 0X149($s0)
/* 000749 0x8088ADF4 920D0262 */ lbu	$t5, 0X262($s0)
.L8088ADF8:
/* 000750 0x8088ADF8 8FA400B4 */ lw	$a0, 0XB4($sp)
/* 000751 0x8088ADFC 26050024 */ addiu	$a1, $s0, 0X24
/* 000752 0x8088AE00 15A00003 */ bnez	$t5, .L8088AE10
/* 000753 0x8088AE04 00000000 */ nop
/* 000754 0x8088AE08 50C00004 */ beqzl	$a2, .L8088AE1C
/* 000755 0x8088AE0C 26050024 */ addiu	$a1, $s0, 0X24
.L8088AE10:
/* 000756 0x8088AE10 0C02C976 */ jal	EffectSS_SpawnStone1
/* 000757 0x8088AE14 00003025 */ move	$a2, $zero
/* 000758 0x8088AE18 26050024 */ addiu	$a1, $s0, 0X24
.L8088AE1C:
/* 000759 0x8088AE1C AFA50040 */ sw	$a1, 0X40($sp)
/* 000760 0x8088AE20 8FA400B4 */ lw	$a0, 0XB4($sp)
/* 000761 0x8088AE24 24060014 */ li	$a2, 0X14
/* 000762 0x8088AE28 0C03C15A */ jal	func_800F0568
/* 000763 0x8088AE2C 24071854 */ li	$a3, 0X1854
/* 000764 0x8088AE30 920E0262 */ lbu	$t6, 0X262($s0)
/* 000765 0x8088AE34 11C00011 */ beqz	$t6, .L8088AE7C
/* 000766 0x8088AE38 00000000 */ nop
/* 000767 0x8088AE3C 920F0084 */ lbu	$t7, 0X84($s0)
/* 000768 0x8088AE40 24010032 */ li	$at, 0X32
/* 000769 0x8088AE44 27A40084 */ addiu	$a0, $sp, 0X84
/* 000770 0x8088AE48 15E1000C */ bne	$t7, $at, .L8088AE7C
/* 000771 0x8088AE4C 00000000 */ nop
/* 000772 0x8088AE50 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000773 0x8088AE54 8FA50040 */ lw	$a1, 0X40($sp)
/* 000774 0x8088AE58 8E18007C */ lw	$t8, 0X7C($s0)
/* 000775 0x8088AE5C 8FA400B4 */ lw	$a0, 0XB4($sp)
/* 000776 0x8088AE60 24050026 */ li	$a1, 0X26
/* 000777 0x8088AE64 AFB80090 */ sw	$t8, 0X90($sp)
/* 000778 0x8088AE68 C60A0144 */ lwc1	$f10, 0X144($s0)
/* 000779 0x8088AE6C 24060080 */ li	$a2, 0X80
/* 000780 0x8088AE70 27A70084 */ addiu	$a3, $sp, 0X84
/* 000781 0x8088AE74 0C02C135 */ jal	EffectSS_LoadParticle
/* 000782 0x8088AE78 E7AA0094 */ swc1	$f10, 0X94($sp)
.L8088AE7C:
/* 000783 0x8088AE7C 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000784 0x8088AE80 02002025 */ move	$a0, $s0
/* 000785 0x8088AE84 100001E6 */ b	.L8088B620
/* 000786 0x8088AE88 8FBF0034 */ lw	$ra, 0X34($sp)
.L8088AE8C:
/* 000787 0x8088AE8C 10400007 */ beqz	$v0, .L8088AEAC
/* 000788 0x8088AE90 28610006 */ slti	$at, $v1, 0X6
/* 000789 0x8088AE94 28620008 */ slti	$v0, $v1, 0X8
/* 000790 0x8088AE98 10400004 */ beqz	$v0, .L8088AEAC
/* 000791 0x8088AE9C 00000000 */ nop
/* 000792 0x8088AEA0 920201B8 */ lbu	$v0, 0X1B8($s0)
/* 000793 0x8088AEA4 30420002 */ andi	$v0, $v0, 0X2
/* 000794 0x8088AEA8 0002102B */ sltu	$v0, $zero, $v0
.L8088AEAC:
/* 000795 0x8088AEAC 14400005 */ bnez	$v0, .L8088AEC4
/* 000796 0x8088AEB0 00000000 */ nop
/* 000797 0x8088AEB4 92190262 */ lbu	$t9, 0X262($s0)
/* 000798 0x8088AEB8 02002025 */ move	$a0, $s0
/* 000799 0x8088AEBC 132000A4 */ beqz	$t9, .L8088B150
/* 000800 0x8088AEC0 00000000 */ nop
.L8088AEC4:
/* 000801 0x8088AEC4 14200040 */ bnez	$at, .L8088AFC8
/* 000802 0x8088AEC8 8FA400B4 */ lw	$a0, 0XB4($sp)
/* 000803 0x8088AECC 10400013 */ beqz	$v0, .L8088AF1C
/* 000804 0x8088AED0 24071825 */ li	$a3, 0X1825
/* 000805 0x8088AED4 C6100024 */ lwc1	$f16, 0X24($s0)
/* 000806 0x8088AED8 C6120108 */ lwc1	$f18, 0X108($s0)
/* 000807 0x8088AEDC 3C013F00 */ lui	$at, 0x3F00
/* 000808 0x8088AEE0 44810000 */ mtc1	$at, $f0
/* 000809 0x8088AEE4 46128100 */ add.s	$f4, $f16, $f18
/* 000810 0x8088AEE8 C6080028 */ lwc1	$f8, 0X28($s0)
/* 000811 0x8088AEEC C60A010C */ lwc1	$f10, 0X10C($s0)
/* 000812 0x8088AEF0 8603001C */ lh	$v1, 0X1C($s0)
/* 000813 0x8088AEF4 46002182 */ mul.s	$f6, $f4, $f0
/* 000814 0x8088AEF8 460A4400 */ add.s	$f16, $f8, $f10
/* 000815 0x8088AEFC C604002C */ lwc1	$f4, 0X2C($s0)
/* 000816 0x8088AF00 46008482 */ mul.s	$f18, $f16, $f0
/* 000817 0x8088AF04 E6060024 */ swc1	$f6, 0X24($s0)
/* 000818 0x8088AF08 C6060110 */ lwc1	$f6, 0X110($s0)
/* 000819 0x8088AF0C 46062200 */ add.s	$f8, $f4, $f6
/* 000820 0x8088AF10 E6120028 */ swc1	$f18, 0X28($s0)
/* 000821 0x8088AF14 46004282 */ mul.s	$f10, $f8, $f0
/* 000822 0x8088AF18 E60A002C */ swc1	$f10, 0X2C($s0)
.L8088AF1C:
/* 000823 0x8088AF1C 24010008 */ li	$at, 0X8
/* 000824 0x8088AF20 1461001A */ bne	$v1, $at, .L8088AF8C
/* 000825 0x8088AF24 3C0C801F */ lui	$t4, %hi(gStaticContext)
/* 000826 0x8088AF28 8D8C3F60 */ lw	$t4, %lo(gStaticContext)($t4)
/* 000827 0x8088AF2C 2408FFFF */ li	$t0, -0X1
/* 000828 0x8088AF30 44802000 */ mtc1	$zero, $f4
/* 000829 0x8088AF34 A5880D38 */ sh	$t0, 0XD38($t4)
/* 000830 0x8088AF38 C6100028 */ lwc1	$f16, 0X28($s0)
/* 000831 0x8088AF3C 8E070024 */ lw	$a3, 0X24($s0)
/* 000832 0x8088AF40 8FA500B4 */ lw	$a1, 0XB4($sp)
/* 000833 0x8088AF44 E7B00010 */ swc1	$f16, 0X10($sp)
/* 000834 0x8088AF48 C612002C */ lwc1	$f18, 0X2C($s0)
/* 000835 0x8088AF4C AFA00020 */ sw	$zero, 0X20($sp)
/* 000836 0x8088AF50 AFA0001C */ sw	$zero, 0X1C($sp)
/* 000837 0x8088AF54 AFA00018 */ sw	$zero, 0X18($sp)
/* 000838 0x8088AF58 E7B20014 */ swc1	$f18, 0X14($sp)
/* 000839 0x8088AF5C C6060070 */ lwc1	$f6, 0X70($s0)
/* 000840 0x8088AF60 24060034 */ li	$a2, 0X34
/* 000841 0x8088AF64 00005025 */ move	$t2, $zero
/* 000842 0x8088AF68 46062032 */ c.eq.s	$f4, $f6
/* 000843 0x8088AF6C 24A41CA0 */ addiu	$a0, $a1, 0X1CA0
/* 000844 0x8088AF70 45000002 */ bc1f .L8088AF7C
/* 000845 0x8088AF74 00000000 */ nop
/* 000846 0x8088AF78 240A0001 */ li	$t2, 0X1
.L8088AF7C:
/* 000847 0x8088AF7C 0C02EB18 */ jal	Actor_Spawn
/* 000848 0x8088AF80 AFAA0024 */ sw	$t2, 0X24($sp)
/* 000849 0x8088AF84 10000001 */ b	.L8088AF8C
/* 000850 0x8088AF88 2407182B */ li	$a3, 0X182B
.L8088AF8C:
/* 000851 0x8088AF8C 26050024 */ addiu	$a1, $s0, 0X24
/* 000852 0x8088AF90 AFA50040 */ sw	$a1, 0X40($sp)
/* 000853 0x8088AF94 8FA400B4 */ lw	$a0, 0XB4($sp)
/* 000854 0x8088AF98 00003025 */ move	$a2, $zero
/* 000855 0x8088AF9C 0C02C976 */ jal	EffectSS_SpawnStone1
/* 000856 0x8088AFA0 A7A70082 */ sh	$a3, 0X82($sp)
/* 000857 0x8088AFA4 97A70082 */ lhu	$a3, 0X82($sp)
/* 000858 0x8088AFA8 8FA400B4 */ lw	$a0, 0XB4($sp)
/* 000859 0x8088AFAC 8FA50040 */ lw	$a1, 0X40($sp)
/* 000860 0x8088AFB0 0C03C15A */ jal	func_800F0568
/* 000861 0x8088AFB4 24060014 */ li	$a2, 0X14
/* 000862 0x8088AFB8 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000863 0x8088AFBC 02002025 */ move	$a0, $s0
/* 000864 0x8088AFC0 10000124 */ b	.L8088B454
/* 000865 0x8088AFC4 8E020264 */ lw	$v0, 0X264($s0)
.L8088AFC8:
/* 000866 0x8088AFC8 26070024 */ addiu	$a3, $s0, 0X24
/* 000867 0x8088AFCC AFA70040 */ sw	$a3, 0X40($sp)
/* 000868 0x8088AFD0 00002825 */ move	$a1, $zero
/* 000869 0x8088AFD4 24060096 */ li	$a2, 0X96
/* 000870 0x8088AFD8 0C02C9AA */ jal	func_800B26A8
/* 000871 0x8088AFDC AFA20050 */ sw	$v0, 0X50($sp)
/* 000872 0x8088AFE0 8FA20050 */ lw	$v0, 0X50($sp)
/* 000873 0x8088AFE4 5040003D */ beqzl	$v0, .L8088B0DC
/* 000874 0x8088AFE8 92190262 */ lbu	$t9, 0X262($s0)
/* 000875 0x8088AFEC 8E0B01E0 */ lw	$t3, 0X1E0($s0)
/* 000876 0x8088AFF0 24010004 */ li	$at, 0X4
/* 000877 0x8088AFF4 916D0014 */ lbu	$t5, 0X14($t3)
/* 000878 0x8088AFF8 51A10038 */ beql	$t5, $at, .L8088B0DC
/* 000879 0x8088AFFC 92190262 */ lbu	$t9, 0X262($s0)
/* 000880 0x8088B000 8E0201AC */ lw	$v0, 0X1AC($s0)
/* 000881 0x8088B004 8C4E0138 */ lw	$t6, 0X138($v0)
/* 000882 0x8088B008 51C00024 */ beqzl	$t6, .L8088B09C
/* 000883 0x8088B00C 920D0261 */ lbu	$t5, 0X261($s0)
/* 000884 0x8088B010 920F01B8 */ lbu	$t7, 0X1B8($s0)
/* 000885 0x8088B014 31F80004 */ andi	$t8, $t7, 0X4
/* 000886 0x8088B018 57000020 */ bnezl	$t8, .L8088B09C
/* 000887 0x8088B01C 920D0261 */ lbu	$t5, 0X261($s0)
/* 000888 0x8088B020 8C590004 */ lw	$t9, 0X4($v0)
/* 000889 0x8088B024 02002025 */ move	$a0, $s0
/* 000890 0x8088B028 33284000 */ andi	$t0, $t9, 0X4000
/* 000891 0x8088B02C 5100001B */ beqzl	$t0, .L8088B09C
/* 000892 0x8088B030 920D0261 */ lbu	$t5, 0X261($s0)
/* 000893 0x8088B034 AE020264 */ sw	$v0, 0X264($s0)
/* 000894 0x8088B038 AFA2007C */ sw	$v0, 0X7C($sp)
/* 000895 0x8088B03C 0C222A25 */ jal	func_8088A894
/* 000896 0x8088B040 8FA500B4 */ lw	$a1, 0XB4($sp)
/* 000897 0x8088B044 8FA2007C */ lw	$v0, 0X7C($sp)
/* 000898 0x8088B048 8FA50040 */ lw	$a1, 0X40($sp)
/* 000899 0x8088B04C 26060268 */ addiu	$a2, $s0, 0X268
/* 000900 0x8088B050 0C03FD7D */ jal	Math_Vec3f_Diff
/* 000901 0x8088B054 24440024 */ addiu	$a0, $v0, 0X24
/* 000902 0x8088B058 8FA2007C */ lw	$v0, 0X7C($sp)
/* 000903 0x8088B05C 3C013F00 */ lui	$at, 0x3F00
/* 000904 0x8088B060 44810000 */ mtc1	$at, $f0
/* 000905 0x8088B064 8C4C0004 */ lw	$t4, 0X4($v0)
/* 000906 0x8088B068 35898000 */ ori	$t1, $t4, 0X8000
/* 000907 0x8088B06C AC490004 */ sw	$t1, 0X4($v0)
/* 000908 0x8088B070 C6080070 */ lwc1	$f8, 0X70($s0)
/* 000909 0x8088B074 C6100068 */ lwc1	$f16, 0X68($s0)
/* 000910 0x8088B078 920A01B8 */ lbu	$t2, 0X1B8($s0)
/* 000911 0x8088B07C 46004282 */ mul.s	$f10, $f8, $f0
/* 000912 0x8088B080 314BFFFD */ andi	$t3, $t2, 0XFFFD
/* 000913 0x8088B084 46008482 */ mul.s	$f18, $f16, $f0
/* 000914 0x8088B088 A20B01B8 */ sb	$t3, 0X1B8($s0)
/* 000915 0x8088B08C E60A0070 */ swc1	$f10, 0X70($s0)
/* 000916 0x8088B090 100000EF */ b	.L8088B450
/* 000917 0x8088B094 E6120068 */ swc1	$f18, 0X68($s0)
/* 000918 0x8088B098 920D0261 */ lbu	$t5, 0X261($s0)
.L8088B09C:
/* 000919 0x8088B09C 26050108 */ addiu	$a1, $s0, 0X108
/* 000920 0x8088B0A0 35AF0001 */ ori	$t7, $t5, 0X1
/* 000921 0x8088B0A4 A20F0261 */ sb	$t7, 0X261($s0)
/* 000922 0x8088B0A8 35F80002 */ ori	$t8, $t7, 0X2
/* 000923 0x8088B0AC A2180261 */ sb	$t8, 0X261($s0)
/* 000924 0x8088B0B0 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000925 0x8088B0B4 8FA40040 */ lw	$a0, 0X40($sp)
/* 000926 0x8088B0B8 8FA400B4 */ lw	$a0, 0XB4($sp)
/* 000927 0x8088B0BC 0C2229F6 */ jal	func_8088A7D8
/* 000928 0x8088B0C0 02002825 */ move	$a1, $s0
/* 000929 0x8088B0C4 02002025 */ move	$a0, $s0
/* 000930 0x8088B0C8 0C02E3B2 */ jal	func_800B8EC8
/* 000931 0x8088B0CC 24051814 */ li	$a1, 0X1814
/* 000932 0x8088B0D0 100000E0 */ b	.L8088B454
/* 000933 0x8088B0D4 8E020264 */ lw	$v0, 0X264($s0)
/* 000934 0x8088B0D8 92190262 */ lbu	$t9, 0X262($s0)
.L8088B0DC:
/* 000935 0x8088B0DC 3C088089 */ lui	$t0, %hi(func_8088B630)
/* 000936 0x8088B0E0 2508B630 */ addiu	$t0, $t0, %lo(func_8088B630)
/* 000937 0x8088B0E4 132000DA */ beqz	$t9, .L8088B450
/* 000938 0x8088B0E8 26040144 */ addiu	$a0, $s0, 0X144
/* 000939 0x8088B0EC 3C050401 */ lui	$a1, 0x0401
/* 000940 0x8088B0F0 AE080274 */ sw	$t0, 0X274($s0)
/* 000941 0x8088B0F4 0C04DD0C */ jal	SkelAnime_ChangeAnimDefaultStop
/* 000942 0x8088B0F8 24A528BC */ addiu	$a1, $a1, 0X28BC
/* 000943 0x8088B0FC 860C001C */ lh	$t4, 0X1C($s0)
/* 000944 0x8088B100 2409003C */ li	$t1, 0X3C
/* 000945 0x8088B104 240A0014 */ li	$t2, 0X14
/* 000946 0x8088B108 05800003 */ bltz	$t4, .L8088B118
/* 000947 0x8088B10C 02002025 */ move	$a0, $s0
/* 000948 0x8088B110 10000002 */ b	.L8088B11C
/* 000949 0x8088B114 A2090260 */ sb	$t1, 0X260($s0)
.L8088B118:
/* 000950 0x8088B118 A20A0260 */ sb	$t2, 0X260($s0)
.L8088B11C:
/* 000951 0x8088B11C 8603001C */ lh	$v1, 0X1C($s0)
/* 000952 0x8088B120 28610003 */ slti	$at, $v1, 0X3
/* 000953 0x8088B124 14200004 */ bnez	$at, .L8088B138
/* 000954 0x8088B128 28610006 */ slti	$at, $v1, 0X6
/* 000955 0x8088B12C 10200002 */ beqz	$at, .L8088B138
/* 000956 0x8088B130 00000000 */ nop
/* 000957 0x8088B134 AE00013C */ sw	$zero, 0X13C($s0)
.L8088B138:
/* 000958 0x8088B138 0C02E3B2 */ jal	func_800B8EC8
/* 000959 0x8088B13C 24051815 */ li	$a1, 0X1815
/* 000960 0x8088B140 920B0261 */ lbu	$t3, 0X261($s0)
/* 000961 0x8088B144 356D0001 */ ori	$t5, $t3, 0X1
/* 000962 0x8088B148 100000C1 */ b	.L8088B450
/* 000963 0x8088B14C A20D0261 */ sb	$t5, 0X261($s0)
.L8088B150:
/* 000964 0x8088B150 0C222AA6 */ jal	func_8088AA98
/* 000965 0x8088B154 8FA500B4 */ lw	$a1, 0XB4($sp)
/* 000966 0x8088B158 860E001C */ lh	$t6, 0X1C($s0)
/* 000967 0x8088B15C 24010007 */ li	$at, 0X7
/* 000968 0x8088B160 55C10070 */ bnel	$t6, $at, .L8088B324
/* 000969 0x8088B164 920F0260 */ lbu	$t7, 0X260($s0)
/* 000970 0x8088B168 820F0149 */ lb	$t7, 0X149($s0)
/* 000971 0x8088B16C 55E00027 */ bnezl	$t7, .L8088B20C
/* 000972 0x8088B170 3C063ECC */ lui	$a2, 0x3ECC
/* 000973 0x8088B174 C60C0070 */ lwc1	$f12, 0X70($s0)
/* 000974 0x8088B178 C6020068 */ lwc1	$f2, 0X68($s0)
/* 000975 0x8088B17C 460C6102 */ mul.s	$f4, $f12, $f12
/* 000976 0x8088B180 00000000 */ nop
/* 000977 0x8088B184 46021182 */ mul.s	$f6, $f2, $f2
/* 000978 0x8088B188 46062000 */ add.s	$f0, $f4, $f6
/* 000979 0x8088B18C 46000004 */ sqrt.s	$f0, $f0
/* 000980 0x8088B190 E7A00078 */ swc1	$f0, 0X78($sp)
/* 000981 0x8088B194 0C03FB61 */ jal	Math_Sins
/* 000982 0x8088B198 86040032 */ lh	$a0, 0X32($s0)
/* 000983 0x8088B19C C6080070 */ lwc1	$f8, 0X70($s0)
/* 000984 0x8088B1A0 46080282 */ mul.s	$f10, $f0, $f8
/* 000985 0x8088B1A4 E7AA0074 */ swc1	$f10, 0X74($sp)
/* 000986 0x8088B1A8 0C03FB51 */ jal	Math_Coss
/* 000987 0x8088B1AC 86040032 */ lh	$a0, 0X32($s0)
/* 000988 0x8088B1B0 3C014120 */ lui	$at, 0x4120
/* 000989 0x8088B1B4 44819000 */ mtc1	$at, $f18
/* 000990 0x8088B1B8 C7A40078 */ lwc1	$f4, 0X78($sp)
/* 000991 0x8088B1BC C6100070 */ lwc1	$f16, 0X70($s0)
/* 000992 0x8088B1C0 C7A80074 */ lwc1	$f8, 0X74($sp)
/* 000993 0x8088B1C4 46049083 */ div.s	$f2, $f18, $f4
/* 000994 0x8088B1C8 C6060024 */ lwc1	$f6, 0X24($s0)
/* 000995 0x8088B1CC C6040068 */ lwc1	$f4, 0X68($s0)
/* 000996 0x8088B1D0 C6120028 */ lwc1	$f18, 0X28($s0)
/* 000997 0x8088B1D4 46100302 */ mul.s	$f12, $f0, $f16
/* 000998 0x8088B1D8 24180001 */ li	$t8, 0X1
/* 000999 0x8088B1DC A2180149 */ sb	$t8, 0X149($s0)
/* 001000 0x8088B1E0 46024282 */ mul.s	$f10, $f8, $f2
/* 001001 0x8088B1E4 460A3401 */ sub.s	$f16, $f6, $f10
/* 001002 0x8088B1E8 46022202 */ mul.s	$f8, $f4, $f2
/* 001003 0x8088B1EC C60A002C */ lwc1	$f10, 0X2C($s0)
/* 001004 0x8088B1F0 E6100108 */ swc1	$f16, 0X108($s0)
/* 001005 0x8088B1F4 46026402 */ mul.s	$f16, $f12, $f2
/* 001006 0x8088B1F8 46089181 */ sub.s	$f6, $f18, $f8
/* 001007 0x8088B1FC 46105101 */ sub.s	$f4, $f10, $f16
/* 001008 0x8088B200 E606010C */ swc1	$f6, 0X10C($s0)
/* 001009 0x8088B204 E6040110 */ swc1	$f4, 0X110($s0)
/* 001010 0x8088B208 3C063ECC */ lui	$a2, 0x3ECC
.L8088B20C:
/* 001011 0x8088B20C 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 001012 0x8088B210 26040144 */ addiu	$a0, $s0, 0X144
/* 001013 0x8088B214 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 001014 0x8088B218 3C053F80 */ lui	$a1, 0x3F80
/* 001015 0x8088B21C 10400003 */ beqz	$v0, .L8088B22C
/* 001016 0x8088B220 3C0144AF */ lui	$at, 0x44AF
/* 001017 0x8088B224 10000039 */ b	.L8088B30C
/* 001018 0x8088B228 A2000260 */ sb	$zero, 0X260($s0)
.L8088B22C:
/* 001019 0x8088B22C 44816000 */ mtc1	$at, $f12
/* 001020 0x8088B230 0C05E565 */ jal	randZeroOneScaled
/* 001021 0x8088B234 00000000 */ nop
/* 001022 0x8088B238 3C0143FA */ lui	$at, 0x43FA
/* 001023 0x8088B23C 44814000 */ mtc1	$at, $f8
/* 001024 0x8088B240 C6120144 */ lwc1	$f18, 0X144($s0)
/* 001025 0x8088B244 860A014A */ lh	$t2, 0X14A($s0)
/* 001026 0x8088B248 46004180 */ add.s	$f6, $f8, $f0
/* 001027 0x8088B24C 46069282 */ mul.s	$f10, $f18, $f6
/* 001028 0x8088B250 4600540D */ trunc.w.s	$f16, $f10
/* 001029 0x8088B254 44098000 */ mfc1	$t1, $f16
/* 001030 0x8088B258 00000000 */ nop
/* 001031 0x8088B25C 01495821 */ addu	$t3, $t2, $t1
/* 001032 0x8088B260 A60B014A */ sh	$t3, 0X14A($s0)
/* 001033 0x8088B264 0C03FB61 */ jal	Math_Sins
/* 001034 0x8088B268 8604014A */ lh	$a0, 0X14A($s0)
/* 001035 0x8088B26C 3C0143FA */ lui	$at, 0x43FA
/* 001036 0x8088B270 44812000 */ mtc1	$at, $f4
/* 001037 0x8088B274 860D0030 */ lh	$t5, 0X30($s0)
/* 001038 0x8088B278 3C0144AF */ lui	$at, 0x44AF
/* 001039 0x8088B27C 46002202 */ mul.s	$f8, $f4, $f0
/* 001040 0x8088B280 44816000 */ mtc1	$at, $f12
/* 001041 0x8088B284 4600448D */ trunc.w.s	$f18, $f8
/* 001042 0x8088B288 44199000 */ mfc1	$t9, $f18
/* 001043 0x8088B28C 00000000 */ nop
/* 001044 0x8088B290 01B94021 */ addu	$t0, $t5, $t9
/* 001045 0x8088B294 A6080030 */ sh	$t0, 0X30($s0)
/* 001046 0x8088B298 860C0030 */ lh	$t4, 0X30($s0)
/* 001047 0x8088B29C 0C05E565 */ jal	randZeroOneScaled
/* 001048 0x8088B2A0 A60C00BC */ sh	$t4, 0XBC($s0)
/* 001049 0x8088B2A4 3C0143FA */ lui	$at, 0x43FA
/* 001050 0x8088B2A8 44815000 */ mtc1	$at, $f10
/* 001051 0x8088B2AC C6060144 */ lwc1	$f6, 0X144($s0)
/* 001052 0x8088B2B0 860F014C */ lh	$t7, 0X14C($s0)
/* 001053 0x8088B2B4 46005400 */ add.s	$f16, $f10, $f0
/* 001054 0x8088B2B8 46103102 */ mul.s	$f4, $f6, $f16
/* 001055 0x8088B2BC 4600220D */ trunc.w.s	$f8, $f4
/* 001056 0x8088B2C0 440E4000 */ mfc1	$t6, $f8
/* 001057 0x8088B2C4 00000000 */ nop
/* 001058 0x8088B2C8 01EEC021 */ addu	$t8, $t7, $t6
/* 001059 0x8088B2CC A618014C */ sh	$t8, 0X14C($s0)
/* 001060 0x8088B2D0 0C03FB61 */ jal	Math_Sins
/* 001061 0x8088B2D4 8604014C */ lh	$a0, 0X14C($s0)
/* 001062 0x8088B2D8 3C0143FA */ lui	$at, 0x43FA
/* 001063 0x8088B2DC 44819000 */ mtc1	$at, $f18
/* 001064 0x8088B2E0 860D0032 */ lh	$t5, 0X32($s0)
/* 001065 0x8088B2E4 02002025 */ move	$a0, $s0
/* 001066 0x8088B2E8 46009282 */ mul.s	$f10, $f18, $f0
/* 001067 0x8088B2EC 4600518D */ trunc.w.s	$f6, $f10
/* 001068 0x8088B2F0 440A3000 */ mfc1	$t2, $f6
/* 001069 0x8088B2F4 00000000 */ nop
/* 001070 0x8088B2F8 01AA4821 */ addu	$t1, $t5, $t2
/* 001071 0x8088B2FC A6090032 */ sh	$t1, 0X32($s0)
/* 001072 0x8088B300 860B0032 */ lh	$t3, 0X32($s0)
/* 001073 0x8088B304 0C222945 */ jal	func_8088A514
/* 001074 0x8088B308 A60B00BE */ sh	$t3, 0XBE($s0)
.L8088B30C:
/* 001075 0x8088B30C 02002025 */ move	$a0, $s0
/* 001076 0x8088B310 0C02E404 */ jal	func_800B9010
/* 001077 0x8088B314 2405105A */ li	$a1, 0X105A
/* 001078 0x8088B318 10000008 */ b	.L8088B33C
/* 001079 0x8088B31C 26050024 */ addiu	$a1, $s0, 0X24
/* 001080 0x8088B320 920F0260 */ lbu	$t7, 0X260($s0)
.L8088B324:
/* 001081 0x8088B324 29E10007 */ slti	$at, $t7, 0X7
/* 001082 0x8088B328 10200003 */ beqz	$at, .L8088B338
/* 001083 0x8088B32C 3C018089 */ lui	$at, %hi(D_8088C3C4)
/* 001084 0x8088B330 C430C3C4 */ lwc1	$f16, %lo(D_8088C3C4)($at)
/* 001085 0x8088B334 E6100074 */ swc1	$f16, 0X74($s0)
.L8088B338:
/* 001086 0x8088B338 26050024 */ addiu	$a1, $s0, 0X24
.L8088B33C:
/* 001087 0x8088B33C AFA50040 */ sw	$a1, 0X40($sp)
/* 001088 0x8088B340 0C03FD43 */ jal	Math_Vec3f_Copy
/* 001089 0x8088B344 26040228 */ addiu	$a0, $s0, 0X228
/* 001090 0x8088B348 44802000 */ mtc1	$zero, $f4
/* 001091 0x8088B34C C6080070 */ lwc1	$f8, 0X70($s0)
/* 001092 0x8088B350 3C013F80 */ lui	$at, 0x3F80
/* 001093 0x8088B354 46082032 */ c.eq.s	$f4, $f8
/* 001094 0x8088B358 00000000 */ nop
/* 001095 0x8088B35C 45000010 */ bc1f .L8088B3A0
/* 001096 0x8088B360 00000000 */ nop
/* 001097 0x8088B364 C6120068 */ lwc1	$f18, 0X68($s0)
/* 001098 0x8088B368 44815000 */ mtc1	$at, $f10
/* 001099 0x8088B36C C6000078 */ lwc1	$f0, 0X78($s0)
/* 001100 0x8088B370 460A9181 */ sub.s	$f6, $f18, $f10
/* 001101 0x8088B374 E6060068 */ swc1	$f6, 0X68($s0)
/* 001102 0x8088B378 C6100068 */ lwc1	$f16, 0X68($s0)
/* 001103 0x8088B37C 4600803C */ c.lt.s	$f16, $f0
/* 001104 0x8088B380 00000000 */ nop
/* 001105 0x8088B384 45000002 */ bc1f .L8088B390
/* 001106 0x8088B388 00000000 */ nop
/* 001107 0x8088B38C E6000068 */ swc1	$f0, 0X68($s0)
.L8088B390:
/* 001108 0x8088B390 0C02DA6B */ jal	Actor_ApplyMovement
/* 001109 0x8088B394 02002025 */ move	$a0, $s0
/* 001110 0x8088B398 10000004 */ b	.L8088B3AC
/* 001111 0x8088B39C 8FA400B4 */ lw	$a0, 0XB4($sp)
.L8088B3A0:
/* 001112 0x8088B3A0 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 001113 0x8088B3A4 02002025 */ move	$a0, $s0
/* 001114 0x8088B3A8 8FA400B4 */ lw	$a0, 0XB4($sp)
.L8088B3AC:
/* 001115 0x8088B3AC 260E007C */ addiu	$t6, $s0, 0X7C
/* 001116 0x8088B3B0 24180001 */ li	$t8, 0X1
/* 001117 0x8088B3B4 24190001 */ li	$t9, 0X1
/* 001118 0x8088B3B8 24080001 */ li	$t0, 0X1
/* 001119 0x8088B3BC 240C0001 */ li	$t4, 0X1
/* 001120 0x8088B3C0 27AD00A8 */ addiu	$t5, $sp, 0XA8
/* 001121 0x8088B3C4 AFAD0024 */ sw	$t5, 0X24($sp)
/* 001122 0x8088B3C8 AFAC0020 */ sw	$t4, 0X20($sp)
/* 001123 0x8088B3CC AFA8001C */ sw	$t0, 0X1C($sp)
/* 001124 0x8088B3D0 AFB90018 */ sw	$t9, 0X18($sp)
/* 001125 0x8088B3D4 AFB80014 */ sw	$t8, 0X14($sp)
/* 001126 0x8088B3D8 AFAE0010 */ sw	$t6, 0X10($sp)
/* 001127 0x8088B3DC 26050108 */ addiu	$a1, $s0, 0X108
/* 001128 0x8088B3E0 8FA60040 */ lw	$a2, 0X40($sp)
/* 001129 0x8088B3E4 27A7009C */ addiu	$a3, $sp, 0X9C
/* 001130 0x8088B3E8 0C0315DB */ jal	func_800C576C
/* 001131 0x8088B3EC 24840830 */ addiu	$a0, $a0, 0X830
/* 001132 0x8088B3F0 304A00FF */ andi	$t2, $v0, 0XFF
/* 001133 0x8088B3F4 1140000D */ beqz	$t2, .L8088B42C
/* 001134 0x8088B3F8 A2020262 */ sb	$v0, 0X262($s0)
/* 001135 0x8088B3FC 8E06007C */ lw	$a2, 0X7C($s0)
/* 001136 0x8088B400 27A9009C */ addiu	$t1, $sp, 0X9C
/* 001137 0x8088B404 AFA90010 */ sw	$t1, 0X10($sp)
/* 001138 0x8088B408 8FA400B4 */ lw	$a0, 0XB4($sp)
/* 001139 0x8088B40C 02002825 */ move	$a1, $s0
/* 001140 0x8088B410 0C02E42B */ jal	func_800B90AC
/* 001141 0x8088B414 8FA700A8 */ lw	$a3, 0XA8($sp)
/* 001142 0x8088B418 8FA40040 */ lw	$a0, 0X40($sp)
/* 001143 0x8088B41C 0C03FD43 */ jal	Math_Vec3f_Copy
/* 001144 0x8088B420 27A5009C */ addiu	$a1, $sp, 0X9C
/* 001145 0x8088B424 8FAB00A8 */ lw	$t3, 0XA8($sp)
/* 001146 0x8088B428 A20B0084 */ sb	$t3, 0X84($s0)
.L8088B42C:
/* 001147 0x8088B42C 860F001C */ lh	$t7, 0X1C($s0)
/* 001148 0x8088B430 29E10006 */ slti	$at, $t7, 0X6
/* 001149 0x8088B434 50200007 */ beqzl	$at, .L8088B454
/* 001150 0x8088B438 8E020264 */ lw	$v0, 0X264($s0)
/* 001151 0x8088B43C C60E0068 */ lwc1	$f14, 0X68($s0)
/* 001152 0x8088B440 C60C0070 */ lwc1	$f12, 0X70($s0)
/* 001153 0x8088B444 0C060040 */ jal	atans_flip
/* 001154 0x8088B448 46007387 */ neg.s	$f14, $f14
/* 001155 0x8088B44C A60200BC */ sh	$v0, 0XBC($s0)
.L8088B450:
/* 001156 0x8088B450 8E020264 */ lw	$v0, 0X264($s0)
.L8088B454:
/* 001157 0x8088B454 50400072 */ beqzl	$v0, .L8088B620
/* 001158 0x8088B458 8FBF0034 */ lw	$ra, 0X34($sp)
/* 001159 0x8088B45C 8C4E0138 */ lw	$t6, 0X138($v0)
/* 001160 0x8088B460 26040228 */ addiu	$a0, $s0, 0X228
/* 001161 0x8088B464 26050268 */ addiu	$a1, $s0, 0X268
/* 001162 0x8088B468 11C0006B */ beqz	$t6, .L8088B618
/* 001163 0x8088B46C 8FB800B4 */ lw	$t8, 0XB4($sp)
/* 001164 0x8088B470 27190830 */ addiu	$t9, $t8, 0X830
/* 001165 0x8088B474 AFB9003C */ sw	$t9, 0X3C($sp)
/* 001166 0x8088B478 27A60060 */ addiu	$a2, $sp, 0X60
/* 001167 0x8088B47C 0C03FD6F */ jal	Math_Vec3f_Sum
/* 001168 0x8088B480 AFA50044 */ sw	$a1, 0X44($sp)
/* 001169 0x8088B484 8FA40040 */ lw	$a0, 0X40($sp)
/* 001170 0x8088B488 8FA50044 */ lw	$a1, 0X44($sp)
/* 001171 0x8088B48C 0C03FD6F */ jal	Math_Vec3f_Sum
/* 001172 0x8088B490 27A60054 */ addiu	$a2, $sp, 0X54
/* 001173 0x8088B494 27A800AC */ addiu	$t0, $sp, 0XAC
/* 001174 0x8088B498 240C0001 */ li	$t4, 0X1
/* 001175 0x8088B49C 240D0001 */ li	$t5, 0X1
/* 001176 0x8088B4A0 240A0001 */ li	$t2, 0X1
/* 001177 0x8088B4A4 24090001 */ li	$t1, 0X1
/* 001178 0x8088B4A8 27AB00A8 */ addiu	$t3, $sp, 0XA8
/* 001179 0x8088B4AC AFAB0024 */ sw	$t3, 0X24($sp)
/* 001180 0x8088B4B0 AFA90020 */ sw	$t1, 0X20($sp)
/* 001181 0x8088B4B4 AFAA001C */ sw	$t2, 0X1C($sp)
/* 001182 0x8088B4B8 AFAD0018 */ sw	$t5, 0X18($sp)
/* 001183 0x8088B4BC AFAC0014 */ sw	$t4, 0X14($sp)
/* 001184 0x8088B4C0 AFA80010 */ sw	$t0, 0X10($sp)
/* 001185 0x8088B4C4 8FA4003C */ lw	$a0, 0X3C($sp)
/* 001186 0x8088B4C8 27A50060 */ addiu	$a1, $sp, 0X60
/* 001187 0x8088B4CC 27A60054 */ addiu	$a2, $sp, 0X54
/* 001188 0x8088B4D0 0C031571 */ jal	func_800C55C4
/* 001189 0x8088B4D4 27A7009C */ addiu	$a3, $sp, 0X9C
/* 001190 0x8088B4D8 1040003D */ beqz	$v0, .L8088B5D0
/* 001191 0x8088B4DC 8FA40040 */ lw	$a0, 0X40($sp)
/* 001192 0x8088B4E0 C7A4009C */ lwc1	$f4, 0X9C($sp)
/* 001193 0x8088B4E4 C7A80054 */ lwc1	$f8, 0X54($sp)
/* 001194 0x8088B4E8 C7B2009C */ lwc1	$f18, 0X9C($sp)
/* 001195 0x8088B4EC 3C01BF80 */ lui	$at, 0xBF80
/* 001196 0x8088B4F0 4604403E */ c.le.s	$f8, $f4
/* 001197 0x8088B4F4 00000000 */ nop
/* 001198 0x8088B4F8 45020008 */ bc1fl .L8088B51C
/* 001199 0x8088B4FC 44811000 */ mtc1	$at, $f2
/* 001200 0x8088B500 3C013F80 */ lui	$at, 0x3F80
/* 001201 0x8088B504 44816000 */ mtc1	$at, $f12
/* 001202 0x8088B508 3C01BF80 */ lui	$at, 0xBF80
/* 001203 0x8088B50C 44811000 */ mtc1	$at, $f2
/* 001204 0x8088B510 10000005 */ b	.L8088B528
/* 001205 0x8088B514 46006006 */ mov.s	$f0, $f12
/* 001206 0x8088B518 44811000 */ mtc1	$at, $f2
.L8088B51C:
/* 001207 0x8088B51C 3C013F80 */ lui	$at, 0x3F80
/* 001208 0x8088B520 44816000 */ mtc1	$at, $f12
/* 001209 0x8088B524 46001006 */ mov.s	$f0, $f2
.L8088B528:
/* 001210 0x8088B528 46120280 */ add.s	$f10, $f0, $f18
/* 001211 0x8088B52C 8E0F0264 */ lw	$t7, 0X264($s0)
/* 001212 0x8088B530 E5EA0024 */ swc1	$f10, 0X24($t7)
/* 001213 0x8088B534 C7A600A0 */ lwc1	$f6, 0XA0($sp)
/* 001214 0x8088B538 C7B00058 */ lwc1	$f16, 0X58($sp)
/* 001215 0x8088B53C C7A400A0 */ lwc1	$f4, 0XA0($sp)
/* 001216 0x8088B540 4606803E */ c.le.s	$f16, $f6
/* 001217 0x8088B544 00000000 */ nop
/* 001218 0x8088B548 45020004 */ bc1fl .L8088B55C
/* 001219 0x8088B54C 46001006 */ mov.s	$f0, $f2
/* 001220 0x8088B550 10000002 */ b	.L8088B55C
/* 001221 0x8088B554 46006006 */ mov.s	$f0, $f12
/* 001222 0x8088B558 46001006 */ mov.s	$f0, $f2
.L8088B55C:
/* 001223 0x8088B55C 46040200 */ add.s	$f8, $f0, $f4
/* 001224 0x8088B560 8E0E0264 */ lw	$t6, 0X264($s0)
/* 001225 0x8088B564 E5C80028 */ swc1	$f8, 0X28($t6)
/* 001226 0x8088B568 C7B200A4 */ lwc1	$f18, 0XA4($sp)
/* 001227 0x8088B56C C7AA005C */ lwc1	$f10, 0X5C($sp)
/* 001228 0x8088B570 C7A600A4 */ lwc1	$f6, 0XA4($sp)
/* 001229 0x8088B574 4612503E */ c.le.s	$f10, $f18
/* 001230 0x8088B578 00000000 */ nop
/* 001231 0x8088B57C 45020004 */ bc1fl .L8088B590
/* 001232 0x8088B580 46001006 */ mov.s	$f0, $f2
/* 001233 0x8088B584 10000002 */ b	.L8088B590
/* 001234 0x8088B588 46006006 */ mov.s	$f0, $f12
/* 001235 0x8088B58C 46001006 */ mov.s	$f0, $f2
.L8088B590:
/* 001236 0x8088B590 46060400 */ add.s	$f16, $f0, $f6
/* 001237 0x8088B594 8E180264 */ lw	$t8, 0X264($s0)
/* 001238 0x8088B598 E710002C */ swc1	$f16, 0X2C($t8)
/* 001239 0x8088B59C 8E040264 */ lw	$a0, 0X264($s0)
/* 001240 0x8088B5A0 8FA60044 */ lw	$a2, 0X44($sp)
/* 001241 0x8088B5A4 8FA50040 */ lw	$a1, 0X40($sp)
/* 001242 0x8088B5A8 0C03FD7D */ jal	Math_Vec3f_Diff
/* 001243 0x8088B5AC 24840024 */ addiu	$a0, $a0, 0X24
/* 001244 0x8088B5B0 8E020264 */ lw	$v0, 0X264($s0)
/* 001245 0x8088B5B4 3C01FFFF */ lui	$at, 0xFFFF
/* 001246 0x8088B5B8 34217FFF */ ori	$at, $at, 0X7FFF
/* 001247 0x8088B5BC 8C590004 */ lw	$t9, 0X4($v0)
/* 001248 0x8088B5C0 03214024 */ and	$t0, $t9, $at
/* 001249 0x8088B5C4 AC480004 */ sw	$t0, 0X4($v0)
/* 001250 0x8088B5C8 10000005 */ b	.L8088B5E0
/* 001251 0x8088B5CC AE000264 */ sw	$zero, 0X264($s0)
.L8088B5D0:
/* 001252 0x8088B5D0 8E060264 */ lw	$a2, 0X264($s0)
/* 001253 0x8088B5D4 8FA50044 */ lw	$a1, 0X44($sp)
/* 001254 0x8088B5D8 0C03FD6F */ jal	Math_Vec3f_Sum
/* 001255 0x8088B5DC 24C60024 */ addiu	$a2, $a2, 0X24
.L8088B5E0:
/* 001256 0x8088B5E0 920C0262 */ lbu	$t4, 0X262($s0)
/* 001257 0x8088B5E4 5180000E */ beqzl	$t4, .L8088B620
/* 001258 0x8088B5E8 8FBF0034 */ lw	$ra, 0X34($sp)
/* 001259 0x8088B5EC 8E020264 */ lw	$v0, 0X264($s0)
/* 001260 0x8088B5F0 5040000B */ beqzl	$v0, .L8088B620
/* 001261 0x8088B5F4 8FBF0034 */ lw	$ra, 0X34($sp)
/* 001262 0x8088B5F8 8C4D0004 */ lw	$t5, 0X4($v0)
/* 001263 0x8088B5FC 3C01FFFF */ lui	$at, 0xFFFF
/* 001264 0x8088B600 34217FFF */ ori	$at, $at, 0X7FFF
/* 001265 0x8088B604 01A15024 */ and	$t2, $t5, $at
/* 001266 0x8088B608 AC4A0004 */ sw	$t2, 0X4($v0)
/* 001267 0x8088B60C AE000264 */ sw	$zero, 0X264($s0)
/* 001268 0x8088B610 10000003 */ b	.L8088B620
/* 001269 0x8088B614 8FBF0034 */ lw	$ra, 0X34($sp)
.L8088B618:
/* 001270 0x8088B618 AE000264 */ sw	$zero, 0X264($s0)
.L8088B61C:
/* 001271 0x8088B61C 8FBF0034 */ lw	$ra, 0X34($sp)
.L8088B620:
/* 001272 0x8088B620 8FB00030 */ lw	$s0, 0X30($sp)
/* 001273 0x8088B624 27BD00B0 */ addiu	$sp, $sp, 0XB0
/* 001274 0x8088B628 03E00008 */ jr	$ra
/* 001275 0x8088B62C 00000000 */ nop


.section .late_rodata

glabel D_8088C3C4
/* 002145 0x8088C3C4 */ .word	0xBECCCCCD
