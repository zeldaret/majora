glabel EnPoComposer_Draw
/* 001192 0x80BC61D0 27BDFF58 */ addiu	$sp, $sp, -0XA8
/* 001193 0x80BC61D4 AFB00024 */ sw	$s0, 0X24($sp)
/* 001194 0x80BC61D8 00808025 */ move	$s0, $a0
/* 001195 0x80BC61DC AFBF002C */ sw	$ra, 0X2C($sp)
/* 001196 0x80BC61E0 AFB10028 */ sw	$s1, 0X28($sp)
/* 001197 0x80BC61E4 AFA500AC */ sw	$a1, 0XAC($sp)
/* 001198 0x80BC61E8 8FAE00AC */ lw	$t6, 0XAC($sp)
/* 001199 0x80BC61EC 02002025 */ move	$a0, $s0
/* 001200 0x80BC61F0 0C2F174D */ jal	func_80BC5D34
/* 001201 0x80BC61F4 8DD10000 */ lw	$s1, 0X0($t6)
/* 001202 0x80BC61F8 860F001C */ lh	$t7, 0X1C($s0)
/* 001203 0x80BC61FC 3C0A80BC */ lui	$t2, %hi(D_80BC6948)
/* 001204 0x80BC6200 254A6948 */ addiu	$t2, $t2, %lo(D_80BC6948)
/* 001205 0x80BC6204 31F88000 */ andi	$t8, $t7, 0X8000
/* 001206 0x80BC6208 13000007 */ beqz	$t8, .L80BC6228
/* 001207 0x80BC620C 3C0880BC */ lui	$t0, %hi(D_80BC6950)
/* 001208 0x80BC6210 3C1980BC */ lui	$t9, %hi(D_80BC694C)
/* 001209 0x80BC6214 2739694C */ addiu	$t9, $t9, %lo(D_80BC694C)
/* 001210 0x80BC6218 3C0880BC */ lui	$t0, %hi(D_80BC6954)
/* 001211 0x80BC621C AFB90098 */ sw	$t9, 0X98($sp)
/* 001212 0x80BC6220 10000003 */ b	.L80BC6230
/* 001213 0x80BC6224 25086954 */ addiu	$t0, $t0, %lo(D_80BC6954)
.L80BC6228:
/* 001214 0x80BC6228 AFAA0098 */ sw	$t2, 0X98($sp)
/* 001215 0x80BC622C 25086950 */ addiu	$t0, $t0, %lo(D_80BC6950)
.L80BC6230:
/* 001216 0x80BC6230 92020339 */ lbu	$v0, 0X339($s0)
/* 001217 0x80BC6234 240100FF */ li	$at, 0XFF
/* 001218 0x80BC6238 8FAB00AC */ lw	$t3, 0XAC($sp)
/* 001219 0x80BC623C 50410004 */ beql	$v0, $at, .L80BC6250
/* 001220 0x80BC6240 8D640000 */ lw	$a0, 0X0($t3)
/* 001221 0x80BC6244 14400056 */ bnez	$v0, .L80BC63A0
/* 001222 0x80BC6248 8FAE00AC */ lw	$t6, 0XAC($sp)
/* 001223 0x80BC624C 8D640000 */ lw	$a0, 0X0($t3)
.L80BC6250:
/* 001224 0x80BC6250 0C04B0A3 */ jal	func_8012C28C
/* 001225 0x80BC6254 AFA80094 */ sw	$t0, 0X94($sp)
/* 001226 0x80BC6258 8FA80094 */ lw	$t0, 0X94($sp)
/* 001227 0x80BC625C 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 001228 0x80BC6260 3C0DDB06 */ lui	$t5, 0xDB06
/* 001229 0x80BC6264 35AD0020 */ ori	$t5, $t5, 0X20
/* 001230 0x80BC6268 244C0008 */ addiu	$t4, $v0, 0X8
/* 001231 0x80BC626C AE2C02B0 */ sw	$t4, 0X2B0($s1)
/* 001232 0x80BC6270 AC4D0000 */ sw	$t5, 0X0($v0)
/* 001233 0x80BC6274 8FAE00AC */ lw	$t6, 0XAC($sp)
/* 001234 0x80BC6278 920F0339 */ lbu	$t7, 0X339($s0)
/* 001235 0x80BC627C 92070338 */ lbu	$a3, 0X338($s0)
/* 001236 0x80BC6280 92060337 */ lbu	$a2, 0X337($s0)
/* 001237 0x80BC6284 92050336 */ lbu	$a1, 0X336($s0)
/* 001238 0x80BC6288 8DC40000 */ lw	$a0, 0X0($t6)
/* 001239 0x80BC628C AFA80094 */ sw	$t0, 0X94($sp)
/* 001240 0x80BC6290 AFA20074 */ sw	$v0, 0X74($sp)
/* 001241 0x80BC6294 0C04B394 */ jal	Gfx_EnvColor
/* 001242 0x80BC6298 AFAF0010 */ sw	$t7, 0X10($sp)
/* 001243 0x80BC629C 8FA30074 */ lw	$v1, 0X74($sp)
/* 001244 0x80BC62A0 8FA80094 */ lw	$t0, 0X94($sp)
/* 001245 0x80BC62A4 AC620004 */ sw	$v0, 0X4($v1)
/* 001246 0x80BC62A8 8FA90098 */ lw	$t1, 0X98($sp)
/* 001247 0x80BC62AC 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 001248 0x80BC62B0 3C19DB06 */ lui	$t9, 0xDB06
/* 001249 0x80BC62B4 37390028 */ ori	$t9, $t9, 0X28
/* 001250 0x80BC62B8 24580008 */ addiu	$t8, $v0, 0X8
/* 001251 0x80BC62BC AE3802B0 */ sw	$t8, 0X2B0($s1)
/* 001252 0x80BC62C0 AC590000 */ sw	$t9, 0X0($v0)
/* 001253 0x80BC62C4 8FAA00AC */ lw	$t2, 0XAC($sp)
/* 001254 0x80BC62C8 920B0339 */ lbu	$t3, 0X339($s0)
/* 001255 0x80BC62CC 91270002 */ lbu	$a3, 0X2($t1)
/* 001256 0x80BC62D0 91260001 */ lbu	$a2, 0X1($t1)
/* 001257 0x80BC62D4 91250000 */ lbu	$a1, 0X0($t1)
/* 001258 0x80BC62D8 8D440000 */ lw	$a0, 0X0($t2)
/* 001259 0x80BC62DC AFA80094 */ sw	$t0, 0X94($sp)
/* 001260 0x80BC62E0 AFA20070 */ sw	$v0, 0X70($sp)
/* 001261 0x80BC62E4 0C04B394 */ jal	Gfx_EnvColor
/* 001262 0x80BC62E8 AFAB0010 */ sw	$t3, 0X10($sp)
/* 001263 0x80BC62EC 8FA30070 */ lw	$v1, 0X70($sp)
/* 001264 0x80BC62F0 8FA80094 */ lw	$t0, 0X94($sp)
/* 001265 0x80BC62F4 AC620004 */ sw	$v0, 0X4($v1)
/* 001266 0x80BC62F8 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 001267 0x80BC62FC 3C0DDB06 */ lui	$t5, 0xDB06
/* 001268 0x80BC6300 35AD002C */ ori	$t5, $t5, 0X2C
/* 001269 0x80BC6304 244C0008 */ addiu	$t4, $v0, 0X8
/* 001270 0x80BC6308 AE2C02B0 */ sw	$t4, 0X2B0($s1)
/* 001271 0x80BC630C AC4D0000 */ sw	$t5, 0X0($v0)
/* 001272 0x80BC6310 8FAE00AC */ lw	$t6, 0XAC($sp)
/* 001273 0x80BC6314 920F0339 */ lbu	$t7, 0X339($s0)
/* 001274 0x80BC6318 91070002 */ lbu	$a3, 0X2($t0)
/* 001275 0x80BC631C 91060001 */ lbu	$a2, 0X1($t0)
/* 001276 0x80BC6320 91050000 */ lbu	$a1, 0X0($t0)
/* 001277 0x80BC6324 8DC40000 */ lw	$a0, 0X0($t6)
/* 001278 0x80BC6328 AFA2006C */ sw	$v0, 0X6C($sp)
/* 001279 0x80BC632C 0C04B394 */ jal	Gfx_EnvColor
/* 001280 0x80BC6330 AFAF0010 */ sw	$t7, 0X10($sp)
/* 001281 0x80BC6334 8FA3006C */ lw	$v1, 0X6C($sp)
/* 001282 0x80BC6338 3C19DB06 */ lui	$t9, 0xDB06
/* 001283 0x80BC633C 37390030 */ ori	$t9, $t9, 0X30
/* 001284 0x80BC6340 AC620004 */ sw	$v0, 0X4($v1)
/* 001285 0x80BC6344 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 001286 0x80BC6348 3C0A801B */ lui	$t2, %hi(D_801AEFA0)
/* 001287 0x80BC634C 254AEFA0 */ addiu	$t2, $t2, %lo(D_801AEFA0)
/* 001288 0x80BC6350 24580008 */ addiu	$t8, $v0, 0X8
/* 001289 0x80BC6354 AE3802B0 */ sw	$t8, 0X2B0($s1)
/* 001290 0x80BC6358 AC4A0004 */ sw	$t2, 0X4($v0)
/* 001291 0x80BC635C AC590000 */ sw	$t9, 0X0($v0)
/* 001292 0x80BC6360 8E0501F4 */ lw	$a1, 0X1F4($s0)
/* 001293 0x80BC6364 8E060210 */ lw	$a2, 0X210($s0)
/* 001294 0x80BC6368 920701F2 */ lbu	$a3, 0X1F2($s0)
/* 001295 0x80BC636C 3C0B80BC */ lui	$t3, %hi(func_80BC60BC)
/* 001296 0x80BC6370 3C0C80BC */ lui	$t4, %hi(func_80BC617C)
/* 001297 0x80BC6374 258C617C */ addiu	$t4, $t4, %lo(func_80BC617C)
/* 001298 0x80BC6378 256B60BC */ addiu	$t3, $t3, %lo(func_80BC60BC)
/* 001299 0x80BC637C AFAB0010 */ sw	$t3, 0X10($sp)
/* 001300 0x80BC6380 AFAC0014 */ sw	$t4, 0X14($sp)
/* 001301 0x80BC6384 AFB00018 */ sw	$s0, 0X18($sp)
/* 001302 0x80BC6388 8E2D02B0 */ lw	$t5, 0X2B0($s1)
/* 001303 0x80BC638C 8FA400AC */ lw	$a0, 0XAC($sp)
/* 001304 0x80BC6390 0C04D36F */ jal	SkelAnime_DrawSV2
/* 001305 0x80BC6394 AFAD001C */ sw	$t5, 0X1C($sp)
/* 001306 0x80BC6398 10000058 */ b	.L80BC64FC
/* 001307 0x80BC639C AE2202B0 */ sw	$v0, 0X2B0($s1)
.L80BC63A0:
/* 001308 0x80BC63A0 8DC40000 */ lw	$a0, 0X0($t6)
/* 001309 0x80BC63A4 0C04B0A3 */ jal	func_8012C28C
/* 001310 0x80BC63A8 AFA80094 */ sw	$t0, 0X94($sp)
/* 001311 0x80BC63AC 8FAF00AC */ lw	$t7, 0XAC($sp)
/* 001312 0x80BC63B0 0C04B0B7 */ jal	func_8012C2DC
/* 001313 0x80BC63B4 8DE40000 */ lw	$a0, 0X0($t7)
/* 001314 0x80BC63B8 8FA80094 */ lw	$t0, 0X94($sp)
/* 001315 0x80BC63BC 8E2202C0 */ lw	$v0, 0X2C0($s1)
/* 001316 0x80BC63C0 3C19DB06 */ lui	$t9, 0xDB06
/* 001317 0x80BC63C4 37390020 */ ori	$t9, $t9, 0X20
/* 001318 0x80BC63C8 24580008 */ addiu	$t8, $v0, 0X8
/* 001319 0x80BC63CC AE3802C0 */ sw	$t8, 0X2C0($s1)
/* 001320 0x80BC63D0 AC590000 */ sw	$t9, 0X0($v0)
/* 001321 0x80BC63D4 8FAA00AC */ lw	$t2, 0XAC($sp)
/* 001322 0x80BC63D8 920B0339 */ lbu	$t3, 0X339($s0)
/* 001323 0x80BC63DC 92070338 */ lbu	$a3, 0X338($s0)
/* 001324 0x80BC63E0 92060337 */ lbu	$a2, 0X337($s0)
/* 001325 0x80BC63E4 92050336 */ lbu	$a1, 0X336($s0)
/* 001326 0x80BC63E8 8D440000 */ lw	$a0, 0X0($t2)
/* 001327 0x80BC63EC AFA80094 */ sw	$t0, 0X94($sp)
/* 001328 0x80BC63F0 AFA20064 */ sw	$v0, 0X64($sp)
/* 001329 0x80BC63F4 0C04B394 */ jal	Gfx_EnvColor
/* 001330 0x80BC63F8 AFAB0010 */ sw	$t3, 0X10($sp)
/* 001331 0x80BC63FC 8FA30064 */ lw	$v1, 0X64($sp)
/* 001332 0x80BC6400 8FA80094 */ lw	$t0, 0X94($sp)
/* 001333 0x80BC6404 AC620004 */ sw	$v0, 0X4($v1)
/* 001334 0x80BC6408 8E2202C0 */ lw	$v0, 0X2C0($s1)
/* 001335 0x80BC640C 3C0DDB06 */ lui	$t5, 0xDB06
/* 001336 0x80BC6410 35AD0028 */ ori	$t5, $t5, 0X28
/* 001337 0x80BC6414 244C0008 */ addiu	$t4, $v0, 0X8
/* 001338 0x80BC6418 AE2C02C0 */ sw	$t4, 0X2C0($s1)
/* 001339 0x80BC641C AC4D0000 */ sw	$t5, 0X0($v0)
/* 001340 0x80BC6420 8FAF0098 */ lw	$t7, 0X98($sp)
/* 001341 0x80BC6424 8FAE00AC */ lw	$t6, 0XAC($sp)
/* 001342 0x80BC6428 92180339 */ lbu	$t8, 0X339($s0)
/* 001343 0x80BC642C 91E50000 */ lbu	$a1, 0X0($t7)
/* 001344 0x80BC6430 91E60001 */ lbu	$a2, 0X1($t7)
/* 001345 0x80BC6434 91E70002 */ lbu	$a3, 0X2($t7)
/* 001346 0x80BC6438 8DC40000 */ lw	$a0, 0X0($t6)
/* 001347 0x80BC643C AFA80094 */ sw	$t0, 0X94($sp)
/* 001348 0x80BC6440 AFA20060 */ sw	$v0, 0X60($sp)
/* 001349 0x80BC6444 0C04B394 */ jal	Gfx_EnvColor
/* 001350 0x80BC6448 AFB80010 */ sw	$t8, 0X10($sp)
/* 001351 0x80BC644C 8FA30060 */ lw	$v1, 0X60($sp)
/* 001352 0x80BC6450 8FA80094 */ lw	$t0, 0X94($sp)
/* 001353 0x80BC6454 AC620004 */ sw	$v0, 0X4($v1)
/* 001354 0x80BC6458 8E2202C0 */ lw	$v0, 0X2C0($s1)
/* 001355 0x80BC645C 3C0ADB06 */ lui	$t2, 0xDB06
/* 001356 0x80BC6460 354A002C */ ori	$t2, $t2, 0X2C
/* 001357 0x80BC6464 24590008 */ addiu	$t9, $v0, 0X8
/* 001358 0x80BC6468 AE3902C0 */ sw	$t9, 0X2C0($s1)
/* 001359 0x80BC646C AC4A0000 */ sw	$t2, 0X0($v0)
/* 001360 0x80BC6470 8FAB00AC */ lw	$t3, 0XAC($sp)
/* 001361 0x80BC6474 920C0339 */ lbu	$t4, 0X339($s0)
/* 001362 0x80BC6478 91070002 */ lbu	$a3, 0X2($t0)
/* 001363 0x80BC647C 91060001 */ lbu	$a2, 0X1($t0)
/* 001364 0x80BC6480 91050000 */ lbu	$a1, 0X0($t0)
/* 001365 0x80BC6484 8D640000 */ lw	$a0, 0X0($t3)
/* 001366 0x80BC6488 AFA2005C */ sw	$v0, 0X5C($sp)
/* 001367 0x80BC648C 0C04B394 */ jal	Gfx_EnvColor
/* 001368 0x80BC6490 AFAC0010 */ sw	$t4, 0X10($sp)
/* 001369 0x80BC6494 8FA3005C */ lw	$v1, 0X5C($sp)
/* 001370 0x80BC6498 3C0EDB06 */ lui	$t6, 0xDB06
/* 001371 0x80BC649C 35CE0030 */ ori	$t6, $t6, 0X30
/* 001372 0x80BC64A0 AC620004 */ sw	$v0, 0X4($v1)
/* 001373 0x80BC64A4 8E2202C0 */ lw	$v0, 0X2C0($s1)
/* 001374 0x80BC64A8 3C0F801B */ lui	$t7, %hi(D_801AEF88)
/* 001375 0x80BC64AC 25EFEF88 */ addiu	$t7, $t7, %lo(D_801AEF88)
/* 001376 0x80BC64B0 244D0008 */ addiu	$t5, $v0, 0X8
/* 001377 0x80BC64B4 AE2D02C0 */ sw	$t5, 0X2C0($s1)
/* 001378 0x80BC64B8 AC4F0004 */ sw	$t7, 0X4($v0)
/* 001379 0x80BC64BC AC4E0000 */ sw	$t6, 0X0($v0)
/* 001380 0x80BC64C0 8E0501F4 */ lw	$a1, 0X1F4($s0)
/* 001381 0x80BC64C4 8E060210 */ lw	$a2, 0X210($s0)
/* 001382 0x80BC64C8 920701F2 */ lbu	$a3, 0X1F2($s0)
/* 001383 0x80BC64CC 3C1880BC */ lui	$t8, %hi(func_80BC60BC)
/* 001384 0x80BC64D0 3C1980BC */ lui	$t9, %hi(func_80BC617C)
/* 001385 0x80BC64D4 2739617C */ addiu	$t9, $t9, %lo(func_80BC617C)
/* 001386 0x80BC64D8 271860BC */ addiu	$t8, $t8, %lo(func_80BC60BC)
/* 001387 0x80BC64DC AFB80010 */ sw	$t8, 0X10($sp)
/* 001388 0x80BC64E0 AFB90014 */ sw	$t9, 0X14($sp)
/* 001389 0x80BC64E4 AFB00018 */ sw	$s0, 0X18($sp)
/* 001390 0x80BC64E8 8E2A02C0 */ lw	$t2, 0X2C0($s1)
/* 001391 0x80BC64EC 8FA400AC */ lw	$a0, 0XAC($sp)
/* 001392 0x80BC64F0 0C04D36F */ jal	SkelAnime_DrawSV2
/* 001393 0x80BC64F4 AFAA001C */ sw	$t2, 0X1C($sp)
/* 001394 0x80BC64F8 AE2202C0 */ sw	$v0, 0X2C0($s1)
.L80BC64FC:
/* 001395 0x80BC64FC 92020339 */ lbu	$v0, 0X339($s0)
/* 001396 0x80BC6500 240100FF */ li	$at, 0XFF
/* 001397 0x80BC6504 50400052 */ beqzl	$v0, .L80BC6650
/* 001398 0x80BC6508 8FA400AC */ lw	$a0, 0XAC($sp)
/* 001399 0x80BC650C 54410008 */ bnel	$v0, $at, .L80BC6530
/* 001400 0x80BC6510 8FA400AC */ lw	$a0, 0XAC($sp)
/* 001401 0x80BC6514 8FA400AC */ lw	$a0, 0XAC($sp)
/* 001402 0x80BC6518 00002825 */ move	$a1, $zero
/* 001403 0x80BC651C 0C04C77C */ jal	func_80131DF0
/* 001404 0x80BC6520 24060001 */ li	$a2, 0X1
/* 001405 0x80BC6524 10000006 */ b	.L80BC6540
/* 001406 0x80BC6528 8E2302B0 */ lw	$v1, 0X2B0($s1)
/* 001407 0x80BC652C 8FA400AC */ lw	$a0, 0XAC($sp)
.L80BC6530:
/* 001408 0x80BC6530 24050001 */ li	$a1, 0X1
/* 001409 0x80BC6534 0C04C77C */ jal	func_80131DF0
/* 001410 0x80BC6538 24060002 */ li	$a2, 0X2
/* 001411 0x80BC653C 8E2302C0 */ lw	$v1, 0X2C0($s1)
.L80BC6540:
/* 001412 0x80BC6540 3C0BE700 */ lui	$t3, 0xE700
/* 001413 0x80BC6544 AC6B0000 */ sw	$t3, 0X0($v1)
/* 001414 0x80BC6548 AC600004 */ sw	$zero, 0X4($v1)
/* 001415 0x80BC654C 3C0CFB00 */ lui	$t4, 0xFB00
/* 001416 0x80BC6550 AC6C0008 */ sw	$t4, 0X8($v1)
/* 001417 0x80BC6554 9219033B */ lbu	$t9, 0X33B($s0)
/* 001418 0x80BC6558 920E033A */ lbu	$t6, 0X33A($s0)
/* 001419 0x80BC655C 920D033C */ lbu	$t5, 0X33C($s0)
/* 001420 0x80BC6560 00195400 */ sll	$t2, $t9, 16
/* 001421 0x80BC6564 000E7E00 */ sll	$t7, $t6, 24
/* 001422 0x80BC6568 01EA5825 */ or	$t3, $t7, $t2
/* 001423 0x80BC656C 920F0339 */ lbu	$t7, 0X339($s0)
/* 001424 0x80BC6570 000D7200 */ sll	$t6, $t5, 8
/* 001425 0x80BC6574 016EC025 */ or	$t8, $t3, $t6
/* 001426 0x80BC6578 030F5025 */ or	$t2, $t8, $t7
/* 001427 0x80BC657C AC6A000C */ sw	$t2, 0XC($v1)
/* 001428 0x80BC6580 26040238 */ addiu	$a0, $s0, 0X238
/* 001429 0x80BC6584 0C060083 */ jal	SysMatrix_SetCurrentState
/* 001430 0x80BC6588 AFA3009C */ sw	$v1, 0X9C($sp)
/* 001431 0x80BC658C 8FA3009C */ lw	$v1, 0X9C($sp)
/* 001432 0x80BC6590 3C0CDA38 */ lui	$t4, 0xDA38
/* 001433 0x80BC6594 358C0003 */ ori	$t4, $t4, 0X3
/* 001434 0x80BC6598 AC6C0010 */ sw	$t4, 0X10($v1)
/* 001435 0x80BC659C 8FAD00AC */ lw	$t5, 0XAC($sp)
/* 001436 0x80BC65A0 8DA40000 */ lw	$a0, 0X0($t5)
/* 001437 0x80BC65A4 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 001438 0x80BC65A8 AFA3009C */ sw	$v1, 0X9C($sp)
/* 001439 0x80BC65AC 8FA3009C */ lw	$v1, 0X9C($sp)
/* 001440 0x80BC65B0 3C0B0600 */ lui	$t3, 0x0600
/* 001441 0x80BC65B4 256B6E08 */ addiu	$t3, $t3, 0X6E08
/* 001442 0x80BC65B8 AC620014 */ sw	$v0, 0X14($v1)
/* 001443 0x80BC65BC 3C02DE00 */ lui	$v0, 0xDE00
/* 001444 0x80BC65C0 AC620018 */ sw	$v0, 0X18($v1)
/* 001445 0x80BC65C4 AC6B001C */ sw	$t3, 0X1C($v1)
/* 001446 0x80BC65C8 3C0E0600 */ lui	$t6, 0x0600
/* 001447 0x80BC65CC 25CE6F38 */ addiu	$t6, $t6, 0X6F38
/* 001448 0x80BC65D0 AC6E0024 */ sw	$t6, 0X24($v1)
/* 001449 0x80BC65D4 AC620020 */ sw	$v0, 0X20($v1)
/* 001450 0x80BC65D8 3C19E700 */ lui	$t9, 0xE700
/* 001451 0x80BC65DC AC790028 */ sw	$t9, 0X28($v1)
/* 001452 0x80BC65E0 AC60002C */ sw	$zero, 0X2C($v1)
/* 001453 0x80BC65E4 8FA40098 */ lw	$a0, 0X98($sp)
/* 001454 0x80BC65E8 3C18FB00 */ lui	$t8, 0xFB00
/* 001455 0x80BC65EC AC780030 */ sw	$t8, 0X30($v1)
/* 001456 0x80BC65F0 908B0001 */ lbu	$t3, 0X1($a0)
/* 001457 0x80BC65F4 908A0000 */ lbu	$t2, 0X0($a0)
/* 001458 0x80BC65F8 908F0002 */ lbu	$t7, 0X2($a0)
/* 001459 0x80BC65FC 000B7400 */ sll	$t6, $t3, 16
/* 001460 0x80BC6600 000A6600 */ sll	$t4, $t2, 24
/* 001461 0x80BC6604 018EC825 */ or	$t9, $t4, $t6
/* 001462 0x80BC6608 920C0339 */ lbu	$t4, 0X339($s0)
/* 001463 0x80BC660C 000F5200 */ sll	$t2, $t7, 8
/* 001464 0x80BC6610 032A6825 */ or	$t5, $t9, $t2
/* 001465 0x80BC6614 01AC7025 */ or	$t6, $t5, $t4
/* 001466 0x80BC6618 AC6E0034 */ sw	$t6, 0X34($v1)
/* 001467 0x80BC661C 3C180600 */ lui	$t8, 0x0600
/* 001468 0x80BC6620 27186EA8 */ addiu	$t8, $t8, 0X6EA8
/* 001469 0x80BC6624 AC78003C */ sw	$t8, 0X3C($v1)
/* 001470 0x80BC6628 AC620038 */ sw	$v0, 0X38($v1)
/* 001471 0x80BC662C 920F0339 */ lbu	$t7, 0X339($s0)
/* 001472 0x80BC6630 240100FF */ li	$at, 0XFF
/* 001473 0x80BC6634 24790040 */ addiu	$t9, $v1, 0X40
/* 001474 0x80BC6638 15E10003 */ bne	$t7, $at, .L80BC6648
/* 001475 0x80BC663C 246A0040 */ addiu	$t2, $v1, 0X40
/* 001476 0x80BC6640 10000002 */ b	.L80BC664C
/* 001477 0x80BC6644 AE3902B0 */ sw	$t9, 0X2B0($s1)
.L80BC6648:
/* 001478 0x80BC6648 AE2A02C0 */ sw	$t2, 0X2C0($s1)
.L80BC664C:
/* 001479 0x80BC664C 8FA400AC */ lw	$a0, 0XAC($sp)
.L80BC6650:
/* 001480 0x80BC6650 3C010001 */ lui	$at, 0x0001
/* 001481 0x80BC6654 342187FC */ ori	$at, $at, 0X87FC
/* 001482 0x80BC6658 0C060083 */ jal	SysMatrix_SetCurrentState
/* 001483 0x80BC665C 00812021 */ addu	$a0, $a0, $at
/* 001484 0x80BC6660 3C014170 */ lui	$at, 0x4170
/* 001485 0x80BC6664 44816000 */ mtc1	$at, $f12
/* 001486 0x80BC6668 0C060704 */ jal	SysMatrix_GetStateTranslationAndScaledZ
/* 001487 0x80BC666C 27A50088 */ addiu	$a1, $sp, 0X88
/* 001488 0x80BC6670 8E0D01AC */ lw	$t5, 0X1AC($s0)
/* 001489 0x80BC6674 27AB0080 */ addiu	$t3, $sp, 0X80
/* 001490 0x80BC6678 2604027C */ addiu	$a0, $s0, 0X27C
/* 001491 0x80BC667C 89AE0030 */ lwl	$t6, 0X30($t5)
/* 001492 0x80BC6680 99AE0033 */ lwr	$t6, 0X33($t5)
/* 001493 0x80BC6684 3C014F80 */ lui	$at, 0x4F80
/* 001494 0x80BC6688 AD6E0000 */ sw	$t6, 0X0($t3)
/* 001495 0x80BC668C 95AE0034 */ lhu	$t6, 0X34($t5)
/* 001496 0x80BC6690 A56E0004 */ sh	$t6, 0X4($t3)
/* 001497 0x80BC6694 C7A40088 */ lwc1	$f4, 0X88($sp)
/* 001498 0x80BC6698 C7A8008C */ lwc1	$f8, 0X8C($sp)
/* 001499 0x80BC669C C7B00090 */ lwc1	$f16, 0X90($sp)
/* 001500 0x80BC66A0 4600218D */ trunc.w.s	$f6, $f4
/* 001501 0x80BC66A4 87B80080 */ lh	$t8, 0X80($sp)
/* 001502 0x80BC66A8 87AC0082 */ lh	$t4, 0X82($sp)
/* 001503 0x80BC66AC 4600428D */ trunc.w.s	$f10, $f8
/* 001504 0x80BC66B0 440B3000 */ mfc1	$t3, $f6
/* 001505 0x80BC66B4 4600848D */ trunc.w.s	$f18, $f16
/* 001506 0x80BC66B8 440A5000 */ mfc1	$t2, $f10
/* 001507 0x80BC66BC 030B6821 */ addu	$t5, $t8, $t3
/* 001508 0x80BC66C0 87AB0084 */ lh	$t3, 0X84($sp)
/* 001509 0x80BC66C4 018AC021 */ addu	$t8, $t4, $t2
/* 001510 0x80BC66C8 440C9000 */ mfc1	$t4, $f18
/* 001511 0x80BC66CC A7AD0080 */ sh	$t5, 0X80($sp)
/* 001512 0x80BC66D0 A7B80082 */ sh	$t8, 0X82($sp)
/* 001513 0x80BC66D4 016C5021 */ addu	$t2, $t3, $t4
/* 001514 0x80BC66D8 A7AA0084 */ sh	$t2, 0X84($sp)
/* 001515 0x80BC66DC 920E033A */ lbu	$t6, 0X33A($s0)
/* 001516 0x80BC66E0 000A3C00 */ sll	$a3, $t2, 16
/* 001517 0x80BC66E4 00183400 */ sll	$a2, $t8, 16
/* 001518 0x80BC66E8 AFAE0010 */ sw	$t6, 0X10($sp)
/* 001519 0x80BC66EC 920F033B */ lbu	$t7, 0X33B($s0)
/* 001520 0x80BC66F0 000D2C00 */ sll	$a1, $t5, 16
/* 001521 0x80BC66F4 00052C03 */ sra	$a1, $a1, 16
/* 001522 0x80BC66F8 AFAF0014 */ sw	$t7, 0X14($sp)
/* 001523 0x80BC66FC 9219033C */ lbu	$t9, 0X33C($s0)
/* 001524 0x80BC6700 00063403 */ sra	$a2, $a2, 16
/* 001525 0x80BC6704 00073C03 */ sra	$a3, $a3, 16
/* 001526 0x80BC6708 AFB90018 */ sw	$t9, 0X18($sp)
/* 001527 0x80BC670C 920B033D */ lbu	$t3, 0X33D($s0)
/* 001528 0x80BC6710 448B2000 */ mtc1	$t3, $f4
/* 001529 0x80BC6714 05610004 */ bgez	$t3, .L80BC6728
/* 001530 0x80BC6718 468021A0 */ cvt.s.w	$f6, $f4
/* 001531 0x80BC671C 44814000 */ mtc1	$at, $f8
/* 001532 0x80BC6720 00000000 */ nop
/* 001533 0x80BC6724 46083180 */ add.s	$f6, $f6, $f8
.L80BC6728:
/* 001534 0x80BC6728 3C0180BC */ lui	$at, %hi(D_80BC6990)
/* 001535 0x80BC672C C42A6990 */ lwc1	$f10, %lo(D_80BC6990)($at)
/* 001536 0x80BC6730 460A3402 */ mul.s	$f16, $f6, $f10
/* 001537 0x80BC6734 4600848D */ trunc.w.s	$f18, $f16
/* 001538 0x80BC6738 440D9000 */ mfc1	$t5, $f18
/* 001539 0x80BC673C 0C040698 */ jal	Lights_InitType2PositionalLight
/* 001540 0x80BC6740 AFAD001C */ sw	$t5, 0X1C($sp)
/* 001541 0x80BC6744 8FBF002C */ lw	$ra, 0X2C($sp)
/* 001542 0x80BC6748 8FB00024 */ lw	$s0, 0X24($sp)
/* 001543 0x80BC674C 8FB10028 */ lw	$s1, 0X28($sp)
/* 001544 0x80BC6750 03E00008 */ jr	$ra
/* 001545 0x80BC6754 27BD00A8 */ addiu	$sp, $sp, 0XA8
/* 001546 0x80BC6758 00000000 */ nop
/* 001547 0x80BC675C 00000000 */ nop

.section .late_rodata

glabel D_80BC6990
/* 001688 0x80BC6990 */ .word	0x3F48C8C9
/* 001689 0x80BC6994 */ .word	0x00000000
/* 001690 0x80BC6998 */ .word	0x00000000
/* 001691 0x80BC699C */ .word	0x00000000
