glabel func_80A71788
/* 000366 0x80A71788 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000367 0x80A7178C AFB10018 */ sw	$s1, 0X18($sp)
/* 000368 0x80A71790 00A08825 */ move	$s1, $a1
/* 000369 0x80A71794 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000370 0x80A71798 AFB00014 */ sw	$s0, 0X14($sp)
/* 000371 0x80A7179C AFA40020 */ sw	$a0, 0X20($sp)
/* 000372 0x80A717A0 00008025 */ move	$s0, $zero
/* 000373 0x80A717A4 02202025 */ move	$a0, $s1
.L80A717A8:
/* 000374 0x80A717A8 02002825 */ move	$a1, $s0
/* 000375 0x80A717AC 24060001 */ li	$a2, 0X1
/* 000376 0x80A717B0 0C04F658 */ jal	func_ActorCategoryIterateById
/* 000377 0x80A717B4 2407017E */ li	$a3, 0X17E
/* 000378 0x80A717B8 10400007 */ beqz	$v0, .L80A717D8
/* 000379 0x80A717BC 00408025 */ move	$s0, $v0
/* 000380 0x80A717C0 8445001C */ lh	$a1, 0X1C($v0)
/* 000381 0x80A717C4 02202025 */ move	$a0, $s1
/* 000382 0x80A717C8 00052903 */ sra	$a1, $a1, 4
/* 000383 0x80A717CC 0C02D70D */ jal	Actor_UnsetSwitchFlag
/* 000384 0x80A717D0 30A5007F */ andi	$a1, $a1, 0X7F
/* 000385 0x80A717D4 8E10012C */ lw	$s0, 0X12C($s0)
.L80A717D8:
/* 000386 0x80A717D8 5600FFF3 */ bnezl	$s0, .L80A717A8
/* 000387 0x80A717DC 02202025 */ move	$a0, $s1
/* 000388 0x80A717E0 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000389 0x80A717E4 8FB00014 */ lw	$s0, 0X14($sp)
/* 000390 0x80A717E8 8FB10018 */ lw	$s1, 0X18($sp)
/* 000391 0x80A717EC 03E00008 */ jr	$ra
/* 000392 0x80A717F0 27BD0020 */ addiu	$sp, $sp, 0X20

