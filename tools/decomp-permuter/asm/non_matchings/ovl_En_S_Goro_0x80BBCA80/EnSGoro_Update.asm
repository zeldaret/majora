glabel EnSGoro_Update
/* 002513 0x80BBF1C4 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 002514 0x80BBF1C8 AFB10020 */ sw	$s1, 0X20($sp)
/* 002515 0x80BBF1CC AFB0001C */ sw	$s0, 0X1C($sp)
/* 002516 0x80BBF1D0 00808025 */ move	$s0, $a0
/* 002517 0x80BBF1D4 00A08825 */ move	$s1, $a1
/* 002518 0x80BBF1D8 AFBF0024 */ sw	$ra, 0X24($sp)
/* 002519 0x80BBF1DC 8E19018C */ lw	$t9, 0X18C($s0)
/* 002520 0x80BBF1E0 02002025 */ move	$a0, $s0
/* 002521 0x80BBF1E4 02202825 */ move	$a1, $s1
/* 002522 0x80BBF1E8 0320F809 */ jalr	$t9
/* 002523 0x80BBF1EC 00000000 */ nop
/* 002524 0x80BBF1F0 44802000 */ mtc1	$zero, $f4
/* 002525 0x80BBF1F4 240E0005 */ li	$t6, 0X5
/* 002526 0x80BBF1F8 AFAE0014 */ sw	$t6, 0X14($sp)
/* 002527 0x80BBF1FC 02202025 */ move	$a0, $s1
/* 002528 0x80BBF200 02002825 */ move	$a1, $s0
/* 002529 0x80BBF204 3C0641F0 */ lui	$a2, 0x41F0
/* 002530 0x80BBF208 3C074140 */ lui	$a3, 0x4140
/* 002531 0x80BBF20C 0C02DE2E */ jal	func_800B78B8
/* 002532 0x80BBF210 E7A40010 */ swc1	$f4, 0X10($sp)
/* 002533 0x80BBF214 8E0F01F4 */ lw	$t7, 0X1F4($s0)
/* 002534 0x80BBF218 3C090001 */ lui	$t1, 0x0001
/* 002535 0x80BBF21C 3C018000 */ lui	$at, 0x8000
/* 002536 0x80BBF220 000FC100 */ sll	$t8, $t7, 4
/* 002537 0x80BBF224 030FC021 */ addu	$t8, $t8, $t7
/* 002538 0x80BBF228 0018C080 */ sll	$t8, $t8, 2
/* 002539 0x80BBF22C 02384021 */ addu	$t0, $s1, $t8
/* 002540 0x80BBF230 01284821 */ addu	$t1, $t1, $t0
/* 002541 0x80BBF234 8D297D98 */ lw	$t1, 0X7D98($t1)
/* 002542 0x80BBF238 26040148 */ addiu	$a0, $s0, 0X148
/* 002543 0x80BBF23C 01215021 */ addu	$t2, $t1, $at
/* 002544 0x80BBF240 3C018020 */ lui	$at, %hi(gRspSegmentPhysAddrs + 0x18)
/* 002545 0x80BBF244 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 002546 0x80BBF248 AC2A8198 */ sw	$t2, %lo(gRspSegmentPhysAddrs + 0x18)($at)
/* 002547 0x80BBF24C 8E0B0308 */ lw	$t3, 0X308($s0)
/* 002548 0x80BBF250 2401000E */ li	$at, 0XE
/* 002549 0x80BBF254 02002025 */ move	$a0, $s0
/* 002550 0x80BBF258 11610003 */ beq	$t3, $at, .L80BBF268
/* 002551 0x80BBF25C 00000000 */ nop
/* 002552 0x80BBF260 0C2EF8DD */ jal	func_80BBE374
/* 002553 0x80BBF264 02202825 */ move	$a1, $s1
.L80BBF268:
/* 002554 0x80BBF268 0C2EF817 */ jal	func_80BBE05C
/* 002555 0x80BBF26C 02002025 */ move	$a0, $s0
/* 002556 0x80BBF270 0C2EF839 */ jal	func_80BBE0E4
/* 002557 0x80BBF274 02002025 */ move	$a0, $s0
/* 002558 0x80BBF278 02002025 */ move	$a0, $s0
/* 002559 0x80BBF27C 0C2EF7EA */ jal	func_80BBDFA8
/* 002560 0x80BBF280 02202825 */ move	$a1, $s1
/* 002561 0x80BBF284 8FBF0024 */ lw	$ra, 0X24($sp)
/* 002562 0x80BBF288 8FB0001C */ lw	$s0, 0X1C($sp)
/* 002563 0x80BBF28C 8FB10020 */ lw	$s1, 0X20($sp)
/* 002564 0x80BBF290 03E00008 */ jr	$ra
/* 002565 0x80BBF294 27BD0028 */ addiu	$sp, $sp, 0X28

