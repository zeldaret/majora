glabel func_80B471C0
/* 003588 0x80B471C0 240E0003 */ li	$t6, 0X3
/* 003589 0x80B471C4 3C0180B5 */ lui	$at, %hi(D_80B4E940)
/* 003590 0x80B471C8 3C0F80B4 */ lui	$t7, %hi(func_80B471E0)
/* 003591 0x80B471CC AC2EE940 */ sw	$t6, %lo(D_80B4E940)($at)
/* 003592 0x80B471D0 25EF71E0 */ addiu	$t7, $t7, %lo(func_80B471E0)
/* 003593 0x80B471D4 AC8F02EC */ sw	$t7, 0X2EC($a0)
/* 003594 0x80B471D8 03E00008 */ jr	$ra
/* 003595 0x80B471DC 00000000 */ nop

