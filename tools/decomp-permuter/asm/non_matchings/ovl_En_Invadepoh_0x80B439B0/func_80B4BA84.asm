glabel func_80B4BA84
/* 008245 0x80B4BA84 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 008246 0x80B4BA88 AFB00018 */ sw	$s0, 0X18($sp)
/* 008247 0x80B4BA8C 00808025 */ move	$s0, $a0
/* 008248 0x80B4BA90 AFBF001C */ sw	$ra, 0X1C($sp)
/* 008249 0x80B4BA94 AFA50044 */ sw	$a1, 0X44($sp)
/* 008250 0x80B4BA98 8E0E0004 */ lw	$t6, 0X4($s0)
/* 008251 0x80B4BA9C 31CF0040 */ andi	$t7, $t6, 0X40
/* 008252 0x80B4BAA0 39F80040 */ xori	$t8, $t7, 0X40
/* 008253 0x80B4BAA4 2F180001 */ sltiu	$t8, $t8, 0X1
/* 008254 0x80B4BAA8 0C2D1636 */ jal	func_80B458D8
/* 008255 0x80B4BAAC AFB80034 */ sw	$t8, 0X34($sp)
/* 008256 0x80B4BAB0 3C0480B5 */ lui	$a0, %hi(D_80B5040C)
/* 008257 0x80B4BAB4 2484040C */ addiu	$a0, $a0, %lo(D_80B5040C)
/* 008258 0x80B4BAB8 AC820000 */ sw	$v0, 0X0($a0)
/* 008259 0x80B4BABC 1440000C */ bnez	$v0, .L80B4BAF0
/* 008260 0x80B4BAC0 00401825 */ move	$v1, $v0
/* 008261 0x80B4BAC4 820203BC */ lb	$v0, 0X3BC($s0)
/* 008262 0x80B4BAC8 2419FFFF */ li	$t9, -0X1
/* 008263 0x80B4BACC A21903BC */ sb	$t9, 0X3BC($s0)
/* 008264 0x80B4BAD0 28420000 */ slti	$v0, $v0, 0X0
/* 008265 0x80B4BAD4 38420001 */ xori	$v0, $v0, 0X1
/* 008266 0x80B4BAD8 50400022 */ beqzl	$v0, .L80B4BB64
/* 008267 0x80B4BADC 8E1902EC */ lw	$t9, 0X2EC($s0)
/* 008268 0x80B4BAE0 0C2D2E08 */ jal	func_80B4B820
/* 008269 0x80B4BAE4 02002025 */ move	$a0, $s0
/* 008270 0x80B4BAE8 1000001E */ b	.L80B4BB64
/* 008271 0x80B4BAEC 8E1902EC */ lw	$t9, 0X2EC($s0)
.L80B4BAF0:
/* 008272 0x80B4BAF0 820803BC */ lb	$t0, 0X3BC($s0)
/* 008273 0x80B4BAF4 02002025 */ move	$a0, $s0
/* 008274 0x80B4BAF8 24650024 */ addiu	$a1, $v1, 0X24
/* 008275 0x80B4BAFC 0C2D108D */ jal	func_80B44234
/* 008276 0x80B4BB00 AFA8002C */ sw	$t0, 0X2C($sp)
/* 008277 0x80B4BB04 A20203BC */ sb	$v0, 0X3BC($s0)
/* 008278 0x80B4BB08 8FA9002C */ lw	$t1, 0X2C($sp)
/* 008279 0x80B4BB0C 820303BC */ lb	$v1, 0X3BC($s0)
/* 008280 0x80B4BB10 51230014 */ beql	$t1, $v1, .L80B4BB64
/* 008281 0x80B4BB14 8E1902EC */ lw	$t9, 0X2EC($s0)
/* 008282 0x80B4BB18 820A0309 */ lb	$t2, 0X309($s0)
/* 008283 0x80B4BB1C 240CFFFF */ li	$t4, -0X1
/* 008284 0x80B4BB20 006A1023 */ subu	$v0, $v1, $t2
/* 008285 0x80B4BB24 04430004 */ bgezl	$v0, .L80B4BB38
/* 008286 0x80B4BB28 82030308 */ lb	$v1, 0X308($s0)
/* 008287 0x80B4BB2C 820B0308 */ lb	$t3, 0X308($s0)
/* 008288 0x80B4BB30 004B1021 */ addu	$v0, $v0, $t3
/* 008289 0x80B4BB34 82030308 */ lb	$v1, 0X308($s0)
.L80B4BB38:
/* 008290 0x80B4BB38 00031843 */ sra	$v1, $v1, 1
/* 008291 0x80B4BB3C 0062082A */ slt	$at, $v1, $v0
/* 008292 0x80B4BB40 50200004 */ beqzl	$at, .L80B4BB54
/* 008293 0x80B4BB44 0043082A */ slt	$at, $v0, $v1
/* 008294 0x80B4BB48 10000005 */ b	.L80B4BB60
/* 008295 0x80B4BB4C A20C030A */ sb	$t4, 0X30A($s0)
/* 008296 0x80B4BB50 0043082A */ slt	$at, $v0, $v1
.L80B4BB54:
/* 008297 0x80B4BB54 10200002 */ beqz	$at, .L80B4BB60
/* 008298 0x80B4BB58 240D0001 */ li	$t5, 0X1
/* 008299 0x80B4BB5C A20D030A */ sb	$t5, 0X30A($s0)
.L80B4BB60:
/* 008300 0x80B4BB60 8E1902EC */ lw	$t9, 0X2EC($s0)
.L80B4BB64:
/* 008301 0x80B4BB64 02002025 */ move	$a0, $s0
/* 008302 0x80B4BB68 8FA50044 */ lw	$a1, 0X44($sp)
/* 008303 0x80B4BB6C 0320F809 */ jalr	$t9
/* 008304 0x80B4BB70 00000000 */ nop
/* 008305 0x80B4BB74 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 008306 0x80B4BB78 26040144 */ addiu	$a0, $s0, 0X144
/* 008307 0x80B4BB7C A202029C */ sb	$v0, 0X29C($s0)
/* 008308 0x80B4BB80 8FAE0034 */ lw	$t6, 0X34($sp)
/* 008309 0x80B4BB84 51C00012 */ beqzl	$t6, .L80B4BBD0
/* 008310 0x80B4BB88 8FBF001C */ lw	$ra, 0X1C($sp)
/* 008311 0x80B4BB8C 8E0F0138 */ lw	$t7, 0X138($s0)
/* 008312 0x80B4BB90 51E0000F */ beqzl	$t7, .L80B4BBD0
/* 008313 0x80B4BB94 8FBF001C */ lw	$ra, 0X1C($sp)
/* 008314 0x80B4BB98 0C2D1738 */ jal	func_80B45CE0
/* 008315 0x80B4BB9C 26040324 */ addiu	$a0, $s0, 0X324
/* 008316 0x80B4BBA0 260602A0 */ addiu	$a2, $s0, 0X2A0
/* 008317 0x80B4BBA4 00C02825 */ move	$a1, $a2
/* 008318 0x80B4BBA8 AFA60020 */ sw	$a2, 0X20($sp)
/* 008319 0x80B4BBAC 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 008320 0x80B4BBB0 02002025 */ move	$a0, $s0
/* 008321 0x80B4BBB4 8FA40044 */ lw	$a0, 0X44($sp)
/* 008322 0x80B4BBB8 3C010001 */ lui	$at, 0x0001
/* 008323 0x80B4BBBC 34218884 */ ori	$at, $at, 0X8884
/* 008324 0x80B4BBC0 8FA60020 */ lw	$a2, 0X20($sp)
/* 008325 0x80B4BBC4 0C038A4A */ jal	Collision_AddOT
/* 008326 0x80B4BBC8 00812821 */ addu	$a1, $a0, $at
/* 008327 0x80B4BBCC 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B4BBD0:
/* 008328 0x80B4BBD0 8FB00018 */ lw	$s0, 0X18($sp)
/* 008329 0x80B4BBD4 27BD0040 */ addiu	$sp, $sp, 0X40
/* 008330 0x80B4BBD8 03E00008 */ jr	$ra
/* 008331 0x80B4BBDC 00000000 */ nop

