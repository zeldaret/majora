glabel EnVm_Update
/* 000801 0x808CCEE4 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 000802 0x808CCEE8 AFB10028 */ sw	$s1, 0X28($sp)
/* 000803 0x808CCEEC AFB00024 */ sw	$s0, 0X24($sp)
/* 000804 0x808CCEF0 00808025 */ move	$s0, $a0
/* 000805 0x808CCEF4 00A08825 */ move	$s1, $a1
/* 000806 0x808CCEF8 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000807 0x808CCEFC 02002025 */ move	$a0, $s0
/* 000808 0x808CCF00 0C233379 */ jal	func_808CCDE4
/* 000809 0x808CCF04 02202825 */ move	$a1, $s1
/* 000810 0x808CCF08 920E0210 */ lbu	$t6, 0X210($s0)
/* 000811 0x808CCF0C 24010002 */ li	$at, 0X2
/* 000812 0x808CCF10 02202025 */ move	$a0, $s1
/* 000813 0x808CCF14 15C1001C */ bne	$t6, $at, .L808CCF88
/* 000814 0x808CCF18 26050234 */ addiu	$a1, $s0, 0X234
/* 000815 0x808CCF1C 240F009B */ li	$t7, 0X9B
/* 000816 0x808CCF20 2418000A */ li	$t8, 0XA
/* 000817 0x808CCF24 AFB80014 */ sw	$t8, 0X14($sp)
/* 000818 0x808CCF28 AFAF0010 */ sw	$t7, 0X10($sp)
/* 000819 0x808CCF2C 24060014 */ li	$a2, 0X14
/* 000820 0x808CCF30 2407FFFF */ li	$a3, -0X1
/* 000821 0x808CCF34 0C02CC6F */ jal	func_800B31BC
/* 000822 0x808CCF38 AFA50034 */ sw	$a1, 0X34($sp)
/* 000823 0x808CCF3C 3C190002 */ lui	$t9, 0x0002
/* 000824 0x808CCF40 0331C821 */ addu	$t9, $t9, $s1
/* 000825 0x808CCF44 8F398840 */ lw	$t9, -0X77C0($t9)
/* 000826 0x808CCF48 8FA50034 */ lw	$a1, 0X34($sp)
/* 000827 0x808CCF4C 02202025 */ move	$a0, $s1
/* 000828 0x808CCF50 33280001 */ andi	$t0, $t9, 0X1
/* 000829 0x808CCF54 11000009 */ beqz	$t0, .L808CCF7C
/* 000830 0x808CCF58 3C0640C0 */ lui	$a2, 0x40C0
/* 000831 0x808CCF5C 24090078 */ li	$t1, 0X78
/* 000832 0x808CCF60 240A0014 */ li	$t2, 0X14
/* 000833 0x808CCF64 240B0001 */ li	$t3, 0X1
/* 000834 0x808CCF68 AFAB0018 */ sw	$t3, 0X18($sp)
/* 000835 0x808CCF6C AFAA0014 */ sw	$t2, 0X14($sp)
/* 000836 0x808CCF70 AFA90010 */ sw	$t1, 0X10($sp)
/* 000837 0x808CCF74 0C02EFEC */ jal	func_800BBFB0
/* 000838 0x808CCF78 24070001 */ li	$a3, 0X1
.L808CCF7C:
/* 000839 0x808CCF7C 02002025 */ move	$a0, $s0
/* 000840 0x808CCF80 0C02E3B2 */ jal	func_800B8EC8
/* 000841 0x808CCF84 24053172 */ li	$a1, 0X3172
.L808CCF88:
/* 000842 0x808CCF88 44802000 */ mtc1	$zero, $f4
/* 000843 0x808CCF8C C6060224 */ lwc1	$f6, 0X224($s0)
/* 000844 0x808CCF90 02002025 */ move	$a0, $s0
/* 000845 0x808CCF94 4606203C */ c.lt.s	$f4, $f6
/* 000846 0x808CCF98 00000000 */ nop
/* 000847 0x808CCF9C 45020004 */ bc1fl .L808CCFB0
/* 000848 0x808CCFA0 8E19020C */ lw	$t9, 0X20C($s0)
/* 000849 0x808CCFA4 0C02E404 */ jal	func_800B9010
/* 000850 0x808CCFA8 24053171 */ li	$a1, 0X3171
/* 000851 0x808CCFAC 8E19020C */ lw	$t9, 0X20C($s0)
.L808CCFB0:
/* 000852 0x808CCFB0 02002025 */ move	$a0, $s0
/* 000853 0x808CCFB4 02202825 */ move	$a1, $s1
/* 000854 0x808CCFB8 0320F809 */ jalr	$t9
/* 000855 0x808CCFBC 00000000 */ nop
/* 000856 0x808CCFC0 860C0212 */ lh	$t4, 0X212($s0)
/* 000857 0x808CCFC4 3C010001 */ lui	$at, 0x0001
/* 000858 0x808CCFC8 34218884 */ ori	$at, $at, 0X8884
/* 000859 0x808CCFCC 258D000C */ addiu	$t5, $t4, 0XC
/* 000860 0x808CCFD0 A60D0212 */ sh	$t5, 0X212($s0)
/* 000861 0x808CCFD4 02212821 */ addu	$a1, $s1, $at
/* 000862 0x808CCFD8 26060240 */ addiu	$a2, $s0, 0X240
/* 000863 0x808CCFDC AFA60030 */ sw	$a2, 0X30($sp)
/* 000864 0x808CCFE0 AFA50034 */ sw	$a1, 0X34($sp)
/* 000865 0x808CCFE4 0C038A4A */ jal	Collision_AddOT
/* 000866 0x808CCFE8 02202025 */ move	$a0, $s1
/* 000867 0x808CCFEC 8E0F020C */ lw	$t7, 0X20C($s0)
/* 000868 0x808CCFF0 3C0E808D */ lui	$t6, %hi(func_808CCCF0)
/* 000869 0x808CCFF4 25CECCF0 */ addiu	$t6, $t6, %lo(func_808CCCF0)
/* 000870 0x808CCFF8 8FA50034 */ lw	$a1, 0X34($sp)
/* 000871 0x808CCFFC 11CF0003 */ beq	$t6, $t7, .L808CD00C
/* 000872 0x808CD000 8FA60030 */ lw	$a2, 0X30($sp)
/* 000873 0x808CD004 0C0389D0 */ jal	Collision_AddAC
/* 000874 0x808CD008 02202025 */ move	$a0, $s1
.L808CD00C:
/* 000875 0x808CD00C 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000876 0x808CD010 8FB00024 */ lw	$s0, 0X24($sp)
/* 000877 0x808CD014 8FB10028 */ lw	$s1, 0X28($sp)
/* 000878 0x808CD018 03E00008 */ jr	$ra
/* 000879 0x808CD01C 27BD0040 */ addiu	$sp, $sp, 0X40

