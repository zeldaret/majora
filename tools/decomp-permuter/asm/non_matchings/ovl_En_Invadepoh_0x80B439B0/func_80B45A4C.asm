glabel func_80B45A4C
/* 002087 0x80B45A4C AFA50004 */ sw	$a1, 0X4($sp)
/* 002088 0x80B45A50 8C820008 */ lw	$v0, 0X8($a0)
/* 002089 0x80B45A54 8085000E */ lb	$a1, 0XE($a0)
/* 002090 0x80B45A58 8C430004 */ lw	$v1, 0X4($v0)
/* 002091 0x80B45A5C 24B80001 */ addiu	$t8, $a1, 0X1
/* 002092 0x80B45A60 806E0004 */ lb	$t6, 0X4($v1)
/* 002093 0x80B45A64 25CFFFFF */ addiu	$t7, $t6, -0X1
/* 002094 0x80B45A68 00AF082A */ slt	$at, $a1, $t7
/* 002095 0x80B45A6C 10200007 */ beqz	$at, .L80B45A8C
/* 002096 0x80B45A70 00000000 */ nop
/* 002097 0x80B45A74 A098000E */ sb	$t8, 0XE($a0)
/* 002098 0x80B45A78 8088000E */ lb	$t0, 0XE($a0)
/* 002099 0x80B45A7C 8C790000 */ lw	$t9, 0X0($v1)
/* 002100 0x80B45A80 03284821 */ addu	$t1, $t9, $t0
/* 002101 0x80B45A84 812A0000 */ lb	$t2, 0X0($t1)
/* 002102 0x80B45A88 A08A000F */ sb	$t2, 0XF($a0)
.L80B45A8C:
/* 002103 0x80B45A8C 03E00008 */ jr	$ra
/* 002104 0x80B45A90 00000000 */ nop

