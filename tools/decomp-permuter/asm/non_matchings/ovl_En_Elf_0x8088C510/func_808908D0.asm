glabel func_808908D0
/* 004336 0x808908D0 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 004337 0x808908D4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 004338 0x808908D8 AFA40030 */ sw	$a0, 0X30($sp)
/* 004339 0x808908DC AFA60038 */ sw	$a2, 0X38($sp)
/* 004340 0x808908E0 00A03825 */ move	$a3, $a1
/* 004341 0x808908E4 8FAE0038 */ lw	$t6, 0X38($sp)
/* 004342 0x808908E8 000E7880 */ sll	$t7, $t6, 2
/* 004343 0x808908EC 00EFC021 */ addu	$t8, $a3, $t7
/* 004344 0x808908F0 8F021F4C */ lw	$v0, 0X1F4C($t8)
/* 004345 0x808908F4 8C4A0018 */ lw	$t2, 0X18($v0)
/* 004346 0x808908F8 8C59000C */ lw	$t9, 0XC($v0)
/* 004347 0x808908FC 8C480010 */ lw	$t0, 0X10($v0)
/* 004348 0x80890900 448A5000 */ mtc1	$t2, $f10
/* 004349 0x80890904 8C490014 */ lw	$t1, 0X14($v0)
/* 004350 0x80890908 44992000 */ mtc1	$t9, $f4
/* 004351 0x8089090C 46805420 */ cvt.s.w	$f16, $f10
/* 004352 0x80890910 44883000 */ mtc1	$t0, $f6
/* 004353 0x80890914 44894000 */ mtc1	$t1, $f8
/* 004354 0x80890918 468020A0 */ cvt.s.w	$f2, $f4
/* 004355 0x8089091C E7B00018 */ swc1	$f16, 0X18($sp)
/* 004356 0x80890920 8C4B001C */ lw	$t3, 0X1C($v0)
/* 004357 0x80890924 448B9000 */ mtc1	$t3, $f18
/* 004358 0x80890928 46803320 */ cvt.s.w	$f12, $f6
/* 004359 0x8089092C 46809120 */ cvt.s.w	$f4, $f18
/* 004360 0x80890930 468043A0 */ cvt.s.w	$f14, $f8
/* 004361 0x80890934 E7A4001C */ swc1	$f4, 0X1C($sp)
/* 004362 0x80890938 8C4C0020 */ lw	$t4, 0X20($v0)
/* 004363 0x8089093C 448C3000 */ mtc1	$t4, $f6
/* 004364 0x80890940 00000000 */ nop
/* 004365 0x80890944 46803220 */ cvt.s.w	$f8, $f6
/* 004366 0x80890948 E7A80020 */ swc1	$f8, 0X20($sp)
/* 004367 0x8089094C 94E61F34 */ lhu	$a2, 0X1F34($a3)
/* 004368 0x80890950 94450002 */ lhu	$a1, 0X2($v0)
/* 004369 0x80890954 94440004 */ lhu	$a0, 0X4($v0)
/* 004370 0x80890958 E7AE002C */ swc1	$f14, 0X2C($sp)
/* 004371 0x8089095C E7AC0028 */ swc1	$f12, 0X28($sp)
/* 004372 0x80890960 0C03D6A3 */ jal	func_800F5A8C
/* 004373 0x80890964 E7A20024 */ swc1	$f2, 0X24($sp)
/* 004374 0x80890968 C7A20024 */ lwc1	$f2, 0X24($sp)
/* 004375 0x8089096C C7AA0018 */ lwc1	$f10, 0X18($sp)
/* 004376 0x80890970 8FA20030 */ lw	$v0, 0X30($sp)
/* 004377 0x80890974 C7AC0028 */ lwc1	$f12, 0X28($sp)
/* 004378 0x80890978 46025401 */ sub.s	$f16, $f10, $f2
/* 004379 0x8089097C C7AE002C */ lwc1	$f14, 0X2C($sp)
/* 004380 0x80890980 46008482 */ mul.s	$f18, $f16, $f0
/* 004381 0x80890984 46029100 */ add.s	$f4, $f18, $f2
/* 004382 0x80890988 E4440000 */ swc1	$f4, 0X0($v0)
/* 004383 0x8089098C C7A6001C */ lwc1	$f6, 0X1C($sp)
/* 004384 0x80890990 460C3201 */ sub.s	$f8, $f6, $f12
/* 004385 0x80890994 46004282 */ mul.s	$f10, $f8, $f0
/* 004386 0x80890998 460C5400 */ add.s	$f16, $f10, $f12
/* 004387 0x8089099C E4500004 */ swc1	$f16, 0X4($v0)
/* 004388 0x808909A0 C7B20020 */ lwc1	$f18, 0X20($sp)
/* 004389 0x808909A4 460E9101 */ sub.s	$f4, $f18, $f14
/* 004390 0x808909A8 46002182 */ mul.s	$f6, $f4, $f0
/* 004391 0x808909AC 460E3200 */ add.s	$f8, $f6, $f14
/* 004392 0x808909B0 E4480008 */ swc1	$f8, 0X8($v0)
/* 004393 0x808909B4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 004394 0x808909B8 03E00008 */ jr	$ra
/* 004395 0x808909BC 27BD0030 */ addiu	$sp, $sp, 0X30
