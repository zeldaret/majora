glabel func_80B1EC24
/* 000861 0x80B1EC24 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 000862 0x80B1EC28 AFB00020 */ sw	$s0, 0X20($sp)
/* 000863 0x80B1EC2C 00808025 */ move	$s0, $a0
/* 000864 0x80B1EC30 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000865 0x80B1EC34 AFA50054 */ sw	$a1, 0X54($sp)
/* 000866 0x80B1EC38 C604015C */ lwc1	$f4, 0X15C($s0)
/* 000867 0x80B1EC3C 26040144 */ addiu	$a0, $s0, 0X144
/* 000868 0x80B1EC40 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000869 0x80B1EC44 E7A4004C */ swc1	$f4, 0X4C($sp)
/* 000870 0x80B1EC48 860E02D2 */ lh	$t6, 0X2D2($s0)
/* 000871 0x80B1EC4C 51C00006 */ beqzl	$t6, .L80B1EC68
/* 000872 0x80B1EC50 861802C4 */ lh	$t8, 0X2C4($s0)
/* 000873 0x80B1EC54 8E0F05DC */ lw	$t7, 0X5DC($s0)
/* 000874 0x80B1EC58 24010002 */ li	$at, 0X2
/* 000875 0x80B1EC5C 55E1002F */ bnel	$t7, $at, .L80B1ED1C
/* 000876 0x80B1EC60 260402D4 */ addiu	$a0, $s0, 0X2D4
/* 000877 0x80B1EC64 861802C4 */ lh	$t8, 0X2C4($s0)
.L80B1EC68:
/* 000878 0x80B1EC68 86040092 */ lh	$a0, 0X92($s0)
/* 000879 0x80B1EC6C 34018000 */ ori	$at, $zero, 0X8000
/* 000880 0x80B1EC70 13000020 */ beqz	$t8, .L80B1ECF4
/* 000881 0x80B1EC74 A60402D0 */ sh	$a0, 0X2D0($s0)
/* 000882 0x80B1EC78 86020016 */ lh	$v0, 0X16($s0)
/* 000883 0x80B1EC7C 26050024 */ addiu	$a1, $s0, 0X24
/* 000884 0x80B1EC80 00821823 */ subu	$v1, $a0, $v0
/* 000885 0x80B1EC84 00031C00 */ sll	$v1, $v1, 16
/* 000886 0x80B1EC88 00031C03 */ sra	$v1, $v1, 16
/* 000887 0x80B1EC8C 04610003 */ bgez	$v1, .L80B1EC9C
/* 000888 0x80B1EC90 0041C821 */ addu	$t9, $v0, $at
/* 000889 0x80B1EC94 10000002 */ b	.L80B1ECA0
/* 000890 0x80B1EC98 00032023 */ negu	$a0, $v1
.L80B1EC9C:
/* 000891 0x80B1EC9C 00602025 */ move	$a0, $v1
.L80B1ECA0:
/* 000892 0x80B1ECA0 28813000 */ slti	$at, $a0, 0X3000
/* 000893 0x80B1ECA4 10200002 */ beqz	$at, .L80B1ECB0
/* 000894 0x80B1ECA8 A61902D0 */ sh	$t9, 0X2D0($s0)
/* 000895 0x80B1ECAC A60202D0 */ sh	$v0, 0X2D0($s0)
.L80B1ECB0:
/* 000896 0x80B1ECB0 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000897 0x80B1ECB4 26040358 */ addiu	$a0, $s0, 0X358
/* 000898 0x80B1ECB8 860402D0 */ lh	$a0, 0X2D0($s0)
/* 000899 0x80B1ECBC 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000900 0x80B1ECC0 00002825 */ move	$a1, $zero
/* 000901 0x80B1ECC4 3C014396 */ lui	$at, 0x4396
/* 000902 0x80B1ECC8 44816000 */ mtc1	$at, $f12
/* 000903 0x80B1ECCC 0C060704 */ jal	SysMatrix_GetStateTranslationAndScaledZ
/* 000904 0x80B1ECD0 27A5003C */ addiu	$a1, $sp, 0X3C
/* 000905 0x80B1ECD4 C6060358 */ lwc1	$f6, 0X358($s0)
/* 000906 0x80B1ECD8 C7A8003C */ lwc1	$f8, 0X3C($sp)
/* 000907 0x80B1ECDC C6100360 */ lwc1	$f16, 0X360($s0)
/* 000908 0x80B1ECE0 46083280 */ add.s	$f10, $f6, $f8
/* 000909 0x80B1ECE4 E60A0358 */ swc1	$f10, 0X358($s0)
/* 000910 0x80B1ECE8 C7B20044 */ lwc1	$f18, 0X44($sp)
/* 000911 0x80B1ECEC 46128100 */ add.s	$f4, $f16, $f18
/* 000912 0x80B1ECF0 E6040360 */ swc1	$f4, 0X360($s0)
.L80B1ECF4:
/* 000913 0x80B1ECF4 860702D4 */ lh	$a3, 0X2D4($s0)
/* 000914 0x80B1ECF8 860502D0 */ lh	$a1, 0X2D0($s0)
/* 000915 0x80B1ECFC AFA00010 */ sw	$zero, 0X10($sp)
/* 000916 0x80B1ED00 24E707D0 */ addiu	$a3, $a3, 0X7D0
/* 000917 0x80B1ED04 00073C00 */ sll	$a3, $a3, 16
/* 000918 0x80B1ED08 00073C03 */ sra	$a3, $a3, 16
/* 000919 0x80B1ED0C 26040032 */ addiu	$a0, $s0, 0X32
/* 000920 0x80B1ED10 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000921 0x80B1ED14 24060001 */ li	$a2, 0X1
/* 000922 0x80B1ED18 260402D4 */ addiu	$a0, $s0, 0X2D4
.L80B1ED1C:
/* 000923 0x80B1ED1C 00002825 */ move	$a1, $zero
/* 000924 0x80B1ED20 24060001 */ li	$a2, 0X1
/* 000925 0x80B1ED24 240701F4 */ li	$a3, 0X1F4
/* 000926 0x80B1ED28 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000927 0x80B1ED2C AFA00010 */ sw	$zero, 0X10($sp)
/* 000928 0x80B1ED30 860802D2 */ lh	$t0, 0X2D2($s0)
/* 000929 0x80B1ED34 26040070 */ addiu	$a0, $s0, 0X70
/* 000930 0x80B1ED38 3C053F00 */ lui	$a1, 0x3F00
/* 000931 0x80B1ED3C 55000018 */ bnezl	$t0, .L80B1EDA0
/* 000932 0x80B1ED40 8E0205DC */ lw	$v0, 0X5DC($s0)
/* 000933 0x80B1ED44 0C03FF9A */ jal	Math_SmoothDownscaleMaxF
/* 000934 0x80B1ED48 3C063F80 */ lui	$a2, 0x3F80
/* 000935 0x80B1ED4C 860202D0 */ lh	$v0, 0X2D0($s0)
/* 000936 0x80B1ED50 86090032 */ lh	$t1, 0X32($s0)
/* 000937 0x80B1ED54 3C0142C8 */ lui	$at, 0x42C8
/* 000938 0x80B1ED58 44814000 */ mtc1	$at, $f8
/* 000939 0x80B1ED5C 01225023 */ subu	$t2, $t1, $v0
/* 000940 0x80B1ED60 448A3000 */ mtc1	$t2, $f6
/* 000941 0x80B1ED64 240C0001 */ li	$t4, 0X1
/* 000942 0x80B1ED68 46803020 */ cvt.s.w	$f0, $f6
/* 000943 0x80B1ED6C 46000005 */ abs.s	$f0, $f0
/* 000944 0x80B1ED70 4608003C */ c.lt.s	$f0, $f8
/* 000945 0x80B1ED74 00000000 */ nop
/* 000946 0x80B1ED78 45000006 */ bc1f .L80B1ED94
/* 000947 0x80B1ED7C 00000000 */ nop
/* 000948 0x80B1ED80 860B02C4 */ lh	$t3, 0X2C4($s0)
/* 000949 0x80B1ED84 51600003 */ beqzl	$t3, .L80B1ED94
/* 000950 0x80B1ED88 A60C02D2 */ sh	$t4, 0X2D2($s0)
/* 000951 0x80B1ED8C A6020032 */ sh	$v0, 0X32($s0)
/* 000952 0x80B1ED90 A60C02D2 */ sh	$t4, 0X2D2($s0)
.L80B1ED94:
/* 000953 0x80B1ED94 10000087 */ b	.L80B1EFB4
/* 000954 0x80B1ED98 8E0205DC */ lw	$v0, 0X5DC($s0)
/* 000955 0x80B1ED9C 8E0205DC */ lw	$v0, 0X5DC($s0)
.L80B1EDA0:
/* 000956 0x80B1EDA0 24010007 */ li	$at, 0X7
/* 000957 0x80B1EDA4 02002025 */ move	$a0, $s0
/* 000958 0x80B1EDA8 54410006 */ bnel	$v0, $at, .L80B1EDC4
/* 000959 0x80B1EDAC 24010002 */ li	$at, 0X2
/* 000960 0x80B1EDB0 0C2C796A */ jal	func_80B1E5A8
/* 000961 0x80B1EDB4 24050002 */ li	$a1, 0X2
/* 000962 0x80B1EDB8 1000007E */ b	.L80B1EFB4
/* 000963 0x80B1EDBC 8E0205DC */ lw	$v0, 0X5DC($s0)
/* 000964 0x80B1EDC0 24010002 */ li	$at, 0X2
.L80B1EDC4:
/* 000965 0x80B1EDC4 1441000F */ bne	$v0, $at, .L80B1EE04
/* 000966 0x80B1EDC8 C7AA004C */ lwc1	$f10, 0X4C($sp)
/* 000967 0x80B1EDCC C61002D8 */ lwc1	$f16, 0X2D8($s0)
/* 000968 0x80B1EDD0 3C014160 */ lui	$at, 0x4160
/* 000969 0x80B1EDD4 240D0014 */ li	$t5, 0X14
/* 000970 0x80B1EDD8 460A803E */ c.le.s	$f16, $f10
/* 000971 0x80B1EDDC 02002025 */ move	$a0, $s0
/* 000972 0x80B1EDE0 24050003 */ li	$a1, 0X3
/* 000973 0x80B1EDE4 45020074 */ bc1fl .L80B1EFB8
/* 000974 0x80B1EDE8 24010002 */ li	$at, 0X2
/* 000975 0x80B1EDEC 44819000 */ mtc1	$at, $f18
/* 000976 0x80B1EDF0 A60D02CA */ sh	$t5, 0X2CA($s0)
/* 000977 0x80B1EDF4 0C2C796A */ jal	func_80B1E5A8
/* 000978 0x80B1EDF8 E61202DC */ swc1	$f18, 0X2DC($s0)
/* 000979 0x80B1EDFC 1000006D */ b	.L80B1EFB4
/* 000980 0x80B1EE00 8E0205DC */ lw	$v0, 0X5DC($s0)
.L80B1EE04:
/* 000981 0x80B1EE04 24010003 */ li	$at, 0X3
/* 000982 0x80B1EE08 1441006A */ bne	$v0, $at, .L80B1EFB4
/* 000983 0x80B1EE0C 02002025 */ move	$a0, $s0
/* 000984 0x80B1EE10 0C2C79DE */ jal	func_80B1E778
/* 000985 0x80B1EE14 8FA50054 */ lw	$a1, 0X54($sp)
/* 000986 0x80B1EE18 50400008 */ beqzl	$v0, .L80B1EE3C
/* 000987 0x80B1EE1C 860E02C4 */ lh	$t6, 0X2C4($s0)
/* 000988 0x80B1EE20 44802000 */ mtc1	$zero, $f4
/* 000989 0x80B1EE24 02002025 */ move	$a0, $s0
/* 000990 0x80B1EE28 0C2C7C91 */ jal	func_80B1F244
/* 000991 0x80B1EE2C E6040070 */ swc1	$f4, 0X70($s0)
/* 000992 0x80B1EE30 1000006E */ b	.L80B1EFEC
/* 000993 0x80B1EE34 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000994 0x80B1EE38 860E02C4 */ lh	$t6, 0X2C4($s0)
.L80B1EE3C:
/* 000995 0x80B1EE3C 26040070 */ addiu	$a0, $s0, 0X70
/* 000996 0x80B1EE40 3C054120 */ lui	$a1, 0x4120
/* 000997 0x80B1EE44 15C00007 */ bnez	$t6, .L80B1EE64
/* 000998 0x80B1EE48 260F0024 */ addiu	$t7, $s0, 0X24
/* 000999 0x80B1EE4C 3C063E99 */ lui	$a2, 0x3E99
/* 001000 0x80B1EE50 34C6999A */ ori	$a2, $a2, 0X999A
/* 001001 0x80B1EE54 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 001002 0x80B1EE58 3C073F80 */ lui	$a3, 0x3F80
/* 001003 0x80B1EE5C 10000022 */ b	.L80B1EEE8
/* 001004 0x80B1EE60 860202CA */ lh	$v0, 0X2CA($s0)
.L80B1EE64:
/* 001005 0x80B1EE64 860402D0 */ lh	$a0, 0X2D0($s0)
/* 001006 0x80B1EE68 0C03FB61 */ jal	Math_Sins
/* 001007 0x80B1EE6C AFAF0030 */ sw	$t7, 0X30($sp)
/* 001008 0x80B1EE70 C60602DC */ lwc1	$f6, 0X2DC($s0)
/* 001009 0x80B1EE74 8FA40030 */ lw	$a0, 0X30($sp)
/* 001010 0x80B1EE78 8E050358 */ lw	$a1, 0X358($s0)
/* 001011 0x80B1EE7C 46060002 */ mul.s	$f0, $f0, $f6
/* 001012 0x80B1EE80 3C063F00 */ lui	$a2, 0x3F00
/* 001013 0x80B1EE84 46000005 */ abs.s	$f0, $f0
/* 001014 0x80B1EE88 44070000 */ mfc1	$a3, $f0
/* 001015 0x80B1EE8C 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 001016 0x80B1EE90 00000000 */ nop
/* 001017 0x80B1EE94 0C03FB51 */ jal	Math_Coss
/* 001018 0x80B1EE98 860402D0 */ lh	$a0, 0X2D0($s0)
/* 001019 0x80B1EE9C C60802DC */ lwc1	$f8, 0X2DC($s0)
/* 001020 0x80B1EEA0 2604002C */ addiu	$a0, $s0, 0X2C
/* 001021 0x80B1EEA4 8E050360 */ lw	$a1, 0X360($s0)
/* 001022 0x80B1EEA8 46080002 */ mul.s	$f0, $f0, $f8
/* 001023 0x80B1EEAC 3C063F00 */ lui	$a2, 0x3F00
/* 001024 0x80B1EEB0 46000005 */ abs.s	$f0, $f0
/* 001025 0x80B1EEB4 44070000 */ mfc1	$a3, $f0
/* 001026 0x80B1EEB8 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 001027 0x80B1EEBC 00000000 */ nop
/* 001028 0x80B1EEC0 860202CA */ lh	$v0, 0X2CA($s0)
/* 001029 0x80B1EEC4 3C053E99 */ lui	$a1, 0x3E99
/* 001030 0x80B1EEC8 34A5999A */ ori	$a1, $a1, 0X999A
/* 001031 0x80B1EECC 2841000A */ slti	$at, $v0, 0XA
/* 001032 0x80B1EED0 10200005 */ beqz	$at, .L80B1EEE8
/* 001033 0x80B1EED4 260402DC */ addiu	$a0, $s0, 0X2DC
/* 001034 0x80B1EED8 3C063E4C */ lui	$a2, 0x3E4C
/* 001035 0x80B1EEDC 0C03FF9A */ jal	Math_SmoothDownscaleMaxF
/* 001036 0x80B1EEE0 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 001037 0x80B1EEE4 860202CA */ lh	$v0, 0X2CA($s0)
.L80B1EEE8:
/* 001038 0x80B1EEE8 54400006 */ bnezl	$v0, .L80B1EF04
/* 001039 0x80B1EEEC 920204A4 */ lbu	$v0, 0X4A4($s0)
/* 001040 0x80B1EEF0 0C2C7C91 */ jal	func_80B1F244
/* 001041 0x80B1EEF4 02002025 */ move	$a0, $s0
/* 001042 0x80B1EEF8 1000003C */ b	.L80B1EFEC
/* 001043 0x80B1EEFC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001044 0x80B1EF00 920204A4 */ lbu	$v0, 0X4A4($s0)
.L80B1EF04:
/* 001045 0x80B1EF04 30580004 */ andi	$t8, $v0, 0X4
/* 001046 0x80B1EF08 57000011 */ bnezl	$t8, .L80B1EF50
/* 001047 0x80B1EF0C 860A02C4 */ lh	$t2, 0X2C4($s0)
/* 001048 0x80B1EF10 92030504 */ lbu	$v1, 0X504($s0)
/* 001049 0x80B1EF14 30480002 */ andi	$t0, $v0, 0X2
/* 001050 0x80B1EF18 30790004 */ andi	$t9, $v1, 0X4
/* 001051 0x80B1EF1C 5720000C */ bnezl	$t9, .L80B1EF50
/* 001052 0x80B1EF20 860A02C4 */ lh	$t2, 0X2C4($s0)
/* 001053 0x80B1EF24 15000003 */ bnez	$t0, .L80B1EF34
/* 001054 0x80B1EF28 30690002 */ andi	$t1, $v1, 0X2
/* 001055 0x80B1EF2C 11200005 */ beqz	$t1, .L80B1EF44
/* 001056 0x80B1EF30 00000000 */ nop
.L80B1EF34:
/* 001057 0x80B1EF34 0C2C7BFF */ jal	func_80B1EFFC
/* 001058 0x80B1EF38 02002025 */ move	$a0, $s0
/* 001059 0x80B1EF3C 1000002B */ b	.L80B1EFEC
/* 001060 0x80B1EF40 8FBF0024 */ lw	$ra, 0X24($sp)
.L80B1EF44:
/* 001061 0x80B1EF44 1000001B */ b	.L80B1EFB4
/* 001062 0x80B1EF48 8E0205DC */ lw	$v0, 0X5DC($s0)
/* 001063 0x80B1EF4C 860A02C4 */ lh	$t2, 0X2C4($s0)
.L80B1EF50:
/* 001064 0x80B1EF50 51400006 */ beqzl	$t2, .L80B1EF6C
/* 001065 0x80B1EF54 860B001C */ lh	$t3, 0X1C($s0)
/* 001066 0x80B1EF58 0C2C7C29 */ jal	func_80B1F0A4
/* 001067 0x80B1EF5C 02002025 */ move	$a0, $s0
/* 001068 0x80B1EF60 10000022 */ b	.L80B1EFEC
/* 001069 0x80B1EF64 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001070 0x80B1EF68 860B001C */ lh	$t3, 0X1C($s0)
.L80B1EF6C:
/* 001071 0x80B1EF6C 3C01BF00 */ lui	$at, 0xBF00
/* 001072 0x80B1EF70 51600008 */ beqzl	$t3, .L80B1EF94
/* 001073 0x80B1EF74 C6040070 */ lwc1	$f4, 0X70($s0)
/* 001074 0x80B1EF78 3C01BF80 */ lui	$at, 0xBF80
/* 001075 0x80B1EF7C 44818000 */ mtc1	$at, $f16
/* 001076 0x80B1EF80 C60A0070 */ lwc1	$f10, 0X70($s0)
/* 001077 0x80B1EF84 46105482 */ mul.s	$f18, $f10, $f16
/* 001078 0x80B1EF88 10000006 */ b	.L80B1EFA4
/* 001079 0x80B1EF8C E6120070 */ swc1	$f18, 0X70($s0)
/* 001080 0x80B1EF90 C6040070 */ lwc1	$f4, 0X70($s0)
.L80B1EF94:
/* 001081 0x80B1EF94 44813000 */ mtc1	$at, $f6
/* 001082 0x80B1EF98 00000000 */ nop
/* 001083 0x80B1EF9C 46062202 */ mul.s	$f8, $f4, $f6
/* 001084 0x80B1EFA0 E6080070 */ swc1	$f8, 0X70($s0)
.L80B1EFA4:
/* 001085 0x80B1EFA4 0C2C7C91 */ jal	func_80B1F244
/* 001086 0x80B1EFA8 02002025 */ move	$a0, $s0
/* 001087 0x80B1EFAC 1000000F */ b	.L80B1EFEC
/* 001088 0x80B1EFB0 8FBF0024 */ lw	$ra, 0X24($sp)
.L80B1EFB4:
/* 001089 0x80B1EFB4 24010002 */ li	$at, 0X2
.L80B1EFB8:
/* 001090 0x80B1EFB8 10410003 */ beq	$v0, $at, .L80B1EFC8
/* 001091 0x80B1EFBC 24010003 */ li	$at, 0X3
/* 001092 0x80B1EFC0 5441000A */ bnel	$v0, $at, .L80B1EFEC
/* 001093 0x80B1EFC4 8FBF0024 */ lw	$ra, 0X24($sp)
.L80B1EFC8:
/* 001094 0x80B1EFC8 860C02CC */ lh	$t4, 0X2CC($s0)
/* 001095 0x80B1EFCC 02002025 */ move	$a0, $s0
/* 001096 0x80B1EFD0 55800006 */ bnezl	$t4, .L80B1EFEC
/* 001097 0x80B1EFD4 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001098 0x80B1EFD8 0C2C78F5 */ jal	func_80B1E3D4
/* 001099 0x80B1EFDC 8FA50054 */ lw	$a1, 0X54($sp)
/* 001100 0x80B1EFE0 240D0003 */ li	$t5, 0X3
/* 001101 0x80B1EFE4 A60D02CC */ sh	$t5, 0X2CC($s0)
/* 001102 0x80B1EFE8 8FBF0024 */ lw	$ra, 0X24($sp)
.L80B1EFEC:
/* 001103 0x80B1EFEC 8FB00020 */ lw	$s0, 0X20($sp)
/* 001104 0x80B1EFF0 27BD0050 */ addiu	$sp, $sp, 0X50
/* 001105 0x80B1EFF4 03E00008 */ jr	$ra
/* 001106 0x80B1EFF8 00000000 */ nop

