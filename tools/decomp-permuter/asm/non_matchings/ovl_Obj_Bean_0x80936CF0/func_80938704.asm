glabel func_80938704
/* 001669 0x80938704 8C8E0004 */ lw	$t6, 0X4($a0)
/* 001670 0x80938708 3C188094 */ lui	$t8, %hi(func_80938728)
/* 001671 0x8093870C 27188728 */ addiu	$t8, $t8, %lo(func_80938728)
/* 001672 0x80938710 35CF0010 */ ori	$t7, $t6, 0X10
/* 001673 0x80938714 AC8F0004 */ sw	$t7, 0X4($a0)
/* 001674 0x80938718 AC80013C */ sw	$zero, 0X13C($a0)
/* 001675 0x8093871C AC98015C */ sw	$t8, 0X15C($a0)
/* 001676 0x80938720 03E00008 */ jr	$ra
/* 001677 0x80938724 00000000 */ nop

