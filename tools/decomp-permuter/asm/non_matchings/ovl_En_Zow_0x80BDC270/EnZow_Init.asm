glabel EnZow_Init
/* 000814 0x80BDCF28 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 000815 0x80BDCF2C AFB00028 */ sw	$s0, 0X28($sp)
/* 000816 0x80BDCF30 00808025 */ move	$s0, $a0
/* 000817 0x80BDCF34 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000818 0x80BDCF38 AFA50044 */ sw	$a1, 0X44($sp)
/* 000819 0x80BDCF3C 3C06800B */ lui	$a2, %hi(func_800B3FC0)
/* 000820 0x80BDCF40 24C63FC0 */ addiu	$a2, $a2, %lo(func_800B3FC0)
/* 000821 0x80BDCF44 260400BC */ addiu	$a0, $s0, 0XBC
/* 000822 0x80BDCF48 24050000 */ li	$a1, 0X0
/* 000823 0x80BDCF4C 0C02CEE9 */ jal	Actor_SetDrawParams
/* 000824 0x80BDCF50 3C0741A0 */ lui	$a3, 0x41A0
/* 000825 0x80BDCF54 3C053C23 */ lui	$a1, 0x3C23
/* 000826 0x80BDCF58 34A5D70A */ ori	$a1, $a1, 0XD70A
/* 000827 0x80BDCF5C 0C02D9F8 */ jal	Actor_SetScale
/* 000828 0x80BDCF60 02002025 */ move	$a0, $s0
/* 000829 0x80BDCF64 3C0E80BE */ lui	$t6, %hi(func_80BDD79C)
/* 000830 0x80BDCF68 25CED79C */ addiu	$t6, $t6, %lo(func_80BDD79C)
/* 000831 0x80BDCF6C AE0E0618 */ sw	$t6, 0X618($s0)
/* 000832 0x80BDCF70 26050144 */ addiu	$a1, $s0, 0X144
/* 000833 0x80BDCF74 3C060601 */ lui	$a2, 0x0601
/* 000834 0x80BDCF78 3C070600 */ lui	$a3, 0x0600
/* 000835 0x80BDCF7C 260F01D4 */ addiu	$t7, $s0, 0X1D4
/* 000836 0x80BDCF80 2618024C */ addiu	$t8, $s0, 0X24C
/* 000837 0x80BDCF84 24190014 */ li	$t9, 0X14
/* 000838 0x80BDCF88 AFB90018 */ sw	$t9, 0X18($sp)
/* 000839 0x80BDCF8C AFB80014 */ sw	$t8, 0X14($sp)
/* 000840 0x80BDCF90 AFAF0010 */ sw	$t7, 0X10($sp)
/* 000841 0x80BDCF94 24E74248 */ addiu	$a3, $a3, 0X4248
/* 000842 0x80BDCF98 24C6D208 */ addiu	$a2, $a2, -0X2DF8
/* 000843 0x80BDCF9C AFA50034 */ sw	$a1, 0X34($sp)
/* 000844 0x80BDCFA0 0C04DACC */ jal	SkelAnime_InitSV
/* 000845 0x80BDCFA4 8FA40044 */ lw	$a0, 0X44($sp)
/* 000846 0x80BDCFA8 3C050600 */ lui	$a1, 0x0600
/* 000847 0x80BDCFAC 24A53610 */ addiu	$a1, $a1, 0X3610
/* 000848 0x80BDCFB0 0C04DD0C */ jal	SkelAnime_ChangeAnimDefaultStop
/* 000849 0x80BDCFB4 8FA40034 */ lw	$a0, 0X34($sp)
/* 000850 0x80BDCFB8 24080001 */ li	$t0, 0X1
/* 000851 0x80BDCFBC A60802C8 */ sh	$t0, 0X2C8($s0)
/* 000852 0x80BDCFC0 3C0780BE */ lui	$a3, %hi(D_80BDDCF0)
/* 000853 0x80BDCFC4 24E7DCF0 */ addiu	$a3, $a3, %lo(D_80BDDCF0)
/* 000854 0x80BDCFC8 8FA40044 */ lw	$a0, 0X44($sp)
/* 000855 0x80BDCFCC 26050188 */ addiu	$a1, $s0, 0X188
/* 000856 0x80BDCFD0 0C0384DD */ jal	Collision_InitCylinder
/* 000857 0x80BDCFD4 02003025 */ move	$a2, $s0
/* 000858 0x80BDCFD8 8E0B0004 */ lw	$t3, 0X4($s0)
/* 000859 0x80BDCFDC A60000C0 */ sh	$zero, 0XC0($s0)
/* 000860 0x80BDCFE0 860A00C0 */ lh	$t2, 0XC0($s0)
/* 000861 0x80BDCFE4 2401FFFE */ li	$at, -0X2
/* 000862 0x80BDCFE8 240900FF */ li	$t1, 0XFF
/* 000863 0x80BDCFEC 01616024 */ and	$t4, $t3, $at
/* 000864 0x80BDCFF0 A60002CA */ sh	$zero, 0X2CA($s0)
/* 000865 0x80BDCFF4 A60002CC */ sh	$zero, 0X2CC($s0)
/* 000866 0x80BDCFF8 A60002CE */ sh	$zero, 0X2CE($s0)
/* 000867 0x80BDCFFC A20900B6 */ sb	$t1, 0XB6($s0)
/* 000868 0x80BDD000 A6000116 */ sh	$zero, 0X116($s0)
/* 000869 0x80BDD004 AE0C0004 */ sw	$t4, 0X4($s0)
/* 000870 0x80BDD008 A60A0034 */ sh	$t2, 0X34($s0)
/* 000871 0x80BDD00C 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000872 0x80BDD010 8FB00028 */ lw	$s0, 0X28($sp)
/* 000873 0x80BDD014 27BD0040 */ addiu	$sp, $sp, 0X40
/* 000874 0x80BDD018 03E00008 */ jr	$ra
/* 000875 0x80BDD01C 00000000 */ nop

