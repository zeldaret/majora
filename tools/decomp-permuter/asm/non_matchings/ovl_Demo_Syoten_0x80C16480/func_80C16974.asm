glabel func_80C16974
/* 000317 0x80C16974 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000318 0x80C16978 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000319 0x80C1697C 3C040600 */ lui	$a0, 0x0600
/* 000320 0x80C16980 248418C0 */ addiu	$a0, $a0, 0X18C0
/* 000321 0x80C16984 0C040141 */ jal	Lib_PtrSegToVirt
/* 000322 0x80C16988 E7AC0028 */ swc1	$f12, 0X28($sp)
/* 000323 0x80C1698C 3C013F80 */ lui	$at, 0x3F80
/* 000324 0x80C16990 44810000 */ mtc1	$at, $f0
/* 000325 0x80C16994 C7AC0028 */ lwc1	$f12, 0X28($sp)
/* 000326 0x80C16998 3C014318 */ lui	$at, 0x4318
/* 000327 0x80C1699C 44812000 */ mtc1	$at, $f4
/* 000328 0x80C169A0 460C003C */ c.lt.s	$f0, $f12
/* 000329 0x80C169A4 3C01437F */ lui	$at, 0x437F
/* 000330 0x80C169A8 44815000 */ mtc1	$at, $f10
/* 000331 0x80C169AC 45000002 */ bc1f .L80C169B8
/* 000332 0x80C169B0 00000000 */ nop
/* 000333 0x80C169B4 46000306 */ mov.s	$f12, $f0
.L80C169B8:
/* 000334 0x80C169B8 460C2182 */ mul.s	$f6, $f4, $f12
/* 000335 0x80C169BC 3C0880C1 */ lui	$t0, %hi(D_80C177D0)
/* 000336 0x80C169C0 910877D0 */ lbu	$t0, %lo(D_80C177D0)($t0)
/* 000337 0x80C169C4 460C5402 */ mul.s	$f16, $f10, $f12
/* 000338 0x80C169C8 27A50020 */ addiu	$a1, $sp, 0X20
/* 000339 0x80C169CC A3A00020 */ sb	$zero, 0X20($sp)
/* 000340 0x80C169D0 00A84821 */ addu	$t1, $a1, $t0
/* 000341 0x80C169D4 24430010 */ addiu	$v1, $v0, 0X10
/* 000342 0x80C169D8 3C0480C1 */ lui	$a0, %hi(D_80C177D1)
/* 000343 0x80C169DC 4600320D */ trunc.w.s	$f8, $f6
/* 000344 0x80C169E0 248477D1 */ addiu	$a0, $a0, %lo(D_80C177D1)
/* 000345 0x80C169E4 4600848D */ trunc.w.s	$f18, $f16
/* 000346 0x80C169E8 440F4000 */ mfc1	$t7, $f8
/* 000347 0x80C169EC 44199000 */ mfc1	$t9, $f18
/* 000348 0x80C169F0 A3AF0021 */ sb	$t7, 0X21($sp)
/* 000349 0x80C169F4 A3B90022 */ sb	$t9, 0X22($sp)
/* 000350 0x80C169F8 912A0000 */ lbu	$t2, 0X0($t1)
/* 000351 0x80C169FC A04A000F */ sb	$t2, 0XF($v0)
/* 000352 0x80C16A00 3C0280C1 */ lui	$v0, %hi(D_80C17821)
/* 000353 0x80C16A04 24427821 */ addiu	$v0, $v0, %lo(D_80C17821)
.L80C16A08:
/* 000354 0x80C16A08 908B0000 */ lbu	$t3, 0X0($a0)
/* 000355 0x80C16A0C 24840004 */ addiu	$a0, $a0, 0X4
/* 000356 0x80C16A10 24630040 */ addiu	$v1, $v1, 0X40
/* 000357 0x80C16A14 00AB6021 */ addu	$t4, $a1, $t3
/* 000358 0x80C16A18 918D0000 */ lbu	$t5, 0X0($t4)
/* 000359 0x80C16A1C A06DFFCF */ sb	$t5, -0X31($v1)
/* 000360 0x80C16A20 908EFFFD */ lbu	$t6, -0X3($a0)
/* 000361 0x80C16A24 00AE7821 */ addu	$t7, $a1, $t6
/* 000362 0x80C16A28 91F80000 */ lbu	$t8, 0X0($t7)
/* 000363 0x80C16A2C A078FFDF */ sb	$t8, -0X21($v1)
/* 000364 0x80C16A30 9099FFFE */ lbu	$t9, -0X2($a0)
/* 000365 0x80C16A34 00B94021 */ addu	$t0, $a1, $t9
/* 000366 0x80C16A38 91090000 */ lbu	$t1, 0X0($t0)
/* 000367 0x80C16A3C A069FFEF */ sb	$t1, -0X11($v1)
/* 000368 0x80C16A40 908AFFFF */ lbu	$t2, -0X1($a0)
/* 000369 0x80C16A44 00AA5821 */ addu	$t3, $a1, $t2
/* 000370 0x80C16A48 916C0000 */ lbu	$t4, 0X0($t3)
/* 000371 0x80C16A4C 1482FFEE */ bne	$a0, $v0, .L80C16A08
/* 000372 0x80C16A50 A06CFFFF */ sb	$t4, -0X1($v1)
/* 000373 0x80C16A54 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000374 0x80C16A58 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000375 0x80C16A5C 03E00008 */ jr	$ra
/* 000376 0x80C16A60 00000000 */ nop

