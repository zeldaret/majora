glabel func_80AED544
/* 001081 0x80AED544 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001082 0x80AED548 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 001083 0x80AED54C 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 001084 0x80AED550 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001085 0x80AED554 00803025 */ move	$a2, $a0
/* 001086 0x80AED558 00A03825 */ move	$a3, $a1
/* 001087 0x80AED55C 906E0F17 */ lbu	$t6, 0XF17($v1)
/* 001088 0x80AED560 00E02025 */ move	$a0, $a3
/* 001089 0x80AED564 31CF0010 */ andi	$t7, $t6, 0X10
/* 001090 0x80AED568 55E0000A */ bnezl	$t7, .L80AED594
/* 001091 0x80AED56C 9462000C */ lhu	$v0, 0XC($v1)
/* 001092 0x80AED570 0C05462C */ jal	func_801518B0
/* 001093 0x80AED574 240513FE */ li	$a1, 0X13FE
/* 001094 0x80AED578 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 001095 0x80AED57C 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 001096 0x80AED580 90780F17 */ lbu	$t8, 0XF17($v1)
/* 001097 0x80AED584 37190010 */ ori	$t9, $t8, 0X10
/* 001098 0x80AED588 1000001D */ b	.L80AED600
/* 001099 0x80AED58C A0790F17 */ sb	$t9, 0XF17($v1)
/* 001100 0x80AED590 9462000C */ lhu	$v0, 0XC($v1)
.L80AED594:
/* 001101 0x80AED594 00E02025 */ move	$a0, $a3
/* 001102 0x80AED598 28416000 */ slti	$at, $v0, 0X6000
/* 001103 0x80AED59C 50200006 */ beqzl	$at, .L80AED5B8
/* 001104 0x80AED5A0 34018000 */ ori	$at, $zero, 0X8000
/* 001105 0x80AED5A4 0C05462C */ jal	func_801518B0
/* 001106 0x80AED5A8 240513FF */ li	$a1, 0X13FF
/* 001107 0x80AED5AC 10000015 */ b	.L80AED604
/* 001108 0x80AED5B0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001109 0x80AED5B4 34018000 */ ori	$at, $zero, 0X8000
.L80AED5B8:
/* 001110 0x80AED5B8 0041082A */ slt	$at, $v0, $at
/* 001111 0x80AED5BC 10200005 */ beqz	$at, .L80AED5D4
/* 001112 0x80AED5C0 00E02025 */ move	$a0, $a3
/* 001113 0x80AED5C4 0C05462C */ jal	func_801518B0
/* 001114 0x80AED5C8 24051400 */ li	$a1, 0X1400
/* 001115 0x80AED5CC 1000000D */ b	.L80AED604
/* 001116 0x80AED5D0 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AED5D4:
/* 001117 0x80AED5D4 3401A000 */ ori	$at, $zero, 0XA000
/* 001118 0x80AED5D8 0041082A */ slt	$at, $v0, $at
/* 001119 0x80AED5DC 10200006 */ beqz	$at, .L80AED5F8
/* 001120 0x80AED5E0 00E02025 */ move	$a0, $a3
/* 001121 0x80AED5E4 00E02025 */ move	$a0, $a3
/* 001122 0x80AED5E8 0C05462C */ jal	func_801518B0
/* 001123 0x80AED5EC 24051401 */ li	$a1, 0X1401
/* 001124 0x80AED5F0 10000004 */ b	.L80AED604
/* 001125 0x80AED5F4 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AED5F8:
/* 001126 0x80AED5F8 0C05462C */ jal	func_801518B0
/* 001127 0x80AED5FC 24051402 */ li	$a1, 0X1402
.L80AED600:
/* 001128 0x80AED600 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AED604:
/* 001129 0x80AED604 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001130 0x80AED608 03E00008 */ jr	$ra
/* 001131 0x80AED60C 00000000 */ nop

