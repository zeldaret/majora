glabel func_809246C4
/* 000241 0x809246C4 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000242 0x809246C8 AFB00018 */ sw	$s0, 0X18($sp)
/* 000243 0x809246CC 00808025 */ move	$s0, $a0
/* 000244 0x809246D0 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000245 0x809246D4 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000246 0x809246D8 8E020120 */ lw	$v0, 0X120($s0)
/* 000247 0x809246DC 10400004 */ beqz	$v0, .L809246F0
/* 000248 0x809246E0 00000000 */ nop
/* 000249 0x809246E4 8C4E0138 */ lw	$t6, 0X138($v0)
/* 000250 0x809246E8 55C00006 */ bnezl	$t6, .L80924704
/* 000251 0x809246EC 8C580024 */ lw	$t8, 0X24($v0)
.L809246F0:
/* 000252 0x809246F0 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000253 0x809246F4 02002025 */ move	$a0, $s0
/* 000254 0x809246F8 10000043 */ b	.L80924808
/* 000255 0x809246FC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000256 0x80924700 8C580024 */ lw	$t8, 0X24($v0)
.L80924704:
/* 000257 0x80924704 26050024 */ addiu	$a1, $s0, 0X24
/* 000258 0x80924708 2604014C */ addiu	$a0, $s0, 0X14C
/* 000259 0x8092470C ACB80000 */ sw	$t8, 0X0($a1)
/* 000260 0x80924710 8C4F0028 */ lw	$t7, 0X28($v0)
/* 000261 0x80924714 ACAF0004 */ sw	$t7, 0X4($a1)
/* 000262 0x80924718 8C58002C */ lw	$t8, 0X2C($v0)
/* 000263 0x8092471C ACB80008 */ sw	$t8, 0X8($a1)
/* 000264 0x80924720 884800BC */ lwl	$t0, 0XBC($v0)
/* 000265 0x80924724 984800BF */ lwr	$t0, 0XBF($v0)
/* 000266 0x80924728 AA0800BC */ swl	$t0, 0XBC($s0)
/* 000267 0x8092472C BA0800BF */ swr	$t0, 0XBF($s0)
/* 000268 0x80924730 944800C0 */ lhu	$t0, 0XC0($v0)
/* 000269 0x80924734 A60800C0 */ sh	$t0, 0XC0($s0)
/* 000270 0x80924738 AFA50028 */ sw	$a1, 0X28($sp)
/* 000271 0x8092473C AFA40024 */ sw	$a0, 0X24($sp)
/* 000272 0x80924740 0C03FE21 */ jal	Math_Vec3f_DistXYZ
/* 000273 0x80924744 AFA20034 */ sw	$v0, 0X34($sp)
/* 000274 0x80924748 3C013F80 */ lui	$at, 0x3F80
/* 000275 0x8092474C 44816000 */ mtc1	$at, $f12
/* 000276 0x80924750 3C018092 */ lui	$at, %hi(D_809260C8)
/* 000277 0x80924754 C42460C8 */ lwc1	$f4, %lo(D_809260C8)($at)
/* 000278 0x80924758 8FA20034 */ lw	$v0, 0X34($sp)
/* 000279 0x8092475C 8FA40024 */ lw	$a0, 0X24($sp)
/* 000280 0x80924760 46040082 */ mul.s	$f2, $f0, $f4
/* 000281 0x80924764 8FA50028 */ lw	$a1, 0X28($sp)
/* 000282 0x80924768 3C063D4C */ lui	$a2, 0x3D4C
/* 000283 0x8092476C 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 000284 0x80924770 460C103C */ c.lt.s	$f2, $f12
/* 000285 0x80924774 E6020158 */ swc1	$f2, 0X158($s0)
/* 000286 0x80924778 45000002 */ bc1f .L80924784
/* 000287 0x8092477C 00000000 */ nop
/* 000288 0x80924780 E60C0158 */ swc1	$f12, 0X158($s0)
.L80924784:
/* 000289 0x80924784 0C249128 */ jal	func_809244A0
/* 000290 0x80924788 AFA20034 */ sw	$v0, 0X34($sp)
/* 000291 0x8092478C 8FA20034 */ lw	$v0, 0X34($sp)
/* 000292 0x80924790 02002025 */ move	$a0, $s0
/* 000293 0x80924794 90490261 */ lbu	$t1, 0X261($v0)
/* 000294 0x80924798 312A0001 */ andi	$t2, $t1, 0X1
/* 000295 0x8092479C 5140000D */ beqzl	$t2, .L809247D4
/* 000296 0x809247A0 904D0260 */ lbu	$t5, 0X260($v0)
/* 000297 0x809247A4 0C02E3B2 */ jal	func_800B8EC8
/* 000298 0x809247A8 2405183C */ li	$a1, 0X183C
/* 000299 0x809247AC 3C058092 */ lui	$a1, %hi(func_809244F8)
/* 000300 0x809247B0 24A544F8 */ addiu	$a1, $a1, %lo(func_809244F8)
/* 000301 0x809247B4 0C2490C0 */ jal	func_80924300
/* 000302 0x809247B8 02002025 */ move	$a0, $s0
/* 000303 0x809247BC 240B0020 */ li	$t3, 0X20
/* 000304 0x809247C0 240C00FF */ li	$t4, 0XFF
/* 000305 0x809247C4 A60B0146 */ sh	$t3, 0X146($s0)
/* 000306 0x809247C8 1000000E */ b	.L80924804
/* 000307 0x809247CC A20C0148 */ sb	$t4, 0X148($s0)
/* 000308 0x809247D0 904D0260 */ lbu	$t5, 0X260($v0)
.L809247D4:
/* 000309 0x809247D4 29A10022 */ slti	$at, $t5, 0X22
/* 000310 0x809247D8 5020000B */ beqzl	$at, .L80924808
/* 000311 0x809247DC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000312 0x809247E0 92020148 */ lbu	$v0, 0X148($s0)
/* 000313 0x809247E4 28410023 */ slti	$at, $v0, 0X23
/* 000314 0x809247E8 10200005 */ beqz	$at, .L80924800
/* 000315 0x809247EC 244EFFE7 */ addiu	$t6, $v0, -0X19
/* 000316 0x809247F0 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000317 0x809247F4 02002025 */ move	$a0, $s0
/* 000318 0x809247F8 10000003 */ b	.L80924808
/* 000319 0x809247FC 8FBF001C */ lw	$ra, 0X1C($sp)
.L80924800:
/* 000320 0x80924800 A20E0148 */ sb	$t6, 0X148($s0)
.L80924804:
/* 000321 0x80924804 8FBF001C */ lw	$ra, 0X1C($sp)
.L80924808:
/* 000322 0x80924808 8FB00018 */ lw	$s0, 0X18($sp)
/* 000323 0x8092480C 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000324 0x80924810 03E00008 */ jr	$ra
/* 000325 0x80924814 00000000 */ nop

