glabel func_808AA79C
/* 002495 0x808AA79C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002496 0x808AA7A0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 002497 0x808AA7A4 44802000 */ mtc1	$zero, $f4
/* 002498 0x808AA7A8 0C22A9B6 */ jal	func_808AA6D8
/* 002499 0x808AA7AC E48402B4 */ swc1	$f4, 0X2B4($a0)
/* 002500 0x808AA7B0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002501 0x808AA7B4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002502 0x808AA7B8 03E00008 */ jr	$ra
/* 002503 0x808AA7BC 00000000 */ nop

