glabel func_809B4C58
/* 002778 0x809B4C58 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 002779 0x809B4C5C AFB00038 */ sw	$s0, 0X38($sp)
/* 002780 0x809B4C60 00808025 */ move	$s0, $a0
/* 002781 0x809B4C64 AFBF003C */ sw	$ra, 0X3C($sp)
/* 002782 0x809B4C68 AFA50044 */ sw	$a1, 0X44($sp)
/* 002783 0x809B4C6C 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 002784 0x809B4C70 26040194 */ addiu	$a0, $s0, 0X194
/* 002785 0x809B4C74 A6000186 */ sh	$zero, 0X186($s0)
/* 002786 0x809B4C78 26040180 */ addiu	$a0, $s0, 0X180
/* 002787 0x809B4C7C 3C054334 */ lui	$a1, 0x4334
/* 002788 0x809B4C80 3C063F80 */ lui	$a2, 0x3F80
/* 002789 0x809B4C84 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 002790 0x809B4C88 3C074120 */ lui	$a3, 0x4120
/* 002791 0x809B4C8C 8602014A */ lh	$v0, 0X14A($s0)
/* 002792 0x809B4C90 02002025 */ move	$a0, $s0
/* 002793 0x809B4C94 14400004 */ bnez	$v0, .L809B4CA8
/* 002794 0x809B4C98 00000000 */ nop
/* 002795 0x809B4C9C 0C26CFA7 */ jal	func_809B3E9C
/* 002796 0x809B4CA0 8FA50044 */ lw	$a1, 0X44($sp)
/* 002797 0x809B4CA4 8602014A */ lh	$v0, 0X14A($s0)
.L809B4CA8:
/* 002798 0x809B4CA8 3C03801F */ lui	$v1, %hi(gStaticContext)
/* 002799 0x809B4CAC 8C633F60 */ lw	$v1, %lo(gStaticContext)($v1)
/* 002800 0x809B4CB0 846E1368 */ lh	$t6, 0X1368($v1)
/* 002801 0x809B4CB4 25CF000A */ addiu	$t7, $t6, 0XA
/* 002802 0x809B4CB8 000FC400 */ sll	$t8, $t7, 16
/* 002803 0x809B4CBC 0018CC03 */ sra	$t9, $t8, 16
/* 002804 0x809B4CC0 0322082A */ slt	$at, $t9, $v0
/* 002805 0x809B4CC4 5020006B */ beqzl	$at, .L809B4E74
/* 002806 0x809B4CC8 8FBF003C */ lw	$ra, 0X3C($sp)
/* 002807 0x809B4CCC 8468136C */ lh	$t0, 0X136C($v1)
/* 002808 0x809B4CD0 860A0146 */ lh	$t2, 0X146($s0)
/* 002809 0x809B4CD4 3C0C809C */ lui	$t4, %hi(D_809BEFD0)
/* 002810 0x809B4CD8 25090003 */ addiu	$t1, $t0, 0X3
/* 002811 0x809B4CDC 012A5824 */ and	$t3, $t1, $t2
/* 002812 0x809B4CE0 55600064 */ bnezl	$t3, .L809B4E74
/* 002813 0x809B4CE4 8FBF003C */ lw	$ra, 0X3C($sp)
/* 002814 0x809B4CE8 8D8CEFD0 */ lw	$t4, %lo(D_809BEFD0)($t4)
/* 002815 0x809B4CEC 240200C8 */ li	$v0, 0XC8
/* 002816 0x809B4CF0 160C0003 */ bne	$s0, $t4, .L809B4D00
/* 002817 0x809B4CF4 00000000 */ nop
/* 002818 0x809B4CF8 10000001 */ b	.L809B4D00
/* 002819 0x809B4CFC 240200C9 */ li	$v0, 0XC9
.L809B4D00:
/* 002820 0x809B4D00 C6040024 */ lwc1	$f4, 0X24($s0)
/* 002821 0x809B4D04 8FA60044 */ lw	$a2, 0X44($sp)
/* 002822 0x809B4D08 02002825 */ move	$a1, $s0
/* 002823 0x809B4D0C E7A40010 */ swc1	$f4, 0X10($sp)
/* 002824 0x809B4D10 C6060028 */ lwc1	$f6, 0X28($s0)
/* 002825 0x809B4D14 24070115 */ li	$a3, 0X115
/* 002826 0x809B4D18 24C41CA0 */ addiu	$a0, $a2, 0X1CA0
/* 002827 0x809B4D1C E7A60014 */ swc1	$f6, 0X14($sp)
/* 002828 0x809B4D20 C608002C */ lwc1	$f8, 0X2C($s0)
/* 002829 0x809B4D24 E7A80018 */ swc1	$f8, 0X18($sp)
/* 002830 0x809B4D28 860E0030 */ lh	$t6, 0X30($s0)
/* 002831 0x809B4D2C AFAE001C */ sw	$t6, 0X1C($sp)
/* 002832 0x809B4D30 860F0032 */ lh	$t7, 0X32($s0)
/* 002833 0x809B4D34 AFAF0020 */ sw	$t7, 0X20($sp)
/* 002834 0x809B4D38 86180034 */ lh	$t8, 0X34($s0)
/* 002835 0x809B4D3C AFA20028 */ sw	$v0, 0X28($sp)
/* 002836 0x809B4D40 0C02EC30 */ jal	Actor_SpawnWithParent
/* 002837 0x809B4D44 AFB80024 */ sw	$t8, 0X24($sp)
/* 002838 0x809B4D48 5040004A */ beqzl	$v0, .L809B4E74
/* 002839 0x809B4D4C 8FBF003C */ lw	$ra, 0X3C($sp)
/* 002840 0x809B4D50 8E0801B4 */ lw	$t0, 0X1B4($s0)
/* 002841 0x809B4D54 8C5901B4 */ lw	$t9, 0X1B4($v0)
/* 002842 0x809B4D58 24030006 */ li	$v1, 0X6
/* 002843 0x809B4D5C 890A0000 */ lwl	$t2, 0X0($t0)
/* 002844 0x809B4D60 990A0003 */ lwr	$t2, 0X3($t0)
/* 002845 0x809B4D64 240400AE */ li	$a0, 0XAE
/* 002846 0x809B4D68 AB2A0000 */ swl	$t2, 0X0($t9)
/* 002847 0x809B4D6C BB2A0003 */ swr	$t2, 0X3($t9)
/* 002848 0x809B4D70 950A0004 */ lhu	$t2, 0X4($t0)
/* 002849 0x809B4D74 A72A0004 */ sh	$t2, 0X4($t9)
/* 002850 0x809B4D78 8E0B0198 */ lw	$t3, 0X198($s0)
/* 002851 0x809B4D7C AC4B0198 */ sw	$t3, 0X198($v0)
/* 002852 0x809B4D80 920C0196 */ lbu	$t4, 0X196($s0)
/* 002853 0x809B4D84 A04C0196 */ sb	$t4, 0X196($v0)
.L809B4D88:
/* 002854 0x809B4D88 8E0F01B4 */ lw	$t7, 0X1B4($s0)
/* 002855 0x809B4D8C 8C4D01B4 */ lw	$t5, 0X1B4($v0)
/* 002856 0x809B4D90 01E3C021 */ addu	$t8, $t7, $v1
/* 002857 0x809B4D94 8B080000 */ lwl	$t0, 0X0($t8)
/* 002858 0x809B4D98 9B080003 */ lwr	$t0, 0X3($t8)
/* 002859 0x809B4D9C 01A37021 */ addu	$t6, $t5, $v1
/* 002860 0x809B4DA0 A9C80000 */ swl	$t0, 0X0($t6)
/* 002861 0x809B4DA4 B9C80003 */ swr	$t0, 0X3($t6)
/* 002862 0x809B4DA8 97080004 */ lhu	$t0, 0X4($t8)
/* 002863 0x809B4DAC A5C80004 */ sh	$t0, 0X4($t6)
/* 002864 0x809B4DB0 8E090198 */ lw	$t1, 0X198($s0)
/* 002865 0x809B4DB4 8C4B01B4 */ lw	$t3, 0X1B4($v0)
/* 002866 0x809B4DB8 AC490198 */ sw	$t1, 0X198($v0)
/* 002867 0x809B4DBC 920A0196 */ lbu	$t2, 0X196($s0)
/* 002868 0x809B4DC0 01636021 */ addu	$t4, $t3, $v1
/* 002869 0x809B4DC4 A04A0196 */ sb	$t2, 0X196($v0)
/* 002870 0x809B4DC8 8E0D01B4 */ lw	$t5, 0X1B4($s0)
/* 002871 0x809B4DCC 01A37821 */ addu	$t7, $t5, $v1
/* 002872 0x809B4DD0 89F80006 */ lwl	$t8, 0X6($t7)
/* 002873 0x809B4DD4 99F80009 */ lwr	$t8, 0X9($t7)
/* 002874 0x809B4DD8 A9980006 */ swl	$t8, 0X6($t4)
/* 002875 0x809B4DDC B9980009 */ swr	$t8, 0X9($t4)
/* 002876 0x809B4DE0 95F8000A */ lhu	$t8, 0XA($t7)
/* 002877 0x809B4DE4 A598000A */ sh	$t8, 0XA($t4)
/* 002878 0x809B4DE8 8E190198 */ lw	$t9, 0X198($s0)
/* 002879 0x809B4DEC 8C4901B4 */ lw	$t1, 0X1B4($v0)
/* 002880 0x809B4DF0 AC590198 */ sw	$t9, 0X198($v0)
/* 002881 0x809B4DF4 92080196 */ lbu	$t0, 0X196($s0)
/* 002882 0x809B4DF8 01235021 */ addu	$t2, $t1, $v1
/* 002883 0x809B4DFC A0480196 */ sb	$t0, 0X196($v0)
/* 002884 0x809B4E00 8E0B01B4 */ lw	$t3, 0X1B4($s0)
/* 002885 0x809B4E04 01636821 */ addu	$t5, $t3, $v1
/* 002886 0x809B4E08 89AF000C */ lwl	$t7, 0XC($t5)
/* 002887 0x809B4E0C 99AF000F */ lwr	$t7, 0XF($t5)
/* 002888 0x809B4E10 A94F000C */ swl	$t7, 0XC($t2)
/* 002889 0x809B4E14 B94F000F */ swr	$t7, 0XF($t2)
/* 002890 0x809B4E18 95AF0010 */ lhu	$t7, 0X10($t5)
/* 002891 0x809B4E1C A54F0010 */ sh	$t7, 0X10($t2)
/* 002892 0x809B4E20 8E0E0198 */ lw	$t6, 0X198($s0)
/* 002893 0x809B4E24 8C5901B4 */ lw	$t9, 0X1B4($v0)
/* 002894 0x809B4E28 AC4E0198 */ sw	$t6, 0X198($v0)
/* 002895 0x809B4E2C 92180196 */ lbu	$t8, 0X196($s0)
/* 002896 0x809B4E30 03234021 */ addu	$t0, $t9, $v1
/* 002897 0x809B4E34 A0580196 */ sb	$t8, 0X196($v0)
/* 002898 0x809B4E38 8E0901B4 */ lw	$t1, 0X1B4($s0)
/* 002899 0x809B4E3C 01235821 */ addu	$t3, $t1, $v1
/* 002900 0x809B4E40 896D0012 */ lwl	$t5, 0X12($t3)
/* 002901 0x809B4E44 996D0015 */ lwr	$t5, 0X15($t3)
/* 002902 0x809B4E48 24630018 */ addiu	$v1, $v1, 0X18
/* 002903 0x809B4E4C A90D0012 */ swl	$t5, 0X12($t0)
/* 002904 0x809B4E50 B90D0015 */ swr	$t5, 0X15($t0)
/* 002905 0x809B4E54 956D0016 */ lhu	$t5, 0X16($t3)
/* 002906 0x809B4E58 A50D0016 */ sh	$t5, 0X16($t0)
/* 002907 0x809B4E5C 8E0C0198 */ lw	$t4, 0X198($s0)
/* 002908 0x809B4E60 AC4C0198 */ sw	$t4, 0X198($v0)
/* 002909 0x809B4E64 920F0196 */ lbu	$t7, 0X196($s0)
/* 002910 0x809B4E68 1464FFC7 */ bne	$v1, $a0, .L809B4D88
/* 002911 0x809B4E6C A04F0196 */ sb	$t7, 0X196($v0)
/* 002912 0x809B4E70 8FBF003C */ lw	$ra, 0X3C($sp)
.L809B4E74:
/* 002913 0x809B4E74 8FB00038 */ lw	$s0, 0X38($sp)
/* 002914 0x809B4E78 27BD0040 */ addiu	$sp, $sp, 0X40
/* 002915 0x809B4E7C 03E00008 */ jr	$ra
/* 002916 0x809B4E80 00000000 */ nop

