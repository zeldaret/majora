glabel EnSuttari_Update
/* 003726 0x80BAE108 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 003727 0x80BAE10C AFB00018 */ sw	$s0, 0X18($sp)
/* 003728 0x80BAE110 00808025 */ move	$s0, $a0
/* 003729 0x80BAE114 AFBF001C */ sw	$ra, 0X1C($sp)
/* 003730 0x80BAE118 8CA31CCC */ lw	$v1, 0X1CCC($a1)
/* 003731 0x80BAE11C AFA50034 */ sw	$a1, 0X34($sp)
/* 003732 0x80BAE120 02002025 */ move	$a0, $s0
/* 003733 0x80BAE124 AFA30024 */ sw	$v1, 0X24($sp)
/* 003734 0x80BAE128 8E190148 */ lw	$t9, 0X148($s0)
/* 003735 0x80BAE12C 0320F809 */ jalr	$t9
/* 003736 0x80BAE130 00000000 */ nop
/* 003737 0x80BAE134 960201E4 */ lhu	$v0, 0X1E4($s0)
/* 003738 0x80BAE138 8FA30024 */ lw	$v1, 0X24($sp)
/* 003739 0x80BAE13C 8FA50034 */ lw	$a1, 0X34($sp)
/* 003740 0x80BAE140 304E0008 */ andi	$t6, $v0, 0X8
/* 003741 0x80BAE144 51C0000D */ beqzl	$t6, .L80BAE17C
/* 003742 0x80BAE148 304B8000 */ andi	$t3, $v0, 0X8000
/* 003743 0x80BAE14C 960F01E6 */ lhu	$t7, 0X1E6($s0)
/* 003744 0x80BAE150 31F80010 */ andi	$t8, $t7, 0X10
/* 003745 0x80BAE154 53000009 */ beqzl	$t8, .L80BAE17C
/* 003746 0x80BAE158 304B8000 */ andi	$t3, $v0, 0X8000
/* 003747 0x80BAE15C 8C680A6C */ lw	$t0, 0XA6C($v1)
/* 003748 0x80BAE160 240A0003 */ li	$t2, 0X3
/* 003749 0x80BAE164 000848C0 */ sll	$t1, $t0, 3
/* 003750 0x80BAE168 05230004 */ bgezl	$t1, .L80BAE17C
/* 003751 0x80BAE16C 304B8000 */ andi	$t3, $v0, 0X8000
/* 003752 0x80BAE170 A46A0118 */ sh	$t2, 0X118($v1)
/* 003753 0x80BAE174 960201E4 */ lhu	$v0, 0X1E4($s0)
/* 003754 0x80BAE178 304B8000 */ andi	$t3, $v0, 0X8000
.L80BAE17C:
/* 003755 0x80BAE17C 55600004 */ bnezl	$t3, .L80BAE190
/* 003756 0x80BAE180 960C01E6 */ lhu	$t4, 0X1E6($s0)
/* 003757 0x80BAE184 0C2EAD3C */ jal	func_80BAB4F0
/* 003758 0x80BAE188 02002025 */ move	$a0, $s0
/* 003759 0x80BAE18C 960C01E6 */ lhu	$t4, 0X1E6($s0)
.L80BAE190:
/* 003760 0x80BAE190 318D0002 */ andi	$t5, $t4, 0X2
/* 003761 0x80BAE194 51A00004 */ beqzl	$t5, .L80BAE1A8
/* 003762 0x80BAE198 92190428 */ lbu	$t9, 0X428($s0)
/* 003763 0x80BAE19C 0C2EAA34 */ jal	func_80BAA8D0
/* 003764 0x80BAE1A0 00000000 */ nop
/* 003765 0x80BAE1A4 92190428 */ lbu	$t9, 0X428($s0)
.L80BAE1A8:
/* 003766 0x80BAE1A8 53200025 */ beqzl	$t9, .L80BAE240
/* 003767 0x80BAE1AC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 003768 0x80BAE1B0 8E020450 */ lw	$v0, 0X450($s0)
/* 003769 0x80BAE1B4 24010002 */ li	$at, 0X2
/* 003770 0x80BAE1B8 26040150 */ addiu	$a0, $s0, 0X150
/* 003771 0x80BAE1BC 10410004 */ beq	$v0, $at, .L80BAE1D0
/* 003772 0x80BAE1C0 3C054100 */ lui	$a1, 0x4100
/* 003773 0x80BAE1C4 24010006 */ li	$at, 0X6
/* 003774 0x80BAE1C8 1441000D */ bne	$v0, $at, .L80BAE200
/* 003775 0x80BAE1CC 00000000 */ nop
.L80BAE1D0:
/* 003776 0x80BAE1D0 0C04DE2E */ jal	func_801378B8
/* 003777 0x80BAE1D4 AFA40020 */ sw	$a0, 0X20($sp)
/* 003778 0x80BAE1D8 14400004 */ bnez	$v0, .L80BAE1EC
/* 003779 0x80BAE1DC 8FA40020 */ lw	$a0, 0X20($sp)
/* 003780 0x80BAE1E0 0C04DE2E */ jal	func_801378B8
/* 003781 0x80BAE1E4 3C054180 */ lui	$a1, 0x4180
/* 003782 0x80BAE1E8 10400014 */ beqz	$v0, .L80BAE23C
.L80BAE1EC:
/* 003783 0x80BAE1EC 02002025 */ move	$a0, $s0
/* 003784 0x80BAE1F0 0C02E3B2 */ jal	func_800B8EC8
/* 003785 0x80BAE1F4 2405298B */ li	$a1, 0X298B
/* 003786 0x80BAE1F8 10000011 */ b	.L80BAE240
/* 003787 0x80BAE1FC 8FBF001C */ lw	$ra, 0X1C($sp)
.L80BAE200:
/* 003788 0x80BAE200 10400002 */ beqz	$v0, .L80BAE20C
/* 003789 0x80BAE204 24010005 */ li	$at, 0X5
/* 003790 0x80BAE208 1441000C */ bne	$v0, $at, .L80BAE23C
.L80BAE20C:
/* 003791 0x80BAE20C 26040150 */ addiu	$a0, $s0, 0X150
/* 003792 0x80BAE210 AFA40020 */ sw	$a0, 0X20($sp)
/* 003793 0x80BAE214 0C04DE2E */ jal	func_801378B8
/* 003794 0x80BAE218 3C054100 */ lui	$a1, 0x4100
/* 003795 0x80BAE21C 14400004 */ bnez	$v0, .L80BAE230
/* 003796 0x80BAE220 8FA40020 */ lw	$a0, 0X20($sp)
/* 003797 0x80BAE224 0C04DE2E */ jal	func_801378B8
/* 003798 0x80BAE228 3C054188 */ lui	$a1, 0x4188
/* 003799 0x80BAE22C 10400003 */ beqz	$v0, .L80BAE23C
.L80BAE230:
/* 003800 0x80BAE230 02002025 */ move	$a0, $s0
/* 003801 0x80BAE234 0C02E3B2 */ jal	func_800B8EC8
/* 003802 0x80BAE238 2405298B */ li	$a1, 0X298B
.L80BAE23C:
/* 003803 0x80BAE23C 8FBF001C */ lw	$ra, 0X1C($sp)
.L80BAE240:
/* 003804 0x80BAE240 8FB00018 */ lw	$s0, 0X18($sp)
/* 003805 0x80BAE244 27BD0030 */ addiu	$sp, $sp, 0X30
/* 003806 0x80BAE248 03E00008 */ jr	$ra
/* 003807 0x80BAE24C 00000000 */ nop

