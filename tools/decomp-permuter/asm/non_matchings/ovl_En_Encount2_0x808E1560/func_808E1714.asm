glabel func_808E1714
/* 000109 0x808E1714 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000110 0x808E1718 AFB00018 */ sw	$s0, 0X18($sp)
/* 000111 0x808E171C 00808025 */ move	$s0, $a0
/* 000112 0x808E1720 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000113 0x808E1724 AFA50024 */ sw	$a1, 0X24($sp)
/* 000114 0x808E1728 3C01808E */ lui	$at, %hi(D_808E1F54)
/* 000115 0x808E172C C4261F54 */ lwc1	$f6, %lo(D_808E1F54)($at)
/* 000116 0x808E1730 C604016C */ lwc1	$f4, 0X16C($s0)
/* 000117 0x808E1734 46062200 */ add.s	$f8, $f4, $f6
/* 000118 0x808E1738 E608016C */ swc1	$f8, 0X16C($s0)
/* 000119 0x808E173C C60A016C */ lwc1	$f10, 0X16C($s0)
/* 000120 0x808E1740 4600540D */ trunc.w.s	$f16, $f10
/* 000121 0x808E1744 44048000 */ mfc1	$a0, $f16
/* 000122 0x808E1748 00000000 */ nop
/* 000123 0x808E174C 00042400 */ sll	$a0, $a0, 16
/* 000124 0x808E1750 0C03FB61 */ jal	Math_Sins
/* 000125 0x808E1754 00042403 */ sra	$a0, $a0, 16
/* 000126 0x808E1758 3C053DCC */ lui	$a1, 0x3DCC
/* 000127 0x808E175C 3C063E99 */ lui	$a2, 0x3E99
/* 000128 0x808E1760 3C073C23 */ lui	$a3, 0x3C23
/* 000129 0x808E1764 E6000068 */ swc1	$f0, 0X68($s0)
/* 000130 0x808E1768 34E7D70A */ ori	$a3, $a3, 0XD70A
/* 000131 0x808E176C 34C6999A */ ori	$a2, $a2, 0X999A
/* 000132 0x808E1770 34A5CCCD */ ori	$a1, $a1, 0XCCCD
/* 000133 0x808E1774 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000134 0x808E1778 26040168 */ addiu	$a0, $s0, 0X168
/* 000135 0x808E177C 920F0181 */ lbu	$t7, 0X181($s0)
/* 000136 0x808E1780 31F80002 */ andi	$t8, $t7, 0X2
/* 000137 0x808E1784 5300000B */ beqzl	$t8, .L808E17B4
/* 000138 0x808E1788 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000139 0x808E178C 921900B9 */ lbu	$t9, 0XB9($s0)
/* 000140 0x808E1790 2401000E */ li	$at, 0XE
/* 000141 0x808E1794 24080001 */ li	$t0, 0X1
/* 000142 0x808E1798 17210005 */ bne	$t9, $at, .L808E17B0
/* 000143 0x808E179C 3C09808E */ lui	$t1, %hi(func_808E17C4)
/* 000144 0x808E17A0 252917C4 */ addiu	$t1, $t1, %lo(func_808E17C4)
/* 000145 0x808E17A4 A20000B7 */ sb	$zero, 0XB7($s0)
/* 000146 0x808E17A8 A6080162 */ sh	$t0, 0X162($s0)
/* 000147 0x808E17AC AE09015C */ sw	$t1, 0X15C($s0)
.L808E17B0:
/* 000148 0x808E17B0 8FBF001C */ lw	$ra, 0X1C($sp)
.L808E17B4:
/* 000149 0x808E17B4 8FB00018 */ lw	$s0, 0X18($sp)
/* 000150 0x808E17B8 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000151 0x808E17BC 03E00008 */ jr	$ra
/* 000152 0x808E17C0 00000000 */ nop


.section .late_rodata

glabel D_808E1F54
/* 000637 0x808E1F54 */ .word	0x44BB8000
