glabel func_80B9C174
/* 000677 0x80B9C174 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000678 0x80B9C178 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000679 0x80B9C17C AFA40018 */ sw	$a0, 0X18($sp)
/* 000680 0x80B9C180 0C2E6F61 */ jal	func_80B9BD84
/* 000681 0x80B9C184 8FA40018 */ lw	$a0, 0X18($sp)
/* 000682 0x80B9C188 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000683 0x80B9C18C 8FA40018 */ lw	$a0, 0X18($sp)
/* 000684 0x80B9C190 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000685 0x80B9C194 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000686 0x80B9C198 03E00008 */ jr	$ra
/* 000687 0x80B9C19C 00000000 */ nop

