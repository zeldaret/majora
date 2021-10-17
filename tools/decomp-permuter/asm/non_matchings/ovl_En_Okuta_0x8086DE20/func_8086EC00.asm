glabel func_8086EC00
/* 000888 0x8086EC00 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 000889 0x8086EC04 AFB00018 */ sw	$s0, 0X18($sp)
/* 000890 0x8086EC08 00808025 */ move	$s0, $a0
/* 000891 0x8086EC0C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000892 0x8086EC10 AFA5004C */ sw	$a1, 0X4C($sp)
/* 000893 0x8086EC14 260400BE */ addiu	$a0, $s0, 0XBE
/* 000894 0x8086EC18 86050092 */ lh	$a1, 0X92($s0)
/* 000895 0x8086EC1C 24060003 */ li	$a2, 0X3
/* 000896 0x8086EC20 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 000897 0x8086EC24 2407071C */ li	$a3, 0X71C
/* 000898 0x8086EC28 26040144 */ addiu	$a0, $s0, 0X144
/* 000899 0x8086EC2C 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000900 0x8086EC30 AFA40028 */ sw	$a0, 0X28($sp)
/* 000901 0x8086EC34 50400021 */ beqzl	$v0, .L8086ECBC
/* 000902 0x8086EC38 8618001C */ lh	$t8, 0X1C($s0)
/* 000903 0x8086EC3C 8602018E */ lh	$v0, 0X18E($s0)
/* 000904 0x8086EC40 02002025 */ move	$a0, $s0
/* 000905 0x8086EC44 10400003 */ beqz	$v0, .L8086EC54
/* 000906 0x8086EC48 244EFFFF */ addiu	$t6, $v0, -0X1
/* 000907 0x8086EC4C A60E018E */ sh	$t6, 0X18E($s0)
/* 000908 0x8086EC50 8602018E */ lh	$v0, 0X18E($s0)
.L8086EC54:
/* 000909 0x8086EC54 14400014 */ bnez	$v0, .L8086ECA8
/* 000910 0x8086EC58 00000000 */ nop
/* 000911 0x8086EC5C 860F001C */ lh	$t7, 0X1C($s0)
/* 000912 0x8086EC60 24010001 */ li	$at, 0X1
/* 000913 0x8086EC64 15E10008 */ bne	$t7, $at, .L8086EC88
/* 000914 0x8086EC68 3C014316 */ lui	$at, 0x4316
/* 000915 0x8086EC6C 44812000 */ mtc1	$at, $f4
/* 000916 0x8086EC70 C6060098 */ lwc1	$f6, 0X98($s0)
/* 000917 0x8086EC74 02002025 */ move	$a0, $s0
/* 000918 0x8086EC78 4606203C */ c.lt.s	$f4, $f6
/* 000919 0x8086EC7C 00000000 */ nop
/* 000920 0x8086EC80 45000005 */ bc1f .L8086EC98
/* 000921 0x8086EC84 00000000 */ nop
.L8086EC88:
/* 000922 0x8086EC88 0C21BA3A */ jal	func_8086E8E8
/* 000923 0x8086EC8C 02002025 */ move	$a0, $s0
/* 000924 0x8086EC90 1000006D */ b	.L8086EE48
/* 000925 0x8086EC94 860A001C */ lh	$t2, 0X1C($s0)
.L8086EC98:
/* 000926 0x8086EC98 0C21BAB8 */ jal	func_8086EAE0
/* 000927 0x8086EC9C 8FA5004C */ lw	$a1, 0X4C($sp)
/* 000928 0x8086ECA0 10000069 */ b	.L8086EE48
/* 000929 0x8086ECA4 860A001C */ lh	$t2, 0X1C($s0)
.L8086ECA8:
/* 000930 0x8086ECA8 0C21BAB8 */ jal	func_8086EAE0
/* 000931 0x8086ECAC 8FA5004C */ lw	$a1, 0X4C($sp)
/* 000932 0x8086ECB0 10000065 */ b	.L8086EE48
/* 000933 0x8086ECB4 860A001C */ lh	$t2, 0X1C($s0)
/* 000934 0x8086ECB8 8618001C */ lh	$t8, 0X1C($s0)
.L8086ECBC:
/* 000935 0x8086ECBC 3C014150 */ lui	$at, 0x4150
/* 000936 0x8086ECC0 17000024 */ bnez	$t8, .L8086ED54
/* 000937 0x8086ECC4 00000000 */ nop
/* 000938 0x8086ECC8 C602015C */ lwc1	$f2, 0X15C($s0)
/* 000939 0x8086ECCC 44814000 */ mtc1	$at, $f8
/* 000940 0x8086ECD0 3C018087 */ lui	$at, %hi(D_8087099C)
/* 000941 0x8086ECD4 4608103C */ c.lt.s	$f2, $f8
/* 000942 0x8086ECD8 00000000 */ nop
/* 000943 0x8086ECDC 4502000B */ bc1fl .L8086ED0C
/* 000944 0x8086ECE0 3C014248 */ lui	$at, 0x4248
/* 000945 0x8086ECE4 C42A099C */ lwc1	$f10, %lo(D_8087099C)($at)
/* 000946 0x8086ECE8 46025302 */ mul.s	$f12, $f10, $f2
/* 000947 0x8086ECEC 0C05E53B */ jal	sin_rad
/* 000948 0x8086ECF0 00000000 */ nop
/* 000949 0x8086ECF4 C6100260 */ lwc1	$f16, 0X260($s0)
/* 000950 0x8086ECF8 C604000C */ lwc1	$f4, 0XC($s0)
/* 000951 0x8086ECFC 46100482 */ mul.s	$f18, $f0, $f16
/* 000952 0x8086ED00 46049180 */ add.s	$f6, $f18, $f4
/* 000953 0x8086ED04 E6060028 */ swc1	$f6, 0X28($s0)
/* 000954 0x8086ED08 3C014248 */ lui	$at, 0x4248
.L8086ED0C:
/* 000955 0x8086ED0C 44814000 */ mtc1	$at, $f8
/* 000956 0x8086ED10 C60A0260 */ lwc1	$f10, 0X260($s0)
/* 000957 0x8086ED14 8FA40028 */ lw	$a0, 0X28($sp)
/* 000958 0x8086ED18 460A403C */ c.lt.s	$f8, $f10
/* 000959 0x8086ED1C 00000000 */ nop
/* 000960 0x8086ED20 45020042 */ bc1fl .L8086EE2C
/* 000961 0x8086ED24 8FA40028 */ lw	$a0, 0X28($sp)
/* 000962 0x8086ED28 0C04DE2E */ jal	func_801378B8
/* 000963 0x8086ED2C 3C054150 */ lui	$a1, 0x4150
/* 000964 0x8086ED30 1040003D */ beqz	$v0, .L8086EE28
/* 000965 0x8086ED34 02002025 */ move	$a0, $s0
/* 000966 0x8086ED38 0C21B89F */ jal	func_8086E27C
/* 000967 0x8086ED3C 8FA5004C */ lw	$a1, 0X4C($sp)
/* 000968 0x8086ED40 02002025 */ move	$a0, $s0
/* 000969 0x8086ED44 0C02E3B2 */ jal	func_800B8EC8
/* 000970 0x8086ED48 240538C3 */ li	$a1, 0X38C3
/* 000971 0x8086ED4C 10000037 */ b	.L8086EE2C
/* 000972 0x8086ED50 8FA40028 */ lw	$a0, 0X28($sp)
.L8086ED54:
/* 000973 0x8086ED54 0C21B8DE */ jal	func_8086E378
/* 000974 0x8086ED58 02002025 */ move	$a0, $s0
/* 000975 0x8086ED5C 3C014150 */ lui	$at, 0x4150
/* 000976 0x8086ED60 44818000 */ mtc1	$at, $f16
/* 000977 0x8086ED64 C602015C */ lwc1	$f2, 0X15C($s0)
/* 000978 0x8086ED68 E6000028 */ swc1	$f0, 0X28($s0)
/* 000979 0x8086ED6C 8FB9004C */ lw	$t9, 0X4C($sp)
/* 000980 0x8086ED70 4610103C */ c.lt.s	$f2, $f16
/* 000981 0x8086ED74 00000000 */ nop
/* 000982 0x8086ED78 4502002C */ bc1fl .L8086EE2C
/* 000983 0x8086ED7C 8FA40028 */ lw	$a0, 0X28($sp)
/* 000984 0x8086ED80 8F221CCC */ lw	$v0, 0X1CCC($t9)
/* 000985 0x8086ED84 3C0141A0 */ lui	$at, 0x41A0
/* 000986 0x8086ED88 44813000 */ mtc1	$at, $f6
/* 000987 0x8086ED8C C4520024 */ lwc1	$f18, 0X24($v0)
/* 000988 0x8086ED90 02002025 */ move	$a0, $s0
/* 000989 0x8086ED94 27A50034 */ addiu	$a1, $sp, 0X34
/* 000990 0x8086ED98 E7B20034 */ swc1	$f18, 0X34($sp)
/* 000991 0x8086ED9C C4440028 */ lwc1	$f4, 0X28($v0)
/* 000992 0x8086EDA0 46062200 */ add.s	$f8, $f4, $f6
/* 000993 0x8086EDA4 E7A80038 */ swc1	$f8, 0X38($sp)
/* 000994 0x8086EDA8 C44A002C */ lwc1	$f10, 0X2C($v0)
/* 000995 0x8086EDAC E7A20044 */ swc1	$f2, 0X44($sp)
/* 000996 0x8086EDB0 0C02DB6A */ jal	Actor_PitchToPoint
/* 000997 0x8086EDB4 E7AA003C */ swc1	$f10, 0X3C($sp)
/* 000998 0x8086EDB8 2841D556 */ slti	$at, $v0, -0X2AAA
/* 000999 0x8086EDBC 10200003 */ beqz	$at, .L8086EDCC
/* 001000 0x8086EDC0 C7A20044 */ lwc1	$f2, 0X44($sp)
/* 001001 0x8086EDC4 10000009 */ b	.L8086EDEC
/* 001002 0x8086EDC8 2402D556 */ li	$v0, -0X2AAA
.L8086EDCC:
/* 001003 0x8086EDCC 00022400 */ sll	$a0, $v0, 16
/* 001004 0x8086EDD0 00042403 */ sra	$a0, $a0, 16
/* 001005 0x8086EDD4 18800003 */ blez	$a0, .L8086EDE4
/* 001006 0x8086EDD8 00801825 */ move	$v1, $a0
/* 001007 0x8086EDDC 10000001 */ b	.L8086EDE4
/* 001008 0x8086EDE0 00001825 */ move	$v1, $zero
.L8086EDE4:
/* 001009 0x8086EDE4 00031400 */ sll	$v0, $v1, 16
/* 001010 0x8086EDE8 00021403 */ sra	$v0, $v0, 16
.L8086EDEC:
/* 001011 0x8086EDEC 3C018087 */ lui	$at, %hi(D_808709A0)
/* 001012 0x8086EDF0 C43009A0 */ lwc1	$f16, %lo(D_808709A0)($at)
/* 001013 0x8086EDF4 A7A20032 */ sh	$v0, 0X32($sp)
/* 001014 0x8086EDF8 46028302 */ mul.s	$f12, $f16, $f2
/* 001015 0x8086EDFC 0C05E53B */ jal	sin_rad
/* 001016 0x8086EE00 00000000 */ nop
/* 001017 0x8086EE04 87A20032 */ lh	$v0, 0X32($sp)
/* 001018 0x8086EE08 44829000 */ mtc1	$v0, $f18
/* 001019 0x8086EE0C 00000000 */ nop
/* 001020 0x8086EE10 46809120 */ cvt.s.w	$f4, $f18
/* 001021 0x8086EE14 46040182 */ mul.s	$f6, $f0, $f4
/* 001022 0x8086EE18 4600320D */ trunc.w.s	$f8, $f6
/* 001023 0x8086EE1C 44094000 */ mfc1	$t1, $f8
/* 001024 0x8086EE20 00000000 */ nop
/* 001025 0x8086EE24 A60900BC */ sh	$t1, 0XBC($s0)
.L8086EE28:
/* 001026 0x8086EE28 8FA40028 */ lw	$a0, 0X28($sp)
.L8086EE2C:
/* 001027 0x8086EE2C 0C04DE2E */ jal	func_801378B8
/* 001028 0x8086EE30 3C0540C0 */ lui	$a1, 0x40C0
/* 001029 0x8086EE34 10400003 */ beqz	$v0, .L8086EE44
/* 001030 0x8086EE38 02002025 */ move	$a0, $s0
/* 001031 0x8086EE3C 0C21B8EE */ jal	func_8086E3B8
/* 001032 0x8086EE40 8FA5004C */ lw	$a1, 0X4C($sp)
.L8086EE44:
/* 001033 0x8086EE44 860A001C */ lh	$t2, 0X1C($s0)
.L8086EE48:
/* 001034 0x8086EE48 3C014320 */ lui	$at, 0x4320
/* 001035 0x8086EE4C 5540000B */ bnezl	$t2, .L8086EE7C
/* 001036 0x8086EE50 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001037 0x8086EE54 C60A0098 */ lwc1	$f10, 0X98($s0)
/* 001038 0x8086EE58 44818000 */ mtc1	$at, $f16
/* 001039 0x8086EE5C 00000000 */ nop
/* 001040 0x8086EE60 4610503C */ c.lt.s	$f10, $f16
/* 001041 0x8086EE64 00000000 */ nop
/* 001042 0x8086EE68 45020004 */ bc1fl .L8086EE7C
/* 001043 0x8086EE6C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001044 0x8086EE70 0C21B9EA */ jal	func_8086E7A8
/* 001045 0x8086EE74 02002025 */ move	$a0, $s0
/* 001046 0x8086EE78 8FBF001C */ lw	$ra, 0X1C($sp)
.L8086EE7C:
/* 001047 0x8086EE7C 8FB00018 */ lw	$s0, 0X18($sp)
/* 001048 0x8086EE80 27BD0048 */ addiu	$sp, $sp, 0X48
/* 001049 0x8086EE84 03E00008 */ jr	$ra
/* 001050 0x8086EE88 00000000 */ nop

