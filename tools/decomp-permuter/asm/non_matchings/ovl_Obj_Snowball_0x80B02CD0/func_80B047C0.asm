glabel func_80B047C0
/* 001724 0x80B047C0 27BDFF50 */ addiu	$sp, $sp, -0XB0
/* 001725 0x80B047C4 AFB50048 */ sw	$s5, 0X48($sp)
/* 001726 0x80B047C8 AFB30040 */ sw	$s3, 0X40($sp)
/* 001727 0x80B047CC 00809825 */ move	$s3, $a0
/* 001728 0x80B047D0 00A0A825 */ move	$s5, $a1
/* 001729 0x80B047D4 AFBF004C */ sw	$ra, 0X4C($sp)
/* 001730 0x80B047D8 AFB40044 */ sw	$s4, 0X44($sp)
/* 001731 0x80B047DC AFB2003C */ sw	$s2, 0X3C($sp)
/* 001732 0x80B047E0 AFB10038 */ sw	$s1, 0X38($sp)
/* 001733 0x80B047E4 AFB00034 */ sw	$s0, 0X34($sp)
/* 001734 0x80B047E8 F7B80028 */ sdc1	$f24, 0X28($sp)
/* 001735 0x80B047EC F7B60020 */ sdc1	$f22, 0X20($sp)
/* 001736 0x80B047F0 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 001737 0x80B047F4 3C013F80 */ lui	$at, 0x3F80
/* 001738 0x80B047F8 4481C000 */ mtc1	$at, $f24
/* 001739 0x80B047FC 3C01C1A0 */ lui	$at, 0xC1A0
/* 001740 0x80B04800 4481B000 */ mtc1	$at, $f22
/* 001741 0x80B04804 4480A000 */ mtc1	$zero, $f20
/* 001742 0x80B04808 00009025 */ move	$s2, $zero
/* 001743 0x80B0480C 02608825 */ move	$s1, $s3
/* 001744 0x80B04810 27B40088 */ addiu	$s4, $sp, 0X88
.L80B04814:
/* 001745 0x80B04814 922E01D5 */ lbu	$t6, 0X1D5($s1)
/* 001746 0x80B04818 263001A8 */ addiu	$s0, $s1, 0X1A8
/* 001747 0x80B0481C 3C0140C0 */ lui	$at, 0x40C0
/* 001748 0x80B04820 31CF0001 */ andi	$t7, $t6, 0X1
/* 001749 0x80B04824 55E00084 */ bnezl	$t7, .L80B04A38
/* 001750 0x80B04828 26520030 */ addiu	$s2, $s2, 0X30
/* 001751 0x80B0482C C6040010 */ lwc1	$f4, 0X10($s0)
/* 001752 0x80B04830 44813000 */ mtc1	$at, $f6
/* 001753 0x80B04834 3C0180B0 */ lui	$at, %hi(D_80B0504C)
/* 001754 0x80B04838 26A40830 */ addiu	$a0, $s5, 0X830
/* 001755 0x80B0483C 46062201 */ sub.s	$f8, $f4, $f6
/* 001756 0x80B04840 26050028 */ addiu	$a1, $s0, 0X28
/* 001757 0x80B04844 E6080010 */ swc1	$f8, 0X10($s0)
/* 001758 0x80B04848 C60A0010 */ lwc1	$f10, 0X10($s0)
/* 001759 0x80B0484C C430504C */ lwc1	$f16, %lo(D_80B0504C)($at)
/* 001760 0x80B04850 3C0141C8 */ lui	$at, 0x41C8
/* 001761 0x80B04854 46105482 */ mul.s	$f18, $f10, $f16
/* 001762 0x80B04858 E6120010 */ swc1	$f18, 0X10($s0)
/* 001763 0x80B0485C C6000010 */ lwc1	$f0, 0X10($s0)
/* 001764 0x80B04860 4616003C */ c.lt.s	$f0, $f22
/* 001765 0x80B04864 00000000 */ nop
/* 001766 0x80B04868 45020004 */ bc1fl .L80B0487C
/* 001767 0x80B0486C C6040000 */ lwc1	$f4, 0X0($s0)
/* 001768 0x80B04870 E6160010 */ swc1	$f22, 0X10($s0)
/* 001769 0x80B04874 C6000010 */ lwc1	$f0, 0X10($s0)
/* 001770 0x80B04878 C6040000 */ lwc1	$f4, 0X0($s0)
.L80B0487C:
/* 001771 0x80B0487C C606000C */ lwc1	$f6, 0XC($s0)
/* 001772 0x80B04880 C60A0004 */ lwc1	$f10, 0X4($s0)
/* 001773 0x80B04884 C6120008 */ lwc1	$f18, 0X8($s0)
/* 001774 0x80B04888 46062200 */ add.s	$f8, $f4, $f6
/* 001775 0x80B0488C C6040014 */ lwc1	$f4, 0X14($s0)
/* 001776 0x80B04890 8618001C */ lh	$t8, 0X1C($s0)
/* 001777 0x80B04894 46005400 */ add.s	$f16, $f10, $f0
/* 001778 0x80B04898 86190022 */ lh	$t9, 0X22($s0)
/* 001779 0x80B0489C 8609001E */ lh	$t1, 0X1E($s0)
/* 001780 0x80B048A0 46049180 */ add.s	$f6, $f18, $f4
/* 001781 0x80B048A4 860A0024 */ lh	$t2, 0X24($s0)
/* 001782 0x80B048A8 860C0020 */ lh	$t4, 0X20($s0)
/* 001783 0x80B048AC 860D0026 */ lh	$t5, 0X26($s0)
/* 001784 0x80B048B0 E6080000 */ swc1	$f8, 0X0($s0)
/* 001785 0x80B048B4 C6080000 */ lwc1	$f8, 0X0($s0)
/* 001786 0x80B048B8 E6100004 */ swc1	$f16, 0X4($s0)
/* 001787 0x80B048BC 03194021 */ addu	$t0, $t8, $t9
/* 001788 0x80B048C0 012A5821 */ addu	$t3, $t1, $t2
/* 001789 0x80B048C4 018D7021 */ addu	$t6, $t4, $t5
/* 001790 0x80B048C8 E6060008 */ swc1	$f6, 0X8($s0)
/* 001791 0x80B048CC A608001C */ sh	$t0, 0X1C($s0)
/* 001792 0x80B048D0 A60B001E */ sh	$t3, 0X1E($s0)
/* 001793 0x80B048D4 A60E0020 */ sh	$t6, 0X20($s0)
/* 001794 0x80B048D8 E7A8009C */ swc1	$f8, 0X9C($sp)
/* 001795 0x80B048DC C60A0004 */ lwc1	$f10, 0X4($s0)
/* 001796 0x80B048E0 44818000 */ mtc1	$at, $f16
/* 001797 0x80B048E4 27AF009C */ addiu	$t7, $sp, 0X9C
/* 001798 0x80B048E8 27A60098 */ addiu	$a2, $sp, 0X98
/* 001799 0x80B048EC 46105480 */ add.s	$f18, $f10, $f16
/* 001800 0x80B048F0 02603825 */ move	$a3, $s3
/* 001801 0x80B048F4 E7B200A0 */ swc1	$f18, 0XA0($sp)
/* 001802 0x80B048F8 C6040008 */ lwc1	$f4, 0X8($s0)
/* 001803 0x80B048FC AFAF0010 */ sw	$t7, 0X10($sp)
/* 001804 0x80B04900 0C031047 */ jal	func_800C411C
/* 001805 0x80B04904 E7A400A4 */ swc1	$f4, 0XA4($sp)
/* 001806 0x80B04908 C6060010 */ lwc1	$f6, 0X10($s0)
/* 001807 0x80B0490C E6000018 */ swc1	$f0, 0X18($s0)
/* 001808 0x80B04910 00003825 */ move	$a3, $zero
/* 001809 0x80B04914 4614303E */ c.le.s	$f6, $f20
/* 001810 0x80B04918 00000000 */ nop
/* 001811 0x80B0491C 45020046 */ bc1fl .L80B04A38
/* 001812 0x80B04920 26520030 */ addiu	$s2, $s2, 0X30
/* 001813 0x80B04924 8604001C */ lh	$a0, 0X1C($s0)
/* 001814 0x80B04928 8605001E */ lh	$a1, 0X1E($s0)
/* 001815 0x80B0492C 0C06040F */ jal	SysMatrix_InsertRotation
/* 001816 0x80B04930 86060020 */ lh	$a2, 0X20($s0)
/* 001817 0x80B04934 3C0480B0 */ lui	$a0, %hi(D_80B04FE4)
/* 001818 0x80B04938 24844FE4 */ addiu	$a0, $a0, %lo(D_80B04FE4)
/* 001819 0x80B0493C 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 001820 0x80B04940 02802825 */ move	$a1, $s4
/* 001821 0x80B04944 3C014270 */ lui	$at, 0x4270
/* 001822 0x80B04948 44815000 */ mtc1	$at, $f10
/* 001823 0x80B0494C C668020C */ lwc1	$f8, 0X20C($s3)
/* 001824 0x80B04950 C7A4008C */ lwc1	$f4, 0X8C($sp)
/* 001825 0x80B04954 3C0180B0 */ lui	$at, %hi(D_80B05050)
/* 001826 0x80B04958 460A4402 */ mul.s	$f16, $f8, $f10
/* 001827 0x80B0495C 4604A03C */ c.lt.s	$f20, $f4
/* 001828 0x80B04960 C4325050 */ lwc1	$f18, %lo(D_80B05050)($at)
/* 001829 0x80B04964 3C0480B0 */ lui	$a0, %hi(D_80B04FD8)
/* 001830 0x80B04968 24844FD8 */ addiu	$a0, $a0, %lo(D_80B04FD8)
/* 001831 0x80B0496C 02802825 */ move	$a1, $s4
/* 001832 0x80B04970 27A6007C */ addiu	$a2, $sp, 0X7C
/* 001833 0x80B04974 46128302 */ mul.s	$f12, $f16, $f18
/* 001834 0x80B04978 45020014 */ bc1fl .L80B049CC
/* 001835 0x80B0497C C6080004 */ lwc1	$f8, 0X4($s0)
/* 001836 0x80B04980 0C05E7AB */ jal	Math3D_AngleBetweenVectors
/* 001837 0x80B04984 E7AC0084 */ swc1	$f12, 0X84($sp)
/* 001838 0x80B04988 10400003 */ beqz	$v0, .L80B04998
/* 001839 0x80B0498C C7AC0084 */ lwc1	$f12, 0X84($sp)
/* 001840 0x80B04990 10000004 */ b	.L80B049A4
/* 001841 0x80B04994 4600C086 */ mov.s	$f2, $f24
.L80B04998:
/* 001842 0x80B04998 C7A0007C */ lwc1	$f0, 0X7C($sp)
/* 001843 0x80B0499C 46000182 */ mul.s	$f6, $f0, $f0
/* 001844 0x80B049A0 4606C081 */ sub.s	$f2, $f24, $f6
.L80B049A4:
/* 001845 0x80B049A4 4614103E */ c.le.s	$f2, $f20
/* 001846 0x80B049A8 00000000 */ nop
/* 001847 0x80B049AC 45020004 */ bc1fl .L80B049C0
/* 001848 0x80B049B0 46001004 */ sqrt.s	$f0, $f2
/* 001849 0x80B049B4 10000004 */ b	.L80B049C8
/* 001850 0x80B049B8 4600A306 */ mov.s	$f12, $f20
/* 001851 0x80B049BC 46001004 */ sqrt.s	$f0, $f2
.L80B049C0:
/* 001852 0x80B049C0 46006302 */ mul.s	$f12, $f12, $f0
/* 001853 0x80B049C4 00000000 */ nop
.L80B049C8:
/* 001854 0x80B049C8 C6080004 */ lwc1	$f8, 0X4($s0)
.L80B049CC:
/* 001855 0x80B049CC C6000018 */ lwc1	$f0, 0X18($s0)
/* 001856 0x80B049D0 3C0180B0 */ lui	$at, %hi(D_80B05054)
/* 001857 0x80B049D4 460C4281 */ sub.s	$f10, $f8, $f12
/* 001858 0x80B049D8 4600503C */ c.lt.s	$f10, $f0
/* 001859 0x80B049DC 00000000 */ nop
/* 001860 0x80B049E0 45030007 */ bc1tl .L80B04A00
/* 001861 0x80B049E4 9218002D */ lbu	$t8, 0X2D($s0)
/* 001862 0x80B049E8 C4305054 */ lwc1	$f16, %lo(D_80B05054)($at)
/* 001863 0x80B049EC 4610003C */ c.lt.s	$f0, $f16
/* 001864 0x80B049F0 00000000 */ nop
/* 001865 0x80B049F4 45020010 */ bc1fl .L80B04A38
/* 001866 0x80B049F8 26520030 */ addiu	$s2, $s2, 0X30
/* 001867 0x80B049FC 9218002D */ lbu	$t8, 0X2D($s0)
.L80B04A00:
/* 001868 0x80B04A00 C6120000 */ lwc1	$f18, 0X0($s0)
/* 001869 0x80B04A04 02A02025 */ move	$a0, $s5
/* 001870 0x80B04A08 37190001 */ ori	$t9, $t8, 0X1
/* 001871 0x80B04A0C A219002D */ sb	$t9, 0X2D($s0)
/* 001872 0x80B04A10 E7B20070 */ swc1	$f18, 0X70($sp)
/* 001873 0x80B04A14 C6040004 */ lwc1	$f4, 0X4($s0)
/* 001874 0x80B04A18 27A60070 */ addiu	$a2, $sp, 0X70
/* 001875 0x80B04A1C 460C2181 */ sub.s	$f6, $f4, $f12
/* 001876 0x80B04A20 E7A60074 */ swc1	$f6, 0X74($sp)
/* 001877 0x80B04A24 C6080008 */ lwc1	$f8, 0X8($s0)
/* 001878 0x80B04A28 E7A80078 */ swc1	$f8, 0X78($sp)
/* 001879 0x80B04A2C 0C2C0EA0 */ jal	func_80B03A80
/* 001880 0x80B04A30 8E65020C */ lw	$a1, 0X20C($s3)
/* 001881 0x80B04A34 26520030 */ addiu	$s2, $s2, 0X30
.L80B04A38:
/* 001882 0x80B04A38 2A410060 */ slti	$at, $s2, 0X60
/* 001883 0x80B04A3C 1420FF75 */ bnez	$at, .L80B04814
/* 001884 0x80B04A40 26310030 */ addiu	$s1, $s1, 0X30
/* 001885 0x80B04A44 82680208 */ lb	$t0, 0X208($s3)
/* 001886 0x80B04A48 2509FFFF */ addiu	$t1, $t0, -0X1
/* 001887 0x80B04A4C A2690208 */ sb	$t1, 0X208($s3)
/* 001888 0x80B04A50 826A0208 */ lb	$t2, 0X208($s3)
/* 001889 0x80B04A54 5940000C */ blezl	$t2, .L80B04A88
/* 001890 0x80B04A58 826F020B */ lb	$t7, 0X20B($s3)
/* 001891 0x80B04A5C 926B01D5 */ lbu	$t3, 0X1D5($s3)
/* 001892 0x80B04A60 00009025 */ move	$s2, $zero
/* 001893 0x80B04A64 02608825 */ move	$s1, $s3
/* 001894 0x80B04A68 316C0001 */ andi	$t4, $t3, 0X1
/* 001895 0x80B04A6C 11800017 */ beqz	$t4, .L80B04ACC
/* 001896 0x80B04A70 267001A8 */ addiu	$s0, $s3, 0X1A8
/* 001897 0x80B04A74 926D0205 */ lbu	$t5, 0X205($s3)
/* 001898 0x80B04A78 31AE0001 */ andi	$t6, $t5, 0X1
/* 001899 0x80B04A7C 51C00014 */ beqzl	$t6, .L80B04AD0
/* 001900 0x80B04A80 240400A0 */ li	$a0, 0XA0
/* 001901 0x80B04A84 826F020B */ lb	$t7, 0X20B($s3)
.L80B04A88:
/* 001902 0x80B04A88 51E00004 */ beqzl	$t7, .L80B04A9C
/* 001903 0x80B04A8C 86780016 */ lh	$t8, 0X16($s3)
/* 001904 0x80B04A90 0C03C7EF */ jal	ActorCutscene_Stop
/* 001905 0x80B04A94 82640038 */ lb	$a0, 0X38($s3)
/* 001906 0x80B04A98 86780016 */ lh	$t8, 0X16($s3)
.L80B04A9C:
/* 001907 0x80B04A9C 24010001 */ li	$at, 0X1
/* 001908 0x80B04AA0 02602025 */ move	$a0, $s3
/* 001909 0x80B04AA4 17010005 */ bne	$t8, $at, .L80B04ABC
/* 001910 0x80B04AA8 00000000 */ nop
/* 001911 0x80B04AAC 0C2C12D2 */ jal	func_80B04B48
/* 001912 0x80B04AB0 02A02825 */ move	$a1, $s5
/* 001913 0x80B04AB4 10000019 */ b	.L80B04B1C
/* 001914 0x80B04AB8 8FBF004C */ lw	$ra, 0X4C($sp)
.L80B04ABC:
/* 001915 0x80B04ABC 0C02D9C3 */ jal	Actor_MarkForDeath
/* 001916 0x80B04AC0 02602025 */ move	$a0, $s3
/* 001917 0x80B04AC4 10000015 */ b	.L80B04B1C
/* 001918 0x80B04AC8 8FBF004C */ lw	$ra, 0X4C($sp)
.L80B04ACC:
/* 001919 0x80B04ACC 240400A0 */ li	$a0, 0XA0
.L80B04AD0:
/* 001920 0x80B04AD0 24030060 */ li	$v1, 0X60
.L80B04AD4:
/* 001921 0x80B04AD4 923901D5 */ lbu	$t9, 0X1D5($s1)
/* 001922 0x80B04AD8 26520030 */ addiu	$s2, $s2, 0X30
/* 001923 0x80B04ADC 26310030 */ addiu	$s1, $s1, 0X30
/* 001924 0x80B04AE0 33280001 */ andi	$t0, $t9, 0X1
/* 001925 0x80B04AE4 51000004 */ beqzl	$t0, .L80B04AF8
/* 001926 0x80B04AE8 9202002C */ lbu	$v0, 0X2C($s0)
/* 001927 0x80B04AEC 10000008 */ b	.L80B04B10
/* 001928 0x80B04AF0 A200002C */ sb	$zero, 0X2C($s0)
/* 001929 0x80B04AF4 9202002C */ lbu	$v0, 0X2C($s0)
.L80B04AF8:
/* 001930 0x80B04AF8 28410088 */ slti	$at, $v0, 0X88
/* 001931 0x80B04AFC 10200003 */ beqz	$at, .L80B04B0C
/* 001932 0x80B04B00 24490018 */ addiu	$t1, $v0, 0X18
/* 001933 0x80B04B04 10000002 */ b	.L80B04B10
/* 001934 0x80B04B08 A209002C */ sb	$t1, 0X2C($s0)
.L80B04B0C:
/* 001935 0x80B04B0C A204002C */ sb	$a0, 0X2C($s0)
.L80B04B10:
/* 001936 0x80B04B10 1643FFF0 */ bne	$s2, $v1, .L80B04AD4
/* 001937 0x80B04B14 26100030 */ addiu	$s0, $s0, 0X30
/* 001938 0x80B04B18 8FBF004C */ lw	$ra, 0X4C($sp)
.L80B04B1C:
/* 001939 0x80B04B1C D7B40018 */ ldc1	$f20, 0X18($sp)
/* 001940 0x80B04B20 D7B60020 */ ldc1	$f22, 0X20($sp)
/* 001941 0x80B04B24 D7B80028 */ ldc1	$f24, 0X28($sp)
/* 001942 0x80B04B28 8FB00034 */ lw	$s0, 0X34($sp)
/* 001943 0x80B04B2C 8FB10038 */ lw	$s1, 0X38($sp)
/* 001944 0x80B04B30 8FB2003C */ lw	$s2, 0X3C($sp)
/* 001945 0x80B04B34 8FB30040 */ lw	$s3, 0X40($sp)
/* 001946 0x80B04B38 8FB40044 */ lw	$s4, 0X44($sp)
/* 001947 0x80B04B3C 8FB50048 */ lw	$s5, 0X48($sp)
/* 001948 0x80B04B40 03E00008 */ jr	$ra
/* 001949 0x80B04B44 27BD00B0 */ addiu	$sp, $sp, 0XB0


.section .late_rodata

glabel D_80B0504C
/* 002271 0x80B0504C */ .word	0x3F75C28F
glabel D_80B05050
/* 002272 0x80B05050 */ .word	0x3F666666
glabel D_80B05054
/* 002273 0x80B05054 */ .word	0xC6F9EC00
/* 002274 0x80B05058 */ .word	0x00000000
/* 002275 0x80B0505C */ .word	0x00000000
