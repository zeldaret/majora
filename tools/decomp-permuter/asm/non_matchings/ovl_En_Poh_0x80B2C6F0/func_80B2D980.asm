glabel func_80B2D980
/* 001188 0x80B2D980 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 001189 0x80B2D984 AFB00018 */ sw	$s0, 0X18($sp)
/* 001190 0x80B2D988 00808025 */ move	$s0, $a0
/* 001191 0x80B2D98C AFBF001C */ sw	$ra, 0X1C($sp)
/* 001192 0x80B2D990 AFA50024 */ sw	$a1, 0X24($sp)
/* 001193 0x80B2D994 920E018C */ lbu	$t6, 0X18C($s0)
/* 001194 0x80B2D998 86180032 */ lh	$t8, 0X32($s0)
/* 001195 0x80B2D99C 86190192 */ lh	$t9, 0X192($s0)
/* 001196 0x80B2D9A0 25CF0001 */ addiu	$t7, $t6, 0X1
/* 001197 0x80B2D9A4 31E900FF */ andi	$t1, $t7, 0XFF
/* 001198 0x80B2D9A8 29210010 */ slti	$at, $t1, 0X10
/* 001199 0x80B2D9AC 03194023 */ subu	$t0, $t8, $t9
/* 001200 0x80B2D9B0 A20F018C */ sb	$t7, 0X18C($s0)
/* 001201 0x80B2D9B4 14200005 */ bnez	$at, .L80B2D9CC
/* 001202 0x80B2D9B8 A6080032 */ sh	$t0, 0X32($s0)
/* 001203 0x80B2D9BC 26040192 */ addiu	$a0, $s0, 0X192
/* 001204 0x80B2D9C0 00002825 */ move	$a1, $zero
/* 001205 0x80B2D9C4 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 001206 0x80B2D9C8 24060200 */ li	$a2, 0X200
.L80B2D9CC:
/* 001207 0x80B2D9CC 02002025 */ move	$a0, $s0
/* 001208 0x80B2D9D0 0C2CB26E */ jal	func_80B2C9B8
/* 001209 0x80B2D9D4 8FA50024 */ lw	$a1, 0X24($sp)
/* 001210 0x80B2D9D8 9202018C */ lbu	$v0, 0X18C($s0)
/* 001211 0x80B2D9DC 3C014F80 */ lui	$at, 0x4F80
/* 001212 0x80B2D9E0 240402BC */ li	$a0, 0X2BC
/* 001213 0x80B2D9E4 44822000 */ mtc1	$v0, $f4
/* 001214 0x80B2D9E8 04410004 */ bgez	$v0, .L80B2D9FC
/* 001215 0x80B2D9EC 468021A0 */ cvt.s.w	$f6, $f4
/* 001216 0x80B2D9F0 44814000 */ mtc1	$at, $f8
/* 001217 0x80B2D9F4 00000000 */ nop
/* 001218 0x80B2D9F8 46083180 */ add.s	$f6, $f6, $f8
.L80B2D9FC:
/* 001219 0x80B2D9FC 3C0140FF */ lui	$at, 0x40FF
/* 001220 0x80B2DA00 44815000 */ mtc1	$at, $f10
/* 001221 0x80B2DA04 240B0001 */ li	$t3, 0X1
/* 001222 0x80B2DA08 3C014F00 */ lui	$at, 0x4F00
/* 001223 0x80B2DA0C 460A3402 */ mul.s	$f16, $f6, $f10
/* 001224 0x80B2DA10 444AF800 */ cfc1	$t2, $31
/* 001225 0x80B2DA14 44CBF800 */ ctc1	$t3, $31
/* 001226 0x80B2DA18 00000000 */ nop
/* 001227 0x80B2DA1C 460084A4 */ cvt.w.s	$f18, $f16
/* 001228 0x80B2DA20 444BF800 */ cfc1	$t3, $31
/* 001229 0x80B2DA24 00000000 */ nop
/* 001230 0x80B2DA28 316B0078 */ andi	$t3, $t3, 0X78
/* 001231 0x80B2DA2C 51600013 */ beqzl	$t3, .L80B2DA7C
/* 001232 0x80B2DA30 440B9000 */ mfc1	$t3, $f18
/* 001233 0x80B2DA34 44819000 */ mtc1	$at, $f18
/* 001234 0x80B2DA38 240B0001 */ li	$t3, 0X1
/* 001235 0x80B2DA3C 46128481 */ sub.s	$f18, $f16, $f18
/* 001236 0x80B2DA40 44CBF800 */ ctc1	$t3, $31
/* 001237 0x80B2DA44 00000000 */ nop
/* 001238 0x80B2DA48 460094A4 */ cvt.w.s	$f18, $f18
/* 001239 0x80B2DA4C 444BF800 */ cfc1	$t3, $31
/* 001240 0x80B2DA50 00000000 */ nop
/* 001241 0x80B2DA54 316B0078 */ andi	$t3, $t3, 0X78
/* 001242 0x80B2DA58 15600005 */ bnez	$t3, .L80B2DA70
/* 001243 0x80B2DA5C 00000000 */ nop
/* 001244 0x80B2DA60 440B9000 */ mfc1	$t3, $f18
/* 001245 0x80B2DA64 3C018000 */ lui	$at, 0x8000
/* 001246 0x80B2DA68 10000007 */ b	.L80B2DA88
/* 001247 0x80B2DA6C 01615825 */ or	$t3, $t3, $at
.L80B2DA70:
/* 001248 0x80B2DA70 10000005 */ b	.L80B2DA88
/* 001249 0x80B2DA74 240BFFFF */ li	$t3, -0X1
/* 001250 0x80B2DA78 440B9000 */ mfc1	$t3, $f18
.L80B2DA7C:
/* 001251 0x80B2DA7C 00000000 */ nop
/* 001252 0x80B2DA80 0560FFFB */ bltz	$t3, .L80B2DA70
/* 001253 0x80B2DA84 00000000 */ nop
.L80B2DA88:
/* 001254 0x80B2DA88 44CAF800 */ ctc1	$t2, $31
/* 001255 0x80B2DA8C 24010020 */ li	$at, 0X20
/* 001256 0x80B2DA90 1441000A */ bne	$v0, $at, .L80B2DABC
/* 001257 0x80B2DA94 A20B0197 */ sb	$t3, 0X197($s0)
/* 001258 0x80B2DA98 0C03FD14 */ jal	Math_Rand_S16Offset
/* 001259 0x80B2DA9C 2405012C */ li	$a1, 0X12C
/* 001260 0x80B2DAA0 3C0CF7CB */ lui	$t4, 0xF7CB
/* 001261 0x80B2DAA4 358CFFFE */ ori	$t4, $t4, 0XFFFE
/* 001262 0x80B2DAA8 A6020190 */ sh	$v0, 0X190($s0)
/* 001263 0x80B2DAAC A200018C */ sb	$zero, 0X18C($s0)
/* 001264 0x80B2DAB0 AE0C034C */ sw	$t4, 0X34C($s0)
/* 001265 0x80B2DAB4 0C2CB2D8 */ jal	func_80B2CB60
/* 001266 0x80B2DAB8 02002025 */ move	$a0, $s0
.L80B2DABC:
/* 001267 0x80B2DABC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001268 0x80B2DAC0 8FB00018 */ lw	$s0, 0X18($sp)
/* 001269 0x80B2DAC4 27BD0020 */ addiu	$sp, $sp, 0X20
/* 001270 0x80B2DAC8 03E00008 */ jr	$ra
/* 001271 0x80B2DACC 00000000 */ nop

