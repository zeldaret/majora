glabel func_80AE795C
/* 000367 0x80AE795C 27BDFFA0 */ addiu	$sp, $sp, -0X60
/* 000368 0x80AE7960 AFB00018 */ sw	$s0, 0X18($sp)
/* 000369 0x80AE7964 00808025 */ move	$s0, $a0
/* 000370 0x80AE7968 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000371 0x80AE796C C604015C */ lwc1	$f4, 0X15C($s0)
/* 000372 0x80AE7970 8CA61CCC */ lw	$a2, 0X1CCC($a1)
/* 000373 0x80AE7974 E7A40058 */ swc1	$f4, 0X58($sp)
/* 000374 0x80AE7978 860E0016 */ lh	$t6, 0X16($s0)
/* 000375 0x80AE797C 86030092 */ lh	$v1, 0X92($s0)
/* 000376 0x80AE7980 24C50024 */ addiu	$a1, $a2, 0X24
/* 000377 0x80AE7984 006E1023 */ subu	$v0, $v1, $t6
/* 000378 0x80AE7988 00021400 */ sll	$v0, $v0, 16
/* 000379 0x80AE798C 00021403 */ sra	$v0, $v0, 16
/* 000380 0x80AE7990 04430004 */ bgezl	$v0, .L80AE79A4
/* 000381 0x80AE7994 00402025 */ move	$a0, $v0
/* 000382 0x80AE7998 10000002 */ b	.L80AE79A4
/* 000383 0x80AE799C 00022023 */ negu	$a0, $v0
/* 000384 0x80AE79A0 00402025 */ move	$a0, $v0
.L80AE79A4:
/* 000385 0x80AE79A4 28812000 */ slti	$at, $a0, 0X2000
/* 000386 0x80AE79A8 10200002 */ beqz	$at, .L80AE79B4
/* 000387 0x80AE79AC 26040008 */ addiu	$a0, $s0, 0X8
/* 000388 0x80AE79B0 A6030280 */ sh	$v1, 0X280($s0)
.L80AE79B4:
/* 000389 0x80AE79B4 AFA4002C */ sw	$a0, 0X2C($sp)
/* 000390 0x80AE79B8 AFA50028 */ sw	$a1, 0X28($sp)
/* 000391 0x80AE79BC 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000392 0x80AE79C0 AFA6005C */ sw	$a2, 0X5C($sp)
/* 000393 0x80AE79C4 860F0092 */ lh	$t7, 0X92($s0)
/* 000394 0x80AE79C8 44825000 */ mtc1	$v0, $f10
/* 000395 0x80AE79CC 86180274 */ lh	$t8, 0X274($s0)
/* 000396 0x80AE79D0 448F3000 */ mtc1	$t7, $f6
/* 000397 0x80AE79D4 46805420 */ cvt.s.w	$f16, $f10
/* 000398 0x80AE79D8 24010004 */ li	$at, 0X4
/* 000399 0x80AE79DC 46803220 */ cvt.s.w	$f8, $f6
/* 000400 0x80AE79E0 46104001 */ sub.s	$f0, $f8, $f16
/* 000401 0x80AE79E4 13010019 */ beq	$t8, $at, .L80AE7A4C
/* 000402 0x80AE79E8 46000005 */ abs.s	$f0, $f0
/* 000403 0x80AE79EC 3C0140A0 */ lui	$at, 0x40A0
/* 000404 0x80AE79F0 44816000 */ mtc1	$at, $f12
/* 000405 0x80AE79F4 3C0180AF */ lui	$at, %hi(D_80AE8A40)
/* 000406 0x80AE79F8 C4328A40 */ lwc1	$f18, %lo(D_80AE8A40)($at)
/* 000407 0x80AE79FC 3C013F80 */ lui	$at, 0x3F80
/* 000408 0x80AE7A00 44813000 */ mtc1	$at, $f6
/* 000409 0x80AE7A04 46120102 */ mul.s	$f4, $f0, $f18
/* 000410 0x80AE7A08 3C013F80 */ lui	$at, 0x3F80
/* 000411 0x80AE7A0C 460C2082 */ mul.s	$f2, $f4, $f12
/* 000412 0x80AE7A10 4606103C */ c.lt.s	$f2, $f6
/* 000413 0x80AE7A14 00000000 */ nop
/* 000414 0x80AE7A18 45020005 */ bc1fl .L80AE7A30
/* 000415 0x80AE7A1C 4602603C */ c.lt.s	$f12, $f2
/* 000416 0x80AE7A20 44815000 */ mtc1	$at, $f10
/* 000417 0x80AE7A24 10000009 */ b	.L80AE7A4C
/* 000418 0x80AE7A28 E60A0160 */ swc1	$f10, 0X160($s0)
/* 000419 0x80AE7A2C 4602603C */ c.lt.s	$f12, $f2
.L80AE7A30:
/* 000420 0x80AE7A30 00000000 */ nop
/* 000421 0x80AE7A34 45020004 */ bc1fl .L80AE7A48
/* 000422 0x80AE7A38 46001006 */ mov.s	$f0, $f2
/* 000423 0x80AE7A3C 10000002 */ b	.L80AE7A48
/* 000424 0x80AE7A40 46006006 */ mov.s	$f0, $f12
/* 000425 0x80AE7A44 46001006 */ mov.s	$f0, $f2
.L80AE7A48:
/* 000426 0x80AE7A48 E6000160 */ swc1	$f0, 0X160($s0)
.L80AE7A4C:
/* 000427 0x80AE7A4C 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000428 0x80AE7A50 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000429 0x80AE7A54 8FA50028 */ lw	$a1, 0X28($sp)
/* 000430 0x80AE7A58 8FA6005C */ lw	$a2, 0X5C($sp)
/* 000431 0x80AE7A5C C6080008 */ lwc1	$f8, 0X8($s0)
/* 000432 0x80AE7A60 27A4004C */ addiu	$a0, $sp, 0X4C
/* 000433 0x80AE7A64 C4D00024 */ lwc1	$f16, 0X24($a2)
/* 000434 0x80AE7A68 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000435 0x80AE7A6C 46104001 */ sub.s	$f0, $f8, $f16
/* 000436 0x80AE7A70 46000005 */ abs.s	$f0, $f0
/* 000437 0x80AE7A74 E7A00048 */ swc1	$f0, 0X48($sp)
/* 000438 0x80AE7A78 C6120010 */ lwc1	$f18, 0X10($s0)
/* 000439 0x80AE7A7C C4C4002C */ lwc1	$f4, 0X2C($a2)
/* 000440 0x80AE7A80 A7A2003E */ sh	$v0, 0X3E($sp)
/* 000441 0x80AE7A84 46049001 */ sub.s	$f0, $f18, $f4
/* 000442 0x80AE7A88 46000305 */ abs.s	$f12, $f0
/* 000443 0x80AE7A8C 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000444 0x80AE7A90 E7AC0044 */ swc1	$f12, 0X44($sp)
/* 000445 0x80AE7A94 86020016 */ lh	$v0, 0X16($s0)
/* 000446 0x80AE7A98 24018000 */ li	$at, -0X8000
/* 000447 0x80AE7A9C 87A3003E */ lh	$v1, 0X3E($sp)
/* 000448 0x80AE7AA0 00022400 */ sll	$a0, $v0, 16
/* 000449 0x80AE7AA4 00042403 */ sra	$a0, $a0, 16
/* 000450 0x80AE7AA8 14810026 */ bne	$a0, $at, .L80AE7B44
/* 000451 0x80AE7AAC C7AC0044 */ lwc1	$f12, 0X44($sp)
/* 000452 0x80AE7AB0 18600014 */ blez	$v1, .L80AE7B04
/* 000453 0x80AE7AB4 24444000 */ addiu	$a0, $v0, 0X4000
/* 000454 0x80AE7AB8 3401C000 */ ori	$at, $zero, 0XC000
/* 000455 0x80AE7ABC 00412021 */ addu	$a0, $v0, $at
/* 000456 0x80AE7AC0 00042400 */ sll	$a0, $a0, 16
/* 000457 0x80AE7AC4 00042403 */ sra	$a0, $a0, 16
/* 000458 0x80AE7AC8 0C03FB61 */ jal	Math_Sins
/* 000459 0x80AE7ACC E7AC0044 */ swc1	$f12, 0X44($sp)
/* 000460 0x80AE7AD0 C7A60048 */ lwc1	$f6, 0X48($sp)
/* 000461 0x80AE7AD4 3401C000 */ ori	$at, $zero, 0XC000
/* 000462 0x80AE7AD8 46060282 */ mul.s	$f10, $f0, $f6
/* 000463 0x80AE7ADC E7AA0048 */ swc1	$f10, 0X48($sp)
/* 000464 0x80AE7AE0 86040016 */ lh	$a0, 0X16($s0)
/* 000465 0x80AE7AE4 00812021 */ addu	$a0, $a0, $at
/* 000466 0x80AE7AE8 00042400 */ sll	$a0, $a0, 16
/* 000467 0x80AE7AEC 0C03FB51 */ jal	Math_Coss
/* 000468 0x80AE7AF0 00042403 */ sra	$a0, $a0, 16
/* 000469 0x80AE7AF4 C7AC0044 */ lwc1	$f12, 0X44($sp)
/* 000470 0x80AE7AF8 460C0302 */ mul.s	$f12, $f0, $f12
/* 000471 0x80AE7AFC 10000037 */ b	.L80AE7BDC
/* 000472 0x80AE7B00 C7AE0048 */ lwc1	$f14, 0X48($sp)
.L80AE7B04:
/* 000473 0x80AE7B04 00042400 */ sll	$a0, $a0, 16
/* 000474 0x80AE7B08 00042403 */ sra	$a0, $a0, 16
/* 000475 0x80AE7B0C 0C03FB61 */ jal	Math_Sins
/* 000476 0x80AE7B10 E7AC0044 */ swc1	$f12, 0X44($sp)
/* 000477 0x80AE7B14 C7A80048 */ lwc1	$f8, 0X48($sp)
/* 000478 0x80AE7B18 46080402 */ mul.s	$f16, $f0, $f8
/* 000479 0x80AE7B1C E7B00048 */ swc1	$f16, 0X48($sp)
/* 000480 0x80AE7B20 86040016 */ lh	$a0, 0X16($s0)
/* 000481 0x80AE7B24 24844000 */ addiu	$a0, $a0, 0X4000
/* 000482 0x80AE7B28 00042400 */ sll	$a0, $a0, 16
/* 000483 0x80AE7B2C 0C03FB51 */ jal	Math_Coss
/* 000484 0x80AE7B30 00042403 */ sra	$a0, $a0, 16
/* 000485 0x80AE7B34 C7AC0044 */ lwc1	$f12, 0X44($sp)
/* 000486 0x80AE7B38 460C0302 */ mul.s	$f12, $f0, $f12
/* 000487 0x80AE7B3C 10000027 */ b	.L80AE7BDC
/* 000488 0x80AE7B40 C7AE0048 */ lwc1	$f14, 0X48($sp)
.L80AE7B44:
/* 000489 0x80AE7B44 0064082A */ slt	$at, $v1, $a0
/* 000490 0x80AE7B48 10200014 */ beqz	$at, .L80AE7B9C
/* 000491 0x80AE7B4C 24444000 */ addiu	$a0, $v0, 0X4000
/* 000492 0x80AE7B50 3401C000 */ ori	$at, $zero, 0XC000
/* 000493 0x80AE7B54 00412021 */ addu	$a0, $v0, $at
/* 000494 0x80AE7B58 00042400 */ sll	$a0, $a0, 16
/* 000495 0x80AE7B5C 00042403 */ sra	$a0, $a0, 16
/* 000496 0x80AE7B60 0C03FB61 */ jal	Math_Sins
/* 000497 0x80AE7B64 E7AC0044 */ swc1	$f12, 0X44($sp)
/* 000498 0x80AE7B68 C7B20048 */ lwc1	$f18, 0X48($sp)
/* 000499 0x80AE7B6C 3401C000 */ ori	$at, $zero, 0XC000
/* 000500 0x80AE7B70 46120102 */ mul.s	$f4, $f0, $f18
/* 000501 0x80AE7B74 E7A40048 */ swc1	$f4, 0X48($sp)
/* 000502 0x80AE7B78 86040016 */ lh	$a0, 0X16($s0)
/* 000503 0x80AE7B7C 00812021 */ addu	$a0, $a0, $at
/* 000504 0x80AE7B80 00042400 */ sll	$a0, $a0, 16
/* 000505 0x80AE7B84 0C03FB51 */ jal	Math_Coss
/* 000506 0x80AE7B88 00042403 */ sra	$a0, $a0, 16
/* 000507 0x80AE7B8C C7AC0044 */ lwc1	$f12, 0X44($sp)
/* 000508 0x80AE7B90 460C0302 */ mul.s	$f12, $f0, $f12
/* 000509 0x80AE7B94 10000011 */ b	.L80AE7BDC
/* 000510 0x80AE7B98 C7AE0048 */ lwc1	$f14, 0X48($sp)
.L80AE7B9C:
/* 000511 0x80AE7B9C 00042400 */ sll	$a0, $a0, 16
/* 000512 0x80AE7BA0 00042403 */ sra	$a0, $a0, 16
/* 000513 0x80AE7BA4 0C03FB61 */ jal	Math_Sins
/* 000514 0x80AE7BA8 E7AC0044 */ swc1	$f12, 0X44($sp)
/* 000515 0x80AE7BAC C7A60048 */ lwc1	$f6, 0X48($sp)
/* 000516 0x80AE7BB0 46060282 */ mul.s	$f10, $f0, $f6
/* 000517 0x80AE7BB4 E7AA0048 */ swc1	$f10, 0X48($sp)
/* 000518 0x80AE7BB8 86040016 */ lh	$a0, 0X16($s0)
/* 000519 0x80AE7BBC 24844000 */ addiu	$a0, $a0, 0X4000
/* 000520 0x80AE7BC0 00042400 */ sll	$a0, $a0, 16
/* 000521 0x80AE7BC4 0C03FB51 */ jal	Math_Coss
/* 000522 0x80AE7BC8 00042403 */ sra	$a0, $a0, 16
/* 000523 0x80AE7BCC C7AC0044 */ lwc1	$f12, 0X44($sp)
/* 000524 0x80AE7BD0 460C0302 */ mul.s	$f12, $f0, $f12
/* 000525 0x80AE7BD4 00000000 */ nop
/* 000526 0x80AE7BD8 C7AE0048 */ lwc1	$f14, 0X48($sp)
.L80AE7BDC:
/* 000527 0x80AE7BDC C6020288 */ lwc1	$f2, 0X288($s0)
/* 000528 0x80AE7BE0 460E103C */ c.lt.s	$f2, $f14
/* 000529 0x80AE7BE4 00000000 */ nop
/* 000530 0x80AE7BE8 45020004 */ bc1fl .L80AE7BFC
/* 000531 0x80AE7BEC 46001007 */ neg.s	$f0, $f2
/* 000532 0x80AE7BF0 10000007 */ b	.L80AE7C10
/* 000533 0x80AE7BF4 E7A20048 */ swc1	$f2, 0X48($sp)
/* 000534 0x80AE7BF8 46001007 */ neg.s	$f0, $f2
.L80AE7BFC:
/* 000535 0x80AE7BFC 4600703C */ c.lt.s	$f14, $f0
/* 000536 0x80AE7C00 00000000 */ nop
/* 000537 0x80AE7C04 45020003 */ bc1fl .L80AE7C14
/* 000538 0x80AE7C08 460C103C */ c.lt.s	$f2, $f12
/* 000539 0x80AE7C0C E7A00048 */ swc1	$f0, 0X48($sp)
.L80AE7C10:
/* 000540 0x80AE7C10 460C103C */ c.lt.s	$f2, $f12
.L80AE7C14:
/* 000541 0x80AE7C14 C7A8004C */ lwc1	$f8, 0X4C($sp)
/* 000542 0x80AE7C18 C7B00048 */ lwc1	$f16, 0X48($sp)
/* 000543 0x80AE7C1C 45000003 */ bc1f .L80AE7C2C
/* 000544 0x80AE7C20 46104480 */ add.s	$f18, $f8, $f16
/* 000545 0x80AE7C24 10000007 */ b	.L80AE7C44
/* 000546 0x80AE7C28 46001306 */ mov.s	$f12, $f2
.L80AE7C2C:
/* 000547 0x80AE7C2C 46001007 */ neg.s	$f0, $f2
/* 000548 0x80AE7C30 4600603C */ c.lt.s	$f12, $f0
/* 000549 0x80AE7C34 00000000 */ nop
/* 000550 0x80AE7C38 45020003 */ bc1fl .L80AE7C48
/* 000551 0x80AE7C3C C7A40054 */ lwc1	$f4, 0X54($sp)
/* 000552 0x80AE7C40 46000306 */ mov.s	$f12, $f0
.L80AE7C44:
/* 000553 0x80AE7C44 C7A40054 */ lwc1	$f4, 0X54($sp)
.L80AE7C48:
/* 000554 0x80AE7C48 E7B2004C */ swc1	$f18, 0X4C($sp)
/* 000555 0x80AE7C4C 44059000 */ mfc1	$a1, $f18
/* 000556 0x80AE7C50 460C2180 */ add.s	$f6, $f4, $f12
/* 000557 0x80AE7C54 26040024 */ addiu	$a0, $s0, 0X24
/* 000558 0x80AE7C58 3C063F00 */ lui	$a2, 0x3F00
/* 000559 0x80AE7C5C E7A60054 */ swc1	$f6, 0X54($sp)
/* 000560 0x80AE7C60 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000561 0x80AE7C64 8E07028C */ lw	$a3, 0X28C($s0)
/* 000562 0x80AE7C68 2604002C */ addiu	$a0, $s0, 0X2C
/* 000563 0x80AE7C6C 8FA50054 */ lw	$a1, 0X54($sp)
/* 000564 0x80AE7C70 3C063F00 */ lui	$a2, 0x3F00
/* 000565 0x80AE7C74 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000566 0x80AE7C78 8E07028C */ lw	$a3, 0X28C($s0)
/* 000567 0x80AE7C7C 3C063E99 */ lui	$a2, 0x3E99
/* 000568 0x80AE7C80 34C6999A */ ori	$a2, $a2, 0X999A
/* 000569 0x80AE7C84 2604028C */ addiu	$a0, $s0, 0X28C
/* 000570 0x80AE7C88 3C054248 */ lui	$a1, 0x4248
/* 000571 0x80AE7C8C 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000572 0x80AE7C90 3C073F80 */ lui	$a3, 0x3F80
/* 000573 0x80AE7C94 96190274 */ lhu	$t9, 0X274($s0)
/* 000574 0x80AE7C98 2F210005 */ sltiu	$at, $t9, 0X5
/* 000575 0x80AE7C9C 1020005A */ beqz	$at, .L80AE7E08
/* 000576 0x80AE7CA0 0019C880 */ sll	$t9, $t9, 2
/* 000577 0x80AE7CA4 3C0180AF */ lui	$at, %hi(jtbl_D_80AE8A44)
/* 000578 0x80AE7CA8 00390821 */ addu	$at, $at, $t9
/* 000579 0x80AE7CAC 8C398A44 */ lw	$t9, %lo(jtbl_D_80AE8A44)($at)
/* 000580 0x80AE7CB0 03200008 */ jr	$t9
/* 000581 0x80AE7CB4 00000000 */ nop
glabel L80AE7CB8
.L80AE7CB8:
/* 000582 0x80AE7CB8 3C08801F */ lui	$t0, %hi(gSaveContext + 0x18)
/* 000583 0x80AE7CBC 8D08F688 */ lw	$t0, %lo(gSaveContext + 0x18)($t0)
/* 000584 0x80AE7CC0 24010003 */ li	$at, 0X3
/* 000585 0x80AE7CC4 24050004 */ li	$a1, 0X4
/* 000586 0x80AE7CC8 11010006 */ beq	$t0, $at, .L80AE7CE4
/* 000587 0x80AE7CCC 02002025 */ move	$a0, $s0
/* 000588 0x80AE7CD0 0C2B9D43 */ jal	func_80AE750C
/* 000589 0x80AE7CD4 02002025 */ move	$a0, $s0
/* 000590 0x80AE7CD8 24090002 */ li	$t1, 0X2
/* 000591 0x80AE7CDC 1000004A */ b	.L80AE7E08
/* 000592 0x80AE7CE0 A6090274 */ sh	$t1, 0X274($s0)
.L80AE7CE4:
/* 000593 0x80AE7CE4 0C2B9D43 */ jal	func_80AE750C
/* 000594 0x80AE7CE8 24050002 */ li	$a1, 0X2
/* 000595 0x80AE7CEC 240A0001 */ li	$t2, 0X1
/* 000596 0x80AE7CF0 10000045 */ b	.L80AE7E08
/* 000597 0x80AE7CF4 A60A0274 */ sh	$t2, 0X274($s0)
glabel L80AE7CF8
.L80AE7CF8:
/* 000598 0x80AE7CF8 02002025 */ move	$a0, $s0
/* 000599 0x80AE7CFC 0C2B9D43 */ jal	func_80AE750C
/* 000600 0x80AE7D00 24050004 */ li	$a1, 0X4
/* 000601 0x80AE7D04 240B0002 */ li	$t3, 0X2
/* 000602 0x80AE7D08 1000003F */ b	.L80AE7E08
/* 000603 0x80AE7D0C A60B0274 */ sh	$t3, 0X274($s0)
glabel L80AE7D10
.L80AE7D10:
/* 000604 0x80AE7D10 C7AA0058 */ lwc1	$f10, 0X58($sp)
/* 000605 0x80AE7D14 C608026C */ lwc1	$f8, 0X26C($s0)
/* 000606 0x80AE7D18 02002025 */ move	$a0, $s0
/* 000607 0x80AE7D1C 460A403E */ c.le.s	$f8, $f10
/* 000608 0x80AE7D20 00000000 */ nop
/* 000609 0x80AE7D24 45020039 */ bc1fl .L80AE7E0C
/* 000610 0x80AE7D28 86180276 */ lh	$t8, 0X276($s0)
/* 000611 0x80AE7D2C 0C2B9D43 */ jal	func_80AE750C
/* 000612 0x80AE7D30 24050005 */ li	$a1, 0X5
/* 000613 0x80AE7D34 240C0003 */ li	$t4, 0X3
/* 000614 0x80AE7D38 10000033 */ b	.L80AE7E08
/* 000615 0x80AE7D3C A60C0274 */ sh	$t4, 0X274($s0)
glabel L80AE7D40
.L80AE7D40:
/* 000616 0x80AE7D40 C6100024 */ lwc1	$f16, 0X24($s0)
/* 000617 0x80AE7D44 C7A4004C */ lwc1	$f4, 0X4C($sp)
/* 000618 0x80AE7D48 3C014000 */ lui	$at, 0x4000
/* 000619 0x80AE7D4C 44811000 */ mtc1	$at, $f2
/* 000620 0x80AE7D50 46048001 */ sub.s	$f0, $f16, $f4
/* 000621 0x80AE7D54 C7B20054 */ lwc1	$f18, 0X54($sp)
/* 000622 0x80AE7D58 46000005 */ abs.s	$f0, $f0
/* 000623 0x80AE7D5C 4602003C */ c.lt.s	$f0, $f2
/* 000624 0x80AE7D60 00000000 */ nop
/* 000625 0x80AE7D64 45020029 */ bc1fl .L80AE7E0C
/* 000626 0x80AE7D68 86180276 */ lh	$t8, 0X276($s0)
/* 000627 0x80AE7D6C C606002C */ lwc1	$f6, 0X2C($s0)
/* 000628 0x80AE7D70 3C013F80 */ lui	$at, 0x3F80
/* 000629 0x80AE7D74 02002025 */ move	$a0, $s0
/* 000630 0x80AE7D78 46123001 */ sub.s	$f0, $f6, $f18
/* 000631 0x80AE7D7C 46000005 */ abs.s	$f0, $f0
/* 000632 0x80AE7D80 4602003C */ c.lt.s	$f0, $f2
/* 000633 0x80AE7D84 00000000 */ nop
/* 000634 0x80AE7D88 45020020 */ bc1fl .L80AE7E0C
/* 000635 0x80AE7D8C 86180276 */ lh	$t8, 0X276($s0)
/* 000636 0x80AE7D90 44815000 */ mtc1	$at, $f10
/* 000637 0x80AE7D94 24050006 */ li	$a1, 0X6
/* 000638 0x80AE7D98 0C2B9D43 */ jal	func_80AE750C
/* 000639 0x80AE7D9C E60A0160 */ swc1	$f10, 0X160($s0)
/* 000640 0x80AE7DA0 240D0004 */ li	$t5, 0X4
/* 000641 0x80AE7DA4 10000018 */ b	.L80AE7E08
/* 000642 0x80AE7DA8 A60D0274 */ sh	$t5, 0X274($s0)
glabel L80AE7DAC
.L80AE7DAC:
/* 000643 0x80AE7DAC C6080024 */ lwc1	$f8, 0X24($s0)
/* 000644 0x80AE7DB0 C7B0004C */ lwc1	$f16, 0X4C($sp)
/* 000645 0x80AE7DB4 3C014080 */ lui	$at, 0x4080
/* 000646 0x80AE7DB8 44811000 */ mtc1	$at, $f2
/* 000647 0x80AE7DBC 46104001 */ sub.s	$f0, $f8, $f16
/* 000648 0x80AE7DC0 C7A60054 */ lwc1	$f6, 0X54($sp)
/* 000649 0x80AE7DC4 02002025 */ move	$a0, $s0
/* 000650 0x80AE7DC8 46000005 */ abs.s	$f0, $f0
/* 000651 0x80AE7DCC 4600103C */ c.lt.s	$f2, $f0
/* 000652 0x80AE7DD0 00000000 */ nop
/* 000653 0x80AE7DD4 45010008 */ bc1t .L80AE7DF8
/* 000654 0x80AE7DD8 00000000 */ nop
/* 000655 0x80AE7DDC C604002C */ lwc1	$f4, 0X2C($s0)
/* 000656 0x80AE7DE0 46062001 */ sub.s	$f0, $f4, $f6
/* 000657 0x80AE7DE4 46000005 */ abs.s	$f0, $f0
/* 000658 0x80AE7DE8 4600103C */ c.lt.s	$f2, $f0
/* 000659 0x80AE7DEC 00000000 */ nop
/* 000660 0x80AE7DF0 45020006 */ bc1fl .L80AE7E0C
/* 000661 0x80AE7DF4 86180276 */ lh	$t8, 0X276($s0)
.L80AE7DF8:
/* 000662 0x80AE7DF8 0C2B9D43 */ jal	func_80AE750C
/* 000663 0x80AE7DFC 24050005 */ li	$a1, 0X5
/* 000664 0x80AE7E00 240E0003 */ li	$t6, 0X3
/* 000665 0x80AE7E04 A60E0274 */ sh	$t6, 0X274($s0)
.L80AE7E08:
/* 000666 0x80AE7E08 86180276 */ lh	$t8, 0X276($s0)
.L80AE7E0C:
/* 000667 0x80AE7E0C 240F0014 */ li	$t7, 0X14
/* 000668 0x80AE7E10 24010003 */ li	$at, 0X3
/* 000669 0x80AE7E14 A2000264 */ sb	$zero, 0X264($s0)
/* 000670 0x80AE7E18 A60F0270 */ sh	$t7, 0X270($s0)
/* 000671 0x80AE7E1C 1701001A */ bne	$t8, $at, .L80AE7E88
/* 000672 0x80AE7E20 A600025E */ sh	$zero, 0X25E($s0)
/* 000673 0x80AE7E24 27A4004C */ addiu	$a0, $sp, 0X4C
/* 000674 0x80AE7E28 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000675 0x80AE7E2C 8FA50028 */ lw	$a1, 0X28($sp)
/* 000676 0x80AE7E30 8FB9005C */ lw	$t9, 0X5C($sp)
/* 000677 0x80AE7E34 24010003 */ li	$at, 0X3
/* 000678 0x80AE7E38 3C08801F */ lui	$t0, %hi(gStaticContext)
/* 000679 0x80AE7E3C 9322014B */ lbu	$v0, 0X14B($t9)
/* 000680 0x80AE7E40 10410003 */ beq	$v0, $at, .L80AE7E50
/* 000681 0x80AE7E44 24010004 */ li	$at, 0X4
/* 000682 0x80AE7E48 54410010 */ bnel	$v0, $at, .L80AE7E8C
/* 000683 0x80AE7E4C 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AE7E50:
/* 000684 0x80AE7E50 8D083F60 */ lw	$t0, %lo(gStaticContext)($t0)
/* 000685 0x80AE7E54 3C01429A */ lui	$at, 0x429A
/* 000686 0x80AE7E58 44819000 */ mtc1	$at, $f18
/* 000687 0x80AE7E5C 8509131E */ lh	$t1, 0X131E($t0)
/* 000688 0x80AE7E60 C7A40050 */ lwc1	$f4, 0X50($sp)
/* 000689 0x80AE7E64 2604003C */ addiu	$a0, $s0, 0X3C
/* 000690 0x80AE7E68 44895000 */ mtc1	$t1, $f10
/* 000691 0x80AE7E6C 27A5004C */ addiu	$a1, $sp, 0X4C
/* 000692 0x80AE7E70 46805220 */ cvt.s.w	$f8, $f10
/* 000693 0x80AE7E74 46089400 */ add.s	$f16, $f18, $f8
/* 000694 0x80AE7E78 46102180 */ add.s	$f6, $f4, $f16
/* 000695 0x80AE7E7C 0C03FEA5 */ jal	Math_Vec3f_Pitch
/* 000696 0x80AE7E80 E7A60050 */ swc1	$f6, 0X50($sp)
/* 000697 0x80AE7E84 A602025E */ sh	$v0, 0X25E($s0)
.L80AE7E88:
/* 000698 0x80AE7E88 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AE7E8C:
/* 000699 0x80AE7E8C 8FB00018 */ lw	$s0, 0X18($sp)
/* 000700 0x80AE7E90 27BD0060 */ addiu	$sp, $sp, 0X60
/* 000701 0x80AE7E94 03E00008 */ jr	$ra
/* 000702 0x80AE7E98 00000000 */ nop


.section .late_rodata

glabel D_80AE8A40
/* 001448 0x80AE8A40 */ .word	0x3C23D70A
glabel jtbl_D_80AE8A44
/* 001449 0x80AE8A44 */ .word	L80AE7CB8
/* 001450 0x80AE8A48 */ .word	L80AE7CF8
/* 001451 0x80AE8A4C */ .word	L80AE7D10
/* 001452 0x80AE8A50 */ .word	L80AE7D40
/* 001453 0x80AE8A54 */ .word	L80AE7DAC
/* 001454 0x80AE8A58 */ .word	0x00000000
/* 001455 0x80AE8A5C */ .word	0x00000000
