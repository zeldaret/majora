glabel func_80A667F0
/* 000160 0x80A667F0 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 000161 0x80A667F4 AFBF003C */ sw	$ra, 0X3C($sp)
/* 000162 0x80A667F8 AFB50038 */ sw	$s5, 0X38($sp)
/* 000163 0x80A667FC AFB40034 */ sw	$s4, 0X34($sp)
/* 000164 0x80A66800 AFB30030 */ sw	$s3, 0X30($sp)
/* 000165 0x80A66804 AFB2002C */ sw	$s2, 0X2C($sp)
/* 000166 0x80A66808 AFB10028 */ sw	$s1, 0X28($sp)
/* 000167 0x80A6680C AFB00024 */ sw	$s0, 0X24($sp)
/* 000168 0x80A66810 F7B60018 */ sdc1	$f22, 0X18($sp)
/* 000169 0x80A66814 F7B40010 */ sdc1	$f20, 0X10($sp)
/* 000170 0x80A66818 AFA50044 */ sw	$a1, 0X44($sp)
/* 000171 0x80A6681C 3C0180A6 */ lui	$at, %hi(D_80A67714)
/* 000172 0x80A66820 4480A000 */ mtc1	$zero, $f20
/* 000173 0x80A66824 C4367714 */ lwc1	$f22, %lo(D_80A67714)($at)
/* 000174 0x80A66828 00009025 */ move	$s2, $zero
/* 000175 0x80A6682C 00808025 */ move	$s0, $a0
/* 000176 0x80A66830 24930008 */ addiu	$s3, $a0, 0X8
/* 000177 0x80A66834 24150003 */ li	$s5, 0X3
.L80A66838:
/* 000178 0x80A66838 86020000 */ lh	$v0, 0X0($s0)
/* 000179 0x80A6683C 0200A025 */ move	$s4, $s0
/* 000180 0x80A66840 2404001E */ li	$a0, 0X1E
/* 000181 0x80A66844 18400005 */ blez	$v0, .L80A6685C
/* 000182 0x80A66848 24050046 */ li	$a1, 0X46
/* 000183 0x80A6684C 244EFFFF */ addiu	$t6, $v0, -0X1
/* 000184 0x80A66850 A60E0000 */ sh	$t6, 0X0($s0)
/* 000185 0x80A66854 10000019 */ b	.L80A668BC
/* 000186 0x80A66858 C602000C */ lwc1	$f2, 0XC($s0)
.L80A6685C:
/* 000187 0x80A6685C 00127880 */ sll	$t7, $s2, 2
/* 000188 0x80A66860 01F27823 */ subu	$t7, $t7, $s2
/* 000189 0x80A66864 3C1880A6 */ lui	$t8, %hi(D_80A67694)
/* 000190 0x80A66868 27187694 */ addiu	$t8, $t8, %lo(D_80A67694)
/* 000191 0x80A6686C 000F7880 */ sll	$t7, $t7, 2
/* 000192 0x80A66870 0C03FD14 */ jal	Math_Rand_S16Offset
/* 000193 0x80A66874 01F88821 */ addu	$s1, $t7, $t8
/* 000194 0x80A66878 A6020000 */ sh	$v0, 0X0($s0)
/* 000195 0x80A6687C 86250002 */ lh	$a1, 0X2($s1)
/* 000196 0x80A66880 0C03FD14 */ jal	Math_Rand_S16Offset
/* 000197 0x80A66884 86240000 */ lh	$a0, 0X0($s1)
/* 000198 0x80A66888 0C021BF7 */ jal	randZeroOne
/* 000199 0x80A6688C A6020004 */ sh	$v0, 0X4($s0)
/* 000200 0x80A66890 C6240008 */ lwc1	$f4, 0X8($s1)
/* 000201 0x80A66894 C6280004 */ lwc1	$f8, 0X4($s1)
/* 000202 0x80A66898 C6100008 */ lwc1	$f16, 0X8($s0)
/* 000203 0x80A6689C 46040182 */ mul.s	$f6, $f0, $f4
/* 000204 0x80A668A0 46083280 */ add.s	$f10, $f6, $f8
/* 000205 0x80A668A4 E60A000C */ swc1	$f10, 0XC($s0)
/* 000206 0x80A668A8 C602000C */ lwc1	$f2, 0XC($s0)
/* 000207 0x80A668AC 46101001 */ sub.s	$f0, $f2, $f16
/* 000208 0x80A668B0 46000005 */ abs.s	$f0, $f0
/* 000209 0x80A668B4 46160482 */ mul.s	$f18, $f0, $f22
/* 000210 0x80A668B8 E6120010 */ swc1	$f18, 0X10($s0)
.L80A668BC:
/* 000211 0x80A668BC 86190002 */ lh	$t9, 0X2($s0)
/* 000212 0x80A668C0 86080004 */ lh	$t0, 0X4($s0)
/* 000213 0x80A668C4 44051000 */ mfc1	$a1, $f2
/* 000214 0x80A668C8 02602025 */ move	$a0, $s3
/* 000215 0x80A668CC 03284821 */ addu	$t1, $t9, $t0
/* 000216 0x80A668D0 A6090002 */ sh	$t1, 0X2($s0)
/* 000217 0x80A668D4 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000218 0x80A668D8 8E060010 */ lw	$a2, 0X10($s0)
/* 000219 0x80A668DC 0C03FB61 */ jal	Math_Sins
/* 000220 0x80A668E0 86040002 */ lh	$a0, 0X2($s0)
/* 000221 0x80A668E4 C6840008 */ lwc1	$f4, 0X8($s4)
/* 000222 0x80A668E8 26520001 */ addiu	$s2, $s2, 0X1
/* 000223 0x80A668EC 26100014 */ addiu	$s0, $s0, 0X14
/* 000224 0x80A668F0 46040182 */ mul.s	$f6, $f0, $f4
/* 000225 0x80A668F4 26730014 */ addiu	$s3, $s3, 0X14
/* 000226 0x80A668F8 1655FFCF */ bne	$s2, $s5, .L80A66838
/* 000227 0x80A668FC 4606A500 */ add.s	$f20, $f20, $f6
/* 000228 0x80A66900 4600A006 */ mov.s	$f0, $f20
/* 000229 0x80A66904 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000230 0x80A66908 D7B40010 */ ldc1	$f20, 0X10($sp)
/* 000231 0x80A6690C D7B60018 */ ldc1	$f22, 0X18($sp)
/* 000232 0x80A66910 8FB00024 */ lw	$s0, 0X24($sp)
/* 000233 0x80A66914 8FB10028 */ lw	$s1, 0X28($sp)
/* 000234 0x80A66918 8FB2002C */ lw	$s2, 0X2C($sp)
/* 000235 0x80A6691C 8FB30030 */ lw	$s3, 0X30($sp)
/* 000236 0x80A66920 8FB40034 */ lw	$s4, 0X34($sp)
/* 000237 0x80A66924 8FB50038 */ lw	$s5, 0X38($sp)
/* 000238 0x80A66928 03E00008 */ jr	$ra
/* 000239 0x80A6692C 27BD0040 */ addiu	$sp, $sp, 0X40

