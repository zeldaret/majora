glabel func_808C5F58
/* 001014 0x808C5F58 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 001015 0x808C5F5C AFB00018 */ sw	$s0, 0X18($sp)
/* 001016 0x808C5F60 00808025 */ move	$s0, $a0
/* 001017 0x808C5F64 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001018 0x808C5F68 00A03025 */ move	$a2, $a1
/* 001019 0x808C5F6C 00C02025 */ move	$a0, $a2
/* 001020 0x808C5F70 0C05A5B5 */ jal	Play_GetCamera
/* 001021 0x808C5F74 860502FA */ lh	$a1, 0X2FA($s0)
/* 001022 0x808C5F78 3C050601 */ lui	$a1, 0x0601
/* 001023 0x808C5F7C AFA20024 */ sw	$v0, 0X24($sp)
/* 001024 0x808C5F80 24A5CB2C */ addiu	$a1, $a1, -0X34D4
/* 001025 0x808C5F84 0C04DD0C */ jal	SkelAnime_ChangeAnimDefaultStop
/* 001026 0x808C5F88 26040144 */ addiu	$a0, $s0, 0X144
/* 001027 0x808C5F8C 240E0017 */ li	$t6, 0X17
/* 001028 0x808C5F90 A20E0191 */ sb	$t6, 0X191($s0)
/* 001029 0x808C5F94 0C068B95 */ jal	func_801A2E54
/* 001030 0x808C5F98 24040038 */ li	$a0, 0X38
/* 001031 0x808C5F9C 0C03FB61 */ jal	Math_Sins
/* 001032 0x808C5FA0 86040016 */ lh	$a0, 0X16($s0)
/* 001033 0x808C5FA4 3C014366 */ lui	$at, 0x4366
/* 001034 0x808C5FA8 44812000 */ mtc1	$at, $f4
/* 001035 0x808C5FAC C6080024 */ lwc1	$f8, 0X24($s0)
/* 001036 0x808C5FB0 86040016 */ lh	$a0, 0X16($s0)
/* 001037 0x808C5FB4 46040182 */ mul.s	$f6, $f0, $f4
/* 001038 0x808C5FB8 46083280 */ add.s	$f10, $f6, $f8
/* 001039 0x808C5FBC 0C03FB51 */ jal	Math_Coss
/* 001040 0x808C5FC0 E60A0344 */ swc1	$f10, 0X344($s0)
/* 001041 0x808C5FC4 3C014366 */ lui	$at, 0x4366
/* 001042 0x808C5FC8 44818000 */ mtc1	$at, $f16
/* 001043 0x808C5FCC C604002C */ lwc1	$f4, 0X2C($s0)
/* 001044 0x808C5FD0 3C014220 */ lui	$at, 0x4220
/* 001045 0x808C5FD4 46100482 */ mul.s	$f18, $f0, $f16
/* 001046 0x808C5FD8 44815000 */ mtc1	$at, $f10
/* 001047 0x808C5FDC 3C0142AA */ lui	$at, 0x42AA
/* 001048 0x808C5FE0 C608000C */ lwc1	$f8, 0XC($s0)
/* 001049 0x808C5FE4 26050344 */ addiu	$a1, $s0, 0X344
/* 001050 0x808C5FE8 460A4400 */ add.s	$f16, $f8, $f10
/* 001051 0x808C5FEC 46049180 */ add.s	$f6, $f18, $f4
/* 001052 0x808C5FF0 44812000 */ mtc1	$at, $f4
/* 001053 0x808C5FF4 C6120028 */ lwc1	$f18, 0X28($s0)
/* 001054 0x808C5FF8 E6100348 */ swc1	$f16, 0X348($s0)
/* 001055 0x808C5FFC E606034C */ swc1	$f6, 0X34C($s0)
/* 001056 0x808C6000 46049180 */ add.s	$f6, $f18, $f4
/* 001057 0x808C6004 E6060354 */ swc1	$f6, 0X354($s0)
/* 001058 0x808C6008 8FA40024 */ lw	$a0, 0X24($sp)
/* 001059 0x808C600C 0C03FE21 */ jal	Math_Vec3f_DistXYZ
/* 001060 0x808C6010 2484005C */ addiu	$a0, $a0, 0X5C
/* 001061 0x808C6014 3C01808D */ lui	$at, %hi(D_808C9B98)
/* 001062 0x808C6018 C4289B98 */ lwc1	$f8, %lo(D_808C9B98)($at)
/* 001063 0x808C601C 26050350 */ addiu	$a1, $s0, 0X350
/* 001064 0x808C6020 46080282 */ mul.s	$f10, $f0, $f8
/* 001065 0x808C6024 E60A030C */ swc1	$f10, 0X30C($s0)
/* 001066 0x808C6028 8FA40024 */ lw	$a0, 0X24($sp)
/* 001067 0x808C602C 0C03FE21 */ jal	Math_Vec3f_DistXYZ
/* 001068 0x808C6030 24840050 */ addiu	$a0, $a0, 0X50
/* 001069 0x808C6034 3C01808D */ lui	$at, %hi(D_808C9B9C)
/* 001070 0x808C6038 C4309B9C */ lwc1	$f16, %lo(D_808C9B9C)($at)
/* 001071 0x808C603C 26040338 */ addiu	$a0, $s0, 0X338
/* 001072 0x808C6040 24053AB0 */ li	$a1, 0X3AB0
/* 001073 0x808C6044 46100482 */ mul.s	$f18, $f0, $f16
/* 001074 0x808C6048 0C067C70 */ jal	func_8019F1C0
/* 001075 0x808C604C E6120310 */ swc1	$f18, 0X310($s0)
/* 001076 0x808C6050 3C0F808C */ lui	$t7, %hi(func_808C6070)
/* 001077 0x808C6054 25EF6070 */ addiu	$t7, $t7, %lo(func_808C6070)
/* 001078 0x808C6058 AE0F0188 */ sw	$t7, 0X188($s0)
/* 001079 0x808C605C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001080 0x808C6060 8FB00018 */ lw	$s0, 0X18($sp)
/* 001081 0x808C6064 27BD0028 */ addiu	$sp, $sp, 0X28
/* 001082 0x808C6068 03E00008 */ jr	$ra
/* 001083 0x808C606C 00000000 */ nop

