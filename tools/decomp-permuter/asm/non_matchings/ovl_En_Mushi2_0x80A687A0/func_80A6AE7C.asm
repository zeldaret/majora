glabel func_80A6AE7C
/* 002487 0x80A6AE7C 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 002488 0x80A6AE80 AFB00020 */ sw	$s0, 0X20($sp)
/* 002489 0x80A6AE84 00808025 */ move	$s0, $a0
/* 002490 0x80A6AE88 AFBF0024 */ sw	$ra, 0X24($sp)
/* 002491 0x80A6AE8C AFA5002C */ sw	$a1, 0X2C($sp)
/* 002492 0x80A6AE90 860E00BC */ lh	$t6, 0XBC($s0)
/* 002493 0x80A6AE94 861800BE */ lh	$t8, 0XBE($s0)
/* 002494 0x80A6AE98 25CFFE0C */ addiu	$t7, $t6, -0X1F4
/* 002495 0x80A6AE9C 271900C8 */ addiu	$t9, $t8, 0XC8
/* 002496 0x80A6AEA0 A60F00BC */ sh	$t7, 0XBC($s0)
/* 002497 0x80A6AEA4 0C021BF7 */ jal	randZeroOne
/* 002498 0x80A6AEA8 A61900BE */ sh	$t9, 0XBE($s0)
/* 002499 0x80A6AEAC 3C013F00 */ lui	$at, 0x3F00
/* 002500 0x80A6AEB0 44812000 */ mtc1	$at, $f4
/* 002501 0x80A6AEB4 3C0180A7 */ lui	$at, %hi(D_80A6BAA8)
/* 002502 0x80A6AEB8 C428BAA8 */ lwc1	$f8, %lo(D_80A6BAA8)($at)
/* 002503 0x80A6AEBC 46040181 */ sub.s	$f6, $f0, $f4
/* 002504 0x80A6AEC0 C6100070 */ lwc1	$f16, 0X70($s0)
/* 002505 0x80A6AEC4 3C0180A7 */ lui	$at, %hi(D_80A6BAAC)
/* 002506 0x80A6AEC8 46083282 */ mul.s	$f10, $f6, $f8
/* 002507 0x80A6AECC 460A8480 */ add.s	$f18, $f16, $f10
/* 002508 0x80A6AED0 E6120070 */ swc1	$f18, 0X70($s0)
/* 002509 0x80A6AED4 C6040070 */ lwc1	$f4, 0X70($s0)
/* 002510 0x80A6AED8 C426BAAC */ lwc1	$f6, %lo(D_80A6BAAC)($at)
/* 002511 0x80A6AEDC 46062202 */ mul.s	$f8, $f4, $f6
/* 002512 0x80A6AEE0 0C021BF7 */ jal	randZeroOne
/* 002513 0x80A6AEE4 E6080070 */ swc1	$f8, 0X70($s0)
/* 002514 0x80A6AEE8 3C013F00 */ lui	$at, 0x3F00
/* 002515 0x80A6AEEC 44818000 */ mtc1	$at, $f16
/* 002516 0x80A6AEF0 3C0144FA */ lui	$at, 0x44FA
/* 002517 0x80A6AEF4 44819000 */ mtc1	$at, $f18
/* 002518 0x80A6AEF8 46100281 */ sub.s	$f10, $f0, $f16
/* 002519 0x80A6AEFC 860C0032 */ lh	$t4, 0X32($s0)
/* 002520 0x80A6AF00 46125102 */ mul.s	$f4, $f10, $f18
/* 002521 0x80A6AF04 4600218D */ trunc.w.s	$f6, $f4
/* 002522 0x80A6AF08 440B3000 */ mfc1	$t3, $f6
/* 002523 0x80A6AF0C 00000000 */ nop
/* 002524 0x80A6AF10 018B6821 */ addu	$t5, $t4, $t3
/* 002525 0x80A6AF14 0C021BF7 */ jal	randZeroOne
/* 002526 0x80A6AF18 A60D0032 */ sh	$t5, 0X32($s0)
/* 002527 0x80A6AF1C 3C0180A7 */ lui	$at, %hi(D_80A6BAB0)
/* 002528 0x80A6AF20 C428BAB0 */ lwc1	$f8, %lo(D_80A6BAB0)($at)
/* 002529 0x80A6AF24 3C0180A7 */ lui	$at, %hi(D_80A6BAB4)
/* 002530 0x80A6AF28 C430BAB4 */ lwc1	$f16, %lo(D_80A6BAB4)($at)
/* 002531 0x80A6AF2C 3C0180A7 */ lui	$at, %hi(D_80A6BAB8)
/* 002532 0x80A6AF30 C6040068 */ lwc1	$f4, 0X68($s0)
/* 002533 0x80A6AF34 46100282 */ mul.s	$f10, $f0, $f16
/* 002534 0x80A6AF38 02002025 */ move	$a0, $s0
/* 002535 0x80A6AF3C 460A4481 */ sub.s	$f18, $f8, $f10
/* 002536 0x80A6AF40 E6120074 */ swc1	$f18, 0X74($s0)
/* 002537 0x80A6AF44 C426BAB8 */ lwc1	$f6, %lo(D_80A6BAB8)($at)
/* 002538 0x80A6AF48 46062402 */ mul.s	$f16, $f4, $f6
/* 002539 0x80A6AF4C 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 002540 0x80A6AF50 E6100068 */ swc1	$f16, 0X68($s0)
/* 002541 0x80A6AF54 02002025 */ move	$a0, $s0
/* 002542 0x80A6AF58 0C29A509 */ jal	func_80A69424
/* 002543 0x80A6AF5C 8FA5002C */ lw	$a1, 0X2C($sp)
/* 002544 0x80A6AF60 3C0180A7 */ lui	$at, %hi(D_80A6BABC)
/* 002545 0x80A6AF64 C42CBABC */ lwc1	$f12, %lo(D_80A6BABC)($at)
/* 002546 0x80A6AF68 3C0180A7 */ lui	$at, %hi(D_80A6BAC0)
/* 002547 0x80A6AF6C C42ABAC0 */ lwc1	$f10, %lo(D_80A6BAC0)($at)
/* 002548 0x80A6AF70 C6080058 */ lwc1	$f8, 0X58($s0)
/* 002549 0x80A6AF74 460A4081 */ sub.s	$f2, $f8, $f10
/* 002550 0x80A6AF78 460C103C */ c.lt.s	$f2, $f12
/* 002551 0x80A6AF7C 00000000 */ nop
/* 002552 0x80A6AF80 45020004 */ bc1fl .L80A6AF94
/* 002553 0x80A6AF84 46001006 */ mov.s	$f0, $f2
/* 002554 0x80A6AF88 10000002 */ b	.L80A6AF94
/* 002555 0x80A6AF8C 46006006 */ mov.s	$f0, $f12
/* 002556 0x80A6AF90 46001006 */ mov.s	$f0, $f2
.L80A6AF94:
/* 002557 0x80A6AF94 44050000 */ mfc1	$a1, $f0
/* 002558 0x80A6AF98 0C02D9F8 */ jal	Actor_SetScale
/* 002559 0x80A6AF9C 02002025 */ move	$a0, $s0
/* 002560 0x80A6AFA0 8E0E0004 */ lw	$t6, 0X4($s0)
/* 002561 0x80A6AFA4 3C0140A0 */ lui	$at, 0x40A0
/* 002562 0x80A6AFA8 31CF0040 */ andi	$t7, $t6, 0X40
/* 002563 0x80A6AFAC 51E00029 */ beqzl	$t7, .L80A6B054
/* 002564 0x80A6AFB0 86080368 */ lh	$t0, 0X368($s0)
/* 002565 0x80A6AFB4 C600008C */ lwc1	$f0, 0X8C($s0)
/* 002566 0x80A6AFB8 44819000 */ mtc1	$at, $f18
/* 002567 0x80A6AFBC 3C0141F0 */ lui	$at, 0x41F0
/* 002568 0x80A6AFC0 4600903C */ c.lt.s	$f18, $f0
/* 002569 0x80A6AFC4 00000000 */ nop
/* 002570 0x80A6AFC8 45020022 */ bc1fl .L80A6B054
/* 002571 0x80A6AFCC 86080368 */ lh	$t0, 0X368($s0)
/* 002572 0x80A6AFD0 44812000 */ mtc1	$at, $f4
/* 002573 0x80A6AFD4 00000000 */ nop
/* 002574 0x80A6AFD8 4604003C */ c.lt.s	$f0, $f4
/* 002575 0x80A6AFDC 00000000 */ nop
/* 002576 0x80A6AFE0 4502001C */ bc1fl .L80A6B054
/* 002577 0x80A6AFE4 86080368 */ lh	$t0, 0X368($s0)
/* 002578 0x80A6AFE8 0C021BE8 */ jal	rand
/* 002579 0x80A6AFEC 00000000 */ nop
/* 002580 0x80A6AFF0 86190368 */ lh	$t9, 0X368($s0)
/* 002581 0x80A6AFF4 305801FF */ andi	$t8, $v0, 0X1FF
/* 002582 0x80A6AFF8 0319082A */ slt	$at, $t8, $t9
/* 002583 0x80A6AFFC 50200015 */ beqzl	$at, .L80A6B054
/* 002584 0x80A6B000 86080368 */ lh	$t0, 0X368($s0)
/* 002585 0x80A6B004 0C021BF7 */ jal	randZeroOne
/* 002586 0x80A6B008 00000000 */ nop
/* 002587 0x80A6B00C 3C0140A0 */ lui	$at, 0x40A0
/* 002588 0x80A6B010 44811000 */ mtc1	$at, $f2
/* 002589 0x80A6B014 3C014080 */ lui	$at, 0x4080
/* 002590 0x80A6B018 44813000 */ mtc1	$at, $f6
/* 002591 0x80A6B01C 3C014000 */ lui	$at, 0x4000
/* 002592 0x80A6B020 44814000 */ mtc1	$at, $f8
/* 002593 0x80A6B024 46060402 */ mul.s	$f16, $f0, $f6
/* 002594 0x80A6B028 E7A20010 */ swc1	$f2, 0X10($sp)
/* 002595 0x80A6B02C C6120058 */ lwc1	$f18, 0X58($s0)
/* 002596 0x80A6B030 44071000 */ mfc1	$a3, $f2
/* 002597 0x80A6B034 8FA4002C */ lw	$a0, 0X2C($sp)
/* 002598 0x80A6B038 26050024 */ addiu	$a1, $s0, 0X24
/* 002599 0x80A6B03C 3C06C0A0 */ lui	$a2, 0xC0A0
/* 002600 0x80A6B040 46088280 */ add.s	$f10, $f16, $f8
/* 002601 0x80A6B044 46125102 */ mul.s	$f4, $f10, $f18
/* 002602 0x80A6B048 0C02C7A5 */ jal	EffectSS_SpawnBubble
/* 002603 0x80A6B04C E7A40014 */ swc1	$f4, 0X14($sp)
/* 002604 0x80A6B050 86080368 */ lh	$t0, 0X368($s0)
.L80A6B054:
/* 002605 0x80A6B054 5D000004 */ bgtzl	$t0, .L80A6B068
/* 002606 0x80A6B058 8FBF0024 */ lw	$ra, 0X24($sp)
/* 002607 0x80A6B05C 0C02D9C3 */ jal	Actor_MarkForDeath
/* 002608 0x80A6B060 02002025 */ move	$a0, $s0
/* 002609 0x80A6B064 8FBF0024 */ lw	$ra, 0X24($sp)
.L80A6B068:
/* 002610 0x80A6B068 8FB00020 */ lw	$s0, 0X20($sp)
/* 002611 0x80A6B06C 27BD0028 */ addiu	$sp, $sp, 0X28
/* 002612 0x80A6B070 03E00008 */ jr	$ra
/* 002613 0x80A6B074 00000000 */ nop

