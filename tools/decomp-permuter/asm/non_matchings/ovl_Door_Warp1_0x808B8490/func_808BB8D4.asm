glabel func_808BB8D4
/* 003345 0x808BB8D4 27BDFF58 */ addiu	$sp, $sp, -0XA8
/* 003346 0x808BB8D8 AFB60070 */ sw	$s6, 0X70($sp)
/* 003347 0x808BB8DC AFB5006C */ sw	$s5, 0X6C($sp)
/* 003348 0x808BB8E0 AFB40068 */ sw	$s4, 0X68($sp)
/* 003349 0x808BB8E4 0080A025 */ move	$s4, $a0
/* 003350 0x808BB8E8 00C0A825 */ move	$s5, $a2
/* 003351 0x808BB8EC 00A0B025 */ move	$s6, $a1
/* 003352 0x808BB8F0 AFBF007C */ sw	$ra, 0X7C($sp)
/* 003353 0x808BB8F4 AFBE0078 */ sw	$fp, 0X78($sp)
/* 003354 0x808BB8F8 AFB70074 */ sw	$s7, 0X74($sp)
/* 003355 0x808BB8FC AFB30064 */ sw	$s3, 0X64($sp)
/* 003356 0x808BB900 AFB20060 */ sw	$s2, 0X60($sp)
/* 003357 0x808BB904 AFB1005C */ sw	$s1, 0X5C($sp)
/* 003358 0x808BB908 AFB00058 */ sw	$s0, 0X58($sp)
/* 003359 0x808BB90C F7BE0050 */ sdc1	$f30, 0X50($sp)
/* 003360 0x808BB910 F7BC0048 */ sdc1	$f28, 0X48($sp)
/* 003361 0x808BB914 F7BA0040 */ sdc1	$f26, 0X40($sp)
/* 003362 0x808BB918 F7B80038 */ sdc1	$f24, 0X38($sp)
/* 003363 0x808BB91C F7B60030 */ sdc1	$f22, 0X30($sp)
/* 003364 0x808BB920 F7B40028 */ sdc1	$f20, 0X28($sp)
/* 003365 0x808BB924 1AA0006B */ blez	$s5, .L808BBAD4
/* 003366 0x808BB928 00009825 */ move	$s3, $zero
/* 003367 0x808BB92C 3C01447A */ lui	$at, 0x447A
/* 003368 0x808BB930 4481F000 */ mtc1	$at, $f30
/* 003369 0x808BB934 3C013E80 */ lui	$at, 0x3E80
/* 003370 0x808BB938 4481E000 */ mtc1	$at, $f28
/* 003371 0x808BB93C 3C014780 */ lui	$at, 0x4780
/* 003372 0x808BB940 4481D000 */ mtc1	$at, $f26
/* 003373 0x808BB944 3C0140A0 */ lui	$at, 0x40A0
/* 003374 0x808BB948 4481C000 */ mtc1	$at, $f24
/* 003375 0x808BB94C 3C01420C */ lui	$at, 0x420C
/* 003376 0x808BB950 3C1E808C */ lui	$fp, %hi(D_808BBB5C)
/* 003377 0x808BB954 4481A000 */ mtc1	$at, $f20
/* 003378 0x808BB958 4480B000 */ mtc1	$zero, $f22
/* 003379 0x808BB95C 27DEBB5C */ addiu	$fp, $fp, %lo(D_808BBB5C)
/* 003380 0x808BB960 27B7009C */ addiu	$s7, $sp, 0X9C
.L808BB964:
/* 003381 0x808BB964 0C021BF7 */ jal	randZeroOne
/* 003382 0x808BB968 2412001B */ li	$s2, 0X1B
/* 003383 0x808BB96C 461A0102 */ mul.s	$f4, $f0, $f26
/* 003384 0x808BB970 24018000 */ li	$at, -0X8000
/* 003385 0x808BB974 4600218D */ trunc.w.s	$f6, $f4
/* 003386 0x808BB978 44113000 */ mfc1	$s1, $f6
/* 003387 0x808BB97C 00000000 */ nop
/* 003388 0x808BB980 02212021 */ addu	$a0, $s1, $at
/* 003389 0x808BB984 00042400 */ sll	$a0, $a0, 16
/* 003390 0x808BB988 0C03FB61 */ jal	Math_Sins
/* 003391 0x808BB98C 00042403 */ sra	$a0, $a0, 16
/* 003392 0x808BB990 46000207 */ neg.s	$f8, $f0
/* 003393 0x808BB994 C6900024 */ lwc1	$f16, 0X24($s4)
/* 003394 0x808BB998 46144282 */ mul.s	$f10, $f8, $f20
/* 003395 0x808BB99C 24018000 */ li	$at, -0X8000
/* 003396 0x808BB9A0 02218021 */ addu	$s0, $s1, $at
/* 003397 0x808BB9A4 00108400 */ sll	$s0, $s0, 16
/* 003398 0x808BB9A8 00108403 */ sra	$s0, $s0, 16
/* 003399 0x808BB9AC 00102400 */ sll	$a0, $s0, 16
/* 003400 0x808BB9B0 00042403 */ sra	$a0, $a0, 16
/* 003401 0x808BB9B4 46105480 */ add.s	$f18, $f10, $f16
/* 003402 0x808BB9B8 E7B2009C */ swc1	$f18, 0X9C($sp)
/* 003403 0x808BB9BC C6840028 */ lwc1	$f4, 0X28($s4)
/* 003404 0x808BB9C0 0C03FB51 */ jal	Math_Coss
/* 003405 0x808BB9C4 E7A400A0 */ swc1	$f4, 0XA0($sp)
/* 003406 0x808BB9C8 46140182 */ mul.s	$f6, $f0, $f20
/* 003407 0x808BB9CC C688002C */ lwc1	$f8, 0X2C($s4)
/* 003408 0x808BB9D0 3C01808C */ lui	$at, %hi(D_808BBB6C)
/* 003409 0x808BB9D4 E43CBB6C */ swc1	$f28, %lo(D_808BBB6C)($at)
/* 003410 0x808BB9D8 3C01808C */ lui	$at, %hi(D_808BBB5C)
/* 003411 0x808BB9DC E436BB5C */ swc1	$f22, %lo(D_808BBB5C)($at)
/* 003412 0x808BB9E0 240F00FF */ li	$t7, 0XFF
/* 003413 0x808BB9E4 46083280 */ add.s	$f10, $f6, $f8
/* 003414 0x808BB9E8 241800FF */ li	$t8, 0XFF
/* 003415 0x808BB9EC 241900FF */ li	$t9, 0XFF
/* 003416 0x808BB9F0 240800C8 */ li	$t0, 0XC8
/* 003417 0x808BB9F4 240900C8 */ li	$t1, 0XC8
/* 003418 0x808BB9F8 240A00FF */ li	$t2, 0XFF
/* 003419 0x808BB9FC 3C01808C */ lui	$at, %hi(D_808BBB64)
/* 003420 0x808BBA00 E7AA00A4 */ swc1	$f10, 0XA4($sp)
/* 003421 0x808BBA04 A3AF0098 */ sb	$t7, 0X98($sp)
/* 003422 0x808BBA08 A3B80099 */ sb	$t8, 0X99($sp)
/* 003423 0x808BBA0C A3B9009A */ sb	$t9, 0X9A($sp)
/* 003424 0x808BBA10 A3A80094 */ sb	$t0, 0X94($sp)
/* 003425 0x808BBA14 A3A90095 */ sb	$t1, 0X95($sp)
/* 003426 0x808BBA18 A3AA0096 */ sb	$t2, 0X96($sp)
/* 003427 0x808BBA1C 0C021BF7 */ jal	randZeroOne
/* 003428 0x808BBA20 E436BB64 */ swc1	$f22, %lo(D_808BBB64)($at)
/* 003429 0x808BBA24 461E0402 */ mul.s	$f16, $f0, $f30
/* 003430 0x808BBA28 3C014448 */ lui	$at, 0x4448
/* 003431 0x808BBA2C 44819000 */ mtc1	$at, $f18
/* 003432 0x808BBA30 2AA10002 */ slti	$at, $s5, 0X2
/* 003433 0x808BBA34 00102400 */ sll	$a0, $s0, 16
/* 003434 0x808BBA38 00042403 */ sra	$a0, $a0, 16
/* 003435 0x808BBA3C 46128100 */ add.s	$f4, $f16, $f18
/* 003436 0x808BBA40 4600218D */ trunc.w.s	$f6, $f4
/* 003437 0x808BBA44 44113000 */ mfc1	$s1, $f6
/* 003438 0x808BBA48 00000000 */ nop
/* 003439 0x808BBA4C 00118C00 */ sll	$s1, $s1, 16
/* 003440 0x808BBA50 14200011 */ bnez	$at, .L808BBA98
/* 003441 0x808BBA54 00118C03 */ sra	$s1, $s1, 16
/* 003442 0x808BBA58 3C01808C */ lui	$at, %hi(D_808BBC4C)
/* 003443 0x808BBA5C C428BC4C */ lwc1	$f8, %lo(D_808BBC4C)($at)
/* 003444 0x808BBA60 3C01808C */ lui	$at, %hi(D_808BBB6C)
/* 003445 0x808BBA64 24120008 */ li	$s2, 0X8
/* 003446 0x808BBA68 0C03FB61 */ jal	Math_Sins
/* 003447 0x808BBA6C E428BB6C */ swc1	$f8, %lo(D_808BBB6C)($at)
/* 003448 0x808BBA70 46000287 */ neg.s	$f10, $f0
/* 003449 0x808BBA74 3C01808C */ lui	$at, %hi(D_808BBB5C)
/* 003450 0x808BBA78 46185402 */ mul.s	$f16, $f10, $f24
/* 003451 0x808BBA7C 00102400 */ sll	$a0, $s0, 16
/* 003452 0x808BBA80 00042403 */ sra	$a0, $a0, 16
/* 003453 0x808BBA84 0C03FB51 */ jal	Math_Coss
/* 003454 0x808BBA88 E430BB5C */ swc1	$f16, %lo(D_808BBB5C)($at)
/* 003455 0x808BBA8C 46180482 */ mul.s	$f18, $f0, $f24
/* 003456 0x808BBA90 3C01808C */ lui	$at, %hi(D_808BBB64)
/* 003457 0x808BBA94 E432BB64 */ swc1	$f18, %lo(D_808BBB64)($at)
.L808BBA98:
/* 003458 0x808BBA98 3C07808C */ lui	$a3, %hi(D_808BBB68)
/* 003459 0x808BBA9C 27AC0098 */ addiu	$t4, $sp, 0X98
/* 003460 0x808BBAA0 27AD0094 */ addiu	$t5, $sp, 0X94
/* 003461 0x808BBAA4 AFAD0014 */ sw	$t5, 0X14($sp)
/* 003462 0x808BBAA8 AFAC0010 */ sw	$t4, 0X10($sp)
/* 003463 0x808BBAAC 24E7BB68 */ addiu	$a3, $a3, %lo(D_808BBB68)
/* 003464 0x808BBAB0 02C02025 */ move	$a0, $s6
/* 003465 0x808BBAB4 02E02825 */ move	$a1, $s7
/* 003466 0x808BBAB8 03C03025 */ move	$a2, $fp
/* 003467 0x808BBABC AFB10018 */ sw	$s1, 0X18($sp)
/* 003468 0x808BBAC0 0C02C5BD */ jal	EffectSS_SpawnSparkle
/* 003469 0x808BBAC4 AFB2001C */ sw	$s2, 0X1C($sp)
/* 003470 0x808BBAC8 26730001 */ addiu	$s3, $s3, 0X1
/* 003471 0x808BBACC 1675FFA5 */ bne	$s3, $s5, .L808BB964
/* 003472 0x808BBAD0 00000000 */ nop
.L808BBAD4:
/* 003473 0x808BBAD4 8FBF007C */ lw	$ra, 0X7C($sp)
/* 003474 0x808BBAD8 D7B40028 */ ldc1	$f20, 0X28($sp)
/* 003475 0x808BBADC D7B60030 */ ldc1	$f22, 0X30($sp)
/* 003476 0x808BBAE0 D7B80038 */ ldc1	$f24, 0X38($sp)
/* 003477 0x808BBAE4 D7BA0040 */ ldc1	$f26, 0X40($sp)
/* 003478 0x808BBAE8 D7BC0048 */ ldc1	$f28, 0X48($sp)
/* 003479 0x808BBAEC D7BE0050 */ ldc1	$f30, 0X50($sp)
/* 003480 0x808BBAF0 8FB00058 */ lw	$s0, 0X58($sp)
/* 003481 0x808BBAF4 8FB1005C */ lw	$s1, 0X5C($sp)
/* 003482 0x808BBAF8 8FB20060 */ lw	$s2, 0X60($sp)
/* 003483 0x808BBAFC 8FB30064 */ lw	$s3, 0X64($sp)
/* 003484 0x808BBB00 8FB40068 */ lw	$s4, 0X68($sp)
/* 003485 0x808BBB04 8FB5006C */ lw	$s5, 0X6C($sp)
/* 003486 0x808BBB08 8FB60070 */ lw	$s6, 0X70($sp)
/* 003487 0x808BBB0C 8FB70074 */ lw	$s7, 0X74($sp)
/* 003488 0x808BBB10 8FBE0078 */ lw	$fp, 0X78($sp)
/* 003489 0x808BBB14 03E00008 */ jr	$ra
/* 003490 0x808BBB18 27BD00A8 */ addiu	$sp, $sp, 0XA8
/* 003491 0x808BBB1C 00000000 */ nop

.section .late_rodata

glabel D_808BBC4C
/* 003567 0x808BBC4C */ .word	0x3FE66666
