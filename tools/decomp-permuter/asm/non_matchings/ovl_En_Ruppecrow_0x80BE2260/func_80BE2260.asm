glabel func_80BE2260
/* 000000 0x80BE2260 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000001 0x80BE2264 AFB00020 */ sw	$s0, 0X20($sp)
/* 000002 0x80BE2268 00808025 */ move	$s0, $a0
/* 000003 0x80BE226C AFBF0024 */ sw	$ra, 0X24($sp)
/* 000004 0x80BE2270 00A03825 */ move	$a3, $a1
/* 000005 0x80BE2274 C6040024 */ lwc1	$f4, 0X24($s0)
/* 000006 0x80BE2278 8E180270 */ lw	$t8, 0X270($s0)
/* 000007 0x80BE227C 3C1980BE */ lui	$t9, %hi(D_80BE39E0)
/* 000008 0x80BE2280 4600218D */ trunc.w.s	$f6, $f4
/* 000009 0x80BE2284 3C010001 */ lui	$at, 0x0001
/* 000010 0x80BE2288 34218884 */ ori	$at, $at, 0X8884
/* 000011 0x80BE228C 00E12821 */ addu	$a1, $a3, $at
/* 000012 0x80BE2290 440F3000 */ mfc1	$t7, $f6
/* 000013 0x80BE2294 00E02025 */ move	$a0, $a3
/* 000014 0x80BE2298 26060254 */ addiu	$a2, $s0, 0X254
/* 000015 0x80BE229C A70F0030 */ sh	$t7, 0X30($t8)
/* 000016 0x80BE22A0 8F3939E0 */ lw	$t9, %lo(D_80BE39E0)($t9)
/* 000017 0x80BE22A4 C6100028 */ lwc1	$f16, 0X28($s0)
/* 000018 0x80BE22A8 8E0B0270 */ lw	$t3, 0X270($s0)
/* 000019 0x80BE22AC 8728001C */ lh	$t0, 0X1C($t9)
/* 000020 0x80BE22B0 44884000 */ mtc1	$t0, $f8
/* 000021 0x80BE22B4 00000000 */ nop
/* 000022 0x80BE22B8 468042A0 */ cvt.s.w	$f10, $f8
/* 000023 0x80BE22BC 46105480 */ add.s	$f18, $f10, $f16
/* 000024 0x80BE22C0 4600910D */ trunc.w.s	$f4, $f18
/* 000025 0x80BE22C4 440A2000 */ mfc1	$t2, $f4
/* 000026 0x80BE22C8 00000000 */ nop
/* 000027 0x80BE22CC A56A0032 */ sh	$t2, 0X32($t3)
/* 000028 0x80BE22D0 C606002C */ lwc1	$f6, 0X2C($s0)
/* 000029 0x80BE22D4 8E0E0270 */ lw	$t6, 0X270($s0)
/* 000030 0x80BE22D8 4600320D */ trunc.w.s	$f8, $f6
/* 000031 0x80BE22DC 440D4000 */ mfc1	$t5, $f8
/* 000032 0x80BE22E0 00000000 */ nop
/* 000033 0x80BE22E4 A5CD0034 */ sh	$t5, 0X34($t6)
/* 000034 0x80BE22E8 0C0389D0 */ jal	Collision_AddAC
/* 000035 0x80BE22EC AFA7002C */ sw	$a3, 0X2C($sp)
/* 000036 0x80BE22F0 3C014248 */ lui	$at, 0x4248
/* 000037 0x80BE22F4 44815000 */ mtc1	$at, $f10
/* 000038 0x80BE22F8 240F0007 */ li	$t7, 0X7
/* 000039 0x80BE22FC AFAF0014 */ sw	$t7, 0X14($sp)
/* 000040 0x80BE2300 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000041 0x80BE2304 02002825 */ move	$a1, $s0
/* 000042 0x80BE2308 3C064140 */ lui	$a2, 0x4140
/* 000043 0x80BE230C 3C0741C8 */ lui	$a3, 0x41C8
/* 000044 0x80BE2310 0C02DE2E */ jal	func_800B78B8
/* 000045 0x80BE2314 E7AA0010 */ swc1	$f10, 0X10($sp)
/* 000046 0x80BE2318 24020001 */ li	$v0, 0X1
/* 000047 0x80BE231C 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000048 0x80BE2320 8FB00020 */ lw	$s0, 0X20($sp)
/* 000049 0x80BE2324 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000050 0x80BE2328 03E00008 */ jr	$ra
/* 000051 0x80BE232C 00000000 */ nop

