glabel func_80A68808
/* 000026 0x80A68808 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000027 0x80A6880C AFB00018 */ sw	$s0, 0X18($sp)
/* 000028 0x80A68810 00808025 */ move	$s0, $a0
/* 000029 0x80A68814 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000030 0x80A68818 C60C0024 */ lwc1	$f12, 0X24($s0)
/* 000031 0x80A6881C C60E0028 */ lwc1	$f14, 0X28($s0)
/* 000032 0x80A68820 8E06002C */ lw	$a2, 0X2C($s0)
/* 000033 0x80A68824 0C060594 */ jal	SysMatrix_SetStateRotationAndTranslation
/* 000034 0x80A68828 260700BC */ addiu	$a3, $s0, 0XBC
/* 000035 0x80A6882C C60C0058 */ lwc1	$f12, 0X58($s0)
/* 000036 0x80A68830 C60E005C */ lwc1	$f14, 0X5C($s0)
/* 000037 0x80A68834 8E060060 */ lw	$a2, 0X60($s0)
/* 000038 0x80A68838 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000039 0x80A6883C 24070001 */ li	$a3, 0X1
/* 000040 0x80A68840 00002025 */ move	$a0, $zero
/* 000041 0x80A68844 0C039FF7 */ jal	func_800E7FDC
/* 000042 0x80A68848 260502A8 */ addiu	$a1, $s0, 0X2A8
/* 000043 0x80A6884C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000044 0x80A68850 8FB00018 */ lw	$s0, 0X18($sp)
/* 000045 0x80A68854 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000046 0x80A68858 03E00008 */ jr	$ra
/* 000047 0x80A6885C 00000000 */ nop

