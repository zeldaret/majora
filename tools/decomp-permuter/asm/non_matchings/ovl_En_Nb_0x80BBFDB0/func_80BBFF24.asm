glabel func_80BBFF24
/* 000093 0x80BBFF24 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000094 0x80BBFF28 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000095 0x80BBFF2C AFA5002C */ sw	$a1, 0X2C($sp)
/* 000096 0x80BBFF30 00803825 */ move	$a3, $a0
/* 000097 0x80BBFF34 24E60190 */ addiu	$a2, $a3, 0X190
/* 000098 0x80BBFF38 00C02825 */ move	$a1, $a2
/* 000099 0x80BBFF3C AFA6001C */ sw	$a2, 0X1C($sp)
/* 000100 0x80BBFF40 00E02025 */ move	$a0, $a3
/* 000101 0x80BBFF44 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000102 0x80BBFF48 AFA70028 */ sw	$a3, 0X28($sp)
/* 000103 0x80BBFF4C 8FA70028 */ lw	$a3, 0X28($sp)
/* 000104 0x80BBFF50 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000105 0x80BBFF54 3C010001 */ lui	$at, 0x0001
/* 000106 0x80BBFF58 C4E40040 */ lwc1	$f4, 0X40($a3)
/* 000107 0x80BBFF5C C4E60028 */ lwc1	$f6, 0X28($a3)
/* 000108 0x80BBFF60 8FA6001C */ lw	$a2, 0X1C($sp)
/* 000109 0x80BBFF64 34218884 */ ori	$at, $at, 0X8884
/* 000110 0x80BBFF68 46062001 */ sub.s	$f0, $f4, $f6
/* 000111 0x80BBFF6C 00812821 */ addu	$a1, $a0, $at
/* 000112 0x80BBFF70 4600020D */ trunc.w.s	$f8, $f0
/* 000113 0x80BBFF74 440F4000 */ mfc1	$t7, $f8
/* 000114 0x80BBFF78 0C038A4A */ jal	Collision_AddOT
/* 000115 0x80BBFF7C A4EF01D2 */ sh	$t7, 0X1D2($a3)
/* 000116 0x80BBFF80 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000117 0x80BBFF84 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000118 0x80BBFF88 03E00008 */ jr	$ra
/* 000119 0x80BBFF8C 00000000 */ nop

