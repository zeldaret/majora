glabel func_80AAB838
/* 000230 0x80AAB838 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000231 0x80AAB83C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000232 0x80AAB840 AFB00018 */ sw	$s0, 0X18($sp)
/* 000233 0x80AAB844 AFA40020 */ sw	$a0, 0X20($sp)
/* 000234 0x80AAB848 AFA50024 */ sw	$a1, 0X24($sp)
/* 000235 0x80AAB84C 8FB00020 */ lw	$s0, 0X20($sp)
/* 000236 0x80AAB850 3C0540A0 */ lui	$a1, 0x40A0
/* 000237 0x80AAB854 26100144 */ addiu	$s0, $s0, 0X144
/* 000238 0x80AAB858 0C04DE2E */ jal	func_801378B8
/* 000239 0x80AAB85C 02002025 */ move	$a0, $s0
/* 000240 0x80AAB860 10400006 */ beqz	$v0, .L80AAB87C
/* 000241 0x80AAB864 02002025 */ move	$a0, $s0
/* 000242 0x80AAB868 8FA40020 */ lw	$a0, 0X20($sp)
/* 000243 0x80AAB86C 0C02E3B2 */ jal	func_800B8EC8
/* 000244 0x80AAB870 2405185F */ li	$a1, 0X185F
/* 000245 0x80AAB874 10000015 */ b	.L80AAB8CC
/* 000246 0x80AAB878 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AAB87C:
/* 000247 0x80AAB87C 0C04DE2E */ jal	func_801378B8
/* 000248 0x80AAB880 3C054120 */ lui	$a1, 0x4120
/* 000249 0x80AAB884 1440000D */ bnez	$v0, .L80AAB8BC
/* 000250 0x80AAB888 02002025 */ move	$a0, $s0
/* 000251 0x80AAB88C 0C04DE2E */ jal	func_801378B8
/* 000252 0x80AAB890 3C054190 */ lui	$a1, 0x4190
/* 000253 0x80AAB894 14400009 */ bnez	$v0, .L80AAB8BC
/* 000254 0x80AAB898 02002025 */ move	$a0, $s0
/* 000255 0x80AAB89C 0C04DE2E */ jal	func_801378B8
/* 000256 0x80AAB8A0 3C0541F0 */ lui	$a1, 0x41F0
/* 000257 0x80AAB8A4 14400005 */ bnez	$v0, .L80AAB8BC
/* 000258 0x80AAB8A8 02002025 */ move	$a0, $s0
/* 000259 0x80AAB8AC 0C04DE2E */ jal	func_801378B8
/* 000260 0x80AAB8B0 3C054218 */ lui	$a1, 0x4218
/* 000261 0x80AAB8B4 50400005 */ beqzl	$v0, .L80AAB8CC
/* 000262 0x80AAB8B8 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AAB8BC:
/* 000263 0x80AAB8BC 8FA40020 */ lw	$a0, 0X20($sp)
/* 000264 0x80AAB8C0 0C02E3B2 */ jal	func_800B8EC8
/* 000265 0x80AAB8C4 24051860 */ li	$a1, 0X1860
/* 000266 0x80AAB8C8 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AAB8CC:
/* 000267 0x80AAB8CC 8FB00018 */ lw	$s0, 0X18($sp)
/* 000268 0x80AAB8D0 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000269 0x80AAB8D4 03E00008 */ jr	$ra
/* 000270 0x80AAB8D8 00000000 */ nop

