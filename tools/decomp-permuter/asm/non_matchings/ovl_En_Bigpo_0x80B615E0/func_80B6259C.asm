glabel func_80B6259C
/* 001007 0x80B6259C 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 001008 0x80B625A0 AFB00018 */ sw	$s0, 0X18($sp)
/* 001009 0x80B625A4 00808025 */ move	$s0, $a0
/* 001010 0x80B625A8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001011 0x80B625AC 8CAE1CCC */ lw	$t6, 0X1CCC($a1)
/* 001012 0x80B625B0 26040144 */ addiu	$a0, $s0, 0X144
/* 001013 0x80B625B4 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 001014 0x80B625B8 AFAE002C */ sw	$t6, 0X2C($sp)
/* 001015 0x80B625BC 86030206 */ lh	$v1, 0X206($s0)
/* 001016 0x80B625C0 10600002 */ beqz	$v1, .L80B625CC
/* 001017 0x80B625C4 246FFFFF */ addiu	$t7, $v1, -0X1
/* 001018 0x80B625C8 A60F0206 */ sh	$t7, 0X206($s0)
.L80B625CC:
/* 001019 0x80B625CC 86020212 */ lh	$v0, 0X212($s0)
/* 001020 0x80B625D0 14400004 */ bnez	$v0, .L80B625E4
/* 001021 0x80B625D4 2459FFFF */ addiu	$t9, $v0, -0X1
/* 001022 0x80B625D8 24180028 */ li	$t8, 0X28
/* 001023 0x80B625DC 10000002 */ b	.L80B625E8
/* 001024 0x80B625E0 A6180212 */ sh	$t8, 0X212($s0)
.L80B625E4:
/* 001025 0x80B625E4 A6190212 */ sh	$t9, 0X212($s0)
.L80B625E8:
/* 001026 0x80B625E8 8FA8002C */ lw	$t0, 0X2C($sp)
/* 001027 0x80B625EC 3C0142C8 */ lui	$at, 0x42C8
/* 001028 0x80B625F0 44813000 */ mtc1	$at, $f6
/* 001029 0x80B625F4 C5040028 */ lwc1	$f4, 0X28($t0)
/* 001030 0x80B625F8 26040218 */ addiu	$a0, $s0, 0X218
/* 001031 0x80B625FC 3C063FC0 */ lui	$a2, 0x3FC0
/* 001032 0x80B62600 46062200 */ add.s	$f8, $f4, $f6
/* 001033 0x80B62604 44054000 */ mfc1	$a1, $f8
/* 001034 0x80B62608 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 001035 0x80B6260C 00000000 */ nop
/* 001036 0x80B62610 86090212 */ lh	$t1, 0X212($s0)
/* 001037 0x80B62614 3C0180B6 */ lui	$at, %hi(D_80B650BC)
/* 001038 0x80B62618 C43250BC */ lwc1	$f18, %lo(D_80B650BC)($at)
/* 001039 0x80B6261C 44895000 */ mtc1	$t1, $f10
/* 001040 0x80B62620 00000000 */ nop
/* 001041 0x80B62624 46805420 */ cvt.s.w	$f16, $f10
/* 001042 0x80B62628 46128302 */ mul.s	$f12, $f16, $f18
/* 001043 0x80B6262C 0C05E53B */ jal	sin_rad
/* 001044 0x80B62630 00000000 */ nop
/* 001045 0x80B62634 3C014120 */ lui	$at, 0x4120
/* 001046 0x80B62638 44812000 */ mtc1	$at, $f4
/* 001047 0x80B6263C C6080218 */ lwc1	$f8, 0X218($s0)
/* 001048 0x80B62640 3C063E4C */ lui	$a2, 0x3E4C
/* 001049 0x80B62644 46040182 */ mul.s	$f6, $f0, $f4
/* 001050 0x80B62648 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 001051 0x80B6264C 26040070 */ addiu	$a0, $s0, 0X70
/* 001052 0x80B62650 3C054040 */ lui	$a1, 0x4040
/* 001053 0x80B62654 46083280 */ add.s	$f10, $f6, $f8
/* 001054 0x80B62658 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 001055 0x80B6265C E60A0028 */ swc1	$f10, 0X28($s0)
/* 001056 0x80B62660 02002025 */ move	$a0, $s0
/* 001057 0x80B62664 0C02E404 */ jal	func_800B9010
/* 001058 0x80B62668 24053071 */ li	$a1, 0X3071
/* 001059 0x80B6266C 26050008 */ addiu	$a1, $s0, 0X8
/* 001060 0x80B62670 AFA50020 */ sw	$a1, 0X20($sp)
/* 001061 0x80B62674 0C02DB92 */ jal	Actor_XZDistanceToPoint
/* 001062 0x80B62678 02002025 */ move	$a0, $s0
/* 001063 0x80B6267C 3C014396 */ lui	$at, 0x4396
/* 001064 0x80B62680 44818000 */ mtc1	$at, $f16
/* 001065 0x80B62684 8FA50020 */ lw	$a1, 0X20($sp)
/* 001066 0x80B62688 4600803C */ c.lt.s	$f16, $f0
/* 001067 0x80B6268C 00000000 */ nop
/* 001068 0x80B62690 45020005 */ bc1fl .L80B626A8
/* 001069 0x80B62694 260400BE */ addiu	$a0, $s0, 0XBE
/* 001070 0x80B62698 0C02DB4B */ jal	Actor_YawToPoint
/* 001071 0x80B6269C 02002025 */ move	$a0, $s0
/* 001072 0x80B626A0 A6020208 */ sh	$v0, 0X208($s0)
/* 001073 0x80B626A4 260400BE */ addiu	$a0, $s0, 0XBE
.L80B626A8:
/* 001074 0x80B626A8 86050208 */ lh	$a1, 0X208($s0)
/* 001075 0x80B626AC 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 001076 0x80B626B0 24060200 */ li	$a2, 0X200
/* 001077 0x80B626B4 5040001F */ beqzl	$v0, .L80B62734
/* 001078 0x80B626B8 86080206 */ lh	$t0, 0X206($s0)
/* 001079 0x80B626BC 0C021BF7 */ jal	randZeroOne
/* 001080 0x80B626C0 00000000 */ nop
/* 001081 0x80B626C4 3C0180B6 */ lui	$at, %hi(D_80B650C0)
/* 001082 0x80B626C8 C43250C0 */ lwc1	$f18, %lo(D_80B650C0)($at)
/* 001083 0x80B626CC 4612003C */ c.lt.s	$f0, $f18
/* 001084 0x80B626D0 00000000 */ nop
/* 001085 0x80B626D4 45020017 */ bc1fl .L80B62734
/* 001086 0x80B626D8 86080206 */ lh	$t0, 0X206($s0)
/* 001087 0x80B626DC 0C021BF7 */ jal	randZeroOne
/* 001088 0x80B626E0 00000000 */ nop
/* 001089 0x80B626E4 3C013F00 */ lui	$at, 0x3F00
/* 001090 0x80B626E8 44812000 */ mtc1	$at, $f4
/* 001091 0x80B626EC 24030001 */ li	$v1, 0X1
/* 001092 0x80B626F0 4604003C */ c.lt.s	$f0, $f4
/* 001093 0x80B626F4 00000000 */ nop
/* 001094 0x80B626F8 45000003 */ bc1f .L80B62708
/* 001095 0x80B626FC 00000000 */ nop
/* 001096 0x80B62700 10000001 */ b	.L80B62708
/* 001097 0x80B62704 2403FFFF */ li	$v1, -0X1
.L80B62708:
/* 001098 0x80B62708 0C021BE8 */ jal	rand
/* 001099 0x80B6270C AFA30024 */ sw	$v1, 0X24($sp)
/* 001100 0x80B62710 8FA30024 */ lw	$v1, 0X24($sp)
/* 001101 0x80B62714 00025D02 */ srl	$t3, $v0, 20
/* 001102 0x80B62718 256C1000 */ addiu	$t4, $t3, 0X1000
/* 001103 0x80B6271C 01830019 */ multu	$t4, $v1
/* 001104 0x80B62720 860A0208 */ lh	$t2, 0X208($s0)
/* 001105 0x80B62724 00007812 */ mflo	$t7
/* 001106 0x80B62728 014FC021 */ addu	$t8, $t2, $t7
/* 001107 0x80B6272C A6180208 */ sh	$t8, 0X208($s0)
/* 001108 0x80B62730 86080206 */ lh	$t0, 0X206($s0)
.L80B62734:
/* 001109 0x80B62734 861900BE */ lh	$t9, 0XBE($s0)
/* 001110 0x80B62738 15000003 */ bnez	$t0, .L80B62748
/* 001111 0x80B6273C A6190032 */ sh	$t9, 0X32($s0)
/* 001112 0x80B62740 0C2D89D7 */ jal	func_80B6275C
/* 001113 0x80B62744 02002025 */ move	$a0, $s0
.L80B62748:
/* 001114 0x80B62748 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001115 0x80B6274C 8FB00018 */ lw	$s0, 0X18($sp)
/* 001116 0x80B62750 27BD0030 */ addiu	$sp, $sp, 0X30
/* 001117 0x80B62754 03E00008 */ jr	$ra
/* 001118 0x80B62758 00000000 */ nop

