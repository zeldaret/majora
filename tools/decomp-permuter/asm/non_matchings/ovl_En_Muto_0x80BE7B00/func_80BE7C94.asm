glabel func_80BE7C94
/* 000101 0x80BE7C94 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000102 0x80BE7C98 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000103 0x80BE7C9C AFA40028 */ sw	$a0, 0X28($sp)
/* 000104 0x80BE7CA0 8FAE0028 */ lw	$t6, 0X28($sp)
/* 000105 0x80BE7CA4 00057880 */ sll	$t7, $a1, 2
/* 000106 0x80BE7CA8 3C0480BF */ lui	$a0, %hi(D_80BE8448)
/* 000107 0x80BE7CAC 008F2021 */ addu	$a0, $a0, $t7
/* 000108 0x80BE7CB0 ADC50290 */ sw	$a1, 0X290($t6)
/* 000109 0x80BE7CB4 0C04D1D2 */ jal	SkelAnime_GetFrameCount
/* 000110 0x80BE7CB8 8C848448 */ lw	$a0, %lo(D_80BE8448)($a0)
/* 000111 0x80BE7CBC 44822000 */ mtc1	$v0, $f4
/* 000112 0x80BE7CC0 8FA80028 */ lw	$t0, 0X28($sp)
/* 000113 0x80BE7CC4 3C1980BF */ lui	$t9, %hi(D_80BE8450)
/* 000114 0x80BE7CC8 46802020 */ cvt.s.w	$f0, $f4
/* 000115 0x80BE7CCC 8D030290 */ lw	$v1, 0X290($t0)
/* 000116 0x80BE7CD0 3C01C080 */ lui	$at, 0xC080
/* 000117 0x80BE7CD4 44813000 */ mtc1	$at, $f6
/* 000118 0x80BE7CD8 0323C821 */ addu	$t9, $t9, $v1
/* 000119 0x80BE7CDC 3C0580BF */ lui	$a1, %hi(D_80BE8448)
/* 000120 0x80BE7CE0 E5000274 */ swc1	$f0, 0X274($t0)
/* 000121 0x80BE7CE4 93398450 */ lbu	$t9, %lo(D_80BE8450)($t9)
/* 000122 0x80BE7CE8 0003C080 */ sll	$t8, $v1, 2
/* 000123 0x80BE7CEC 00B82821 */ addu	$a1, $a1, $t8
/* 000124 0x80BE7CF0 8CA58448 */ lw	$a1, %lo(D_80BE8448)($a1)
/* 000125 0x80BE7CF4 E7A00010 */ swc1	$f0, 0X10($sp)
/* 000126 0x80BE7CF8 3C063F80 */ lui	$a2, 0x3F80
/* 000127 0x80BE7CFC 24070000 */ li	$a3, 0X0
/* 000128 0x80BE7D00 25040144 */ addiu	$a0, $t0, 0X144
/* 000129 0x80BE7D04 E7A60018 */ swc1	$f6, 0X18($sp)
/* 000130 0x80BE7D08 0C04DCFA */ jal	SkelAnime_ChangeAnim
/* 000131 0x80BE7D0C AFB90014 */ sw	$t9, 0X14($sp)
/* 000132 0x80BE7D10 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000133 0x80BE7D14 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000134 0x80BE7D18 03E00008 */ jr	$ra
/* 000135 0x80BE7D1C 00000000 */ nop

