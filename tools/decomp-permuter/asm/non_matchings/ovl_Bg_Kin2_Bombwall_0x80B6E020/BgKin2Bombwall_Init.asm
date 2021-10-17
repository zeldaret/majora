glabel BgKin2Bombwall_Init
/* 000227 0x80B6E3AC 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000228 0x80B6E3B0 AFB00018 */ sw	$s0, 0X18($sp)
/* 000229 0x80B6E3B4 00808025 */ move	$s0, $a0
/* 000230 0x80B6E3B8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000231 0x80B6E3BC AFA50034 */ sw	$a1, 0X34($sp)
/* 000232 0x80B6E3C0 3C0580B7 */ lui	$a1, %hi(D_80B6E748)
/* 000233 0x80B6E3C4 24A5E748 */ addiu	$a1, $a1, %lo(D_80B6E748)
/* 000234 0x80B6E3C8 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000235 0x80B6E3CC 02002025 */ move	$a0, $s0
/* 000236 0x80B6E3D0 02002025 */ move	$a0, $s0
/* 000237 0x80B6E3D4 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000238 0x80B6E3D8 00002825 */ move	$a1, $zero
/* 000239 0x80B6E3DC 2605015C */ addiu	$a1, $s0, 0X15C
/* 000240 0x80B6E3E0 AFA50024 */ sw	$a1, 0X24($sp)
/* 000241 0x80B6E3E4 0C038467 */ jal	Collision_InitCylinderDefault
/* 000242 0x80B6E3E8 8FA40034 */ lw	$a0, 0X34($sp)
/* 000243 0x80B6E3EC 8605001C */ lh	$a1, 0X1C($s0)
/* 000244 0x80B6E3F0 8FA40034 */ lw	$a0, 0X34($sp)
/* 000245 0x80B6E3F4 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000246 0x80B6E3F8 30A5007F */ andi	$a1, $a1, 0X7F
/* 000247 0x80B6E3FC 10400005 */ beqz	$v0, .L80B6E414
/* 000248 0x80B6E400 8FA40034 */ lw	$a0, 0X34($sp)
/* 000249 0x80B6E404 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000250 0x80B6E408 02002025 */ move	$a0, $s0
/* 000251 0x80B6E40C 10000014 */ b	.L80B6E460
/* 000252 0x80B6E410 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B6E414:
/* 000253 0x80B6E414 3C060600 */ lui	$a2, 0x0600
/* 000254 0x80B6E418 24C60490 */ addiu	$a2, $a2, 0X490
/* 000255 0x80B6E41C 0C032B8D */ jal	BgCheck3_LoadMesh
/* 000256 0x80B6E420 02002825 */ move	$a1, $s0
/* 000257 0x80B6E424 3C0780B7 */ lui	$a3, %hi(D_80B6E6F0)
/* 000258 0x80B6E428 24E7E6F0 */ addiu	$a3, $a3, %lo(D_80B6E6F0)
/* 000259 0x80B6E42C 8FA40034 */ lw	$a0, 0X34($sp)
/* 000260 0x80B6E430 8FA50024 */ lw	$a1, 0X24($sp)
/* 000261 0x80B6E434 0C0384C3 */ jal	Collision_InitCylinderWithData
/* 000262 0x80B6E438 02003025 */ move	$a2, $s0
/* 000263 0x80B6E43C 02002025 */ move	$a0, $s0
/* 000264 0x80B6E440 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000265 0x80B6E444 8FA50024 */ lw	$a1, 0X24($sp)
/* 000266 0x80B6E448 02002025 */ move	$a0, $s0
/* 000267 0x80B6E44C 0C02D9D7 */ jal	Actor_SetHeight
/* 000268 0x80B6E450 3C054270 */ lui	$a1, 0x4270
/* 000269 0x80B6E454 0C2DB92E */ jal	func_80B6E4B8
/* 000270 0x80B6E458 02002025 */ move	$a0, $s0
/* 000271 0x80B6E45C 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B6E460:
/* 000272 0x80B6E460 8FB00018 */ lw	$s0, 0X18($sp)
/* 000273 0x80B6E464 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000274 0x80B6E468 03E00008 */ jr	$ra
/* 000275 0x80B6E46C 00000000 */ nop

