glabel EnAh_Draw
/* 001183 0x80BD3CAC 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 001184 0x80BD3CB0 AFB00028 */ sw	$s0, 0X28($sp)
/* 001185 0x80BD3CB4 00808025 */ move	$s0, $a0
/* 001186 0x80BD3CB8 AFBF002C */ sw	$ra, 0X2C($sp)
/* 001187 0x80BD3CBC AFA5004C */ sw	$a1, 0X4C($sp)
/* 001188 0x80BD3CC0 920E01DC */ lbu	$t6, 0X1DC($s0)
/* 001189 0x80BD3CC4 8FAF004C */ lw	$t7, 0X4C($sp)
/* 001190 0x80BD3CC8 51C00033 */ beqzl	$t6, .L80BD3D98
/* 001191 0x80BD3CCC 8FBF002C */ lw	$ra, 0X2C($sp)
/* 001192 0x80BD3CD0 8DE40000 */ lw	$a0, 0X0($t7)
/* 001193 0x80BD3CD4 0C04B0A3 */ jal	func_8012C28C
/* 001194 0x80BD3CD8 AFA40040 */ sw	$a0, 0X40($sp)
/* 001195 0x80BD3CDC 8FA30040 */ lw	$v1, 0X40($sp)
/* 001196 0x80BD3CE0 8C6202B0 */ lw	$v0, 0X2B0($v1)
/* 001197 0x80BD3CE4 3C19DB06 */ lui	$t9, 0xDB06
/* 001198 0x80BD3CE8 37390020 */ ori	$t9, $t9, 0X20
/* 001199 0x80BD3CEC 24580008 */ addiu	$t8, $v0, 0X8
/* 001200 0x80BD3CF0 AC7802B0 */ sw	$t8, 0X2B0($v1)
/* 001201 0x80BD3CF4 AC590000 */ sw	$t9, 0X0($v0)
/* 001202 0x80BD3CF8 860802FA */ lh	$t0, 0X2FA($s0)
/* 001203 0x80BD3CFC 3C0480BD */ lui	$a0, %hi(D_80BD3F14)
/* 001204 0x80BD3D00 AFA30040 */ sw	$v1, 0X40($sp)
/* 001205 0x80BD3D04 00084880 */ sll	$t1, $t0, 2
/* 001206 0x80BD3D08 00892021 */ addu	$a0, $a0, $t1
/* 001207 0x80BD3D0C 8C843F14 */ lw	$a0, %lo(D_80BD3F14)($a0)
/* 001208 0x80BD3D10 0C040141 */ jal	Lib_PtrSegToVirt
/* 001209 0x80BD3D14 AFA20038 */ sw	$v0, 0X38($sp)
/* 001210 0x80BD3D18 8FA50038 */ lw	$a1, 0X38($sp)
/* 001211 0x80BD3D1C 8FA30040 */ lw	$v1, 0X40($sp)
/* 001212 0x80BD3D20 ACA20004 */ sw	$v0, 0X4($a1)
/* 001213 0x80BD3D24 8C6202B0 */ lw	$v0, 0X2B0($v1)
/* 001214 0x80BD3D28 3C0BDB06 */ lui	$t3, 0xDB06
/* 001215 0x80BD3D2C 356B0024 */ ori	$t3, $t3, 0X24
/* 001216 0x80BD3D30 244A0008 */ addiu	$t2, $v0, 0X8
/* 001217 0x80BD3D34 AC6A02B0 */ sw	$t2, 0X2B0($v1)
/* 001218 0x80BD3D38 AC4B0000 */ sw	$t3, 0X0($v0)
/* 001219 0x80BD3D3C 860C02FC */ lh	$t4, 0X2FC($s0)
/* 001220 0x80BD3D40 3C0480BD */ lui	$a0, %hi(D_80BD3F0C)
/* 001221 0x80BD3D44 AFA20034 */ sw	$v0, 0X34($sp)
/* 001222 0x80BD3D48 000C6880 */ sll	$t5, $t4, 2
/* 001223 0x80BD3D4C 008D2021 */ addu	$a0, $a0, $t5
/* 001224 0x80BD3D50 0C040141 */ jal	Lib_PtrSegToVirt
/* 001225 0x80BD3D54 8C843F0C */ lw	$a0, %lo(D_80BD3F0C)($a0)
/* 001226 0x80BD3D58 8FA50034 */ lw	$a1, 0X34($sp)
/* 001227 0x80BD3D5C 3C0E80BD */ lui	$t6, %hi(func_80BD3AA8)
/* 001228 0x80BD3D60 25CE3AA8 */ addiu	$t6, $t6, %lo(func_80BD3AA8)
/* 001229 0x80BD3D64 ACA20004 */ sw	$v0, 0X4($a1)
/* 001230 0x80BD3D68 8E050148 */ lw	$a1, 0X148($s0)
/* 001231 0x80BD3D6C 8E060164 */ lw	$a2, 0X164($s0)
/* 001232 0x80BD3D70 92070146 */ lbu	$a3, 0X146($s0)
/* 001233 0x80BD3D74 3C0F80BD */ lui	$t7, %hi(func_80BD3AF8)
/* 001234 0x80BD3D78 25EF3AF8 */ addiu	$t7, $t7, %lo(func_80BD3AF8)
/* 001235 0x80BD3D7C AFAF0018 */ sw	$t7, 0X18($sp)
/* 001236 0x80BD3D80 AFB0001C */ sw	$s0, 0X1C($sp)
/* 001237 0x80BD3D84 AFAE0014 */ sw	$t6, 0X14($sp)
/* 001238 0x80BD3D88 AFA00010 */ sw	$zero, 0X10($sp)
/* 001239 0x80BD3D8C 0C04D0F0 */ jal	func_801343C0
/* 001240 0x80BD3D90 8FA4004C */ lw	$a0, 0X4C($sp)
/* 001241 0x80BD3D94 8FBF002C */ lw	$ra, 0X2C($sp)
.L80BD3D98:
/* 001242 0x80BD3D98 8FB00028 */ lw	$s0, 0X28($sp)
/* 001243 0x80BD3D9C 27BD0048 */ addiu	$sp, $sp, 0X48
/* 001244 0x80BD3DA0 03E00008 */ jr	$ra
/* 001245 0x80BD3DA4 00000000 */ nop
/* 001246 0x80BD3DA8 00000000 */ nop
/* 001247 0x80BD3DAC 00000000 */ nop
