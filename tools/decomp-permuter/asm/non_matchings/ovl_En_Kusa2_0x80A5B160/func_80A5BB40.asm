glabel func_80A5BB40
/* 000632 0x80A5BB40 27BDFF68 */ addiu	$sp, $sp, -0X98
/* 000633 0x80A5BB44 AFB70068 */ sw	$s7, 0X68($sp)
/* 000634 0x80A5BB48 AFB20054 */ sw	$s2, 0X54($sp)
/* 000635 0x80A5BB4C 00809025 */ move	$s2, $a0
/* 000636 0x80A5BB50 00A0B825 */ move	$s7, $a1
/* 000637 0x80A5BB54 AFBF006C */ sw	$ra, 0X6C($sp)
/* 000638 0x80A5BB58 AFB60064 */ sw	$s6, 0X64($sp)
/* 000639 0x80A5BB5C AFB50060 */ sw	$s5, 0X60($sp)
/* 000640 0x80A5BB60 AFB4005C */ sw	$s4, 0X5C($sp)
/* 000641 0x80A5BB64 AFB30058 */ sw	$s3, 0X58($sp)
/* 000642 0x80A5BB68 AFB10050 */ sw	$s1, 0X50($sp)
/* 000643 0x80A5BB6C AFB0004C */ sw	$s0, 0X4C($sp)
/* 000644 0x80A5BB70 F7BE0040 */ sdc1	$f30, 0X40($sp)
/* 000645 0x80A5BB74 F7BC0038 */ sdc1	$f28, 0X38($sp)
/* 000646 0x80A5BB78 F7BA0030 */ sdc1	$f26, 0X30($sp)
/* 000647 0x80A5BB7C F7B80028 */ sdc1	$f24, 0X28($sp)
/* 000648 0x80A5BB80 F7B60020 */ sdc1	$f22, 0X20($sp)
/* 000649 0x80A5BB84 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 000650 0x80A5BB88 8E4E0004 */ lw	$t6, 0X4($s2)
/* 000651 0x80A5BB8C 31CF0040 */ andi	$t7, $t6, 0X40
/* 000652 0x80A5BB90 51E00050 */ beqzl	$t7, .L80A5BCD4
/* 000653 0x80A5BB94 8FBF006C */ lw	$ra, 0X6C($sp)
/* 000654 0x80A5BB98 04C0004D */ bltz	$a2, .L80A5BCD0
/* 000655 0x80A5BB9C 00008825 */ move	$s1, $zero
/* 000656 0x80A5BBA0 3C01C140 */ lui	$at, 0xC140
/* 000657 0x80A5BBA4 4481F000 */ mtc1	$at, $f30
/* 000658 0x80A5BBA8 3C0180A6 */ lui	$at, %hi(D_80A5EB84)
/* 000659 0x80A5BBAC C43CEB84 */ lwc1	$f28, %lo(D_80A5EB84)($at)
/* 000660 0x80A5BBB0 3C0180A6 */ lui	$at, %hi(D_80A5EB88)
/* 000661 0x80A5BBB4 3C1680A6 */ lui	$s6, %hi(D_80A5EB0C)
/* 000662 0x80A5BBB8 3C1580A6 */ lui	$s5, %hi(D_80A5EB18)
/* 000663 0x80A5BBBC 26B5EB18 */ addiu	$s5, $s5, %lo(D_80A5EB18)
/* 000664 0x80A5BBC0 26D6EB0C */ addiu	$s6, $s6, %lo(D_80A5EB0C)
/* 000665 0x80A5BBC4 C43AEB88 */ lwc1	$f26, %lo(D_80A5EB88)($at)
/* 000666 0x80A5BBC8 24D30001 */ addiu	$s3, $a2, 0X1
/* 000667 0x80A5BBCC 27B40084 */ addiu	$s4, $sp, 0X84
/* 000668 0x80A5BBD0 2404C180 */ li	$a0, -0X3E80
.L80A5BBD4:
/* 000669 0x80A5BBD4 0C03FD14 */ jal	Math_Rand_S16Offset
/* 000670 0x80A5BBD8 24057D00 */ li	$a1, 0X7D00
/* 000671 0x80A5BBDC 86580032 */ lh	$t8, 0X32($s2)
/* 000672 0x80A5BBE0 00588021 */ addu	$s0, $v0, $t8
/* 000673 0x80A5BBE4 00108400 */ sll	$s0, $s0, 16
/* 000674 0x80A5BBE8 00108403 */ sra	$s0, $s0, 16
/* 000675 0x80A5BBEC 00102400 */ sll	$a0, $s0, 16
/* 000676 0x80A5BBF0 0C03FB61 */ jal	Math_Sins
/* 000677 0x80A5BBF4 00042403 */ sra	$a0, $a0, 16
/* 000678 0x80A5BBF8 00102400 */ sll	$a0, $s0, 16
/* 000679 0x80A5BBFC 46000506 */ mov.s	$f20, $f0
/* 000680 0x80A5BC00 0C03FB51 */ jal	Math_Coss
/* 000681 0x80A5BC04 00042403 */ sra	$a0, $a0, 16
/* 000682 0x80A5BC08 0C021BF7 */ jal	randZeroOne
/* 000683 0x80A5BC0C 46000586 */ mov.s	$f22, $f0
/* 000684 0x80A5BC10 461E0602 */ mul.s	$f24, $f0, $f30
/* 000685 0x80A5BC14 C6460024 */ lwc1	$f6, 0X24($s2)
/* 000686 0x80A5BC18 4618A102 */ mul.s	$f4, $f20, $f24
/* 000687 0x80A5BC1C 46062200 */ add.s	$f8, $f4, $f6
/* 000688 0x80A5BC20 0C021BF7 */ jal	randZeroOne
/* 000689 0x80A5BC24 E7A80084 */ swc1	$f8, 0X84($sp)
/* 000690 0x80A5BC28 3C014100 */ lui	$at, 0x4100
/* 000691 0x80A5BC2C 44815000 */ mtc1	$at, $f10
/* 000692 0x80A5BC30 3C014000 */ lui	$at, 0x4000
/* 000693 0x80A5BC34 44819000 */ mtc1	$at, $f18
/* 000694 0x80A5BC38 460A0402 */ mul.s	$f16, $f0, $f10
/* 000695 0x80A5BC3C C6460028 */ lwc1	$f6, 0X28($s2)
/* 000696 0x80A5BC40 3C0180A6 */ lui	$at, %hi(D_80A5EB18)
/* 000697 0x80A5BC44 4618B282 */ mul.s	$f10, $f22, $f24
/* 000698 0x80A5BC48 2419000A */ li	$t9, 0XA
/* 000699 0x80A5BC4C 24080032 */ li	$t0, 0X32
/* 000700 0x80A5BC50 02E02025 */ move	$a0, $s7
/* 000701 0x80A5BC54 02802825 */ move	$a1, $s4
/* 000702 0x80A5BC58 46128100 */ add.s	$f4, $f16, $f18
/* 000703 0x80A5BC5C 02A03025 */ move	$a2, $s5
/* 000704 0x80A5BC60 02C03825 */ move	$a3, $s6
/* 000705 0x80A5BC64 46062200 */ add.s	$f8, $f4, $f6
/* 000706 0x80A5BC68 461AA102 */ mul.s	$f4, $f20, $f26
/* 000707 0x80A5BC6C 00000000 */ nop
/* 000708 0x80A5BC70 461AB182 */ mul.s	$f6, $f22, $f26
/* 000709 0x80A5BC74 E7A80088 */ swc1	$f8, 0X88($sp)
/* 000710 0x80A5BC78 C650002C */ lwc1	$f16, 0X2C($s2)
/* 000711 0x80A5BC7C AFA80014 */ sw	$t0, 0X14($sp)
/* 000712 0x80A5BC80 E424EB18 */ swc1	$f4, %lo(D_80A5EB18)($at)
/* 000713 0x80A5BC84 3C0180A6 */ lui	$at, %hi(D_80A5EB20)
/* 000714 0x80A5BC88 46105480 */ add.s	$f18, $f10, $f16
/* 000715 0x80A5BC8C E426EB20 */ swc1	$f6, %lo(D_80A5EB20)($at)
/* 000716 0x80A5BC90 3C0180A6 */ lui	$at, %hi(D_80A5EB18)
/* 000717 0x80A5BC94 C428EB18 */ lwc1	$f8, %lo(D_80A5EB18)($at)
/* 000718 0x80A5BC98 3C0180A6 */ lui	$at, %hi(D_80A5EB0C)
/* 000719 0x80A5BC9C E7B2008C */ swc1	$f18, 0X8C($sp)
/* 000720 0x80A5BCA0 461C4282 */ mul.s	$f10, $f8, $f28
/* 000721 0x80A5BCA4 AFB90010 */ sw	$t9, 0X10($sp)
/* 000722 0x80A5BCA8 E42AEB0C */ swc1	$f10, %lo(D_80A5EB0C)($at)
/* 000723 0x80A5BCAC 3C0180A6 */ lui	$at, %hi(D_80A5EB20)
/* 000724 0x80A5BCB0 C430EB20 */ lwc1	$f16, %lo(D_80A5EB20)($at)
/* 000725 0x80A5BCB4 3C0180A6 */ lui	$at, %hi(D_80A5EB14)
/* 000726 0x80A5BCB8 461C8482 */ mul.s	$f18, $f16, $f28
/* 000727 0x80A5BCBC 0C02C484 */ jal	func_800B1210
/* 000728 0x80A5BCC0 E432EB14 */ swc1	$f18, %lo(D_80A5EB14)($at)
/* 000729 0x80A5BCC4 26310001 */ addiu	$s1, $s1, 0X1
/* 000730 0x80A5BCC8 5671FFC2 */ bnel	$s3, $s1, .L80A5BBD4
/* 000731 0x80A5BCCC 2404C180 */ li	$a0, -0X3E80
.L80A5BCD0:
/* 000732 0x80A5BCD0 8FBF006C */ lw	$ra, 0X6C($sp)
.L80A5BCD4:
/* 000733 0x80A5BCD4 D7B40018 */ ldc1	$f20, 0X18($sp)
/* 000734 0x80A5BCD8 D7B60020 */ ldc1	$f22, 0X20($sp)
/* 000735 0x80A5BCDC D7B80028 */ ldc1	$f24, 0X28($sp)
/* 000736 0x80A5BCE0 D7BA0030 */ ldc1	$f26, 0X30($sp)
/* 000737 0x80A5BCE4 D7BC0038 */ ldc1	$f28, 0X38($sp)
/* 000738 0x80A5BCE8 D7BE0040 */ ldc1	$f30, 0X40($sp)
/* 000739 0x80A5BCEC 8FB0004C */ lw	$s0, 0X4C($sp)
/* 000740 0x80A5BCF0 8FB10050 */ lw	$s1, 0X50($sp)
/* 000741 0x80A5BCF4 8FB20054 */ lw	$s2, 0X54($sp)
/* 000742 0x80A5BCF8 8FB30058 */ lw	$s3, 0X58($sp)
/* 000743 0x80A5BCFC 8FB4005C */ lw	$s4, 0X5C($sp)
/* 000744 0x80A5BD00 8FB50060 */ lw	$s5, 0X60($sp)
/* 000745 0x80A5BD04 8FB60064 */ lw	$s6, 0X64($sp)
/* 000746 0x80A5BD08 8FB70068 */ lw	$s7, 0X68($sp)
/* 000747 0x80A5BD0C 03E00008 */ jr	$ra
/* 000748 0x80A5BD10 27BD0098 */ addiu	$sp, $sp, 0X98

