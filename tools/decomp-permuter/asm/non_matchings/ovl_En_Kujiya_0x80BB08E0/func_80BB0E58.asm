glabel func_80BB0E58
/* 000350 0x80BB0E58 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000351 0x80BB0E5C AFB00018 */ sw	$s0, 0X18($sp)
/* 000352 0x80BB0E60 00A08025 */ move	$s0, $a1
/* 000353 0x80BB0E64 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000354 0x80BB0E68 AFA40020 */ sw	$a0, 0X20($sp)
/* 000355 0x80BB0E6C 0C054926 */ jal	func_80152498
/* 000356 0x80BB0E70 26044908 */ addiu	$a0, $s0, 0X4908
/* 000357 0x80BB0E74 2C410012 */ sltiu	$at, $v0, 0X12
/* 000358 0x80BB0E78 10200025 */ beqz	$at, .L80BB0F10
/* 000359 0x80BB0E7C 00027080 */ sll	$t6, $v0, 2
/* 000360 0x80BB0E80 3C0180BB */ lui	$at, %hi(jtbl_D_80BB154C)
/* 000361 0x80BB0E84 002E0821 */ addu	$at, $at, $t6
/* 000362 0x80BB0E88 8C2E154C */ lw	$t6, %lo(jtbl_D_80BB154C)($at)
/* 000363 0x80BB0E8C 01C00008 */ jr	$t6
/* 000364 0x80BB0E90 00000000 */ nop
glabel L80BB0E94
.L80BB0E94:
/* 000365 0x80BB0E94 8FA40020 */ lw	$a0, 0X20($sp)
/* 000366 0x80BB0E98 0C2EC2CA */ jal	func_80BB0B28
/* 000367 0x80BB0E9C 02002825 */ move	$a1, $s0
/* 000368 0x80BB0EA0 1000001C */ b	.L80BB0F14
/* 000369 0x80BB0EA4 8FBF001C */ lw	$ra, 0X1C($sp)
glabel L80BB0EA8
.L80BB0EA8:
/* 000370 0x80BB0EA8 8FA40020 */ lw	$a0, 0X20($sp)
/* 000371 0x80BB0EAC 0C2EC2FE */ jal	func_80BB0BF8
/* 000372 0x80BB0EB0 02002825 */ move	$a1, $s0
/* 000373 0x80BB0EB4 10000017 */ b	.L80BB0F14
/* 000374 0x80BB0EB8 8FBF001C */ lw	$ra, 0X1C($sp)
glabel L80BB0EBC
.L80BB0EBC:
/* 000375 0x80BB0EBC 0C051D89 */ jal	func_80147624
/* 000376 0x80BB0EC0 02002025 */ move	$a0, $s0
/* 000377 0x80BB0EC4 50400013 */ beqzl	$v0, .L80BB0F14
/* 000378 0x80BB0EC8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000379 0x80BB0ECC 0C2EC26A */ jal	func_80BB09A8
/* 000380 0x80BB0ED0 8FA40020 */ lw	$a0, 0X20($sp)
/* 000381 0x80BB0ED4 1000000F */ b	.L80BB0F14
/* 000382 0x80BB0ED8 8FBF001C */ lw	$ra, 0X1C($sp)
glabel L80BB0EDC
.L80BB0EDC:
/* 000383 0x80BB0EDC 0C051D89 */ jal	func_80147624
/* 000384 0x80BB0EE0 02002025 */ move	$a0, $s0
/* 000385 0x80BB0EE4 5040000B */ beqzl	$v0, .L80BB0F14
/* 000386 0x80BB0EE8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000387 0x80BB0EEC 0C04BC9E */ jal	func_8012F278
/* 000388 0x80BB0EF0 02002025 */ move	$a0, $s0
/* 000389 0x80BB0EF4 02002025 */ move	$a0, $s0
/* 000390 0x80BB0EF8 24052B60 */ li	$a1, 0X2B60
/* 000391 0x80BB0EFC 0C05462C */ jal	func_801518B0
/* 000392 0x80BB0F00 8FA60020 */ lw	$a2, 0X20($sp)
/* 000393 0x80BB0F04 8FB80020 */ lw	$t8, 0X20($sp)
/* 000394 0x80BB0F08 240F2B60 */ li	$t7, 0X2B60
/* 000395 0x80BB0F0C A70F014A */ sh	$t7, 0X14A($t8)
glabel L80BB0F10
.L80BB0F10:
/* 000396 0x80BB0F10 8FBF001C */ lw	$ra, 0X1C($sp)
.L80BB0F14:
/* 000397 0x80BB0F14 8FB00018 */ lw	$s0, 0X18($sp)
/* 000398 0x80BB0F18 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000399 0x80BB0F1C 03E00008 */ jr	$ra
/* 000400 0x80BB0F20 00000000 */ nop


.section .late_rodata

glabel jtbl_D_80BB154C
/* 000795 0x80BB154C */ .word	L80BB0F10
/* 000796 0x80BB1550 */ .word	L80BB0F10
/* 000797 0x80BB1554 */ .word	L80BB0F10
/* 000798 0x80BB1558 */ .word	L80BB0F10
/* 000799 0x80BB155C */ .word	L80BB0E94
/* 000800 0x80BB1560 */ .word	L80BB0EA8
/* 000801 0x80BB1564 */ .word	L80BB0EBC
/* 000802 0x80BB1568 */ .word	L80BB0F10
/* 000803 0x80BB156C */ .word	L80BB0F10
/* 000804 0x80BB1570 */ .word	L80BB0F10
/* 000805 0x80BB1574 */ .word	L80BB0F10
/* 000806 0x80BB1578 */ .word	L80BB0F10
/* 000807 0x80BB157C */ .word	L80BB0F10
/* 000808 0x80BB1580 */ .word	L80BB0F10
/* 000809 0x80BB1584 */ .word	L80BB0F10
/* 000810 0x80BB1588 */ .word	L80BB0F10
/* 000811 0x80BB158C */ .word	L80BB0F10
/* 000812 0x80BB1590 */ .word	L80BB0EDC
/* 000813 0x80BB1594 */ .word	0x00000000
/* 000814 0x80BB1598 */ .word	0x00000000
/* 000815 0x80BB159C */ .word	0x00000000
