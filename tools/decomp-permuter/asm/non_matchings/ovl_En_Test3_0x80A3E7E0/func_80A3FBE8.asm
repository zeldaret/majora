glabel func_80A3FBE8
/* 001282 0x80A3FBE8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001283 0x80A3FBEC AFBF0014 */ sw	$ra, 0X14($sp)
/* 001284 0x80A3FBF0 00803025 */ move	$a2, $a0
/* 001285 0x80A3FBF4 3C0280A4 */ lui	$v0, %hi(D_80A41D20)
/* 001286 0x80A3FBF8 8C421D20 */ lw	$v0, %lo(D_80A41D20)($v0)
/* 001287 0x80A3FBFC 00A02025 */ move	$a0, $a1
/* 001288 0x80A3FC00 24010001 */ li	$at, 0X1
/* 001289 0x80A3FC04 14400010 */ bnez	$v0, .L80A3FC48
/* 001290 0x80A3FC08 00000000 */ nop
/* 001291 0x80A3FC0C 0C05A433 */ jal	func_801690CC
/* 001292 0x80A3FC10 AFA60018 */ sw	$a2, 0X18($sp)
/* 001293 0x80A3FC14 1440006E */ bnez	$v0, .L80A3FDD0
/* 001294 0x80A3FC18 8FA60018 */ lw	$a2, 0X18($sp)
/* 001295 0x80A3FC1C 240E0001 */ li	$t6, 0X1
/* 001296 0x80A3FC20 3C0180A4 */ lui	$at, %hi(D_80A41D20)
/* 001297 0x80A3FC24 AC2E1D20 */ sw	$t6, %lo(D_80A41D20)($at)
/* 001298 0x80A3FC28 80CF0038 */ lb	$t7, 0X38($a2)
/* 001299 0x80A3FC2C 3C0280A4 */ lui	$v0, %hi(D_80A418A4)
/* 001300 0x80A3FC30 244218A4 */ addiu	$v0, $v0, %lo(D_80A418A4)
/* 001301 0x80A3FC34 ACC20D78 */ sw	$v0, 0XD78($a2)
/* 001302 0x80A3FC38 A0CF0D8D */ sb	$t7, 0XD8D($a2)
/* 001303 0x80A3FC3C 94580002 */ lhu	$t8, 0X2($v0)
/* 001304 0x80A3FC40 10000063 */ b	.L80A3FDD0
/* 001305 0x80A3FC44 A4D80116 */ sh	$t8, 0X116($a2)
.L80A3FC48:
/* 001306 0x80A3FC48 54410035 */ bnel	$v0, $at, .L80A3FD20
/* 001307 0x80A3FC4C 24010002 */ li	$at, 0X2
/* 001308 0x80A3FC50 80D90D8D */ lb	$t9, 0XD8D($a2)
/* 001309 0x80A3FC54 00C02025 */ move	$a0, $a2
/* 001310 0x80A3FC58 0722000B */ bltzl	$t9, .L80A3FC88
/* 001311 0x80A3FC5C 90A21CA5 */ lbu	$v0, 0X1CA5($a1)
/* 001312 0x80A3FC60 0C28FA77 */ jal	func_80A3E9DC
/* 001313 0x80A3FC64 AFA60018 */ sw	$a2, 0X18($sp)
/* 001314 0x80A3FC68 10400059 */ beqz	$v0, .L80A3FDD0
/* 001315 0x80A3FC6C 8FA60018 */ lw	$a2, 0X18($sp)
/* 001316 0x80A3FC70 2408FFFF */ li	$t0, -0X1
/* 001317 0x80A3FC74 0C03F921 */ jal	func_800FE484
/* 001318 0x80A3FC78 A0C80D8D */ sb	$t0, 0XD8D($a2)
/* 001319 0x80A3FC7C 10000055 */ b	.L80A3FDD4
/* 001320 0x80A3FC80 00001025 */ move	$v0, $zero
/* 001321 0x80A3FC84 90A21CA5 */ lbu	$v0, 0X1CA5($a1)
.L80A3FC88:
/* 001322 0x80A3FC88 30490040 */ andi	$t1, $v0, 0X40
/* 001323 0x80A3FC8C 15200003 */ bnez	$t1, .L80A3FC9C
/* 001324 0x80A3FC90 304A0020 */ andi	$t2, $v0, 0X20
/* 001325 0x80A3FC94 1140001D */ beqz	$t2, .L80A3FD0C
/* 001326 0x80A3FC98 00000000 */ nop
.L80A3FC9C:
/* 001327 0x80A3FC9C 80C40038 */ lb	$a0, 0X38($a2)
/* 001328 0x80A3FCA0 AFA60018 */ sw	$a2, 0X18($sp)
/* 001329 0x80A3FCA4 0C03C82E */ jal	ActorCutscene_GetAdditionalCutscene
/* 001330 0x80A3FCA8 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001331 0x80A3FCAC 8FA60018 */ lw	$a2, 0X18($sp)
/* 001332 0x80A3FCB0 8FA5001C */ lw	$a1, 0X1C($sp)
/* 001333 0x80A3FCB4 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 001334 0x80A3FCB8 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 001335 0x80A3FCBC A0C20D8D */ sb	$v0, 0XD8D($a2)
/* 001336 0x80A3FCC0 906B0F52 */ lbu	$t3, 0XF52($v1)
/* 001337 0x80A3FCC4 356C0002 */ ori	$t4, $t3, 0X2
/* 001338 0x80A3FCC8 A06C0F52 */ sb	$t4, 0XF52($v1)
/* 001339 0x80A3FCCC 90AD1CA5 */ lbu	$t5, 0X1CA5($a1)
/* 001340 0x80A3FCD0 31AE0020 */ andi	$t6, $t5, 0X20
/* 001341 0x80A3FCD4 51C00007 */ beqzl	$t6, .L80A3FCF4
/* 001342 0x80A3FCD8 3C041001 */ lui	$a0, 0x1001
/* 001343 0x80A3FCDC 80C40D8D */ lb	$a0, 0XD8D($a2)
/* 001344 0x80A3FCE0 0C03C82E */ jal	ActorCutscene_GetAdditionalCutscene
/* 001345 0x80A3FCE4 AFA60018 */ sw	$a2, 0X18($sp)
/* 001346 0x80A3FCE8 8FA60018 */ lw	$a2, 0X18($sp)
/* 001347 0x80A3FCEC A0C20D8D */ sb	$v0, 0XD8D($a2)
/* 001348 0x80A3FCF0 3C041001 */ lui	$a0, 0x1001
.L80A3FCF4:
/* 001349 0x80A3FCF4 0C06A26A */ jal	func_801A89A8
/* 001350 0x80A3FCF8 348400FF */ ori	$a0, $a0, 0XFF
/* 001351 0x80A3FCFC 240F0002 */ li	$t7, 0X2
/* 001352 0x80A3FD00 3C0180A4 */ lui	$at, %hi(D_80A41D20)
/* 001353 0x80A3FD04 10000032 */ b	.L80A3FDD0
/* 001354 0x80A3FD08 AC2F1D20 */ sw	$t7, %lo(D_80A41D20)($at)
.L80A3FD0C:
/* 001355 0x80A3FD0C 0C28FDCF */ jal	func_80A3F73C
/* 001356 0x80A3FD10 00C02025 */ move	$a0, $a2
/* 001357 0x80A3FD14 1000002F */ b	.L80A3FDD4
/* 001358 0x80A3FD18 00001025 */ move	$v0, $zero
/* 001359 0x80A3FD1C 24010002 */ li	$at, 0X2
.L80A3FD20:
/* 001360 0x80A3FD20 1441002B */ bne	$v0, $at, .L80A3FDD0
/* 001361 0x80A3FD24 00C02025 */ move	$a0, $a2
/* 001362 0x80A3FD28 0C28FA77 */ jal	func_80A3E9DC
/* 001363 0x80A3FD2C AFA5001C */ sw	$a1, 0X1C($sp)
/* 001364 0x80A3FD30 10400027 */ beqz	$v0, .L80A3FDD0
/* 001365 0x80A3FD34 8FA5001C */ lw	$a1, 0X1C($sp)
/* 001366 0x80A3FD38 00002025 */ move	$a0, $zero
/* 001367 0x80A3FD3C 0C03C8F1 */ jal	ActorCutscene_SetReturnCamera
/* 001368 0x80A3FD40 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001369 0x80A3FD44 0C03F926 */ jal	func_800FE498
/* 001370 0x80A3FD48 00000000 */ nop
/* 001371 0x80A3FD4C 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 001372 0x80A3FD50 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 001373 0x80A3FD54 9464000C */ lhu	$a0, 0XC($v1)
/* 001374 0x80A3FD58 8FA5001C */ lw	$a1, 0X1C($sp)
/* 001375 0x80A3FD5C 28814001 */ slti	$at, $a0, 0X4001
/* 001376 0x80A3FD60 1420000E */ bnez	$at, .L80A3FD9C
/* 001377 0x80A3FD64 0004C023 */ negu	$t8, $a0
/* 001378 0x80A3FD68 0018CC00 */ sll	$t9, $t8, 16
/* 001379 0x80A3FD6C 00194403 */ sra	$t0, $t9, 16
/* 001380 0x80A3FD70 44882000 */ mtc1	$t0, $f4
/* 001381 0x80A3FD74 3C0180A4 */ lui	$at, %hi(D_80A41930)
/* 001382 0x80A3FD78 C4261930 */ lwc1	$f6, %lo(D_80A41930)($at)
/* 001383 0x80A3FD7C 46802020 */ cvt.s.w	$f0, $f4
/* 001384 0x80A3FD80 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001385 0x80A3FD84 46000005 */ abs.s	$f0, $f0
/* 001386 0x80A3FD88 0C03F996 */ jal	func_800FE658
/* 001387 0x80A3FD8C 46060303 */ div.s	$f12, $f0, $f6
/* 001388 0x80A3FD90 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 001389 0x80A3FD94 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 001390 0x80A3FD98 8FA5001C */ lw	$a1, 0X1C($sp)
.L80A3FD9C:
/* 001391 0x80A3FD9C 90A91CA5 */ lbu	$t1, 0X1CA5($a1)
/* 001392 0x80A3FDA0 240F0003 */ li	$t7, 0X3
/* 001393 0x80A3FDA4 3C0180A4 */ lui	$at, %hi(D_80A41D20)
/* 001394 0x80A3FDA8 312A0040 */ andi	$t2, $t1, 0X40
/* 001395 0x80A3FDAC 11400007 */ beqz	$t2, .L80A3FDCC
/* 001396 0x80A3FDB0 00000000 */ nop
/* 001397 0x80A3FDB4 906B0F2B */ lbu	$t3, 0XF2B($v1)
/* 001398 0x80A3FDB8 906D0F52 */ lbu	$t5, 0XF52($v1)
/* 001399 0x80A3FDBC 356C0020 */ ori	$t4, $t3, 0X20
/* 001400 0x80A3FDC0 31AE00FD */ andi	$t6, $t5, 0XFD
/* 001401 0x80A3FDC4 A06C0F2B */ sb	$t4, 0XF2B($v1)
/* 001402 0x80A3FDC8 A06E0F52 */ sb	$t6, 0XF52($v1)
.L80A3FDCC:
/* 001403 0x80A3FDCC AC2F1D20 */ sw	$t7, %lo(D_80A41D20)($at)
.L80A3FDD0:
/* 001404 0x80A3FDD0 00001025 */ move	$v0, $zero
.L80A3FDD4:
/* 001405 0x80A3FDD4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001406 0x80A3FDD8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001407 0x80A3FDDC 03E00008 */ jr	$ra
/* 001408 0x80A3FDE0 00000000 */ nop


.section .late_rodata

glabel D_80A41930
/* 003156 0x80A41930 */ .word	0x42360B61
