glabel func_80A37294
/* 001193 0x80A37294 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 001194 0x80A37298 AFA40030 */ sw	$a0, 0X30($sp)
/* 001195 0x80A3729C 8FA40044 */ lw	$a0, 0X44($sp)
/* 001196 0x80A372A0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001197 0x80A372A4 AFA60038 */ sw	$a2, 0X38($sp)
/* 001198 0x80A372A8 AFA7003C */ sw	$a3, 0X3C($sp)
/* 001199 0x80A372AC 8C8F0188 */ lw	$t7, 0X188($a0)
/* 001200 0x80A372B0 3C0E80A3 */ lui	$t6, %hi(func_80A365EC)
/* 001201 0x80A372B4 25CE65EC */ addiu	$t6, $t6, %lo(func_80A365EC)
/* 001202 0x80A372B8 15CF0006 */ bne	$t6, $t7, .L80A372D4
/* 001203 0x80A372BC C480015C */ lwc1	$f0, 0X15C($a0)
/* 001204 0x80A372C0 849802A4 */ lh	$t8, 0X2A4($a0)
/* 001205 0x80A372C4 44982000 */ mtc1	$t8, $f4
/* 001206 0x80A372C8 00000000 */ nop
/* 001207 0x80A372CC 468021A0 */ cvt.s.w	$f6, $f4
/* 001208 0x80A372D0 46060000 */ add.s	$f0, $f0, $f6
.L80A372D4:
/* 001209 0x80A372D4 2401000E */ li	$at, 0XE
/* 001210 0x80A372D8 54A10010 */ bnel	$a1, $at, .L80A3731C
/* 001211 0x80A372DC 2401000F */ li	$at, 0XF
/* 001212 0x80A372E0 8C8901D8 */ lw	$t1, 0X1D8($a0)
/* 001213 0x80A372E4 27B90020 */ addiu	$t9, $sp, 0X20
/* 001214 0x80A372E8 24070001 */ li	$a3, 0X1
/* 001215 0x80A372EC AF290000 */ sw	$t1, 0X0($t9)
/* 001216 0x80A372F0 8C8801DC */ lw	$t0, 0X1DC($a0)
/* 001217 0x80A372F4 AF280004 */ sw	$t0, 0X4($t9)
/* 001218 0x80A372F8 8C8901E0 */ lw	$t1, 0X1E0($a0)
/* 001219 0x80A372FC AF290008 */ sw	$t1, 0X8($t9)
/* 001220 0x80A37300 8FA60028 */ lw	$a2, 0X28($sp)
/* 001221 0x80A37304 C7AE0024 */ lwc1	$f14, 0X24($sp)
/* 001222 0x80A37308 0C0600E7 */ jal	SysMatrix_InsertScale
/* 001223 0x80A3730C C7AC0020 */ lwc1	$f12, 0X20($sp)
/* 001224 0x80A37310 1000000E */ b	.L80A3734C
/* 001225 0x80A37314 00001025 */ move	$v0, $zero
/* 001226 0x80A37318 2401000F */ li	$at, 0XF
.L80A3731C:
/* 001227 0x80A3731C 54A1000B */ bnel	$a1, $at, .L80A3734C
/* 001228 0x80A37320 00001025 */ move	$v0, $zero
/* 001229 0x80A37324 44050000 */ mfc1	$a1, $f0
/* 001230 0x80A37328 0C28DC3B */ jal	func_80A370EC
/* 001231 0x80A3732C 27A60020 */ addiu	$a2, $sp, 0X20
/* 001232 0x80A37330 10400005 */ beqz	$v0, .L80A37348
/* 001233 0x80A37334 C7AC0020 */ lwc1	$f12, 0X20($sp)
/* 001234 0x80A37338 C7AE0024 */ lwc1	$f14, 0X24($sp)
/* 001235 0x80A3733C 8FA60028 */ lw	$a2, 0X28($sp)
/* 001236 0x80A37340 0C0600E7 */ jal	SysMatrix_InsertScale
/* 001237 0x80A37344 24070001 */ li	$a3, 0X1
.L80A37348:
/* 001238 0x80A37348 00001025 */ move	$v0, $zero
.L80A3734C:
/* 001239 0x80A3734C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001240 0x80A37350 27BD0030 */ addiu	$sp, $sp, 0X30
/* 001241 0x80A37354 03E00008 */ jr	$ra
/* 001242 0x80A37358 00000000 */ nop

