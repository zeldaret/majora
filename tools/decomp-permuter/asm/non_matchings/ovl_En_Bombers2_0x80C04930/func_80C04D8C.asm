glabel func_80C04D8C
/* 000279 0x80C04D8C 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000280 0x80C04D90 AFB10018 */ sw	$s1, 0X18($sp)
/* 000281 0x80C04D94 AFB00014 */ sw	$s0, 0X14($sp)
/* 000282 0x80C04D98 00808025 */ move	$s0, $a0
/* 000283 0x80C04D9C 00A08825 */ move	$s1, $a1
/* 000284 0x80C04DA0 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000285 0x80C04DA4 8E2E1CCC */ lw	$t6, 0X1CCC($s1)
/* 000286 0x80C04DA8 AFAE0024 */ sw	$t6, 0X24($sp)
/* 000287 0x80C04DAC 920F02AC */ lbu	$t7, 0X2AC($s0)
/* 000288 0x80C04DB0 C600015C */ lwc1	$f0, 0X15C($s0)
/* 000289 0x80C04DB4 55E00019 */ bnezl	$t7, .L80C04E1C
/* 000290 0x80C04DB8 8FAC0024 */ lw	$t4, 0X24($sp)
/* 000291 0x80C04DBC C60402B8 */ lwc1	$f4, 0X2B8($s0)
/* 000292 0x80C04DC0 4600203E */ c.le.s	$f4, $f0
/* 000293 0x80C04DC4 00000000 */ nop
/* 000294 0x80C04DC8 45020014 */ bc1fl .L80C04E1C
/* 000295 0x80C04DCC 8FAC0024 */ lw	$t4, 0X24($sp)
/* 000296 0x80C04DD0 8E1802A8 */ lw	$t8, 0X2A8($s0)
/* 000297 0x80C04DD4 3C063F80 */ lui	$a2, 0x3F80
/* 000298 0x80C04DD8 02002025 */ move	$a0, $s0
/* 000299 0x80C04DDC 33190001 */ andi	$t9, $t8, 0X1
/* 000300 0x80C04DE0 17200006 */ bnez	$t9, .L80C04DFC
/* 000301 0x80C04DE4 24050005 */ li	$a1, 0X5
/* 000302 0x80C04DE8 02002025 */ move	$a0, $s0
/* 000303 0x80C04DEC 0C3012AB */ jal	func_80C04AAC
/* 000304 0x80C04DF0 24050001 */ li	$a1, 0X1
/* 000305 0x80C04DF4 10000004 */ b	.L80C04E08
/* 000306 0x80C04DF8 8E0802A8 */ lw	$t0, 0X2A8($s0)
.L80C04DFC:
/* 000307 0x80C04DFC 0C3012AB */ jal	func_80C04AAC
/* 000308 0x80C04E00 3C063F80 */ lui	$a2, 0x3F80
/* 000309 0x80C04E04 8E0802A8 */ lw	$t0, 0X2A8($s0)
.L80C04E08:
/* 000310 0x80C04E08 25090001 */ addiu	$t1, $t0, 0X1
/* 000311 0x80C04E0C AE0902A8 */ sw	$t1, 0X2A8($s0)
/* 000312 0x80C04E10 312B0001 */ andi	$t3, $t1, 0X1
/* 000313 0x80C04E14 AE0B02A8 */ sw	$t3, 0X2A8($s0)
/* 000314 0x80C04E18 8FAC0024 */ lw	$t4, 0X24($sp)
.L80C04E1C:
/* 000315 0x80C04E1C 24070001 */ li	$a3, 0X1
/* 000316 0x80C04E20 9182014B */ lbu	$v0, 0X14B($t4)
/* 000317 0x80C04E24 10470007 */ beq	$v0, $a3, .L80C04E44
/* 000318 0x80C04E28 24010002 */ li	$at, 0X2
/* 000319 0x80C04E2C 10410005 */ beq	$v0, $at, .L80C04E44
/* 000320 0x80C04E30 24010004 */ li	$at, 0X4
/* 000321 0x80C04E34 14410005 */ bne	$v0, $at, .L80C04E4C
/* 000322 0x80C04E38 240DF060 */ li	$t5, -0XFA0
/* 000323 0x80C04E3C 10000003 */ b	.L80C04E4C
/* 000324 0x80C04E40 A60D028E */ sh	$t5, 0X28E($s0)
.L80C04E44:
/* 000325 0x80C04E44 240EE890 */ li	$t6, -0X1770
/* 000326 0x80C04E48 A60E028E */ sh	$t6, 0X28E($s0)
.L80C04E4C:
/* 000327 0x80C04E4C 0C054926 */ jal	func_80152498
/* 000328 0x80C04E50 26244908 */ addiu	$a0, $s1, 0X4908
/* 000329 0x80C04E54 860F02CE */ lh	$t7, 0X2CE($s0)
/* 000330 0x80C04E58 55E20093 */ bnel	$t7, $v0, .L80C050A8
/* 000331 0x80C04E5C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000332 0x80C04E60 0C051D89 */ jal	func_80147624
/* 000333 0x80C04E64 02202025 */ move	$a0, $s1
/* 000334 0x80C04E68 1040008E */ beqz	$v0, .L80C050A4
/* 000335 0x80C04E6C 24070001 */ li	$a3, 0X1
/* 000336 0x80C04E70 861802CE */ lh	$t8, 0X2CE($s0)
/* 000337 0x80C04E74 2401000F */ li	$at, 0XF
/* 000338 0x80C04E78 00002025 */ move	$a0, $zero
/* 000339 0x80C04E7C 17010032 */ bne	$t8, $at, .L80C04F48
/* 000340 0x80C04E80 00001825 */ move	$v1, $zero
/* 000341 0x80C04E84 3C06801F */ lui	$a2, %hi(gSaveContext)
/* 000342 0x80C04E88 24C6F670 */ addiu	$a2, $a2, %lo(gSaveContext)
/* 000343 0x80C04E8C 02001025 */ move	$v0, $s0
/* 000344 0x80C04E90 3C050001 */ lui	$a1, 0x0001
.L80C04E94:
/* 000345 0x80C04E94 845902C4 */ lh	$t9, 0X2C4($v0)
/* 000346 0x80C04E98 02234021 */ addu	$t0, $s1, $v1
/* 000347 0x80C04E9C 01054821 */ addu	$t1, $t0, $a1
/* 000348 0x80C04EA0 17200006 */ bnez	$t9, .L80C04EBC
/* 000349 0x80C04EA4 00C45821 */ addu	$t3, $a2, $a0
/* 000350 0x80C04EA8 852A695C */ lh	$t2, 0X695C($t1)
/* 000351 0x80C04EAC 816C0FFB */ lb	$t4, 0XFFB($t3)
/* 000352 0x80C04EB0 554C0003 */ bnel	$t2, $t4, .L80C04EC0
/* 000353 0x80C04EB4 24840001 */ addiu	$a0, $a0, 0X1
/* 000354 0x80C04EB8 A44702C4 */ sh	$a3, 0X2C4($v0)
.L80C04EBC:
/* 000355 0x80C04EBC 24840001 */ addiu	$a0, $a0, 0X1
.L80C04EC0:
/* 000356 0x80C04EC0 28810005 */ slti	$at, $a0, 0X5
/* 000357 0x80C04EC4 24630002 */ addiu	$v1, $v1, 0X2
/* 000358 0x80C04EC8 1420FFF2 */ bnez	$at, .L80C04E94
/* 000359 0x80C04ECC 24420002 */ addiu	$v0, $v0, 0X2
/* 000360 0x80C04ED0 00002825 */ move	$a1, $zero
/* 000361 0x80C04ED4 00001825 */ move	$v1, $zero
/* 000362 0x80C04ED8 02001025 */ move	$v0, $s0
/* 000363 0x80C04EDC 2404000A */ li	$a0, 0XA
.L80C04EE0:
/* 000364 0x80C04EE0 844D02C4 */ lh	$t5, 0X2C4($v0)
/* 000365 0x80C04EE4 24630002 */ addiu	$v1, $v1, 0X2
/* 000366 0x80C04EE8 11A00002 */ beqz	$t5, .L80C04EF4
/* 000367 0x80C04EEC 00000000 */ nop
/* 000368 0x80C04EF0 24A50001 */ addiu	$a1, $a1, 0X1
.L80C04EF4:
/* 000369 0x80C04EF4 1464FFFA */ bne	$v1, $a0, .L80C04EE0
/* 000370 0x80C04EF8 24420002 */ addiu	$v0, $v0, 0X2
/* 000371 0x80C04EFC 28A10005 */ slti	$at, $a1, 0X5
/* 000372 0x80C04F00 14200011 */ bnez	$at, .L80C04F48
/* 000373 0x80C04F04 240E0006 */ li	$t6, 0X6
/* 000374 0x80C04F08 A60E02C2 */ sh	$t6, 0X2C2($s0)
/* 000375 0x80C04F0C 860F02C2 */ lh	$t7, 0X2C2($s0)
/* 000376 0x80C04F10 3C1980C0 */ lui	$t9, %hi(D_80C058A0)
/* 000377 0x80C04F14 02202025 */ move	$a0, $s1
/* 000378 0x80C04F18 000FC040 */ sll	$t8, $t7, 1
/* 000379 0x80C04F1C 0338C821 */ addu	$t9, $t9, $t8
/* 000380 0x80C04F20 973958A0 */ lhu	$t9, %lo(D_80C058A0)($t9)
/* 000381 0x80C04F24 A6190116 */ sh	$t9, 0X116($s0)
/* 000382 0x80C04F28 0C05464E */ jal	func_80151938
/* 000383 0x80C04F2C 3325FFFF */ andi	$a1, $t9, 0XFFFF
/* 000384 0x80C04F30 02002025 */ move	$a0, $s0
/* 000385 0x80C04F34 0C02E3B2 */ jal	func_800B8EC8
/* 000386 0x80C04F38 24054823 */ li	$a1, 0X4823
/* 000387 0x80C04F3C 24080005 */ li	$t0, 0X5
/* 000388 0x80C04F40 10000058 */ b	.L80C050A4
/* 000389 0x80C04F44 A60802CE */ sh	$t0, 0X2CE($s0)
.L80C04F48:
/* 000390 0x80C04F48 02202025 */ move	$a0, $s1
/* 000391 0x80C04F4C 0C03C494 */ jal	func_800F1250
/* 000392 0x80C04F50 24050015 */ li	$a1, 0X15
/* 000393 0x80C04F54 50400009 */ beqzl	$v0, .L80C04F7C
/* 000394 0x80C04F58 960902C2 */ lhu	$t1, 0X2C2($s0)
/* 000395 0x80C04F5C A600028E */ sh	$zero, 0X28E($s0)
/* 000396 0x80C04F60 0C051DED */ jal	func_801477B4
/* 000397 0x80C04F64 02202025 */ move	$a0, $s1
/* 000398 0x80C04F68 0C3012D0 */ jal	func_80C04B40
/* 000399 0x80C04F6C 02002025 */ move	$a0, $s0
/* 000400 0x80C04F70 1000004D */ b	.L80C050A8
/* 000401 0x80C04F74 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000402 0x80C04F78 960902C2 */ lhu	$t1, 0X2C2($s0)
.L80C04F7C:
/* 000403 0x80C04F7C 2D210008 */ sltiu	$at, $t1, 0X8
/* 000404 0x80C04F80 10200048 */ beqz	$at, .L80C050A4
/* 000405 0x80C04F84 00094880 */ sll	$t1, $t1, 2
/* 000406 0x80C04F88 3C0180C0 */ lui	$at, %hi(jtbl_D_80C05930)
/* 000407 0x80C04F8C 00290821 */ addu	$at, $at, $t1
/* 000408 0x80C04F90 8C295930 */ lw	$t1, %lo(jtbl_D_80C05930)($at)
/* 000409 0x80C04F94 01200008 */ jr	$t1
/* 000410 0x80C04F98 00000000 */ nop
glabel L80C04F9C
.L80C04F9C:
/* 000411 0x80C04F9C A600028E */ sh	$zero, 0X28E($s0)
/* 000412 0x80C04FA0 0C051DED */ jal	func_801477B4
/* 000413 0x80C04FA4 02202025 */ move	$a0, $s1
/* 000414 0x80C04FA8 0C3012D0 */ jal	func_80C04B40
/* 000415 0x80C04FAC 02002025 */ move	$a0, $s0
/* 000416 0x80C04FB0 1000003D */ b	.L80C050A8
/* 000417 0x80C04FB4 8FBF001C */ lw	$ra, 0X1C($sp)
glabel L80C04FB8
.L80C04FB8:
/* 000418 0x80C04FB8 240B0003 */ li	$t3, 0X3
/* 000419 0x80C04FBC A60B02C2 */ sh	$t3, 0X2C2($s0)
/* 000420 0x80C04FC0 860A02C2 */ lh	$t2, 0X2C2($s0)
/* 000421 0x80C04FC4 3C0D80C0 */ lui	$t5, %hi(D_80C058A0)
/* 000422 0x80C04FC8 02202025 */ move	$a0, $s1
/* 000423 0x80C04FCC 000A6040 */ sll	$t4, $t2, 1
/* 000424 0x80C04FD0 01AC6821 */ addu	$t5, $t5, $t4
/* 000425 0x80C04FD4 95AD58A0 */ lhu	$t5, %lo(D_80C058A0)($t5)
/* 000426 0x80C04FD8 A60D0116 */ sh	$t5, 0X116($s0)
/* 000427 0x80C04FDC 0C05464E */ jal	func_80151938
/* 000428 0x80C04FE0 31A5FFFF */ andi	$a1, $t5, 0XFFFF
/* 000429 0x80C04FE4 240E000F */ li	$t6, 0XF
/* 000430 0x80C04FE8 1000002E */ b	.L80C050A4
/* 000431 0x80C04FEC A60E02CE */ sh	$t6, 0X2CE($s0)
glabel L80C04FF0
.L80C04FF0:
/* 000432 0x80C04FF0 24030001 */ li	$v1, 0X1
/* 000433 0x80C04FF4 00037840 */ sll	$t7, $v1, 1
/* 000434 0x80C04FF8 A60002C4 */ sh	$zero, 0X2C4($s0)
/* 000435 0x80C04FFC 020F1021 */ addu	$v0, $s0, $t7
/* 000436 0x80C05000 A44002C6 */ sh	$zero, 0X2C6($v0)
/* 000437 0x80C05004 A44002C8 */ sh	$zero, 0X2C8($v0)
/* 000438 0x80C05008 A44002CA */ sh	$zero, 0X2CA($v0)
/* 000439 0x80C0500C A44002C4 */ sh	$zero, 0X2C4($v0)
/* 000440 0x80C05010 24180004 */ li	$t8, 0X4
/* 000441 0x80C05014 A61802C2 */ sh	$t8, 0X2C2($s0)
/* 000442 0x80C05018 02002025 */ move	$a0, $s0
/* 000443 0x80C0501C 0C02E3B2 */ jal	func_800B8EC8
/* 000444 0x80C05020 24054806 */ li	$a1, 0X4806
/* 000445 0x80C05024 861902C2 */ lh	$t9, 0X2C2($s0)
/* 000446 0x80C05028 3C0980C0 */ lui	$t1, %hi(D_80C058A0)
/* 000447 0x80C0502C 02202025 */ move	$a0, $s1
/* 000448 0x80C05030 00194040 */ sll	$t0, $t9, 1
/* 000449 0x80C05034 01284821 */ addu	$t1, $t1, $t0
/* 000450 0x80C05038 952958A0 */ lhu	$t1, %lo(D_80C058A0)($t1)
/* 000451 0x80C0503C A6090116 */ sh	$t1, 0X116($s0)
/* 000452 0x80C05040 0C05464E */ jal	func_80151938
/* 000453 0x80C05044 3125FFFF */ andi	$a1, $t1, 0XFFFF
/* 000454 0x80C05048 240B0005 */ li	$t3, 0X5
/* 000455 0x80C0504C 10000015 */ b	.L80C050A4
/* 000456 0x80C05050 A60B02CE */ sh	$t3, 0X2CE($s0)
glabel L80C05054
.L80C05054:
/* 000457 0x80C05054 240A0005 */ li	$t2, 0X5
/* 000458 0x80C05058 A60A02C2 */ sh	$t2, 0X2C2($s0)
/* 000459 0x80C0505C 860C02C2 */ lh	$t4, 0X2C2($s0)
/* 000460 0x80C05060 3C0E80C0 */ lui	$t6, %hi(D_80C058A0)
/* 000461 0x80C05064 02202025 */ move	$a0, $s1
/* 000462 0x80C05068 000C6840 */ sll	$t5, $t4, 1
/* 000463 0x80C0506C 01CD7021 */ addu	$t6, $t6, $t5
/* 000464 0x80C05070 95CE58A0 */ lhu	$t6, %lo(D_80C058A0)($t6)
/* 000465 0x80C05074 A60E0116 */ sh	$t6, 0X116($s0)
/* 000466 0x80C05078 0C05464E */ jal	func_80151938
/* 000467 0x80C0507C 31C5FFFF */ andi	$a1, $t6, 0XFFFF
/* 000468 0x80C05080 240F0005 */ li	$t7, 0X5
/* 000469 0x80C05084 10000007 */ b	.L80C050A4
/* 000470 0x80C05088 A60F02CE */ sh	$t7, 0X2CE($s0)
glabel L80C0508C
.L80C0508C:
/* 000471 0x80C0508C 3C010001 */ lui	$at, 0x0001
/* 000472 0x80C05090 00310821 */ addu	$at, $at, $s1
/* 000473 0x80C05094 AC206818 */ sw	$zero, 0X6818($at)
/* 000474 0x80C05098 02002025 */ move	$a0, $s0
/* 000475 0x80C0509C 0C30142E */ jal	func_80C050B8
/* 000476 0x80C050A0 02202825 */ move	$a1, $s1
.L80C050A4:
/* 000477 0x80C050A4 8FBF001C */ lw	$ra, 0X1C($sp)
.L80C050A8:
/* 000478 0x80C050A8 8FB00014 */ lw	$s0, 0X14($sp)
/* 000479 0x80C050AC 8FB10018 */ lw	$s1, 0X18($sp)
/* 000480 0x80C050B0 03E00008 */ jr	$ra
/* 000481 0x80C050B4 27BD0028 */ addiu	$sp, $sp, 0X28


.section .late_rodata

glabel jtbl_D_80C05930
/* 001024 0x80C05930 */ .word	L80C04F9C
/* 001025 0x80C05934 */ .word	L80C04F9C
/* 001026 0x80C05938 */ .word	L80C04FB8
/* 001027 0x80C0593C */ .word	L80C04FF0
/* 001028 0x80C05940 */ .word	L80C05054
/* 001029 0x80C05944 */ .word	L80C04F9C
/* 001030 0x80C05948 */ .word	L80C0508C
/* 001031 0x80C0594C */ .word	L80C04F9C
