glabel func_80C16760
/* 000184 0x80C16760 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 000185 0x80C16764 AFB00018 */ sw	$s0, 0X18($sp)
/* 000186 0x80C16768 00808025 */ move	$s0, $a0
/* 000187 0x80C1676C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000188 0x80C16770 8602001C */ lh	$v0, 0X1C($s0)
/* 000189 0x80C16774 2401003F */ li	$at, 0X3F
/* 000190 0x80C16778 AE0003EC */ sw	$zero, 0X3EC($s0)
/* 000191 0x80C1677C 30427E00 */ andi	$v0, $v0, 0X7E00
/* 000192 0x80C16780 00021243 */ sra	$v0, $v0, 9
/* 000193 0x80C16784 1041001E */ beq	$v0, $at, .L80C16800
/* 000194 0x80C16788 3C0E0002 */ lui	$t6, 0x0002
/* 000195 0x80C1678C 01C57021 */ addu	$t6, $t6, $a1
/* 000196 0x80C16790 8DCE8864 */ lw	$t6, -0X779C($t6)
/* 000197 0x80C16794 000278C0 */ sll	$t7, $v0, 3
/* 000198 0x80C16798 01CFC021 */ addu	$t8, $t6, $t7
/* 000199 0x80C1679C 13000019 */ beqz	$t8, .L80C16804
/* 000200 0x80C167A0 AE1803E8 */ sw	$t8, 0X3E8($s0)
/* 000201 0x80C167A4 0C040141 */ jal	Lib_PtrSegToVirt
/* 000202 0x80C167A8 8F040004 */ lw	$a0, 0X4($t8)
/* 000203 0x80C167AC 26040024 */ addiu	$a0, $s0, 0X24
/* 000204 0x80C167B0 AFA40028 */ sw	$a0, 0X28($sp)
/* 000205 0x80C167B4 00402825 */ move	$a1, $v0
/* 000206 0x80C167B8 0C03FD53 */ jal	Math_Vec3s_ToVec3f
/* 000207 0x80C167BC AFA20038 */ sw	$v0, 0X38($sp)
/* 000208 0x80C167C0 8E1903EC */ lw	$t9, 0X3EC($s0)
/* 000209 0x80C167C4 8FA60038 */ lw	$a2, 0X38($sp)
/* 000210 0x80C167C8 27A4002C */ addiu	$a0, $sp, 0X2C
/* 000211 0x80C167CC 27280001 */ addiu	$t0, $t9, 0X1
/* 000212 0x80C167D0 AE0803EC */ sw	$t0, 0X3EC($s0)
/* 000213 0x80C167D4 0C03FD53 */ jal	Math_Vec3s_ToVec3f
/* 000214 0x80C167D8 24C50006 */ addiu	$a1, $a2, 0X6
/* 000215 0x80C167DC 8FA40028 */ lw	$a0, 0X28($sp)
/* 000216 0x80C167E0 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000217 0x80C167E4 27A5002C */ addiu	$a1, $sp, 0X2C
/* 000218 0x80C167E8 A6020032 */ sh	$v0, 0X32($s0)
/* 000219 0x80C167EC 8FA40028 */ lw	$a0, 0X28($sp)
/* 000220 0x80C167F0 0C03FEA5 */ jal	Math_Vec3f_Pitch
/* 000221 0x80C167F4 27A5002C */ addiu	$a1, $sp, 0X2C
/* 000222 0x80C167F8 10000002 */ b	.L80C16804
/* 000223 0x80C167FC A6020030 */ sh	$v0, 0X30($s0)
.L80C16800:
/* 000224 0x80C16800 AE0003E8 */ sw	$zero, 0X3E8($s0)
.L80C16804:
/* 000225 0x80C16804 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000226 0x80C16808 8FB00018 */ lw	$s0, 0X18($sp)
/* 000227 0x80C1680C 27BD0040 */ addiu	$sp, $sp, 0X40
/* 000228 0x80C16810 03E00008 */ jr	$ra
/* 000229 0x80C16814 00000000 */ nop

