glabel func_809755C0
/* 001460 0x809755C0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001461 0x809755C4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001462 0x809755C8 AFA40018 */ sw	$a0, 0X18($sp)
/* 001463 0x809755CC AFA5001C */ sw	$a1, 0X1C($sp)
/* 001464 0x809755D0 8FA40018 */ lw	$a0, 0X18($sp)
/* 001465 0x809755D4 0C25D289 */ jal	func_80974A24
/* 001466 0x809755D8 8FA5001C */ lw	$a1, 0X1C($sp)
/* 001467 0x809755DC 10400009 */ beqz	$v0, .L80975604
/* 001468 0x809755E0 8FA40018 */ lw	$a0, 0X18($sp)
/* 001469 0x809755E4 0C25D150 */ jal	func_80974540
/* 001470 0x809755E8 8FA40018 */ lw	$a0, 0X18($sp)
/* 001471 0x809755EC 3C058097 */ lui	$a1, %hi(func_80975998)
/* 001472 0x809755F0 24A55998 */ addiu	$a1, $a1, %lo(func_80975998)
/* 001473 0x809755F4 0C25CFBC */ jal	func_80973EF0
/* 001474 0x809755F8 8FA40018 */ lw	$a0, 0X18($sp)
/* 001475 0x809755FC 10000004 */ b	.L80975610
/* 001476 0x80975600 8FBF0014 */ lw	$ra, 0X14($sp)
.L80975604:
/* 001477 0x80975604 0C25D26E */ jal	func_809749B8
/* 001478 0x80975608 8FA5001C */ lw	$a1, 0X1C($sp)
/* 001479 0x8097560C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80975610:
/* 001480 0x80975610 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001481 0x80975614 03E00008 */ jr	$ra
/* 001482 0x80975618 00000000 */ nop

