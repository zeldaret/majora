glabel func_80B629E4
/* 001281 0x80B629E4 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 001282 0x80B629E8 AFB00020 */ sw	$s0, 0X20($sp)
/* 001283 0x80B629EC 00808025 */ move	$s0, $a0
/* 001284 0x80B629F0 AFBF0024 */ sw	$ra, 0X24($sp)
/* 001285 0x80B629F4 3C050600 */ lui	$a1, 0x0600
/* 001286 0x80B629F8 24A50454 */ addiu	$a1, $a1, 0X454
/* 001287 0x80B629FC 26040144 */ addiu	$a0, $s0, 0X144
/* 001288 0x80B62A00 0C04DD22 */ jal	SkelAnime_ChangeAnimTransitionStop
/* 001289 0x80B62A04 3C06C0C0 */ lui	$a2, 0xC0C0
/* 001290 0x80B62A08 240E0010 */ li	$t6, 0X10
/* 001291 0x80B62A0C AFAE0010 */ sw	$t6, 0X10($sp)
/* 001292 0x80B62A10 02002025 */ move	$a0, $s0
/* 001293 0x80B62A14 24054000 */ li	$a1, 0X4000
/* 001294 0x80B62A18 240600FF */ li	$a2, 0XFF
/* 001295 0x80B62A1C 0C02F2DC */ jal	func_800BCB70
/* 001296 0x80B62A20 00003825 */ move	$a3, $zero
/* 001297 0x80B62A24 920F02BD */ lbu	$t7, 0X2BD($s0)
/* 001298 0x80B62A28 02002025 */ move	$a0, $s0
/* 001299 0x80B62A2C 260502AC */ addiu	$a1, $s0, 0X2AC
/* 001300 0x80B62A30 31F8FFFE */ andi	$t8, $t7, 0XFFFE
/* 001301 0x80B62A34 0C02F941 */ jal	func_800BE504
/* 001302 0x80B62A38 A21802BD */ sb	$t8, 0X2BD($s0)
/* 001303 0x80B62A3C 3C0140A0 */ lui	$at, 0x40A0
/* 001304 0x80B62A40 44812000 */ mtc1	$at, $f4
/* 001305 0x80B62A44 3C1980B6 */ lui	$t9, %hi(func_80B62A68)
/* 001306 0x80B62A48 27392A68 */ addiu	$t9, $t9, %lo(func_80B62A68)
/* 001307 0x80B62A4C AE190200 */ sw	$t9, 0X200($s0)
/* 001308 0x80B62A50 E6040070 */ swc1	$f4, 0X70($s0)
/* 001309 0x80B62A54 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001310 0x80B62A58 8FB00020 */ lw	$s0, 0X20($sp)
/* 001311 0x80B62A5C 27BD0028 */ addiu	$sp, $sp, 0X28
/* 001312 0x80B62A60 03E00008 */ jr	$ra
/* 001313 0x80B62A64 00000000 */ nop

