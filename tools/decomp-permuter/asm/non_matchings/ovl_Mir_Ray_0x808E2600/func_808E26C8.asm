glabel func_808E26C8
/* 000050 0x808E26C8 27BDFFA8 */ addiu	$sp, $sp, -0X58
/* 000051 0x808E26CC AFB00024 */ sw	$s0, 0X24($sp)
/* 000052 0x808E26D0 00808025 */ move	$s0, $a0
/* 000053 0x808E26D4 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000054 0x808E26D8 AFB10028 */ sw	$s1, 0X28($sp)
/* 000055 0x808E26DC AFA5005C */ sw	$a1, 0X5C($sp)
/* 000056 0x808E26E0 8FAE005C */ lw	$t6, 0X5C($sp)
/* 000057 0x808E26E4 860F001C */ lh	$t7, 0X1C($s0)
/* 000058 0x808E26E8 3C0141F0 */ lui	$at, 0x41F0
/* 000059 0x808E26EC 8DC31CCC */ lw	$v1, 0X1CCC($t6)
/* 000060 0x808E26F0 44813000 */ mtc1	$at, $f6
/* 000061 0x808E26F4 3C19808E */ lui	$t9, %hi(D_808E3C78)
/* 000062 0x808E26F8 C46A002C */ lwc1	$f10, 0X2C($v1)
/* 000063 0x808E26FC C4640028 */ lwc1	$f4, 0X28($v1)
/* 000064 0x808E2700 8C660024 */ lw	$a2, 0X24($v1)
/* 000065 0x808E2704 E7AA0010 */ swc1	$f10, 0X10($sp)
/* 000066 0x808E2708 8608028C */ lh	$t0, 0X28C($s0)
/* 000067 0x808E270C 46062200 */ add.s	$f8, $f4, $f6
/* 000068 0x808E2710 27393C78 */ addiu	$t9, $t9, %lo(D_808E3C78)
/* 000069 0x808E2714 AFA80014 */ sw	$t0, 0X14($sp)
/* 000070 0x808E2718 8609028E */ lh	$t1, 0X28E($s0)
/* 000071 0x808E271C 44074000 */ mfc1	$a3, $f8
/* 000072 0x808E2720 26040274 */ addiu	$a0, $s0, 0X274
/* 000073 0x808E2724 26050280 */ addiu	$a1, $s0, 0X280
/* 000074 0x808E2728 000FC140 */ sll	$t8, $t7, 5
/* 000075 0x808E272C 03198821 */ addu	$s1, $t8, $t9
/* 000076 0x808E2730 AFA50034 */ sw	$a1, 0X34($sp)
/* 000077 0x808E2734 AFA40038 */ sw	$a0, 0X38($sp)
/* 000078 0x808E2738 AFA30054 */ sw	$v1, 0X54($sp)
/* 000079 0x808E273C 0C238E61 */ jal	func_808E3984
/* 000080 0x808E2740 AFA90018 */ sw	$t1, 0X18($sp)
/* 000081 0x808E2744 8FA30054 */ lw	$v1, 0X54($sp)
/* 000082 0x808E2748 10400038 */ beqz	$v0, .L808E282C
/* 000083 0x808E274C 8FA50038 */ lw	$a1, 0X38($sp)
/* 000084 0x808E2750 922A001F */ lbu	$t2, 0X1F($s1)
/* 000085 0x808E2754 27A60044 */ addiu	$a2, $sp, 0X44
/* 000086 0x808E2758 8FA40034 */ lw	$a0, 0X34($sp)
/* 000087 0x808E275C 314B0008 */ andi	$t3, $t2, 0X8
/* 000088 0x808E2760 11600005 */ beqz	$t3, .L808E2778
/* 000089 0x808E2764 00000000 */ nop
/* 000090 0x808E2768 0C03FD7D */ jal	Math_Vec3f_Diff
/* 000091 0x808E276C 24640024 */ addiu	$a0, $v1, 0X24
/* 000092 0x808E2770 10000004 */ b	.L808E2784
/* 000093 0x808E2774 C6200018 */ lwc1	$f0, 0X18($s1)
.L808E2778:
/* 000094 0x808E2778 0C03FD7D */ jal	Math_Vec3f_Diff
/* 000095 0x808E277C 27A60044 */ addiu	$a2, $sp, 0X44
/* 000096 0x808E2780 C6200018 */ lwc1	$f0, 0X18($s1)
.L808E2784:
/* 000097 0x808E2784 C7B00044 */ lwc1	$f16, 0X44($sp)
/* 000098 0x808E2788 C6040274 */ lwc1	$f4, 0X274($s0)
/* 000099 0x808E278C C7AA0048 */ lwc1	$f10, 0X48($sp)
/* 000100 0x808E2790 46100482 */ mul.s	$f18, $f0, $f16
/* 000101 0x808E2794 26040290 */ addiu	$a0, $s0, 0X290
/* 000102 0x808E2798 24060006 */ li	$a2, 0X6
/* 000103 0x808E279C 460A0402 */ mul.s	$f16, $f0, $f10
/* 000104 0x808E27A0 46049180 */ add.s	$f6, $f18, $f4
/* 000105 0x808E27A4 4600320D */ trunc.w.s	$f8, $f6
/* 000106 0x808E27A8 440D4000 */ mfc1	$t5, $f8
/* 000107 0x808E27AC C7A8004C */ lwc1	$f8, 0X4C($sp)
/* 000108 0x808E27B0 A7AD003C */ sh	$t5, 0X3C($sp)
/* 000109 0x808E27B4 C6120278 */ lwc1	$f18, 0X278($s0)
/* 000110 0x808E27B8 46080282 */ mul.s	$f10, $f0, $f8
/* 000111 0x808E27BC 46128100 */ add.s	$f4, $f16, $f18
/* 000112 0x808E27C0 4600218D */ trunc.w.s	$f6, $f4
/* 000113 0x808E27C4 440F3000 */ mfc1	$t7, $f6
/* 000114 0x808E27C8 00000000 */ nop
/* 000115 0x808E27CC A7AF003E */ sh	$t7, 0X3E($sp)
/* 000116 0x808E27D0 C610027C */ lwc1	$f16, 0X27C($s0)
/* 000117 0x808E27D4 46105480 */ add.s	$f18, $f10, $f16
/* 000118 0x808E27D8 4600910D */ trunc.w.s	$f4, $f18
/* 000119 0x808E27DC 44192000 */ mfc1	$t9, $f4
/* 000120 0x808E27E0 00000000 */ nop
/* 000121 0x808E27E4 A7B90040 */ sh	$t9, 0X40($sp)
/* 000122 0x808E27E8 0C03FBCB */ jal	Lib_StepTowardsCheck_s
/* 000123 0x808E27EC 86250016 */ lh	$a1, 0X16($s1)
/* 000124 0x808E27F0 9228001C */ lbu	$t0, 0X1C($s1)
/* 000125 0x808E27F4 26040298 */ addiu	$a0, $s0, 0X298
/* 000126 0x808E27F8 87A5003C */ lh	$a1, 0X3C($sp)
/* 000127 0x808E27FC AFA80010 */ sw	$t0, 0X10($sp)
/* 000128 0x808E2800 9229001D */ lbu	$t1, 0X1D($s1)
/* 000129 0x808E2804 87A6003E */ lh	$a2, 0X3E($sp)
/* 000130 0x808E2808 87A70040 */ lh	$a3, 0X40($sp)
/* 000131 0x808E280C AFA90014 */ sw	$t1, 0X14($sp)
/* 000132 0x808E2810 922A001E */ lbu	$t2, 0X1E($s1)
/* 000133 0x808E2814 AFAA0018 */ sw	$t2, 0X18($sp)
/* 000134 0x808E2818 860B0290 */ lh	$t3, 0X290($s0)
/* 000135 0x808E281C 0C04067F */ jal	Lights_InitType0PositionalLight
/* 000136 0x808E2820 AFAB001C */ sw	$t3, 0X1C($sp)
/* 000137 0x808E2824 1000000D */ b	.L808E285C
/* 000138 0x808E2828 8FBF002C */ lw	$ra, 0X2C($sp)
.L808E282C:
/* 000139 0x808E282C 26040290 */ addiu	$a0, $s0, 0X290
/* 000140 0x808E2830 00002825 */ move	$a1, $zero
/* 000141 0x808E2834 0C03FBCB */ jal	Lib_StepTowardsCheck_s
/* 000142 0x808E2838 24060006 */ li	$a2, 0X6
/* 000143 0x808E283C 860C0290 */ lh	$t4, 0X290($s0)
/* 000144 0x808E2840 9225001C */ lbu	$a1, 0X1C($s1)
/* 000145 0x808E2844 9226001D */ lbu	$a2, 0X1D($s1)
/* 000146 0x808E2848 9227001E */ lbu	$a3, 0X1E($s1)
/* 000147 0x808E284C 26040298 */ addiu	$a0, $s0, 0X298
/* 000148 0x808E2850 0C0406B2 */ jal	Lights_SetPositionalLightColorAndRadius
/* 000149 0x808E2854 AFAC0010 */ sw	$t4, 0X10($sp)
/* 000150 0x808E2858 8FBF002C */ lw	$ra, 0X2C($sp)
.L808E285C:
/* 000151 0x808E285C 8FB00024 */ lw	$s0, 0X24($sp)
/* 000152 0x808E2860 8FB10028 */ lw	$s1, 0X28($sp)
/* 000153 0x808E2864 03E00008 */ jr	$ra
/* 000154 0x808E2868 27BD0058 */ addiu	$sp, $sp, 0X58

