glabel func_80C05DE8
/* 000222 0x80C05DE8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000223 0x80C05DEC AFA5001C */ sw	$a1, 0X1C($sp)
/* 000224 0x80C05DF0 00802825 */ move	$a1, $a0
/* 000225 0x80C05DF4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000226 0x80C05DF8 AFA40018 */ sw	$a0, 0X18($sp)
/* 000227 0x80C05DFC 84A20148 */ lh	$v0, 0X148($a1)
/* 000228 0x80C05E00 14400017 */ bnez	$v0, .L80C05E60
/* 000229 0x80C05E04 2841000A */ slti	$at, $v0, 0XA
/* 000230 0x80C05E08 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000231 0x80C05E0C 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000232 0x80C05E10 904E0F43 */ lbu	$t6, 0XF43($v0)
/* 000233 0x80C05E14 31CF0040 */ andi	$t7, $t6, 0X40
/* 000234 0x80C05E18 15E0000D */ bnez	$t7, .L80C05E50
/* 000235 0x80C05E1C 00000000 */ nop
/* 000236 0x80C05E20 90580F41 */ lbu	$t8, 0XF41($v0)
/* 000237 0x80C05E24 33190010 */ andi	$t9, $t8, 0X10
/* 000238 0x80C05E28 17200009 */ bnez	$t9, .L80C05E50
/* 000239 0x80C05E2C 00000000 */ nop
/* 000240 0x80C05E30 90480F4D */ lbu	$t0, 0XF4D($v0)
/* 000241 0x80C05E34 31090002 */ andi	$t1, $t0, 0X2
/* 000242 0x80C05E38 15200005 */ bnez	$t1, .L80C05E50
/* 000243 0x80C05E3C 00000000 */ nop
/* 000244 0x80C05E40 84A4014C */ lh	$a0, 0X14C($a1)
/* 000245 0x80C05E44 0C03C7EF */ jal	ActorCutscene_Stop
/* 000246 0x80C05E48 AFA50018 */ sw	$a1, 0X18($sp)
/* 000247 0x80C05E4C 8FA50018 */ lw	$a1, 0X18($sp)
.L80C05E50:
/* 000248 0x80C05E50 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000249 0x80C05E54 00A02025 */ move	$a0, $a1
/* 000250 0x80C05E58 10000005 */ b	.L80C05E70
/* 000251 0x80C05E5C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80C05E60:
/* 000252 0x80C05E60 50200003 */ beqzl	$at, .L80C05E70
/* 000253 0x80C05E64 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000254 0x80C05E68 A0A000B7 */ sb	$zero, 0XB7($a1)
/* 000255 0x80C05E6C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80C05E70:
/* 000256 0x80C05E70 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000257 0x80C05E74 03E00008 */ jr	$ra
/* 000258 0x80C05E78 00000000 */ nop

