glabel Collision_InitCommonDefault
/* 060062 0x800E0538 AFA40000 */ sw	$a0, 0X0($sp)
/* 060063 0x800E053C 3C0E801C */ lui	$t6, %hi(defaultColCommon)
/* 060064 0x800E0540 25CEA240 */ addiu	$t6, $t6, %lo(defaultColCommon)
/* 060065 0x800E0544 8DD80000 */ lw	$t8, 0X0($t6)
/* 060066 0x800E0548 24020001 */ li	$v0, 0X1
/* 060067 0x800E054C ACB80000 */ sw	$t8, 0X0($a1)
/* 060068 0x800E0550 8DCF0004 */ lw	$t7, 0X4($t6)
/* 060069 0x800E0554 ACAF0004 */ sw	$t7, 0X4($a1)
/* 060070 0x800E0558 8DD80008 */ lw	$t8, 0X8($t6)
/* 060071 0x800E055C ACB80008 */ sw	$t8, 0X8($a1)
/* 060072 0x800E0560 8DCF000C */ lw	$t7, 0XC($t6)
/* 060073 0x800E0564 ACAF000C */ sw	$t7, 0XC($a1)
/* 060074 0x800E0568 8DD80010 */ lw	$t8, 0X10($t6)
/* 060075 0x800E056C ACB80010 */ sw	$t8, 0X10($a1)
/* 060076 0x800E0570 8DCF0014 */ lw	$t7, 0X14($t6)
/* 060077 0x800E0574 ACAF0014 */ sw	$t7, 0X14($a1)
/* 060078 0x800E0578 03E00008 */ jr	$ra
/* 060079 0x800E057C 00000000 */ nop

