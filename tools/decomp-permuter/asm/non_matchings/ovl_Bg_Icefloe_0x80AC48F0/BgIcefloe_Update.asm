glabel BgIcefloe_Update
/* 000362 0x80AC4E98 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000363 0x80AC4E9C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000364 0x80AC4EA0 AFA40018 */ sw	$a0, 0X18($sp)
/* 000365 0x80AC4EA4 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000366 0x80AC4EA8 0C05A433 */ jal	func_801690CC
/* 000367 0x80AC4EAC 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000368 0x80AC4EB0 14400005 */ bnez	$v0, .L80AC4EC8
/* 000369 0x80AC4EB4 8FA40018 */ lw	$a0, 0X18($sp)
/* 000370 0x80AC4EB8 8C99015C */ lw	$t9, 0X15C($a0)
/* 000371 0x80AC4EBC 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000372 0x80AC4EC0 0320F809 */ jalr	$t9
/* 000373 0x80AC4EC4 00000000 */ nop
.L80AC4EC8:
/* 000374 0x80AC4EC8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000375 0x80AC4ECC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000376 0x80AC4ED0 03E00008 */ jr	$ra
/* 000377 0x80AC4ED4 00000000 */ nop

