glabel EnZot_Draw
/* 003186 0x80B99798 27BDFFA8 */ addiu	$sp, $sp, -0X58
/* 003187 0x80B9979C AFB00028 */ sw	$s0, 0X28($sp)
/* 003188 0x80B997A0 00808025 */ move	$s0, $a0
/* 003189 0x80B997A4 AFBF002C */ sw	$ra, 0X2C($sp)
/* 003190 0x80B997A8 AFA5005C */ sw	$a1, 0X5C($sp)
/* 003191 0x80B997AC 3C0F80BA */ lui	$t7, %hi(D_80B99940)
/* 003192 0x80B997B0 25EF9940 */ addiu	$t7, $t7, %lo(D_80B99940)
/* 003193 0x80B997B4 8DF90000 */ lw	$t9, 0X0($t7)
/* 003194 0x80B997B8 27AE004C */ addiu	$t6, $sp, 0X4C
/* 003195 0x80B997BC 8DF80004 */ lw	$t8, 0X4($t7)
/* 003196 0x80B997C0 ADD90000 */ sw	$t9, 0X0($t6)
/* 003197 0x80B997C4 8DF90008 */ lw	$t9, 0X8($t7)
/* 003198 0x80B997C8 ADD80004 */ sw	$t8, 0X4($t6)
/* 003199 0x80B997CC ADD90008 */ sw	$t9, 0X8($t6)
/* 003200 0x80B997D0 8FA8005C */ lw	$t0, 0X5C($sp)
/* 003201 0x80B997D4 8D040000 */ lw	$a0, 0X0($t0)
/* 003202 0x80B997D8 0C04B0A3 */ jal	func_8012C28C
/* 003203 0x80B997DC AFA40044 */ sw	$a0, 0X44($sp)
/* 003204 0x80B997E0 8FA60044 */ lw	$a2, 0X44($sp)
/* 003205 0x80B997E4 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 003206 0x80B997E8 3C0AFB00 */ lui	$t2, 0xFB00
/* 003207 0x80B997EC 240B00FF */ li	$t3, 0XFF
/* 003208 0x80B997F0 24490008 */ addiu	$t1, $v0, 0X8
/* 003209 0x80B997F4 ACC902B0 */ sw	$t1, 0X2B0($a2)
/* 003210 0x80B997F8 AC4B0004 */ sw	$t3, 0X4($v0)
/* 003211 0x80B997FC AC4A0000 */ sw	$t2, 0X0($v0)
/* 003212 0x80B99800 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 003213 0x80B99804 3C0DDB06 */ lui	$t5, 0xDB06
/* 003214 0x80B99808 35AD0020 */ ori	$t5, $t5, 0X20
/* 003215 0x80B9980C 244C0008 */ addiu	$t4, $v0, 0X8
/* 003216 0x80B99810 ACCC02B0 */ sw	$t4, 0X2B0($a2)
/* 003217 0x80B99814 AC4D0000 */ sw	$t5, 0X0($v0)
/* 003218 0x80B99818 860E02EC */ lh	$t6, 0X2EC($s0)
/* 003219 0x80B9981C 000E7880 */ sll	$t7, $t6, 2
/* 003220 0x80B99820 03AF2021 */ addu	$a0, $sp, $t7
/* 003221 0x80B99824 8C84004C */ lw	$a0, 0X4C($a0)
/* 003222 0x80B99828 AFA60044 */ sw	$a2, 0X44($sp)
/* 003223 0x80B9982C 0C040141 */ jal	Lib_PtrSegToVirt
/* 003224 0x80B99830 AFA20038 */ sw	$v0, 0X38($sp)
/* 003225 0x80B99834 8FA30038 */ lw	$v1, 0X38($sp)
/* 003226 0x80B99838 8FA60044 */ lw	$a2, 0X44($sp)
/* 003227 0x80B9983C AC620004 */ sw	$v0, 0X4($v1)
/* 003228 0x80B99840 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 003229 0x80B99844 3C19DB06 */ lui	$t9, 0xDB06
/* 003230 0x80B99848 37390030 */ ori	$t9, $t9, 0X30
/* 003231 0x80B9984C 24580008 */ addiu	$t8, $v0, 0X8
/* 003232 0x80B99850 ACD802B0 */ sw	$t8, 0X2B0($a2)
/* 003233 0x80B99854 AC590000 */ sw	$t9, 0X0($v0)
/* 003234 0x80B99858 8FA8005C */ lw	$t0, 0X5C($sp)
/* 003235 0x80B9985C 8D040000 */ lw	$a0, 0X0($t0)
/* 003236 0x80B99860 0C2E6560 */ jal	func_80B99580
/* 003237 0x80B99864 AFA20034 */ sw	$v0, 0X34($sp)
/* 003238 0x80B99868 8FA30034 */ lw	$v1, 0X34($sp)
/* 003239 0x80B9986C 3C0980BA */ lui	$t1, %hi(func_80B995A4)
/* 003240 0x80B99870 252995A4 */ addiu	$t1, $t1, %lo(func_80B995A4)
/* 003241 0x80B99874 AC620004 */ sw	$v0, 0X4($v1)
/* 003242 0x80B99878 8E050148 */ lw	$a1, 0X148($s0)
/* 003243 0x80B9987C 8E060164 */ lw	$a2, 0X164($s0)
/* 003244 0x80B99880 92070146 */ lbu	$a3, 0X146($s0)
/* 003245 0x80B99884 3C0A80BA */ lui	$t2, %hi(func_80B99758)
/* 003246 0x80B99888 254A9758 */ addiu	$t2, $t2, %lo(func_80B99758)
/* 003247 0x80B9988C AFAA0014 */ sw	$t2, 0X14($sp)
/* 003248 0x80B99890 AFB00018 */ sw	$s0, 0X18($sp)
/* 003249 0x80B99894 AFA90010 */ sw	$t1, 0X10($sp)
/* 003250 0x80B99898 0C04CFCA */ jal	SkelAnime_DrawSV
/* 003251 0x80B9989C 8FA4005C */ lw	$a0, 0X5C($sp)
/* 003252 0x80B998A0 8FBF002C */ lw	$ra, 0X2C($sp)
/* 003253 0x80B998A4 8FB00028 */ lw	$s0, 0X28($sp)
/* 003254 0x80B998A8 27BD0058 */ addiu	$sp, $sp, 0X58
/* 003255 0x80B998AC 03E00008 */ jr	$ra
/* 003256 0x80B998B0 00000000 */ nop
/* 003257 0x80B998B4 00000000 */ nop
/* 003258 0x80B998B8 00000000 */ nop
/* 003259 0x80B998BC 00000000 */ nop
