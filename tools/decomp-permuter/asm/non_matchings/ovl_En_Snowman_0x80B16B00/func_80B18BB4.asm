glabel func_80B18BB4
/* 002093 0x80B18BB4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002094 0x80B18BB8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 002095 0x80B18BBC AFA5001C */ sw	$a1, 0X1C($sp)
/* 002096 0x80B18BC0 00803825 */ move	$a3, $a0
/* 002097 0x80B18BC4 90EE00B7 */ lbu	$t6, 0XB7($a3)
/* 002098 0x80B18BC8 240F0002 */ li	$t7, 0X2
/* 002099 0x80B18BCC 55C00004 */ bnezl	$t6, .L80B18BE0
/* 002100 0x80B18BD0 8CF80004 */ lw	$t8, 0X4($a3)
/* 002101 0x80B18BD4 10000025 */ b	.L80B18C6C
/* 002102 0x80B18BD8 A0EF0289 */ sb	$t7, 0X289($a3)
/* 002103 0x80B18BDC 8CF80004 */ lw	$t8, 0X4($a3)
.L80B18BE0:
/* 002104 0x80B18BE0 24E402A8 */ addiu	$a0, $a3, 0X2A8
/* 002105 0x80B18BE4 00C02825 */ move	$a1, $a2
/* 002106 0x80B18BE8 37190010 */ ori	$t9, $t8, 0X10
/* 002107 0x80B18BEC ACF90004 */ sw	$t9, 0X4($a3)
/* 002108 0x80B18BF0 0C03FD43 */ jal	Math_Vec3f_Copy
/* 002109 0x80B18BF4 AFA70018 */ sw	$a3, 0X18($sp)
/* 002110 0x80B18BF8 8FA70018 */ lw	$a3, 0X18($sp)
/* 002111 0x80B18BFC 3C0980B1 */ lui	$t1, %hi(func_80B17FE0)
/* 002112 0x80B18C00 24080001 */ li	$t0, 0X1
/* 002113 0x80B18C04 8CEA0280 */ lw	$t2, 0X280($a3)
/* 002114 0x80B18C08 25297FE0 */ addiu	$t1, $t1, %lo(func_80B17FE0)
/* 002115 0x80B18C0C 240B0190 */ li	$t3, 0X190
/* 002116 0x80B18C10 112A0005 */ beq	$t1, $t2, .L80B18C28
/* 002117 0x80B18C14 A0E80289 */ sb	$t0, 0X289($a3)
/* 002118 0x80B18C18 A4EB0290 */ sh	$t3, 0X290($a3)
/* 002119 0x80B18C1C 3C0180B2 */ lui	$at, %hi(D_80B19B58)
/* 002120 0x80B18C20 C4249B58 */ lwc1	$f4, %lo(D_80B19B58)($at)
/* 002121 0x80B18C24 E4E40298 */ swc1	$f4, 0X298($a3)
.L80B18C28:
/* 002122 0x80B18C28 8CED013C */ lw	$t5, 0X13C($a3)
/* 002123 0x80B18C2C 3C0C80B2 */ lui	$t4, %hi(func_80B19948)
/* 002124 0x80B18C30 258C9948 */ addiu	$t4, $t4, %lo(func_80B19948)
/* 002125 0x80B18C34 158D0007 */ bne	$t4, $t5, .L80B18C54
/* 002126 0x80B18C38 3C014040 */ lui	$at, 0x4040
/* 002127 0x80B18C3C 44813000 */ mtc1	$at, $f6
/* 002128 0x80B18C40 3C0E80B2 */ lui	$t6, %hi(func_80B18C7C)
/* 002129 0x80B18C44 25CE8C7C */ addiu	$t6, $t6, %lo(func_80B18C7C)
/* 002130 0x80B18C48 ACEE0280 */ sw	$t6, 0X280($a3)
/* 002131 0x80B18C4C 10000007 */ b	.L80B18C6C
/* 002132 0x80B18C50 E4E60070 */ swc1	$f6, 0X70($a3)
.L80B18C54:
/* 002133 0x80B18C54 44804000 */ mtc1	$zero, $f8
/* 002134 0x80B18C58 A0E00288 */ sb	$zero, 0X288($a3)
/* 002135 0x80B18C5C 00E02025 */ move	$a0, $a3
/* 002136 0x80B18C60 E4E80070 */ swc1	$f8, 0X70($a3)
/* 002137 0x80B18C64 0C2C5FD3 */ jal	func_80B17F4C
/* 002138 0x80B18C68 8FA5001C */ lw	$a1, 0X1C($sp)
.L80B18C6C:
/* 002139 0x80B18C6C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002140 0x80B18C70 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002141 0x80B18C74 03E00008 */ jr	$ra
/* 002142 0x80B18C78 00000000 */ nop


.section .late_rodata

glabel D_80B19B58
/* 003094 0x80B19B58 */ .word	0x3C23D70A
