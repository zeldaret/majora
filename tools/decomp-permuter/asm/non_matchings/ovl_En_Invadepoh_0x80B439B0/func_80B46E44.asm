glabel func_80B46E44
/* 003365 0x80B46E44 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 003366 0x80B46E48 AFA5001C */ sw	$a1, 0X1C($sp)
/* 003367 0x80B46E4C 00802825 */ move	$a1, $a0
/* 003368 0x80B46E50 AFBF0014 */ sw	$ra, 0X14($sp)
/* 003369 0x80B46E54 AFA40018 */ sw	$a0, 0X18($sp)
/* 003370 0x80B46E58 84A202F0 */ lh	$v0, 0X2F0($a1)
/* 003371 0x80B46E5C 3C0480B5 */ lui	$a0, %hi(D_80B50404)
/* 003372 0x80B46E60 18400003 */ blez	$v0, .L80B46E70
/* 003373 0x80B46E64 244EFFFF */ addiu	$t6, $v0, -0X1
/* 003374 0x80B46E68 10000011 */ b	.L80B46EB0
/* 003375 0x80B46E6C A4AE02F0 */ sh	$t6, 0X2F0($a1)
.L80B46E70:
/* 003376 0x80B46E70 84840404 */ lh	$a0, %lo(D_80B50404)($a0)
/* 003377 0x80B46E74 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 003378 0x80B46E78 AFA50018 */ sw	$a1, 0X18($sp)
/* 003379 0x80B46E7C 3C0380B5 */ lui	$v1, %hi(D_80B50404)
/* 003380 0x80B46E80 24630404 */ addiu	$v1, $v1, %lo(D_80B50404)
/* 003381 0x80B46E84 10400008 */ beqz	$v0, .L80B46EA8
/* 003382 0x80B46E88 8FA50018 */ lw	$a1, 0X18($sp)
/* 003383 0x80B46E8C 84640000 */ lh	$a0, 0X0($v1)
/* 003384 0x80B46E90 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 003385 0x80B46E94 AFA50018 */ sw	$a1, 0X18($sp)
/* 003386 0x80B46E98 0C2D1BB0 */ jal	func_80B46EC0
/* 003387 0x80B46E9C 8FA40018 */ lw	$a0, 0X18($sp)
/* 003388 0x80B46EA0 10000004 */ b	.L80B46EB4
/* 003389 0x80B46EA4 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B46EA8:
/* 003390 0x80B46EA8 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 003391 0x80B46EAC 84640000 */ lh	$a0, 0X0($v1)
.L80B46EB0:
/* 003392 0x80B46EB0 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B46EB4:
/* 003393 0x80B46EB4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 003394 0x80B46EB8 03E00008 */ jr	$ra
/* 003395 0x80B46EBC 00000000 */ nop

