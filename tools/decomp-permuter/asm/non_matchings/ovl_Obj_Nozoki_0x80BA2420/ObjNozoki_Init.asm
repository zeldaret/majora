glabel ObjNozoki_Init
/* 000003 0x80BA242C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000004 0x80BA2430 AFB00018 */ sw	$s0, 0X18($sp)
/* 000005 0x80BA2434 00808025 */ move	$s0, $a0
/* 000006 0x80BA2438 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000007 0x80BA243C AFA50024 */ sw	$a1, 0X24($sp)
/* 000008 0x80BA2440 3C0580BA */ lui	$a1, %hi(D_80BA34B0)
/* 000009 0x80BA2444 24A534B0 */ addiu	$a1, $a1, %lo(D_80BA34B0)
/* 000010 0x80BA2448 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000011 0x80BA244C 02002025 */ move	$a0, $s0
/* 000012 0x80BA2450 820E0038 */ lb	$t6, 0X38($s0)
/* 000013 0x80BA2454 A60000BC */ sh	$zero, 0XBC($s0)
/* 000014 0x80BA2458 A60000C0 */ sh	$zero, 0XC0($s0)
/* 000015 0x80BA245C A20E015F */ sb	$t6, 0X15F($s0)
/* 000016 0x80BA2460 8FAF0024 */ lw	$t7, 0X24($sp)
/* 000017 0x80BA2464 2401000D */ li	$at, 0XD
/* 000018 0x80BA2468 3C0580BA */ lui	$a1, %hi(func_80BA3230)
/* 000019 0x80BA246C 85F800A4 */ lh	$t8, 0XA4($t7)
/* 000020 0x80BA2470 24190004 */ li	$t9, 0X4
/* 000021 0x80BA2474 24A53230 */ addiu	$a1, $a1, %lo(func_80BA3230)
/* 000022 0x80BA2478 17010006 */ bne	$t8, $at, .L80BA2494
/* 000023 0x80BA247C 02002025 */ move	$a0, $s0
/* 000024 0x80BA2480 0C2E8908 */ jal	func_80BA2420
/* 000025 0x80BA2484 A219015C */ sb	$t9, 0X15C($s0)
/* 000026 0x80BA2488 2408FFD8 */ li	$t0, -0X28
/* 000027 0x80BA248C 1000000E */ b	.L80BA24C8
/* 000028 0x80BA2490 A60800B0 */ sh	$t0, 0XB0($s0)
.L80BA2494:
/* 000029 0x80BA2494 8609001C */ lh	$t1, 0X1C($s0)
/* 000030 0x80BA2498 02002025 */ move	$a0, $s0
/* 000031 0x80BA249C 000951C3 */ sra	$t2, $t1, 7
/* 000032 0x80BA24A0 314B0003 */ andi	$t3, $t2, 0X3
/* 000033 0x80BA24A4 316C00FF */ andi	$t4, $t3, 0XFF
/* 000034 0x80BA24A8 15800003 */ bnez	$t4, .L80BA24B8
/* 000035 0x80BA24AC A20B015C */ sb	$t3, 0X15C($s0)
/* 000036 0x80BA24B0 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000037 0x80BA24B4 00002825 */ move	$a1, $zero
.L80BA24B8:
/* 000038 0x80BA24B8 3C0580BA */ lui	$a1, %hi(func_80BA2514)
/* 000039 0x80BA24BC 24A52514 */ addiu	$a1, $a1, %lo(func_80BA2514)
/* 000040 0x80BA24C0 0C2E8908 */ jal	func_80BA2420
/* 000041 0x80BA24C4 02002025 */ move	$a0, $s0
.L80BA24C8:
/* 000042 0x80BA24C8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000043 0x80BA24CC 8FB00018 */ lw	$s0, 0X18($sp)
/* 000044 0x80BA24D0 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000045 0x80BA24D4 03E00008 */ jr	$ra
/* 000046 0x80BA24D8 00000000 */ nop

