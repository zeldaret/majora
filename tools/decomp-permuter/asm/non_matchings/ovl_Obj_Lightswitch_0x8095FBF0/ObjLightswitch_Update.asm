glabel ObjLightswitch_Update
/* 000553 0x80960494 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000554 0x80960498 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000555 0x8096049C AFA5002C */ sw	$a1, 0X2C($sp)
/* 000556 0x809604A0 00803825 */ move	$a3, $a0
/* 000557 0x809604A4 90EE0155 */ lbu	$t6, 0X155($a3)
/* 000558 0x809604A8 31CF0002 */ andi	$t7, $t6, 0X2
/* 000559 0x809604AC 51E00024 */ beqzl	$t7, .L80960540
/* 000560 0x809604B0 A0E001B5 */ sb	$zero, 0X1B5($a3)
/* 000561 0x809604B4 8CF80160 */ lw	$t8, 0X160($a3)
/* 000562 0x809604B8 240A000A */ li	$t2, 0XA
/* 000563 0x809604BC 8F190024 */ lw	$t9, 0X24($t8)
/* 000564 0x809604C0 8F280000 */ lw	$t0, 0X0($t9)
/* 000565 0x809604C4 31092000 */ andi	$t1, $t0, 0X2000
/* 000566 0x809604C8 51200004 */ beqzl	$t1, .L809604DC
/* 000567 0x809604CC 84EB001C */ lh	$t3, 0X1C($a3)
/* 000568 0x809604D0 1000001B */ b	.L80960540
/* 000569 0x809604D4 A0EA01B5 */ sb	$t2, 0X1B5($a3)
/* 000570 0x809604D8 84EB001C */ lh	$t3, 0X1C($a3)
.L809604DC:
/* 000571 0x809604DC 24030001 */ li	$v1, 0X1
/* 000572 0x809604E0 000B6103 */ sra	$t4, $t3, 4
/* 000573 0x809604E4 318D0003 */ andi	$t5, $t4, 0X3
/* 000574 0x809604E8 546D000F */ bnel	$v1, $t5, .L80960528
/* 000575 0x809604EC 80E201B5 */ lb	$v0, 0X1B5($a3)
/* 000576 0x809604F0 80E201B5 */ lb	$v0, 0X1B5($a3)
/* 000577 0x809604F4 14400007 */ bnez	$v0, .L80960514
/* 000578 0x809604F8 2841000A */ slti	$at, $v0, 0XA
/* 000579 0x809604FC 90EE01B7 */ lbu	$t6, 0X1B7($a3)
/* 000580 0x80960500 31CF0002 */ andi	$t7, $t6, 0X2
/* 000581 0x80960504 55E0000F */ bnezl	$t7, .L80960544
/* 000582 0x80960508 80E201BD */ lb	$v0, 0X1BD($a3)
/* 000583 0x8096050C 1000000C */ b	.L80960540
/* 000584 0x80960510 A0E301B5 */ sb	$v1, 0X1B5($a3)
.L80960514:
/* 000585 0x80960514 1020000A */ beqz	$at, .L80960540
/* 000586 0x80960518 24580001 */ addiu	$t8, $v0, 0X1
/* 000587 0x8096051C 10000008 */ b	.L80960540
/* 000588 0x80960520 A0F801B5 */ sb	$t8, 0X1B5($a3)
/* 000589 0x80960524 80E201B5 */ lb	$v0, 0X1B5($a3)
.L80960528:
/* 000590 0x80960528 2841000A */ slti	$at, $v0, 0XA
/* 000591 0x8096052C 10200004 */ beqz	$at, .L80960540
/* 000592 0x80960530 24590001 */ addiu	$t9, $v0, 0X1
/* 000593 0x80960534 10000002 */ b	.L80960540
/* 000594 0x80960538 A0F901B5 */ sb	$t9, 0X1B5($a3)
/* 000595 0x8096053C A0E001B5 */ sb	$zero, 0X1B5($a3)
.L80960540:
/* 000596 0x80960540 80E201BD */ lb	$v0, 0X1BD($a3)
.L80960544:
/* 000597 0x80960544 5840000F */ blezl	$v0, .L80960584
/* 000598 0x80960548 AFA70028 */ sw	$a3, 0X28($sp)
/* 000599 0x8096054C 8CE901A4 */ lw	$t1, 0X1A4($a3)
/* 000600 0x80960550 3C088096 */ lui	$t0, %hi(func_80960014)
/* 000601 0x80960554 25080014 */ addiu	$t0, $t0, %lo(func_80960014)
/* 000602 0x80960558 11090009 */ beq	$t0, $t1, .L80960580
/* 000603 0x8096055C 244AFFFF */ addiu	$t2, $v0, -0X1
/* 000604 0x80960560 A0EA01BD */ sb	$t2, 0X1BD($a3)
/* 000605 0x80960564 80EB01BD */ lb	$t3, 0X1BD($a3)
/* 000606 0x80960568 55600006 */ bnezl	$t3, .L80960584
/* 000607 0x8096056C AFA70028 */ sw	$a3, 0X28($sp)
/* 000608 0x80960570 80E40038 */ lb	$a0, 0X38($a3)
/* 000609 0x80960574 0C03C7EF */ jal	ActorCutscene_Stop
/* 000610 0x80960578 AFA70028 */ sw	$a3, 0X28($sp)
/* 000611 0x8096057C 8FA70028 */ lw	$a3, 0X28($sp)
.L80960580:
/* 000612 0x80960580 AFA70028 */ sw	$a3, 0X28($sp)
.L80960584:
/* 000613 0x80960584 8CF901A4 */ lw	$t9, 0X1A4($a3)
/* 000614 0x80960588 00E02025 */ move	$a0, $a3
/* 000615 0x8096058C 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000616 0x80960590 0320F809 */ jalr	$t9
/* 000617 0x80960594 00000000 */ nop
/* 000618 0x80960598 8FA70028 */ lw	$a3, 0X28($sp)
/* 000619 0x8096059C 3C010001 */ lui	$at, 0x0001
/* 000620 0x809605A0 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000621 0x809605A4 8CEC0138 */ lw	$t4, 0X138($a3)
/* 000622 0x809605A8 34218884 */ ori	$at, $at, 0X8884
/* 000623 0x809605AC 5180000E */ beqzl	$t4, .L809605E8
/* 000624 0x809605B0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000625 0x809605B4 90ED0155 */ lbu	$t5, 0X155($a3)
/* 000626 0x809605B8 00812821 */ addu	$a1, $a0, $at
/* 000627 0x809605BC 24E60144 */ addiu	$a2, $a3, 0X144
/* 000628 0x809605C0 A0ED01B7 */ sb	$t5, 0X1B7($a3)
/* 000629 0x809605C4 AFA70028 */ sw	$a3, 0X28($sp)
/* 000630 0x809605C8 AFA60018 */ sw	$a2, 0X18($sp)
/* 000631 0x809605CC 0C038A4A */ jal	Collision_AddOT
/* 000632 0x809605D0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000633 0x809605D4 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000634 0x809605D8 8FA60018 */ lw	$a2, 0X18($sp)
/* 000635 0x809605DC 0C0389D0 */ jal	Collision_AddAC
/* 000636 0x809605E0 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000637 0x809605E4 8FBF0014 */ lw	$ra, 0X14($sp)
.L809605E8:
/* 000638 0x809605E8 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000639 0x809605EC 03E00008 */ jr	$ra
/* 000640 0x809605F0 00000000 */ nop

