glabel func_80A76748
/* 000610 0x80A76748 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000611 0x80A7674C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000612 0x80A76750 3C013F80 */ lui	$at, 0x3F80
/* 000613 0x80A76754 44816000 */ mtc1	$at, $f12
/* 000614 0x80A76758 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000615 0x80A7675C AFA40018 */ sw	$a0, 0X18($sp)
/* 000616 0x80A76760 3C014040 */ lui	$at, 0x4040
/* 000617 0x80A76764 44812000 */ mtc1	$at, $f4
/* 000618 0x80A76768 8FA40018 */ lw	$a0, 0X18($sp)
/* 000619 0x80A7676C 3C014000 */ lui	$at, 0x4000
/* 000620 0x80A76770 46040180 */ add.s	$f6, $f0, $f4
/* 000621 0x80A76774 44814000 */ mtc1	$at, $f8
/* 000622 0x80A76778 3C0F80A7 */ lui	$t7, %hi(func_80A767A8)
/* 000623 0x80A7677C 240E0003 */ li	$t6, 0X3
/* 000624 0x80A76780 25EF67A8 */ addiu	$t7, $t7, %lo(func_80A767A8)
/* 000625 0x80A76784 E4860070 */ swc1	$f6, 0X70($a0)
/* 000626 0x80A76788 A48001EE */ sh	$zero, 0X1EE($a0)
/* 000627 0x80A7678C A48E01EA */ sh	$t6, 0X1EA($a0)
/* 000628 0x80A76790 AC8F01C4 */ sw	$t7, 0X1C4($a0)
/* 000629 0x80A76794 E4880160 */ swc1	$f8, 0X160($a0)
/* 000630 0x80A76798 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000631 0x80A7679C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000632 0x80A767A0 03E00008 */ jr	$ra
/* 000633 0x80A767A4 00000000 */ nop

