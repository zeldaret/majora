glabel func_808804CC
/* 004967 0x808804CC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 004968 0x808804D0 44800000 */ mtc1	$zero, $f0
/* 004969 0x808804D4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 004970 0x808804D8 240E0004 */ li	$t6, 0X4
/* 004971 0x808804DC 44060000 */ mfc1	$a2, $f0
/* 004972 0x808804E0 44070000 */ mfc1	$a3, $f0
/* 004973 0x808804E4 AC8E020C */ sw	$t6, 0X20C($a0)
/* 004974 0x808804E8 0C2200B4 */ jal	func_808802D0
/* 004975 0x808804EC 24050004 */ li	$a1, 0X4
/* 004976 0x808804F0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 004977 0x808804F4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 004978 0x808804F8 03E00008 */ jr	$ra
/* 004979 0x808804FC 00000000 */ nop

