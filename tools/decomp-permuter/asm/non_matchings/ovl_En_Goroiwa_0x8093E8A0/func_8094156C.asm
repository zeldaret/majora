glabel func_8094156C
/* 002867 0x8094156C 27BDFF60 */ addiu	$sp, $sp, -0XA0
/* 002868 0x80941570 AFB2004C */ sw	$s2, 0X4C($sp)
/* 002869 0x80941574 00809025 */ move	$s2, $a0
/* 002870 0x80941578 AFBF005C */ sw	$ra, 0X5C($sp)
/* 002871 0x8094157C AFB50058 */ sw	$s5, 0X58($sp)
/* 002872 0x80941580 AFB40054 */ sw	$s4, 0X54($sp)
/* 002873 0x80941584 AFB30050 */ sw	$s3, 0X50($sp)
/* 002874 0x80941588 AFB10048 */ sw	$s1, 0X48($sp)
/* 002875 0x8094158C AFB00044 */ sw	$s0, 0X44($sp)
/* 002876 0x80941590 F7BC0038 */ sdc1	$f28, 0X38($sp)
/* 002877 0x80941594 F7BA0030 */ sdc1	$f26, 0X30($sp)
/* 002878 0x80941598 F7B80028 */ sdc1	$f24, 0X28($sp)
/* 002879 0x8094159C F7B60020 */ sdc1	$f22, 0X20($sp)
/* 002880 0x809415A0 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 002881 0x809415A4 AFA500A4 */ sw	$a1, 0XA4($sp)
/* 002882 0x809415A8 864E001C */ lh	$t6, 0X1C($s2)
/* 002883 0x809415AC 00008025 */ move	$s0, $zero
/* 002884 0x809415B0 24030001 */ li	$v1, 0X1
/* 002885 0x809415B4 000E7B83 */ sra	$t7, $t6, 14
/* 002886 0x809415B8 31F80003 */ andi	$t8, $t7, 0X3
/* 002887 0x809415BC AFB80098 */ sw	$t8, 0X98($sp)
/* 002888 0x809415C0 92590155 */ lbu	$t9, 0X155($s2)
/* 002889 0x809415C4 33280002 */ andi	$t0, $t9, 0X2
/* 002890 0x809415C8 510000E5 */ beqzl	$t0, .L80941960
/* 002891 0x809415CC 8FA80098 */ lw	$t0, 0X98($sp)
/* 002892 0x809415D0 13030003 */ beq	$t8, $v1, .L809415E0
/* 002893 0x809415D4 24060002 */ li	$a2, 0X2
/* 002894 0x809415D8 570600E1 */ bnel	$t8, $a2, .L80941960
/* 002895 0x809415DC 8FA80098 */ lw	$t0, 0X98($sp)
.L809415E0:
/* 002896 0x809415E0 8E490160 */ lw	$t1, 0X160($s2)
/* 002897 0x809415E4 24060002 */ li	$a2, 0X2
/* 002898 0x809415E8 8FAF0098 */ lw	$t7, 0X98($sp)
/* 002899 0x809415EC 8D2A0024 */ lw	$t2, 0X24($t1)
/* 002900 0x809415F0 8D420000 */ lw	$v0, 0X0($t2)
/* 002901 0x809415F4 304B4000 */ andi	$t3, $v0, 0X4000
/* 002902 0x809415F8 116000AD */ beqz	$t3, .L809418B0
/* 002903 0x809415FC 00000000 */ nop
/* 002904 0x80941600 864C0092 */ lh	$t4, 0X92($s2)
/* 002905 0x80941604 864D0032 */ lh	$t5, 0X32($s2)
/* 002906 0x80941608 240F0032 */ li	$t7, 0X32
/* 002907 0x8094160C 018D7023 */ subu	$t6, $t4, $t5
/* 002908 0x80941610 A7AE007E */ sh	$t6, 0X7E($sp)
/* 002909 0x80941614 86590092 */ lh	$t9, 0X92($s2)
/* 002910 0x80941618 A64F01CC */ sh	$t7, 0X1CC($s2)
/* 002911 0x8094161C 2728C000 */ addiu	$t0, $t9, -0X4000
/* 002912 0x80941620 0C021BF7 */ jal	randZeroOne
/* 002913 0x80941624 A6480206 */ sh	$t0, 0X206($s2)
/* 002914 0x80941628 3C01C416 */ lui	$at, 0xC416
/* 002915 0x8094162C 44812000 */ mtc1	$at, $f4
/* 002916 0x80941630 864A0092 */ lh	$t2, 0X92($s2)
/* 002917 0x80941634 46040182 */ mul.s	$f6, $f0, $f4
/* 002918 0x80941638 254B4000 */ addiu	$t3, $t2, 0X4000
/* 002919 0x8094163C A64B0236 */ sh	$t3, 0X236($s2)
/* 002920 0x80941640 4600320D */ trunc.w.s	$f8, $f6
/* 002921 0x80941644 44094000 */ mfc1	$t1, $f8
/* 002922 0x80941648 0C021BF7 */ jal	randZeroOne
/* 002923 0x8094164C A649020C */ sh	$t1, 0X20C($s2)
/* 002924 0x80941650 3C014416 */ lui	$at, 0x4416
/* 002925 0x80941654 44815000 */ mtc1	$at, $f10
/* 002926 0x80941658 3C0140A0 */ lui	$at, 0x40A0
/* 002927 0x8094165C 4481E000 */ mtc1	$at, $f28
/* 002928 0x80941660 460A0402 */ mul.s	$f16, $f0, $f10
/* 002929 0x80941664 3C014160 */ lui	$at, 0x4160
/* 002930 0x80941668 4481D000 */ mtc1	$at, $f26
/* 002931 0x8094166C 3C013F80 */ lui	$at, 0x3F80
/* 002932 0x80941670 3C158094 */ lui	$s5, %hi(D_80942DFC)
/* 002933 0x80941674 4481C000 */ mtc1	$at, $f24
/* 002934 0x80941678 26B52DFC */ addiu	$s5, $s5, %lo(D_80942DFC)
/* 002935 0x8094167C 4600848D */ trunc.w.s	$f18, $f16
/* 002936 0x80941680 0000A025 */ move	$s4, $zero
/* 002937 0x80941684 02408825 */ move	$s1, $s2
/* 002938 0x80941688 265001E8 */ addiu	$s0, $s2, 0X1E8
/* 002939 0x8094168C 440D9000 */ mfc1	$t5, $f18
/* 002940 0x80941690 00000000 */ nop
/* 002941 0x80941694 A64D023C */ sh	$t5, 0X23C($s2)
.L80941698:
/* 002942 0x80941698 C6440024 */ lwc1	$f4, 0X24($s2)
/* 002943 0x8094169C 02009825 */ move	$s3, $s0
/* 002944 0x809416A0 E62401E8 */ swc1	$f4, 0X1E8($s1)
/* 002945 0x809416A4 C64801DC */ lwc1	$f8, 0X1DC($s2)
/* 002946 0x809416A8 C6460028 */ lwc1	$f6, 0X28($s2)
/* 002947 0x809416AC 46083280 */ add.s	$f10, $f6, $f8
/* 002948 0x809416B0 E62A01EC */ swc1	$f10, 0X1EC($s1)
/* 002949 0x809416B4 C650002C */ lwc1	$f16, 0X2C($s2)
/* 002950 0x809416B8 0C021BF7 */ jal	randZeroOne
/* 002951 0x809416BC E63001F0 */ swc1	$f16, 0X1F0($s1)
/* 002952 0x809416C0 46000586 */ mov.s	$f22, $f0
/* 002953 0x809416C4 0C03FB61 */ jal	Math_Sins
/* 002954 0x809416C8 8604001E */ lh	$a0, 0X1E($s0)
/* 002955 0x809416CC 46000506 */ mov.s	$f20, $f0
/* 002956 0x809416D0 0C03FB61 */ jal	Math_Sins
/* 002957 0x809416D4 86440032 */ lh	$a0, 0X32($s2)
/* 002958 0x809416D8 824E01E4 */ lb	$t6, 0X1E4($s2)
/* 002959 0x809416DC 461A0482 */ mul.s	$f18, $f0, $f26
/* 002960 0x809416E0 C6440070 */ lwc1	$f4, 0X70($s2)
/* 002961 0x809416E4 000E7880 */ sll	$t7, $t6, 2
/* 002962 0x809416E8 02AFC821 */ addu	$t9, $s5, $t7
/* 002963 0x809416EC C7280000 */ lwc1	$f8, 0X0($t9)
/* 002964 0x809416F0 4608C283 */ div.s	$f10, $f24, $f8
/* 002965 0x809416F4 46049182 */ mul.s	$f6, $f18, $f4
/* 002966 0x809416F8 461CB480 */ add.s	$f18, $f22, $f28
/* 002967 0x809416FC 46065402 */ mul.s	$f16, $f10, $f6
/* 002968 0x80941700 00000000 */ nop
/* 002969 0x80941704 4612A102 */ mul.s	$f4, $f20, $f18
/* 002970 0x80941708 46048200 */ add.s	$f8, $f16, $f4
/* 002971 0x8094170C 0C021BF7 */ jal	randZeroOne
/* 002972 0x80941710 E608000C */ swc1	$f8, 0XC($s0)
/* 002973 0x80941714 3C014130 */ lui	$at, 0x4130
/* 002974 0x80941718 44815000 */ mtc1	$at, $f10
/* 002975 0x8094171C 3C0141A0 */ lui	$at, 0x41A0
/* 002976 0x80941720 44819000 */ mtc1	$at, $f18
/* 002977 0x80941724 460A0182 */ mul.s	$f6, $f0, $f10
/* 002978 0x80941728 46123400 */ add.s	$f16, $f6, $f18
/* 002979 0x8094172C 0C021BF7 */ jal	randZeroOne
/* 002980 0x80941730 E6100010 */ swc1	$f16, 0X10($s0)
/* 002981 0x80941734 46000586 */ mov.s	$f22, $f0
/* 002982 0x80941738 0C03FB51 */ jal	Math_Coss
/* 002983 0x8094173C 8604001E */ lh	$a0, 0X1E($s0)
/* 002984 0x80941740 46000506 */ mov.s	$f20, $f0
/* 002985 0x80941744 0C03FB51 */ jal	Math_Coss
/* 002986 0x80941748 86440032 */ lh	$a0, 0X32($s2)
/* 002987 0x8094174C 824801E4 */ lb	$t0, 0X1E4($s2)
/* 002988 0x80941750 461A0102 */ mul.s	$f4, $f0, $f26
/* 002989 0x80941754 C6480070 */ lwc1	$f8, 0X70($s2)
/* 002990 0x80941758 0008C080 */ sll	$t8, $t0, 2
/* 002991 0x8094175C 02B84821 */ addu	$t1, $s5, $t8
/* 002992 0x80941760 C5260000 */ lwc1	$f6, 0X0($t1)
/* 002993 0x80941764 A600001C */ sh	$zero, 0X1C($s0)
/* 002994 0x80941768 A6000020 */ sh	$zero, 0X20($s0)
/* 002995 0x8094176C 4606C483 */ div.s	$f18, $f24, $f6
/* 002996 0x80941770 46082282 */ mul.s	$f10, $f4, $f8
/* 002997 0x80941774 461CB100 */ add.s	$f4, $f22, $f28
/* 002998 0x80941778 460A9402 */ mul.s	$f16, $f18, $f10
/* 002999 0x8094177C 00000000 */ nop
/* 003000 0x80941780 4604A202 */ mul.s	$f8, $f20, $f4
/* 003001 0x80941784 46088180 */ add.s	$f6, $f16, $f8
/* 003002 0x80941788 0C021BF7 */ jal	randZeroOne
/* 003003 0x8094178C E6060014 */ swc1	$f6, 0X14($s0)
/* 003004 0x80941790 3C0143C8 */ lui	$at, 0x43C8
/* 003005 0x80941794 44819000 */ mtc1	$at, $f18
/* 003006 0x80941798 00000000 */ nop
/* 003007 0x8094179C 46120282 */ mul.s	$f10, $f0, $f18
/* 003008 0x809417A0 4600510D */ trunc.w.s	$f4, $f10
/* 003009 0x809417A4 440B2000 */ mfc1	$t3, $f4
/* 003010 0x809417A8 00000000 */ nop
/* 003011 0x809417AC 256C044C */ addiu	$t4, $t3, 0X44C
/* 003012 0x809417B0 0C021BF7 */ jal	randZeroOne
/* 003013 0x809417B4 A60C0022 */ sh	$t4, 0X22($s0)
/* 003014 0x809417B8 46000506 */ mov.s	$f20, $f0
/* 003015 0x809417BC 0C03FB51 */ jal	Math_Coss
/* 003016 0x809417C0 87A4007E */ lh	$a0, 0X7E($sp)
/* 003017 0x809417C4 3C014416 */ lui	$at, 0x4416
/* 003018 0x809417C8 44818000 */ mtc1	$at, $f16
/* 003019 0x809417CC 3C013F00 */ lui	$at, 0x3F00
/* 003020 0x809417D0 44814000 */ mtc1	$at, $f8
/* 003021 0x809417D4 3C018094 */ lui	$at, %hi(D_80942F90)
/* 003022 0x809417D8 C4242F90 */ lwc1	$f4, %lo(D_80942F90)($at)
/* 003023 0x809417DC 4608A181 */ sub.s	$f6, $f20, $f8
/* 003024 0x809417E0 24010060 */ li	$at, 0X60
/* 003025 0x809417E4 26940030 */ addiu	$s4, $s4, 0X30
/* 003026 0x809417E8 26310030 */ addiu	$s1, $s1, 0X30
/* 003027 0x809417EC 46068482 */ mul.s	$f18, $f16, $f6
/* 003028 0x809417F0 26100030 */ addiu	$s0, $s0, 0X30
/* 003029 0x809417F4 A260002D */ sb	$zero, 0X2D($s3)
/* 003030 0x809417F8 46040202 */ mul.s	$f8, $f0, $f4
/* 003031 0x809417FC A260002C */ sb	$zero, 0X2C($s3)
/* 003032 0x80941800 4600928D */ trunc.w.s	$f10, $f18
/* 003033 0x80941804 4600440D */ trunc.w.s	$f16, $f8
/* 003034 0x80941808 440E5000 */ mfc1	$t6, $f10
/* 003035 0x8094180C 44198000 */ mfc1	$t9, $f16
/* 003036 0x80941810 00000000 */ nop
/* 003037 0x80941814 032E4021 */ addu	$t0, $t9, $t6
/* 003038 0x80941818 1681FF9F */ bne	$s4, $at, .L80941698
/* 003039 0x8094181C A6680026 */ sh	$t0, 0X26($s3)
/* 003040 0x80941820 0C250878 */ jal	func_809421E0
/* 003041 0x80941824 02402025 */ move	$a0, $s2
/* 003042 0x80941828 C6460024 */ lwc1	$f6, 0X24($s2)
/* 003043 0x8094182C 8FB80098 */ lw	$t8, 0X98($sp)
/* 003044 0x80941830 3C0C8094 */ lui	$t4, %hi(D_80942E3C)
/* 003045 0x80941834 E7A60080 */ swc1	$f6, 0X80($sp)
/* 003046 0x80941838 C64A01DC */ lwc1	$f10, 0X1DC($s2)
/* 003047 0x8094183C C6520028 */ lwc1	$f18, 0X28($s2)
/* 003048 0x80941840 258C2E3C */ addiu	$t4, $t4, %lo(D_80942E3C)
/* 003049 0x80941844 00181080 */ sll	$v0, $t8, 2
/* 003050 0x80941848 460A9100 */ add.s	$f4, $f18, $f10
/* 003051 0x8094184C 004C6821 */ addu	$t5, $v0, $t4
/* 003052 0x80941850 00184880 */ sll	$t1, $t8, 2
/* 003053 0x80941854 3C0A8094 */ lui	$t2, %hi(D_80942E0C)
/* 003054 0x80941858 E7A40084 */ swc1	$f4, 0X84($sp)
/* 003055 0x8094185C C648002C */ lwc1	$f8, 0X2C($s2)
/* 003056 0x80941860 AFAD0010 */ sw	$t5, 0X10($sp)
/* 003057 0x80941864 3C0B8094 */ lui	$t3, %hi(D_80942E30)
/* 003058 0x80941868 E7A80088 */ swc1	$f8, 0X88($sp)
/* 003059 0x8094186C C6500058 */ lwc1	$f16, 0X58($s2)
/* 003060 0x80941870 01384823 */ subu	$t1, $t1, $t8
/* 003061 0x80941874 00094880 */ sll	$t1, $t1, 2
/* 003062 0x80941878 256B2E30 */ addiu	$t3, $t3, %lo(D_80942E30)
/* 003063 0x8094187C 254A2E0C */ addiu	$t2, $t2, %lo(D_80942E0C)
/* 003064 0x80941880 012A3021 */ addu	$a2, $t1, $t2
/* 003065 0x80941884 004B3821 */ addu	$a3, $v0, $t3
/* 003066 0x80941888 8FA400A4 */ lw	$a0, 0XA4($sp)
/* 003067 0x8094188C 27A50080 */ addiu	$a1, $sp, 0X80
/* 003068 0x80941890 0C250162 */ jal	func_80940588
/* 003069 0x80941894 E7B00014 */ swc1	$f16, 0X14($sp)
/* 003070 0x80941898 02402025 */ move	$a0, $s2
/* 003071 0x8094189C 0C25049D */ jal	func_80941274
/* 003072 0x809418A0 8FA500A4 */ lw	$a1, 0XA4($sp)
/* 003073 0x809418A4 24100001 */ li	$s0, 0X1
/* 003074 0x809418A8 1000002D */ b	.L80941960
/* 003075 0x809418AC 8FA80098 */ lw	$t0, 0X98($sp)
.L809418B0:
/* 003076 0x809418B0 15E30003 */ bne	$t7, $v1, .L809418C0
/* 003077 0x809418B4 30590500 */ andi	$t9, $v0, 0X500
/* 003078 0x809418B8 57200008 */ bnezl	$t9, .L809418DC
/* 003079 0x809418BC 24090032 */ li	$t1, 0X32
.L809418C0:
/* 003080 0x809418C0 8FAE0098 */ lw	$t6, 0X98($sp)
/* 003081 0x809418C4 3C018000 */ lui	$at, 0x8000
/* 003082 0x809418C8 34210D08 */ ori	$at, $at, 0XD08
/* 003083 0x809418CC 15C60018 */ bne	$t6, $a2, .L80941930
/* 003084 0x809418D0 00414024 */ and	$t0, $v0, $at
/* 003085 0x809418D4 11000016 */ beqz	$t0, .L80941930
/* 003086 0x809418D8 24090032 */ li	$t1, 0X32
.L809418DC:
/* 003087 0x809418DC A64901CC */ sh	$t1, 0X1CC($s2)
/* 003088 0x809418E0 8FAA0098 */ lw	$t2, 0X98($sp)
/* 003089 0x809418E4 02402025 */ move	$a0, $s2
/* 003090 0x809418E8 15460008 */ bne	$t2, $a2, .L8094190C
/* 003091 0x809418EC 00000000 */ nop
/* 003092 0x809418F0 8E580160 */ lw	$t8, 0X160($s2)
/* 003093 0x809418F4 8F0B0024 */ lw	$t3, 0X24($t8)
/* 003094 0x809418F8 8D6C0000 */ lw	$t4, 0X0($t3)
/* 003095 0x809418FC 318D0800 */ andi	$t5, $t4, 0X800
/* 003096 0x80941900 11A00002 */ beqz	$t5, .L8094190C
/* 003097 0x80941904 00000000 */ nop
/* 003098 0x80941908 A24301E6 */ sb	$v1, 0X1E6($s2)
.L8094190C:
/* 003099 0x8094190C 0C250024 */ jal	func_80940090
/* 003100 0x80941910 8FA500A4 */ lw	$a1, 0XA4($sp)
/* 003101 0x80941914 02402025 */ move	$a0, $s2
/* 003102 0x80941918 0C25049D */ jal	func_80941274
/* 003103 0x8094191C 8FA500A4 */ lw	$a1, 0XA4($sp)
/* 003104 0x80941920 0C250973 */ jal	func_809425CC
/* 003105 0x80941924 02402025 */ move	$a0, $s2
/* 003106 0x80941928 1000000C */ b	.L8094195C
/* 003107 0x8094192C 24100001 */ li	$s0, 0X1
.L80941930:
/* 003108 0x80941930 8FAF0098 */ lw	$t7, 0X98($sp)
/* 003109 0x80941934 55E6000A */ bnel	$t7, $a2, .L80941960
/* 003110 0x80941938 8FA80098 */ lw	$t0, 0X98($sp)
/* 003111 0x8094193C 825901E7 */ lb	$t9, 0X1E7($s2)
/* 003112 0x80941940 02402025 */ move	$a0, $s2
/* 003113 0x80941944 5F200006 */ bgtzl	$t9, .L80941960
/* 003114 0x80941948 8FA80098 */ lw	$t0, 0X98($sp)
/* 003115 0x8094194C 0C250418 */ jal	func_80941060
/* 003116 0x80941950 8FA500A4 */ lw	$a1, 0XA4($sp)
/* 003117 0x80941954 240E000A */ li	$t6, 0XA
/* 003118 0x80941958 A24E01E7 */ sb	$t6, 0X1E7($s2)
.L8094195C:
/* 003119 0x8094195C 8FA80098 */ lw	$t0, 0X98($sp)
.L80941960:
/* 003120 0x80941960 24060002 */ li	$a2, 0X2
/* 003121 0x80941964 5506000C */ bnel	$t0, $a2, .L80941998
/* 003122 0x80941968 02001025 */ move	$v0, $s0
/* 003123 0x8094196C 824201E7 */ lb	$v0, 0X1E7($s2)
/* 003124 0x80941970 00002825 */ move	$a1, $zero
/* 003125 0x80941974 26460024 */ addiu	$a2, $s2, 0X24
/* 003126 0x80941978 18400002 */ blez	$v0, .L80941984
/* 003127 0x8094197C 2449FFFF */ addiu	$t1, $v0, -0X1
/* 003128 0x80941980 A24901E7 */ sb	$t1, 0X1E7($s2)
.L80941984:
/* 003129 0x80941984 12000003 */ beqz	$s0, .L80941994
/* 003130 0x80941988 8FA400A4 */ lw	$a0, 0XA4($sp)
/* 003131 0x8094198C 0C029F4A */ jal	func_800A7D28
/* 003132 0x80941990 24070020 */ li	$a3, 0X20
.L80941994:
/* 003133 0x80941994 02001025 */ move	$v0, $s0
.L80941998:
/* 003134 0x80941998 8FBF005C */ lw	$ra, 0X5C($sp)
/* 003135 0x8094199C D7B40018 */ ldc1	$f20, 0X18($sp)
/* 003136 0x809419A0 D7B60020 */ ldc1	$f22, 0X20($sp)
/* 003137 0x809419A4 D7B80028 */ ldc1	$f24, 0X28($sp)
/* 003138 0x809419A8 D7BA0030 */ ldc1	$f26, 0X30($sp)
/* 003139 0x809419AC D7BC0038 */ ldc1	$f28, 0X38($sp)
/* 003140 0x809419B0 8FB00044 */ lw	$s0, 0X44($sp)
/* 003141 0x809419B4 8FB10048 */ lw	$s1, 0X48($sp)
/* 003142 0x809419B8 8FB2004C */ lw	$s2, 0X4C($sp)
/* 003143 0x809419BC 8FB30050 */ lw	$s3, 0X50($sp)
/* 003144 0x809419C0 8FB40054 */ lw	$s4, 0X54($sp)
/* 003145 0x809419C4 8FB50058 */ lw	$s5, 0X58($sp)
/* 003146 0x809419C8 03E00008 */ jr	$ra
/* 003147 0x809419CC 27BD00A0 */ addiu	$sp, $sp, 0XA0


.section .late_rodata

glabel D_80942F90
/* 004540 0x80942F90 */ .word	0x453B8000
