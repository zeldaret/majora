glabel func_80A2C4D0
/* 000564 0x80A2C4D0 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000565 0x80A2C4D4 AFB00020 */ sw	$s0, 0X20($sp)
/* 000566 0x80A2C4D8 00808025 */ move	$s0, $a0
/* 000567 0x80A2C4DC AFBF0024 */ sw	$ra, 0X24($sp)
/* 000568 0x80A2C4E0 AFA50034 */ sw	$a1, 0X34($sp)
/* 000569 0x80A2C4E4 860E001C */ lh	$t6, 0X1C($s0)
/* 000570 0x80A2C4E8 24010001 */ li	$at, 0X1
/* 000571 0x80A2C4EC 8E020120 */ lw	$v0, 0X120($s0)
/* 000572 0x80A2C4F0 31CF000F */ andi	$t7, $t6, 0XF
/* 000573 0x80A2C4F4 15E10015 */ bne	$t7, $at, .L80A2C54C
/* 000574 0x80A2C4F8 8FA40034 */ lw	$a0, 0X34($sp)
/* 000575 0x80A2C4FC 3C0680A3 */ lui	$a2, %hi(D_80A2CBA0)
/* 000576 0x80A2C500 3C0780A3 */ lui	$a3, %hi(D_80A2CBAC)
/* 000577 0x80A2C504 24180005 */ li	$t8, 0X5
/* 000578 0x80A2C508 24190002 */ li	$t9, 0X2
/* 000579 0x80A2C50C AFB90014 */ sw	$t9, 0X14($sp)
/* 000580 0x80A2C510 AFB80010 */ sw	$t8, 0X10($sp)
/* 000581 0x80A2C514 24E7CBAC */ addiu	$a3, $a3, %lo(D_80A2CBAC)
/* 000582 0x80A2C518 24C6CBA0 */ addiu	$a2, $a2, %lo(D_80A2CBA0)
/* 000583 0x80A2C51C 8FA40034 */ lw	$a0, 0X34($sp)
/* 000584 0x80A2C520 26050024 */ addiu	$a1, $s0, 0X24
/* 000585 0x80A2C524 0C02CBC6 */ jal	EffectSS_SpawnExtra
/* 000586 0x80A2C528 AFA2002C */ sw	$v0, 0X2C($sp)
/* 000587 0x80A2C52C 8FA2002C */ lw	$v0, 0X2C($sp)
/* 000588 0x80A2C530 84480280 */ lh	$t0, 0X280($v0)
/* 000589 0x80A2C534 844A026E */ lh	$t2, 0X26E($v0)
/* 000590 0x80A2C538 25090064 */ addiu	$t1, $t0, 0X64
/* 000591 0x80A2C53C 254B0001 */ addiu	$t3, $t2, 0X1
/* 000592 0x80A2C540 A4490280 */ sh	$t1, 0X280($v0)
/* 000593 0x80A2C544 10000012 */ b	.L80A2C590
/* 000594 0x80A2C548 A44B026E */ sh	$t3, 0X26E($v0)
.L80A2C54C:
/* 000595 0x80A2C54C 3C0680A3 */ lui	$a2, %hi(D_80A2CBA0)
/* 000596 0x80A2C550 3C0780A3 */ lui	$a3, %hi(D_80A2CBAC)
/* 000597 0x80A2C554 240C0005 */ li	$t4, 0X5
/* 000598 0x80A2C558 AFAC0010 */ sw	$t4, 0X10($sp)
/* 000599 0x80A2C55C 24E7CBAC */ addiu	$a3, $a3, %lo(D_80A2CBAC)
/* 000600 0x80A2C560 24C6CBA0 */ addiu	$a2, $a2, %lo(D_80A2CBA0)
/* 000601 0x80A2C564 26050024 */ addiu	$a1, $s0, 0X24
/* 000602 0x80A2C568 AFA00014 */ sw	$zero, 0X14($sp)
/* 000603 0x80A2C56C 0C02CBC6 */ jal	EffectSS_SpawnExtra
/* 000604 0x80A2C570 AFA2002C */ sw	$v0, 0X2C($sp)
/* 000605 0x80A2C574 8FA2002C */ lw	$v0, 0X2C($sp)
/* 000606 0x80A2C578 844D0280 */ lh	$t5, 0X280($v0)
/* 000607 0x80A2C57C 844F0278 */ lh	$t7, 0X278($v0)
/* 000608 0x80A2C580 25AE001E */ addiu	$t6, $t5, 0X1E
/* 000609 0x80A2C584 25F80001 */ addiu	$t8, $t7, 0X1
/* 000610 0x80A2C588 A44E0280 */ sh	$t6, 0X280($v0)
/* 000611 0x80A2C58C A4580278 */ sh	$t8, 0X278($v0)
.L80A2C590:
/* 000612 0x80A2C590 02002025 */ move	$a0, $s0
/* 000613 0x80A2C594 0C02E3B2 */ jal	func_800B8EC8
/* 000614 0x80A2C598 24053880 */ li	$a1, 0X3880
/* 000615 0x80A2C59C 3C0580A3 */ lui	$a1, %hi(D_80A2CAE8)
/* 000616 0x80A2C5A0 A60001E2 */ sh	$zero, 0X1E2($s0)
/* 000617 0x80A2C5A4 24A5CAE8 */ addiu	$a1, $a1, %lo(D_80A2CAE8)
/* 000618 0x80A2C5A8 26040144 */ addiu	$a0, $s0, 0X144
/* 000619 0x80A2C5AC 0C02F717 */ jal	func_800BDC5C
/* 000620 0x80A2C5B0 24060004 */ li	$a2, 0X4
/* 000621 0x80A2C5B4 3C0880A3 */ lui	$t0, %hi(func_80A2C5DC)
/* 000622 0x80A2C5B8 241900A0 */ li	$t9, 0XA0
/* 000623 0x80A2C5BC 2508C5DC */ addiu	$t0, $t0, %lo(func_80A2C5DC)
/* 000624 0x80A2C5C0 A61901D8 */ sh	$t9, 0X1D8($s0)
/* 000625 0x80A2C5C4 AE080188 */ sw	$t0, 0X188($s0)
/* 000626 0x80A2C5C8 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000627 0x80A2C5CC 8FB00020 */ lw	$s0, 0X20($sp)
/* 000628 0x80A2C5D0 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000629 0x80A2C5D4 03E00008 */ jr	$ra
/* 000630 0x80A2C5D8 00000000 */ nop

