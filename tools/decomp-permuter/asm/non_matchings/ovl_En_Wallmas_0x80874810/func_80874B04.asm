glabel func_80874B04
/* 000189 0x80874B04 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000190 0x80874B08 AFB00028 */ sw	$s0, 0X28($sp)
/* 000191 0x80874B0C 00808025 */ move	$s0, $a0
/* 000192 0x80874B10 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000193 0x80874B14 AFA50034 */ sw	$a1, 0X34($sp)
/* 000194 0x80874B18 920E018C */ lbu	$t6, 0X18C($s0)
/* 000195 0x80874B1C 2401000A */ li	$at, 0XA
/* 000196 0x80874B20 02002825 */ move	$a1, $s0
/* 000197 0x80874B24 15C10013 */ bne	$t6, $at, .L80874B74
/* 000198 0x80874B28 260602D4 */ addiu	$a2, $s0, 0X2D4
/* 000199 0x80874B2C 44802000 */ mtc1	$zero, $f4
/* 000200 0x80874B30 A200018C */ sb	$zero, 0X18C($s0)
/* 000201 0x80874B34 A200036C */ sb	$zero, 0X36C($s0)
/* 000202 0x80874B38 3C018087 */ lui	$at, %hi(D_808763FC)
/* 000203 0x80874B3C E60402C8 */ swc1	$f4, 0X2C8($s0)
/* 000204 0x80874B40 C42663FC */ lwc1	$f6, %lo(D_808763FC)($at)
/* 000205 0x80874B44 3C018087 */ lui	$at, %hi(D_80876400)
/* 000206 0x80874B48 C4286400 */ lwc1	$f8, %lo(D_80876400)($at)
/* 000207 0x80874B4C 240F0002 */ li	$t7, 0X2
/* 000208 0x80874B50 AFAF0010 */ sw	$t7, 0X10($sp)
/* 000209 0x80874B54 8FA40034 */ lw	$a0, 0X34($sp)
/* 000210 0x80874B58 2407000B */ li	$a3, 0XB
/* 000211 0x80874B5C E7A60014 */ swc1	$f6, 0X14($sp)
/* 000212 0x80874B60 0C02FDF3 */ jal	func_800BF7CC
/* 000213 0x80874B64 E7A80018 */ swc1	$f8, 0X18($sp)
/* 000214 0x80874B68 8E180004 */ lw	$t8, 0X4($s0)
/* 000215 0x80874B6C 37190400 */ ori	$t9, $t8, 0X400
/* 000216 0x80874B70 AE190004 */ sw	$t9, 0X4($s0)
.L80874B74:
/* 000217 0x80874B74 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000218 0x80874B78 8FB00028 */ lw	$s0, 0X28($sp)
/* 000219 0x80874B7C 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000220 0x80874B80 03E00008 */ jr	$ra
/* 000221 0x80874B84 00000000 */ nop


.section .late_rodata

glabel D_808763FC
/* 001787 0x808763FC */ .word	0x3E99999A
glabel D_80876400
/* 001788 0x80876400 */ .word	0x3E4CCCCD
