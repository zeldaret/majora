glabel func_8096B104
/* 000025 0x8096B104 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000026 0x8096B108 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000027 0x8096B10C AFA40018 */ sw	$a0, 0X18($sp)
/* 000028 0x8096B110 8FAF0018 */ lw	$t7, 0X18($sp)
/* 000029 0x8096B114 240E0050 */ li	$t6, 0X50
/* 000030 0x8096B118 3C010001 */ lui	$at, 0x0001
/* 000031 0x8096B11C 00250821 */ addu	$at, $at, $a1
/* 000032 0x8096B120 2418003C */ li	$t8, 0X3C
/* 000033 0x8096B124 A5EE0144 */ sh	$t6, 0X144($t7)
/* 000034 0x8096B128 A03870FA */ sb	$t8, 0X70FA($at)
/* 000035 0x8096B12C 3C018097 */ lui	$at, %hi(D_8096B2B0)
/* 000036 0x8096B130 C424B2B0 */ lwc1	$f4, %lo(D_8096B2B0)($at)
/* 000037 0x8096B134 3C01801F */ lui	$at, %hi(D_801F4E70)
/* 000038 0x8096B138 24190002 */ li	$t9, 0X2
/* 000039 0x8096B13C E4244E70 */ swc1	$f4, %lo(D_801F4E70)($at)
/* 000040 0x8096B140 3C010001 */ lui	$at, 0x0001
/* 000041 0x8096B144 00250821 */ addu	$at, $at, $a1
/* 000042 0x8096B148 A03970E7 */ sb	$t9, 0X70E7($at)
/* 000043 0x8096B14C 0C03F5E3 */ jal	func_800FD78C
/* 000044 0x8096B150 00A02025 */ move	$a0, $a1
/* 000045 0x8096B154 3C058097 */ lui	$a1, %hi(func_8096B174)
/* 000046 0x8096B158 24A5B174 */ addiu	$a1, $a1, %lo(func_8096B174)
/* 000047 0x8096B15C 0C25AC28 */ jal	EnOkarinaEffect_SetupAction
/* 000048 0x8096B160 8FA40018 */ lw	$a0, 0X18($sp)
/* 000049 0x8096B164 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000050 0x8096B168 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000051 0x8096B16C 03E00008 */ jr	$ra
/* 000052 0x8096B170 00000000 */ nop


.section .late_rodata

glabel D_8096B2B0
/* 000132 0x8096B2B0 */ .word	0x43FA8000
/* 000133 0x8096B2B4 */ .word	0x00000000
/* 000134 0x8096B2B8 */ .word	0x00000000
/* 000135 0x8096B2BC */ .word	0x00000000
