glabel func_809D092C
/* 000255 0x809D092C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000256 0x809D0930 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000257 0x809D0934 AFA60020 */ sw	$a2, 0X20($sp)
/* 000258 0x809D0938 8CA21CCC */ lw	$v0, 0X1CCC($a1)
/* 000259 0x809D093C 3C014348 */ lui	$at, 0x4348
/* 000260 0x809D0940 44812000 */ mtc1	$at, $f4
/* 000261 0x809D0944 C4460028 */ lwc1	$f6, 0X28($v0)
/* 000262 0x809D0948 4606203C */ c.lt.s	$f4, $f6
/* 000263 0x809D094C 00000000 */ nop
/* 000264 0x809D0950 45020006 */ bc1fl .L809D096C
/* 000265 0x809D0954 AFA40018 */ sw	$a0, 0X18($sp)
/* 000266 0x809D0958 0C2747A9 */ jal	func_809D1EA4
/* 000267 0x809D095C 24060064 */ li	$a2, 0X64
/* 000268 0x809D0960 1000004D */ b	.L809D0A98
/* 000269 0x809D0964 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000270 0x809D0968 AFA40018 */ sw	$a0, 0X18($sp)
.L809D096C:
/* 000271 0x809D096C 0C021BF7 */ jal	randZeroOne
/* 000272 0x809D0970 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000273 0x809D0974 3C01809D */ lui	$at, %hi(D_809D7F98)
/* 000274 0x809D0978 C4287F98 */ lwc1	$f8, %lo(D_809D7F98)($at)
/* 000275 0x809D097C 8FA40018 */ lw	$a0, 0X18($sp)
/* 000276 0x809D0980 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000277 0x809D0984 4608003C */ c.lt.s	$f0, $f8
/* 000278 0x809D0988 93AE0023 */ lbu	$t6, 0X23($sp)
/* 000279 0x809D098C 3C01437A */ lui	$at, 0x437A
/* 000280 0x809D0990 45020008 */ bc1fl .L809D09B4
/* 000281 0x809D0994 C4800098 */ lwc1	$f0, 0X98($a0)
/* 000282 0x809D0998 55C00006 */ bnezl	$t6, .L809D09B4
/* 000283 0x809D099C C4800098 */ lwc1	$f0, 0X98($a0)
/* 000284 0x809D09A0 0C2749E0 */ jal	func_809D2780
/* 000285 0x809D09A4 00000000 */ nop
/* 000286 0x809D09A8 1000003B */ b	.L809D0A98
/* 000287 0x809D09AC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000288 0x809D09B0 C4800098 */ lwc1	$f0, 0X98($a0)
.L809D09B4:
/* 000289 0x809D09B4 44815000 */ mtc1	$at, $f10
/* 000290 0x809D09B8 3C014316 */ lui	$at, 0x4316
/* 000291 0x809D09BC 460A003E */ c.le.s	$f0, $f10
/* 000292 0x809D09C0 00000000 */ nop
/* 000293 0x809D09C4 4502001F */ bc1fl .L809D0A44
/* 000294 0x809D09C8 808F00B7 */ lb	$t7, 0XB7($a0)
/* 000295 0x809D09CC 44818000 */ mtc1	$at, $f16
/* 000296 0x809D09D0 00000000 */ nop
/* 000297 0x809D09D4 4610003E */ c.le.s	$f0, $f16
/* 000298 0x809D09D8 00000000 */ nop
/* 000299 0x809D09DC 45000014 */ bc1f .L809D0A30
/* 000300 0x809D09E0 00000000 */ nop
/* 000301 0x809D09E4 AFA40018 */ sw	$a0, 0X18($sp)
/* 000302 0x809D09E8 0C021BF7 */ jal	randZeroOne
/* 000303 0x809D09EC AFA5001C */ sw	$a1, 0X1C($sp)
/* 000304 0x809D09F0 3C013F00 */ lui	$at, 0x3F00
/* 000305 0x809D09F4 44819000 */ mtc1	$at, $f18
/* 000306 0x809D09F8 8FA40018 */ lw	$a0, 0X18($sp)
/* 000307 0x809D09FC 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000308 0x809D0A00 4612003C */ c.lt.s	$f0, $f18
/* 000309 0x809D0A04 00000000 */ nop
/* 000310 0x809D0A08 45000005 */ bc1f .L809D0A20
/* 000311 0x809D0A0C 00000000 */ nop
/* 000312 0x809D0A10 0C274D00 */ jal	func_809D3400
/* 000313 0x809D0A14 00000000 */ nop
/* 000314 0x809D0A18 1000001F */ b	.L809D0A98
/* 000315 0x809D0A1C 8FBF0014 */ lw	$ra, 0X14($sp)
.L809D0A20:
/* 000316 0x809D0A20 0C274D35 */ jal	func_809D34D4
/* 000317 0x809D0A24 00000000 */ nop
/* 000318 0x809D0A28 1000001B */ b	.L809D0A98
/* 000319 0x809D0A2C 8FBF0014 */ lw	$ra, 0X14($sp)
.L809D0A30:
/* 000320 0x809D0A30 0C274C1D */ jal	func_809D3074
/* 000321 0x809D0A34 00000000 */ nop
/* 000322 0x809D0A38 10000017 */ b	.L809D0A98
/* 000323 0x809D0A3C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000324 0x809D0A40 808F00B7 */ lb	$t7, 0XB7($a0)
.L809D0A44:
/* 000325 0x809D0A44 29E10008 */ slti	$at, $t7, 0X8
/* 000326 0x809D0A48 10200010 */ beqz	$at, .L809D0A8C
/* 000327 0x809D0A4C 00000000 */ nop
/* 000328 0x809D0A50 AFA40018 */ sw	$a0, 0X18($sp)
/* 000329 0x809D0A54 0C021BF7 */ jal	randZeroOne
/* 000330 0x809D0A58 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000331 0x809D0A5C 3C013F40 */ lui	$at, 0x3F40
/* 000332 0x809D0A60 44812000 */ mtc1	$at, $f4
/* 000333 0x809D0A64 8FA40018 */ lw	$a0, 0X18($sp)
/* 000334 0x809D0A68 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000335 0x809D0A6C 4604003C */ c.lt.s	$f0, $f4
/* 000336 0x809D0A70 00000000 */ nop
/* 000337 0x809D0A74 45000005 */ bc1f .L809D0A8C
/* 000338 0x809D0A78 00000000 */ nop
/* 000339 0x809D0A7C 0C274999 */ jal	func_809D2664
/* 000340 0x809D0A80 00000000 */ nop
/* 000341 0x809D0A84 10000004 */ b	.L809D0A98
/* 000342 0x809D0A88 8FBF0014 */ lw	$ra, 0X14($sp)
.L809D0A8C:
/* 000343 0x809D0A8C 0C274B7A */ jal	func_809D2DE8
/* 000344 0x809D0A90 00000000 */ nop
/* 000345 0x809D0A94 8FBF0014 */ lw	$ra, 0X14($sp)
.L809D0A98:
/* 000346 0x809D0A98 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000347 0x809D0A9C 03E00008 */ jr	$ra
/* 000348 0x809D0AA0 00000000 */ nop


.section .late_rodata

glabel D_809D7F98
/* 007834 0x809D7F98 */ .word	0x3E4CCCCD
