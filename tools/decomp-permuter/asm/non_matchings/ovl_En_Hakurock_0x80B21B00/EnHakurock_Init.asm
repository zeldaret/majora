glabel EnHakurock_Init
/* 000000 0x80B21B00 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000001 0x80B21B04 AFB00018 */ sw	$s0, 0X18($sp)
/* 000002 0x80B21B08 00808025 */ move	$s0, $a0
/* 000003 0x80B21B0C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000004 0x80B21B10 AFA50024 */ sw	$a1, 0X24($sp)
/* 000005 0x80B21B14 3C06800B */ lui	$a2, %hi(func_800B3FC0)
/* 000006 0x80B21B18 24C63FC0 */ addiu	$a2, $a2, %lo(func_800B3FC0)
/* 000007 0x80B21B1C 260400BC */ addiu	$a0, $s0, 0XBC
/* 000008 0x80B21B20 24050000 */ li	$a1, 0X0
/* 000009 0x80B21B24 0C02CEE9 */ jal	Actor_SetDrawParams
/* 000010 0x80B21B28 3C074250 */ lui	$a3, 0x4250
/* 000011 0x80B21B2C 3C0780B2 */ lui	$a3, %hi(D_80B22A80)
/* 000012 0x80B21B30 24E72A80 */ addiu	$a3, $a3, %lo(D_80B22A80)
/* 000013 0x80B21B34 8FA40024 */ lw	$a0, 0X24($sp)
/* 000014 0x80B21B38 2605014C */ addiu	$a1, $s0, 0X14C
/* 000015 0x80B21B3C 0C0384DD */ jal	Collision_InitCylinder
/* 000016 0x80B21B40 02003025 */ move	$a2, $s0
/* 000017 0x80B21B44 3C0680B2 */ lui	$a2, %hi(D_80B22AAC)
/* 000018 0x80B21B48 24C62AAC */ addiu	$a2, $a2, %lo(D_80B22AAC)
/* 000019 0x80B21B4C 260400A0 */ addiu	$a0, $s0, 0XA0
/* 000020 0x80B21B50 0C039D4C */ jal	func_800E7530
/* 000021 0x80B21B54 00002825 */ move	$a1, $zero
/* 000022 0x80B21B58 860E001C */ lh	$t6, 0X1C($s0)
/* 000023 0x80B21B5C 24010001 */ li	$at, 0X1
/* 000024 0x80B21B60 15C10004 */ bne	$t6, $at, .L80B21B74
/* 000025 0x80B21B64 3C01BFC0 */ lui	$at, 0xBFC0
/* 000026 0x80B21B68 44812000 */ mtc1	$at, $f4
/* 000027 0x80B21B6C 1000000A */ b	.L80B21B98
/* 000028 0x80B21B70 E6040074 */ swc1	$f4, 0X74($s0)
.L80B21B74:
/* 000029 0x80B21B74 3C01C2C8 */ lui	$at, 0xC2C8
/* 000030 0x80B21B78 44813000 */ mtc1	$at, $f6
/* 000031 0x80B21B7C 920F015E */ lbu	$t7, 0X15E($s0)
/* 000032 0x80B21B80 3C01C0E0 */ lui	$at, 0xC0E0
/* 000033 0x80B21B84 44814000 */ mtc1	$at, $f8
/* 000034 0x80B21B88 31F8FFFB */ andi	$t8, $t7, 0XFFFB
/* 000035 0x80B21B8C A218015E */ sb	$t8, 0X15E($s0)
/* 000036 0x80B21B90 E6060078 */ swc1	$f6, 0X78($s0)
/* 000037 0x80B21B94 E6080074 */ swc1	$f8, 0X74($s0)
.L80B21B98:
/* 000038 0x80B21B98 0C2C87FF */ jal	func_80B21FFC
/* 000039 0x80B21B9C 02002025 */ move	$a0, $s0
/* 000040 0x80B21BA0 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000041 0x80B21BA4 8FB00018 */ lw	$s0, 0X18($sp)
/* 000042 0x80B21BA8 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000043 0x80B21BAC 03E00008 */ jr	$ra
/* 000044 0x80B21BB0 00000000 */ nop

