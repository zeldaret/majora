glabel EnSuttari_Draw
/* 003994 0x80BAE538 27BDFF90 */ addiu	$sp, $sp, -0X70
/* 003995 0x80BAE53C AFB20030 */ sw	$s2, 0X30($sp)
/* 003996 0x80BAE540 AFB1002C */ sw	$s1, 0X2C($sp)
/* 003997 0x80BAE544 00808825 */ move	$s1, $a0
/* 003998 0x80BAE548 00A09025 */ move	$s2, $a1
/* 003999 0x80BAE54C AFBF0034 */ sw	$ra, 0X34($sp)
/* 004000 0x80BAE550 AFB00028 */ sw	$s0, 0X28($sp)
/* 004001 0x80BAE554 962E01E4 */ lhu	$t6, 0X1E4($s1)
/* 004002 0x80BAE558 31CF0080 */ andi	$t7, $t6, 0X80
/* 004003 0x80BAE55C 51E0004E */ beqzl	$t7, .L80BAE698
/* 004004 0x80BAE560 8FBF0034 */ lw	$ra, 0X34($sp)
/* 004005 0x80BAE564 8E440000 */ lw	$a0, 0X0($s2)
/* 004006 0x80BAE568 0C04B0A3 */ jal	func_8012C28C
/* 004007 0x80BAE56C 00808025 */ move	$s0, $a0
/* 004008 0x80BAE570 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 004009 0x80BAE574 3C19DB06 */ lui	$t9, 0xDB06
/* 004010 0x80BAE578 37390020 */ ori	$t9, $t9, 0X20
/* 004011 0x80BAE57C 24580008 */ addiu	$t8, $v0, 0X8
/* 004012 0x80BAE580 AE1802B0 */ sw	$t8, 0X2B0($s0)
/* 004013 0x80BAE584 AC590000 */ sw	$t9, 0X0($v0)
/* 004014 0x80BAE588 8E440000 */ lw	$a0, 0X0($s2)
/* 004015 0x80BAE58C AFA00010 */ sw	$zero, 0X10($sp)
/* 004016 0x80BAE590 240500FF */ li	$a1, 0XFF
/* 004017 0x80BAE594 240600FF */ li	$a2, 0XFF
/* 004018 0x80BAE598 240700FF */ li	$a3, 0XFF
/* 004019 0x80BAE59C 0C04B394 */ jal	Gfx_EnvColor
/* 004020 0x80BAE5A0 AFA20044 */ sw	$v0, 0X44($sp)
/* 004021 0x80BAE5A4 8FA30044 */ lw	$v1, 0X44($sp)
/* 004022 0x80BAE5A8 3C09DB06 */ lui	$t1, 0xDB06
/* 004023 0x80BAE5AC 35290024 */ ori	$t1, $t1, 0X24
/* 004024 0x80BAE5B0 AC620004 */ sw	$v0, 0X4($v1)
/* 004025 0x80BAE5B4 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 004026 0x80BAE5B8 24050037 */ li	$a1, 0X37
/* 004027 0x80BAE5BC 24060037 */ li	$a2, 0X37
/* 004028 0x80BAE5C0 24480008 */ addiu	$t0, $v0, 0X8
/* 004029 0x80BAE5C4 AE0802B0 */ sw	$t0, 0X2B0($s0)
/* 004030 0x80BAE5C8 AC490000 */ sw	$t1, 0X0($v0)
/* 004031 0x80BAE5CC 8E440000 */ lw	$a0, 0X0($s2)
/* 004032 0x80BAE5D0 AFA00010 */ sw	$zero, 0X10($sp)
/* 004033 0x80BAE5D4 240700FF */ li	$a3, 0XFF
/* 004034 0x80BAE5D8 0C04B394 */ jal	Gfx_EnvColor
/* 004035 0x80BAE5DC AFA20040 */ sw	$v0, 0X40($sp)
/* 004036 0x80BAE5E0 8FA30040 */ lw	$v1, 0X40($sp)
/* 004037 0x80BAE5E4 02402025 */ move	$a0, $s2
/* 004038 0x80BAE5E8 3C0C80BB */ lui	$t4, %hi(func_80BAE250)
/* 004039 0x80BAE5EC AC620004 */ sw	$v0, 0X4($v1)
/* 004040 0x80BAE5F0 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 004041 0x80BAE5F4 3C0BE700 */ lui	$t3, 0xE700
/* 004042 0x80BAE5F8 258CE250 */ addiu	$t4, $t4, %lo(func_80BAE250)
/* 004043 0x80BAE5FC 244A0008 */ addiu	$t2, $v0, 0X8
/* 004044 0x80BAE600 AE0A02B0 */ sw	$t2, 0X2B0($s0)
/* 004045 0x80BAE604 AC400004 */ sw	$zero, 0X4($v0)
/* 004046 0x80BAE608 AC4B0000 */ sw	$t3, 0X0($v0)
/* 004047 0x80BAE60C 8E250154 */ lw	$a1, 0X154($s1)
/* 004048 0x80BAE610 8E260170 */ lw	$a2, 0X170($s1)
/* 004049 0x80BAE614 92270152 */ lbu	$a3, 0X152($s1)
/* 004050 0x80BAE618 3C0D80BB */ lui	$t5, %hi(func_80BAE3C4)
/* 004051 0x80BAE61C 3C0E80BB */ lui	$t6, %hi(func_80BAE524)
/* 004052 0x80BAE620 25CEE524 */ addiu	$t6, $t6, %lo(func_80BAE524)
/* 004053 0x80BAE624 25ADE3C4 */ addiu	$t5, $t5, %lo(func_80BAE3C4)
/* 004054 0x80BAE628 AFAD0014 */ sw	$t5, 0X14($sp)
/* 004055 0x80BAE62C AFAE0018 */ sw	$t6, 0X18($sp)
/* 004056 0x80BAE630 AFB1001C */ sw	$s1, 0X1C($sp)
/* 004057 0x80BAE634 0C04D0F0 */ jal	func_801343C0
/* 004058 0x80BAE638 AFAC0010 */ sw	$t4, 0X10($sp)
/* 004059 0x80BAE63C 962F01E4 */ lhu	$t7, 0X1E4($s1)
/* 004060 0x80BAE640 31F80080 */ andi	$t8, $t7, 0X80
/* 004061 0x80BAE644 53000014 */ beqzl	$t8, .L80BAE698
/* 004062 0x80BAE648 8FBF0034 */ lw	$ra, 0X34($sp)
/* 004063 0x80BAE64C 0C04B0B7 */ jal	func_8012C2DC
/* 004064 0x80BAE650 8E440000 */ lw	$a0, 0X0($s2)
/* 004065 0x80BAE654 8E280024 */ lw	$t0, 0X24($s1)
/* 004066 0x80BAE658 3C0180BB */ lui	$at, %hi(D_80BAEA94)
/* 004067 0x80BAE65C C420EA94 */ lwc1	$f0, %lo(D_80BAEA94)($at)
/* 004068 0x80BAE660 27A4005C */ addiu	$a0, $sp, 0X5C
/* 004069 0x80BAE664 AC880000 */ sw	$t0, 0X0($a0)
/* 004070 0x80BAE668 8E390028 */ lw	$t9, 0X28($s1)
/* 004071 0x80BAE66C 27A50050 */ addiu	$a1, $sp, 0X50
/* 004072 0x80BAE670 240600FF */ li	$a2, 0XFF
/* 004073 0x80BAE674 AC990004 */ sw	$t9, 0X4($a0)
/* 004074 0x80BAE678 8E28002C */ lw	$t0, 0X2C($s1)
/* 004075 0x80BAE67C 02403825 */ move	$a3, $s2
/* 004076 0x80BAE680 AC880008 */ sw	$t0, 0X8($a0)
/* 004077 0x80BAE684 E7A00050 */ swc1	$f0, 0X50($sp)
/* 004078 0x80BAE688 E7A00054 */ swc1	$f0, 0X54($sp)
/* 004079 0x80BAE68C 0C02F188 */ jal	func_800BC620
/* 004080 0x80BAE690 E7A00058 */ swc1	$f0, 0X58($sp)
/* 004081 0x80BAE694 8FBF0034 */ lw	$ra, 0X34($sp)
.L80BAE698:
/* 004082 0x80BAE698 8FB00028 */ lw	$s0, 0X28($sp)
/* 004083 0x80BAE69C 8FB1002C */ lw	$s1, 0X2C($sp)
/* 004084 0x80BAE6A0 8FB20030 */ lw	$s2, 0X30($sp)
/* 004085 0x80BAE6A4 03E00008 */ jr	$ra
/* 004086 0x80BAE6A8 27BD0070 */ addiu	$sp, $sp, 0X70
/* 004087 0x80BAE6AC 00000000 */ nop

.section .late_rodata

glabel D_80BAEA94
/* 004337 0x80BAEA94 */ .word	0x3E4CCCCD
/* 004338 0x80BAEA98 */ .word	0x00000000
/* 004339 0x80BAEA9C */ .word	0x00000000
