glabel func_80A055E0
/* 017176 0x80A055E0 AFA50004 */ sw	$a1, 0X4($sp)
/* 017177 0x80A055E4 44802000 */ mtc1	$zero, $f4
/* 017178 0x80A055E8 3C0E80A0 */ lui	$t6, %hi(func_80A05608)
/* 017179 0x80A055EC 25CE5608 */ addiu	$t6, $t6, %lo(func_80A05608)
/* 017180 0x80A055F0 240F0032 */ li	$t7, 0X32
/* 017181 0x80A055F4 AC8E0144 */ sw	$t6, 0X144($a0)
/* 017182 0x80A055F8 A48F0150 */ sh	$t7, 0X150($a0)
/* 017183 0x80A055FC E4840070 */ swc1	$f4, 0X70($a0)
/* 017184 0x80A05600 03E00008 */ jr	$ra
/* 017185 0x80A05604 00000000 */ nop

