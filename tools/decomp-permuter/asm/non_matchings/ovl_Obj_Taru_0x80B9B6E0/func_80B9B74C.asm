glabel func_80B9B74C
/* 000027 0x80B9B74C 27BDFF18 */ addiu	$sp, $sp, -0XE8
/* 000028 0x80B9B750 AFB5008C */ sw	$s5, 0X8C($sp)
/* 000029 0x80B9B754 00A0A825 */ move	$s5, $a1
/* 000030 0x80B9B758 AFBF009C */ sw	$ra, 0X9C($sp)
/* 000031 0x80B9B75C AFBE0098 */ sw	$fp, 0X98($sp)
/* 000032 0x80B9B760 AFB70094 */ sw	$s7, 0X94($sp)
/* 000033 0x80B9B764 AFB60090 */ sw	$s6, 0X90($sp)
/* 000034 0x80B9B768 AFB40088 */ sw	$s4, 0X88($sp)
/* 000035 0x80B9B76C AFB30084 */ sw	$s3, 0X84($sp)
/* 000036 0x80B9B770 AFB20080 */ sw	$s2, 0X80($sp)
/* 000037 0x80B9B774 AFB1007C */ sw	$s1, 0X7C($sp)
/* 000038 0x80B9B778 AFB00078 */ sw	$s0, 0X78($sp)
/* 000039 0x80B9B77C F7BE0070 */ sdc1	$f30, 0X70($sp)
/* 000040 0x80B9B780 F7BC0068 */ sdc1	$f28, 0X68($sp)
/* 000041 0x80B9B784 F7BA0060 */ sdc1	$f26, 0X60($sp)
/* 000042 0x80B9B788 F7B80058 */ sdc1	$f24, 0X58($sp)
/* 000043 0x80B9B78C F7B60050 */ sdc1	$f22, 0X50($sp)
/* 000044 0x80B9B790 F7B40048 */ sdc1	$f20, 0X48($sp)
/* 000045 0x80B9B794 3C014000 */ lui	$at, 0x4000
/* 000046 0x80B9B798 4481F000 */ mtc1	$at, $f30
/* 000047 0x80B9B79C 3C014120 */ lui	$at, 0x4120
/* 000048 0x80B9B7A0 4481E000 */ mtc1	$at, $f28
/* 000049 0x80B9B7A4 3C0141F0 */ lui	$at, 0x41F0
/* 000050 0x80B9B7A8 3C170600 */ lui	$s7, 0x0600
/* 000051 0x80B9B7AC 4481D000 */ mtc1	$at, $f26
/* 000052 0x80B9B7B0 26F71040 */ addiu	$s7, $s7, 0X1040
/* 000053 0x80B9B7B4 00009825 */ move	$s3, $zero
/* 000054 0x80B9B7B8 00008825 */ move	$s1, $zero
/* 000055 0x80B9B7BC 24920024 */ addiu	$s2, $a0, 0X24
/* 000056 0x80B9B7C0 241E0010 */ li	$fp, 0X10
/* 000057 0x80B9B7C4 27B600C4 */ addiu	$s6, $sp, 0XC4
/* 000058 0x80B9B7C8 27B400D0 */ addiu	$s4, $sp, 0XD0
.L80B9B7CC:
/* 000059 0x80B9B7CC 00112400 */ sll	$a0, $s1, 16
/* 000060 0x80B9B7D0 0C03FB61 */ jal	Math_Sins
/* 000061 0x80B9B7D4 00042403 */ sra	$a0, $a0, 16
/* 000062 0x80B9B7D8 00112400 */ sll	$a0, $s1, 16
/* 000063 0x80B9B7DC 46000506 */ mov.s	$f20, $f0
/* 000064 0x80B9B7E0 0C03FB51 */ jal	Math_Coss
/* 000065 0x80B9B7E4 00042403 */ sra	$a0, $a0, 16
/* 000066 0x80B9B7E8 0C021BF7 */ jal	randZeroOne
/* 000067 0x80B9B7EC 46000586 */ mov.s	$f22, $f0
/* 000068 0x80B9B7F0 461A0602 */ mul.s	$f24, $f0, $f26
/* 000069 0x80B9B7F4 00000000 */ nop
/* 000070 0x80B9B7F8 4618A102 */ mul.s	$f4, $f20, $f24
/* 000071 0x80B9B7FC 0C021BF7 */ jal	randZeroOne
/* 000072 0x80B9B800 E7A400D0 */ swc1	$f4, 0XD0($sp)
/* 000073 0x80B9B804 461C0182 */ mul.s	$f6, $f0, $f28
/* 000074 0x80B9B808 3C0180BA */ lui	$at, %hi(D_80B9C380)
/* 000075 0x80B9B80C C432C380 */ lwc1	$f18, %lo(D_80B9C380)($at)
/* 000076 0x80B9B810 4618B282 */ mul.s	$f10, $f22, $f24
/* 000077 0x80B9B814 C7B000D0 */ lwc1	$f16, 0XD0($sp)
/* 000078 0x80B9B818 46128102 */ mul.s	$f4, $f16, $f18
/* 000079 0x80B9B81C 461E3200 */ add.s	$f8, $f6, $f30
/* 000080 0x80B9B820 E7AA00D8 */ swc1	$f10, 0XD8($sp)
/* 000081 0x80B9B824 E7A800D4 */ swc1	$f8, 0XD4($sp)
/* 000082 0x80B9B828 0C021BF7 */ jal	randZeroOne
/* 000083 0x80B9B82C E7A400C4 */ swc1	$f4, 0XC4($sp)
/* 000084 0x80B9B830 461C0182 */ mul.s	$f6, $f0, $f28
/* 000085 0x80B9B834 3C0180BA */ lui	$at, %hi(D_80B9C384)
/* 000086 0x80B9B838 C430C384 */ lwc1	$f16, %lo(D_80B9C384)($at)
/* 000087 0x80B9B83C C7AA00D8 */ lwc1	$f10, 0XD8($sp)
/* 000088 0x80B9B840 C7A400D0 */ lwc1	$f4, 0XD0($sp)
/* 000089 0x80B9B844 46105482 */ mul.s	$f18, $f10, $f16
/* 000090 0x80B9B848 461E3200 */ add.s	$f8, $f6, $f30
/* 000091 0x80B9B84C C7B000D4 */ lwc1	$f16, 0XD4($sp)
/* 000092 0x80B9B850 E7A800C8 */ swc1	$f8, 0XC8($sp)
/* 000093 0x80B9B854 E7B200CC */ swc1	$f18, 0XCC($sp)
/* 000094 0x80B9B858 C6460000 */ lwc1	$f6, 0X0($s2)
/* 000095 0x80B9B85C 46062200 */ add.s	$f8, $f4, $f6
/* 000096 0x80B9B860 E7A800D0 */ swc1	$f8, 0XD0($sp)
/* 000097 0x80B9B864 C6520004 */ lwc1	$f18, 0X4($s2)
/* 000098 0x80B9B868 46128100 */ add.s	$f4, $f16, $f18
/* 000099 0x80B9B86C E7A400D4 */ swc1	$f4, 0XD4($sp)
/* 000100 0x80B9B870 C6460008 */ lwc1	$f6, 0X8($s2)
/* 000101 0x80B9B874 46065200 */ add.s	$f8, $f10, $f6
/* 000102 0x80B9B878 0C021BF7 */ jal	randZeroOne
/* 000103 0x80B9B87C E7A800D8 */ swc1	$f8, 0XD8($sp)
/* 000104 0x80B9B880 3C0180BA */ lui	$at, %hi(D_80B9C388)
/* 000105 0x80B9B884 C430C388 */ lwc1	$f16, %lo(D_80B9C388)($at)
/* 000106 0x80B9B888 3C0180BA */ lui	$at, %hi(D_80B9C38C)
/* 000107 0x80B9B88C 4610003C */ c.lt.s	$f0, $f16
/* 000108 0x80B9B890 00000000 */ nop
/* 000109 0x80B9B894 45000003 */ bc1f .L80B9B8A4
/* 000110 0x80B9B898 00000000 */ nop
/* 000111 0x80B9B89C 10000009 */ b	.L80B9B8C4
/* 000112 0x80B9B8A0 24100060 */ li	$s0, 0X60
.L80B9B8A4:
/* 000113 0x80B9B8A4 C432C38C */ lwc1	$f18, %lo(D_80B9C38C)($at)
/* 000114 0x80B9B8A8 24100020 */ li	$s0, 0X20
/* 000115 0x80B9B8AC 4612003C */ c.lt.s	$f0, $f18
/* 000116 0x80B9B8B0 00000000 */ nop
/* 000117 0x80B9B8B4 45000003 */ bc1f .L80B9B8C4
/* 000118 0x80B9B8B8 00000000 */ nop
/* 000119 0x80B9B8BC 10000001 */ b	.L80B9B8C4
/* 000120 0x80B9B8C0 24100040 */ li	$s0, 0X40
.L80B9B8C4:
/* 000121 0x80B9B8C4 0C021BF7 */ jal	randZeroOne
/* 000122 0x80B9B8C8 00000000 */ nop
/* 000123 0x80B9B8CC 461A0102 */ mul.s	$f4, $f0, $f26
/* 000124 0x80B9B8D0 3C0140A0 */ lui	$at, 0x40A0
/* 000125 0x80B9B8D4 44815000 */ mtc1	$at, $f10
/* 000126 0x80B9B8D8 240EFF38 */ li	$t6, -0XC8
/* 000127 0x80B9B8DC 240F001C */ li	$t7, 0X1C
/* 000128 0x80B9B8E0 24180002 */ li	$t8, 0X2
/* 000129 0x80B9B8E4 24090046 */ li	$t1, 0X46
/* 000130 0x80B9B8E8 460A2180 */ add.s	$f6, $f4, $f10
/* 000131 0x80B9B8EC 240AFFFF */ li	$t2, -0X1
/* 000132 0x80B9B8F0 240B0133 */ li	$t3, 0X133
/* 000133 0x80B9B8F4 AFAB0038 */ sw	$t3, 0X38($sp)
/* 000134 0x80B9B8F8 4600320D */ trunc.w.s	$f8, $f6
/* 000135 0x80B9B8FC AFAA0034 */ sw	$t2, 0X34($sp)
/* 000136 0x80B9B900 AFA90030 */ sw	$t1, 0X30($sp)
/* 000137 0x80B9B904 AFB8001C */ sw	$t8, 0X1C($sp)
/* 000138 0x80B9B908 44084000 */ mfc1	$t0, $f8
/* 000139 0x80B9B90C AFAF0018 */ sw	$t7, 0X18($sp)
/* 000140 0x80B9B910 AFAE0010 */ sw	$t6, 0X10($sp)
/* 000141 0x80B9B914 02A02025 */ move	$a0, $s5
/* 000142 0x80B9B918 02802825 */ move	$a1, $s4
/* 000143 0x80B9B91C 02C03025 */ move	$a2, $s6
/* 000144 0x80B9B920 02803825 */ move	$a3, $s4
/* 000145 0x80B9B924 AFB00014 */ sw	$s0, 0X14($sp)
/* 000146 0x80B9B928 AFA00020 */ sw	$zero, 0X20($sp)
/* 000147 0x80B9B92C AFA00028 */ sw	$zero, 0X28($sp)
/* 000148 0x80B9B930 AFA0002C */ sw	$zero, 0X2C($sp)
/* 000149 0x80B9B934 AFB7003C */ sw	$s7, 0X3C($sp)
/* 000150 0x80B9B938 0C02CA04 */ jal	EffectSS_SpawnShard
/* 000151 0x80B9B93C AFA80024 */ sw	$t0, 0X24($sp)
/* 000152 0x80B9B940 26314E20 */ addiu	$s1, $s1, 0X4E20
/* 000153 0x80B9B944 00118C00 */ sll	$s1, $s1, 16
/* 000154 0x80B9B948 26730001 */ addiu	$s3, $s3, 0X1
/* 000155 0x80B9B94C 167EFF9F */ bne	$s3, $fp, .L80B9B7CC
/* 000156 0x80B9B950 00118C03 */ sra	$s1, $s1, 16
/* 000157 0x80B9B954 240C0064 */ li	$t4, 0X64
/* 000158 0x80B9B958 240D00A0 */ li	$t5, 0XA0
/* 000159 0x80B9B95C 240E0001 */ li	$t6, 0X1
/* 000160 0x80B9B960 AFAE0018 */ sw	$t6, 0X18($sp)
/* 000161 0x80B9B964 AFAD0014 */ sw	$t5, 0X14($sp)
/* 000162 0x80B9B968 AFAC0010 */ sw	$t4, 0X10($sp)
/* 000163 0x80B9B96C 02A02025 */ move	$a0, $s5
/* 000164 0x80B9B970 02402825 */ move	$a1, $s2
/* 000165 0x80B9B974 3C0642B4 */ lui	$a2, 0x42B4
/* 000166 0x80B9B978 0C02EFEC */ jal	func_800BBFB0
/* 000167 0x80B9B97C 24070006 */ li	$a3, 0X6
/* 000168 0x80B9B980 8FBF009C */ lw	$ra, 0X9C($sp)
/* 000169 0x80B9B984 D7B40048 */ ldc1	$f20, 0X48($sp)
/* 000170 0x80B9B988 D7B60050 */ ldc1	$f22, 0X50($sp)
/* 000171 0x80B9B98C D7B80058 */ ldc1	$f24, 0X58($sp)
/* 000172 0x80B9B990 D7BA0060 */ ldc1	$f26, 0X60($sp)
/* 000173 0x80B9B994 D7BC0068 */ ldc1	$f28, 0X68($sp)
/* 000174 0x80B9B998 D7BE0070 */ ldc1	$f30, 0X70($sp)
/* 000175 0x80B9B99C 8FB00078 */ lw	$s0, 0X78($sp)
/* 000176 0x80B9B9A0 8FB1007C */ lw	$s1, 0X7C($sp)
/* 000177 0x80B9B9A4 8FB20080 */ lw	$s2, 0X80($sp)
/* 000178 0x80B9B9A8 8FB30084 */ lw	$s3, 0X84($sp)
/* 000179 0x80B9B9AC 8FB40088 */ lw	$s4, 0X88($sp)
/* 000180 0x80B9B9B0 8FB5008C */ lw	$s5, 0X8C($sp)
/* 000181 0x80B9B9B4 8FB60090 */ lw	$s6, 0X90($sp)
/* 000182 0x80B9B9B8 8FB70094 */ lw	$s7, 0X94($sp)
/* 000183 0x80B9B9BC 8FBE0098 */ lw	$fp, 0X98($sp)
/* 000184 0x80B9B9C0 03E00008 */ jr	$ra
/* 000185 0x80B9B9C4 27BD00E8 */ addiu	$sp, $sp, 0XE8


.section .late_rodata

glabel D_80B9C380
/* 000808 0x80B9C380 */ .word	0x3E4CCCCD
glabel D_80B9C384
/* 000809 0x80B9C384 */ .word	0x3E4CCCCD
glabel D_80B9C388
/* 000810 0x80B9C388 */ .word	0x3D4CCCCD
glabel D_80B9C38C
/* 000811 0x80B9C38C */ .word	0x3F333333
