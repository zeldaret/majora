glabel EnDeath_Destroy
/* 000200 0x808C52A0 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000201 0x808C52A4 AFB10018 */ sw	$s1, 0X18($sp)
/* 000202 0x808C52A8 AFB00014 */ sw	$s0, 0X14($sp)
/* 000203 0x808C52AC 00808025 */ move	$s0, $a0
/* 000204 0x808C52B0 00A08825 */ move	$s1, $a1
/* 000205 0x808C52B4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000206 0x808C52B8 02202025 */ move	$a0, $s1
/* 000207 0x808C52BC 0C038869 */ jal	Collision_FiniSphere
/* 000208 0x808C52C0 26050808 */ addiu	$a1, $s0, 0X808
/* 000209 0x808C52C4 02202025 */ move	$a0, $s1
/* 000210 0x808C52C8 0C03847B */ jal	Collision_FiniCylinder
/* 000211 0x808C52CC 2605073C */ addiu	$a1, $s0, 0X73C
/* 000212 0x808C52D0 02202025 */ move	$a0, $s1
/* 000213 0x808C52D4 0C03879A */ jal	Collision_FiniQuad
/* 000214 0x808C52D8 26050788 */ addiu	$a1, $s0, 0X788
/* 000215 0x808C52DC 02202025 */ move	$a0, $s1
/* 000216 0x808C52E0 0C0385ED */ jal	Collision_FiniTriGroup
/* 000217 0x808C52E4 26050860 */ addiu	$a1, $s0, 0X860
/* 000218 0x808C52E8 0C069CB3 */ jal	func_801A72CC
/* 000219 0x808C52EC 26040338 */ addiu	$a0, $s0, 0X338
/* 000220 0x808C52F0 02202025 */ move	$a0, $s1
/* 000221 0x808C52F4 0C02BF73 */ jal	Effect_Destroy
/* 000222 0x808C52F8 8E050300 */ lw	$a1, 0X300($s0)
/* 000223 0x808C52FC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000224 0x808C5300 8FB00014 */ lw	$s0, 0X14($sp)
/* 000225 0x808C5304 8FB10018 */ lw	$s1, 0X18($sp)
/* 000226 0x808C5308 03E00008 */ jr	$ra
/* 000227 0x808C530C 27BD0020 */ addiu	$sp, $sp, 0X20

