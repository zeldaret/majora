glabel func_8099B0CC
/* 000359 0x8099B0CC 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 000360 0x8099B0D0 AFB00020 */ sw	$s0, 0X20($sp)
/* 000361 0x8099B0D4 00808025 */ move	$s0, $a0
/* 000362 0x8099B0D8 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000363 0x8099B0DC AFA50054 */ sw	$a1, 0X54($sp)
/* 000364 0x8099B0E0 8FAE0054 */ lw	$t6, 0X54($sp)
/* 000365 0x8099B0E4 26040144 */ addiu	$a0, $s0, 0X144
/* 000366 0x8099B0E8 8DCF1CCC */ lw	$t7, 0X1CCC($t6)
/* 000367 0x8099B0EC 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000368 0x8099B0F0 AFAF004C */ sw	$t7, 0X4C($sp)
/* 000369 0x8099B0F4 8603018E */ lh	$v1, 0X18E($s0)
/* 000370 0x8099B0F8 02002025 */ move	$a0, $s0
/* 000371 0x8099B0FC 24062800 */ li	$a2, 0X2800
/* 000372 0x8099B100 10600002 */ beqz	$v1, .L8099B10C
/* 000373 0x8099B104 2478FFFF */ addiu	$t8, $v1, -0X1
/* 000374 0x8099B108 A618018E */ sh	$t8, 0X18E($s0)
.L8099B10C:
/* 000375 0x8099B10C 0C02DD0B */ jal	Actor_IsActorFacingActor
/* 000376 0x8099B110 8E050124 */ lw	$a1, 0X124($s0)
/* 000377 0x8099B114 1040002F */ beqz	$v0, .L8099B1D4
/* 000378 0x8099B118 AFA20048 */ sw	$v0, 0X48($sp)
/* 000379 0x8099B11C 8E020124 */ lw	$v0, 0X124($s0)
/* 000380 0x8099B120 8FB9004C */ lw	$t9, 0X4C($sp)
/* 000381 0x8099B124 3C014220 */ lui	$at, 0x4220
/* 000382 0x8099B128 57220008 */ bnel	$t9, $v0, .L8099B14C
/* 000383 0x8099B12C C44A0028 */ lwc1	$f10, 0X28($v0)
/* 000384 0x8099B130 3C0141A0 */ lui	$at, 0x41A0
/* 000385 0x8099B134 44813000 */ mtc1	$at, $f6
/* 000386 0x8099B138 C4440028 */ lwc1	$f4, 0X28($v0)
/* 000387 0x8099B13C 46062200 */ add.s	$f8, $f4, $f6
/* 000388 0x8099B140 10000006 */ b	.L8099B15C
/* 000389 0x8099B144 E7A80040 */ swc1	$f8, 0X40($sp)
/* 000390 0x8099B148 C44A0028 */ lwc1	$f10, 0X28($v0)
.L8099B14C:
/* 000391 0x8099B14C 44818000 */ mtc1	$at, $f16
/* 000392 0x8099B150 00000000 */ nop
/* 000393 0x8099B154 46105480 */ add.s	$f18, $f10, $f16
/* 000394 0x8099B158 E7B20040 */ swc1	$f18, 0X40($sp)
.L8099B15C:
/* 000395 0x8099B15C 8E080124 */ lw	$t0, 0X124($s0)
/* 000396 0x8099B160 02002025 */ move	$a0, $s0
/* 000397 0x8099B164 27A5003C */ addiu	$a1, $sp, 0X3C
/* 000398 0x8099B168 C5040024 */ lwc1	$f4, 0X24($t0)
/* 000399 0x8099B16C E7A4003C */ swc1	$f4, 0X3C($sp)
/* 000400 0x8099B170 8E090124 */ lw	$t1, 0X124($s0)
/* 000401 0x8099B174 C526002C */ lwc1	$f6, 0X2C($t1)
/* 000402 0x8099B178 0C02DB6A */ jal	Actor_PitchToPoint
/* 000403 0x8099B17C E7A60044 */ swc1	$f6, 0X44($sp)
/* 000404 0x8099B180 2841D000 */ slti	$at, $v0, -0X3000
/* 000405 0x8099B184 10200003 */ beqz	$at, .L8099B194
/* 000406 0x8099B188 260400BC */ addiu	$a0, $s0, 0XBC
/* 000407 0x8099B18C 1000000A */ b	.L8099B1B8
/* 000408 0x8099B190 2405D000 */ li	$a1, -0X3000
.L8099B194:
/* 000409 0x8099B194 00021C00 */ sll	$v1, $v0, 16
/* 000410 0x8099B198 00031C03 */ sra	$v1, $v1, 16
/* 000411 0x8099B19C 28613001 */ slti	$at, $v1, 0X3001
/* 000412 0x8099B1A0 14200003 */ bnez	$at, .L8099B1B0
/* 000413 0x8099B1A4 00601025 */ move	$v0, $v1
/* 000414 0x8099B1A8 10000001 */ b	.L8099B1B0
/* 000415 0x8099B1AC 24023000 */ li	$v0, 0X3000
.L8099B1B0:
/* 000416 0x8099B1B0 00022C00 */ sll	$a1, $v0, 16
/* 000417 0x8099B1B4 00052C03 */ sra	$a1, $a1, 16
.L8099B1B8:
/* 000418 0x8099B1B8 240A0040 */ li	$t2, 0X40
/* 000419 0x8099B1BC AFAA0010 */ sw	$t2, 0X10($sp)
/* 000420 0x8099B1C0 24060002 */ li	$a2, 0X2
/* 000421 0x8099B1C4 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000422 0x8099B1C8 24070400 */ li	$a3, 0X400
/* 000423 0x8099B1CC 10000009 */ b	.L8099B1F4
/* 000424 0x8099B1D0 8FAC0048 */ lw	$t4, 0X48($sp)
.L8099B1D4:
/* 000425 0x8099B1D4 240B0010 */ li	$t3, 0X10
/* 000426 0x8099B1D8 AFAB0010 */ sw	$t3, 0X10($sp)
/* 000427 0x8099B1DC 260400BC */ addiu	$a0, $s0, 0XBC
/* 000428 0x8099B1E0 2405F800 */ li	$a1, -0X800
/* 000429 0x8099B1E4 24060002 */ li	$a2, 0X2
/* 000430 0x8099B1E8 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000431 0x8099B1EC 24070100 */ li	$a3, 0X100
/* 000432 0x8099B1F0 8FAC0048 */ lw	$t4, 0X48($sp)
.L8099B1F4:
/* 000433 0x8099B1F4 02002025 */ move	$a0, $s0
/* 000434 0x8099B1F8 5580000A */ bnezl	$t4, .L8099B224
/* 000435 0x8099B1FC 02002025 */ move	$a0, $s0
/* 000436 0x8099B200 0C02DB87 */ jal	Actor_XZDistanceBetweenActors
/* 000437 0x8099B204 8E050124 */ lw	$a1, 0X124($s0)
/* 000438 0x8099B208 3C0142A0 */ lui	$at, 0x42A0
/* 000439 0x8099B20C 44814000 */ mtc1	$at, $f8
/* 000440 0x8099B210 00000000 */ nop
/* 000441 0x8099B214 4600403C */ c.lt.s	$f8, $f0
/* 000442 0x8099B218 00000000 */ nop
/* 000443 0x8099B21C 4500000B */ bc1f .L8099B24C
/* 000444 0x8099B220 02002025 */ move	$a0, $s0
.L8099B224:
/* 000445 0x8099B224 0C02DB35 */ jal	Actor_YawBetweenActors
/* 000446 0x8099B228 8E050124 */ lw	$a1, 0X124($s0)
/* 000447 0x8099B22C 00022C00 */ sll	$a1, $v0, 16
/* 000448 0x8099B230 240D00C0 */ li	$t5, 0XC0
/* 000449 0x8099B234 AFAD0010 */ sw	$t5, 0X10($sp)
/* 000450 0x8099B238 00052C03 */ sra	$a1, $a1, 16
/* 000451 0x8099B23C 260400BE */ addiu	$a0, $s0, 0XBE
/* 000452 0x8099B240 24060004 */ li	$a2, 0X4
/* 000453 0x8099B244 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000454 0x8099B248 24070C00 */ li	$a3, 0XC00
.L8099B24C:
/* 000455 0x8099B24C 860E018E */ lh	$t6, 0X18E($s0)
/* 000456 0x8099B250 8FA3004C */ lw	$v1, 0X4C($sp)
/* 000457 0x8099B254 51C00022 */ beqzl	$t6, .L8099B2E0
/* 000458 0x8099B258 92020210 */ lbu	$v0, 0X210($s0)
/* 000459 0x8099B25C 8E020124 */ lw	$v0, 0X124($s0)
/* 000460 0x8099B260 10620004 */ beq	$v1, $v0, .L8099B274
/* 000461 0x8099B264 00000000 */ nop
/* 000462 0x8099B268 844F0018 */ lh	$t7, 0X18($v0)
/* 000463 0x8099B26C 55E0001C */ bnezl	$t7, .L8099B2E0
/* 000464 0x8099B270 92020210 */ lbu	$v0, 0X210($s0)
.L8099B274:
/* 000465 0x8099B274 5462000B */ bnel	$v1, $v0, .L8099B2A4
/* 000466 0x8099B278 92090210 */ lbu	$t1, 0X210($s0)
/* 000467 0x8099B27C 0C04900F */ jal	func_8012403C
/* 000468 0x8099B280 8FA40054 */ lw	$a0, 0X54($sp)
/* 000469 0x8099B284 24010010 */ li	$at, 0X10
/* 000470 0x8099B288 10410014 */ beq	$v0, $at, .L8099B2DC
/* 000471 0x8099B28C 8FB8004C */ lw	$t8, 0X4C($sp)
/* 000472 0x8099B290 8F190A6C */ lw	$t9, 0XA6C($t8)
/* 000473 0x8099B294 00194200 */ sll	$t0, $t9, 8
/* 000474 0x8099B298 05020011 */ bltzl	$t0, .L8099B2E0
/* 000475 0x8099B29C 92020210 */ lbu	$v0, 0X210($s0)
/* 000476 0x8099B2A0 92090210 */ lbu	$t1, 0X210($s0)
.L8099B2A4:
/* 000477 0x8099B2A4 312A0002 */ andi	$t2, $t1, 0X2
/* 000478 0x8099B2A8 5540000D */ bnezl	$t2, .L8099B2E0
/* 000479 0x8099B2AC 92020210 */ lbu	$v0, 0X210($s0)
/* 000480 0x8099B2B0 960B0090 */ lhu	$t3, 0X90($s0)
/* 000481 0x8099B2B4 3C01C220 */ lui	$at, 0xC220
/* 000482 0x8099B2B8 316C0009 */ andi	$t4, $t3, 0X9
/* 000483 0x8099B2BC 55800008 */ bnezl	$t4, .L8099B2E0
/* 000484 0x8099B2C0 92020210 */ lbu	$v0, 0X210($s0)
/* 000485 0x8099B2C4 44815000 */ mtc1	$at, $f10
/* 000486 0x8099B2C8 C610008C */ lwc1	$f16, 0X8C($s0)
/* 000487 0x8099B2CC 4610503C */ c.lt.s	$f10, $f16
/* 000488 0x8099B2D0 00000000 */ nop
/* 000489 0x8099B2D4 4502000C */ bc1fl .L8099B308
/* 000490 0x8099B2D8 8FBF0024 */ lw	$ra, 0X24($sp)
.L8099B2DC:
/* 000491 0x8099B2DC 92020210 */ lbu	$v0, 0X210($s0)
.L8099B2E0:
/* 000492 0x8099B2E0 02002025 */ move	$a0, $s0
/* 000493 0x8099B2E4 240538B7 */ li	$a1, 0X38B7
/* 000494 0x8099B2E8 304D0002 */ andi	$t5, $v0, 0X2
/* 000495 0x8099B2EC 11A00003 */ beqz	$t5, .L8099B2FC
/* 000496 0x8099B2F0 304EFFFD */ andi	$t6, $v0, 0XFFFD
/* 000497 0x8099B2F4 0C02E3B2 */ jal	func_800B8EC8
/* 000498 0x8099B2F8 A20E0210 */ sb	$t6, 0X210($s0)
.L8099B2FC:
/* 000499 0x8099B2FC 0C266B16 */ jal	func_8099AC58
/* 000500 0x8099B300 02002025 */ move	$a0, $s0
/* 000501 0x8099B304 8FBF0024 */ lw	$ra, 0X24($sp)
.L8099B308:
/* 000502 0x8099B308 8FB00020 */ lw	$s0, 0X20($sp)
/* 000503 0x8099B30C 27BD0050 */ addiu	$sp, $sp, 0X50
/* 000504 0x8099B310 03E00008 */ jr	$ra
/* 000505 0x8099B314 00000000 */ nop

