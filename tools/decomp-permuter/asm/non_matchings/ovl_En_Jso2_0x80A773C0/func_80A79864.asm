glabel func_80A79864
/* 002345 0x80A79864 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002346 0x80A79868 AFBF0014 */ sw	$ra, 0X14($sp)
/* 002347 0x80A7986C 24050003 */ li	$a1, 0X3
/* 002348 0x80A79870 0C29DDB8 */ jal	func_80A776E0
/* 002349 0x80A79874 AFA40018 */ sw	$a0, 0X18($sp)
/* 002350 0x80A79878 8FA40018 */ lw	$a0, 0X18($sp)
/* 002351 0x80A7987C 3C0140E0 */ lui	$at, 0x40E0
/* 002352 0x80A79880 44812000 */ mtc1	$at, $f4
/* 002353 0x80A79884 848E0032 */ lh	$t6, 0X32($a0)
/* 002354 0x80A79888 3C0141A0 */ lui	$at, 0x41A0
/* 002355 0x80A7988C 44813000 */ mtc1	$at, $f6
/* 002356 0x80A79890 3C1980A8 */ lui	$t9, %hi(func_80A798C8)
/* 002357 0x80A79894 2418000C */ li	$t8, 0XC
/* 002358 0x80A79898 273998C8 */ addiu	$t9, $t9, %lo(func_80A798C8)
/* 002359 0x80A7989C 000E7823 */ negu	$t7, $t6
/* 002360 0x80A798A0 A48F0032 */ sh	$t7, 0X32($a0)
/* 002361 0x80A798A4 A0800370 */ sb	$zero, 0X370($a0)
/* 002362 0x80A798A8 A4980284 */ sh	$t8, 0X284($a0)
/* 002363 0x80A798AC AC990278 */ sw	$t9, 0X278($a0)
/* 002364 0x80A798B0 E4840070 */ swc1	$f4, 0X70($a0)
/* 002365 0x80A798B4 E4860068 */ swc1	$f6, 0X68($a0)
/* 002366 0x80A798B8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002367 0x80A798BC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002368 0x80A798C0 03E00008 */ jr	$ra
/* 002369 0x80A798C4 00000000 */ nop

