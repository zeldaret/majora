glabel func_80C100DC
/* 000067 0x80C100DC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000068 0x80C100E0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000069 0x80C100E4 908202AC */ lbu	$v0, 0X2AC($a0)
/* 000070 0x80C100E8 24010004 */ li	$at, 0X4
/* 000071 0x80C100EC 10400006 */ beqz	$v0, .L80C10108
/* 000072 0x80C100F0 244E0001 */ addiu	$t6, $v0, 0X1
/* 000073 0x80C100F4 31CF00FF */ andi	$t7, $t6, 0XFF
/* 000074 0x80C100F8 15E1000F */ bne	$t7, $at, .L80C10138
/* 000075 0x80C100FC A08E02AC */ sb	$t6, 0X2AC($a0)
/* 000076 0x80C10100 1000000D */ b	.L80C10138
/* 000077 0x80C10104 A08002AC */ sb	$zero, 0X2AC($a0)
.L80C10108:
/* 000078 0x80C10108 0C021BF7 */ jal	randZeroOne
/* 000079 0x80C1010C AFA40018 */ sw	$a0, 0X18($sp)
/* 000080 0x80C10110 3C0180C1 */ lui	$at, %hi(D_80C106D0)
/* 000081 0x80C10114 C42406D0 */ lwc1	$f4, %lo(D_80C106D0)($at)
/* 000082 0x80C10118 8FA40018 */ lw	$a0, 0X18($sp)
/* 000083 0x80C1011C 4604003C */ c.lt.s	$f0, $f4
/* 000084 0x80C10120 00000000 */ nop
/* 000085 0x80C10124 45020005 */ bc1fl .L80C1013C
/* 000086 0x80C10128 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000087 0x80C1012C 909802AC */ lbu	$t8, 0X2AC($a0)
/* 000088 0x80C10130 27190001 */ addiu	$t9, $t8, 0X1
/* 000089 0x80C10134 A09902AC */ sb	$t9, 0X2AC($a0)
.L80C10138:
/* 000090 0x80C10138 8FBF0014 */ lw	$ra, 0X14($sp)
.L80C1013C:
/* 000091 0x80C1013C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000092 0x80C10140 03E00008 */ jr	$ra
/* 000093 0x80C10144 00000000 */ nop


.section .late_rodata

glabel D_80C106D0
/* 000448 0x80C106D0 */ .word	0x3CA3D70A
/* 000449 0x80C106D4 */ .word	0x00000000
/* 000450 0x80C106D8 */ .word	0x00000000
/* 000451 0x80C106DC */ .word	0x00000000
