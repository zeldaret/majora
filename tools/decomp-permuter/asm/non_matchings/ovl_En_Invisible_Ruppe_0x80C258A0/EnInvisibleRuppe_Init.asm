glabel EnInvisibleRuppe_Init
/* 000091 0x80C25A0C 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000092 0x80C25A10 AFB00018 */ sw	$s0, 0X18($sp)
/* 000093 0x80C25A14 00808025 */ move	$s0, $a0
/* 000094 0x80C25A18 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000095 0x80C25A1C AFA50034 */ sw	$a1, 0X34($sp)
/* 000096 0x80C25A20 860E001C */ lh	$t6, 0X1C($s0)
/* 000097 0x80C25A24 2401007F */ li	$at, 0X7F
/* 000098 0x80C25A28 2419FFFF */ li	$t9, -0X1
/* 000099 0x80C25A2C 31CF01FC */ andi	$t7, $t6, 0X1FC
/* 000100 0x80C25A30 000FC083 */ sra	$t8, $t7, 2
/* 000101 0x80C25A34 A6180190 */ sh	$t8, 0X190($s0)
/* 000102 0x80C25A38 86060190 */ lh	$a2, 0X190($s0)
/* 000103 0x80C25A3C 14C10003 */ bne	$a2, $at, .L80C25A4C
/* 000104 0x80C25A40 00000000 */ nop
/* 000105 0x80C25A44 A6190190 */ sh	$t9, 0X190($s0)
/* 000106 0x80C25A48 86060190 */ lh	$a2, 0X190($s0)
.L80C25A4C:
/* 000107 0x80C25A4C 04C00009 */ bltz	$a2, .L80C25A74
/* 000108 0x80C25A50 8FA40034 */ lw	$a0, 0X34($sp)
/* 000109 0x80C25A54 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000110 0x80C25A58 00C02825 */ move	$a1, $a2
/* 000111 0x80C25A5C 50400006 */ beqzl	$v0, .L80C25A78
/* 000112 0x80C25A60 26050144 */ addiu	$a1, $s0, 0X144
/* 000113 0x80C25A64 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000114 0x80C25A68 02002025 */ move	$a0, $s0
/* 000115 0x80C25A6C 1000000F */ b	.L80C25AAC
/* 000116 0x80C25A70 8FBF001C */ lw	$ra, 0X1C($sp)
.L80C25A74:
/* 000117 0x80C25A74 26050144 */ addiu	$a1, $s0, 0X144
.L80C25A78:
/* 000118 0x80C25A78 AFA50024 */ sw	$a1, 0X24($sp)
/* 000119 0x80C25A7C 0C038467 */ jal	Collision_InitCylinderDefault
/* 000120 0x80C25A80 8FA40034 */ lw	$a0, 0X34($sp)
/* 000121 0x80C25A84 3C0780C2 */ lui	$a3, %hi(D_80C25B50)
/* 000122 0x80C25A88 8FA50024 */ lw	$a1, 0X24($sp)
/* 000123 0x80C25A8C 24E75B50 */ addiu	$a3, $a3, %lo(D_80C25B50)
/* 000124 0x80C25A90 8FA40034 */ lw	$a0, 0X34($sp)
/* 000125 0x80C25A94 0C0384DD */ jal	Collision_InitCylinder
/* 000126 0x80C25A98 02003025 */ move	$a2, $s0
/* 000127 0x80C25A9C 3C0880C2 */ lui	$t0, %hi(func_80C2590C)
/* 000128 0x80C25AA0 2508590C */ addiu	$t0, $t0, %lo(func_80C2590C)
/* 000129 0x80C25AA4 AE080194 */ sw	$t0, 0X194($s0)
/* 000130 0x80C25AA8 8FBF001C */ lw	$ra, 0X1C($sp)
.L80C25AAC:
/* 000131 0x80C25AAC 8FB00018 */ lw	$s0, 0X18($sp)
/* 000132 0x80C25AB0 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000133 0x80C25AB4 03E00008 */ jr	$ra
/* 000134 0x80C25AB8 00000000 */ nop

