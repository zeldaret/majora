glabel func_80A4BAB4
/* 002309 0x80A4BAB4 27BDFFA8 */ addiu	$sp, $sp, -0X58
/* 002310 0x80A4BAB8 AFB00034 */ sw	$s0, 0X34($sp)
/* 002311 0x80A4BABC 00808025 */ move	$s0, $a0
/* 002312 0x80A4BAC0 AFBF003C */ sw	$ra, 0X3C($sp)
/* 002313 0x80A4BAC4 AFB10038 */ sw	$s1, 0X38($sp)
/* 002314 0x80A4BAC8 AFA5005C */ sw	$a1, 0X5C($sp)
/* 002315 0x80A4BACC 3C0141A0 */ lui	$at, 0x41A0
/* 002316 0x80A4BAD0 8FAE005C */ lw	$t6, 0X5C($sp)
/* 002317 0x80A4BAD4 44813000 */ mtc1	$at, $f6
/* 002318 0x80A4BAD8 C6040088 */ lwc1	$f4, 0X88($s0)
/* 002319 0x80A4BADC C60C0024 */ lwc1	$f12, 0X24($s0)
/* 002320 0x80A4BAE0 8E06002C */ lw	$a2, 0X2C($s0)
/* 002321 0x80A4BAE4 00003825 */ move	$a3, $zero
/* 002322 0x80A4BAE8 8DD10000 */ lw	$s1, 0X0($t6)
/* 002323 0x80A4BAEC 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 002324 0x80A4BAF0 46062380 */ add.s	$f14, $f4, $f6
/* 002325 0x80A4BAF4 C600014C */ lwc1	$f0, 0X14C($s0)
/* 002326 0x80A4BAF8 C610015C */ lwc1	$f16, 0X15C($s0)
/* 002327 0x80A4BAFC C6080154 */ lwc1	$f8, 0X154($s0)
/* 002328 0x80A4BB00 C60A0158 */ lwc1	$f10, 0X158($s0)
/* 002329 0x80A4BB04 46100480 */ add.s	$f18, $f0, $f16
/* 002330 0x80A4BB08 24070001 */ li	$a3, 0X1
/* 002331 0x80A4BB0C 46080300 */ add.s	$f12, $f0, $f8
/* 002332 0x80A4BB10 44069000 */ mfc1	$a2, $f18
/* 002333 0x80A4BB14 0C0600E7 */ jal	SysMatrix_InsertScale
/* 002334 0x80A4BB18 460A0380 */ add.s	$f14, $f0, $f10
/* 002335 0x80A4BB1C 8E2202C0 */ lw	$v0, 0X2C0($s1)
/* 002336 0x80A4BB20 3C18DB06 */ lui	$t8, 0xDB06
/* 002337 0x80A4BB24 37180020 */ ori	$t8, $t8, 0X20
/* 002338 0x80A4BB28 244F0008 */ addiu	$t7, $v0, 0X8
/* 002339 0x80A4BB2C AE2F02C0 */ sw	$t7, 0X2C0($s1)
/* 002340 0x80A4BB30 AC580000 */ sw	$t8, 0X0($v0)
/* 002341 0x80A4BB34 8FB9005C */ lw	$t9, 0X5C($sp)
/* 002342 0x80A4BB38 24090020 */ li	$t1, 0X20
/* 002343 0x80A4BB3C 240A0020 */ li	$t2, 0X20
/* 002344 0x80A4BB40 8F240000 */ lw	$a0, 0X0($t9)
/* 002345 0x80A4BB44 240B0001 */ li	$t3, 0X1
/* 002346 0x80A4BB48 AFAB0018 */ sw	$t3, 0X18($sp)
/* 002347 0x80A4BB4C AFAA0014 */ sw	$t2, 0X14($sp)
/* 002348 0x80A4BB50 AFA90010 */ sw	$t1, 0X10($sp)
/* 002349 0x80A4BB54 86030170 */ lh	$v1, 0X170($s0)
/* 002350 0x80A4BB58 24190020 */ li	$t9, 0X20
/* 002351 0x80A4BB5C 24180020 */ li	$t8, 0X20
/* 002352 0x80A4BB60 00036823 */ negu	$t5, $v1
/* 002353 0x80A4BB64 000D7080 */ sll	$t6, $t5, 2
/* 002354 0x80A4BB68 01CD7021 */ addu	$t6, $t6, $t5
/* 002355 0x80A4BB6C 000E7040 */ sll	$t6, $t6, 1
/* 002356 0x80A4BB70 31CF007F */ andi	$t7, $t6, 0X7F
/* 002357 0x80A4BB74 306C007F */ andi	$t4, $v1, 0X7F
/* 002358 0x80A4BB78 AFAC001C */ sw	$t4, 0X1C($sp)
/* 002359 0x80A4BB7C AFAF0020 */ sw	$t7, 0X20($sp)
/* 002360 0x80A4BB80 AFB80024 */ sw	$t8, 0X24($sp)
/* 002361 0x80A4BB84 AFB90028 */ sw	$t9, 0X28($sp)
/* 002362 0x80A4BB88 00002825 */ move	$a1, $zero
/* 002363 0x80A4BB8C 00003025 */ move	$a2, $zero
/* 002364 0x80A4BB90 00003825 */ move	$a3, $zero
/* 002365 0x80A4BB94 0C04B2F4 */ jal	Gfx_TwoTexScroll
/* 002366 0x80A4BB98 AFA20044 */ sw	$v0, 0X44($sp)
/* 002367 0x80A4BB9C 8FA80044 */ lw	$t0, 0X44($sp)
/* 002368 0x80A4BBA0 24050001 */ li	$a1, 0X1
/* 002369 0x80A4BBA4 AD020004 */ sw	$v0, 0X4($t0)
/* 002370 0x80A4BBA8 8E2202C0 */ lw	$v0, 0X2C0($s1)
/* 002371 0x80A4BBAC 3C0AFA00 */ lui	$t2, 0xFA00
/* 002372 0x80A4BBB0 354A0080 */ ori	$t2, $t2, 0X80
/* 002373 0x80A4BBB4 24490008 */ addiu	$t1, $v0, 0X8
/* 002374 0x80A4BBB8 AE2902C0 */ sw	$t1, 0X2C0($s1)
/* 002375 0x80A4BBBC AC4A0000 */ sw	$t2, 0X0($v0)
/* 002376 0x80A4BBC0 C60401FC */ lwc1	$f4, 0X1FC($s0)
/* 002377 0x80A4BBC4 3C016432 */ lui	$at, 0x6432
/* 002378 0x80A4BBC8 3C09FB00 */ lui	$t1, 0xFB00
/* 002379 0x80A4BBCC 4600218D */ trunc.w.s	$f6, $f4
/* 002380 0x80A4BBD0 440E3000 */ mfc1	$t6, $f6
/* 002381 0x80A4BBD4 00000000 */ nop
/* 002382 0x80A4BBD8 31CF00FF */ andi	$t7, $t6, 0XFF
/* 002383 0x80A4BBDC 01E1C025 */ or	$t8, $t7, $at
/* 002384 0x80A4BBE0 AC580004 */ sw	$t8, 0X4($v0)
/* 002385 0x80A4BBE4 8E2202C0 */ lw	$v0, 0X2C0($s1)
/* 002386 0x80A4BBE8 3C0AC8EB */ lui	$t2, 0xC8EB
/* 002387 0x80A4BBEC 354AF5FF */ ori	$t2, $t2, 0XF5FF
/* 002388 0x80A4BBF0 24590008 */ addiu	$t9, $v0, 0X8
/* 002389 0x80A4BBF4 AE3902C0 */ sw	$t9, 0X2C0($s1)
/* 002390 0x80A4BBF8 AC4A0004 */ sw	$t2, 0X4($v0)
/* 002391 0x80A4BBFC AC490000 */ sw	$t1, 0X0($v0)
/* 002392 0x80A4BC00 8FA4005C */ lw	$a0, 0X5C($sp)
/* 002393 0x80A4BC04 3C010001 */ lui	$at, 0x0001
/* 002394 0x80A4BC08 342187FC */ ori	$at, $at, 0X87FC
/* 002395 0x80A4BC0C 0C060091 */ jal	SysMatrix_InsertMatrix
/* 002396 0x80A4BC10 00812021 */ addu	$a0, $a0, $at
/* 002397 0x80A4BC14 8E2202C0 */ lw	$v0, 0X2C0($s1)
/* 002398 0x80A4BC18 3C0CDA38 */ lui	$t4, 0xDA38
/* 002399 0x80A4BC1C 358C0003 */ ori	$t4, $t4, 0X3
/* 002400 0x80A4BC20 244B0008 */ addiu	$t3, $v0, 0X8
/* 002401 0x80A4BC24 AE2B02C0 */ sw	$t3, 0X2C0($s1)
/* 002402 0x80A4BC28 AC4C0000 */ sw	$t4, 0X0($v0)
/* 002403 0x80A4BC2C 8FAD005C */ lw	$t5, 0X5C($sp)
/* 002404 0x80A4BC30 00408025 */ move	$s0, $v0
/* 002405 0x80A4BC34 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 002406 0x80A4BC38 8DA40000 */ lw	$a0, 0X0($t5)
/* 002407 0x80A4BC3C AE020004 */ sw	$v0, 0X4($s0)
/* 002408 0x80A4BC40 8E2202C0 */ lw	$v0, 0X2C0($s1)
/* 002409 0x80A4BC44 3C180600 */ lui	$t8, 0x0600
/* 002410 0x80A4BC48 27182630 */ addiu	$t8, $t8, 0X2630
/* 002411 0x80A4BC4C 244E0008 */ addiu	$t6, $v0, 0X8
/* 002412 0x80A4BC50 AE2E02C0 */ sw	$t6, 0X2C0($s1)
/* 002413 0x80A4BC54 3C0FDE00 */ lui	$t7, 0xDE00
/* 002414 0x80A4BC58 AC4F0000 */ sw	$t7, 0X0($v0)
/* 002415 0x80A4BC5C AC580004 */ sw	$t8, 0X4($v0)
/* 002416 0x80A4BC60 8FBF003C */ lw	$ra, 0X3C($sp)
/* 002417 0x80A4BC64 8FB00034 */ lw	$s0, 0X34($sp)
/* 002418 0x80A4BC68 8FB10038 */ lw	$s1, 0X38($sp)
/* 002419 0x80A4BC6C 03E00008 */ jr	$ra
/* 002420 0x80A4BC70 27BD0058 */ addiu	$sp, $sp, 0X58

