glabel func_80C1AF94
/* 000117 0x80C1AF94 27BDFFA8 */ addiu	$sp, $sp, -0X58
/* 000118 0x80C1AF98 AFB00018 */ sw	$s0, 0X18($sp)
/* 000119 0x80C1AF9C 00808025 */ move	$s0, $a0
/* 000120 0x80C1AFA0 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000121 0x80C1AFA4 AFA5005C */ sw	$a1, 0X5C($sp)
/* 000122 0x80C1AFA8 24020006 */ li	$v0, 0X6
/* 000123 0x80C1AFAC 8E0F0168 */ lw	$t7, 0X168($s0)
/* 000124 0x80C1AFB0 8E08016C */ lw	$t0, 0X16C($s0)
/* 000125 0x80C1AFB4 8E0E0170 */ lw	$t6, 0X170($s0)
/* 000126 0x80C1AFB8 01E20019 */ multu	$t7, $v0
/* 000127 0x80C1AFBC 27A40048 */ addiu	$a0, $sp, 0X48
/* 000128 0x80C1AFC0 0000C012 */ mflo	$t8
/* 000129 0x80C1AFC4 01D8C821 */ addu	$t9, $t6, $t8
/* 000130 0x80C1AFC8 00000000 */ nop
/* 000131 0x80C1AFCC 01020019 */ multu	$t0, $v0
/* 000132 0x80C1AFD0 00004812 */ mflo	$t1
/* 000133 0x80C1AFD4 03292821 */ addu	$a1, $t9, $t1
/* 000134 0x80C1AFD8 0C03FD53 */ jal	Math_Vec3s_ToVec3f
/* 000135 0x80C1AFDC 00000000 */ nop
/* 000136 0x80C1AFE0 26060064 */ addiu	$a2, $s0, 0X64
/* 000137 0x80C1AFE4 AFA60028 */ sw	$a2, 0X28($sp)
/* 000138 0x80C1AFE8 27A40048 */ addiu	$a0, $sp, 0X48
/* 000139 0x80C1AFEC 0C03FD7D */ jal	Math_Vec3f_Diff
/* 000140 0x80C1AFF0 26050024 */ addiu	$a1, $s0, 0X24
/* 000141 0x80C1AFF4 0C05E9B5 */ jal	Math3D_Length
/* 000142 0x80C1AFF8 8FA40028 */ lw	$a0, 0X28($sp)
/* 000143 0x80C1AFFC 3C014100 */ lui	$at, 0x4100
/* 000144 0x80C1B000 44812000 */ mtc1	$at, $f4
/* 000145 0x80C1B004 C6020160 */ lwc1	$f2, 0X160($s0)
/* 000146 0x80C1B008 46000386 */ mov.s	$f14, $f0
/* 000147 0x80C1B00C 3C014000 */ lui	$at, 0x4000
/* 000148 0x80C1B010 46041182 */ mul.s	$f6, $f2, $f4
/* 000149 0x80C1B014 26040070 */ addiu	$a0, $s0, 0X70
/* 000150 0x80C1B018 4606003C */ c.lt.s	$f0, $f6
/* 000151 0x80C1B01C 00000000 */ nop
/* 000152 0x80C1B020 45000010 */ bc1f .L80C1B064
/* 000153 0x80C1B024 00000000 */ nop
/* 000154 0x80C1B028 44818000 */ mtc1	$at, $f16
/* 000155 0x80C1B02C 3C0180C2 */ lui	$at, %hi(D_80C1B558)
/* 000156 0x80C1B030 4602803C */ c.lt.s	$f16, $f2
/* 000157 0x80C1B034 00000000 */ nop
/* 000158 0x80C1B038 4500000A */ bc1f .L80C1B064
/* 000159 0x80C1B03C 00000000 */ nop
/* 000160 0x80C1B040 46101201 */ sub.s	$f8, $f2, $f16
/* 000161 0x80C1B044 C42AB558 */ lwc1	$f10, %lo(D_80C1B558)($at)
/* 000162 0x80C1B048 3C0180C2 */ lui	$at, %hi(D_80C1B55C)
/* 000163 0x80C1B04C C424B55C */ lwc1	$f4, %lo(D_80C1B55C)($at)
/* 000164 0x80C1B050 460A4482 */ mul.s	$f18, $f8, $f10
/* 000165 0x80C1B054 46109000 */ add.s	$f0, $f18, $f16
/* 000166 0x80C1B058 46041302 */ mul.s	$f12, $f2, $f4
/* 000167 0x80C1B05C 10000007 */ b	.L80C1B07C
/* 000168 0x80C1B060 44050000 */ mfc1	$a1, $f0
.L80C1B064:
/* 000169 0x80C1B064 3C0180C2 */ lui	$at, %hi(D_80C1B560)
/* 000170 0x80C1B068 C426B560 */ lwc1	$f6, %lo(D_80C1B560)($at)
/* 000171 0x80C1B06C 46001006 */ mov.s	$f0, $f2
/* 000172 0x80C1B070 46061302 */ mul.s	$f12, $f2, $f6
/* 000173 0x80C1B074 00000000 */ nop
/* 000174 0x80C1B078 44050000 */ mfc1	$a1, $f0
.L80C1B07C:
/* 000175 0x80C1B07C 44066000 */ mfc1	$a2, $f12
/* 000176 0x80C1B080 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000177 0x80C1B084 E7AE0044 */ swc1	$f14, 0X44($sp)
/* 000178 0x80C1B088 3C0180C2 */ lui	$at, %hi(D_80C1B564)
/* 000179 0x80C1B08C C428B564 */ lwc1	$f8, %lo(D_80C1B564)($at)
/* 000180 0x80C1B090 C6000070 */ lwc1	$f0, 0X70($s0)
/* 000181 0x80C1B094 C7AE0044 */ lwc1	$f14, 0X44($sp)
/* 000182 0x80C1B098 46080280 */ add.s	$f10, $f0, $f8
/* 000183 0x80C1B09C 460E503C */ c.lt.s	$f10, $f14
/* 000184 0x80C1B0A0 00000000 */ nop
/* 000185 0x80C1B0A4 45020014 */ bc1fl .L80C1B0F8
/* 000186 0x80C1B0A8 8E0A0168 */ lw	$t2, 0X168($s0)
/* 000187 0x80C1B0AC 460E0483 */ div.s	$f18, $f0, $f14
/* 000188 0x80C1B0B0 8FA40028 */ lw	$a0, 0X28($sp)
/* 000189 0x80C1B0B4 44059000 */ mfc1	$a1, $f18
/* 000190 0x80C1B0B8 0C03FDA2 */ jal	Math_Vec3f_Scale
/* 000191 0x80C1B0BC 00000000 */ nop
/* 000192 0x80C1B0C0 C6040024 */ lwc1	$f4, 0X24($s0)
/* 000193 0x80C1B0C4 C6060064 */ lwc1	$f6, 0X64($s0)
/* 000194 0x80C1B0C8 C60A0028 */ lwc1	$f10, 0X28($s0)
/* 000195 0x80C1B0CC C6120068 */ lwc1	$f18, 0X68($s0)
/* 000196 0x80C1B0D0 46062200 */ add.s	$f8, $f4, $f6
/* 000197 0x80C1B0D4 C606002C */ lwc1	$f6, 0X2C($s0)
/* 000198 0x80C1B0D8 46125100 */ add.s	$f4, $f10, $f18
/* 000199 0x80C1B0DC E6080024 */ swc1	$f8, 0X24($s0)
/* 000200 0x80C1B0E0 C608006C */ lwc1	$f8, 0X6C($s0)
/* 000201 0x80C1B0E4 E6040028 */ swc1	$f4, 0X28($s0)
/* 000202 0x80C1B0E8 46083280 */ add.s	$f10, $f6, $f8
/* 000203 0x80C1B0EC 10000043 */ b	.L80C1B1FC
/* 000204 0x80C1B0F0 E60A002C */ swc1	$f10, 0X2C($s0)
/* 000205 0x80C1B0F4 8E0A0168 */ lw	$t2, 0X168($s0)
.L80C1B0F8:
/* 000206 0x80C1B0F8 8E0B016C */ lw	$t3, 0X16C($s0)
/* 000207 0x80C1B0FC 3C0180C2 */ lui	$at, %hi(D_80C1B568)
/* 000208 0x80C1B100 C6120070 */ lwc1	$f18, 0X70($s0)
/* 000209 0x80C1B104 014B1821 */ addu	$v1, $t2, $t3
/* 000210 0x80C1B108 AE030168 */ sw	$v1, 0X168($s0)
/* 000211 0x80C1B10C C424B568 */ lwc1	$f4, %lo(D_80C1B568)($at)
/* 000212 0x80C1B110 8605001C */ lh	$a1, 0X1C($s0)
/* 000213 0x80C1B114 8E040164 */ lw	$a0, 0X164($s0)
/* 000214 0x80C1B118 46049182 */ mul.s	$f6, $f18, $f4
/* 000215 0x80C1B11C 00052B03 */ sra	$a1, $a1, 12
/* 000216 0x80C1B120 0064082A */ slt	$at, $v1, $a0
/* 000217 0x80C1B124 30A50001 */ andi	$a1, $a1, 0X1
/* 000218 0x80C1B128 24060001 */ li	$a2, 0X1
/* 000219 0x80C1B12C 14200004 */ bnez	$at, .L80C1B140
/* 000220 0x80C1B130 E6060070 */ swc1	$f6, 0X70($s0)
/* 000221 0x80C1B134 8E02016C */ lw	$v0, 0X16C($s0)
/* 000222 0x80C1B138 1C400006 */ bgtz	$v0, .L80C1B154
/* 000223 0x80C1B13C 00000000 */ nop
.L80C1B140:
/* 000224 0x80C1B140 1C60002A */ bgtz	$v1, .L80C1B1EC
/* 000225 0x80C1B144 00000000 */ nop
/* 000226 0x80C1B148 8E02016C */ lw	$v0, 0X16C($s0)
/* 000227 0x80C1B14C 04410027 */ bgez	$v0, .L80C1B1EC
/* 000228 0x80C1B150 00000000 */ nop
.L80C1B154:
/* 000229 0x80C1B154 14A00009 */ bnez	$a1, .L80C1B17C
/* 000230 0x80C1B158 00044080 */ sll	$t0, $a0, 2
/* 000231 0x80C1B15C 3C0E80C2 */ lui	$t6, %hi(func_80C1B26C)
/* 000232 0x80C1B160 00026823 */ negu	$t5, $v0
/* 000233 0x80C1B164 240F000A */ li	$t7, 0XA
/* 000234 0x80C1B168 25CEB26C */ addiu	$t6, $t6, %lo(func_80C1B26C)
/* 000235 0x80C1B16C AE0D016C */ sw	$t5, 0X16C($s0)
/* 000236 0x80C1B170 A60F0186 */ sh	$t7, 0X186($s0)
/* 000237 0x80C1B174 1000001D */ b	.L80C1B1EC
/* 000238 0x80C1B178 AE0E015C */ sw	$t6, 0X15C($s0)
.L80C1B17C:
/* 000239 0x80C1B17C 8E180170 */ lw	$t8, 0X170($s0)
/* 000240 0x80C1B180 01044023 */ subu	$t0, $t0, $a0
/* 000241 0x80C1B184 00084040 */ sll	$t0, $t0, 1
/* 000242 0x80C1B188 18400003 */ blez	$v0, .L80C1B198
/* 000243 0x80C1B18C 03081821 */ addu	$v1, $t8, $t0
/* 000244 0x80C1B190 10000002 */ b	.L80C1B19C
/* 000245 0x80C1B194 AE000168 */ sw	$zero, 0X168($s0)
.L80C1B198:
/* 000246 0x80C1B198 AE040168 */ sw	$a0, 0X168($s0)
.L80C1B19C:
/* 000247 0x80C1B19C 8E020170 */ lw	$v0, 0X170($s0)
/* 000248 0x80C1B1A0 84790000 */ lh	$t9, 0X0($v1)
/* 000249 0x80C1B1A4 8FA4005C */ lw	$a0, 0X5C($sp)
/* 000250 0x80C1B1A8 84490000 */ lh	$t1, 0X0($v0)
/* 000251 0x80C1B1AC 3C0F80C2 */ lui	$t7, %hi(func_80C1B210)
/* 000252 0x80C1B1B0 25EFB210 */ addiu	$t7, $t7, %lo(func_80C1B210)
/* 000253 0x80C1B1B4 17290009 */ bne	$t9, $t1, .L80C1B1DC
/* 000254 0x80C1B1B8 24850880 */ addiu	$a1, $a0, 0X880
/* 000255 0x80C1B1BC 846A0002 */ lh	$t2, 0X2($v1)
/* 000256 0x80C1B1C0 844B0002 */ lh	$t3, 0X2($v0)
/* 000257 0x80C1B1C4 554B0006 */ bnel	$t2, $t3, .L80C1B1E0
/* 000258 0x80C1B1C8 AE0F015C */ sw	$t7, 0X15C($s0)
/* 000259 0x80C1B1CC 846C0004 */ lh	$t4, 0X4($v1)
/* 000260 0x80C1B1D0 844D0004 */ lh	$t5, 0X4($v0)
/* 000261 0x80C1B1D4 118D0005 */ beq	$t4, $t5, .L80C1B1EC
/* 000262 0x80C1B1D8 00000000 */ nop
.L80C1B1DC:
/* 000263 0x80C1B1DC AE0F015C */ sw	$t7, 0X15C($s0)
.L80C1B1E0:
/* 000264 0x80C1B1E0 0C0318AF */ jal	func_800C62BC
/* 000265 0x80C1B1E4 8E060144 */ lw	$a2, 0X144($s0)
/* 000266 0x80C1B1E8 00003025 */ move	$a2, $zero
.L80C1B1EC:
/* 000267 0x80C1B1EC 10C00003 */ beqz	$a2, .L80C1B1FC
/* 000268 0x80C1B1F0 02002025 */ move	$a0, $s0
/* 000269 0x80C1B1F4 0C306B70 */ jal	func_80C1ADC0
/* 000270 0x80C1B1F8 8E050168 */ lw	$a1, 0X168($s0)
.L80C1B1FC:
/* 000271 0x80C1B1FC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000272 0x80C1B200 8FB00018 */ lw	$s0, 0X18($sp)
/* 000273 0x80C1B204 27BD0058 */ addiu	$sp, $sp, 0X58
/* 000274 0x80C1B208 03E00008 */ jr	$ra
/* 000275 0x80C1B20C 00000000 */ nop


.section .late_rodata

glabel D_80C1B558
/* 000486 0x80C1B558 */ .word	0x3DCCCCCD
glabel D_80C1B55C
/* 000487 0x80C1B55C */ .word	0x3CF5C28F
glabel D_80C1B560
/* 000488 0x80C1B560 */ .word	0x3E23D70A
glabel D_80C1B564
/* 000489 0x80C1B564 */ .word	0x3D4CCCCD
glabel D_80C1B568
/* 000490 0x80C1B568 */ .word	0x3ECCCCCD
