glabel func_80BB69FC
/* 000139 0x80BB69FC 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000140 0x80BB6A00 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 000141 0x80BB6A04 3C013F80 */ lui	$at, 0x3F80
/* 000142 0x80BB6A08 AFB00024 */ sw	$s0, 0X24($sp)
/* 000143 0x80BB6A0C 4481A000 */ mtc1	$at, $f20
/* 000144 0x80BB6A10 00808025 */ move	$s0, $a0
/* 000145 0x80BB6A14 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000146 0x80BB6A18 AFB10028 */ sw	$s1, 0X28($sp)
/* 000147 0x80BB6A1C AFA5003C */ sw	$a1, 0X3C($sp)
/* 000148 0x80BB6A20 860F001C */ lh	$t7, 0X1C($s0)
/* 000149 0x80BB6A24 C600015C */ lwc1	$f0, 0X15C($s0)
/* 000150 0x80BB6A28 3C0E80BC */ lui	$t6, %hi(D_80BB8450)
/* 000151 0x80BB6A2C 8DCE8450 */ lw	$t6, %lo(D_80BB8450)($t6)
/* 000152 0x80BB6A30 4600A032 */ c.eq.s	$f20, $f0
/* 000153 0x80BB6A34 000FC080 */ sll	$t8, $t7, 2
/* 000154 0x80BB6A38 030FC023 */ subu	$t8, $t8, $t7
/* 000155 0x80BB6A3C 0018C080 */ sll	$t8, $t8, 2
/* 000156 0x80BB6A40 01D88821 */ addu	$s1, $t6, $t8
/* 000157 0x80BB6A44 45000006 */ bc1f .L80BB6A60
/* 000158 0x80BB6A48 263102E4 */ addiu	$s1, $s1, 0X2E4
/* 000159 0x80BB6A4C 26040024 */ addiu	$a0, $s0, 0X24
/* 000160 0x80BB6A50 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000161 0x80BB6A54 02202825 */ move	$a1, $s1
/* 000162 0x80BB6A58 10000036 */ b	.L80BB6B34
/* 000163 0x80BB6A5C 4405A000 */ mfc1	$a1, $f20
.L80BB6A60:
/* 000164 0x80BB6A60 44802000 */ mtc1	$zero, $f4
/* 000165 0x80BB6A64 8E250000 */ lw	$a1, 0X0($s1)
/* 000166 0x80BB6A68 44060000 */ mfc1	$a2, $f0
/* 000167 0x80BB6A6C 8E070160 */ lw	$a3, 0X160($s0)
/* 000168 0x80BB6A70 26040024 */ addiu	$a0, $s0, 0X24
/* 000169 0x80BB6A74 0C03FF36 */ jal	Math_SmoothScaleMaxMinF
/* 000170 0x80BB6A78 E7A40010 */ swc1	$f4, 0X10($sp)
/* 000171 0x80BB6A7C E7A00034 */ swc1	$f0, 0X34($sp)
/* 000172 0x80BB6A80 44803000 */ mtc1	$zero, $f6
/* 000173 0x80BB6A84 8E070160 */ lw	$a3, 0X160($s0)
/* 000174 0x80BB6A88 8E06015C */ lw	$a2, 0X15C($s0)
/* 000175 0x80BB6A8C 8E250004 */ lw	$a1, 0X4($s1)
/* 000176 0x80BB6A90 26040028 */ addiu	$a0, $s0, 0X28
/* 000177 0x80BB6A94 0C03FF36 */ jal	Math_SmoothScaleMaxMinF
/* 000178 0x80BB6A98 E7A60010 */ swc1	$f6, 0X10($sp)
/* 000179 0x80BB6A9C E7A00030 */ swc1	$f0, 0X30($sp)
/* 000180 0x80BB6AA0 44804000 */ mtc1	$zero, $f8
/* 000181 0x80BB6AA4 8E070160 */ lw	$a3, 0X160($s0)
/* 000182 0x80BB6AA8 8E06015C */ lw	$a2, 0X15C($s0)
/* 000183 0x80BB6AAC 8E250008 */ lw	$a1, 0X8($s1)
/* 000184 0x80BB6AB0 2604002C */ addiu	$a0, $s0, 0X2C
/* 000185 0x80BB6AB4 0C03FF36 */ jal	Math_SmoothScaleMaxMinF
/* 000186 0x80BB6AB8 E7A80010 */ swc1	$f8, 0X10($sp)
/* 000187 0x80BB6ABC 92190158 */ lbu	$t9, 0X158($s0)
/* 000188 0x80BB6AC0 C7AA0034 */ lwc1	$f10, 0X34($sp)
/* 000189 0x80BB6AC4 C7B00030 */ lwc1	$f16, 0X30($sp)
/* 000190 0x80BB6AC8 5720000F */ bnezl	$t9, .L80BB6B08
/* 000191 0x80BB6ACC 4405A000 */ mfc1	$a1, $f20
/* 000192 0x80BB6AD0 46105480 */ add.s	$f18, $f10, $f16
/* 000193 0x80BB6AD4 3C014000 */ lui	$at, 0x4000
/* 000194 0x80BB6AD8 44813000 */ mtc1	$at, $f6
/* 000195 0x80BB6ADC 24080001 */ li	$t0, 0X1
/* 000196 0x80BB6AE0 46009100 */ add.s	$f4, $f18, $f0
/* 000197 0x80BB6AE4 02002025 */ move	$a0, $s0
/* 000198 0x80BB6AE8 240538D4 */ li	$a1, 0X38D4
/* 000199 0x80BB6AEC 4606203C */ c.lt.s	$f4, $f6
/* 000200 0x80BB6AF0 00000000 */ nop
/* 000201 0x80BB6AF4 45020004 */ bc1fl .L80BB6B08
/* 000202 0x80BB6AF8 4405A000 */ mfc1	$a1, $f20
/* 000203 0x80BB6AFC 0C02E3B2 */ jal	func_800B8EC8
/* 000204 0x80BB6B00 A2080158 */ sb	$t0, 0X158($s0)
/* 000205 0x80BB6B04 4405A000 */ mfc1	$a1, $f20
.L80BB6B08:
/* 000206 0x80BB6B08 4406A000 */ mfc1	$a2, $f20
/* 000207 0x80BB6B0C 3C073CA3 */ lui	$a3, 0x3CA3
/* 000208 0x80BB6B10 34E7D70A */ ori	$a3, $a3, 0XD70A
/* 000209 0x80BB6B14 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000210 0x80BB6B18 2604015C */ addiu	$a0, $s0, 0X15C
/* 000211 0x80BB6B1C 4406A000 */ mfc1	$a2, $f20
/* 000212 0x80BB6B20 4407A000 */ mfc1	$a3, $f20
/* 000213 0x80BB6B24 26040160 */ addiu	$a0, $s0, 0X160
/* 000214 0x80BB6B28 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000215 0x80BB6B2C 3C0541A0 */ lui	$a1, 0x41A0
/* 000216 0x80BB6B30 4405A000 */ mfc1	$a1, $f20
.L80BB6B34:
/* 000217 0x80BB6B34 3C063DCC */ lui	$a2, 0x3DCC
/* 000218 0x80BB6B38 3C073E4C */ lui	$a3, 0x3E4C
/* 000219 0x80BB6B3C 34E7CCCD */ ori	$a3, $a3, 0XCCCD
/* 000220 0x80BB6B40 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 000221 0x80BB6B44 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000222 0x80BB6B48 26040058 */ addiu	$a0, $s0, 0X58
/* 000223 0x80BB6B4C 4405A000 */ mfc1	$a1, $f20
/* 000224 0x80BB6B50 3C063DCC */ lui	$a2, 0x3DCC
/* 000225 0x80BB6B54 3C073E4C */ lui	$a3, 0x3E4C
/* 000226 0x80BB6B58 34E7CCCD */ ori	$a3, $a3, 0XCCCD
/* 000227 0x80BB6B5C 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 000228 0x80BB6B60 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000229 0x80BB6B64 2604005C */ addiu	$a0, $s0, 0X5C
/* 000230 0x80BB6B68 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000231 0x80BB6B6C D7B40018 */ ldc1	$f20, 0X18($sp)
/* 000232 0x80BB6B70 8FB00024 */ lw	$s0, 0X24($sp)
/* 000233 0x80BB6B74 8FB10028 */ lw	$s1, 0X28($sp)
/* 000234 0x80BB6B78 03E00008 */ jr	$ra
/* 000235 0x80BB6B7C 27BD0038 */ addiu	$sp, $sp, 0X38

