glabel func_80B121D8
/* 000222 0x80B121D8 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000223 0x80B121DC AFB10018 */ sw	$s1, 0X18($sp)
/* 000224 0x80B121E0 AFB00014 */ sw	$s0, 0X14($sp)
/* 000225 0x80B121E4 00808025 */ move	$s0, $a0
/* 000226 0x80B121E8 00A08825 */ move	$s1, $a1
/* 000227 0x80B121EC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000228 0x80B121F0 02002025 */ move	$a0, $s0
/* 000229 0x80B121F4 0C02E1C6 */ jal	func_800B8718
/* 000230 0x80B121F8 02202825 */ move	$a1, $s1
/* 000231 0x80B121FC 1040000C */ beqz	$v0, .L80B12230
/* 000232 0x80B12200 02002025 */ move	$a0, $s0
/* 000233 0x80B12204 3C0E80B1 */ lui	$t6, %hi(func_80B1202C)
/* 000234 0x80B12208 25CE202C */ addiu	$t6, $t6, %lo(func_80B1202C)
/* 000235 0x80B1220C AE0E02A8 */ sw	$t6, 0X2A8($s0)
/* 000236 0x80B12210 02202025 */ move	$a0, $s1
/* 000237 0x80B12214 240508D4 */ li	$a1, 0X8D4
/* 000238 0x80B12218 0C05462C */ jal	func_801518B0
/* 000239 0x80B1221C 00003025 */ move	$a2, $zero
/* 000240 0x80B12220 0C2C47D1 */ jal	func_80B11F44
/* 000241 0x80B12224 02202025 */ move	$a0, $s1
/* 000242 0x80B12228 10000026 */ b	.L80B122C4
/* 000243 0x80B1222C AE0202A0 */ sw	$v0, 0X2A0($s0)
.L80B12230:
/* 000244 0x80B12230 0C02E134 */ jal	func_800B84D0
/* 000245 0x80B12234 02202825 */ move	$a1, $s1
/* 000246 0x80B12238 10400005 */ beqz	$v0, .L80B12250
/* 000247 0x80B1223C 3C014348 */ lui	$at, 0x4348
/* 000248 0x80B12240 3C0F80B1 */ lui	$t7, %hi(func_80B1217C)
/* 000249 0x80B12244 25EF217C */ addiu	$t7, $t7, %lo(func_80B1217C)
/* 000250 0x80B12248 1000001E */ b	.L80B122C4
/* 000251 0x80B1224C AE0F02A8 */ sw	$t7, 0X2A8($s0)
.L80B12250:
/* 000252 0x80B12250 C6040098 */ lwc1	$f4, 0X98($s0)
/* 000253 0x80B12254 44813000 */ mtc1	$at, $f6
/* 000254 0x80B12258 86180092 */ lh	$t8, 0X92($s0)
/* 000255 0x80B1225C 861900BE */ lh	$t9, 0XBE($s0)
/* 000256 0x80B12260 4606203C */ c.lt.s	$f4, $f6
/* 000257 0x80B12264 03191023 */ subu	$v0, $t8, $t9
/* 000258 0x80B12268 00021400 */ sll	$v0, $v0, 16
/* 000259 0x80B1226C 45000015 */ bc1f .L80B122C4
/* 000260 0x80B12270 00021403 */ sra	$v0, $v0, 16
/* 000261 0x80B12274 04410003 */ bgez	$v0, .L80B12284
/* 000262 0x80B12278 00401825 */ move	$v1, $v0
/* 000263 0x80B1227C 10000001 */ b	.L80B12284
/* 000264 0x80B12280 00021823 */ negu	$v1, $v0
.L80B12284:
/* 000265 0x80B12284 28614301 */ slti	$at, $v1, 0X4301
/* 000266 0x80B12288 1020000E */ beqz	$at, .L80B122C4
/* 000267 0x80B1228C 240808D3 */ li	$t0, 0X8D3
/* 000268 0x80B12290 A6080116 */ sh	$t0, 0X116($s0)
/* 000269 0x80B12294 02002025 */ move	$a0, $s0
/* 000270 0x80B12298 02202825 */ move	$a1, $s1
/* 000271 0x80B1229C 0C02E185 */ jal	func_800B8614
/* 000272 0x80B122A0 3C0642C8 */ lui	$a2, 0x42C8
/* 000273 0x80B122A4 3C0142C8 */ lui	$at, 0x42C8
/* 000274 0x80B122A8 44810000 */ mtc1	$at, $f0
/* 000275 0x80B122AC 02002025 */ move	$a0, $s0
/* 000276 0x80B122B0 02202825 */ move	$a1, $s1
/* 000277 0x80B122B4 44060000 */ mfc1	$a2, $f0
/* 000278 0x80B122B8 44070000 */ mfc1	$a3, $f0
/* 000279 0x80B122BC 0C02E1D3 */ jal	func_800B874C
/* 000280 0x80B122C0 00000000 */ nop
.L80B122C4:
/* 000281 0x80B122C4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000282 0x80B122C8 8FB00014 */ lw	$s0, 0X14($sp)
/* 000283 0x80B122CC 8FB10018 */ lw	$s1, 0X18($sp)
/* 000284 0x80B122D0 03E00008 */ jr	$ra
/* 000285 0x80B122D4 27BD0020 */ addiu	$sp, $sp, 0X20

