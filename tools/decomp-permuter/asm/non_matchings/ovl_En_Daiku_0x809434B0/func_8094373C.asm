glabel func_8094373C
/* 000163 0x8094373C 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000164 0x80943740 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000165 0x80943744 AFA40030 */ sw	$a0, 0X30($sp)
/* 000166 0x80943748 AFA50034 */ sw	$a1, 0X34($sp)
/* 000167 0x8094374C 8FAE0034 */ lw	$t6, 0X34($sp)
/* 000168 0x80943750 3C188094 */ lui	$t8, %hi(D_809440A4)
/* 000169 0x80943754 271840A4 */ addiu	$t8, $t8, %lo(D_809440A4)
/* 000170 0x80943758 000E7880 */ sll	$t7, $t6, 2
/* 000171 0x8094375C 01F81821 */ addu	$v1, $t7, $t8
/* 000172 0x80943760 8C640000 */ lw	$a0, 0X0($v1)
/* 000173 0x80943764 0C04D1D2 */ jal	SkelAnime_GetFrameCount
/* 000174 0x80943768 AFA3002C */ sw	$v1, 0X2C($sp)
/* 000175 0x8094376C 44822000 */ mtc1	$v0, $f4
/* 000176 0x80943770 8FA80030 */ lw	$t0, 0X30($sp)
/* 000177 0x80943774 8FA3002C */ lw	$v1, 0X2C($sp)
/* 000178 0x80943778 46802020 */ cvt.s.w	$f0, $f4
/* 000179 0x8094377C 3C098094 */ lui	$t1, %hi(D_809440C8)
/* 000180 0x80943780 3C01C080 */ lui	$at, 0xC080
/* 000181 0x80943784 44813000 */ mtc1	$at, $f6
/* 000182 0x80943788 3C063F80 */ lui	$a2, 0x3F80
/* 000183 0x8094378C 24070000 */ li	$a3, 0X0
/* 000184 0x80943790 E5000284 */ swc1	$f0, 0X284($t0)
/* 000185 0x80943794 8FB90034 */ lw	$t9, 0X34($sp)
/* 000186 0x80943798 E7A00010 */ swc1	$f0, 0X10($sp)
/* 000187 0x8094379C 25040144 */ addiu	$a0, $t0, 0X144
/* 000188 0x809437A0 01394821 */ addu	$t1, $t1, $t9
/* 000189 0x809437A4 912940C8 */ lbu	$t1, %lo(D_809440C8)($t1)
/* 000190 0x809437A8 8C650000 */ lw	$a1, 0X0($v1)
/* 000191 0x809437AC E7A60018 */ swc1	$f6, 0X18($sp)
/* 000192 0x809437B0 0C04DCFA */ jal	SkelAnime_ChangeAnim
/* 000193 0x809437B4 AFA90014 */ sw	$t1, 0X14($sp)
/* 000194 0x809437B8 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000195 0x809437BC 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000196 0x809437C0 03E00008 */ jr	$ra
/* 000197 0x809437C4 00000000 */ nop

