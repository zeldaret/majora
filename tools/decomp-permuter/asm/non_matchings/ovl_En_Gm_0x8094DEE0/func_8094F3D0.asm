glabel func_8094F3D0
/* 001340 0x8094F3D0 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 001341 0x8094F3D4 AFB00020 */ sw	$s0, 0X20($sp)
/* 001342 0x8094F3D8 00808025 */ move	$s0, $a0
/* 001343 0x8094F3DC AFBF0024 */ sw	$ra, 0X24($sp)
/* 001344 0x8094F3E0 8CAE1CCC */ lw	$t6, 0X1CCC($a1)
/* 001345 0x8094F3E4 AFA50034 */ sw	$a1, 0X34($sp)
/* 001346 0x8094F3E8 24A44908 */ addiu	$a0, $a1, 0X4908
/* 001347 0x8094F3EC 0C054926 */ jal	func_80152498
/* 001348 0x8094F3F0 AFAE002C */ sw	$t6, 0X2C($sp)
/* 001349 0x8094F3F4 8FAF002C */ lw	$t7, 0X2C($sp)
/* 001350 0x8094F3F8 8FA50034 */ lw	$a1, 0X34($sp)
/* 001351 0x8094F3FC AFA20028 */ sw	$v0, 0X28($sp)
/* 001352 0x8094F400 8DF80A88 */ lw	$t8, 0XA88($t7)
/* 001353 0x8094F404 3C040001 */ lui	$a0, 0x0001
/* 001354 0x8094F408 00852021 */ addu	$a0, $a0, $a1
/* 001355 0x8094F40C 00401825 */ move	$v1, $v0
/* 001356 0x8094F410 1618001E */ bne	$s0, $t8, .L8094F48C
/* 001357 0x8094F414 9484680C */ lhu	$a0, 0X680C($a0)
/* 001358 0x8094F418 288100FF */ slti	$at, $a0, 0XFF
/* 001359 0x8094F41C 14200004 */ bnez	$at, .L8094F430
/* 001360 0x8094F420 24020003 */ li	$v0, 0X3
/* 001361 0x8094F424 28810201 */ slti	$at, $a0, 0X201
/* 001362 0x8094F428 54200019 */ bnezl	$at, .L8094F490
/* 001363 0x8094F42C 44807000 */ mtc1	$zero, $f14
.L8094F430:
/* 001364 0x8094F430 54620017 */ bnel	$v1, $v0, .L8094F490
/* 001365 0x8094F434 44807000 */ mtc1	$zero, $f14
/* 001366 0x8094F438 8E1903F0 */ lw	$t9, 0X3F0($s0)
/* 001367 0x8094F43C 54590014 */ bnel	$v0, $t9, .L8094F490
/* 001368 0x8094F440 44807000 */ mtc1	$zero, $f14
/* 001369 0x8094F444 8CA8009C */ lw	$t0, 0X9C($a1)
/* 001370 0x8094F448 24010003 */ li	$at, 0X3
/* 001371 0x8094F44C 0101001B */ divu	$zero, $t0, $at
/* 001372 0x8094F450 00004810 */ mfhi	$t1
/* 001373 0x8094F454 3C0142F0 */ lui	$at, 0x42F0
/* 001374 0x8094F458 55200010 */ bnezl	$t1, .L8094F49C
/* 001375 0x8094F45C 3C014120 */ lui	$at, 0x4120
/* 001376 0x8094F460 44810000 */ mtc1	$at, $f0
/* 001377 0x8094F464 C60403AC */ lwc1	$f4, 0X3AC($s0)
/* 001378 0x8094F468 46040032 */ c.eq.s	$f0, $f4
/* 001379 0x8094F46C 00000000 */ nop
/* 001380 0x8094F470 45000004 */ bc1f .L8094F484
/* 001381 0x8094F474 00000000 */ nop
/* 001382 0x8094F478 44803000 */ mtc1	$zero, $f6
/* 001383 0x8094F47C 10000006 */ b	.L8094F498
/* 001384 0x8094F480 E60603AC */ swc1	$f6, 0X3AC($s0)
.L8094F484:
/* 001385 0x8094F484 10000004 */ b	.L8094F498
/* 001386 0x8094F488 E60003AC */ swc1	$f0, 0X3AC($s0)
.L8094F48C:
/* 001387 0x8094F48C 44807000 */ mtc1	$zero, $f14
.L8094F490:
/* 001388 0x8094F490 00000000 */ nop
/* 001389 0x8094F494 E60E03AC */ swc1	$f14, 0X3AC($s0)
.L8094F498:
/* 001390 0x8094F498 3C014120 */ lui	$at, 0x4120
.L8094F49C:
/* 001391 0x8094F49C 44814000 */ mtc1	$at, $f8
/* 001392 0x8094F4A0 8E0503AC */ lw	$a1, 0X3AC($s0)
/* 001393 0x8094F4A4 3C063F4C */ lui	$a2, 0x3F4C
/* 001394 0x8094F4A8 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 001395 0x8094F4AC 260403B0 */ addiu	$a0, $s0, 0X3B0
/* 001396 0x8094F4B0 3C074220 */ lui	$a3, 0x4220
/* 001397 0x8094F4B4 0C03FF36 */ jal	Math_SmoothScaleMaxMinF
/* 001398 0x8094F4B8 E7A80010 */ swc1	$f8, 0X10($sp)
/* 001399 0x8094F4BC 44807000 */ mtc1	$zero, $f14
/* 001400 0x8094F4C0 C60C03B0 */ lwc1	$f12, 0X3B0($s0)
/* 001401 0x8094F4C4 24070001 */ li	$a3, 0X1
/* 001402 0x8094F4C8 44067000 */ mfc1	$a2, $f14
/* 001403 0x8094F4CC 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 001404 0x8094F4D0 00000000 */ nop
/* 001405 0x8094F4D4 8FAA0028 */ lw	$t2, 0X28($sp)
/* 001406 0x8094F4D8 AE0A03F0 */ sw	$t2, 0X3F0($s0)
/* 001407 0x8094F4DC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001408 0x8094F4E0 8FB00020 */ lw	$s0, 0X20($sp)
/* 001409 0x8094F4E4 03E00008 */ jr	$ra
/* 001410 0x8094F4E8 27BD0030 */ addiu	$sp, $sp, 0X30

