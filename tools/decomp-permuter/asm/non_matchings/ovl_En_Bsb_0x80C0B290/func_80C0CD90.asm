glabel func_80C0CD90
/* 001728 0x80C0CD90 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001729 0x80C0CD94 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001730 0x80C0CD98 44802000 */ mtc1	$zero, $f4
/* 001731 0x80C0CD9C AC8002A4 */ sw	$zero, 0X2A4($a0)
/* 001732 0x80C0CDA0 24053AAA */ li	$a1, 0X3AAA
/* 001733 0x80C0CDA4 E4840070 */ swc1	$f4, 0X70($a0)
/* 001734 0x80C0CDA8 0C02E3B2 */ jal	func_800B8EC8
/* 001735 0x80C0CDAC AFA40018 */ sw	$a0, 0X18($sp)
/* 001736 0x80C0CDB0 8FA40018 */ lw	$a0, 0X18($sp)
/* 001737 0x80C0CDB4 0C302CA4 */ jal	func_80C0B290
/* 001738 0x80C0CDB8 24050005 */ li	$a1, 0X5
/* 001739 0x80C0CDBC 8FA40018 */ lw	$a0, 0X18($sp)
/* 001740 0x80C0CDC0 3C0F80C1 */ lui	$t7, %hi(func_80C0CDE4)
/* 001741 0x80C0CDC4 240E0006 */ li	$t6, 0X6
/* 001742 0x80C0CDC8 25EFCDE4 */ addiu	$t7, $t7, %lo(func_80C0CDE4)
/* 001743 0x80C0CDCC A48E02B4 */ sh	$t6, 0X2B4($a0)
/* 001744 0x80C0CDD0 AC8F0284 */ sw	$t7, 0X284($a0)
/* 001745 0x80C0CDD4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001746 0x80C0CDD8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001747 0x80C0CDDC 03E00008 */ jr	$ra
/* 001748 0x80C0CDE0 00000000 */ nop

