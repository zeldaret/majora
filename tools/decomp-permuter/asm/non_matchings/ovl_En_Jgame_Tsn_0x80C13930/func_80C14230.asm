glabel func_80C14230
/* 000576 0x80C14230 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000577 0x80C14234 AFB00018 */ sw	$s0, 0X18($sp)
/* 000578 0x80C14238 00808025 */ move	$s0, $a0
/* 000579 0x80C1423C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000580 0x80C14240 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000581 0x80C14244 8FAE002C */ lw	$t6, 0X2C($sp)
/* 000582 0x80C14248 02002025 */ move	$a0, $s0
/* 000583 0x80C1424C 8DCF1CCC */ lw	$t7, 0X1CCC($t6)
/* 000584 0x80C14250 AFAF0024 */ sw	$t7, 0X24($sp)
/* 000585 0x80C14254 861802FC */ lh	$t8, 0X2FC($s0)
/* 000586 0x80C14258 2B010065 */ slti	$at, $t8, 0X65
/* 000587 0x80C1425C 10200005 */ beqz	$at, .L80C14274
/* 000588 0x80C14260 00000000 */ nop
/* 000589 0x80C14264 0C3052F3 */ jal	func_80C14BCC
/* 000590 0x80C14268 01C02825 */ move	$a1, $t6
/* 000591 0x80C1426C 50400037 */ beqzl	$v0, .L80C1434C
/* 000592 0x80C14270 860F02FC */ lh	$t7, 0X2FC($s0)
.L80C14274:
/* 000593 0x80C14274 0C021BE8 */ jal	rand
/* 000594 0x80C14278 00000000 */ nop
/* 000595 0x80C1427C 24010003 */ li	$at, 0X3
/* 000596 0x80C14280 0041001B */ divu	$zero, $v0, $at
/* 000597 0x80C14284 8E190218 */ lw	$t9, 0X218($s0)
/* 000598 0x80C14288 00001810 */ mfhi	$v1
/* 000599 0x80C1428C A60002FC */ sh	$zero, 0X2FC($s0)
/* 000600 0x80C14290 0079082A */ slt	$at, $v1, $t9
/* 000601 0x80C14294 10200003 */ beqz	$at, .L80C142A4
/* 000602 0x80C14298 00002025 */ move	$a0, $zero
/* 000603 0x80C1429C 10000003 */ b	.L80C142AC
/* 000604 0x80C142A0 AE030218 */ sw	$v1, 0X218($s0)
.L80C142A4:
/* 000605 0x80C142A4 24680001 */ addiu	$t0, $v1, 0X1
/* 000606 0x80C142A8 AE080218 */ sw	$t0, 0X218($s0)
.L80C142AC:
/* 000607 0x80C142AC 02001825 */ move	$v1, $s0
/* 000608 0x80C142B0 24060004 */ li	$a2, 0X4
/* 000609 0x80C142B4 2405FFF7 */ li	$a1, -0X9
.L80C142B8:
/* 000610 0x80C142B8 8E090218 */ lw	$t1, 0X218($s0)
/* 000611 0x80C142BC 5489000B */ bnel	$a0, $t1, .L80C142EC
/* 000612 0x80C142C0 8C620208 */ lw	$v0, 0X208($v1)
/* 000613 0x80C142C4 8C620208 */ lw	$v0, 0X208($v1)
/* 000614 0x80C142C8 904A0000 */ lbu	$t2, 0X0($v0)
/* 000615 0x80C142CC 354B0001 */ ori	$t3, $t2, 0X1
/* 000616 0x80C142D0 A04B0000 */ sb	$t3, 0X0($v0)
/* 000617 0x80C142D4 8C620208 */ lw	$v0, 0X208($v1)
/* 000618 0x80C142D8 904C0000 */ lbu	$t4, 0X0($v0)
/* 000619 0x80C142DC 01856824 */ and	$t5, $t4, $a1
/* 000620 0x80C142E0 10000005 */ b	.L80C142F8
/* 000621 0x80C142E4 A04D0000 */ sb	$t5, 0X0($v0)
/* 000622 0x80C142E8 8C620208 */ lw	$v0, 0X208($v1)
.L80C142EC:
/* 000623 0x80C142EC 904F0000 */ lbu	$t7, 0X0($v0)
/* 000624 0x80C142F0 35F80008 */ ori	$t8, $t7, 0X8
/* 000625 0x80C142F4 A0580000 */ sb	$t8, 0X0($v0)
.L80C142F8:
/* 000626 0x80C142F8 8E190218 */ lw	$t9, 0X218($s0)
/* 000627 0x80C142FC 248E0001 */ addiu	$t6, $a0, 0X1
/* 000628 0x80C14300 24840002 */ addiu	$a0, $a0, 0X2
/* 000629 0x80C14304 55D9000B */ bnel	$t6, $t9, .L80C14334
/* 000630 0x80C14308 8C62020C */ lw	$v0, 0X20C($v1)
/* 000631 0x80C1430C 8C62020C */ lw	$v0, 0X20C($v1)
/* 000632 0x80C14310 90480000 */ lbu	$t0, 0X0($v0)
/* 000633 0x80C14314 35090001 */ ori	$t1, $t0, 0X1
/* 000634 0x80C14318 A0490000 */ sb	$t1, 0X0($v0)
/* 000635 0x80C1431C 8C62020C */ lw	$v0, 0X20C($v1)
/* 000636 0x80C14320 904A0000 */ lbu	$t2, 0X0($v0)
/* 000637 0x80C14324 01455824 */ and	$t3, $t2, $a1
/* 000638 0x80C14328 10000005 */ b	.L80C14340
/* 000639 0x80C1432C A04B0000 */ sb	$t3, 0X0($v0)
/* 000640 0x80C14330 8C62020C */ lw	$v0, 0X20C($v1)
.L80C14334:
/* 000641 0x80C14334 904C0000 */ lbu	$t4, 0X0($v0)
/* 000642 0x80C14338 358D0008 */ ori	$t5, $t4, 0X8
/* 000643 0x80C1433C A04D0000 */ sb	$t5, 0X0($v0)
.L80C14340:
/* 000644 0x80C14340 1486FFDD */ bne	$a0, $a2, .L80C142B8
/* 000645 0x80C14344 24630008 */ addiu	$v1, $v1, 0X8
/* 000646 0x80C14348 860F02FC */ lh	$t7, 0X2FC($s0)
.L80C1434C:
/* 000647 0x80C1434C 25F80001 */ addiu	$t8, $t7, 0X1
/* 000648 0x80C14350 A61802FC */ sh	$t8, 0X2FC($s0)
/* 000649 0x80C14354 8FAE0024 */ lw	$t6, 0X24($sp)
/* 000650 0x80C14358 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000651 0x80C1435C 95D90090 */ lhu	$t9, 0X90($t6)
/* 000652 0x80C14360 33280002 */ andi	$t0, $t9, 0X2
/* 000653 0x80C14364 51000020 */ beqzl	$t0, .L80C143E8
/* 000654 0x80C14368 8FB90024 */ lw	$t9, 0X24($sp)
/* 000655 0x80C1436C 0C30526C */ jal	func_80C149B0
/* 000656 0x80C14370 26050200 */ addiu	$a1, $s0, 0X200
/* 000657 0x80C14374 1040001B */ beqz	$v0, .L80C143E4
/* 000658 0x80C14378 26040190 */ addiu	$a0, $s0, 0X190
/* 000659 0x80C1437C 3C0580C1 */ lui	$a1, %hi(D_80C15030)
/* 000660 0x80C14380 24A55030 */ addiu	$a1, $a1, %lo(D_80C15030)
/* 000661 0x80C14384 0C02F717 */ jal	func_800BDC5C
/* 000662 0x80C14388 24060002 */ li	$a2, 0X2
/* 000663 0x80C1438C 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000664 0x80C14390 2405109F */ li	$a1, 0X109F
/* 000665 0x80C14394 0C05462C */ jal	func_801518B0
/* 000666 0x80C14398 02003025 */ move	$a2, $s0
/* 000667 0x80C1439C 8FA30024 */ lw	$v1, 0X24($sp)
/* 000668 0x80C143A0 2409109F */ li	$t1, 0X109F
/* 000669 0x80C143A4 A6090300 */ sh	$t1, 0X300($s0)
/* 000670 0x80C143A8 8C6A0A6C */ lw	$t2, 0XA6C($v1)
/* 000671 0x80C143AC 354B0020 */ ori	$t3, $t2, 0X20
/* 000672 0x80C143B0 AC6B0A6C */ sw	$t3, 0XA6C($v1)
/* 000673 0x80C143B4 8E0C0218 */ lw	$t4, 0X218($s0)
/* 000674 0x80C143B8 000C6880 */ sll	$t5, $t4, 2
/* 000675 0x80C143BC 020D7821 */ addu	$t7, $s0, $t5
/* 000676 0x80C143C0 8DE20208 */ lw	$v0, 0X208($t7)
/* 000677 0x80C143C4 90580000 */ lbu	$t8, 0X0($v0)
/* 000678 0x80C143C8 330EFFFE */ andi	$t6, $t8, 0XFFFE
/* 000679 0x80C143CC 0C068B08 */ jal	func_801A2C20
/* 000680 0x80C143D0 A04E0000 */ sb	$t6, 0X0($v0)
/* 000681 0x80C143D4 0C30500C */ jal	func_80C14030
/* 000682 0x80C143D8 02002025 */ move	$a0, $s0
/* 000683 0x80C143DC 10000021 */ b	.L80C14464
/* 000684 0x80C143E0 00000000 */ nop
.L80C143E4:
/* 000685 0x80C143E4 8FB90024 */ lw	$t9, 0X24($sp)
.L80C143E8:
/* 000686 0x80C143E8 3C0580C1 */ lui	$a1, %hi(D_80C15030)
/* 000687 0x80C143EC 24A55030 */ addiu	$a1, $a1, %lo(D_80C15030)
/* 000688 0x80C143F0 97220090 */ lhu	$v0, 0X90($t9)
/* 000689 0x80C143F4 26040190 */ addiu	$a0, $s0, 0X190
/* 000690 0x80C143F8 30480040 */ andi	$t0, $v0, 0X40
/* 000691 0x80C143FC 15000003 */ bnez	$t0, .L80C1440C
/* 000692 0x80C14400 30490020 */ andi	$t1, $v0, 0X20
/* 000693 0x80C14404 11200017 */ beqz	$t1, .L80C14464
/* 000694 0x80C14408 00000000 */ nop
.L80C1440C:
/* 000695 0x80C1440C 0C02F717 */ jal	func_800BDC5C
/* 000696 0x80C14410 24060002 */ li	$a2, 0X2
/* 000697 0x80C14414 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000698 0x80C14418 240510A0 */ li	$a1, 0X10A0
/* 000699 0x80C1441C 0C05462C */ jal	func_801518B0
/* 000700 0x80C14420 02003025 */ move	$a2, $s0
/* 000701 0x80C14424 240A10A0 */ li	$t2, 0X10A0
/* 000702 0x80C14428 A60A0300 */ sh	$t2, 0X300($s0)
/* 000703 0x80C1442C 8FAB0024 */ lw	$t3, 0X24($sp)
/* 000704 0x80C14430 8D6C0A6C */ lw	$t4, 0XA6C($t3)
/* 000705 0x80C14434 358D0020 */ ori	$t5, $t4, 0X20
/* 000706 0x80C14438 AD6D0A6C */ sw	$t5, 0XA6C($t3)
/* 000707 0x80C1443C 8E0F0218 */ lw	$t7, 0X218($s0)
/* 000708 0x80C14440 000FC080 */ sll	$t8, $t7, 2
/* 000709 0x80C14444 02187021 */ addu	$t6, $s0, $t8
/* 000710 0x80C14448 8DC20208 */ lw	$v0, 0X208($t6)
/* 000711 0x80C1444C 90590000 */ lbu	$t9, 0X0($v0)
/* 000712 0x80C14450 3328FFFE */ andi	$t0, $t9, 0XFFFE
/* 000713 0x80C14454 0C068B08 */ jal	func_801A2C20
/* 000714 0x80C14458 A0480000 */ sb	$t0, 0X0($v0)
/* 000715 0x80C1445C 0C30500C */ jal	func_80C14030
/* 000716 0x80C14460 02002025 */ move	$a0, $s0
.L80C14464:
/* 000717 0x80C14464 3C0A801F */ lui	$t2, %hi(gSaveContext + 0x3E00)
/* 000718 0x80C14468 8D4A3470 */ lw	$t2, %lo(gSaveContext + 0x3E00)($t2)
/* 000719 0x80C1446C 3C0B801F */ lui	$t3, %hi(gSaveContext + 0x3E04)
/* 000720 0x80C14470 8D6B3474 */ lw	$t3, %lo(gSaveContext + 0x3E04)($t3)
/* 000721 0x80C14474 55400017 */ bnezl	$t2, .L80C144D4
/* 000722 0x80C14478 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000723 0x80C1447C 15600014 */ bnez	$t3, .L80C144D0
/* 000724 0x80C14480 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000725 0x80C14484 240510A1 */ li	$a1, 0X10A1
/* 000726 0x80C14488 0C05462C */ jal	func_801518B0
/* 000727 0x80C1448C 02003025 */ move	$a2, $s0
/* 000728 0x80C14490 240910A1 */ li	$t1, 0X10A1
/* 000729 0x80C14494 A6090300 */ sh	$t1, 0X300($s0)
/* 000730 0x80C14498 8FAC0024 */ lw	$t4, 0X24($sp)
/* 000731 0x80C1449C 8D8D0A6C */ lw	$t5, 0XA6C($t4)
/* 000732 0x80C144A0 35AF0020 */ ori	$t7, $t5, 0X20
/* 000733 0x80C144A4 AD8F0A6C */ sw	$t7, 0XA6C($t4)
/* 000734 0x80C144A8 8E180218 */ lw	$t8, 0X218($s0)
/* 000735 0x80C144AC 00187080 */ sll	$t6, $t8, 2
/* 000736 0x80C144B0 020EC821 */ addu	$t9, $s0, $t6
/* 000737 0x80C144B4 8F220208 */ lw	$v0, 0X208($t9)
/* 000738 0x80C144B8 90480000 */ lbu	$t0, 0X0($v0)
/* 000739 0x80C144BC 310AFFFE */ andi	$t2, $t0, 0XFFFE
/* 000740 0x80C144C0 0C068B08 */ jal	func_801A2C20
/* 000741 0x80C144C4 A04A0000 */ sb	$t2, 0X0($v0)
/* 000742 0x80C144C8 0C30500C */ jal	func_80C14030
/* 000743 0x80C144CC 02002025 */ move	$a0, $s0
.L80C144D0:
/* 000744 0x80C144D0 8FBF001C */ lw	$ra, 0X1C($sp)
.L80C144D4:
/* 000745 0x80C144D4 8FB00018 */ lw	$s0, 0X18($sp)
/* 000746 0x80C144D8 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000747 0x80C144DC 03E00008 */ jr	$ra
/* 000748 0x80C144E0 00000000 */ nop

