glabel func_80AF91E8
/* 001450 0x80AF91E8 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 001451 0x80AF91EC AFB00018 */ sw	$s0, 0X18($sp)
/* 001452 0x80AF91F0 00808025 */ move	$s0, $a0
/* 001453 0x80AF91F4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001454 0x80AF91F8 AFA50034 */ sw	$a1, 0X34($sp)
/* 001455 0x80AF91FC AFA60038 */ sw	$a2, 0X38($sp)
/* 001456 0x80AF9200 860E001C */ lh	$t6, 0X1C($s0)
/* 001457 0x80AF9204 3C08801F */ lui	$t0, %hi(gSaveContext + 0xC)
/* 001458 0x80AF9208 9508F67C */ lhu	$t0, %lo(gSaveContext + 0xC)($t0)
/* 001459 0x80AF920C 31CF00FF */ andi	$t7, $t6, 0XFF
/* 001460 0x80AF9210 A3AF002B */ sb	$t7, 0X2B($sp)
/* 001461 0x80AF9214 AE000234 */ sw	$zero, 0X234($s0)
/* 001462 0x80AF9218 8FB80038 */ lw	$t8, 0X38($sp)
/* 001463 0x80AF921C 3C0780B0 */ lui	$a3, %hi(D_80AFB430)
/* 001464 0x80AF9220 2508C004 */ addiu	$t0, $t0, -0X3FFC
/* 001465 0x80AF9224 93190000 */ lbu	$t9, 0X0($t8)
/* 001466 0x80AF9228 3108FFFF */ andi	$t0, $t0, 0XFFFF
/* 001467 0x80AF922C 00001825 */ move	$v1, $zero
/* 001468 0x80AF9230 00194880 */ sll	$t1, $t9, 2
/* 001469 0x80AF9234 00E93821 */ addu	$a3, $a3, $t1
/* 001470 0x80AF9238 8CE7B430 */ lw	$a3, %lo(D_80AFB430)($a3)
/* 001471 0x80AF923C 8FA40034 */ lw	$a0, 0X34($sp)
/* 001472 0x80AF9240 04E2000A */ bltzl	$a3, .L80AF926C
/* 001473 0x80AF9244 8E020234 */ lw	$v0, 0X234($s0)
/* 001474 0x80AF9248 93A5002B */ lbu	$a1, 0X2B($sp)
/* 001475 0x80AF924C 00E03025 */ move	$a2, $a3
/* 001476 0x80AF9250 AFA30020 */ sw	$v1, 0X20($sp)
/* 001477 0x80AF9254 0C04EECD */ jal	func_8013BB34
/* 001478 0x80AF9258 A7A8002E */ sh	$t0, 0X2E($sp)
/* 001479 0x80AF925C 8FA30020 */ lw	$v1, 0X20($sp)
/* 001480 0x80AF9260 97A8002E */ lhu	$t0, 0X2E($sp)
/* 001481 0x80AF9264 AE020234 */ sw	$v0, 0X234($s0)
/* 001482 0x80AF9268 8E020234 */ lw	$v0, 0X234($s0)
.L80AF926C:
/* 001483 0x80AF926C 10400007 */ beqz	$v0, .L80AF928C
/* 001484 0x80AF9270 00000000 */ nop
/* 001485 0x80AF9274 904A0000 */ lbu	$t2, 0X0($v0)
/* 001486 0x80AF9278 29410003 */ slti	$at, $t2, 0X3
/* 001487 0x80AF927C 10200003 */ beqz	$at, .L80AF928C
/* 001488 0x80AF9280 00000000 */ nop
/* 001489 0x80AF9284 AE000234 */ sw	$zero, 0X234($s0)
/* 001490 0x80AF9288 00001025 */ move	$v0, $zero
.L80AF928C:
/* 001491 0x80AF928C 10400081 */ beqz	$v0, .L80AF9494
/* 001492 0x80AF9290 8FAD0038 */ lw	$t5, 0X38($sp)
/* 001493 0x80AF9294 92020258 */ lbu	$v0, 0X258($s0)
/* 001494 0x80AF9298 240529AD */ li	$a1, 0X29AD
/* 001495 0x80AF929C 28410026 */ slti	$at, $v0, 0X26
/* 001496 0x80AF92A0 50200009 */ beqzl	$at, .L80AF92C8
/* 001497 0x80AF92A4 8FAC0038 */ lw	$t4, 0X38($sp)
/* 001498 0x80AF92A8 50400007 */ beqzl	$v0, .L80AF92C8
/* 001499 0x80AF92AC 8FAC0038 */ lw	$t4, 0X38($sp)
/* 001500 0x80AF92B0 860B0374 */ lh	$t3, 0X374($s0)
/* 001501 0x80AF92B4 05620004 */ bltzl	$t3, .L80AF92C8
/* 001502 0x80AF92B8 8FAC0038 */ lw	$t4, 0X38($sp)
/* 001503 0x80AF92BC 10000003 */ b	.L80AF92CC
/* 001504 0x80AF92C0 3103FFFF */ andi	$v1, $t0, 0XFFFF
/* 001505 0x80AF92C4 8FAC0038 */ lw	$t4, 0X38($sp)
.L80AF92C8:
/* 001506 0x80AF92C8 95830006 */ lhu	$v1, 0X6($t4)
.L80AF92CC:
/* 001507 0x80AF92CC 8DA20008 */ lw	$v0, 0X8($t5)
/* 001508 0x80AF92D0 00602025 */ move	$a0, $v1
/* 001509 0x80AF92D4 0104C823 */ subu	$t9, $t0, $a0
/* 001510 0x80AF92D8 0043082A */ slt	$at, $v0, $v1
/* 001511 0x80AF92DC 50200007 */ beqzl	$at, .L80AF92FC
/* 001512 0x80AF92E0 0044C023 */ subu	$t8, $v0, $a0
/* 001513 0x80AF92E4 00627023 */ subu	$t6, $v1, $v0
/* 001514 0x80AF92E8 3401FFFF */ ori	$at, $zero, 0XFFFF
/* 001515 0x80AF92EC 01C17821 */ addu	$t7, $t6, $at
/* 001516 0x80AF92F0 10000003 */ b	.L80AF9300
/* 001517 0x80AF92F4 AE0F0248 */ sw	$t7, 0X248($s0)
/* 001518 0x80AF92F8 0044C023 */ subu	$t8, $v0, $a0
.L80AF92FC:
/* 001519 0x80AF92FC AE180248 */ sw	$t8, 0X248($s0)
.L80AF9300:
/* 001520 0x80AF9300 8E090234 */ lw	$t1, 0X234($s0)
/* 001521 0x80AF9304 AE190254 */ sw	$t9, 0X254($s0)
/* 001522 0x80AF9308 8E0A0248 */ lw	$t2, 0X248($s0)
/* 001523 0x80AF930C 91230000 */ lbu	$v1, 0X0($t1)
/* 001524 0x80AF9310 8E0B0254 */ lw	$t3, 0X254($s0)
/* 001525 0x80AF9314 960E0356 */ lhu	$t6, 0X356($s0)
/* 001526 0x80AF9318 2463FFFE */ addiu	$v1, $v1, -0X2
/* 001527 0x80AF931C 3063FFFF */ andi	$v1, $v1, 0XFFFF
/* 001528 0x80AF9320 0143001A */ div	$zero, $t2, $v1
/* 001529 0x80AF9324 00001012 */ mflo	$v0
/* 001530 0x80AF9328 92090258 */ lbu	$t1, 0X258($s0)
/* 001531 0x80AF932C 14600002 */ bnez	$v1, .L80AF9338
/* 001532 0x80AF9330 00000000 */ nop
/* 001533 0x80AF9334 0007000D */ break	0x00007
.L80AF9338:
/* 001534 0x80AF9338 2401FFFF */ li	$at, -0X1
/* 001535 0x80AF933C 14610004 */ bne	$v1, $at, .L80AF9350
/* 001536 0x80AF9340 3C018000 */ lui	$at, 0x8000
/* 001537 0x80AF9344 15410002 */ bne	$t2, $at, .L80AF9350
/* 001538 0x80AF9348 00000000 */ nop
/* 001539 0x80AF934C 0006000D */ break	0x00006
.L80AF9350:
/* 001540 0x80AF9350 0162001A */ div	$zero, $t3, $v0
/* 001541 0x80AF9354 00006012 */ mflo	$t4
/* 001542 0x80AF9358 258D0002 */ addiu	$t5, $t4, 0X2
/* 001543 0x80AF935C AE02024C */ sw	$v0, 0X24C($s0)
/* 001544 0x80AF9360 14400002 */ bnez	$v0, .L80AF936C
/* 001545 0x80AF9364 00000000 */ nop
/* 001546 0x80AF9368 0007000D */ break	0x00007
.L80AF936C:
/* 001547 0x80AF936C 2401FFFF */ li	$at, -0X1
/* 001548 0x80AF9370 14410004 */ bne	$v0, $at, .L80AF9384
/* 001549 0x80AF9374 3C018000 */ lui	$at, 0x8000
/* 001550 0x80AF9378 15610002 */ bne	$t3, $at, .L80AF9384
/* 001551 0x80AF937C 00000000 */ nop
/* 001552 0x80AF9380 0006000D */ break	0x00006
.L80AF9384:
/* 001553 0x80AF9384 2401FFF7 */ li	$at, -0X9
/* 001554 0x80AF9388 01C17824 */ and	$t7, $t6, $at
/* 001555 0x80AF938C 31F8FFFF */ andi	$t8, $t7, 0XFFFF
/* 001556 0x80AF9390 2401FFEF */ li	$at, -0X11
/* 001557 0x80AF9394 0301C824 */ and	$t9, $t8, $at
/* 001558 0x80AF9398 A60F0356 */ sh	$t7, 0X356($s0)
/* 001559 0x80AF939C 2401001B */ li	$at, 0X1B
/* 001560 0x80AF93A0 AE0D0250 */ sw	$t5, 0X250($s0)
/* 001561 0x80AF93A4 15210006 */ bne	$t1, $at, .L80AF93C0
/* 001562 0x80AF93A8 A6190356 */ sh	$t9, 0X356($s0)
/* 001563 0x80AF93AC 0C02E3B2 */ jal	func_800B8EC8
/* 001564 0x80AF93B0 02002025 */ move	$a0, $s0
/* 001565 0x80AF93B4 8FA40034 */ lw	$a0, 0X34($sp)
/* 001566 0x80AF93B8 0C02D70D */ jal	Actor_UnsetSwitchFlag
/* 001567 0x80AF93BC 00002825 */ move	$a1, $zero
.L80AF93C0:
/* 001568 0x80AF93C0 8FAA0038 */ lw	$t2, 0X38($sp)
/* 001569 0x80AF93C4 26040356 */ addiu	$a0, $s0, 0X356
/* 001570 0x80AF93C8 24050003 */ li	$a1, 0X3
/* 001571 0x80AF93CC 914B0000 */ lbu	$t3, 0X0($t2)
/* 001572 0x80AF93D0 256CFFAE */ addiu	$t4, $t3, -0X52
/* 001573 0x80AF93D4 2D81000A */ sltiu	$at, $t4, 0XA
/* 001574 0x80AF93D8 10200018 */ beqz	$at, .L80AF943C
/* 001575 0x80AF93DC 000C6080 */ sll	$t4, $t4, 2
/* 001576 0x80AF93E0 3C0180B0 */ lui	$at, %hi(jtbl_D_80AFBB2C)
/* 001577 0x80AF93E4 002C0821 */ addu	$at, $at, $t4
/* 001578 0x80AF93E8 8C2CBB2C */ lw	$t4, %lo(jtbl_D_80AFBB2C)($at)
/* 001579 0x80AF93EC 01800008 */ jr	$t4
/* 001580 0x80AF93F0 00000000 */ nop
glabel L80AF93F4
.L80AF93F4:
/* 001581 0x80AF93F4 960D0356 */ lhu	$t5, 0X356($s0)
/* 001582 0x80AF93F8 35AF9000 */ ori	$t7, $t5, 0X9000
/* 001583 0x80AF93FC A60F0356 */ sh	$t7, 0X356($s0)
/* 001584 0x80AF9400 35F80200 */ ori	$t8, $t7, 0X200
/* 001585 0x80AF9404 A6180356 */ sh	$t8, 0X356($s0)
glabel L80AF9408
.L80AF9408:
/* 001586 0x80AF9408 02002025 */ move	$a0, $s0
/* 001587 0x80AF940C 0C2BDFA6 */ jal	func_80AF7E98
/* 001588 0x80AF9410 00002825 */ move	$a1, $zero
/* 001589 0x80AF9414 1000001C */ b	.L80AF9488
/* 001590 0x80AF9418 3C01BF80 */ lui	$at, 0xBF80
glabel L80AF941C
.L80AF941C:
/* 001591 0x80AF941C 96190356 */ lhu	$t9, 0X356($s0)
/* 001592 0x80AF9420 02002025 */ move	$a0, $s0
/* 001593 0x80AF9424 2405000C */ li	$a1, 0XC
/* 001594 0x80AF9428 37299000 */ ori	$t1, $t9, 0X9000
/* 001595 0x80AF942C 0C2BDFA6 */ jal	func_80AF7E98
/* 001596 0x80AF9430 A6090356 */ sh	$t1, 0X356($s0)
/* 001597 0x80AF9434 10000014 */ b	.L80AF9488
/* 001598 0x80AF9438 3C01BF80 */ lui	$at, 0xBF80
.L80AF943C:
/* 001599 0x80AF943C 0C04EBB5 */ jal	func_8013AED4
/* 001600 0x80AF9440 24060007 */ li	$a2, 0X7
/* 001601 0x80AF9444 02002025 */ move	$a0, $s0
/* 001602 0x80AF9448 0C2BDFA6 */ jal	func_80AF7E98
/* 001603 0x80AF944C 00002825 */ move	$a1, $zero
/* 001604 0x80AF9450 3C0A801F */ lui	$t2, %hi(gSaveContext + 0xF52)
/* 001605 0x80AF9454 914A05C2 */ lbu	$t2, %lo(gSaveContext + 0xF52)($t2)
/* 001606 0x80AF9458 314B0008 */ andi	$t3, $t2, 0X8
/* 001607 0x80AF945C 51600005 */ beqzl	$t3, .L80AF9474
/* 001608 0x80AF9460 960E0356 */ lhu	$t6, 0X356($s0)
/* 001609 0x80AF9464 960C0356 */ lhu	$t4, 0X356($s0)
/* 001610 0x80AF9468 358D0800 */ ori	$t5, $t4, 0X800
/* 001611 0x80AF946C A60D0356 */ sh	$t5, 0X356($s0)
/* 001612 0x80AF9470 960E0356 */ lhu	$t6, 0X356($s0)
.L80AF9474:
/* 001613 0x80AF9474 35D89000 */ ori	$t8, $t6, 0X9000
/* 001614 0x80AF9478 A6180356 */ sh	$t8, 0X356($s0)
/* 001615 0x80AF947C 37190200 */ ori	$t9, $t8, 0X200
/* 001616 0x80AF9480 A6190356 */ sh	$t9, 0X356($s0)
/* 001617 0x80AF9484 3C01BF80 */ lui	$at, 0xBF80
.L80AF9488:
/* 001618 0x80AF9488 44812000 */ mtc1	$at, $f4
/* 001619 0x80AF948C 24030001 */ li	$v1, 0X1
/* 001620 0x80AF9490 E6040074 */ swc1	$f4, 0X74($s0)
.L80AF9494:
/* 001621 0x80AF9494 00601025 */ move	$v0, $v1
/* 001622 0x80AF9498 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001623 0x80AF949C 8FB00018 */ lw	$s0, 0X18($sp)
/* 001624 0x80AF94A0 27BD0030 */ addiu	$sp, $sp, 0X30
/* 001625 0x80AF94A4 03E00008 */ jr	$ra
/* 001626 0x80AF94A8 00000000 */ nop


.section .late_rodata

glabel jtbl_D_80AFBB2C
/* 004091 0x80AFBB2C */ .word	L80AF9408
/* 004092 0x80AFBB30 */ .word	L80AF93F4
/* 004093 0x80AFBB34 */ .word	L80AF93F4
/* 004094 0x80AFBB38 */ .word	L80AF93F4
/* 004095 0x80AFBB3C */ .word	L80AF93F4
/* 004096 0x80AFBB40 */ .word	L80AF93F4
/* 004097 0x80AFBB44 */ .word	L80AF93F4
/* 004098 0x80AFBB48 */ .word	L80AF93F4
/* 004099 0x80AFBB4C */ .word	L80AF93F4
/* 004100 0x80AFBB50 */ .word	L80AF941C
