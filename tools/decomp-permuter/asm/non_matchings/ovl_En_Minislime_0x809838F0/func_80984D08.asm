glabel func_80984D08
/* 001286 0x80984D08 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 001287 0x80984D0C AFB00018 */ sw	$s0, 0X18($sp)
/* 001288 0x80984D10 00808025 */ move	$s0, $a0
/* 001289 0x80984D14 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001290 0x80984D18 AFA50034 */ sw	$a1, 0X34($sp)
/* 001291 0x80984D1C 860E014A */ lh	$t6, 0X14A($s0)
/* 001292 0x80984D20 26040070 */ addiu	$a0, $s0, 0X70
/* 001293 0x80984D24 24050000 */ li	$a1, 0X0
/* 001294 0x80984D28 25CFFFFF */ addiu	$t7, $t6, -0X1
/* 001295 0x80984D2C A60F014A */ sh	$t7, 0X14A($s0)
/* 001296 0x80984D30 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 001297 0x80984D34 3C063F80 */ lui	$a2, 0x3F80
/* 001298 0x80984D38 8618014A */ lh	$t8, 0X14A($s0)
/* 001299 0x80984D3C 3C018098 */ lui	$at, %hi(D_809858B8)
/* 001300 0x80984D40 C42658B8 */ lwc1	$f6, %lo(D_809858B8)($at)
/* 001301 0x80984D44 44982000 */ mtc1	$t8, $f4
/* 001302 0x80984D48 00000000 */ nop
/* 001303 0x80984D4C 468020A0 */ cvt.s.w	$f2, $f4
/* 001304 0x80984D50 46001004 */ sqrt.s	$f0, $f2
/* 001305 0x80984D54 46061302 */ mul.s	$f12, $f2, $f6
/* 001306 0x80984D58 0C05E550 */ jal	cos_rad
/* 001307 0x80984D5C E7A0002C */ swc1	$f0, 0X2C($sp)
/* 001308 0x80984D60 3C018098 */ lui	$at, %hi(D_809858BC)
/* 001309 0x80984D64 C42858BC */ lwc1	$f8, %lo(D_809858BC)($at)
/* 001310 0x80984D68 C7AA002C */ lwc1	$f10, 0X2C($sp)
/* 001311 0x80984D6C 3C013F80 */ lui	$at, 0x3F80
/* 001312 0x80984D70 44819000 */ mtc1	$at, $f18
/* 001313 0x80984D74 460A4382 */ mul.s	$f14, $f8, $f10
/* 001314 0x80984D78 3C018098 */ lui	$at, %hi(D_809858C0)
/* 001315 0x80984D7C C42658C0 */ lwc1	$f6, %lo(D_809858C0)($at)
/* 001316 0x80984D80 8602014A */ lh	$v0, 0X14A($s0)
/* 001317 0x80984D84 2401000F */ li	$at, 0XF
/* 001318 0x80984D88 460E0402 */ mul.s	$f16, $f0, $f14
/* 001319 0x80984D8C 46128100 */ add.s	$f4, $f16, $f18
/* 001320 0x80984D90 46062082 */ mul.s	$f2, $f4, $f6
/* 001321 0x80984D94 E6020058 */ swc1	$f2, 0X58($s0)
/* 001322 0x80984D98 14410005 */ bne	$v0, $at, .L80984DB0
/* 001323 0x80984D9C E6020060 */ swc1	$f2, 0X60($s0)
/* 001324 0x80984DA0 92190171 */ lbu	$t9, 0X171($s0)
/* 001325 0x80984DA4 8602014A */ lh	$v0, 0X14A($s0)
/* 001326 0x80984DA8 37280001 */ ori	$t0, $t9, 0X1
/* 001327 0x80984DAC A2080171 */ sb	$t0, 0X171($s0)
.L80984DB0:
/* 001328 0x80984DB0 44824000 */ mtc1	$v0, $f8
/* 001329 0x80984DB4 3C018098 */ lui	$at, %hi(D_809858C4)
/* 001330 0x80984DB8 C43058C4 */ lwc1	$f16, %lo(D_809858C4)($at)
/* 001331 0x80984DBC 468042A0 */ cvt.s.w	$f10, $f8
/* 001332 0x80984DC0 E7AE0024 */ swc1	$f14, 0X24($sp)
/* 001333 0x80984DC4 46105302 */ mul.s	$f12, $f10, $f16
/* 001334 0x80984DC8 0C05E53B */ jal	sin_rad
/* 001335 0x80984DCC 00000000 */ nop
/* 001336 0x80984DD0 C7AE0024 */ lwc1	$f14, 0X24($sp)
/* 001337 0x80984DD4 3C013F80 */ lui	$at, 0x3F80
/* 001338 0x80984DD8 44812000 */ mtc1	$at, $f4
/* 001339 0x80984DDC 460E0482 */ mul.s	$f18, $f0, $f14
/* 001340 0x80984DE0 3C018098 */ lui	$at, %hi(D_809858C8)
/* 001341 0x80984DE4 C42858C8 */ lwc1	$f8, %lo(D_809858C8)($at)
/* 001342 0x80984DE8 8609001C */ lh	$t1, 0X1C($s0)
/* 001343 0x80984DEC 2401000A */ li	$at, 0XA
/* 001344 0x80984DF0 46049180 */ add.s	$f6, $f18, $f4
/* 001345 0x80984DF4 46083282 */ mul.s	$f10, $f6, $f8
/* 001346 0x80984DF8 15210005 */ bne	$t1, $at, .L80984E10
/* 001347 0x80984DFC E60A005C */ swc1	$f10, 0X5C($s0)
/* 001348 0x80984E00 0C261463 */ jal	func_8098518C
/* 001349 0x80984E04 02002025 */ move	$a0, $s0
/* 001350 0x80984E08 10000007 */ b	.L80984E28
/* 001351 0x80984E0C 8FBF001C */ lw	$ra, 0X1C($sp)
.L80984E10:
/* 001352 0x80984E10 860A014A */ lh	$t2, 0X14A($s0)
/* 001353 0x80984E14 55400004 */ bnezl	$t2, .L80984E28
/* 001354 0x80984E18 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001355 0x80984E1C 0C2611C3 */ jal	func_8098470C
/* 001356 0x80984E20 02002025 */ move	$a0, $s0
/* 001357 0x80984E24 8FBF001C */ lw	$ra, 0X1C($sp)
.L80984E28:
/* 001358 0x80984E28 8FB00018 */ lw	$s0, 0X18($sp)
/* 001359 0x80984E2C 27BD0030 */ addiu	$sp, $sp, 0X30
/* 001360 0x80984E30 03E00008 */ jr	$ra
/* 001361 0x80984E34 00000000 */ nop


.section .late_rodata

glabel D_809858B8
/* 002034 0x809858B8 */ .word	0x3F860A92
glabel D_809858BC
/* 002035 0x809858BC */ .word	0x3D4CCCCD
glabel D_809858C0
/* 002036 0x809858C0 */ .word	0x3E19999A
glabel D_809858C4
/* 002037 0x809858C4 */ .word	0x3F860A92
glabel D_809858C8
/* 002038 0x809858C8 */ .word	0x3D99999A
