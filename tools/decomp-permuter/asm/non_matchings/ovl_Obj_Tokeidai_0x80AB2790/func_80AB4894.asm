glabel func_80AB4894
/* 002113 0x80AB4894 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 002114 0x80AB4898 F7B40010 */ sdc1	$f20, 0X10($sp)
/* 002115 0x80AB489C AFB0001C */ sw	$s0, 0X1C($sp)
/* 002116 0x80AB48A0 4480A000 */ mtc1	$zero, $f20
/* 002117 0x80AB48A4 00808025 */ move	$s0, $a0
/* 002118 0x80AB48A8 AFBF0024 */ sw	$ra, 0X24($sp)
/* 002119 0x80AB48AC AFB10020 */ sw	$s1, 0X20($sp)
/* 002120 0x80AB48B0 AFA5002C */ sw	$a1, 0X2C($sp)
/* 002121 0x80AB48B4 860F015E */ lh	$t7, 0X15E($s0)
/* 002122 0x80AB48B8 8FAE002C */ lw	$t6, 0X2C($sp)
/* 002123 0x80AB48BC 4406A000 */ mfc1	$a2, $f20
/* 002124 0x80AB48C0 448F2000 */ mtc1	$t7, $f4
/* 002125 0x80AB48C4 4600A306 */ mov.s	$f12, $f20
/* 002126 0x80AB48C8 24070001 */ li	$a3, 0X1
/* 002127 0x80AB48CC 8DD10000 */ lw	$s1, 0X0($t6)
/* 002128 0x80AB48D0 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 002129 0x80AB48D4 468023A0 */ cvt.s.w	$f14, $f4
/* 002130 0x80AB48D8 3C06C4DF */ lui	$a2, 0xC4DF
/* 002131 0x80AB48DC 34C6E000 */ ori	$a2, $a2, 0XE000
/* 002132 0x80AB48E0 4600A306 */ mov.s	$f12, $f20
/* 002133 0x80AB48E4 4600A386 */ mov.s	$f14, $f20
/* 002134 0x80AB48E8 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 002135 0x80AB48EC 24070001 */ li	$a3, 0X1
/* 002136 0x80AB48F0 860400BE */ lh	$a0, 0XBE($s0)
/* 002137 0x80AB48F4 24050001 */ li	$a1, 0X1
/* 002138 0x80AB48F8 00042023 */ negu	$a0, $a0
/* 002139 0x80AB48FC 00042400 */ sll	$a0, $a0, 16
/* 002140 0x80AB4900 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 002141 0x80AB4904 00042403 */ sra	$a0, $a0, 16
/* 002142 0x80AB4908 86040160 */ lh	$a0, 0X160($s0)
/* 002143 0x80AB490C 24050001 */ li	$a1, 0X1
/* 002144 0x80AB4910 00042023 */ negu	$a0, $a0
/* 002145 0x80AB4914 00042400 */ sll	$a0, $a0, 16
/* 002146 0x80AB4918 0C06011E */ jal	SysMatrix_InsertXRotation_s
/* 002147 0x80AB491C 00042403 */ sra	$a0, $a0, 16
/* 002148 0x80AB4920 860400BE */ lh	$a0, 0XBE($s0)
/* 002149 0x80AB4924 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 002150 0x80AB4928 24050001 */ li	$a1, 0X1
/* 002151 0x80AB492C 3C0644DF */ lui	$a2, 0x44DF
/* 002152 0x80AB4930 34C6E000 */ ori	$a2, $a2, 0XE000
/* 002153 0x80AB4934 4600A306 */ mov.s	$f12, $f20
/* 002154 0x80AB4938 4600A386 */ mov.s	$f14, $f20
/* 002155 0x80AB493C 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 002156 0x80AB4940 24070001 */ li	$a3, 0X1
/* 002157 0x80AB4944 8604014C */ lh	$a0, 0X14C($s0)
/* 002158 0x80AB4948 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 002159 0x80AB494C 24050001 */ li	$a1, 0X1
/* 002160 0x80AB4950 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 002161 0x80AB4954 3C19DA38 */ lui	$t9, 0xDA38
/* 002162 0x80AB4958 37390003 */ ori	$t9, $t9, 0X3
/* 002163 0x80AB495C 24580008 */ addiu	$t8, $v0, 0X8
/* 002164 0x80AB4960 AE3802B0 */ sw	$t8, 0X2B0($s1)
/* 002165 0x80AB4964 AC590000 */ sw	$t9, 0X0($v0)
/* 002166 0x80AB4968 8FA8002C */ lw	$t0, 0X2C($sp)
/* 002167 0x80AB496C 00408025 */ move	$s0, $v0
/* 002168 0x80AB4970 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 002169 0x80AB4974 8D040000 */ lw	$a0, 0X0($t0)
/* 002170 0x80AB4978 AE020004 */ sw	$v0, 0X4($s0)
/* 002171 0x80AB497C 8FA9002C */ lw	$t1, 0X2C($sp)
/* 002172 0x80AB4980 0C04B0A3 */ jal	func_8012C28C
/* 002173 0x80AB4984 8D240000 */ lw	$a0, 0X0($t1)
/* 002174 0x80AB4988 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 002175 0x80AB498C 3C0C0601 */ lui	$t4, 0x0601
/* 002176 0x80AB4990 258CBA78 */ addiu	$t4, $t4, -0X4588
/* 002177 0x80AB4994 244A0008 */ addiu	$t2, $v0, 0X8
/* 002178 0x80AB4998 AE2A02B0 */ sw	$t2, 0X2B0($s1)
/* 002179 0x80AB499C 3C0BDE00 */ lui	$t3, 0xDE00
/* 002180 0x80AB49A0 AC4B0000 */ sw	$t3, 0X0($v0)
/* 002181 0x80AB49A4 AC4C0004 */ sw	$t4, 0X4($v0)
/* 002182 0x80AB49A8 8FBF0024 */ lw	$ra, 0X24($sp)
/* 002183 0x80AB49AC D7B40010 */ ldc1	$f20, 0X10($sp)
/* 002184 0x80AB49B0 8FB0001C */ lw	$s0, 0X1C($sp)
/* 002185 0x80AB49B4 8FB10020 */ lw	$s1, 0X20($sp)
/* 002186 0x80AB49B8 03E00008 */ jr	$ra
/* 002187 0x80AB49BC 27BD0028 */ addiu	$sp, $sp, 0X28
