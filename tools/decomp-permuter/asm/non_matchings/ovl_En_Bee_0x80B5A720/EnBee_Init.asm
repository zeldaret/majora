glabel EnBee_Init
/* 000000 0x80B5A720 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000001 0x80B5A724 AFB00028 */ sw	$s0, 0X28($sp)
/* 000002 0x80B5A728 00808025 */ move	$s0, $a0
/* 000003 0x80B5A72C AFBF002C */ sw	$ra, 0X2C($sp)
/* 000004 0x80B5A730 AFA50034 */ sw	$a1, 0X34($sp)
/* 000005 0x80B5A734 240E000A */ li	$t6, 0XA
/* 000006 0x80B5A738 3C06800B */ lui	$a2, %hi(func_800B3FC0)
/* 000007 0x80B5A73C A20E00B6 */ sb	$t6, 0XB6($s0)
/* 000008 0x80B5A740 24C63FC0 */ addiu	$a2, $a2, %lo(func_800B3FC0)
/* 000009 0x80B5A744 260400BC */ addiu	$a0, $s0, 0XBC
/* 000010 0x80B5A748 24050000 */ li	$a1, 0X0
/* 000011 0x80B5A74C 0C02CEE9 */ jal	Actor_SetDrawParams
/* 000012 0x80B5A750 3C074198 */ lui	$a3, 0x4198
/* 000013 0x80B5A754 3C060600 */ lui	$a2, 0x0600
/* 000014 0x80B5A758 3C070600 */ lui	$a3, 0x0600
/* 000015 0x80B5A75C 260F0188 */ addiu	$t7, $s0, 0X188
/* 000016 0x80B5A760 261801C4 */ addiu	$t8, $s0, 0X1C4
/* 000017 0x80B5A764 2419000A */ li	$t9, 0XA
/* 000018 0x80B5A768 AFB90018 */ sw	$t9, 0X18($sp)
/* 000019 0x80B5A76C AFB80014 */ sw	$t8, 0X14($sp)
/* 000020 0x80B5A770 AFAF0010 */ sw	$t7, 0X10($sp)
/* 000021 0x80B5A774 24E7005C */ addiu	$a3, $a3, 0X5C
/* 000022 0x80B5A778 24C61398 */ addiu	$a2, $a2, 0X1398
/* 000023 0x80B5A77C 8FA40034 */ lw	$a0, 0X34($sp)
/* 000024 0x80B5A780 0C04DA9F */ jal	SkelAnime_Init
/* 000025 0x80B5A784 26050144 */ addiu	$a1, $s0, 0X144
/* 000026 0x80B5A788 3C0980B6 */ lui	$t1, %hi(D_80B5B214)
/* 000027 0x80B5A78C 24080001 */ li	$t0, 0X1
/* 000028 0x80B5A790 2529B214 */ addiu	$t1, $t1, %lo(D_80B5B214)
/* 000029 0x80B5A794 240A0006 */ li	$t2, 0X6
/* 000030 0x80B5A798 A20800B7 */ sb	$t0, 0XB7($s0)
/* 000031 0x80B5A79C AE0900A0 */ sw	$t1, 0XA0($s0)
/* 000032 0x80B5A7A0 A20A001F */ sb	$t2, 0X1F($s0)
/* 000033 0x80B5A7A4 3C0780B6 */ lui	$a3, %hi(D_80B5B234)
/* 000034 0x80B5A7A8 24E7B234 */ addiu	$a3, $a3, %lo(D_80B5B234)
/* 000035 0x80B5A7AC 8FA40034 */ lw	$a0, 0X34($sp)
/* 000036 0x80B5A7B0 2605023C */ addiu	$a1, $s0, 0X23C
/* 000037 0x80B5A7B4 0C0384DD */ jal	Collision_InitCylinder
/* 000038 0x80B5A7B8 02003025 */ move	$a2, $s0
/* 000039 0x80B5A7BC 3C0380B6 */ lui	$v1, %hi(D_80B5B1F0)
/* 000040 0x80B5A7C0 2463B1F0 */ addiu	$v1, $v1, %lo(D_80B5B1F0)
/* 000041 0x80B5A7C4 8C6B0000 */ lw	$t3, 0X0($v1)
/* 000042 0x80B5A7C8 3C014140 */ lui	$at, 0x4140
/* 000043 0x80B5A7CC 44812000 */ mtc1	$at, $f4
/* 000044 0x80B5A7D0 AE0B0218 */ sw	$t3, 0X218($s0)
/* 000045 0x80B5A7D4 8C6C0000 */ lw	$t4, 0X0($v1)
/* 000046 0x80B5A7D8 258D0001 */ addiu	$t5, $t4, 0X1
/* 000047 0x80B5A7DC AC6D0000 */ sw	$t5, 0X0($v1)
/* 000048 0x80B5A7E0 0C03C81F */ jal	ActorCutscene_GetCurrentIndex
/* 000049 0x80B5A7E4 E60400CC */ swc1	$f4, 0XCC($s0)
/* 000050 0x80B5A7E8 2401FFFF */ li	$at, -0X1
/* 000051 0x80B5A7EC 10410005 */ beq	$v0, $at, .L80B5A804
/* 000052 0x80B5A7F0 8FA40034 */ lw	$a0, 0X34($sp)
/* 000053 0x80B5A7F4 24851CA0 */ addiu	$a1, $a0, 0X1CA0
/* 000054 0x80B5A7F8 02003025 */ move	$a2, $s0
/* 000055 0x80B5A7FC 0C02F055 */ jal	func_800BC154
/* 000056 0x80B5A800 24070007 */ li	$a3, 0X7
.L80B5A804:
/* 000057 0x80B5A804 240E000C */ li	$t6, 0XC
/* 000058 0x80B5A808 A20E011F */ sb	$t6, 0X11F($s0)
/* 000059 0x80B5A80C 0C2D6A15 */ jal	func_80B5A854
/* 000060 0x80B5A810 02002025 */ move	$a0, $s0
/* 000061 0x80B5A814 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000062 0x80B5A818 8FB00028 */ lw	$s0, 0X28($sp)
/* 000063 0x80B5A81C 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000064 0x80B5A820 03E00008 */ jr	$ra
/* 000065 0x80B5A824 00000000 */ nop

