glabel func_809E5ADC
/* 003295 0x809E5ADC 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 003296 0x809E5AE0 AFB00018 */ sw	$s0, 0X18($sp)
/* 003297 0x809E5AE4 00808025 */ move	$s0, $a0
/* 003298 0x809E5AE8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 003299 0x809E5AEC AFA50024 */ sw	$a1, 0X24($sp)
/* 003300 0x809E5AF0 3C0E809E */ lui	$t6, %hi(func_809E5B64)
/* 003301 0x809E5AF4 25CE5B64 */ addiu	$t6, $t6, %lo(func_809E5B64)
/* 003302 0x809E5AF8 3C050601 */ lui	$a1, 0x0601
/* 003303 0x809E5AFC AE0E0328 */ sw	$t6, 0X328($s0)
/* 003304 0x809E5B00 24A59554 */ addiu	$a1, $a1, -0X6AAC
/* 003305 0x809E5B04 26040148 */ addiu	$a0, $s0, 0X148
/* 003306 0x809E5B08 0C04DD65 */ jal	SkelAnime_ChangeAnimTransitionRepeat
/* 003307 0x809E5B0C 3C06C120 */ lui	$a2, 0xC120
/* 003308 0x809E5B10 3C040601 */ lui	$a0, 0x0601
/* 003309 0x809E5B14 0C04D1D2 */ jal	SkelAnime_GetFrameCount
/* 003310 0x809E5B18 24849554 */ addiu	$a0, $a0, -0X6AAC
/* 003311 0x809E5B1C 44822000 */ mtc1	$v0, $f4
/* 003312 0x809E5B20 3C041001 */ lui	$a0, 0x1001
/* 003313 0x809E5B24 348400FF */ ori	$a0, $a0, 0XFF
/* 003314 0x809E5B28 468021A0 */ cvt.s.w	$f6, $f4
/* 003315 0x809E5B2C 0C06A26A */ jal	func_801A89A8
/* 003316 0x809E5B30 E606052C */ swc1	$f6, 0X52C($s0)
/* 003317 0x809E5B34 8E0F0004 */ lw	$t7, 0X4($s0)
/* 003318 0x809E5B38 2401FFFE */ li	$at, -0X2
/* 003319 0x809E5B3C A600024C */ sh	$zero, 0X24C($s0)
/* 003320 0x809E5B40 01E1C024 */ and	$t8, $t7, $at
/* 003321 0x809E5B44 A2000242 */ sb	$zero, 0X242($s0)
/* 003322 0x809E5B48 A6000534 */ sh	$zero, 0X534($s0)
/* 003323 0x809E5B4C AE180004 */ sw	$t8, 0X4($s0)
/* 003324 0x809E5B50 8FBF001C */ lw	$ra, 0X1C($sp)
/* 003325 0x809E5B54 8FB00018 */ lw	$s0, 0X18($sp)
/* 003326 0x809E5B58 27BD0020 */ addiu	$sp, $sp, 0X20
/* 003327 0x809E5B5C 03E00008 */ jr	$ra
/* 003328 0x809E5B60 00000000 */ nop

