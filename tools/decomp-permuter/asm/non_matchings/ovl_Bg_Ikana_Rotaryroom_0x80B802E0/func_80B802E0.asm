glabel func_80B802E0
/* 000000 0x80B802E0 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000001 0x80B802E4 AFB00018 */ sw	$s0, 0X18($sp)
/* 000002 0x80B802E8 00808025 */ move	$s0, $a0
/* 000003 0x80B802EC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000004 0x80B802F0 C60C0024 */ lwc1	$f12, 0X24($s0)
/* 000005 0x80B802F4 C60E0028 */ lwc1	$f14, 0X28($s0)
/* 000006 0x80B802F8 8E06002C */ lw	$a2, 0X2C($s0)
/* 000007 0x80B802FC 0C060594 */ jal	SysMatrix_SetStateRotationAndTranslation
/* 000008 0x80B80300 260700BC */ addiu	$a3, $s0, 0XBC
/* 000009 0x80B80304 C60C0058 */ lwc1	$f12, 0X58($s0)
/* 000010 0x80B80308 C60E005C */ lwc1	$f14, 0X5C($s0)
/* 000011 0x80B8030C 8E060060 */ lw	$a2, 0X60($s0)
/* 000012 0x80B80310 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000013 0x80B80314 24070001 */ li	$a3, 0X1
/* 000014 0x80B80318 2605015C */ addiu	$a1, $s0, 0X15C
/* 000015 0x80B8031C AFA50020 */ sw	$a1, 0X20($sp)
/* 000016 0x80B80320 0C039FF7 */ jal	func_800E7FDC
/* 000017 0x80B80324 00002025 */ move	$a0, $zero
/* 000018 0x80B80328 860E001C */ lh	$t6, 0X1C($s0)
/* 000019 0x80B8032C 8FA50020 */ lw	$a1, 0X20($sp)
/* 000020 0x80B80330 31CF0001 */ andi	$t7, $t6, 0X1
/* 000021 0x80B80334 55E00004 */ bnezl	$t7, .L80B80348
/* 000022 0x80B80338 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000023 0x80B8033C 0C039FF7 */ jal	func_800E7FDC
/* 000024 0x80B80340 24040001 */ li	$a0, 0X1
/* 000025 0x80B80344 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B80348:
/* 000026 0x80B80348 8FB00018 */ lw	$s0, 0X18($sp)
/* 000027 0x80B8034C 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000028 0x80B80350 03E00008 */ jr	$ra
/* 000029 0x80B80354 00000000 */ nop

