glabel func_8095ABF0
/* 000440 0x8095ABF0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000441 0x8095ABF4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000442 0x8095ABF8 AFA40018 */ sw	$a0, 0X18($sp)
/* 000443 0x8095ABFC AFA5001C */ sw	$a1, 0X1C($sp)
/* 000444 0x8095AC00 8FA40018 */ lw	$a0, 0X18($sp)
/* 000445 0x8095AC04 0C02E19F */ jal	func_800B867C
/* 000446 0x8095AC08 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000447 0x8095AC0C 1040000C */ beqz	$v0, .L8095AC40
/* 000448 0x8095AC10 3C041100 */ lui	$a0, 0x1100
/* 000449 0x8095AC14 0C06A26A */ jal	func_801A89A8
/* 000450 0x8095AC18 348400FF */ ori	$a0, $a0, 0XFF
/* 000451 0x8095AC1C 8FA40018 */ lw	$a0, 0X18($sp)
/* 000452 0x8095AC20 0C256AB4 */ jal	func_8095AAD0
/* 000453 0x8095AC24 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000454 0x8095AC28 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000455 0x8095AC2C 3C01FFFE */ lui	$at, 0xFFFE
/* 000456 0x8095AC30 3421FFFF */ ori	$at, $at, 0XFFFF
/* 000457 0x8095AC34 8DCF0004 */ lw	$t7, 0X4($t6)
/* 000458 0x8095AC38 01E1C024 */ and	$t8, $t7, $at
/* 000459 0x8095AC3C ADD80004 */ sw	$t8, 0X4($t6)
.L8095AC40:
/* 000460 0x8095AC40 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000461 0x8095AC44 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000462 0x8095AC48 03E00008 */ jr	$ra
/* 000463 0x8095AC4C 00000000 */ nop

