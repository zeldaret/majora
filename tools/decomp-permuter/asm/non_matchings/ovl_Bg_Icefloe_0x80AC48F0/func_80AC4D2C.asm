glabel func_80AC4D2C
/* 000271 0x80AC4D2C 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 000272 0x80AC4D30 AFB00020 */ sw	$s0, 0X20($sp)
/* 000273 0x80AC4D34 00808025 */ move	$s0, $a0
/* 000274 0x80AC4D38 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000275 0x80AC4D3C AFA5004C */ sw	$a1, 0X4C($sp)
/* 000276 0x80AC4D40 8E0E0160 */ lw	$t6, 0X160($s0)
/* 000277 0x80AC4D44 25C2FFFF */ addiu	$v0, $t6, -0X1
/* 000278 0x80AC4D48 28410026 */ slti	$at, $v0, 0X26
/* 000279 0x80AC4D4C 14200036 */ bnez	$at, .L80AC4E28
/* 000280 0x80AC4D50 AE020160 */ sw	$v0, 0X160($s0)
/* 000281 0x80AC4D54 04410004 */ bgez	$v0, .L80AC4D68
/* 000282 0x80AC4D58 30580001 */ andi	$t8, $v0, 0X1
/* 000283 0x80AC4D5C 13000002 */ beqz	$t8, .L80AC4D68
/* 000284 0x80AC4D60 00000000 */ nop
/* 000285 0x80AC4D64 2718FFFE */ addiu	$t8, $t8, -0X2
.L80AC4D68:
/* 000286 0x80AC4D68 1700002F */ bnez	$t8, .L80AC4E28
/* 000287 0x80AC4D6C 2459FFDA */ addiu	$t9, $v0, -0X26
/* 000288 0x80AC4D70 44992000 */ mtc1	$t9, $f4
/* 000289 0x80AC4D74 3C0180AC */ lui	$at, %hi(D_80AC4F58)
/* 000290 0x80AC4D78 C4284F58 */ lwc1	$f8, %lo(D_80AC4F58)($at)
/* 000291 0x80AC4D7C 468021A0 */ cvt.s.w	$f6, $f4
/* 000292 0x80AC4D80 3C013FC0 */ lui	$at, 0x3FC0
/* 000293 0x80AC4D84 44816000 */ mtc1	$at, $f12
/* 000294 0x80AC4D88 46083282 */ mul.s	$f10, $f6, $f8
/* 000295 0x80AC4D8C 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000296 0x80AC4D90 E7AA0040 */ swc1	$f10, 0X40($sp)
/* 000297 0x80AC4D94 C7B00040 */ lwc1	$f16, 0X40($sp)
/* 000298 0x80AC4D98 3C013FC0 */ lui	$at, 0x3FC0
/* 000299 0x80AC4D9C 44816000 */ mtc1	$at, $f12
/* 000300 0x80AC4DA0 46100482 */ mul.s	$f18, $f0, $f16
/* 000301 0x80AC4DA4 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000302 0x80AC4DA8 E7B2003C */ swc1	$f18, 0X3C($sp)
/* 000303 0x80AC4DAC C7A40040 */ lwc1	$f4, 0X40($sp)
/* 000304 0x80AC4DB0 3C0180AC */ lui	$at, %hi(D_80AC4F5C)
/* 000305 0x80AC4DB4 C4284F5C */ lwc1	$f8, %lo(D_80AC4F5C)($at)
/* 000306 0x80AC4DB8 46040182 */ mul.s	$f6, $f0, $f4
/* 000307 0x80AC4DBC C7B0003C */ lwc1	$f16, 0X3C($sp)
/* 000308 0x80AC4DC0 46082280 */ add.s	$f10, $f4, $f8
/* 000309 0x80AC4DC4 3C014040 */ lui	$at, 0x4040
/* 000310 0x80AC4DC8 3C07801D */ lui	$a3, %hi(D_801D15B0)
/* 000311 0x80AC4DCC 46108480 */ add.s	$f18, $f16, $f16
/* 000312 0x80AC4DD0 E7AA0040 */ swc1	$f10, 0X40($sp)
/* 000313 0x80AC4DD4 E7A60044 */ swc1	$f6, 0X44($sp)
/* 000314 0x80AC4DD8 C6060024 */ lwc1	$f6, 0X24($s0)
/* 000315 0x80AC4DDC C7A80044 */ lwc1	$f8, 0X44($sp)
/* 000316 0x80AC4DE0 240800C8 */ li	$t0, 0XC8
/* 000317 0x80AC4DE4 46123100 */ add.s	$f4, $f6, $f18
/* 000318 0x80AC4DE8 24E715B0 */ addiu	$a3, $a3, %lo(D_801D15B0)
/* 000319 0x80AC4DEC 8FA4004C */ lw	$a0, 0X4C($sp)
/* 000320 0x80AC4DF0 46084280 */ add.s	$f10, $f8, $f8
/* 000321 0x80AC4DF4 E7A40030 */ swc1	$f4, 0X30($sp)
/* 000322 0x80AC4DF8 C610002C */ lwc1	$f16, 0X2C($s0)
/* 000323 0x80AC4DFC 44812000 */ mtc1	$at, $f4
/* 000324 0x80AC4E00 27A50030 */ addiu	$a1, $sp, 0X30
/* 000325 0x80AC4E04 460A8180 */ add.s	$f6, $f16, $f10
/* 000326 0x80AC4E08 27A6003C */ addiu	$a2, $sp, 0X3C
/* 000327 0x80AC4E0C E7A60038 */ swc1	$f6, 0X38($sp)
/* 000328 0x80AC4E10 C6120028 */ lwc1	$f18, 0X28($s0)
/* 000329 0x80AC4E14 AFA80010 */ sw	$t0, 0X10($sp)
/* 000330 0x80AC4E18 46049200 */ add.s	$f8, $f18, $f4
/* 000331 0x80AC4E1C 0C02CC83 */ jal	EffectSS_SpawnIceSmoke
/* 000332 0x80AC4E20 E7A80034 */ swc1	$f8, 0X34($sp)
/* 000333 0x80AC4E24 8E020160 */ lw	$v0, 0X160($s0)
.L80AC4E28:
/* 000334 0x80AC4E28 28410019 */ slti	$at, $v0, 0X19
/* 000335 0x80AC4E2C 10200008 */ beqz	$at, .L80AC4E50
/* 000336 0x80AC4E30 3C0180AC */ lui	$at, %hi(D_80AC4F60)
/* 000337 0x80AC4E34 C4204F60 */ lwc1	$f0, %lo(D_80AC4F60)($at)
/* 000338 0x80AC4E38 C6100058 */ lwc1	$f16, 0X58($s0)
/* 000339 0x80AC4E3C C6060060 */ lwc1	$f6, 0X60($s0)
/* 000340 0x80AC4E40 46008281 */ sub.s	$f10, $f16, $f0
/* 000341 0x80AC4E44 46003481 */ sub.s	$f18, $f6, $f0
/* 000342 0x80AC4E48 E60A0058 */ swc1	$f10, 0X58($s0)
/* 000343 0x80AC4E4C E6120060 */ swc1	$f18, 0X60($s0)
.L80AC4E50:
/* 000344 0x80AC4E50 3C0180AC */ lui	$at, %hi(D_80AC4F64)
/* 000345 0x80AC4E54 C4284F64 */ lwc1	$f8, %lo(D_80AC4F64)($at)
/* 000346 0x80AC4E58 C604005C */ lwc1	$f4, 0X5C($s0)
/* 000347 0x80AC4E5C 44805000 */ mtc1	$zero, $f10
/* 000348 0x80AC4E60 46082401 */ sub.s	$f16, $f4, $f8
/* 000349 0x80AC4E64 E610005C */ swc1	$f16, 0X5C($s0)
/* 000350 0x80AC4E68 C606005C */ lwc1	$f6, 0X5C($s0)
/* 000351 0x80AC4E6C 460A303E */ c.le.s	$f6, $f10
/* 000352 0x80AC4E70 00000000 */ nop
/* 000353 0x80AC4E74 45020004 */ bc1fl .L80AC4E88
/* 000354 0x80AC4E78 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000355 0x80AC4E7C 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000356 0x80AC4E80 02002025 */ move	$a0, $s0
/* 000357 0x80AC4E84 8FBF0024 */ lw	$ra, 0X24($sp)
.L80AC4E88:
/* 000358 0x80AC4E88 8FB00020 */ lw	$s0, 0X20($sp)
/* 000359 0x80AC4E8C 27BD0048 */ addiu	$sp, $sp, 0X48
/* 000360 0x80AC4E90 03E00008 */ jr	$ra
/* 000361 0x80AC4E94 00000000 */ nop


.section .late_rodata

glabel D_80AC4F58
/* 000410 0x80AC4F58 */ .word	0x3DAAAAAB
glabel D_80AC4F5C
/* 000411 0x80AC4F5C */ .word	0x3F4CCCCD
glabel D_80AC4F60
/* 000412 0x80AC4F60 */ .word	0x3BAA64C3
glabel D_80AC4F64
/* 000413 0x80AC4F64 */ .word	0x3B2A64C3
/* 000414 0x80AC4F68 */ .word	0x00000000
/* 000415 0x80AC4F6C */ .word	0x00000000
