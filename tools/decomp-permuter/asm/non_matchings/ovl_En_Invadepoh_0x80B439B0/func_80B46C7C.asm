glabel func_80B46C7C
/* 003251 0x80B46C7C AFA40000 */ sw	$a0, 0X0($sp)
/* 003252 0x80B46C80 AFA50004 */ sw	$a1, 0X4($sp)
/* 003253 0x80B46C84 3C0180B5 */ lui	$at, %hi(D_80B503F0)
/* 003254 0x80B46C88 AC2003F0 */ sw	$zero, %lo(D_80B503F0)($at)
/* 003255 0x80B46C8C 03E00008 */ jr	$ra
/* 003256 0x80B46C90 00000000 */ nop

