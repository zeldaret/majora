glabel func_80ACE850
/* 000328 0x80ACE850 27BDFF68 */ addiu	$sp, $sp, -0X98
/* 000329 0x80ACE854 AFBF0074 */ sw	$ra, 0X74($sp)
/* 000330 0x80ACE858 AFBE0070 */ sw	$fp, 0X70($sp)
/* 000331 0x80ACE85C AFB7006C */ sw	$s7, 0X6C($sp)
/* 000332 0x80ACE860 AFB60068 */ sw	$s6, 0X68($sp)
/* 000333 0x80ACE864 AFB50064 */ sw	$s5, 0X64($sp)
/* 000334 0x80ACE868 AFB40060 */ sw	$s4, 0X60($sp)
/* 000335 0x80ACE86C AFB3005C */ sw	$s3, 0X5C($sp)
/* 000336 0x80ACE870 AFB20058 */ sw	$s2, 0X58($sp)
/* 000337 0x80ACE874 AFB10054 */ sw	$s1, 0X54($sp)
/* 000338 0x80ACE878 AFB00050 */ sw	$s0, 0X50($sp)
/* 000339 0x80ACE87C F7BA0048 */ sdc1	$f26, 0X48($sp)
/* 000340 0x80ACE880 F7B80040 */ sdc1	$f24, 0X40($sp)
/* 000341 0x80ACE884 F7B60038 */ sdc1	$f22, 0X38($sp)
/* 000342 0x80ACE888 F7B40030 */ sdc1	$f20, 0X30($sp)
/* 000343 0x80ACE88C AFA5009C */ sw	$a1, 0X9C($sp)
/* 000344 0x80ACE890 849400BE */ lh	$s4, 0XBE($a0)
/* 000345 0x80ACE894 249001B8 */ addiu	$s0, $a0, 0X1B8
/* 000346 0x80ACE898 0C021BE8 */ jal	rand
/* 000347 0x80ACE89C AFA40098 */ sw	$a0, 0X98($sp)
/* 000348 0x80ACE8A0 3C01BF80 */ lui	$at, 0xBF80
/* 000349 0x80ACE8A4 4481D000 */ mtc1	$at, $f26
/* 000350 0x80ACE8A8 24010006 */ li	$at, 0X6
/* 000351 0x80ACE8AC 0041001B */ divu	$zero, $v0, $at
/* 000352 0x80ACE8B0 8FA30098 */ lw	$v1, 0X98($sp)
/* 000353 0x80ACE8B4 00007010 */ mfhi	$t6
/* 000354 0x80ACE8B8 240F0001 */ li	$t7, 0X1
/* 000355 0x80ACE8BC A46E0308 */ sh	$t6, 0X308($v1)
/* 000356 0x80ACE8C0 A46F0302 */ sh	$t7, 0X302($v1)
/* 000357 0x80ACE8C4 0C021BF7 */ jal	randZeroOne
/* 000358 0x80ACE8C8 E47A0074 */ swc1	$f26, 0X74($v1)
/* 000359 0x80ACE8CC 8FA20098 */ lw	$v0, 0X98($sp)
/* 000360 0x80ACE8D0 3C013F00 */ lui	$at, 0x3F00
/* 000361 0x80ACE8D4 4481C000 */ mtc1	$at, $f24
/* 000362 0x80ACE8D8 3C014110 */ lui	$at, 0x4110
/* 000363 0x80ACE8DC 3C1580AD */ lui	$s5, %hi(D_80ACF654)
/* 000364 0x80ACE8E0 E4400068 */ swc1	$f0, 0X68($v0)
/* 000365 0x80ACE8E4 84520308 */ lh	$s2, 0X308($v0)
/* 000366 0x80ACE8E8 245800BC */ addiu	$t8, $v0, 0XBC
/* 000367 0x80ACE8EC 4481A000 */ mtc1	$at, $f20
/* 000368 0x80ACE8F0 4480B000 */ mtc1	$zero, $f22
/* 000369 0x80ACE8F4 AFB80078 */ sw	$t8, 0X78($sp)
/* 000370 0x80ACE8F8 26B5F654 */ addiu	$s5, $s5, %lo(D_80ACF654)
/* 000371 0x80ACE8FC 00009825 */ move	$s3, $zero
/* 000372 0x80ACE900 24170002 */ li	$s7, 0X2
/* 000373 0x80ACE904 24160006 */ li	$s6, 0X6
/* 000374 0x80ACE908 245E0024 */ addiu	$fp, $v0, 0X24
/* 000375 0x80ACE90C 8FC80000 */ lw	$t0, 0X0($fp)
.L80ACE910:
/* 000376 0x80ACE910 00142400 */ sll	$a0, $s4, 16
/* 000377 0x80ACE914 00042403 */ sra	$a0, $a0, 16
/* 000378 0x80ACE918 AE080000 */ sw	$t0, 0X0($s0)
/* 000379 0x80ACE91C 8FD90004 */ lw	$t9, 0X4($fp)
/* 000380 0x80ACE920 AE190004 */ sw	$t9, 0X4($s0)
/* 000381 0x80ACE924 8FC80008 */ lw	$t0, 0X8($fp)
/* 000382 0x80ACE928 0C03FB51 */ jal	Math_Coss
/* 000383 0x80ACE92C AE080008 */ sw	$t0, 0X8($s0)
/* 000384 0x80ACE930 001248C0 */ sll	$t1, $s2, 3
/* 000385 0x80ACE934 02A98821 */ addu	$s1, $s5, $t1
/* 000386 0x80ACE938 C6240000 */ lwc1	$f4, 0X0($s1)
/* 000387 0x80ACE93C 00142400 */ sll	$a0, $s4, 16
/* 000388 0x80ACE940 00042403 */ sra	$a0, $a0, 16
/* 000389 0x80ACE944 46002182 */ mul.s	$f6, $f4, $f0
/* 000390 0x80ACE948 E606000C */ swc1	$f6, 0XC($s0)
/* 000391 0x80ACE94C C6280004 */ lwc1	$f8, 0X4($s1)
/* 000392 0x80ACE950 0C03FB61 */ jal	Math_Sins
/* 000393 0x80ACE954 E6080010 */ swc1	$f8, 0X10($s0)
/* 000394 0x80ACE958 C62A0000 */ lwc1	$f10, 0X0($s1)
/* 000395 0x80ACE95C 46000407 */ neg.s	$f16, $f0
/* 000396 0x80ACE960 46105482 */ mul.s	$f18, $f10, $f16
/* 000397 0x80ACE964 0C021C0C */ jal	randPlusMinusPoint5
/* 000398 0x80ACE968 E6120014 */ swc1	$f18, 0X14($s0)
/* 000399 0x80ACE96C C604000C */ lwc1	$f4, 0XC($s0)
/* 000400 0x80ACE970 46002180 */ add.s	$f6, $f4, $f0
/* 000401 0x80ACE974 0C021BF7 */ jal	randZeroOne
/* 000402 0x80ACE978 E606000C */ swc1	$f6, 0XC($s0)
/* 000403 0x80ACE97C 46180282 */ mul.s	$f10, $f0, $f24
/* 000404 0x80ACE980 C6080010 */ lwc1	$f8, 0X10($s0)
/* 000405 0x80ACE984 460A4400 */ add.s	$f16, $f8, $f10
/* 000406 0x80ACE988 0C021C0C */ jal	randPlusMinusPoint5
/* 000407 0x80ACE98C E6100010 */ swc1	$f16, 0X10($s0)
/* 000408 0x80ACE990 C608000C */ lwc1	$f8, 0XC($s0)
/* 000409 0x80ACE994 C6120014 */ lwc1	$f18, 0X14($s0)
/* 000410 0x80ACE998 C6060000 */ lwc1	$f6, 0X0($s0)
/* 000411 0x80ACE99C 4608A282 */ mul.s	$f10, $f20, $f8
/* 000412 0x80ACE9A0 46009100 */ add.s	$f4, $f18, $f0
/* 000413 0x80ACE9A4 C6120004 */ lwc1	$f18, 0X4($s0)
/* 000414 0x80ACE9A8 E6160018 */ swc1	$f22, 0X18($s0)
/* 000415 0x80ACE9AC E61A001C */ swc1	$f26, 0X1C($s0)
/* 000416 0x80ACE9B0 E6040014 */ swc1	$f4, 0X14($s0)
/* 000417 0x80ACE9B4 C6040010 */ lwc1	$f4, 0X10($s0)
/* 000418 0x80ACE9B8 460A3400 */ add.s	$f16, $f6, $f10
/* 000419 0x80ACE9BC C60A0008 */ lwc1	$f10, 0X8($s0)
/* 000420 0x80ACE9C0 4604A202 */ mul.s	$f8, $f20, $f4
/* 000421 0x80ACE9C4 E6160020 */ swc1	$f22, 0X20($s0)
/* 000422 0x80ACE9C8 E6100000 */ swc1	$f16, 0X0($s0)
/* 000423 0x80ACE9CC C6100014 */ lwc1	$f16, 0X14($s0)
/* 000424 0x80ACE9D0 4610A102 */ mul.s	$f4, $f20, $f16
/* 000425 0x80ACE9D4 46089180 */ add.s	$f6, $f18, $f8
/* 000426 0x80ACE9D8 E6060004 */ swc1	$f6, 0X4($s0)
/* 000427 0x80ACE9DC 46045480 */ add.s	$f18, $f10, $f4
/* 000428 0x80ACE9E0 E6120008 */ swc1	$f18, 0X8($s0)
/* 000429 0x80ACE9E4 8FAA0078 */ lw	$t2, 0X78($sp)
/* 000430 0x80ACE9E8 894C0000 */ lwl	$t4, 0X0($t2)
/* 000431 0x80ACE9EC 994C0003 */ lwr	$t4, 0X3($t2)
/* 000432 0x80ACE9F0 AA0C0024 */ swl	$t4, 0X24($s0)
/* 000433 0x80ACE9F4 BA0C0027 */ swr	$t4, 0X27($s0)
/* 000434 0x80ACE9F8 954C0004 */ lhu	$t4, 0X4($t2)
/* 000435 0x80ACE9FC 0C021BE8 */ jal	rand
/* 000436 0x80ACEA00 A60C0028 */ sh	$t4, 0X28($s0)
/* 000437 0x80ACEA04 00026C00 */ sll	$t5, $v0, 16
/* 000438 0x80ACEA08 000D7403 */ sra	$t6, $t5, 16
/* 000439 0x80ACEA0C 000E7983 */ sra	$t7, $t6, 6
/* 000440 0x80ACEA10 0C021BE8 */ jal	rand
/* 000441 0x80ACEA14 A60F002A */ sh	$t7, 0X2A($s0)
/* 000442 0x80ACEA18 0002C400 */ sll	$t8, $v0, 16
/* 000443 0x80ACEA1C 0018CC03 */ sra	$t9, $t8, 16
/* 000444 0x80ACEA20 00194183 */ sra	$t0, $t9, 6
/* 000445 0x80ACEA24 0C021BE8 */ jal	rand
/* 000446 0x80ACEA28 A608002C */ sh	$t0, 0X2C($s0)
/* 000447 0x80ACEA2C 264D0003 */ addiu	$t5, $s2, 0X3
/* 000448 0x80ACEA30 01B6001A */ div	$zero, $t5, $s6
/* 000449 0x80ACEA34 00024C00 */ sll	$t1, $v0, 16
/* 000450 0x80ACEA38 00095403 */ sra	$t2, $t1, 16
/* 000451 0x80ACEA3C 26730001 */ addiu	$s3, $s3, 0X1
/* 000452 0x80ACEA40 000A5983 */ sra	$t3, $t2, 6
/* 000453 0x80ACEA44 240C0001 */ li	$t4, 0X1
/* 000454 0x80ACEA48 00009010 */ mfhi	$s2
/* 000455 0x80ACEA4C A60B002E */ sh	$t3, 0X2E($s0)
/* 000456 0x80ACEA50 A60C0030 */ sh	$t4, 0X30($s0)
/* 000457 0x80ACEA54 16C00002 */ bnez	$s6, .L80ACEA60
/* 000458 0x80ACEA58 00000000 */ nop
/* 000459 0x80ACEA5C 0007000D */ break	0x00007
.L80ACEA60:
/* 000460 0x80ACEA60 2401FFFF */ li	$at, -0X1
/* 000461 0x80ACEA64 16C10004 */ bne	$s6, $at, .L80ACEA78
/* 000462 0x80ACEA68 3C018000 */ lui	$at, 0x8000
/* 000463 0x80ACEA6C 15A10002 */ bne	$t5, $at, .L80ACEA78
/* 000464 0x80ACEA70 00000000 */ nop
/* 000465 0x80ACEA74 0006000D */ break	0x00006
.L80ACEA78:
/* 000466 0x80ACEA78 26100034 */ addiu	$s0, $s0, 0X34
/* 000467 0x80ACEA7C 5677FFA4 */ bnel	$s3, $s7, .L80ACE910
/* 000468 0x80ACEA80 8FC80000 */ lw	$t0, 0X0($fp)
/* 000469 0x80ACEA84 8FAF0098 */ lw	$t7, 0X98($sp)
/* 000470 0x80ACEA88 240E0002 */ li	$t6, 0X2
/* 000471 0x80ACEA8C 24180007 */ li	$t8, 0X7
/* 000472 0x80ACEA90 A5EE0118 */ sh	$t6, 0X118($t7)
/* 000473 0x80ACEA94 24190008 */ li	$t9, 0X8
/* 000474 0x80ACEA98 24080014 */ li	$t0, 0X14
/* 000475 0x80ACEA9C 2409FFFF */ li	$t1, -0X1
/* 000476 0x80ACEAA0 240A000A */ li	$t2, 0XA
/* 000477 0x80ACEAA4 AFAA0020 */ sw	$t2, 0X20($sp)
/* 000478 0x80ACEAA8 AFA9001C */ sw	$t1, 0X1C($sp)
/* 000479 0x80ACEAAC AFA80018 */ sw	$t0, 0X18($sp)
/* 000480 0x80ACEAB0 AFB90014 */ sw	$t9, 0X14($sp)
/* 000481 0x80ACEAB4 AFA00024 */ sw	$zero, 0X24($sp)
/* 000482 0x80ACEAB8 AFB80010 */ sw	$t8, 0X10($sp)
/* 000483 0x80ACEABC 8FA4009C */ lw	$a0, 0X9C($sp)
/* 000484 0x80ACEAC0 03C02825 */ move	$a1, $fp
/* 000485 0x80ACEAC4 3C064150 */ lui	$a2, 0x4150
/* 000486 0x80ACEAC8 0C02C887 */ jal	func_800B221C
/* 000487 0x80ACEACC 00003825 */ move	$a3, $zero
/* 000488 0x80ACEAD0 8FA40098 */ lw	$a0, 0X98($sp)
/* 000489 0x80ACEAD4 0C02E3B2 */ jal	func_800B8EC8
/* 000490 0x80ACEAD8 2405293A */ li	$a1, 0X293A
/* 000491 0x80ACEADC 8FAC0098 */ lw	$t4, 0X98($sp)
/* 000492 0x80ACEAE0 3C0B80AD */ lui	$t3, %hi(func_80ACECFC)
/* 000493 0x80ACEAE4 256BECFC */ addiu	$t3, $t3, %lo(func_80ACECFC)
/* 000494 0x80ACEAE8 AD8B015C */ sw	$t3, 0X15C($t4)
/* 000495 0x80ACEAEC 8FBF0074 */ lw	$ra, 0X74($sp)
/* 000496 0x80ACEAF0 D7B40030 */ ldc1	$f20, 0X30($sp)
/* 000497 0x80ACEAF4 D7B60038 */ ldc1	$f22, 0X38($sp)
/* 000498 0x80ACEAF8 D7B80040 */ ldc1	$f24, 0X40($sp)
/* 000499 0x80ACEAFC D7BA0048 */ ldc1	$f26, 0X48($sp)
/* 000500 0x80ACEB00 8FB00050 */ lw	$s0, 0X50($sp)
/* 000501 0x80ACEB04 8FB10054 */ lw	$s1, 0X54($sp)
/* 000502 0x80ACEB08 8FB20058 */ lw	$s2, 0X58($sp)
/* 000503 0x80ACEB0C 8FB3005C */ lw	$s3, 0X5C($sp)
/* 000504 0x80ACEB10 8FB40060 */ lw	$s4, 0X60($sp)
/* 000505 0x80ACEB14 8FB50064 */ lw	$s5, 0X64($sp)
/* 000506 0x80ACEB18 8FB60068 */ lw	$s6, 0X68($sp)
/* 000507 0x80ACEB1C 8FB7006C */ lw	$s7, 0X6C($sp)
/* 000508 0x80ACEB20 8FBE0070 */ lw	$fp, 0X70($sp)
/* 000509 0x80ACEB24 03E00008 */ jr	$ra
/* 000510 0x80ACEB28 27BD0098 */ addiu	$sp, $sp, 0X98

