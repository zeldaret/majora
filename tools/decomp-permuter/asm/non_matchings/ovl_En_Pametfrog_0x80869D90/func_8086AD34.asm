glabel func_8086AD34
/* 001001 0x8086AD34 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 001002 0x8086AD38 AFB00018 */ sw	$s0, 0X18($sp)
/* 001003 0x8086AD3C 00808025 */ move	$s0, $a0
/* 001004 0x8086AD40 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001005 0x8086AD44 AFA50024 */ sw	$a1, 0X24($sp)
/* 001006 0x8086AD48 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 001007 0x8086AD4C 26040144 */ addiu	$a0, $s0, 0X144
/* 001008 0x8086AD50 860E00BC */ lh	$t6, 0XBC($s0)
/* 001009 0x8086AD54 861800C0 */ lh	$t8, 0XC0($s0)
/* 001010 0x8086AD58 860202B6 */ lh	$v0, 0X2B6($s0)
/* 001011 0x8086AD5C 25CF0800 */ addiu	$t7, $t6, 0X800
/* 001012 0x8086AD60 27191000 */ addiu	$t9, $t8, 0X1000
/* 001013 0x8086AD64 A60F00BC */ sh	$t7, 0XBC($s0)
/* 001014 0x8086AD68 10400004 */ beqz	$v0, .L8086AD7C
/* 001015 0x8086AD6C A61900C0 */ sh	$t9, 0XC0($s0)
/* 001016 0x8086AD70 2448FFFF */ addiu	$t0, $v0, -0X1
/* 001017 0x8086AD74 A60802B6 */ sh	$t0, 0X2B6($s0)
/* 001018 0x8086AD78 860202B6 */ lh	$v0, 0X2B6($s0)
.L8086AD7C:
/* 001019 0x8086AD7C 44822000 */ mtc1	$v0, $f4
/* 001020 0x8086AD80 3C018087 */ lui	$at, %hi(D_8086DA54)
/* 001021 0x8086AD84 C428DA54 */ lwc1	$f8, %lo(D_8086DA54)($at)
/* 001022 0x8086AD88 468021A0 */ cvt.s.w	$f6, $f4
/* 001023 0x8086AD8C 46083302 */ mul.s	$f12, $f6, $f8
/* 001024 0x8086AD90 0C05E53B */ jal	sin_rad
/* 001025 0x8086AD94 00000000 */ nop
/* 001026 0x8086AD98 860902B6 */ lh	$t1, 0X2B6($s0)
/* 001027 0x8086AD9C 3C018087 */ lui	$at, %hi(D_8086DA58)
/* 001028 0x8086ADA0 C432DA58 */ lwc1	$f18, %lo(D_8086DA58)($at)
/* 001029 0x8086ADA4 44895000 */ mtc1	$t1, $f10
/* 001030 0x8086ADA8 3C018087 */ lui	$at, %hi(D_8086DA5C)
/* 001031 0x8086ADAC C426DA5C */ lwc1	$f6, %lo(D_8086DA5C)($at)
/* 001032 0x8086ADB0 46805420 */ cvt.s.w	$f16, $f10
/* 001033 0x8086ADB4 3C018087 */ lui	$at, %hi(D_8086DA60)
/* 001034 0x8086ADB8 C42ADA60 */ lwc1	$f10, %lo(D_8086DA60)($at)
/* 001035 0x8086ADBC 3C013F80 */ lui	$at, 0x3F80
/* 001036 0x8086ADC0 02002025 */ move	$a0, $s0
/* 001037 0x8086ADC4 8FA50024 */ lw	$a1, 0X24($sp)
/* 001038 0x8086ADC8 46128102 */ mul.s	$f4, $f16, $f18
/* 001039 0x8086ADCC 00000000 */ nop
/* 001040 0x8086ADD0 46043202 */ mul.s	$f8, $f6, $f4
/* 001041 0x8086ADD4 44813000 */ mtc1	$at, $f6
/* 001042 0x8086ADD8 3C014396 */ lui	$at, 0x4396
/* 001043 0x8086ADDC 44812000 */ mtc1	$at, $f4
/* 001044 0x8086ADE0 3C0142C8 */ lui	$at, 0x42C8
/* 001045 0x8086ADE4 460A4400 */ add.s	$f16, $f8, $f10
/* 001046 0x8086ADE8 44815000 */ mtc1	$at, $f10
/* 001047 0x8086ADEC 46100482 */ mul.s	$f18, $f0, $f16
/* 001048 0x8086ADF0 46069080 */ add.s	$f2, $f18, $f6
/* 001049 0x8086ADF4 46022202 */ mul.s	$f8, $f4, $f2
/* 001050 0x8086ADF8 00000000 */ nop
/* 001051 0x8086ADFC 46025402 */ mul.s	$f16, $f10, $f2
/* 001052 0x8086AE00 44064000 */ mfc1	$a2, $f8
/* 001053 0x8086AE04 44078000 */ mfc1	$a3, $f16
/* 001054 0x8086AE08 0C21A90A */ jal	func_8086A428
/* 001055 0x8086AE0C 00000000 */ nop
/* 001056 0x8086AE10 960A0090 */ lhu	$t2, 0X90($s0)
/* 001057 0x8086AE14 02002025 */ move	$a0, $s0
/* 001058 0x8086AE18 314B0001 */ andi	$t3, $t2, 0X1
/* 001059 0x8086AE1C 51600006 */ beqzl	$t3, .L8086AE38
/* 001060 0x8086AE20 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001061 0x8086AE24 0C21A939 */ jal	func_8086A4E4
/* 001062 0x8086AE28 8FA50024 */ lw	$a1, 0X24($sp)
/* 001063 0x8086AE2C 0C21AB92 */ jal	func_8086AE48
/* 001064 0x8086AE30 02002025 */ move	$a0, $s0
/* 001065 0x8086AE34 8FBF001C */ lw	$ra, 0X1C($sp)
.L8086AE38:
/* 001066 0x8086AE38 8FB00018 */ lw	$s0, 0X18($sp)
/* 001067 0x8086AE3C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 001068 0x8086AE40 03E00008 */ jr	$ra
/* 001069 0x8086AE44 00000000 */ nop

