glabel func_80A6F9DC
/* 000591 0x80A6F9DC 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000592 0x80A6F9E0 AFB00018 */ sw	$s0, 0X18($sp)
/* 000593 0x80A6F9E4 00808025 */ move	$s0, $a0
/* 000594 0x80A6F9E8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000595 0x80A6F9EC AFA5002C */ sw	$a1, 0X2C($sp)
/* 000596 0x80A6F9F0 960E02B0 */ lhu	$t6, 0X2B0($s0)
/* 000597 0x80A6F9F4 31CFFFFD */ andi	$t7, $t6, 0XFFFD
/* 000598 0x80A6F9F8 A60F02B0 */ sh	$t7, 0X2B0($s0)
/* 000599 0x80A6F9FC 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000600 0x80A6FA00 0C054926 */ jal	func_80152498
/* 000601 0x80A6FA04 24844908 */ addiu	$a0, $a0, 0X4908
/* 000602 0x80A6FA08 2C410007 */ sltiu	$at, $v0, 0X7
/* 000603 0x80A6FA0C 1020003C */ beqz	$at, .L80A6FB00
/* 000604 0x80A6FA10 0002C080 */ sll	$t8, $v0, 2
/* 000605 0x80A6FA14 3C0180A7 */ lui	$at, %hi(jtbl_D_80A7056C)
/* 000606 0x80A6FA18 00380821 */ addu	$at, $at, $t8
/* 000607 0x80A6FA1C 8C38056C */ lw	$t8, %lo(jtbl_D_80A7056C)($at)
/* 000608 0x80A6FA20 03000008 */ jr	$t8
/* 000609 0x80A6FA24 00000000 */ nop
glabel L80A6FA28
.L80A6FA28:
/* 000610 0x80A6FA28 961902B0 */ lhu	$t9, 0X2B0($s0)
/* 000611 0x80A6FA2C 37280002 */ ori	$t0, $t9, 0X2
/* 000612 0x80A6FA30 10000033 */ b	.L80A6FB00
/* 000613 0x80A6FA34 A60802B0 */ sh	$t0, 0X2B0($s0)
glabel L80A6FA38
.L80A6FA38:
/* 000614 0x80A6FA38 02002025 */ move	$a0, $s0
/* 000615 0x80A6FA3C 0C29BCED */ jal	func_80A6F3B4
/* 000616 0x80A6FA40 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000617 0x80A6FA44 1000002F */ b	.L80A6FB04
/* 000618 0x80A6FA48 92180145 */ lbu	$t8, 0X145($s0)
glabel L80A6FA4C
.L80A6FA4C:
/* 000619 0x80A6FA4C 02002025 */ move	$a0, $s0
/* 000620 0x80A6FA50 0C29BD79 */ jal	func_80A6F5E4
/* 000621 0x80A6FA54 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000622 0x80A6FA58 1000002A */ b	.L80A6FB04
/* 000623 0x80A6FA5C 92180145 */ lbu	$t8, 0X145($s0)
glabel L80A6FA60
.L80A6FA60:
/* 000624 0x80A6FA60 0C051D89 */ jal	func_80147624
/* 000625 0x80A6FA64 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000626 0x80A6FA68 50400026 */ beqzl	$v0, .L80A6FB04
/* 000627 0x80A6FA6C 92180145 */ lbu	$t8, 0X145($s0)
/* 000628 0x80A6FA70 960902B4 */ lhu	$t1, 0X2B4($s0)
/* 000629 0x80A6FA74 24012790 */ li	$at, 0X2790
/* 000630 0x80A6FA78 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000631 0x80A6FA7C 15210019 */ bne	$t1, $at, .L80A6FAE4
/* 000632 0x80A6FA80 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000633 0x80A6FA84 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000634 0x80A6FA88 8C821CCC */ lw	$v0, 0X1CCC($a0)
/* 000635 0x80A6FA8C 8C4A0A6C */ lw	$t2, 0XA6C($v0)
/* 000636 0x80A6FA90 354B0020 */ ori	$t3, $t2, 0X20
/* 000637 0x80A6FA94 0C04900F */ jal	func_8012403C
/* 000638 0x80A6FA98 AC4B0A6C */ sw	$t3, 0XA6C($v0)
/* 000639 0x80A6FA9C 24010004 */ li	$at, 0X4
/* 000640 0x80A6FAA0 14410006 */ bne	$v0, $at, .L80A6FABC
/* 000641 0x80A6FAA4 00002025 */ move	$a0, $zero
/* 000642 0x80A6FAA8 00002025 */ move	$a0, $zero
/* 000643 0x80A6FAAC 0C043AA7 */ jal	func_8010EA9C
/* 000644 0x80A6FAB0 24050002 */ li	$a1, 0X2
/* 000645 0x80A6FAB4 10000003 */ b	.L80A6FAC4
/* 000646 0x80A6FAB8 00000000 */ nop
.L80A6FABC:
/* 000647 0x80A6FABC 0C043AA7 */ jal	func_8010EA9C
/* 000648 0x80A6FAC0 00002825 */ move	$a1, $zero
.L80A6FAC4:
/* 000649 0x80A6FAC4 0C051DED */ jal	func_801477B4
/* 000650 0x80A6FAC8 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000651 0x80A6FACC 0C067C32 */ jal	play_sound
/* 000652 0x80A6FAD0 24044835 */ li	$a0, 0X4835
/* 000653 0x80A6FAD4 0C29BEE8 */ jal	func_80A6FBA0
/* 000654 0x80A6FAD8 02002025 */ move	$a0, $s0
/* 000655 0x80A6FADC 10000009 */ b	.L80A6FB04
/* 000656 0x80A6FAE0 92180145 */ lbu	$t8, 0X145($s0)
.L80A6FAE4:
/* 000657 0x80A6FAE4 904C0F37 */ lbu	$t4, 0XF37($v0)
/* 000658 0x80A6FAE8 02002025 */ move	$a0, $s0
/* 000659 0x80A6FAEC 318E00FE */ andi	$t6, $t4, 0XFE
/* 000660 0x80A6FAF0 A04E0F37 */ sb	$t6, 0XF37($v0)
/* 000661 0x80A6FAF4 31CF00FD */ andi	$t7, $t6, 0XFD
/* 000662 0x80A6FAF8 0C29BC9C */ jal	func_80A6F270
/* 000663 0x80A6FAFC A04F0F37 */ sb	$t7, 0XF37($v0)
glabel L80A6FB00
.L80A6FB00:
/* 000664 0x80A6FB00 92180145 */ lbu	$t8, 0X145($s0)
.L80A6FB04:
/* 000665 0x80A6FB04 24010002 */ li	$at, 0X2
/* 000666 0x80A6FB08 26040144 */ addiu	$a0, $s0, 0X144
/* 000667 0x80A6FB0C 5701000B */ bnel	$t8, $at, .L80A6FB3C
/* 000668 0x80A6FB10 960202B4 */ lhu	$v0, 0X2B4($s0)
/* 000669 0x80A6FB14 8E050154 */ lw	$a1, 0X154($s0)
/* 000670 0x80A6FB18 0C04DE2E */ jal	func_801378B8
/* 000671 0x80A6FB1C AFA40020 */ sw	$a0, 0X20($sp)
/* 000672 0x80A6FB20 10400005 */ beqz	$v0, .L80A6FB38
/* 000673 0x80A6FB24 8FA40020 */ lw	$a0, 0X20($sp)
/* 000674 0x80A6FB28 3C0580A7 */ lui	$a1, %hi(D_80A70428)
/* 000675 0x80A6FB2C 24A50428 */ addiu	$a1, $a1, %lo(D_80A70428)
/* 000676 0x80A6FB30 0C02F717 */ jal	func_800BDC5C
/* 000677 0x80A6FB34 24060002 */ li	$a2, 0X2
.L80A6FB38:
/* 000678 0x80A6FB38 960202B4 */ lhu	$v0, 0X2B4($s0)
.L80A6FB3C:
/* 000679 0x80A6FB3C 2401279D */ li	$at, 0X279D
/* 000680 0x80A6FB40 26040144 */ addiu	$a0, $s0, 0X144
/* 000681 0x80A6FB44 10410005 */ beq	$v0, $at, .L80A6FB5C
/* 000682 0x80A6FB48 240127A0 */ li	$at, 0X27A0
/* 000683 0x80A6FB4C 10410003 */ beq	$v0, $at, .L80A6FB5C
/* 000684 0x80A6FB50 2401278B */ li	$at, 0X278B
/* 000685 0x80A6FB54 5441000E */ bnel	$v0, $at, .L80A6FB90
/* 000686 0x80A6FB58 8FBF001C */ lw	$ra, 0X1C($sp)
.L80A6FB5C:
/* 000687 0x80A6FB5C 0C04DE2E */ jal	func_801378B8
/* 000688 0x80A6FB60 3C054100 */ lui	$a1, 0x4100
/* 000689 0x80A6FB64 5040000A */ beqzl	$v0, .L80A6FB90
/* 000690 0x80A6FB68 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000691 0x80A6FB6C 861902AE */ lh	$t9, 0X2AE($s0)
/* 000692 0x80A6FB70 02002025 */ move	$a0, $s0
/* 000693 0x80A6FB74 57200006 */ bnezl	$t9, .L80A6FB90
/* 000694 0x80A6FB78 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000695 0x80A6FB7C 0C02E3B2 */ jal	func_800B8EC8
/* 000696 0x80A6FB80 24052991 */ li	$a1, 0X2991
/* 000697 0x80A6FB84 24080001 */ li	$t0, 0X1
/* 000698 0x80A6FB88 A60802AE */ sh	$t0, 0X2AE($s0)
/* 000699 0x80A6FB8C 8FBF001C */ lw	$ra, 0X1C($sp)
.L80A6FB90:
/* 000700 0x80A6FB90 8FB00018 */ lw	$s0, 0X18($sp)
/* 000701 0x80A6FB94 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000702 0x80A6FB98 03E00008 */ jr	$ra
/* 000703 0x80A6FB9C 00000000 */ nop


.section .late_rodata

glabel jtbl_D_80A7056C
/* 001331 0x80A7056C */ .word	L80A6FB00
/* 001332 0x80A70570 */ .word	L80A6FB00
/* 001333 0x80A70574 */ .word	L80A6FB00
/* 001334 0x80A70578 */ .word	L80A6FA28
/* 001335 0x80A7057C */ .word	L80A6FA38
/* 001336 0x80A70580 */ .word	L80A6FA4C
/* 001337 0x80A70584 */ .word	L80A6FA60
/* 001338 0x80A70588 */ .word	0x00000000
/* 001339 0x80A7058C */ .word	0x00000000
