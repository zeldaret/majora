glabel func_809BA940
/* 008724 0x809BA940 AFA50004 */ sw	$a1, 0X4($sp)
/* 008725 0x809BA944 3C0E809C */ lui	$t6, %hi(func_809BA978)
/* 008726 0x809BA948 25CEA978 */ addiu	$t6, $t6, %lo(func_809BA978)
/* 008727 0x809BA94C AC8E0420 */ sw	$t6, 0X420($a0)
/* 008728 0x809BA950 A0800148 */ sb	$zero, 0X148($a0)
/* 008729 0x809BA954 3C0F801F */ lui	$t7, %hi(gStaticContext)
/* 008730 0x809BA958 8DEF3F60 */ lw	$t7, %lo(gStaticContext)($t7)
/* 008731 0x809BA95C 240800FA */ li	$t0, 0XFA
/* 008732 0x809BA960 85F812F4 */ lh	$t8, 0X12F4($t7)
/* 008733 0x809BA964 A488014E */ sh	$t0, 0X14E($a0)
/* 008734 0x809BA968 2719003C */ addiu	$t9, $t8, 0X3C
/* 008735 0x809BA96C A499014A */ sh	$t9, 0X14A($a0)
/* 008736 0x809BA970 03E00008 */ jr	$ra
/* 008737 0x809BA974 00000000 */ nop

