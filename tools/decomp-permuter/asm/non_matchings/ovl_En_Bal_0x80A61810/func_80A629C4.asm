glabel func_80A629C4
/* 001133 0x80A629C4 8C82018C */ lw	$v0, 0X18C($a0)
/* 001134 0x80A629C8 3C0E80A6 */ lui	$t6, %hi(func_80A624DC)
/* 001135 0x80A629CC 25CE24DC */ addiu	$t6, $t6, %lo(func_80A624DC)
/* 001136 0x80A629D0 11C2003A */ beq	$t6, $v0, .L80A62ABC
/* 001137 0x80A629D4 3C0F80A6 */ lui	$t7, %hi(func_80A61B5C)
/* 001138 0x80A629D8 25EF1B5C */ addiu	$t7, $t7, %lo(func_80A61B5C)
/* 001139 0x80A629DC 11E20037 */ beq	$t7, $v0, .L80A62ABC
/* 001140 0x80A629E0 3C014140 */ lui	$at, 0x4140
/* 001141 0x80A629E4 C4820088 */ lwc1	$f2, 0X88($a0)
/* 001142 0x80A629E8 C484000C */ lwc1	$f4, 0XC($a0)
/* 001143 0x80A629EC C4860028 */ lwc1	$f6, 0X28($a0)
/* 001144 0x80A629F0 44809000 */ mtc1	$zero, $f18
/* 001145 0x80A629F4 46022001 */ sub.s	$f0, $f4, $f2
/* 001146 0x80A629F8 44815000 */ mtc1	$at, $f10
/* 001147 0x80A629FC 3C01437F */ lui	$at, 0x437F
/* 001148 0x80A62A00 46023301 */ sub.s	$f12, $f6, $f2
/* 001149 0x80A62A04 44813000 */ mtc1	$at, $f6
/* 001150 0x80A62A08 3C014F00 */ lui	$at, 0x4F00
/* 001151 0x80A62A0C 460C0201 */ sub.s	$f8, $f0, $f12
/* 001152 0x80A62A10 46004383 */ div.s	$f14, $f8, $f0
/* 001153 0x80A62A14 4612703C */ c.lt.s	$f14, $f18
/* 001154 0x80A62A18 00000000 */ nop
/* 001155 0x80A62A1C 45000002 */ bc1f .L80A62A28
/* 001156 0x80A62A20 00000000 */ nop
/* 001157 0x80A62A24 46009386 */ mov.s	$f14, $f18
.L80A62A28:
/* 001158 0x80A62A28 460E5102 */ mul.s	$f4, $f10, $f14
/* 001159 0x80A62A2C 24190001 */ li	$t9, 0X1
/* 001160 0x80A62A30 460E3202 */ mul.s	$f8, $f6, $f14
/* 001161 0x80A62A34 E48400CC */ swc1	$f4, 0XCC($a0)
/* 001162 0x80A62A38 4458F800 */ cfc1	$t8, $31
/* 001163 0x80A62A3C 44D9F800 */ ctc1	$t9, $31
/* 001164 0x80A62A40 00000000 */ nop
/* 001165 0x80A62A44 460042A4 */ cvt.w.s	$f10, $f8
/* 001166 0x80A62A48 4459F800 */ cfc1	$t9, $31
/* 001167 0x80A62A4C 00000000 */ nop
/* 001168 0x80A62A50 33390078 */ andi	$t9, $t9, 0X78
/* 001169 0x80A62A54 53200013 */ beqzl	$t9, .L80A62AA4
/* 001170 0x80A62A58 44195000 */ mfc1	$t9, $f10
/* 001171 0x80A62A5C 44815000 */ mtc1	$at, $f10
/* 001172 0x80A62A60 24190001 */ li	$t9, 0X1
/* 001173 0x80A62A64 460A4281 */ sub.s	$f10, $f8, $f10
/* 001174 0x80A62A68 44D9F800 */ ctc1	$t9, $31
/* 001175 0x80A62A6C 00000000 */ nop
/* 001176 0x80A62A70 460052A4 */ cvt.w.s	$f10, $f10
/* 001177 0x80A62A74 4459F800 */ cfc1	$t9, $31
/* 001178 0x80A62A78 00000000 */ nop
/* 001179 0x80A62A7C 33390078 */ andi	$t9, $t9, 0X78
/* 001180 0x80A62A80 17200005 */ bnez	$t9, .L80A62A98
/* 001181 0x80A62A84 00000000 */ nop
/* 001182 0x80A62A88 44195000 */ mfc1	$t9, $f10
/* 001183 0x80A62A8C 3C018000 */ lui	$at, 0x8000
/* 001184 0x80A62A90 10000007 */ b	.L80A62AB0
/* 001185 0x80A62A94 0321C825 */ or	$t9, $t9, $at
.L80A62A98:
/* 001186 0x80A62A98 10000005 */ b	.L80A62AB0
/* 001187 0x80A62A9C 2419FFFF */ li	$t9, -0X1
/* 001188 0x80A62AA0 44195000 */ mfc1	$t9, $f10
.L80A62AA4:
/* 001189 0x80A62AA4 00000000 */ nop
/* 001190 0x80A62AA8 0720FFFB */ bltz	$t9, .L80A62A98
/* 001191 0x80A62AAC 00000000 */ nop
.L80A62AB0:
/* 001192 0x80A62AB0 44D8F800 */ ctc1	$t8, $31
/* 001193 0x80A62AB4 A09900D0 */ sb	$t9, 0XD0($a0)
/* 001194 0x80A62AB8 00000000 */ nop
.L80A62ABC:
/* 001195 0x80A62ABC 03E00008 */ jr	$ra
/* 001196 0x80A62AC0 00000000 */ nop

