glabel func_80B7D360
/* 000692 0x80B7D360 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000693 0x80B7D364 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000694 0x80B7D368 AFA40018 */ sw	$a0, 0X18($sp)
/* 000695 0x80B7D36C 8FA40018 */ lw	$a0, 0X18($sp)
/* 000696 0x80B7D370 0C02E3B2 */ jal	func_800B8EC8
/* 000697 0x80B7D374 2405389E */ li	$a1, 0X389E
/* 000698 0x80B7D378 8FAF0018 */ lw	$t7, 0X18($sp)
/* 000699 0x80B7D37C 3C0E80B8 */ lui	$t6, %hi(func_80B7D398)
/* 000700 0x80B7D380 25CED398 */ addiu	$t6, $t6, %lo(func_80B7D398)
/* 000701 0x80B7D384 ADEE02AC */ sw	$t6, 0X2AC($t7)
/* 000702 0x80B7D388 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000703 0x80B7D38C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000704 0x80B7D390 03E00008 */ jr	$ra
/* 000705 0x80B7D394 00000000 */ nop

