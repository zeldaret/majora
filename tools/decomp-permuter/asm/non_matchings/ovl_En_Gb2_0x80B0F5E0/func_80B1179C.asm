glabel func_80B1179C
/* 002159 0x80B1179C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002160 0x80B117A0 AFA70024 */ sw	$a3, 0X24($sp)
/* 002161 0x80B117A4 00A03825 */ move	$a3, $a1
/* 002162 0x80B117A8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 002163 0x80B117AC AFA40018 */ sw	$a0, 0X18($sp)
/* 002164 0x80B117B0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 002165 0x80B117B4 AFA60020 */ sw	$a2, 0X20($sp)
/* 002166 0x80B117B8 24010007 */ li	$at, 0X7
/* 002167 0x80B117BC 14E10006 */ bne	$a3, $at, .L80B117D8
/* 002168 0x80B117C0 8FAE002C */ lw	$t6, 0X2C($sp)
/* 002169 0x80B117C4 85C40272 */ lh	$a0, 0X272($t6)
/* 002170 0x80B117C8 AFA7001C */ sw	$a3, 0X1C($sp)
/* 002171 0x80B117CC 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 002172 0x80B117D0 24050001 */ li	$a1, 0X1
/* 002173 0x80B117D4 8FA7001C */ lw	$a3, 0X1C($sp)
.L80B117D8:
/* 002174 0x80B117D8 24010001 */ li	$at, 0X1
/* 002175 0x80B117DC 14E10003 */ bne	$a3, $at, .L80B117EC
/* 002176 0x80B117E0 00001025 */ move	$v0, $zero
/* 002177 0x80B117E4 8FAF0020 */ lw	$t7, 0X20($sp)
/* 002178 0x80B117E8 ADE00000 */ sw	$zero, 0X0($t7)
.L80B117EC:
/* 002179 0x80B117EC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002180 0x80B117F0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002181 0x80B117F4 03E00008 */ jr	$ra
/* 002182 0x80B117F8 00000000 */ nop

