glabel func_80B60EE8
/* 000262 0x80B60EE8 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000263 0x80B60EEC AFB00018 */ sw	$s0, 0X18($sp)
/* 000264 0x80B60EF0 00808025 */ move	$s0, $a0
/* 000265 0x80B60EF4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000266 0x80B60EF8 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000267 0x80B60EFC 92020155 */ lbu	$v0, 0X155($s0)
/* 000268 0x80B60F00 3C0F801F */ lui	$t7, %hi(gSaveContext + 0xC)
/* 000269 0x80B60F04 304E0002 */ andi	$t6, $v0, 0X2
/* 000270 0x80B60F08 11C00048 */ beqz	$t6, .L80B6102C
/* 000271 0x80B60F0C 3058FFFD */ andi	$t8, $v0, 0XFFFD
/* 000272 0x80B60F10 95EFF67C */ lhu	$t7, %lo(gSaveContext + 0xC)($t7)
/* 000273 0x80B60F14 24190005 */ li	$t9, 0X5
/* 000274 0x80B60F18 2401000E */ li	$at, 0XE
/* 000275 0x80B60F1C A7AF0022 */ sh	$t7, 0X22($sp)
/* 000276 0x80B60F20 920400B9 */ lbu	$a0, 0XB9($s0)
/* 000277 0x80B60F24 A2180155 */ sb	$t8, 0X155($s0)
/* 000278 0x80B60F28 A61903A8 */ sh	$t9, 0X3A8($s0)
/* 000279 0x80B60F2C 10810003 */ beq	$a0, $at, .L80B60F3C
/* 000280 0x80B60F30 00801825 */ move	$v1, $a0
/* 000281 0x80B60F34 2401000F */ li	$at, 0XF
/* 000282 0x80B60F38 1461003C */ bne	$v1, $at, .L80B6102C
.L80B60F3C:
/* 000283 0x80B60F3C 2401000F */ li	$at, 0XF
/* 000284 0x80B60F40 14810007 */ bne	$a0, $at, .L80B60F60
/* 000285 0x80B60F44 24052956 */ li	$a1, 0X2956
/* 000286 0x80B60F48 02002025 */ move	$a0, $s0
/* 000287 0x80B60F4C 0C02E3B2 */ jal	func_800B8EC8
/* 000288 0x80B60F50 2405295A */ li	$a1, 0X295A
/* 000289 0x80B60F54 24080001 */ li	$t0, 0X1
/* 000290 0x80B60F58 10000005 */ b	.L80B60F70
/* 000291 0x80B60F5C A60803A0 */ sh	$t0, 0X3A0($s0)
.L80B60F60:
/* 000292 0x80B60F60 0C02E3B2 */ jal	func_800B8EC8
/* 000293 0x80B60F64 02002025 */ move	$a0, $s0
/* 000294 0x80B60F68 24090002 */ li	$t1, 0X2
/* 000295 0x80B60F6C A60903A0 */ sh	$t1, 0X3A0($s0)
.L80B60F70:
/* 000296 0x80B60F70 02002025 */ move	$a0, $s0
/* 000297 0x80B60F74 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000298 0x80B60F78 24060005 */ li	$a2, 0X5
/* 000299 0x80B60F7C 0C02F212 */ jal	func_800BC848
/* 000300 0x80B60F80 2407000A */ li	$a3, 0XA
/* 000301 0x80B60F84 0C2D8330 */ jal	func_80B60CC0
/* 000302 0x80B60F88 02002025 */ move	$a0, $s0
/* 000303 0x80B60F8C 0C2D8395 */ jal	func_80B60E54
/* 000304 0x80B60F90 97A40022 */ lhu	$a0, 0X22($sp)
/* 000305 0x80B60F94 24010001 */ li	$at, 0X1
/* 000306 0x80B60F98 54410025 */ bnel	$v0, $at, .L80B61030
/* 000307 0x80B60F9C 860203A6 */ lh	$v0, 0X3A6($s0)
/* 000308 0x80B60FA0 860A03A6 */ lh	$t2, 0X3A6($s0)
/* 000309 0x80B60FA4 02002025 */ move	$a0, $s0
/* 000310 0x80B60FA8 55400021 */ bnezl	$t2, .L80B61030
/* 000311 0x80B60FAC 860203A6 */ lh	$v0, 0X3A6($s0)
/* 000312 0x80B60FB0 0C02E3B2 */ jal	func_800B8EC8
/* 000313 0x80B60FB4 24054807 */ li	$a1, 0X4807
/* 000314 0x80B60FB8 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000315 0x80B60FBC 26050024 */ addiu	$a1, $s0, 0X24
/* 000316 0x80B60FC0 0C029DCC */ jal	func_800A7730
/* 000317 0x80B60FC4 24060001 */ li	$a2, 0X1
/* 000318 0x80B60FC8 860B0032 */ lh	$t3, 0X32($s0)
/* 000319 0x80B60FCC A44B0032 */ sh	$t3, 0X32($v0)
/* 000320 0x80B60FD0 0C021C0C */ jal	randPlusMinusPoint5
/* 000321 0x80B60FD4 AFA20024 */ sw	$v0, 0X24($sp)
/* 000322 0x80B60FD8 3C0142B4 */ lui	$at, 0x42B4
/* 000323 0x80B60FDC 44812000 */ mtc1	$at, $f4
/* 000324 0x80B60FE0 3C0180B6 */ lui	$at, %hi(D_80B614E4)
/* 000325 0x80B60FE4 C42814E4 */ lwc1	$f8, %lo(D_80B614E4)($at)
/* 000326 0x80B60FE8 46040182 */ mul.s	$f6, $f0, $f4
/* 000327 0x80B60FEC 8FA30024 */ lw	$v1, 0X24($sp)
/* 000328 0x80B60FF0 3C0140A0 */ lui	$at, 0x40A0
/* 000329 0x80B60FF4 44819000 */ mtc1	$at, $f18
/* 000330 0x80B60FF8 846E0032 */ lh	$t6, 0X32($v1)
/* 000331 0x80B60FFC 3C01BF80 */ lui	$at, 0xBF80
/* 000332 0x80B61000 44812000 */ mtc1	$at, $f4
/* 000333 0x80B61004 46083282 */ mul.s	$f10, $f6, $f8
/* 000334 0x80B61008 24180028 */ li	$t8, 0X28
/* 000335 0x80B6100C E4720068 */ swc1	$f18, 0X68($v1)
/* 000336 0x80B61010 E4640074 */ swc1	$f4, 0X74($v1)
/* 000337 0x80B61014 4600540D */ trunc.w.s	$f16, $f10
/* 000338 0x80B61018 440D8000 */ mfc1	$t5, $f16
/* 000339 0x80B6101C 00000000 */ nop
/* 000340 0x80B61020 01CD7821 */ addu	$t7, $t6, $t5
/* 000341 0x80B61024 A46F0032 */ sh	$t7, 0X32($v1)
/* 000342 0x80B61028 A61803A6 */ sh	$t8, 0X3A6($s0)
.L80B6102C:
/* 000343 0x80B6102C 860203A6 */ lh	$v0, 0X3A6($s0)
.L80B61030:
/* 000344 0x80B61030 3C010001 */ lui	$at, 0x0001
/* 000345 0x80B61034 34218884 */ ori	$at, $at, 0X8884
/* 000346 0x80B61038 18400002 */ blez	$v0, .L80B61044
/* 000347 0x80B6103C 2459FFFF */ addiu	$t9, $v0, -0X1
/* 000348 0x80B61040 A61903A6 */ sh	$t9, 0X3A6($s0)
.L80B61044:
/* 000349 0x80B61044 860203A8 */ lh	$v0, 0X3A8($s0)
/* 000350 0x80B61048 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000351 0x80B6104C 18400004 */ blez	$v0, .L80B61060
/* 000352 0x80B61050 00812821 */ addu	$a1, $a0, $at
/* 000353 0x80B61054 2448FFFF */ addiu	$t0, $v0, -0X1
/* 000354 0x80B61058 10000003 */ b	.L80B61068
/* 000355 0x80B6105C A60803A8 */ sh	$t0, 0X3A8($s0)
.L80B61060:
/* 000356 0x80B61060 0C0389D0 */ jal	Collision_AddAC
/* 000357 0x80B61064 26060144 */ addiu	$a2, $s0, 0X144
.L80B61068:
/* 000358 0x80B61068 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000359 0x80B6106C 8FB00018 */ lw	$s0, 0X18($sp)
/* 000360 0x80B61070 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000361 0x80B61074 03E00008 */ jr	$ra
/* 000362 0x80B61078 00000000 */ nop


.section .late_rodata

glabel D_80B614E4
/* 000645 0x80B614E4 */ .word	0x43360B61
/* 000646 0x80B614E8 */ .word	0x00000000
/* 000647 0x80B614EC */ .word	0x00000000
