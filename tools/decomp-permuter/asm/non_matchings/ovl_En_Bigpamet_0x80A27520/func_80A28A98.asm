glabel func_80A28A98
/* 001374 0x80A28A98 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001375 0x80A28A9C AFBF0014 */ sw	$ra, 0X14($sp)
/* 001376 0x80A28AA0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001377 0x80A28AA4 00803825 */ move	$a3, $a0
/* 001378 0x80A28AA8 84E50092 */ lh	$a1, 0X92($a3)
/* 001379 0x80A28AAC AFA70018 */ sw	$a3, 0X18($sp)
/* 001380 0x80A28AB0 24E400BE */ addiu	$a0, $a3, 0XBE
/* 001381 0x80A28AB4 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 001382 0x80A28AB8 24060600 */ li	$a2, 0X600
/* 001383 0x80A28ABC 8FA70018 */ lw	$a3, 0X18($sp)
/* 001384 0x80A28AC0 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 001385 0x80A28AC4 24E40144 */ addiu	$a0, $a3, 0X144
/* 001386 0x80A28AC8 10400010 */ beqz	$v0, .L80A28B0C
/* 001387 0x80A28ACC 8FA70018 */ lw	$a3, 0X18($sp)
/* 001388 0x80A28AD0 8CEE0120 */ lw	$t6, 0X120($a3)
/* 001389 0x80A28AD4 24010007 */ li	$at, 0X7
/* 001390 0x80A28AD8 85C2001C */ lh	$v0, 0X1C($t6)
/* 001391 0x80A28ADC 10410003 */ beq	$v0, $at, .L80A28AEC
/* 001392 0x80A28AE0 24010008 */ li	$at, 0X8
/* 001393 0x80A28AE4 14410005 */ bne	$v0, $at, .L80A28AFC
/* 001394 0x80A28AE8 00000000 */ nop
.L80A28AEC:
/* 001395 0x80A28AEC 0C28A0FC */ jal	func_80A283F0
/* 001396 0x80A28AF0 00E02025 */ move	$a0, $a3
/* 001397 0x80A28AF4 10000025 */ b	.L80A28B8C
/* 001398 0x80A28AF8 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A28AFC:
/* 001399 0x80A28AFC 0C28A139 */ jal	func_80A284E4
/* 001400 0x80A28B00 00E02025 */ move	$a0, $a3
/* 001401 0x80A28B04 10000021 */ b	.L80A28B8C
/* 001402 0x80A28B08 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A28B0C:
/* 001403 0x80A28B0C 3C0140E0 */ lui	$at, 0x40E0
/* 001404 0x80A28B10 44816000 */ mtc1	$at, $f12
/* 001405 0x80A28B14 C4E2015C */ lwc1	$f2, 0X15C($a3)
/* 001406 0x80A28B18 3C0180A3 */ lui	$at, %hi(D_80A297C4)
/* 001407 0x80A28B1C 4602603C */ c.lt.s	$f12, $f2
/* 001408 0x80A28B20 00000000 */ nop
/* 001409 0x80A28B24 4500000B */ bc1f .L80A28B54
/* 001410 0x80A28B28 00000000 */ nop
/* 001411 0x80A28B2C 460C1101 */ sub.s	$f4, $f2, $f12
/* 001412 0x80A28B30 3C0180A3 */ lui	$at, %hi(D_80A297C0)
/* 001413 0x80A28B34 C42697C0 */ lwc1	$f6, %lo(D_80A297C0)($at)
/* 001414 0x80A28B38 3C013FC0 */ lui	$at, 0x3FC0
/* 001415 0x80A28B3C 44815000 */ mtc1	$at, $f10
/* 001416 0x80A28B40 46062202 */ mul.s	$f8, $f4, $f6
/* 001417 0x80A28B44 46085001 */ sub.s	$f0, $f10, $f8
/* 001418 0x80A28B48 E4E002A8 */ swc1	$f0, 0X2A8($a3)
/* 001419 0x80A28B4C 1000000E */ b	.L80A28B88
/* 001420 0x80A28B50 E4E002A4 */ swc1	$f0, 0X2A4($a3)
.L80A28B54:
/* 001421 0x80A28B54 C43097C4 */ lwc1	$f16, %lo(D_80A297C4)($at)
/* 001422 0x80A28B58 3C0180A3 */ lui	$at, %hi(D_80A297C8)
/* 001423 0x80A28B5C C42497C8 */ lwc1	$f4, %lo(D_80A297C8)($at)
/* 001424 0x80A28B60 46028482 */ mul.s	$f18, $f16, $f2
/* 001425 0x80A28B64 3C0180A3 */ lui	$at, %hi(D_80A297CC)
/* 001426 0x80A28B68 46049180 */ add.s	$f6, $f18, $f4
/* 001427 0x80A28B6C E4E602A8 */ swc1	$f6, 0X2A8($a3)
/* 001428 0x80A28B70 C42A97CC */ lwc1	$f10, %lo(D_80A297CC)($at)
/* 001429 0x80A28B74 3C013F80 */ lui	$at, 0x3F80
/* 001430 0x80A28B78 44818000 */ mtc1	$at, $f16
/* 001431 0x80A28B7C 46025202 */ mul.s	$f8, $f10, $f2
/* 001432 0x80A28B80 46104480 */ add.s	$f18, $f8, $f16
/* 001433 0x80A28B84 E4F202A4 */ swc1	$f18, 0X2A4($a3)
.L80A28B88:
/* 001434 0x80A28B88 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A28B8C:
/* 001435 0x80A28B8C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001436 0x80A28B90 03E00008 */ jr	$ra
/* 001437 0x80A28B94 00000000 */ nop

