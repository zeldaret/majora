glabel func_80C0B970
/* 000440 0x80C0B970 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000441 0x80C0B974 AFB00018 */ sw	$s0, 0X18($sp)
/* 000442 0x80C0B978 00808025 */ move	$s0, $a0
/* 000443 0x80C0B97C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000444 0x80C0B980 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000445 0x80C0B984 26040144 */ addiu	$a0, $s0, 0X144
/* 000446 0x80C0B988 AFA40020 */ sw	$a0, 0X20($sp)
/* 000447 0x80C0B98C 0C04DE2E */ jal	func_801378B8
/* 000448 0x80C0B990 3C054100 */ lui	$a1, 0x4100
/* 000449 0x80C0B994 14400004 */ bnez	$v0, .L80C0B9A8
/* 000450 0x80C0B998 8FA40020 */ lw	$a0, 0X20($sp)
/* 000451 0x80C0B99C 0C04DE2E */ jal	func_801378B8
/* 000452 0x80C0B9A0 3C054160 */ lui	$a1, 0x4160
/* 000453 0x80C0B9A4 10400027 */ beqz	$v0, .L80C0BA44
.L80C0B9A8:
/* 000454 0x80C0B9A8 02002025 */ move	$a0, $s0
/* 000455 0x80C0B9AC 0C02E3B2 */ jal	func_800B8EC8
/* 000456 0x80C0B9B0 24053AA2 */ li	$a1, 0X3AA2
/* 000457 0x80C0B9B4 3C01442F */ lui	$at, 0x442F
/* 000458 0x80C0B9B8 44812000 */ mtc1	$at, $f4
/* 000459 0x80C0B9BC C6060098 */ lwc1	$f6, 0X98($s0)
/* 000460 0x80C0B9C0 3C0180C1 */ lui	$at, %hi(D_80C0FAEC)
/* 000461 0x80C0B9C4 C42AFAEC */ lwc1	$f10, %lo(D_80C0FAEC)($at)
/* 000462 0x80C0B9C8 46062201 */ sub.s	$f8, $f4, $f6
/* 000463 0x80C0B9CC 02002025 */ move	$a0, $s0
/* 000464 0x80C0B9D0 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000465 0x80C0B9D4 460A4402 */ mul.s	$f16, $f8, $f10
/* 000466 0x80C0B9D8 4600848D */ trunc.w.s	$f18, $f16
/* 000467 0x80C0B9DC 44069000 */ mfc1	$a2, $f18
/* 000468 0x80C0B9E0 00000000 */ nop
/* 000469 0x80C0B9E4 00063400 */ sll	$a2, $a2, 16
/* 000470 0x80C0B9E8 00063403 */ sra	$a2, $a2, 16
/* 000471 0x80C0B9EC 28C10005 */ slti	$at, $a2, 0X5
/* 000472 0x80C0B9F0 14200002 */ bnez	$at, .L80C0B9FC
/* 000473 0x80C0B9F4 00000000 */ nop
/* 000474 0x80C0B9F8 24060004 */ li	$a2, 0X4
.L80C0B9FC:
/* 000475 0x80C0B9FC 58C00004 */ blezl	$a2, .L80C0BA10
/* 000476 0x80C0BA00 8FA40020 */ lw	$a0, 0X20($sp)
/* 000477 0x80C0BA04 0C02F212 */ jal	func_800BC848
/* 000478 0x80C0BA08 24070002 */ li	$a3, 0X2
/* 000479 0x80C0BA0C 8FA40020 */ lw	$a0, 0X20($sp)
.L80C0BA10:
/* 000480 0x80C0BA10 0C04DE2E */ jal	func_801378B8
/* 000481 0x80C0BA14 3C054100 */ lui	$a1, 0x4100
/* 000482 0x80C0BA18 10400007 */ beqz	$v0, .L80C0BA38
/* 000483 0x80C0BA1C 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000484 0x80C0BA20 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000485 0x80C0BA24 02002825 */ move	$a1, $s0
/* 000486 0x80C0BA28 0C302CC7 */ jal	func_80C0B31C
/* 000487 0x80C0BA2C 26060304 */ addiu	$a2, $s0, 0X304
/* 000488 0x80C0BA30 10000005 */ b	.L80C0BA48
/* 000489 0x80C0BA34 8FBF001C */ lw	$ra, 0X1C($sp)
.L80C0BA38:
/* 000490 0x80C0BA38 02002825 */ move	$a1, $s0
/* 000491 0x80C0BA3C 0C302CC7 */ jal	func_80C0B31C
/* 000492 0x80C0BA40 260602F8 */ addiu	$a2, $s0, 0X2F8
.L80C0BA44:
/* 000493 0x80C0BA44 8FBF001C */ lw	$ra, 0X1C($sp)
.L80C0BA48:
/* 000494 0x80C0BA48 8FB00018 */ lw	$s0, 0X18($sp)
/* 000495 0x80C0BA4C 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000496 0x80C0BA50 03E00008 */ jr	$ra
/* 000497 0x80C0BA54 00000000 */ nop


.section .late_rodata

glabel D_80C0FAEC
/* 004631 0x80C0FAEC */ .word	0x3C23D70A
