glabel func_80938804
/* 001733 0x80938804 8C8E0004 */ lw	$t6, 0X4($a0)
/* 001734 0x80938808 2401FFEF */ li	$at, -0X11
/* 001735 0x8093880C 3C188094 */ lui	$t8, %hi(func_80938E00)
/* 001736 0x80938810 3C198094 */ lui	$t9, %hi(func_80938834)
/* 001737 0x80938814 27188E00 */ addiu	$t8, $t8, %lo(func_80938E00)
/* 001738 0x80938818 27398834 */ addiu	$t9, $t9, %lo(func_80938834)
/* 001739 0x8093881C 01C17824 */ and	$t7, $t6, $at
/* 001740 0x80938820 AC8F0004 */ sw	$t7, 0X4($a0)
/* 001741 0x80938824 AC98013C */ sw	$t8, 0X13C($a0)
/* 001742 0x80938828 AC99015C */ sw	$t9, 0X15C($a0)
/* 001743 0x8093882C 03E00008 */ jr	$ra
/* 001744 0x80938830 00000000 */ nop

