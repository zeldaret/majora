glabel func_80A3E524
/* 000101 0x80A3E524 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000102 0x80A3E528 AFB00018 */ sw	$s0, 0X18($sp)
/* 000103 0x80A3E52C 00808025 */ move	$s0, $a0
/* 000104 0x80A3E530 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000105 0x80A3E534 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000106 0x80A3E538 860E001C */ lh	$t6, 0X1C($s0)
/* 000107 0x80A3E53C 8E060144 */ lw	$a2, 0X144($s0)
/* 000108 0x80A3E540 3C0780A4 */ lui	$a3, %hi(D_80A3E6B4)
/* 000109 0x80A3E544 000E7880 */ sll	$t7, $t6, 2
/* 000110 0x80A3E548 01EE7823 */ subu	$t7, $t7, $t6
/* 000111 0x80A3E54C 000F7880 */ sll	$t7, $t7, 2
/* 000112 0x80A3E550 00EF3821 */ addu	$a3, $a3, $t7
/* 000113 0x80A3E554 10C00006 */ beqz	$a2, .L80A3E570
/* 000114 0x80A3E558 8CE7E6B4 */ lw	$a3, %lo(D_80A3E6B4)($a3)
/* 000115 0x80A3E55C 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000116 0x80A3E560 00C02825 */ move	$a1, $a2
/* 000117 0x80A3E564 0C04C5D6 */ jal	SceneProc_DrawAllSceneAnimatedTextures
/* 000118 0x80A3E568 AFA7002C */ sw	$a3, 0X2C($sp)
/* 000119 0x80A3E56C 8FA7002C */ lw	$a3, 0X2C($sp)
.L80A3E570:
/* 000120 0x80A3E570 8E180004 */ lw	$t8, 0X4($s0)
/* 000121 0x80A3E574 24010080 */ li	$at, 0X80
/* 000122 0x80A3E578 8FA8003C */ lw	$t0, 0X3C($sp)
/* 000123 0x80A3E57C 33190080 */ andi	$t9, $t8, 0X80
/* 000124 0x80A3E580 1721002E */ bne	$t9, $at, .L80A3E63C
/* 000125 0x80A3E584 00000000 */ nop
/* 000126 0x80A3E588 8D040000 */ lw	$a0, 0X0($t0)
/* 000127 0x80A3E58C AFA7002C */ sw	$a3, 0X2C($sp)
/* 000128 0x80A3E590 0C04B0B7 */ jal	func_8012C2DC
/* 000129 0x80A3E594 AFA40028 */ sw	$a0, 0X28($sp)
/* 000130 0x80A3E598 8FA50028 */ lw	$a1, 0X28($sp)
/* 000131 0x80A3E59C 8FA7002C */ lw	$a3, 0X2C($sp)
/* 000132 0x80A3E5A0 8CA202C0 */ lw	$v0, 0X2C0($a1)
/* 000133 0x80A3E5A4 3C0ADA38 */ lui	$t2, 0xDA38
/* 000134 0x80A3E5A8 354A0003 */ ori	$t2, $t2, 0X3
/* 000135 0x80A3E5AC 24490008 */ addiu	$t1, $v0, 0X8
/* 000136 0x80A3E5B0 ACA902C0 */ sw	$t1, 0X2C0($a1)
/* 000137 0x80A3E5B4 AC4A0000 */ sw	$t2, 0X0($v0)
/* 000138 0x80A3E5B8 8FAB003C */ lw	$t3, 0X3C($sp)
/* 000139 0x80A3E5BC 8D640000 */ lw	$a0, 0X0($t3)
/* 000140 0x80A3E5C0 AFA7002C */ sw	$a3, 0X2C($sp)
/* 000141 0x80A3E5C4 AFA50028 */ sw	$a1, 0X28($sp)
/* 000142 0x80A3E5C8 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000143 0x80A3E5CC AFA20020 */ sw	$v0, 0X20($sp)
/* 000144 0x80A3E5D0 8FA30020 */ lw	$v1, 0X20($sp)
/* 000145 0x80A3E5D4 8FA50028 */ lw	$a1, 0X28($sp)
/* 000146 0x80A3E5D8 8FA7002C */ lw	$a3, 0X2C($sp)
/* 000147 0x80A3E5DC AC620004 */ sw	$v0, 0X4($v1)
/* 000148 0x80A3E5E0 50E00008 */ beqzl	$a3, .L80A3E604
/* 000149 0x80A3E5E4 8CA202C0 */ lw	$v0, 0X2C0($a1)
/* 000150 0x80A3E5E8 8CA202C0 */ lw	$v0, 0X2C0($a1)
/* 000151 0x80A3E5EC 3C0DDE00 */ lui	$t5, 0xDE00
/* 000152 0x80A3E5F0 244C0008 */ addiu	$t4, $v0, 0X8
/* 000153 0x80A3E5F4 ACAC02C0 */ sw	$t4, 0X2C0($a1)
/* 000154 0x80A3E5F8 AC470004 */ sw	$a3, 0X4($v0)
/* 000155 0x80A3E5FC AC4D0000 */ sw	$t5, 0X0($v0)
/* 000156 0x80A3E600 8CA202C0 */ lw	$v0, 0X2C0($a1)
.L80A3E604:
/* 000157 0x80A3E604 3C0FDE00 */ lui	$t7, 0xDE00
/* 000158 0x80A3E608 3C0880A4 */ lui	$t0, %hi(D_80A3E6B0)
/* 000159 0x80A3E60C 244E0008 */ addiu	$t6, $v0, 0X8
/* 000160 0x80A3E610 ACAE02C0 */ sw	$t6, 0X2C0($a1)
/* 000161 0x80A3E614 AC4F0000 */ sw	$t7, 0X0($v0)
/* 000162 0x80A3E618 8618001C */ lh	$t8, 0X1C($s0)
/* 000163 0x80A3E61C 0018C880 */ sll	$t9, $t8, 2
/* 000164 0x80A3E620 0338C823 */ subu	$t9, $t9, $t8
/* 000165 0x80A3E624 0019C880 */ sll	$t9, $t9, 2
/* 000166 0x80A3E628 01194021 */ addu	$t0, $t0, $t9
/* 000167 0x80A3E62C 8D08E6B0 */ lw	$t0, %lo(D_80A3E6B0)($t0)
/* 000168 0x80A3E630 AC480004 */ sw	$t0, 0X4($v0)
/* 000169 0x80A3E634 1000000F */ b	.L80A3E674
/* 000170 0x80A3E638 8FBF001C */ lw	$ra, 0X1C($sp)
.L80A3E63C:
/* 000171 0x80A3E63C 10E00003 */ beqz	$a3, .L80A3E64C
/* 000172 0x80A3E640 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000173 0x80A3E644 0C02F80F */ jal	func_800BE03C
/* 000174 0x80A3E648 00E02825 */ move	$a1, $a3
.L80A3E64C:
/* 000175 0x80A3E64C 8609001C */ lh	$t1, 0X1C($s0)
/* 000176 0x80A3E650 3C0580A4 */ lui	$a1, %hi(D_80A3E6B0)
/* 000177 0x80A3E654 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000178 0x80A3E658 00095080 */ sll	$t2, $t1, 2
/* 000179 0x80A3E65C 01495023 */ subu	$t2, $t2, $t1
/* 000180 0x80A3E660 000A5080 */ sll	$t2, $t2, 2
/* 000181 0x80A3E664 00AA2821 */ addu	$a1, $a1, $t2
/* 000182 0x80A3E668 0C02F7F0 */ jal	func_800BDFC0
/* 000183 0x80A3E66C 8CA5E6B0 */ lw	$a1, %lo(D_80A3E6B0)($a1)
/* 000184 0x80A3E670 8FBF001C */ lw	$ra, 0X1C($sp)
.L80A3E674:
/* 000185 0x80A3E674 8FB00018 */ lw	$s0, 0X18($sp)
/* 000186 0x80A3E678 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000187 0x80A3E67C 03E00008 */ jr	$ra
/* 000188 0x80A3E680 00000000 */ nop
/* 000189 0x80A3E684 00000000 */ nop
/* 000190 0x80A3E688 00000000 */ nop
/* 000191 0x80A3E68C 00000000 */ nop
