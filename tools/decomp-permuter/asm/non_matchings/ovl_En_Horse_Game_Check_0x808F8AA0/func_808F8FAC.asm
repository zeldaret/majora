glabel func_808F8FAC
/* 000323 0x808F8FAC 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 000324 0x808F8FB0 AFB00020 */ sw	$s0, 0X20($sp)
/* 000325 0x808F8FB4 00808025 */ move	$s0, $a0
/* 000326 0x808F8FB8 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000327 0x808F8FBC AFA50054 */ sw	$a1, 0X54($sp)
/* 000328 0x808F8FC0 8FAE0054 */ lw	$t6, 0X54($sp)
/* 000329 0x808F8FC4 8DC21CCC */ lw	$v0, 0X1CCC($t6)
/* 000330 0x808F8FC8 8C4F0390 */ lw	$t7, 0X390($v0)
/* 000331 0x808F8FCC 15E00003 */ bnez	$t7, .L808F8FDC
/* 000332 0x808F8FD0 AFAF003C */ sw	$t7, 0X3C($sp)
/* 000333 0x808F8FD4 100001BE */ b	.L808F96D0
/* 000334 0x808F8FD8 24020001 */ li	$v0, 0X1
.L808F8FDC:
/* 000335 0x808F8FDC 8E040168 */ lw	$a0, 0X168($s0)
/* 000336 0x808F8FE0 8FA90054 */ lw	$t1, 0X54($sp)
/* 000337 0x808F8FE4 3C020001 */ lui	$v0, 0x0001
/* 000338 0x808F8FE8 28810033 */ slti	$at, $a0, 0X33
/* 000339 0x808F8FEC 14200008 */ bnez	$at, .L808F9010
/* 000340 0x808F8FF0 00491021 */ addu	$v0, $v0, $t1
/* 000341 0x808F8FF4 8E030164 */ lw	$v1, 0X164($s0)
/* 000342 0x808F8FF8 30790002 */ andi	$t9, $v1, 0X2
/* 000343 0x808F8FFC 17200004 */ bnez	$t9, .L808F9010
/* 000344 0x808F9000 34680002 */ ori	$t0, $v1, 0X2
/* 000345 0x808F9004 AE080164 */ sw	$t0, 0X164($s0)
/* 000346 0x808F9008 10000020 */ b	.L808F908C
/* 000347 0x808F900C 8E040168 */ lw	$a0, 0X168($s0)
.L808F9010:
/* 000348 0x808F9010 90426C68 */ lbu	$v0, 0X6C68($v0)
/* 000349 0x808F9014 28410008 */ slti	$at, $v0, 0X8
/* 000350 0x808F9018 5420000C */ bnezl	$at, .L808F904C
/* 000351 0x808F901C 28410008 */ slti	$at, $v0, 0X8
/* 000352 0x808F9020 8E030164 */ lw	$v1, 0X164($s0)
/* 000353 0x808F9024 306A0001 */ andi	$t2, $v1, 0X1
/* 000354 0x808F9028 15400007 */ bnez	$t2, .L808F9048
/* 000355 0x808F902C 346B0001 */ ori	$t3, $v1, 0X1
/* 000356 0x808F9030 AE0B0164 */ sw	$t3, 0X164($s0)
/* 000357 0x808F9034 8FAC003C */ lw	$t4, 0X3C($sp)
/* 000358 0x808F9038 24050001 */ li	$a1, 0X1
/* 000359 0x808F903C AD850388 */ sw	$a1, 0X388($t4)
/* 000360 0x808F9040 10000012 */ b	.L808F908C
/* 000361 0x808F9044 8E040168 */ lw	$a0, 0X168($s0)
.L808F9048:
/* 000362 0x808F9048 28410008 */ slti	$at, $v0, 0X8
.L808F904C:
/* 000363 0x808F904C 54200010 */ bnezl	$at, .L808F9090
/* 000364 0x808F9050 8E02017C */ lw	$v0, 0X17C($s0)
/* 000365 0x808F9054 8E0D0164 */ lw	$t5, 0X164($s0)
/* 000366 0x808F9058 24050001 */ li	$a1, 0X1
/* 000367 0x808F905C 31AE0008 */ andi	$t6, $t5, 0X8
/* 000368 0x808F9060 55C0000B */ bnezl	$t6, .L808F9090
/* 000369 0x808F9064 8E02017C */ lw	$v0, 0X17C($s0)
/* 000370 0x808F9068 8E02016C */ lw	$v0, 0X16C($s0)
/* 000371 0x808F906C AC450388 */ sw	$a1, 0X388($v0)
/* 000372 0x808F9070 8E020170 */ lw	$v0, 0X170($s0)
/* 000373 0x808F9074 AC450388 */ sw	$a1, 0X388($v0)
/* 000374 0x808F9078 8E0F0164 */ lw	$t7, 0X164($s0)
/* 000375 0x808F907C 8E040168 */ lw	$a0, 0X168($s0)
/* 000376 0x808F9080 35F80008 */ ori	$t8, $t7, 0X8
/* 000377 0x808F9084 AE180164 */ sw	$t8, 0X164($s0)
/* 000378 0x808F9088 AE04017C */ sw	$a0, 0X17C($s0)
.L808F908C:
/* 000379 0x808F908C 8E02017C */ lw	$v0, 0X17C($s0)
.L808F9090:
/* 000380 0x808F9090 2403FFFF */ li	$v1, -0X1
/* 000381 0x808F9094 1062000A */ beq	$v1, $v0, .L808F90C0
/* 000382 0x808F9098 0082C823 */ subu	$t9, $a0, $v0
/* 000383 0x808F909C 2B21000B */ slti	$at, $t9, 0XB
/* 000384 0x808F90A0 54200008 */ bnezl	$at, .L808F90C4
/* 000385 0x808F90A4 8E030164 */ lw	$v1, 0X164($s0)
/* 000386 0x808F90A8 AE03017C */ sw	$v1, 0X17C($s0)
/* 000387 0x808F90AC 8FA80054 */ lw	$t0, 0X54($sp)
/* 000388 0x808F90B0 24050004 */ li	$a1, 0X4
/* 000389 0x808F90B4 0C037EB2 */ jal	func_800DFAC8
/* 000390 0x808F90B8 8D040800 */ lw	$a0, 0X800($t0)
/* 000391 0x808F90BC 8E040168 */ lw	$a0, 0X168($s0)
.L808F90C0:
/* 000392 0x808F90C0 8E030164 */ lw	$v1, 0X164($s0)
.L808F90C4:
/* 000393 0x808F90C4 24890001 */ addiu	$t1, $a0, 0X1
/* 000394 0x808F90C8 AE090168 */ sw	$t1, 0X168($s0)
/* 000395 0x808F90CC 306A4000 */ andi	$t2, $v1, 0X4000
/* 000396 0x808F90D0 11400007 */ beqz	$t2, .L808F90F0
/* 000397 0x808F90D4 00035A80 */ sll	$t3, $v1, 10
/* 000398 0x808F90D8 05610005 */ bgez	$t3, .L808F90F0
/* 000399 0x808F90DC 306C0010 */ andi	$t4, $v1, 0X10
/* 000400 0x808F90E0 15800003 */ bnez	$t4, .L808F90F0
/* 000401 0x808F90E4 346D0010 */ ori	$t5, $v1, 0X10
/* 000402 0x808F90E8 AE0D0164 */ sw	$t5, 0X164($s0)
/* 000403 0x808F90EC 01A01825 */ move	$v1, $t5
.L808F90F0:
/* 000404 0x808F90F0 306E0800 */ andi	$t6, $v1, 0X800
/* 000405 0x808F90F4 15C00005 */ bnez	$t6, .L808F910C
/* 000406 0x808F90F8 00037B40 */ sll	$t7, $v1, 13
/* 000407 0x808F90FC 05E00003 */ bltz	$t7, .L808F910C
/* 000408 0x808F9100 0003C180 */ sll	$t8, $v1, 6
/* 000409 0x808F9104 0701000C */ bgez	$t8, .L808F9138
/* 000410 0x808F9108 3C08801F */ lui	$t0, %hi(gSaveContext + 0x3E00)
.L808F910C:
/* 000411 0x808F910C 8E020174 */ lw	$v0, 0X174($s0)
/* 000412 0x808F9110 02002025 */ move	$a0, $s0
/* 000413 0x808F9114 18400004 */ blez	$v0, .L808F9128
/* 000414 0x808F9118 2459FFFF */ addiu	$t9, $v0, -0X1
/* 000415 0x808F911C AE190174 */ sw	$t9, 0X174($s0)
/* 000416 0x808F9120 1000016B */ b	.L808F96D0
/* 000417 0x808F9124 24020001 */ li	$v0, 0X1
.L808F9128:
/* 000418 0x808F9128 0C23E3AC */ jal	func_808F8EB0
/* 000419 0x808F912C 8FA50054 */ lw	$a1, 0X54($sp)
/* 000420 0x808F9130 10000167 */ b	.L808F96D0
/* 000421 0x808F9134 24020001 */ li	$v0, 0X1
.L808F9138:
/* 000422 0x808F9138 3C09801F */ lui	$t1, %hi(gSaveContext + 0x3E04)
/* 000423 0x808F913C 8D293474 */ lw	$t1, %lo(gSaveContext + 0x3E04)($t1)
/* 000424 0x808F9140 8D083470 */ lw	$t0, %lo(gSaveContext + 0x3E00)($t0)
/* 000425 0x808F9144 15000003 */ bnez	$t0, .L808F9154
/* 000426 0x808F9148 2D214650 */ sltiu	$at, $t1, 0X4650
/* 000427 0x808F914C 54200018 */ bnezl	$at, .L808F91B0
/* 000428 0x808F9150 306A1000 */ andi	$t2, $v1, 0X1000
.L808F9154:
/* 000429 0x808F9154 0C06A26A */ jal	func_801A89A8
/* 000430 0x808F9158 34048041 */ ori	$a0, $zero, 0X8041
/* 000431 0x808F915C 0C067C32 */ jal	play_sound
/* 000432 0x808F9160 24044835 */ li	$a0, 0X4835
/* 000433 0x808F9164 8E0A0164 */ lw	$t2, 0X164($s0)
/* 000434 0x808F9168 3C010004 */ lui	$at, 0x0004
/* 000435 0x808F916C 3C04801F */ lui	$a0, %hi(gSaveContext)
/* 000436 0x808F9170 01415825 */ or	$t3, $t2, $at
/* 000437 0x808F9174 2484F670 */ addiu	$a0, $a0, %lo(gSaveContext)
/* 000438 0x808F9178 AE0B0164 */ sw	$t3, 0X164($s0)
/* 000439 0x808F917C 908D0F54 */ lbu	$t5, 0XF54($a0)
/* 000440 0x808F9180 240C0006 */ li	$t4, 0X6
/* 000441 0x808F9184 A08C3DD4 */ sb	$t4, 0X3DD4($a0)
/* 000442 0x808F9188 31A200F8 */ andi	$v0, $t5, 0XF8
/* 000443 0x808F918C 304FFFF8 */ andi	$t7, $v0, 0XFFF8
/* 000444 0x808F9190 35F90004 */ ori	$t9, $t7, 0X4
/* 000445 0x808F9194 03224025 */ or	$t0, $t9, $v0
/* 000446 0x808F9198 A0820F54 */ sb	$v0, 0XF54($a0)
/* 000447 0x808F919C A0880F54 */ sb	$t0, 0XF54($a0)
/* 000448 0x808F91A0 2409003C */ li	$t1, 0X3C
/* 000449 0x808F91A4 AE090174 */ sw	$t1, 0X174($s0)
/* 000450 0x808F91A8 8E030164 */ lw	$v1, 0X164($s0)
/* 000451 0x808F91AC 306A1000 */ andi	$t2, $v1, 0X1000
.L808F91B0:
/* 000452 0x808F91B0 55400013 */ bnezl	$t2, .L808F9200
/* 000453 0x808F91B4 8E030164 */ lw	$v1, 0X164($s0)
/* 000454 0x808F91B8 8E02016C */ lw	$v0, 0X16C($s0)
/* 000455 0x808F91BC 3C038090 */ lui	$v1, %hi(D_808F9BAC)
/* 000456 0x808F91C0 24639BAC */ addiu	$v1, $v1, %lo(D_808F9BAC)
/* 000457 0x808F91C4 C4440024 */ lwc1	$f4, 0X24($v0)
/* 000458 0x808F91C8 C46C0000 */ lwc1	$f12, 0X0($v1)
/* 000459 0x808F91CC C46E0004 */ lwc1	$f14, 0X4($v1)
/* 000460 0x808F91D0 E7A40010 */ swc1	$f4, 0X10($sp)
/* 000461 0x808F91D4 C446002C */ lwc1	$f6, 0X2C($v0)
/* 000462 0x808F91D8 8C660008 */ lw	$a2, 0X8($v1)
/* 000463 0x808F91DC 8C67000C */ lw	$a3, 0XC($v1)
/* 000464 0x808F91E0 0C05E80E */ jal	Math3D_XZBoundCheck
/* 000465 0x808F91E4 E7A60014 */ swc1	$f6, 0X14($sp)
/* 000466 0x808F91E8 50400005 */ beqzl	$v0, .L808F9200
/* 000467 0x808F91EC 8E030164 */ lw	$v1, 0X164($s0)
/* 000468 0x808F91F0 8E0B0164 */ lw	$t3, 0X164($s0)
/* 000469 0x808F91F4 356C1000 */ ori	$t4, $t3, 0X1000
/* 000470 0x808F91F8 AE0C0164 */ sw	$t4, 0X164($s0)
/* 000471 0x808F91FC 8E030164 */ lw	$v1, 0X164($s0)
.L808F9200:
/* 000472 0x808F9200 306D2000 */ andi	$t5, $v1, 0X2000
/* 000473 0x808F9204 15A00013 */ bnez	$t5, .L808F9254
/* 000474 0x808F9208 306E1000 */ andi	$t6, $v1, 0X1000
/* 000475 0x808F920C 11C00011 */ beqz	$t6, .L808F9254
/* 000476 0x808F9210 3C038090 */ lui	$v1, %hi(D_808F9BBC)
/* 000477 0x808F9214 8E02016C */ lw	$v0, 0X16C($s0)
/* 000478 0x808F9218 24639BBC */ addiu	$v1, $v1, %lo(D_808F9BBC)
/* 000479 0x808F921C C46C0000 */ lwc1	$f12, 0X0($v1)
/* 000480 0x808F9220 C4480024 */ lwc1	$f8, 0X24($v0)
/* 000481 0x808F9224 C46E0004 */ lwc1	$f14, 0X4($v1)
/* 000482 0x808F9228 8C660008 */ lw	$a2, 0X8($v1)
/* 000483 0x808F922C E7A80010 */ swc1	$f8, 0X10($sp)
/* 000484 0x808F9230 C44A002C */ lwc1	$f10, 0X2C($v0)
/* 000485 0x808F9234 8C67000C */ lw	$a3, 0XC($v1)
/* 000486 0x808F9238 0C05E80E */ jal	Math3D_XZBoundCheck
/* 000487 0x808F923C E7AA0014 */ swc1	$f10, 0X14($sp)
/* 000488 0x808F9240 50400005 */ beqzl	$v0, .L808F9258
/* 000489 0x808F9244 8E030164 */ lw	$v1, 0X164($s0)
/* 000490 0x808F9248 8E0F0164 */ lw	$t7, 0X164($s0)
/* 000491 0x808F924C 35F82000 */ ori	$t8, $t7, 0X2000
/* 000492 0x808F9250 AE180164 */ sw	$t8, 0X164($s0)
.L808F9254:
/* 000493 0x808F9254 8E030164 */ lw	$v1, 0X164($s0)
.L808F9258:
/* 000494 0x808F9258 30794000 */ andi	$t9, $v1, 0X4000
/* 000495 0x808F925C 17200013 */ bnez	$t9, .L808F92AC
/* 000496 0x808F9260 30682000 */ andi	$t0, $v1, 0X2000
/* 000497 0x808F9264 11000011 */ beqz	$t0, .L808F92AC
/* 000498 0x808F9268 3C038090 */ lui	$v1, %hi(D_808F9BCC)
/* 000499 0x808F926C 8E02016C */ lw	$v0, 0X16C($s0)
/* 000500 0x808F9270 24639BCC */ addiu	$v1, $v1, %lo(D_808F9BCC)
/* 000501 0x808F9274 C46C0000 */ lwc1	$f12, 0X0($v1)
/* 000502 0x808F9278 C4500024 */ lwc1	$f16, 0X24($v0)
/* 000503 0x808F927C C46E0004 */ lwc1	$f14, 0X4($v1)
/* 000504 0x808F9280 8C660008 */ lw	$a2, 0X8($v1)
/* 000505 0x808F9284 E7B00010 */ swc1	$f16, 0X10($sp)
/* 000506 0x808F9288 C452002C */ lwc1	$f18, 0X2C($v0)
/* 000507 0x808F928C 8C67000C */ lw	$a3, 0XC($v1)
/* 000508 0x808F9290 0C05E80E */ jal	Math3D_XZBoundCheck
/* 000509 0x808F9294 E7B20014 */ swc1	$f18, 0X14($sp)
/* 000510 0x808F9298 50400005 */ beqzl	$v0, .L808F92B0
/* 000511 0x808F929C 8FA40054 */ lw	$a0, 0X54($sp)
/* 000512 0x808F92A0 8E090164 */ lw	$t1, 0X164($s0)
/* 000513 0x808F92A4 352A4000 */ ori	$t2, $t1, 0X4000
/* 000514 0x808F92A8 AE0A0164 */ sw	$t2, 0X164($s0)
.L808F92AC:
/* 000515 0x808F92AC 8FA40054 */ lw	$a0, 0X54($sp)
.L808F92B0:
/* 000516 0x808F92B0 8E0B016C */ lw	$t3, 0X16C($s0)
/* 000517 0x808F92B4 24840830 */ addiu	$a0, $a0, 0X830
/* 000518 0x808F92B8 8D65024C */ lw	$a1, 0X24C($t3)
/* 000519 0x808F92BC 0C031892 */ jal	BgCheck_GetActorOfMesh
/* 000520 0x808F92C0 AFA40028 */ sw	$a0, 0X28($sp)
/* 000521 0x808F92C4 8E030164 */ lw	$v1, 0X164($s0)
/* 000522 0x808F92C8 306C4000 */ andi	$t4, $v1, 0X4000
/* 000523 0x808F92CC 51800027 */ beqzl	$t4, .L808F936C
/* 000524 0x808F92D0 0003C300 */ sll	$t8, $v1, 12
/* 000525 0x808F92D4 50400025 */ beqzl	$v0, .L808F936C
/* 000526 0x808F92D8 0003C300 */ sll	$t8, $v1, 12
/* 000527 0x808F92DC 844D0000 */ lh	$t5, 0X0($v0)
/* 000528 0x808F92E0 2401006B */ li	$at, 0X6B
/* 000529 0x808F92E4 55A10021 */ bnel	$t5, $at, .L808F936C
/* 000530 0x808F92E8 0003C300 */ sll	$t8, $v1, 12
/* 000531 0x808F92EC 8C4E015C */ lw	$t6, 0X15C($v0)
/* 000532 0x808F92F0 24010007 */ li	$at, 0X7
/* 000533 0x808F92F4 00037B40 */ sll	$t7, $v1, 13
/* 000534 0x808F92F8 55C1001C */ bnel	$t6, $at, .L808F936C
/* 000535 0x808F92FC 0003C300 */ sll	$t8, $v1, 12
/* 000536 0x808F9300 05E2001A */ bltzl	$t7, .L808F936C
/* 000537 0x808F9304 0003C300 */ sll	$t8, $v1, 12
/* 000538 0x808F9308 0C06A26A */ jal	func_801A89A8
/* 000539 0x808F930C 34048041 */ ori	$a0, $zero, 0X8041
/* 000540 0x808F9310 0C067C32 */ jal	play_sound
/* 000541 0x808F9314 24044835 */ li	$a0, 0X4835
/* 000542 0x808F9318 8E180164 */ lw	$t8, 0X164($s0)
/* 000543 0x808F931C 3C010004 */ lui	$at, 0x0004
/* 000544 0x808F9320 24080006 */ li	$t0, 0X6
/* 000545 0x808F9324 0301C825 */ or	$t9, $t8, $at
/* 000546 0x808F9328 AE190164 */ sw	$t9, 0X164($s0)
/* 000547 0x808F932C 3C01801F */ lui	$at, %hi(gSaveContext + 0x3DD4)
/* 000548 0x808F9330 A0283444 */ sb	$t0, %lo(gSaveContext + 0x3DD4)($at)
/* 000549 0x808F9334 3C09801F */ lui	$t1, %hi(gSaveContext + 0xF54)
/* 000550 0x808F9338 912905C4 */ lbu	$t1, %lo(gSaveContext + 0xF54)($t1)
/* 000551 0x808F933C 3C01801F */ lui	$at, %hi(gSaveContext + 0xF54)
/* 000552 0x808F9340 240F003C */ li	$t7, 0X3C
/* 000553 0x808F9344 312200F8 */ andi	$v0, $t1, 0XF8
/* 000554 0x808F9348 304BFFF8 */ andi	$t3, $v0, 0XFFF8
/* 000555 0x808F934C 356D0003 */ ori	$t5, $t3, 0X3
/* 000556 0x808F9350 A02205C4 */ sb	$v0, %lo(gSaveContext + 0xF54)($at)
/* 000557 0x808F9354 3C01801F */ lui	$at, %hi(gSaveContext + 0xF54)
/* 000558 0x808F9358 01A27025 */ or	$t6, $t5, $v0
/* 000559 0x808F935C A02E05C4 */ sb	$t6, %lo(gSaveContext + 0xF54)($at)
/* 000560 0x808F9360 8E030164 */ lw	$v1, 0X164($s0)
/* 000561 0x808F9364 AE0F0174 */ sw	$t7, 0X174($s0)
/* 000562 0x808F9368 0003C300 */ sll	$t8, $v1, 12
.L808F936C:
/* 000563 0x808F936C 07000012 */ bltz	$t8, .L808F93B8
/* 000564 0x808F9370 3C040008 */ lui	$a0, 0x0008
/* 000565 0x808F9374 8E020170 */ lw	$v0, 0X170($s0)
/* 000566 0x808F9378 3C038090 */ lui	$v1, %hi(D_808F9BAC)
/* 000567 0x808F937C 24639BAC */ addiu	$v1, $v1, %lo(D_808F9BAC)
/* 000568 0x808F9380 C4440024 */ lwc1	$f4, 0X24($v0)
/* 000569 0x808F9384 C46C0000 */ lwc1	$f12, 0X0($v1)
/* 000570 0x808F9388 C46E0004 */ lwc1	$f14, 0X4($v1)
/* 000571 0x808F938C E7A40010 */ swc1	$f4, 0X10($sp)
/* 000572 0x808F9390 C446002C */ lwc1	$f6, 0X2C($v0)
/* 000573 0x808F9394 8C660008 */ lw	$a2, 0X8($v1)
/* 000574 0x808F9398 8C67000C */ lw	$a3, 0XC($v1)
/* 000575 0x808F939C 0C05E80E */ jal	Math3D_XZBoundCheck
/* 000576 0x808F93A0 E7A60014 */ swc1	$f6, 0X14($sp)
/* 000577 0x808F93A4 10400004 */ beqz	$v0, .L808F93B8
/* 000578 0x808F93A8 3C040008 */ lui	$a0, 0x0008
/* 000579 0x808F93AC 8E190164 */ lw	$t9, 0X164($s0)
/* 000580 0x808F93B0 03244025 */ or	$t0, $t9, $a0
/* 000581 0x808F93B4 AE080164 */ sw	$t0, 0X164($s0)
.L808F93B8:
/* 000582 0x808F93B8 8E030164 */ lw	$v1, 0X164($s0)
/* 000583 0x808F93BC 3C050010 */ lui	$a1, 0x0010
/* 000584 0x808F93C0 00034AC0 */ sll	$t1, $v1, 11
/* 000585 0x808F93C4 05200013 */ bltz	$t1, .L808F9414
/* 000586 0x808F93C8 00645024 */ and	$t2, $v1, $a0
/* 000587 0x808F93CC 11400011 */ beqz	$t2, .L808F9414
/* 000588 0x808F93D0 3C038090 */ lui	$v1, %hi(D_808F9BBC)
/* 000589 0x808F93D4 8E020170 */ lw	$v0, 0X170($s0)
/* 000590 0x808F93D8 24639BBC */ addiu	$v1, $v1, %lo(D_808F9BBC)
/* 000591 0x808F93DC C46C0000 */ lwc1	$f12, 0X0($v1)
/* 000592 0x808F93E0 C4480024 */ lwc1	$f8, 0X24($v0)
/* 000593 0x808F93E4 C46E0004 */ lwc1	$f14, 0X4($v1)
/* 000594 0x808F93E8 8C660008 */ lw	$a2, 0X8($v1)
/* 000595 0x808F93EC E7A80010 */ swc1	$f8, 0X10($sp)
/* 000596 0x808F93F0 C44A002C */ lwc1	$f10, 0X2C($v0)
/* 000597 0x808F93F4 8C67000C */ lw	$a3, 0XC($v1)
/* 000598 0x808F93F8 0C05E80E */ jal	Math3D_XZBoundCheck
/* 000599 0x808F93FC E7AA0014 */ swc1	$f10, 0X14($sp)
/* 000600 0x808F9400 10400004 */ beqz	$v0, .L808F9414
/* 000601 0x808F9404 3C050010 */ lui	$a1, 0x0010
/* 000602 0x808F9408 8E0B0164 */ lw	$t3, 0X164($s0)
/* 000603 0x808F940C 01656025 */ or	$t4, $t3, $a1
/* 000604 0x808F9410 AE0C0164 */ sw	$t4, 0X164($s0)
.L808F9414:
/* 000605 0x808F9414 8E030164 */ lw	$v1, 0X164($s0)
/* 000606 0x808F9418 00036A80 */ sll	$t5, $v1, 10
/* 000607 0x808F941C 05A00014 */ bltz	$t5, .L808F9470
/* 000608 0x808F9420 00657024 */ and	$t6, $v1, $a1
/* 000609 0x808F9424 11C00012 */ beqz	$t6, .L808F9470
/* 000610 0x808F9428 3C038090 */ lui	$v1, %hi(D_808F9BCC)
/* 000611 0x808F942C 8E020170 */ lw	$v0, 0X170($s0)
/* 000612 0x808F9430 24639BCC */ addiu	$v1, $v1, %lo(D_808F9BCC)
/* 000613 0x808F9434 C46C0000 */ lwc1	$f12, 0X0($v1)
/* 000614 0x808F9438 C4500024 */ lwc1	$f16, 0X24($v0)
/* 000615 0x808F943C C46E0004 */ lwc1	$f14, 0X4($v1)
/* 000616 0x808F9440 8C660008 */ lw	$a2, 0X8($v1)
/* 000617 0x808F9444 E7B00010 */ swc1	$f16, 0X10($sp)
/* 000618 0x808F9448 C452002C */ lwc1	$f18, 0X2C($v0)
/* 000619 0x808F944C 8C67000C */ lw	$a3, 0XC($v1)
/* 000620 0x808F9450 0C05E80E */ jal	Math3D_XZBoundCheck
/* 000621 0x808F9454 E7B20014 */ swc1	$f18, 0X14($sp)
/* 000622 0x808F9458 50400006 */ beqzl	$v0, .L808F9474
/* 000623 0x808F945C 8E190170 */ lw	$t9, 0X170($s0)
/* 000624 0x808F9460 8E0F0164 */ lw	$t7, 0X164($s0)
/* 000625 0x808F9464 3C010020 */ lui	$at, 0x0020
/* 000626 0x808F9468 01E1C025 */ or	$t8, $t7, $at
/* 000627 0x808F946C AE180164 */ sw	$t8, 0X164($s0)
.L808F9470:
/* 000628 0x808F9470 8E190170 */ lw	$t9, 0X170($s0)
.L808F9474:
/* 000629 0x808F9474 8FA40028 */ lw	$a0, 0X28($sp)
/* 000630 0x808F9478 0C031892 */ jal	BgCheck_GetActorOfMesh
/* 000631 0x808F947C 8F25024C */ lw	$a1, 0X24C($t9)
/* 000632 0x808F9480 8E030164 */ lw	$v1, 0X164($s0)
/* 000633 0x808F9484 00034280 */ sll	$t0, $v1, 10
/* 000634 0x808F9488 05030027 */ bgezl	$t0, .L808F9528
/* 000635 0x808F948C 306C0020 */ andi	$t4, $v1, 0X20
/* 000636 0x808F9490 50400025 */ beqzl	$v0, .L808F9528
/* 000637 0x808F9494 306C0020 */ andi	$t4, $v1, 0X20
/* 000638 0x808F9498 84490000 */ lh	$t1, 0X0($v0)
/* 000639 0x808F949C 2401006B */ li	$at, 0X6B
/* 000640 0x808F94A0 55210021 */ bnel	$t1, $at, .L808F9528
/* 000641 0x808F94A4 306C0020 */ andi	$t4, $v1, 0X20
/* 000642 0x808F94A8 8C4A015C */ lw	$t2, 0X15C($v0)
/* 000643 0x808F94AC 24010007 */ li	$at, 0X7
/* 000644 0x808F94B0 00035980 */ sll	$t3, $v1, 6
/* 000645 0x808F94B4 5541001C */ bnel	$t2, $at, .L808F9528
/* 000646 0x808F94B8 306C0020 */ andi	$t4, $v1, 0X20
/* 000647 0x808F94BC 0562001A */ bltzl	$t3, .L808F9528
/* 000648 0x808F94C0 306C0020 */ andi	$t4, $v1, 0X20
/* 000649 0x808F94C4 0C06A26A */ jal	func_801A89A8
/* 000650 0x808F94C8 34048041 */ ori	$a0, $zero, 0X8041
/* 000651 0x808F94CC 0C067C32 */ jal	play_sound
/* 000652 0x808F94D0 24044835 */ li	$a0, 0X4835
/* 000653 0x808F94D4 8E0C0164 */ lw	$t4, 0X164($s0)
/* 000654 0x808F94D8 3C010200 */ lui	$at, 0x0200
/* 000655 0x808F94DC 240E0006 */ li	$t6, 0X6
/* 000656 0x808F94E0 01816825 */ or	$t5, $t4, $at
/* 000657 0x808F94E4 AE0D0164 */ sw	$t5, 0X164($s0)
/* 000658 0x808F94E8 3C01801F */ lui	$at, %hi(gSaveContext + 0x3DD4)
/* 000659 0x808F94EC A02E3444 */ sb	$t6, %lo(gSaveContext + 0x3DD4)($at)
/* 000660 0x808F94F0 3C0F801F */ lui	$t7, %hi(gSaveContext + 0xF54)
/* 000661 0x808F94F4 91EF05C4 */ lbu	$t7, %lo(gSaveContext + 0xF54)($t7)
/* 000662 0x808F94F8 3C01801F */ lui	$at, %hi(gSaveContext + 0xF54)
/* 000663 0x808F94FC 240B003C */ li	$t3, 0X3C
/* 000664 0x808F9500 31E200F8 */ andi	$v0, $t7, 0XF8
/* 000665 0x808F9504 3059FFF8 */ andi	$t9, $v0, 0XFFF8
/* 000666 0x808F9508 37290003 */ ori	$t1, $t9, 0X3
/* 000667 0x808F950C A02205C4 */ sb	$v0, %lo(gSaveContext + 0xF54)($at)
/* 000668 0x808F9510 3C01801F */ lui	$at, %hi(gSaveContext + 0xF54)
/* 000669 0x808F9514 01225025 */ or	$t2, $t1, $v0
/* 000670 0x808F9518 A02A05C4 */ sb	$t2, %lo(gSaveContext + 0xF54)($at)
/* 000671 0x808F951C 8E030164 */ lw	$v1, 0X164($s0)
/* 000672 0x808F9520 AE0B0174 */ sw	$t3, 0X174($s0)
/* 000673 0x808F9524 306C0020 */ andi	$t4, $v1, 0X20
.L808F9528:
/* 000674 0x808F9528 15800011 */ bnez	$t4, .L808F9570
/* 000675 0x808F952C 3C028090 */ lui	$v0, %hi(D_808F9BAC)
/* 000676 0x808F9530 8FA3003C */ lw	$v1, 0X3C($sp)
/* 000677 0x808F9534 24429BAC */ addiu	$v0, $v0, %lo(D_808F9BAC)
/* 000678 0x808F9538 C44C0000 */ lwc1	$f12, 0X0($v0)
/* 000679 0x808F953C C4640024 */ lwc1	$f4, 0X24($v1)
/* 000680 0x808F9540 C44E0004 */ lwc1	$f14, 0X4($v0)
/* 000681 0x808F9544 8C460008 */ lw	$a2, 0X8($v0)
/* 000682 0x808F9548 E7A40010 */ swc1	$f4, 0X10($sp)
/* 000683 0x808F954C C466002C */ lwc1	$f6, 0X2C($v1)
/* 000684 0x808F9550 8C47000C */ lw	$a3, 0XC($v0)
/* 000685 0x808F9554 0C05E80E */ jal	Math3D_XZBoundCheck
/* 000686 0x808F9558 E7A60014 */ swc1	$f6, 0X14($sp)
/* 000687 0x808F955C 50400005 */ beqzl	$v0, .L808F9574
/* 000688 0x808F9560 8E030164 */ lw	$v1, 0X164($s0)
/* 000689 0x808F9564 8E0D0164 */ lw	$t5, 0X164($s0)
/* 000690 0x808F9568 35AE0020 */ ori	$t6, $t5, 0X20
/* 000691 0x808F956C AE0E0164 */ sw	$t6, 0X164($s0)
.L808F9570:
/* 000692 0x808F9570 8E030164 */ lw	$v1, 0X164($s0)
.L808F9574:
/* 000693 0x808F9574 306F0040 */ andi	$t7, $v1, 0X40
/* 000694 0x808F9578 15E00013 */ bnez	$t7, .L808F95C8
/* 000695 0x808F957C 30780020 */ andi	$t8, $v1, 0X20
/* 000696 0x808F9580 13000011 */ beqz	$t8, .L808F95C8
/* 000697 0x808F9584 3C028090 */ lui	$v0, %hi(D_808F9BBC)
/* 000698 0x808F9588 8FB9003C */ lw	$t9, 0X3C($sp)
/* 000699 0x808F958C 24429BBC */ addiu	$v0, $v0, %lo(D_808F9BBC)
/* 000700 0x808F9590 C44C0000 */ lwc1	$f12, 0X0($v0)
/* 000701 0x808F9594 C7280024 */ lwc1	$f8, 0X24($t9)
/* 000702 0x808F9598 C44E0004 */ lwc1	$f14, 0X4($v0)
/* 000703 0x808F959C 8C460008 */ lw	$a2, 0X8($v0)
/* 000704 0x808F95A0 E7A80010 */ swc1	$f8, 0X10($sp)
/* 000705 0x808F95A4 C72A002C */ lwc1	$f10, 0X2C($t9)
/* 000706 0x808F95A8 8C47000C */ lw	$a3, 0XC($v0)
/* 000707 0x808F95AC 0C05E80E */ jal	Math3D_XZBoundCheck
/* 000708 0x808F95B0 E7AA0014 */ swc1	$f10, 0X14($sp)
/* 000709 0x808F95B4 50400005 */ beqzl	$v0, .L808F95CC
/* 000710 0x808F95B8 8E030164 */ lw	$v1, 0X164($s0)
/* 000711 0x808F95BC 8E080164 */ lw	$t0, 0X164($s0)
/* 000712 0x808F95C0 35090040 */ ori	$t1, $t0, 0X40
/* 000713 0x808F95C4 AE090164 */ sw	$t1, 0X164($s0)
.L808F95C8:
/* 000714 0x808F95C8 8E030164 */ lw	$v1, 0X164($s0)
.L808F95CC:
/* 000715 0x808F95CC 306A0080 */ andi	$t2, $v1, 0X80
/* 000716 0x808F95D0 15400013 */ bnez	$t2, .L808F9620
/* 000717 0x808F95D4 306B0040 */ andi	$t3, $v1, 0X40
/* 000718 0x808F95D8 11600011 */ beqz	$t3, .L808F9620
/* 000719 0x808F95DC 3C028090 */ lui	$v0, %hi(D_808F9BCC)
/* 000720 0x808F95E0 8FAC003C */ lw	$t4, 0X3C($sp)
/* 000721 0x808F95E4 24429BCC */ addiu	$v0, $v0, %lo(D_808F9BCC)
/* 000722 0x808F95E8 C44C0000 */ lwc1	$f12, 0X0($v0)
/* 000723 0x808F95EC C5900024 */ lwc1	$f16, 0X24($t4)
/* 000724 0x808F95F0 C44E0004 */ lwc1	$f14, 0X4($v0)
/* 000725 0x808F95F4 8C460008 */ lw	$a2, 0X8($v0)
/* 000726 0x808F95F8 E7B00010 */ swc1	$f16, 0X10($sp)
/* 000727 0x808F95FC C592002C */ lwc1	$f18, 0X2C($t4)
/* 000728 0x808F9600 8C47000C */ lw	$a3, 0XC($v0)
/* 000729 0x808F9604 0C05E80E */ jal	Math3D_XZBoundCheck
/* 000730 0x808F9608 E7B20014 */ swc1	$f18, 0X14($sp)
/* 000731 0x808F960C 50400005 */ beqzl	$v0, .L808F9624
/* 000732 0x808F9610 8FAF003C */ lw	$t7, 0X3C($sp)
/* 000733 0x808F9614 8E0D0164 */ lw	$t5, 0X164($s0)
/* 000734 0x808F9618 35AE0080 */ ori	$t6, $t5, 0X80
/* 000735 0x808F961C AE0E0164 */ sw	$t6, 0X164($s0)
.L808F9620:
/* 000736 0x808F9620 8FAF003C */ lw	$t7, 0X3C($sp)
.L808F9624:
/* 000737 0x808F9624 8FA40028 */ lw	$a0, 0X28($sp)
/* 000738 0x808F9628 0C031892 */ jal	BgCheck_GetActorOfMesh
/* 000739 0x808F962C 8DE5024C */ lw	$a1, 0X24C($t7)
/* 000740 0x808F9630 8E030164 */ lw	$v1, 0X164($s0)
/* 000741 0x808F9634 30780080 */ andi	$t8, $v1, 0X80
/* 000742 0x808F9638 53000025 */ beqzl	$t8, .L808F96D0
/* 000743 0x808F963C 24020001 */ li	$v0, 0X1
/* 000744 0x808F9640 50400023 */ beqzl	$v0, .L808F96D0
/* 000745 0x808F9644 24020001 */ li	$v0, 0X1
/* 000746 0x808F9648 84590000 */ lh	$t9, 0X0($v0)
/* 000747 0x808F964C 2401006B */ li	$at, 0X6B
/* 000748 0x808F9650 5721001F */ bnel	$t9, $at, .L808F96D0
/* 000749 0x808F9654 24020001 */ li	$v0, 0X1
/* 000750 0x808F9658 8C48015C */ lw	$t0, 0X15C($v0)
/* 000751 0x808F965C 24010007 */ li	$at, 0X7
/* 000752 0x808F9660 30690800 */ andi	$t1, $v1, 0X800
/* 000753 0x808F9664 5501001A */ bnel	$t0, $at, .L808F96D0
/* 000754 0x808F9668 24020001 */ li	$v0, 0X1
/* 000755 0x808F966C 55200018 */ bnezl	$t1, .L808F96D0
/* 000756 0x808F9670 24020001 */ li	$v0, 0X1
/* 000757 0x808F9674 0C06A26A */ jal	func_801A89A8
/* 000758 0x808F9678 34048041 */ ori	$a0, $zero, 0X8041
/* 000759 0x808F967C 0C067C32 */ jal	play_sound
/* 000760 0x808F9680 24044835 */ li	$a0, 0X4835
/* 000761 0x808F9684 8E0A0164 */ lw	$t2, 0X164($s0)
/* 000762 0x808F9688 240C0006 */ li	$t4, 0X6
/* 000763 0x808F968C 3C01801F */ lui	$at, %hi(gSaveContext + 0x3DD4)
/* 000764 0x808F9690 354B0800 */ ori	$t3, $t2, 0X800
/* 000765 0x808F9694 AE0B0164 */ sw	$t3, 0X164($s0)
/* 000766 0x808F9698 A02C3444 */ sb	$t4, %lo(gSaveContext + 0x3DD4)($at)
/* 000767 0x808F969C 3C0D801F */ lui	$t5, %hi(gSaveContext + 0xF54)
/* 000768 0x808F96A0 91AD05C4 */ lbu	$t5, %lo(gSaveContext + 0xF54)($t5)
/* 000769 0x808F96A4 3C01801F */ lui	$at, %hi(gSaveContext + 0xF54)
/* 000770 0x808F96A8 2409003C */ li	$t1, 0X3C
/* 000771 0x808F96AC 31A200F8 */ andi	$v0, $t5, 0XF8
/* 000772 0x808F96B0 304FFFF8 */ andi	$t7, $v0, 0XFFF8
/* 000773 0x808F96B4 35F90002 */ ori	$t9, $t7, 0X2
/* 000774 0x808F96B8 A02205C4 */ sb	$v0, %lo(gSaveContext + 0xF54)($at)
/* 000775 0x808F96BC 3C01801F */ lui	$at, %hi(gSaveContext + 0xF54)
/* 000776 0x808F96C0 03224025 */ or	$t0, $t9, $v0
/* 000777 0x808F96C4 A02805C4 */ sb	$t0, %lo(gSaveContext + 0xF54)($at)
/* 000778 0x808F96C8 AE090174 */ sw	$t1, 0X174($s0)
/* 000779 0x808F96CC 24020001 */ li	$v0, 0X1
.L808F96D0:
/* 000780 0x808F96D0 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000781 0x808F96D4 8FB00020 */ lw	$s0, 0X20($sp)
/* 000782 0x808F96D8 27BD0050 */ addiu	$sp, $sp, 0X50
/* 000783 0x808F96DC 03E00008 */ jr	$ra
/* 000784 0x808F96E0 00000000 */ nop

