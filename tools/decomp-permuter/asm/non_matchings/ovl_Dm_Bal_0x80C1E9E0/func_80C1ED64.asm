glabel func_80C1ED64
/* 000225 0x80C1ED64 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000226 0x80C1ED68 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000227 0x80C1ED6C AFA40030 */ sw	$a0, 0X30($sp)
/* 000228 0x80C1ED70 AFA60038 */ sw	$a2, 0X38($sp)
/* 000229 0x80C1ED74 AFA7003C */ sw	$a3, 0X3C($sp)
/* 000230 0x80C1ED78 8FAE0038 */ lw	$t6, 0X38($sp)
/* 000231 0x80C1ED7C 24A41CA0 */ addiu	$a0, $a1, 0X1CA0
/* 000232 0x80C1ED80 240602A4 */ li	$a2, 0X2A4
/* 000233 0x80C1ED84 C5C40004 */ lwc1	$f4, 0X4($t6)
/* 000234 0x80C1ED88 8DC70000 */ lw	$a3, 0X0($t6)
/* 000235 0x80C1ED8C E7A40010 */ swc1	$f4, 0X10($sp)
/* 000236 0x80C1ED90 C5C60008 */ lwc1	$f6, 0X8($t6)
/* 000237 0x80C1ED94 AFA00024 */ sw	$zero, 0X24($sp)
/* 000238 0x80C1ED98 AFA00020 */ sw	$zero, 0X20($sp)
/* 000239 0x80C1ED9C AFA0001C */ sw	$zero, 0X1C($sp)
/* 000240 0x80C1EDA0 AFA00018 */ sw	$zero, 0X18($sp)
/* 000241 0x80C1EDA4 0C02EB18 */ jal	Actor_Spawn
/* 000242 0x80C1EDA8 E7A60014 */ swc1	$f6, 0X14($sp)
/* 000243 0x80C1EDAC 10400009 */ beqz	$v0, .L80C1EDD4
/* 000244 0x80C1EDB0 8FAF003C */ lw	$t7, 0X3C($sp)
/* 000245 0x80C1EDB4 8DF90000 */ lw	$t9, 0X0($t7)
/* 000246 0x80C1EDB8 AC590064 */ sw	$t9, 0X64($v0)
/* 000247 0x80C1EDBC 8DF80004 */ lw	$t8, 0X4($t7)
/* 000248 0x80C1EDC0 AC580068 */ sw	$t8, 0X68($v0)
/* 000249 0x80C1EDC4 8DF90008 */ lw	$t9, 0X8($t7)
/* 000250 0x80C1EDC8 AC59006C */ sw	$t9, 0X6C($v0)
/* 000251 0x80C1EDCC C7A80040 */ lwc1	$f8, 0X40($sp)
/* 000252 0x80C1EDD0 E4480074 */ swc1	$f8, 0X74($v0)
.L80C1EDD4:
/* 000253 0x80C1EDD4 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000254 0x80C1EDD8 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000255 0x80C1EDDC 03E00008 */ jr	$ra
/* 000256 0x80C1EDE0 00000000 */ nop

