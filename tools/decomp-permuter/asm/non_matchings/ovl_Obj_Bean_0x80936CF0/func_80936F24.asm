glabel func_80936F24
/* 000141 0x80936F24 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000142 0x80936F28 AFB00020 */ sw	$s0, 0X20($sp)
/* 000143 0x80936F2C 00808025 */ move	$s0, $a0
/* 000144 0x80936F30 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000145 0x80936F34 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 000146 0x80936F38 860E01AC */ lh	$t6, 0X1AC($s0)
/* 000147 0x80936F3C 861801AE */ lh	$t8, 0X1AE($s0)
/* 000148 0x80936F40 860801B0 */ lh	$t0, 0X1B0($s0)
/* 000149 0x80936F44 3C063DCC */ lui	$a2, 0x3DCC
/* 000150 0x80936F48 25CF00B6 */ addiu	$t7, $t6, 0XB6
/* 000151 0x80936F4C 271900FB */ addiu	$t9, $t8, 0XFB
/* 000152 0x80936F50 25090064 */ addiu	$t1, $t0, 0X64
/* 000153 0x80936F54 A60F01AC */ sh	$t7, 0X1AC($s0)
/* 000154 0x80936F58 A61901AE */ sh	$t9, 0X1AE($s0)
/* 000155 0x80936F5C A60901B0 */ sh	$t1, 0X1B0($s0)
/* 000156 0x80936F60 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 000157 0x80936F64 260401C8 */ addiu	$a0, $s0, 0X1C8
/* 000158 0x80936F68 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000159 0x80936F6C 3C054000 */ lui	$a1, 0x4000
/* 000160 0x80936F70 860401AC */ lh	$a0, 0X1AC($s0)
/* 000161 0x80936F74 00800821 */ addu	$at, $a0, $zero
/* 000162 0x80936F78 00042080 */ sll	$a0, $a0, 2
/* 000163 0x80936F7C 00812023 */ subu	$a0, $a0, $at
/* 000164 0x80936F80 00042400 */ sll	$a0, $a0, 16
/* 000165 0x80936F84 0C03FB61 */ jal	Math_Sins
/* 000166 0x80936F88 00042403 */ sra	$a0, $a0, 16
/* 000167 0x80936F8C 860401AE */ lh	$a0, 0X1AE($s0)
/* 000168 0x80936F90 46000506 */ mov.s	$f20, $f0
/* 000169 0x80936F94 00800821 */ addu	$at, $a0, $zero
/* 000170 0x80936F98 00042080 */ sll	$a0, $a0, 2
/* 000171 0x80936F9C 00812023 */ subu	$a0, $a0, $at
/* 000172 0x80936FA0 00042400 */ sll	$a0, $a0, 16
/* 000173 0x80936FA4 0C03FB61 */ jal	Math_Sins
/* 000174 0x80936FA8 00042403 */ sra	$a0, $a0, 16
/* 000175 0x80936FAC 46140100 */ add.s	$f4, $f0, $f20
/* 000176 0x80936FB0 C60601C8 */ lwc1	$f6, 0X1C8($s0)
/* 000177 0x80936FB4 860401AC */ lh	$a0, 0X1AC($s0)
/* 000178 0x80936FB8 46062202 */ mul.s	$f8, $f4, $f6
/* 000179 0x80936FBC 00042080 */ sll	$a0, $a0, 2
/* 000180 0x80936FC0 00042400 */ sll	$a0, $a0, 16
/* 000181 0x80936FC4 00042403 */ sra	$a0, $a0, 16
/* 000182 0x80936FC8 0C03FB51 */ jal	Math_Coss
/* 000183 0x80936FCC E60801CC */ swc1	$f8, 0X1CC($s0)
/* 000184 0x80936FD0 860401AE */ lh	$a0, 0X1AE($s0)
/* 000185 0x80936FD4 46000506 */ mov.s	$f20, $f0
/* 000186 0x80936FD8 00042080 */ sll	$a0, $a0, 2
/* 000187 0x80936FDC 00042400 */ sll	$a0, $a0, 16
/* 000188 0x80936FE0 0C03FB51 */ jal	Math_Coss
/* 000189 0x80936FE4 00042403 */ sra	$a0, $a0, 16
/* 000190 0x80936FE8 46140280 */ add.s	$f10, $f0, $f20
/* 000191 0x80936FEC C61001C8 */ lwc1	$f16, 0X1C8($s0)
/* 000192 0x80936FF0 860401B0 */ lh	$a0, 0X1B0($s0)
/* 000193 0x80936FF4 46105482 */ mul.s	$f18, $f10, $f16
/* 000194 0x80936FF8 00800821 */ addu	$at, $a0, $zero
/* 000195 0x80936FFC 00042080 */ sll	$a0, $a0, 2
/* 000196 0x80937000 00812021 */ addu	$a0, $a0, $at
/* 000197 0x80937004 00042400 */ sll	$a0, $a0, 16
/* 000198 0x80937008 00042403 */ sra	$a0, $a0, 16
/* 000199 0x8093700C 0C03FB61 */ jal	Math_Sins
/* 000200 0x80937010 E61201D0 */ swc1	$f18, 0X1D0($s0)
/* 000201 0x80937014 860401AE */ lh	$a0, 0X1AE($s0)
/* 000202 0x80937018 46000506 */ mov.s	$f20, $f0
/* 000203 0x8093701C 000420C0 */ sll	$a0, $a0, 3
/* 000204 0x80937020 00042400 */ sll	$a0, $a0, 16
/* 000205 0x80937024 0C03FB61 */ jal	Math_Sins
/* 000206 0x80937028 00042403 */ sra	$a0, $a0, 16
/* 000207 0x8093702C 3C018094 */ lui	$at, %hi(D_8093904C)
/* 000208 0x80937030 C424904C */ lwc1	$f4, %lo(D_8093904C)($at)
/* 000209 0x80937034 3C018094 */ lui	$at, %hi(D_80939050)
/* 000210 0x80937038 C4289050 */ lwc1	$f8, %lo(D_80939050)($at)
/* 000211 0x8093703C 46040182 */ mul.s	$f6, $f0, $f4
/* 000212 0x80937040 3C018094 */ lui	$at, %hi(D_80939054)
/* 000213 0x80937044 C4329054 */ lwc1	$f18, %lo(D_80939054)($at)
/* 000214 0x80937048 4608A282 */ mul.s	$f10, $f20, $f8
/* 000215 0x8093704C 3C018094 */ lui	$at, %hi(D_80939058)
/* 000216 0x80937050 C4289058 */ lwc1	$f8, %lo(D_80939058)($at)
/* 000217 0x80937054 860401B0 */ lh	$a0, 0X1B0($s0)
/* 000218 0x80937058 00800821 */ addu	$at, $a0, $zero
/* 000219 0x8093705C 460A3400 */ add.s	$f16, $f6, $f10
/* 000220 0x80937060 00042080 */ sll	$a0, $a0, 2
/* 000221 0x80937064 00812021 */ addu	$a0, $a0, $at
/* 000222 0x80937068 00042040 */ sll	$a0, $a0, 1
/* 000223 0x8093706C 46128100 */ add.s	$f4, $f16, $f18
/* 000224 0x80937070 00042400 */ sll	$a0, $a0, 16
/* 000225 0x80937074 00042403 */ sra	$a0, $a0, 16
/* 000226 0x80937078 46082082 */ mul.s	$f2, $f4, $f8
/* 000227 0x8093707C E6020060 */ swc1	$f2, 0X60($s0)
/* 000228 0x80937080 0C03FB51 */ jal	Math_Coss
/* 000229 0x80937084 E6020058 */ swc1	$f2, 0X58($s0)
/* 000230 0x80937088 3C018094 */ lui	$at, %hi(D_8093905C)
/* 000231 0x8093708C C426905C */ lwc1	$f6, %lo(D_8093905C)($at)
/* 000232 0x80937090 3C013F80 */ lui	$at, 0x3F80
/* 000233 0x80937094 44818000 */ mtc1	$at, $f16
/* 000234 0x80937098 46060282 */ mul.s	$f10, $f0, $f6
/* 000235 0x8093709C 3C018094 */ lui	$at, %hi(D_80939060)
/* 000236 0x809370A0 C4249060 */ lwc1	$f4, %lo(D_80939060)($at)
/* 000237 0x809370A4 860401AC */ lh	$a0, 0X1AC($s0)
/* 000238 0x809370A8 00800821 */ addu	$at, $a0, $zero
/* 000239 0x809370AC 46105480 */ add.s	$f18, $f10, $f16
/* 000240 0x809370B0 00042080 */ sll	$a0, $a0, 2
/* 000241 0x809370B4 00812023 */ subu	$a0, $a0, $at
/* 000242 0x809370B8 00042400 */ sll	$a0, $a0, 16
/* 000243 0x809370BC 46049202 */ mul.s	$f8, $f18, $f4
/* 000244 0x809370C0 00042403 */ sra	$a0, $a0, 16
/* 000245 0x809370C4 0C03FB61 */ jal	Math_Sins
/* 000246 0x809370C8 E608005C */ swc1	$f8, 0X5C($s0)
/* 000247 0x809370CC 860401B0 */ lh	$a0, 0X1B0($s0)
/* 000248 0x809370D0 46000506 */ mov.s	$f20, $f0
/* 000249 0x809370D4 00042040 */ sll	$a0, $a0, 1
/* 000250 0x809370D8 00042400 */ sll	$a0, $a0, 16
/* 000251 0x809370DC 0C03FB61 */ jal	Math_Sins
/* 000252 0x809370E0 00042403 */ sra	$a0, $a0, 16
/* 000253 0x809370E4 3C018094 */ lui	$at, %hi(D_80939064)
/* 000254 0x809370E8 C4269064 */ lwc1	$f6, %lo(D_80939064)($at)
/* 000255 0x809370EC 3C01447A */ lui	$at, 0x447A
/* 000256 0x809370F0 44819000 */ mtc1	$at, $f18
/* 000257 0x809370F4 46060282 */ mul.s	$f10, $f0, $f6
/* 000258 0x809370F8 860C0016 */ lh	$t4, 0X16($s0)
/* 000259 0x809370FC 4612A102 */ mul.s	$f4, $f20, $f18
/* 000260 0x80937100 4600540D */ trunc.w.s	$f16, $f10
/* 000261 0x80937104 4600220D */ trunc.w.s	$f8, $f4
/* 000262 0x80937108 440B8000 */ mfc1	$t3, $f16
/* 000263 0x8093710C 440F4000 */ mfc1	$t7, $f8
/* 000264 0x80937110 016C6821 */ addu	$t5, $t3, $t4
/* 000265 0x80937114 01AFC021 */ addu	$t8, $t5, $t7
/* 000266 0x80937118 A61800BE */ sh	$t8, 0XBE($s0)
/* 000267 0x8093711C 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000268 0x80937120 D7B40018 */ ldc1	$f20, 0X18($sp)
/* 000269 0x80937124 8FB00020 */ lw	$s0, 0X20($sp)
/* 000270 0x80937128 03E00008 */ jr	$ra
/* 000271 0x8093712C 27BD0028 */ addiu	$sp, $sp, 0X28


.section .late_rodata

glabel D_8093904C
/* 002263 0x8093904C */ .word	0x3C23D70A
glabel D_80939050
/* 002264 0x80939050 */ .word	0x3D75C28F
glabel D_80939054
/* 002265 0x80939054 */ .word	0x3F88F5C3
glabel D_80939058
/* 002266 0x80939058 */ .word	0x3DCCCCCD
glabel D_8093905C
/* 002267 0x8093905C */ .word	0x3E4CCCCD
glabel D_80939060
/* 002268 0x80939060 */ .word	0x3DCCCCCD
glabel D_80939064
/* 002269 0x80939064 */ .word	0x45034000
