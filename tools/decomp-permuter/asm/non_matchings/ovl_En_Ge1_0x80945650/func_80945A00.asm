glabel func_80945A00
/* 000236 0x80945A00 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000237 0x80945A04 AFB00018 */ sw	$s0, 0X18($sp)
/* 000238 0x80945A08 00808025 */ move	$s0, $a0
/* 000239 0x80945A0C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000240 0x80945A10 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000241 0x80945A14 AFA60040 */ sw	$a2, 0X40($sp)
/* 000242 0x80945A18 26050024 */ addiu	$a1, $s0, 0X24
/* 000243 0x80945A1C AFA50024 */ sw	$a1, 0X24($sp)
/* 000244 0x80945A20 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000245 0x80945A24 27A4002C */ addiu	$a0, $sp, 0X2C
/* 000246 0x80945A28 8FA40024 */ lw	$a0, 0X24($sp)
/* 000247 0x80945A2C 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000248 0x80945A30 260501D8 */ addiu	$a1, $s0, 0X1D8
/* 000249 0x80945A34 8FA40040 */ lw	$a0, 0X40($sp)
/* 000250 0x80945A38 02002825 */ move	$a1, $s0
/* 000251 0x80945A3C 0C02D2BB */ jal	func_800B4AEC
/* 000252 0x80945A40 3C064248 */ lui	$a2, 0x4248
/* 000253 0x80945A44 C6000088 */ lwc1	$f0, 0X88($s0)
/* 000254 0x80945A48 C7A40030 */ lwc1	$f4, 0X30($sp)
/* 000255 0x80945A4C C7A60030 */ lwc1	$f6, 0X30($sp)
/* 000256 0x80945A50 02002025 */ move	$a0, $s0
/* 000257 0x80945A54 4600203C */ c.lt.s	$f4, $f0
/* 000258 0x80945A58 00000000 */ nop
/* 000259 0x80945A5C 45020004 */ bc1fl .L80945A70
/* 000260 0x80945A60 E6060028 */ swc1	$f6, 0X28($s0)
/* 000261 0x80945A64 10000002 */ b	.L80945A70
/* 000262 0x80945A68 E6000028 */ swc1	$f0, 0X28($s0)
/* 000263 0x80945A6C E6060028 */ swc1	$f6, 0X28($s0)
.L80945A70:
/* 000264 0x80945A70 8FA5003C */ lw	$a1, 0X3C($sp)
/* 000265 0x80945A74 0C02CFF0 */ jal	func_800B3FC0
/* 000266 0x80945A78 8FA60040 */ lw	$a2, 0X40($sp)
/* 000267 0x80945A7C 8FA40024 */ lw	$a0, 0X24($sp)
/* 000268 0x80945A80 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000269 0x80945A84 27A5002C */ addiu	$a1, $sp, 0X2C
/* 000270 0x80945A88 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000271 0x80945A8C 8FB00018 */ lw	$s0, 0X18($sp)
/* 000272 0x80945A90 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000273 0x80945A94 03E00008 */ jr	$ra
/* 000274 0x80945A98 00000000 */ nop

