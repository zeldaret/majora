glabel func_8098A234
/* 001085 0x8098A234 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001086 0x8098A238 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001087 0x8098A23C AFA5001C */ sw	$a1, 0X1C($sp)
/* 001088 0x8098A240 00803825 */ move	$a3, $a0
/* 001089 0x8098A244 94EF0090 */ lhu	$t7, 0X90($a3)
/* 001090 0x8098A248 8FAE001C */ lw	$t6, 0X1C($sp)
/* 001091 0x8098A24C 31F80020 */ andi	$t8, $t7, 0X20
/* 001092 0x8098A250 17000081 */ bnez	$t8, .L8098A458
/* 001093 0x8098A254 8DC31CCC */ lw	$v1, 0X1CCC($t6)
/* 001094 0x8098A258 9062014B */ lbu	$v0, 0X14B($v1)
/* 001095 0x8098A25C 24060001 */ li	$a2, 0X1
/* 001096 0x8098A260 24010002 */ li	$at, 0X2
/* 001097 0x8098A264 50460037 */ beql	$v0, $a2, .L8098A344
/* 001098 0x8098A268 94EF0280 */ lhu	$t7, 0X280($a3)
/* 001099 0x8098A26C 10410011 */ beq	$v0, $at, .L8098A2B4
/* 001100 0x8098A270 24080003 */ li	$t0, 0X3
/* 001101 0x8098A274 10480057 */ beq	$v0, $t0, .L8098A3D4
/* 001102 0x8098A278 24010004 */ li	$at, 0X4
/* 001103 0x8098A27C 54410077 */ bnel	$v0, $at, .L8098A45C
/* 001104 0x8098A280 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001105 0x8098A284 84F9028C */ lh	$t9, 0X28C($a3)
/* 001106 0x8098A288 50D90074 */ beql	$a2, $t9, .L8098A45C
/* 001107 0x8098A28C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001108 0x8098A290 94EA0280 */ lhu	$t2, 0X280($a3)
/* 001109 0x8098A294 A4E6028C */ sh	$a2, 0X28C($a3)
/* 001110 0x8098A298 00E02025 */ move	$a0, $a3
/* 001111 0x8098A29C 314BFFFD */ andi	$t3, $t2, 0XFFFD
/* 001112 0x8098A2A0 A4EB0280 */ sh	$t3, 0X280($a3)
/* 001113 0x8098A2A4 0C2626B7 */ jal	func_80989ADC
/* 001114 0x8098A2A8 8FA5001C */ lw	$a1, 0X1C($sp)
/* 001115 0x8098A2AC 1000006B */ b	.L8098A45C
/* 001116 0x8098A2B0 8FBF0014 */ lw	$ra, 0X14($sp)
.L8098A2B4:
/* 001117 0x8098A2B4 94EC0280 */ lhu	$t4, 0X280($a3)
/* 001118 0x8098A2B8 84E2028C */ lh	$v0, 0X28C($a3)
/* 001119 0x8098A2BC 24080004 */ li	$t0, 0X4
/* 001120 0x8098A2C0 318DFFFD */ andi	$t5, $t4, 0XFFFD
/* 001121 0x8098A2C4 11020014 */ beq	$t0, $v0, .L8098A318
/* 001122 0x8098A2C8 A4ED0280 */ sh	$t5, 0X280($a3)
/* 001123 0x8098A2CC 3C013F80 */ lui	$at, 0x3F80
/* 001124 0x8098A2D0 44812000 */ mtc1	$at, $f4
/* 001125 0x8098A2D4 C4660070 */ lwc1	$f6, 0X70($v1)
/* 001126 0x8098A2D8 3C058099 */ lui	$a1, %hi(D_8098C35C)
/* 001127 0x8098A2DC 24A5C35C */ addiu	$a1, $a1, %lo(D_8098C35C)
/* 001128 0x8098A2E0 4606203C */ c.lt.s	$f4, $f6
/* 001129 0x8098A2E4 24E4014C */ addiu	$a0, $a3, 0X14C
/* 001130 0x8098A2E8 24060002 */ li	$a2, 0X2
/* 001131 0x8098A2EC 4502000B */ bc1fl .L8098A31C
/* 001132 0x8098A2F0 24030005 */ li	$v1, 0X5
/* 001133 0x8098A2F4 A4E8028C */ sh	$t0, 0X28C($a3)
/* 001134 0x8098A2F8 0C262450 */ jal	func_80989140
/* 001135 0x8098A2FC AFA70018 */ sw	$a3, 0X18($sp)
/* 001136 0x8098A300 8FA70018 */ lw	$a3, 0X18($sp)
/* 001137 0x8098A304 3C0E8099 */ lui	$t6, %hi(func_8098B004)
/* 001138 0x8098A308 25CEB004 */ addiu	$t6, $t6, %lo(func_8098B004)
/* 001139 0x8098A30C 24080004 */ li	$t0, 0X4
/* 001140 0x8098A310 ACEE0144 */ sw	$t6, 0X144($a3)
/* 001141 0x8098A314 84E2028C */ lh	$v0, 0X28C($a3)
.L8098A318:
/* 001142 0x8098A318 24030005 */ li	$v1, 0X5
.L8098A31C:
/* 001143 0x8098A31C 5062004F */ beql	$v1, $v0, .L8098A45C
/* 001144 0x8098A320 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001145 0x8098A324 1102004C */ beq	$t0, $v0, .L8098A458
/* 001146 0x8098A328 00E02025 */ move	$a0, $a3
/* 001147 0x8098A32C A4E3028C */ sh	$v1, 0X28C($a3)
/* 001148 0x8098A330 0C2626B7 */ jal	func_80989ADC
/* 001149 0x8098A334 8FA5001C */ lw	$a1, 0X1C($sp)
/* 001150 0x8098A338 10000048 */ b	.L8098A45C
/* 001151 0x8098A33C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001152 0x8098A340 94EF0280 */ lhu	$t7, 0X280($a3)
.L8098A344:
/* 001153 0x8098A344 84E2028C */ lh	$v0, 0X28C($a3)
/* 001154 0x8098A348 24090002 */ li	$t1, 0X2
/* 001155 0x8098A34C 31F8FFFD */ andi	$t8, $t7, 0XFFFD
/* 001156 0x8098A350 11220016 */ beq	$t1, $v0, .L8098A3AC
/* 001157 0x8098A354 A4F80280 */ sh	$t8, 0X280($a3)
/* 001158 0x8098A358 3C013F80 */ lui	$at, 0x3F80
/* 001159 0x8098A35C 44814000 */ mtc1	$at, $f8
/* 001160 0x8098A360 C46A0070 */ lwc1	$f10, 0X70($v1)
/* 001161 0x8098A364 3C058099 */ lui	$a1, %hi(D_8098C35C)
/* 001162 0x8098A368 24A5C35C */ addiu	$a1, $a1, %lo(D_8098C35C)
/* 001163 0x8098A36C 460A403C */ c.lt.s	$f8, $f10
/* 001164 0x8098A370 24E4014C */ addiu	$a0, $a3, 0X14C
/* 001165 0x8098A374 2406000B */ li	$a2, 0XB
/* 001166 0x8098A378 4502000D */ bc1fl .L8098A3B0
/* 001167 0x8098A37C 24080003 */ li	$t0, 0X3
/* 001168 0x8098A380 A4E9028C */ sh	$t1, 0X28C($a3)
/* 001169 0x8098A384 0C262450 */ jal	func_80989140
/* 001170 0x8098A388 AFA70018 */ sw	$a3, 0X18($sp)
/* 001171 0x8098A38C 8FA70018 */ lw	$a3, 0X18($sp)
/* 001172 0x8098A390 3C0A8099 */ lui	$t2, %hi(func_8098A618)
/* 001173 0x8098A394 24190032 */ li	$t9, 0X32
/* 001174 0x8098A398 254AA618 */ addiu	$t2, $t2, %lo(func_8098A618)
/* 001175 0x8098A39C 24090002 */ li	$t1, 0X2
/* 001176 0x8098A3A0 A4F90282 */ sh	$t9, 0X282($a3)
/* 001177 0x8098A3A4 ACEA0144 */ sw	$t2, 0X144($a3)
/* 001178 0x8098A3A8 84E2028C */ lh	$v0, 0X28C($a3)
.L8098A3AC:
/* 001179 0x8098A3AC 24080003 */ li	$t0, 0X3
.L8098A3B0:
/* 001180 0x8098A3B0 5102002A */ beql	$t0, $v0, .L8098A45C
/* 001181 0x8098A3B4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001182 0x8098A3B8 11220027 */ beq	$t1, $v0, .L8098A458
/* 001183 0x8098A3BC 00E02025 */ move	$a0, $a3
/* 001184 0x8098A3C0 A4E8028C */ sh	$t0, 0X28C($a3)
/* 001185 0x8098A3C4 0C2626B7 */ jal	func_80989ADC
/* 001186 0x8098A3C8 8FA5001C */ lw	$a1, 0X1C($sp)
/* 001187 0x8098A3CC 10000023 */ b	.L8098A45C
/* 001188 0x8098A3D0 8FBF0014 */ lw	$ra, 0X14($sp)
.L8098A3D4:
/* 001189 0x8098A3D4 94EB0280 */ lhu	$t3, 0X280($a3)
/* 001190 0x8098A3D8 84E2028C */ lh	$v0, 0X28C($a3)
/* 001191 0x8098A3DC 24080006 */ li	$t0, 0X6
/* 001192 0x8098A3E0 316CFFFD */ andi	$t4, $t3, 0XFFFD
/* 001193 0x8098A3E4 11020014 */ beq	$t0, $v0, .L8098A438
/* 001194 0x8098A3E8 A4EC0280 */ sh	$t4, 0X280($a3)
/* 001195 0x8098A3EC 3C013F80 */ lui	$at, 0x3F80
/* 001196 0x8098A3F0 44818000 */ mtc1	$at, $f16
/* 001197 0x8098A3F4 C4720070 */ lwc1	$f18, 0X70($v1)
/* 001198 0x8098A3F8 3C058099 */ lui	$a1, %hi(D_8098C35C)
/* 001199 0x8098A3FC 24A5C35C */ addiu	$a1, $a1, %lo(D_8098C35C)
/* 001200 0x8098A400 4612803C */ c.lt.s	$f16, $f18
/* 001201 0x8098A404 24E4014C */ addiu	$a0, $a3, 0X14C
/* 001202 0x8098A408 24060002 */ li	$a2, 0X2
/* 001203 0x8098A40C 4502000B */ bc1fl .L8098A43C
/* 001204 0x8098A410 24030007 */ li	$v1, 0X7
/* 001205 0x8098A414 A4E8028C */ sh	$t0, 0X28C($a3)
/* 001206 0x8098A418 0C262450 */ jal	func_80989140
/* 001207 0x8098A41C AFA70018 */ sw	$a3, 0X18($sp)
/* 001208 0x8098A420 8FA70018 */ lw	$a3, 0X18($sp)
/* 001209 0x8098A424 3C0D8099 */ lui	$t5, %hi(func_8098A938)
/* 001210 0x8098A428 25ADA938 */ addiu	$t5, $t5, %lo(func_8098A938)
/* 001211 0x8098A42C 24080006 */ li	$t0, 0X6
/* 001212 0x8098A430 ACED0144 */ sw	$t5, 0X144($a3)
/* 001213 0x8098A434 84E2028C */ lh	$v0, 0X28C($a3)
.L8098A438:
/* 001214 0x8098A438 24030007 */ li	$v1, 0X7
.L8098A43C:
/* 001215 0x8098A43C 50620007 */ beql	$v1, $v0, .L8098A45C
/* 001216 0x8098A440 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001217 0x8098A444 11020004 */ beq	$t0, $v0, .L8098A458
/* 001218 0x8098A448 00E02025 */ move	$a0, $a3
/* 001219 0x8098A44C A4E3028C */ sh	$v1, 0X28C($a3)
/* 001220 0x8098A450 0C2626B7 */ jal	func_80989ADC
/* 001221 0x8098A454 8FA5001C */ lw	$a1, 0X1C($sp)
.L8098A458:
/* 001222 0x8098A458 8FBF0014 */ lw	$ra, 0X14($sp)
.L8098A45C:
/* 001223 0x8098A45C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001224 0x8098A460 03E00008 */ jr	$ra
/* 001225 0x8098A464 00000000 */ nop

