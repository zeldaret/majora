glabel func_808E4144
/* 000149 0x808E4144 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000150 0x808E4148 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000151 0x808E414C AFA40028 */ sw	$a0, 0X28($sp)
/* 000152 0x808E4150 3C040600 */ lui	$a0, 0x0600
/* 000153 0x808E4154 0C04D1D2 */ jal	SkelAnime_GetFrameCount
/* 000154 0x808E4158 24840194 */ addiu	$a0, $a0, 0X194
/* 000155 0x808E415C 44822000 */ mtc1	$v0, $f4
/* 000156 0x808E4160 8FA40028 */ lw	$a0, 0X28($sp)
/* 000157 0x808E4164 44804000 */ mtc1	$zero, $f8
/* 000158 0x808E4168 468021A0 */ cvt.s.w	$f6, $f4
/* 000159 0x808E416C 3C050600 */ lui	$a1, 0x0600
/* 000160 0x808E4170 240E0002 */ li	$t6, 0X2
/* 000161 0x808E4174 AFAE0014 */ sw	$t6, 0X14($sp)
/* 000162 0x808E4178 24A50194 */ addiu	$a1, $a1, 0X194
/* 000163 0x808E417C 3C063F80 */ lui	$a2, 0x3F80
/* 000164 0x808E4180 E7A60010 */ swc1	$f6, 0X10($sp)
/* 000165 0x808E4184 24070000 */ li	$a3, 0X0
/* 000166 0x808E4188 24840144 */ addiu	$a0, $a0, 0X144
/* 000167 0x808E418C 0C04DCFA */ jal	SkelAnime_ChangeAnim
/* 000168 0x808E4190 E7A80018 */ swc1	$f8, 0X18($sp)
/* 000169 0x808E4194 8FA40028 */ lw	$a0, 0X28($sp)
/* 000170 0x808E4198 3C0F808E */ lui	$t7, %hi(func_808E44D4)
/* 000171 0x808E419C 25EF44D4 */ addiu	$t7, $t7, %lo(func_808E44D4)
/* 000172 0x808E41A0 24053849 */ li	$a1, 0X3849
/* 000173 0x808E41A4 A4800246 */ sh	$zero, 0X246($a0)
/* 000174 0x808E41A8 0C02E3B2 */ jal	func_800B8EC8
/* 000175 0x808E41AC AC8F01F4 */ sw	$t7, 0X1F4($a0)
/* 000176 0x808E41B0 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000177 0x808E41B4 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000178 0x808E41B8 03E00008 */ jr	$ra
/* 000179 0x808E41BC 00000000 */ nop

