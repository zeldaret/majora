glabel func_808E9FC0
/* 005120 0x808E9FC0 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 005121 0x808E9FC4 AFB00020 */ sw	$s0, 0X20($sp)
/* 005122 0x808E9FC8 00808025 */ move	$s0, $a0
/* 005123 0x808E9FCC AFBF0024 */ sw	$ra, 0X24($sp)
/* 005124 0x808E9FD0 AFA5004C */ sw	$a1, 0X4C($sp)
/* 005125 0x808E9FD4 860E02C0 */ lh	$t6, 0X2C0($s0)
/* 005126 0x808E9FD8 25CF0001 */ addiu	$t7, $t6, 0X1
/* 005127 0x808E9FDC A60F02C0 */ sh	$t7, 0X2C0($s0)
/* 005128 0x808E9FE0 860202C0 */ lh	$v0, 0X2C0($s0)
/* 005129 0x808E9FE4 28410046 */ slti	$at, $v0, 0X46
/* 005130 0x808E9FE8 10200038 */ beqz	$at, .L808EA0CC
/* 005131 0x808E9FEC 30580001 */ andi	$t8, $v0, 0X1
/* 005132 0x808E9FF0 13000036 */ beqz	$t8, .L808EA0CC
/* 005133 0x808E9FF4 3C014322 */ lui	$at, 0x4322
/* 005134 0x808E9FF8 44816000 */ mtc1	$at, $f12
/* 005135 0x808E9FFC 0C05E565 */ jal	randZeroOneScaled
/* 005136 0x808EA000 00000000 */ nop
/* 005137 0x808EA004 4600010D */ trunc.w.s	$f4, $f0
/* 005138 0x808EA008 240100A2 */ li	$at, 0XA2
/* 005139 0x808EA00C 921902B1 */ lbu	$t9, 0X2B1($s0)
/* 005140 0x808EA010 3C0E808F */ lui	$t6, %hi(D_808EE060)
/* 005141 0x808EA014 440A2000 */ mfc1	$t2, $f4
/* 005142 0x808EA018 00194080 */ sll	$t0, $t9, 2
/* 005143 0x808EA01C 01194021 */ addu	$t0, $t0, $t9
/* 005144 0x808EA020 0141001A */ div	$zero, $t2, $at
/* 005145 0x808EA024 00084100 */ sll	$t0, $t0, 4
/* 005146 0x808EA028 00005810 */ mfhi	$t3
/* 005147 0x808EA02C 01194021 */ addu	$t0, $t0, $t9
/* 005148 0x808EA030 00084140 */ sll	$t0, $t0, 5
/* 005149 0x808EA034 000B6100 */ sll	$t4, $t3, 4
/* 005150 0x808EA038 010C6821 */ addu	$t5, $t0, $t4
/* 005151 0x808EA03C 25CEE060 */ addiu	$t6, $t6, %lo(D_808EE060)
/* 005152 0x808EA040 01AE1021 */ addu	$v0, $t5, $t6
/* 005153 0x808EA044 844F0000 */ lh	$t7, 0X0($v0)
/* 005154 0x808EA048 C60A0058 */ lwc1	$f10, 0X58($s0)
/* 005155 0x808EA04C C6120024 */ lwc1	$f18, 0X24($s0)
/* 005156 0x808EA050 448F3000 */ mtc1	$t7, $f6
/* 005157 0x808EA054 3C06808F */ lui	$a2, %hi(D_808F0394)
/* 005158 0x808EA058 3C07801D */ lui	$a3, %hi(D_801D15B0)
/* 005159 0x808EA05C 46803220 */ cvt.s.w	$f8, $f6
/* 005160 0x808EA060 24090258 */ li	$t1, 0X258
/* 005161 0x808EA064 24E715B0 */ addiu	$a3, $a3, %lo(D_801D15B0)
/* 005162 0x808EA068 24C60394 */ addiu	$a2, $a2, %lo(D_808F0394)
/* 005163 0x808EA06C 8FA4004C */ lw	$a0, 0X4C($sp)
/* 005164 0x808EA070 27A5003C */ addiu	$a1, $sp, 0X3C
/* 005165 0x808EA074 460A4402 */ mul.s	$f16, $f8, $f10
/* 005166 0x808EA078 46128100 */ add.s	$f4, $f16, $f18
/* 005167 0x808EA07C E7A4003C */ swc1	$f4, 0X3C($sp)
/* 005168 0x808EA080 84580002 */ lh	$t8, 0X2($v0)
/* 005169 0x808EA084 C60A005C */ lwc1	$f10, 0X5C($s0)
/* 005170 0x808EA088 C6120028 */ lwc1	$f18, 0X28($s0)
/* 005171 0x808EA08C 44983000 */ mtc1	$t8, $f6
/* 005172 0x808EA090 00000000 */ nop
/* 005173 0x808EA094 46803220 */ cvt.s.w	$f8, $f6
/* 005174 0x808EA098 460A4402 */ mul.s	$f16, $f8, $f10
/* 005175 0x808EA09C 46128100 */ add.s	$f4, $f16, $f18
/* 005176 0x808EA0A0 E7A40040 */ swc1	$f4, 0X40($sp)
/* 005177 0x808EA0A4 84590004 */ lh	$t9, 0X4($v0)
/* 005178 0x808EA0A8 C60A0060 */ lwc1	$f10, 0X60($s0)
/* 005179 0x808EA0AC C612002C */ lwc1	$f18, 0X2C($s0)
/* 005180 0x808EA0B0 44993000 */ mtc1	$t9, $f6
/* 005181 0x808EA0B4 AFA90010 */ sw	$t1, 0X10($sp)
/* 005182 0x808EA0B8 46803220 */ cvt.s.w	$f8, $f6
/* 005183 0x808EA0BC 460A4402 */ mul.s	$f16, $f8, $f10
/* 005184 0x808EA0C0 46128100 */ add.s	$f4, $f16, $f18
/* 005185 0x808EA0C4 0C02CC83 */ jal	EffectSS_SpawnIceSmoke
/* 005186 0x808EA0C8 E7A40044 */ swc1	$f4, 0X44($sp)
.L808EA0CC:
/* 005187 0x808EA0CC 02002025 */ move	$a0, $s0
/* 005188 0x808EA0D0 0C02E404 */ jal	func_800B9010
/* 005189 0x808EA0D4 24052144 */ li	$a1, 0X2144
/* 005190 0x808EA0D8 3C02808F */ lui	$v0, %hi(D_808EFE90)
/* 005191 0x808EA0DC 3C03808F */ lui	$v1, %hi(D_808EF4A0)
/* 005192 0x808EA0E0 2463F4A0 */ addiu	$v1, $v1, %lo(D_808EF4A0)
/* 005193 0x808EA0E4 2442FE90 */ addiu	$v0, $v0, %lo(D_808EFE90)
.L808EA0E8:
/* 005194 0x808EA0E8 904A000F */ lbu	$t2, 0XF($v0)
/* 005195 0x808EA0EC 2442FFF0 */ addiu	$v0, $v0, -0X10
/* 005196 0x808EA0F0 0043082B */ sltu	$at, $v0, $v1
/* 005197 0x808EA0F4 1020FFFC */ beqz	$at, .L808EA0E8
/* 005198 0x808EA0F8 A04A003F */ sb	$t2, 0X3F($v0)
/* 005199 0x808EA0FC 860202C0 */ lh	$v0, 0X2C0($s0)
/* 005200 0x808EA100 24010064 */ li	$at, 0X64
/* 005201 0x808EA104 54410006 */ bnel	$v0, $at, .L808EA120
/* 005202 0x808EA108 24010032 */ li	$at, 0X32
/* 005203 0x808EA10C 0C239ADA */ jal	func_808E6B68
/* 005204 0x808EA110 02002025 */ move	$a0, $s0
/* 005205 0x808EA114 10000009 */ b	.L808EA13C
/* 005206 0x808EA118 8FBF0024 */ lw	$ra, 0X24($sp)
/* 005207 0x808EA11C 24010032 */ li	$at, 0X32
.L808EA120:
/* 005208 0x808EA120 14410005 */ bne	$v0, $at, .L808EA138
/* 005209 0x808EA124 8FA8004C */ lw	$t0, 0X4C($sp)
/* 005210 0x808EA128 3C010001 */ lui	$at, 0x0001
/* 005211 0x808EA12C 00280821 */ addu	$at, $at, $t0
/* 005212 0x808EA130 240B00FF */ li	$t3, 0XFF
/* 005213 0x808EA134 A02B70C7 */ sb	$t3, 0X70C7($at)
.L808EA138:
/* 005214 0x808EA138 8FBF0024 */ lw	$ra, 0X24($sp)
.L808EA13C:
/* 005215 0x808EA13C 8FB00020 */ lw	$s0, 0X20($sp)
/* 005216 0x808EA140 27BD0048 */ addiu	$sp, $sp, 0X48
/* 005217 0x808EA144 03E00008 */ jr	$ra
/* 005218 0x808EA148 00000000 */ nop

