glabel func_80A1DD18
/* 000178 0x80A1DD18 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000179 0x80A1DD1C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000180 0x80A1DD20 AFB00018 */ sw	$s0, 0X18($sp)
/* 000181 0x80A1DD24 00803825 */ move	$a3, $a0
/* 000182 0x80A1DD28 8CEE04A8 */ lw	$t6, 0X4A8($a3)
/* 000183 0x80A1DD2C 24F004C4 */ addiu	$s0, $a3, 0X4C4
/* 000184 0x80A1DD30 02003025 */ move	$a2, $s0
/* 000185 0x80A1DD34 39CF0001 */ xori	$t7, $t6, 0X1
/* 000186 0x80A1DD38 000FC080 */ sll	$t8, $t7, 2
/* 000187 0x80A1DD3C 030FC023 */ subu	$t8, $t8, $t7
/* 000188 0x80A1DD40 0018C080 */ sll	$t8, $t8, 2
/* 000189 0x80A1DD44 00F82021 */ addu	$a0, $a3, $t8
/* 000190 0x80A1DD48 248404AC */ addiu	$a0, $a0, 0X4AC
/* 000191 0x80A1DD4C AFA40020 */ sw	$a0, 0X20($sp)
/* 000192 0x80A1DD50 AFA70028 */ sw	$a3, 0X28($sp)
/* 000193 0x80A1DD54 0C03FD7D */ jal	Math_Vec3f_Diff
/* 000194 0x80A1DD58 24E50024 */ addiu	$a1, $a3, 0X24
/* 000195 0x80A1DD5C 0C05E9B5 */ jal	Math3D_Length
/* 000196 0x80A1DD60 02002025 */ move	$a0, $s0
/* 000197 0x80A1DD64 3C0180A2 */ lui	$at, %hi(D_80A1F210)
/* 000198 0x80A1DD68 C424F210 */ lwc1	$f4, %lo(D_80A1F210)($at)
/* 000199 0x80A1DD6C 8FA70028 */ lw	$a3, 0X28($sp)
/* 000200 0x80A1DD70 46000086 */ mov.s	$f2, $f0
/* 000201 0x80A1DD74 4604003C */ c.lt.s	$f0, $f4
/* 000202 0x80A1DD78 00000000 */ nop
/* 000203 0x80A1DD7C 45020019 */ bc1fl .L80A1DDE4
/* 000204 0x80A1DD80 3C013F80 */ lui	$at, 0x3F80
/* 000205 0x80A1DD84 8CF904A8 */ lw	$t9, 0X4A8($a3)
/* 000206 0x80A1DD88 8FA40020 */ lw	$a0, 0X20($sp)
/* 000207 0x80A1DD8C 02003025 */ move	$a2, $s0
/* 000208 0x80A1DD90 00194080 */ sll	$t0, $t9, 2
/* 000209 0x80A1DD94 01194023 */ subu	$t0, $t0, $t9
/* 000210 0x80A1DD98 00084080 */ sll	$t0, $t0, 2
/* 000211 0x80A1DD9C 00E82821 */ addu	$a1, $a3, $t0
/* 000212 0x80A1DDA0 0C03FD7D */ jal	Math_Vec3f_Diff
/* 000213 0x80A1DDA4 24A504AC */ addiu	$a1, $a1, 0X4AC
/* 000214 0x80A1DDA8 0C05E9B5 */ jal	Math3D_Length
/* 000215 0x80A1DDAC 02002025 */ move	$a0, $s0
/* 000216 0x80A1DDB0 3C0180A2 */ lui	$at, %hi(D_80A1F214)
/* 000217 0x80A1DDB4 C426F214 */ lwc1	$f6, %lo(D_80A1F214)($at)
/* 000218 0x80A1DDB8 46000086 */ mov.s	$f2, $f0
/* 000219 0x80A1DDBC 02002025 */ move	$a0, $s0
/* 000220 0x80A1DDC0 4606003C */ c.lt.s	$f0, $f6
/* 000221 0x80A1DDC4 3C05801D */ lui	$a1, %hi(D_801D15B0)
/* 000222 0x80A1DDC8 45020006 */ bc1fl .L80A1DDE4
/* 000223 0x80A1DDCC 3C013F80 */ lui	$at, 0x3F80
/* 000224 0x80A1DDD0 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000225 0x80A1DDD4 24A515B0 */ addiu	$a1, $a1, %lo(D_801D15B0)
/* 000226 0x80A1DDD8 10000009 */ b	.L80A1DE00
/* 000227 0x80A1DDDC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000228 0x80A1DDE0 3C013F80 */ lui	$at, 0x3F80
.L80A1DDE4:
/* 000229 0x80A1DDE4 44814000 */ mtc1	$at, $f8
/* 000230 0x80A1DDE8 02002025 */ move	$a0, $s0
/* 000231 0x80A1DDEC 46024283 */ div.s	$f10, $f8, $f2
/* 000232 0x80A1DDF0 44055000 */ mfc1	$a1, $f10
/* 000233 0x80A1DDF4 0C03FDA2 */ jal	Math_Vec3f_Scale
/* 000234 0x80A1DDF8 00000000 */ nop
/* 000235 0x80A1DDFC 8FBF001C */ lw	$ra, 0X1C($sp)
.L80A1DE00:
/* 000236 0x80A1DE00 8FB00018 */ lw	$s0, 0X18($sp)
/* 000237 0x80A1DE04 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000238 0x80A1DE08 03E00008 */ jr	$ra
/* 000239 0x80A1DE0C 00000000 */ nop


.section .late_rodata

glabel D_80A1F210
/* 001520 0x80A1F210 */ .word	0x3C23D70A
glabel D_80A1F214
/* 001521 0x80A1F214 */ .word	0x3C23D70A
