glabel BgTobira01_Init
/* 000151 0x80B1268C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000152 0x80B12690 AFB00018 */ sw	$s0, 0X18($sp)
/* 000153 0x80B12694 00808025 */ move	$s0, $a0
/* 000154 0x80B12698 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000155 0x80B1269C AFA50024 */ sw	$a1, 0X24($sp)
/* 000156 0x80B126A0 02002025 */ move	$a0, $s0
/* 000157 0x80B126A4 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000158 0x80B126A8 24050001 */ li	$a1, 0X1
/* 000159 0x80B126AC 3C060600 */ lui	$a2, 0x0600
/* 000160 0x80B126B0 24C611C0 */ addiu	$a2, $a2, 0X11C0
/* 000161 0x80B126B4 8FA40024 */ lw	$a0, 0X24($sp)
/* 000162 0x80B126B8 0C032B8D */ jal	BgCheck3_LoadMesh
/* 000163 0x80B126BC 02002825 */ move	$a1, $s0
/* 000164 0x80B126C0 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000165 0x80B126C4 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000166 0x80B126C8 904E0F50 */ lbu	$t6, 0XF50($v0)
/* 000167 0x80B126CC 02002025 */ move	$a0, $s0
/* 000168 0x80B126D0 3C053F80 */ lui	$a1, 0x3F80
/* 000169 0x80B126D4 31CF00BF */ andi	$t7, $t6, 0XBF
/* 000170 0x80B126D8 0C02D9F8 */ jal	Actor_SetScale
/* 000171 0x80B126DC A04F0F50 */ sb	$t7, 0XF50($v0)
/* 000172 0x80B126E0 3C18801F */ lui	$t8, %hi(gSaveContext + 0x10)
/* 000173 0x80B126E4 8F18F680 */ lw	$t8, %lo(gSaveContext + 0x10)($t8)
/* 000174 0x80B126E8 3C1980B1 */ lui	$t9, %hi(func_80B12430)
/* 000175 0x80B126EC 27392430 */ addiu	$t9, $t9, %lo(func_80B12430)
/* 000176 0x80B126F0 A6000160 */ sh	$zero, 0X160($s0)
/* 000177 0x80B126F4 AE19015C */ sw	$t9, 0X15C($s0)
/* 000178 0x80B126F8 A6180162 */ sh	$t8, 0X162($s0)
/* 000179 0x80B126FC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000180 0x80B12700 8FB00018 */ lw	$s0, 0X18($sp)
/* 000181 0x80B12704 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000182 0x80B12708 03E00008 */ jr	$ra
/* 000183 0x80B1270C 00000000 */ nop

