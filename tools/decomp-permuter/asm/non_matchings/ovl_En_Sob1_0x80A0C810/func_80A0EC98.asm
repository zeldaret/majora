glabel func_80A0EC98
/* 002338 0x80A0EC98 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 002339 0x80A0EC9C 848F03CC */ lh	$t7, 0X3CC($a0)
/* 002340 0x80A0ECA0 3C1980A1 */ lui	$t9, %hi(D_80A109B8)
/* 002341 0x80A0ECA4 273909B8 */ addiu	$t9, $t9, %lo(D_80A109B8)
/* 002342 0x80A0ECA8 000FC080 */ sll	$t8, $t7, 2
/* 002343 0x80A0ECAC 030FC023 */ subu	$t8, $t8, $t7
/* 002344 0x80A0ECB0 0018C080 */ sll	$t8, $t8, 2
/* 002345 0x80A0ECB4 03194021 */ addu	$t0, $t8, $t9
/* 002346 0x80A0ECB8 8D0A0000 */ lw	$t2, 0X0($t0)
/* 002347 0x80A0ECBC 27AE001C */ addiu	$t6, $sp, 0X1C
/* 002348 0x80A0ECC0 3C1880A1 */ lui	$t8, %hi(D_80A10918)
/* 002349 0x80A0ECC4 ADCA0000 */ sw	$t2, 0X0($t6)
/* 002350 0x80A0ECC8 8D090004 */ lw	$t1, 0X4($t0)
/* 002351 0x80A0ECCC 27180918 */ addiu	$t8, $t8, %lo(D_80A10918)
/* 002352 0x80A0ECD0 ADC90004 */ sw	$t1, 0X4($t6)
/* 002353 0x80A0ECD4 8D0A0008 */ lw	$t2, 0X8($t0)
/* 002354 0x80A0ECD8 ADCA0008 */ sw	$t2, 0X8($t6)
/* 002355 0x80A0ECDC 848B03CC */ lh	$t3, 0X3CC($a0)
/* 002356 0x80A0ECE0 90820322 */ lbu	$v0, 0X322($a0)
/* 002357 0x80A0ECE4 C7A6001C */ lwc1	$f6, 0X1C($sp)
/* 002358 0x80A0ECE8 000B6080 */ sll	$t4, $t3, 2
/* 002359 0x80A0ECEC 018B6023 */ subu	$t4, $t4, $t3
/* 002360 0x80A0ECF0 000C60C0 */ sll	$t4, $t4, 3
/* 002361 0x80A0ECF4 000268C0 */ sll	$t5, $v0, 3
/* 002362 0x80A0ECF8 018D7821 */ addu	$t7, $t4, $t5
/* 002363 0x80A0ECFC 01F81821 */ addu	$v1, $t7, $t8
/* 002364 0x80A0ED00 84680002 */ lh	$t0, 0X2($v1)
/* 002365 0x80A0ED04 84690004 */ lh	$t1, 0X4($v1)
/* 002366 0x80A0ED08 C48C03AC */ lwc1	$f12, 0X3AC($a0)
/* 002367 0x80A0ED0C 44882000 */ mtc1	$t0, $f4
/* 002368 0x80A0ED10 846A0006 */ lh	$t2, 0X6($v1)
/* 002369 0x80A0ED14 0002C880 */ sll	$t9, $v0, 2
/* 002370 0x80A0ED18 468020A0 */ cvt.s.w	$f2, $f4
/* 002371 0x80A0ED1C 44892000 */ mtc1	$t1, $f4
/* 002372 0x80A0ED20 00997021 */ addu	$t6, $a0, $t9
/* 002373 0x80A0ED24 8DC502EC */ lw	$a1, 0X2EC($t6)
/* 002374 0x80A0ED28 46802420 */ cvt.s.w	$f16, $f4
/* 002375 0x80A0ED2C 448A2000 */ mtc1	$t2, $f4
/* 002376 0x80A0ED30 46023201 */ sub.s	$f8, $f6, $f2
/* 002377 0x80A0ED34 C7A60020 */ lwc1	$f6, 0X20($sp)
/* 002378 0x80A0ED38 460C4282 */ mul.s	$f10, $f8, $f12
/* 002379 0x80A0ED3C 46103201 */ sub.s	$f8, $f6, $f16
/* 002380 0x80A0ED40 468021A0 */ cvt.s.w	$f6, $f4
/* 002381 0x80A0ED44 460A1000 */ add.s	$f0, $f2, $f10
/* 002382 0x80A0ED48 460C4282 */ mul.s	$f10, $f8, $f12
/* 002383 0x80A0ED4C E7A60000 */ swc1	$f6, 0X0($sp)
/* 002384 0x80A0ED50 C7A80024 */ lwc1	$f8, 0X24($sp)
/* 002385 0x80A0ED54 460A8380 */ add.s	$f14, $f16, $f10
/* 002386 0x80A0ED58 C7AA0000 */ lwc1	$f10, 0X0($sp)
/* 002387 0x80A0ED5C E4A00024 */ swc1	$f0, 0X24($a1)
/* 002388 0x80A0ED60 460A4101 */ sub.s	$f4, $f8, $f10
/* 002389 0x80A0ED64 E4AE0028 */ swc1	$f14, 0X28($a1)
/* 002390 0x80A0ED68 460C2182 */ mul.s	$f6, $f4, $f12
/* 002391 0x80A0ED6C 46065480 */ add.s	$f18, $f10, $f6
/* 002392 0x80A0ED70 E4B2002C */ swc1	$f18, 0X2C($a1)
/* 002393 0x80A0ED74 03E00008 */ jr	$ra
/* 002394 0x80A0ED78 27BD0028 */ addiu	$sp, $sp, 0X28

