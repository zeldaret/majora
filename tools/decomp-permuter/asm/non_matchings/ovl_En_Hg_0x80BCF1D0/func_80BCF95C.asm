glabel func_80BCF95C
/* 000483 0x80BCF95C 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000484 0x80BCF960 AFB00018 */ sw	$s0, 0X18($sp)
/* 000485 0x80BCF964 00808025 */ move	$s0, $a0
/* 000486 0x80BCF968 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000487 0x80BCF96C AFA50034 */ sw	$a1, 0X34($sp)
/* 000488 0x80BCF970 8FA40034 */ lw	$a0, 0X34($sp)
/* 000489 0x80BCF974 0C03B8A7 */ jal	func_800EE29C
/* 000490 0x80BCF978 240501E4 */ li	$a1, 0X1E4
/* 000491 0x80BCF97C 10400096 */ beqz	$v0, .L80BCFBD8
/* 000492 0x80BCF980 8FA40034 */ lw	$a0, 0X34($sp)
/* 000493 0x80BCF984 0C03B880 */ jal	func_800EE200
/* 000494 0x80BCF988 240501E4 */ li	$a1, 0X1E4
/* 000495 0x80BCF98C 8FAE0034 */ lw	$t6, 0X34($sp)
/* 000496 0x80BCF990 00027880 */ sll	$t7, $v0, 2
/* 000497 0x80BCF994 AFA2002C */ sw	$v0, 0X2C($sp)
/* 000498 0x80BCF998 01CF1821 */ addu	$v1, $t6, $t7
/* 000499 0x80BCF99C 8C781F4C */ lw	$t8, 0X1F4C($v1)
/* 000500 0x80BCF9A0 96190316 */ lhu	$t9, 0X316($s0)
/* 000501 0x80BCF9A4 97040000 */ lhu	$a0, 0X0($t8)
/* 000502 0x80BCF9A8 5324004E */ beql	$t9, $a0, .L80BCFAE4
/* 000503 0x80BCF9AC 26040190 */ addiu	$a0, $s0, 0X190
/* 000504 0x80BCF9B0 A6040316 */ sh	$a0, 0X316($s0)
/* 000505 0x80BCF9B4 8C681F4C */ lw	$t0, 0X1F4C($v1)
/* 000506 0x80BCF9B8 95090000 */ lhu	$t1, 0X0($t0)
/* 000507 0x80BCF9BC 252AFFFF */ addiu	$t2, $t1, -0X1
/* 000508 0x80BCF9C0 2D410006 */ sltiu	$at, $t2, 0X6
/* 000509 0x80BCF9C4 10200061 */ beqz	$at, .L80BCFB4C
/* 000510 0x80BCF9C8 000A5080 */ sll	$t2, $t2, 2
/* 000511 0x80BCF9CC 3C0180BD */ lui	$at, %hi(jtbl_D_80BD00D4)
/* 000512 0x80BCF9D0 002A0821 */ addu	$at, $at, $t2
/* 000513 0x80BCF9D4 8C2A00D4 */ lw	$t2, %lo(jtbl_D_80BD00D4)($at)
/* 000514 0x80BCF9D8 01400008 */ jr	$t2
/* 000515 0x80BCF9DC 00000000 */ nop
glabel L80BCF9E0
.L80BCF9E0:
/* 000516 0x80BCF9E0 3C0580BD */ lui	$a1, %hi(D_80BD0008)
/* 000517 0x80BCF9E4 AE00021C */ sw	$zero, 0X21C($s0)
/* 000518 0x80BCF9E8 24A50008 */ addiu	$a1, $a1, %lo(D_80BD0008)
/* 000519 0x80BCF9EC 26040190 */ addiu	$a0, $s0, 0X190
/* 000520 0x80BCF9F0 0C02F717 */ jal	func_800BDC5C
/* 000521 0x80BCF9F4 00003025 */ move	$a2, $zero
/* 000522 0x80BCF9F8 10000055 */ b	.L80BCFB50
/* 000523 0x80BCF9FC 8E09021C */ lw	$t1, 0X21C($s0)
glabel L80BCFA00
.L80BCFA00:
/* 000524 0x80BCFA00 240B0003 */ li	$t3, 0X3
/* 000525 0x80BCFA04 3C0580BD */ lui	$a1, %hi(D_80BD0008)
/* 000526 0x80BCFA08 A6000314 */ sh	$zero, 0X314($s0)
/* 000527 0x80BCFA0C AE0B021C */ sw	$t3, 0X21C($s0)
/* 000528 0x80BCFA10 24A50008 */ addiu	$a1, $a1, %lo(D_80BD0008)
/* 000529 0x80BCFA14 26040190 */ addiu	$a0, $s0, 0X190
/* 000530 0x80BCFA18 0C02F717 */ jal	func_800BDC5C
/* 000531 0x80BCFA1C 24060003 */ li	$a2, 0X3
/* 000532 0x80BCFA20 1000004B */ b	.L80BCFB50
/* 000533 0x80BCFA24 8E09021C */ lw	$t1, 0X21C($s0)
glabel L80BCFA28
.L80BCFA28:
/* 000534 0x80BCFA28 240C0005 */ li	$t4, 0X5
/* 000535 0x80BCFA2C 3C0580BD */ lui	$a1, %hi(D_80BD0008)
/* 000536 0x80BCFA30 A6000314 */ sh	$zero, 0X314($s0)
/* 000537 0x80BCFA34 AE0C021C */ sw	$t4, 0X21C($s0)
/* 000538 0x80BCFA38 24A50008 */ addiu	$a1, $a1, %lo(D_80BD0008)
/* 000539 0x80BCFA3C 26040190 */ addiu	$a0, $s0, 0X190
/* 000540 0x80BCFA40 0C02F717 */ jal	func_800BDC5C
/* 000541 0x80BCFA44 24060005 */ li	$a2, 0X5
/* 000542 0x80BCFA48 10000041 */ b	.L80BCFB50
/* 000543 0x80BCFA4C 8E09021C */ lw	$t1, 0X21C($s0)
glabel L80BCFA50
.L80BCFA50:
/* 000544 0x80BCFA50 8E020218 */ lw	$v0, 0X218($s0)
/* 000545 0x80BCFA54 240D0007 */ li	$t5, 0X7
/* 000546 0x80BCFA58 24010001 */ li	$at, 0X1
/* 000547 0x80BCFA5C A6000314 */ sh	$zero, 0X314($s0)
/* 000548 0x80BCFA60 10410004 */ beq	$v0, $at, .L80BCFA74
/* 000549 0x80BCFA64 AE0D021C */ sw	$t5, 0X21C($s0)
/* 000550 0x80BCFA68 24010003 */ li	$at, 0X3
/* 000551 0x80BCFA6C 14410003 */ bne	$v0, $at, .L80BCFA7C
/* 000552 0x80BCFA70 00000000 */ nop
.L80BCFA74:
/* 000553 0x80BCFA74 0C067C4A */ jal	func_8019F128
/* 000554 0x80BCFA78 24043ABA */ li	$a0, 0X3ABA
.L80BCFA7C:
/* 000555 0x80BCFA7C 3C0580BD */ lui	$a1, %hi(D_80BD0008)
/* 000556 0x80BCFA80 24A50008 */ addiu	$a1, $a1, %lo(D_80BD0008)
/* 000557 0x80BCFA84 26040190 */ addiu	$a0, $s0, 0X190
/* 000558 0x80BCFA88 0C02F717 */ jal	func_800BDC5C
/* 000559 0x80BCFA8C 24060007 */ li	$a2, 0X7
/* 000560 0x80BCFA90 1000002F */ b	.L80BCFB50
/* 000561 0x80BCFA94 8E09021C */ lw	$t1, 0X21C($s0)
glabel L80BCFA98
.L80BCFA98:
/* 000562 0x80BCFA98 240E0001 */ li	$t6, 0X1
/* 000563 0x80BCFA9C 3C0580BD */ lui	$a1, %hi(D_80BD0008)
/* 000564 0x80BCFAA0 AE0E021C */ sw	$t6, 0X21C($s0)
/* 000565 0x80BCFAA4 24A50008 */ addiu	$a1, $a1, %lo(D_80BD0008)
/* 000566 0x80BCFAA8 26040190 */ addiu	$a0, $s0, 0X190
/* 000567 0x80BCFAAC 0C02F717 */ jal	func_800BDC5C
/* 000568 0x80BCFAB0 24060001 */ li	$a2, 0X1
/* 000569 0x80BCFAB4 10000026 */ b	.L80BCFB50
/* 000570 0x80BCFAB8 8E09021C */ lw	$t1, 0X21C($s0)
glabel L80BCFABC
.L80BCFABC:
/* 000571 0x80BCFABC 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000572 0x80BCFAC0 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000573 0x80BCFAC4 904F0F43 */ lbu	$t7, 0XF43($v0)
/* 000574 0x80BCFAC8 02002025 */ move	$a0, $s0
/* 000575 0x80BCFACC 35F80020 */ ori	$t8, $t7, 0X20
/* 000576 0x80BCFAD0 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000577 0x80BCFAD4 A0580F43 */ sb	$t8, 0XF43($v0)
/* 000578 0x80BCFAD8 1000001D */ b	.L80BCFB50
/* 000579 0x80BCFADC 8E09021C */ lw	$t1, 0X21C($s0)
/* 000580 0x80BCFAE0 26040190 */ addiu	$a0, $s0, 0X190
.L80BCFAE4:
/* 000581 0x80BCFAE4 8E0501A0 */ lw	$a1, 0X1A0($s0)
/* 000582 0x80BCFAE8 0C04DE2E */ jal	func_801378B8
/* 000583 0x80BCFAEC AFA40024 */ sw	$a0, 0X24($sp)
/* 000584 0x80BCFAF0 10400016 */ beqz	$v0, .L80BCFB4C
/* 000585 0x80BCFAF4 8FA40024 */ lw	$a0, 0X24($sp)
/* 000586 0x80BCFAF8 8E02021C */ lw	$v0, 0X21C($s0)
/* 000587 0x80BCFAFC 24010003 */ li	$at, 0X3
/* 000588 0x80BCFB00 24190004 */ li	$t9, 0X4
/* 000589 0x80BCFB04 10410006 */ beq	$v0, $at, .L80BCFB20
/* 000590 0x80BCFB08 24060004 */ li	$a2, 0X4
/* 000591 0x80BCFB0C 24010005 */ li	$at, 0X5
/* 000592 0x80BCFB10 10410009 */ beq	$v0, $at, .L80BCFB38
/* 000593 0x80BCFB14 24080006 */ li	$t0, 0X6
/* 000594 0x80BCFB18 1000000D */ b	.L80BCFB50
/* 000595 0x80BCFB1C 8E09021C */ lw	$t1, 0X21C($s0)
.L80BCFB20:
/* 000596 0x80BCFB20 3C0580BD */ lui	$a1, %hi(D_80BD0008)
/* 000597 0x80BCFB24 AE19021C */ sw	$t9, 0X21C($s0)
/* 000598 0x80BCFB28 0C02F717 */ jal	func_800BDC5C
/* 000599 0x80BCFB2C 24A50008 */ addiu	$a1, $a1, %lo(D_80BD0008)
/* 000600 0x80BCFB30 10000007 */ b	.L80BCFB50
/* 000601 0x80BCFB34 8E09021C */ lw	$t1, 0X21C($s0)
.L80BCFB38:
/* 000602 0x80BCFB38 3C0580BD */ lui	$a1, %hi(D_80BD0008)
/* 000603 0x80BCFB3C AE08021C */ sw	$t0, 0X21C($s0)
/* 000604 0x80BCFB40 24A50008 */ addiu	$a1, $a1, %lo(D_80BD0008)
/* 000605 0x80BCFB44 0C02F717 */ jal	func_800BDC5C
/* 000606 0x80BCFB48 24060006 */ li	$a2, 0X6
.L80BCFB4C:
/* 000607 0x80BCFB4C 8E09021C */ lw	$t1, 0X21C($s0)
.L80BCFB50:
/* 000608 0x80BCFB50 252AFFFD */ addiu	$t2, $t1, -0X3
/* 000609 0x80BCFB54 2D410005 */ sltiu	$at, $t2, 0X5
/* 000610 0x80BCFB58 10200019 */ beqz	$at, .L80BCFBC0
/* 000611 0x80BCFB5C 000A5080 */ sll	$t2, $t2, 2
/* 000612 0x80BCFB60 3C0180BD */ lui	$at, %hi(jtbl_D_80BD00EC)
/* 000613 0x80BCFB64 002A0821 */ addu	$at, $at, $t2
/* 000614 0x80BCFB68 8C2A00EC */ lw	$t2, %lo(jtbl_D_80BD00EC)($at)
/* 000615 0x80BCFB6C 01400008 */ jr	$t2
/* 000616 0x80BCFB70 00000000 */ nop
glabel L80BCFB74
.L80BCFB74:
/* 000617 0x80BCFB74 02002025 */ move	$a0, $s0
/* 000618 0x80BCFB78 0C02E404 */ jal	func_800B9010
/* 000619 0x80BCFB7C 240532B7 */ li	$a1, 0X32B7
/* 000620 0x80BCFB80 10000010 */ b	.L80BCFBC4
/* 000621 0x80BCFB84 02002025 */ move	$a0, $s0
glabel L80BCFB88
.L80BCFB88:
/* 000622 0x80BCFB88 02002025 */ move	$a0, $s0
/* 000623 0x80BCFB8C 0C02E404 */ jal	func_800B9010
/* 000624 0x80BCFB90 240532B9 */ li	$a1, 0X32B9
/* 000625 0x80BCFB94 1000000B */ b	.L80BCFBC4
/* 000626 0x80BCFB98 02002025 */ move	$a0, $s0
glabel L80BCFB9C
.L80BCFB9C:
/* 000627 0x80BCFB9C 8E020218 */ lw	$v0, 0X218($s0)
/* 000628 0x80BCFBA0 24010002 */ li	$at, 0X2
/* 000629 0x80BCFBA4 02002025 */ move	$a0, $s0
/* 000630 0x80BCFBA8 10400003 */ beqz	$v0, .L80BCFBB8
/* 000631 0x80BCFBAC 00000000 */ nop
/* 000632 0x80BCFBB0 54410004 */ bnel	$v0, $at, .L80BCFBC4
/* 000633 0x80BCFBB4 02002025 */ move	$a0, $s0
.L80BCFBB8:
/* 000634 0x80BCFBB8 0C02E404 */ jal	func_800B9010
/* 000635 0x80BCFBBC 240532B9 */ li	$a1, 0X32B9
.L80BCFBC0:
/* 000636 0x80BCFBC0 02002025 */ move	$a0, $s0
.L80BCFBC4:
/* 000637 0x80BCFBC4 8FA50034 */ lw	$a1, 0X34($sp)
/* 000638 0x80BCFBC8 0C03B7C9 */ jal	func_800EDF24
/* 000639 0x80BCFBCC 8FA6002C */ lw	$a2, 0X2C($sp)
/* 000640 0x80BCFBD0 1000000A */ b	.L80BCFBFC
/* 000641 0x80BCFBD4 8FBF001C */ lw	$ra, 0X1C($sp)
.L80BCFBD8:
/* 000642 0x80BCFBD8 8FAB0034 */ lw	$t3, 0X34($sp)
/* 000643 0x80BCFBDC 916C1F2C */ lbu	$t4, 0X1F2C($t3)
/* 000644 0x80BCFBE0 55800004 */ bnezl	$t4, .L80BCFBF4
/* 000645 0x80BCFBE4 240D0063 */ li	$t5, 0X63
/* 000646 0x80BCFBE8 0C2F3CD5 */ jal	func_80BCF354
/* 000647 0x80BCFBEC 02002025 */ move	$a0, $s0
/* 000648 0x80BCFBF0 240D0063 */ li	$t5, 0X63
.L80BCFBF4:
/* 000649 0x80BCFBF4 A60D0316 */ sh	$t5, 0X316($s0)
/* 000650 0x80BCFBF8 8FBF001C */ lw	$ra, 0X1C($sp)
.L80BCFBFC:
/* 000651 0x80BCFBFC 8FB00018 */ lw	$s0, 0X18($sp)
/* 000652 0x80BCFC00 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000653 0x80BCFC04 03E00008 */ jr	$ra
/* 000654 0x80BCFC08 00000000 */ nop


.section .late_rodata

glabel jtbl_D_80BD00D4
/* 000961 0x80BD00D4 */ .word	L80BCF9E0
/* 000962 0x80BD00D8 */ .word	L80BCFA00
/* 000963 0x80BD00DC */ .word	L80BCFA28
/* 000964 0x80BD00E0 */ .word	L80BCFA50
/* 000965 0x80BD00E4 */ .word	L80BCFA98
/* 000966 0x80BD00E8 */ .word	L80BCFABC
glabel jtbl_D_80BD00EC
/* 000967 0x80BD00EC */ .word	L80BCFB74
/* 000968 0x80BD00F0 */ .word	L80BCFB74
/* 000969 0x80BD00F4 */ .word	L80BCFB88
/* 000970 0x80BD00F8 */ .word	L80BCFB88
/* 000971 0x80BD00FC */ .word	L80BCFB9C
