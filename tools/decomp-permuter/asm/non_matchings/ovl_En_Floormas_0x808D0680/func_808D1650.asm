glabel func_808D1650
/* 001012 0x808D1650 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 001013 0x808D1654 AFB00018 */ sw	$s0, 0X18($sp)
/* 001014 0x808D1658 00808025 */ move	$s0, $a0
/* 001015 0x808D165C AFBF001C */ sw	$ra, 0X1C($sp)
/* 001016 0x808D1660 AFA50024 */ sw	$a1, 0X24($sp)
/* 001017 0x808D1664 8602018E */ lh	$v0, 0X18E($s0)
/* 001018 0x808D1668 10400002 */ beqz	$v0, .L808D1674
/* 001019 0x808D166C 244EFFFF */ addiu	$t6, $v0, -0X1
/* 001020 0x808D1670 A60E018E */ sh	$t6, 0X18E($s0)
.L808D1674:
/* 001021 0x808D1674 C6000070 */ lwc1	$f0, 0X70($s0)
/* 001022 0x808D1678 3C01808D */ lui	$at, %hi(D_808D3994)
/* 001023 0x808D167C C4263994 */ lwc1	$f6, %lo(D_808D3994)($at)
/* 001024 0x808D1680 46000102 */ mul.s	$f4, $f0, $f0
/* 001025 0x808D1684 26040070 */ addiu	$a0, $s0, 0X70
/* 001026 0x808D1688 3C054170 */ lui	$a1, 0x4170
/* 001027 0x808D168C 46062202 */ mul.s	$f8, $f4, $f6
/* 001028 0x808D1690 44064000 */ mfc1	$a2, $f8
/* 001029 0x808D1694 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 001030 0x808D1698 00000000 */ nop
/* 001031 0x808D169C 260400BC */ addiu	$a0, $s0, 0XBC
/* 001032 0x808D16A0 2405E980 */ li	$a1, -0X1680
/* 001033 0x808D16A4 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 001034 0x808D16A8 24060140 */ li	$a2, 0X140
/* 001035 0x808D16AC C6020088 */ lwc1	$f2, 0X88($s0)
/* 001036 0x808D16B0 C60A0028 */ lwc1	$f10, 0X28($s0)
/* 001037 0x808D16B4 3C014120 */ lui	$at, 0x4120
/* 001038 0x808D16B8 44817000 */ mtc1	$at, $f14
/* 001039 0x808D16BC 46025001 */ sub.s	$f0, $f10, $f2
/* 001040 0x808D16C0 3C014140 */ lui	$at, 0x4140
/* 001041 0x808D16C4 44819000 */ mtc1	$at, $f18
/* 001042 0x808D16C8 02002025 */ move	$a0, $s0
/* 001043 0x808D16CC 460E003C */ c.lt.s	$f0, $f14
/* 001044 0x808D16D0 00000000 */ nop
/* 001045 0x808D16D4 45020007 */ bc1fl .L808D16F4
/* 001046 0x808D16D8 4612003C */ c.lt.s	$f0, $f18
/* 001047 0x808D16DC 460E1400 */ add.s	$f16, $f2, $f14
/* 001048 0x808D16E0 44806000 */ mtc1	$zero, $f12
/* 001049 0x808D16E4 E6100028 */ swc1	$f16, 0X28($s0)
/* 001050 0x808D16E8 E60C0074 */ swc1	$f12, 0X74($s0)
/* 001051 0x808D16EC E60C0068 */ swc1	$f12, 0X68($s0)
/* 001052 0x808D16F0 4612003C */ c.lt.s	$f0, $f18
.L808D16F4:
/* 001053 0x808D16F4 00000000 */ nop
/* 001054 0x808D16F8 45020004 */ bc1fl .L808D170C
/* 001055 0x808D16FC 960F0090 */ lhu	$t7, 0X90($s0)
/* 001056 0x808D1700 0C234537 */ jal	func_808D14DC
/* 001057 0x808D1704 8FA50024 */ lw	$a1, 0X24($sp)
/* 001058 0x808D1708 960F0090 */ lhu	$t7, 0X90($s0)
.L808D170C:
/* 001059 0x808D170C 31F80008 */ andi	$t8, $t7, 0X8
/* 001060 0x808D1710 17000004 */ bnez	$t8, .L808D1724
/* 001061 0x808D1714 00000000 */ nop
/* 001062 0x808D1718 8619018E */ lh	$t9, 0X18E($s0)
/* 001063 0x808D171C 57200004 */ bnezl	$t9, .L808D1730
/* 001064 0x808D1720 8FBF001C */ lw	$ra, 0X1C($sp)
.L808D1724:
/* 001065 0x808D1724 0C2345D0 */ jal	func_808D1740
/* 001066 0x808D1728 02002025 */ move	$a0, $s0
/* 001067 0x808D172C 8FBF001C */ lw	$ra, 0X1C($sp)
.L808D1730:
/* 001068 0x808D1730 8FB00018 */ lw	$s0, 0X18($sp)
/* 001069 0x808D1734 27BD0020 */ addiu	$sp, $sp, 0X20
/* 001070 0x808D1738 03E00008 */ jr	$ra
/* 001071 0x808D173C 00000000 */ nop


.section .late_rodata

glabel D_808D3994
/* 003269 0x808D3994 */ .word	0x3EAAAAAB
