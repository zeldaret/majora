glabel ObjUsiyane_Init
/* 000443 0x80C0836C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000444 0x80C08370 AFB00018 */ sw	$s0, 0X18($sp)
/* 000445 0x80C08374 00808025 */ move	$s0, $a0
/* 000446 0x80C08378 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000447 0x80C0837C AFA50024 */ sw	$a1, 0X24($sp)
/* 000448 0x80C08380 3C0580C1 */ lui	$a1, %hi(D_80C086B0)
/* 000449 0x80C08384 24A586B0 */ addiu	$a1, $a1, %lo(D_80C086B0)
/* 000450 0x80C08388 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000451 0x80C0838C 02002025 */ move	$a0, $s0
/* 000452 0x80C08390 3C053DCC */ lui	$a1, 0x3DCC
/* 000453 0x80C08394 34A5CCCD */ ori	$a1, $a1, 0XCCCD
/* 000454 0x80C08398 0C02D9F8 */ jal	Actor_SetScale
/* 000455 0x80C0839C 02002025 */ move	$a0, $s0
/* 000456 0x80C083A0 AE000744 */ sw	$zero, 0X744($s0)
/* 000457 0x80C083A4 02002025 */ move	$a0, $s0
/* 000458 0x80C083A8 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000459 0x80C083AC 00002825 */ move	$a1, $zero
/* 000460 0x80C083B0 3C060600 */ lui	$a2, 0x0600
/* 000461 0x80C083B4 24C622AC */ addiu	$a2, $a2, 0X22AC
/* 000462 0x80C083B8 8FA40024 */ lw	$a0, 0X24($sp)
/* 000463 0x80C083BC 0C032B8D */ jal	BgCheck3_LoadMesh
/* 000464 0x80C083C0 02002825 */ move	$a1, $s0
/* 000465 0x80C083C4 8602001C */ lh	$v0, 0X1C($s0)
/* 000466 0x80C083C8 3C0E80C0 */ lui	$t6, %hi(func_80C07DC4)
/* 000467 0x80C083CC 24010001 */ li	$at, 0X1
/* 000468 0x80C083D0 3042000F */ andi	$v0, $v0, 0XF
/* 000469 0x80C083D4 10400005 */ beqz	$v0, .L80C083EC
/* 000470 0x80C083D8 25CE7DC4 */ addiu	$t6, $t6, %lo(func_80C07DC4)
/* 000471 0x80C083DC 10410005 */ beq	$v0, $at, .L80C083F4
/* 000472 0x80C083E0 02002025 */ move	$a0, $s0
/* 000473 0x80C083E4 10000009 */ b	.L80C0840C
/* 000474 0x80C083E8 00000000 */ nop
.L80C083EC:
/* 000475 0x80C083EC 10000009 */ b	.L80C08414
/* 000476 0x80C083F0 AE0E015C */ sw	$t6, 0X15C($s0)
.L80C083F4:
/* 000477 0x80C083F4 0C3020B3 */ jal	func_80C082CC
/* 000478 0x80C083F8 8FA50024 */ lw	$a1, 0X24($sp)
/* 000479 0x80C083FC 3C0F80C1 */ lui	$t7, %hi(func_80C082E0)
/* 000480 0x80C08400 25EF82E0 */ addiu	$t7, $t7, %lo(func_80C082E0)
/* 000481 0x80C08404 10000003 */ b	.L80C08414
/* 000482 0x80C08408 AE0F015C */ sw	$t7, 0X15C($s0)
.L80C0840C:
/* 000483 0x80C0840C 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000484 0x80C08410 02002025 */ move	$a0, $s0
.L80C08414:
/* 000485 0x80C08414 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000486 0x80C08418 8FB00018 */ lw	$s0, 0X18($sp)
/* 000487 0x80C0841C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000488 0x80C08420 03E00008 */ jr	$ra
/* 000489 0x80C08424 00000000 */ nop

