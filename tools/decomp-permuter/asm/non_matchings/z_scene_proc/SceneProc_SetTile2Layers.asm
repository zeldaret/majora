glabel SceneProc_SetTile2Layers
/* 142240 0x80130940 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 142241 0x80130944 AFB00038 */ sw	$s0, 0X38($sp)
/* 142242 0x80130948 00A08025 */ move	$s0, $a1
/* 142243 0x8013094C AFBF003C */ sw	$ra, 0X3C($sp)
/* 142244 0x80130950 AFA40040 */ sw	$a0, 0X40($sp)
/* 142245 0x80130954 3C02801F */ lui	$v0, %hi(gSceneProcStep)
/* 142246 0x80130958 8C425AA0 */ lw	$v0, %lo(gSceneProcStep)($v0)
/* 142247 0x8013095C 820F0000 */ lb	$t7, 0X0($s0)
/* 142248 0x80130960 82180001 */ lb	$t8, 0X1($s0)
/* 142249 0x80130964 8FAE0040 */ lw	$t6, 0X40($sp)
/* 142250 0x80130968 01E20019 */ multu	$t7, $v0
/* 142251 0x8013096C 92190002 */ lbu	$t9, 0X2($s0)
/* 142252 0x80130970 8DC40000 */ lw	$a0, 0X0($t6)
/* 142253 0x80130974 24090001 */ li	$t1, 0X1
/* 142254 0x80130978 AFB90010 */ sw	$t9, 0X10($sp)
/* 142255 0x8013097C 92080003 */ lbu	$t0, 0X3($s0)
/* 142256 0x80130980 AFA90018 */ sw	$t1, 0X18($sp)
/* 142257 0x80130984 00002825 */ move	$a1, $zero
/* 142258 0x80130988 AFA80014 */ sw	$t0, 0X14($sp)
/* 142259 0x8013098C 820A0004 */ lb	$t2, 0X4($s0)
/* 142260 0x80130990 00003012 */ mflo	$a2
/* 142261 0x80130994 00000000 */ nop
/* 142262 0x80130998 00000000 */ nop
/* 142263 0x8013099C 03020019 */ multu	$t8, $v0
/* 142264 0x801309A0 00003812 */ mflo	$a3
/* 142265 0x801309A4 00073823 */ negu	$a3, $a3
/* 142266 0x801309A8 00000000 */ nop
/* 142267 0x801309AC 01420019 */ multu	$t2, $v0
/* 142268 0x801309B0 00005812 */ mflo	$t3
/* 142269 0x801309B4 AFAB001C */ sw	$t3, 0X1C($sp)
/* 142270 0x801309B8 820C0005 */ lb	$t4, 0X5($s0)
/* 142271 0x801309BC 01820019 */ multu	$t4, $v0
/* 142272 0x801309C0 00006812 */ mflo	$t5
/* 142273 0x801309C4 000D7023 */ negu	$t6, $t5
/* 142274 0x801309C8 AFAE0020 */ sw	$t6, 0X20($sp)
/* 142275 0x801309CC 920F0006 */ lbu	$t7, 0X6($s0)
/* 142276 0x801309D0 AFAF0024 */ sw	$t7, 0X24($sp)
/* 142277 0x801309D4 92180007 */ lbu	$t8, 0X7($s0)
/* 142278 0x801309D8 0C04B2F4 */ jal	Gfx_TwoTexScroll
/* 142279 0x801309DC AFB80028 */ sw	$t8, 0X28($sp)
/* 142280 0x801309E0 8FBF003C */ lw	$ra, 0X3C($sp)
/* 142281 0x801309E4 8FB00038 */ lw	$s0, 0X38($sp)
/* 142282 0x801309E8 27BD0040 */ addiu	$sp, $sp, 0X40
/* 142283 0x801309EC 03E00008 */ jr	$ra
/* 142284 0x801309F0 00000000 */ nop

