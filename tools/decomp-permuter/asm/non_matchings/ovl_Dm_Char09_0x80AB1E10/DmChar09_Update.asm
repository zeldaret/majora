glabel DmChar09_Update
/* 000461 0x80AB2544 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000462 0x80AB2548 AFB00018 */ sw	$s0, 0X18($sp)
/* 000463 0x80AB254C 00808025 */ move	$s0, $a0
/* 000464 0x80AB2550 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000465 0x80AB2554 AFA50024 */ sw	$a1, 0X24($sp)
/* 000466 0x80AB2558 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000467 0x80AB255C 26040144 */ addiu	$a0, $s0, 0X144
/* 000468 0x80AB2560 8E190200 */ lw	$t9, 0X200($s0)
/* 000469 0x80AB2564 02002025 */ move	$a0, $s0
/* 000470 0x80AB2568 8FA50024 */ lw	$a1, 0X24($sp)
/* 000471 0x80AB256C 0320F809 */ jalr	$t9
/* 000472 0x80AB2570 00000000 */ nop
/* 000473 0x80AB2574 02002025 */ move	$a0, $s0
/* 000474 0x80AB2578 0C2AC89A */ jal	func_80AB2268
/* 000475 0x80AB257C 8FA50024 */ lw	$a1, 0X24($sp)
/* 000476 0x80AB2580 02002025 */ move	$a0, $s0
/* 000477 0x80AB2584 0C2AC92F */ jal	func_80AB24BC
/* 000478 0x80AB2588 8FA50024 */ lw	$a1, 0X24($sp)
/* 000479 0x80AB258C 8FAE0024 */ lw	$t6, 0X24($sp)
/* 000480 0x80AB2590 91CF1F2C */ lbu	$t7, 0X1F2C($t6)
/* 000481 0x80AB2594 51E0000C */ beqzl	$t7, .L80AB25C8
/* 000482 0x80AB2598 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000483 0x80AB259C 9218022E */ lbu	$t8, 0X22E($s0)
/* 000484 0x80AB25A0 53000009 */ beqzl	$t8, .L80AB25C8
/* 000485 0x80AB25A4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000486 0x80AB25A8 8608001C */ lh	$t0, 0X1C($s0)
/* 000487 0x80AB25AC 02002025 */ move	$a0, $s0
/* 000488 0x80AB25B0 31090100 */ andi	$t1, $t0, 0X100
/* 000489 0x80AB25B4 51200004 */ beqzl	$t1, .L80AB25C8
/* 000490 0x80AB25B8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000491 0x80AB25BC 0C02E3B2 */ jal	func_800B8EC8
/* 000492 0x80AB25C0 2405304A */ li	$a1, 0X304A
/* 000493 0x80AB25C4 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AB25C8:
/* 000494 0x80AB25C8 8FB00018 */ lw	$s0, 0X18($sp)
/* 000495 0x80AB25CC 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000496 0x80AB25D0 03E00008 */ jr	$ra
/* 000497 0x80AB25D4 00000000 */ nop

