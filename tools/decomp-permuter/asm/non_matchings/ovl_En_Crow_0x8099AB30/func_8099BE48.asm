glabel func_8099BE48
/* 001222 0x8099BE48 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001223 0x8099BE4C AFA40018 */ sw	$a0, 0X18($sp)
/* 001224 0x8099BE50 8FA4002C */ lw	$a0, 0X2C($sp)
/* 001225 0x8099BE54 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001226 0x8099BE58 AFA60020 */ sw	$a2, 0X20($sp)
/* 001227 0x8099BE5C AFA70024 */ sw	$a3, 0X24($sp)
/* 001228 0x8099BE60 908E00B7 */ lbu	$t6, 0XB7($a0)
/* 001229 0x8099BE64 24010007 */ li	$at, 0X7
/* 001230 0x8099BE68 51C00029 */ beqzl	$t6, .L8099BF10
/* 001231 0x8099BE6C 00001025 */ move	$v0, $zero
/* 001232 0x8099BE70 14A10011 */ bne	$a1, $at, .L8099BEB8
/* 001233 0x8099BE74 3C01809A */ lui	$at, %hi(D_8099C108)
/* 001234 0x8099BE78 C426C108 */ lwc1	$f6, %lo(D_8099C108)($at)
/* 001235 0x8099BE7C C484015C */ lwc1	$f4, 0X15C($a0)
/* 001236 0x8099BE80 46062302 */ mul.s	$f12, $f4, $f6
/* 001237 0x8099BE84 0C05E53B */ jal	sin_rad
/* 001238 0x8099BE88 00000000 */ nop
/* 001239 0x8099BE8C 3C014540 */ lui	$at, 0x4540
/* 001240 0x8099BE90 44814000 */ mtc1	$at, $f8
/* 001241 0x8099BE94 8FA20028 */ lw	$v0, 0X28($sp)
/* 001242 0x8099BE98 46004282 */ mul.s	$f10, $f8, $f0
/* 001243 0x8099BE9C 844F0002 */ lh	$t7, 0X2($v0)
/* 001244 0x8099BEA0 4600540D */ trunc.w.s	$f16, $f10
/* 001245 0x8099BEA4 44098000 */ mfc1	$t1, $f16
/* 001246 0x8099BEA8 00000000 */ nop
/* 001247 0x8099BEAC 01E95021 */ addu	$t2, $t7, $t1
/* 001248 0x8099BEB0 10000016 */ b	.L8099BF0C
/* 001249 0x8099BEB4 A44A0002 */ sh	$t2, 0X2($v0)
.L8099BEB8:
/* 001250 0x8099BEB8 24010008 */ li	$at, 0X8
/* 001251 0x8099BEBC 14A10013 */ bne	$a1, $at, .L8099BF0C
/* 001252 0x8099BEC0 3C014020 */ lui	$at, 0x4020
/* 001253 0x8099BEC4 44812000 */ mtc1	$at, $f4
/* 001254 0x8099BEC8 C492015C */ lwc1	$f18, 0X15C($a0)
/* 001255 0x8099BECC 3C01809A */ lui	$at, %hi(D_8099C10C)
/* 001256 0x8099BED0 C428C10C */ lwc1	$f8, %lo(D_8099C10C)($at)
/* 001257 0x8099BED4 46049180 */ add.s	$f6, $f18, $f4
/* 001258 0x8099BED8 46083302 */ mul.s	$f12, $f6, $f8
/* 001259 0x8099BEDC 0C05E53B */ jal	sin_rad
/* 001260 0x8099BEE0 00000000 */ nop
/* 001261 0x8099BEE4 3C0145A0 */ lui	$at, 0x45A0
/* 001262 0x8099BEE8 44815000 */ mtc1	$at, $f10
/* 001263 0x8099BEEC 8FA20028 */ lw	$v0, 0X28($sp)
/* 001264 0x8099BEF0 46005402 */ mul.s	$f16, $f10, $f0
/* 001265 0x8099BEF4 844B0002 */ lh	$t3, 0X2($v0)
/* 001266 0x8099BEF8 4600848D */ trunc.w.s	$f18, $f16
/* 001267 0x8099BEFC 44189000 */ mfc1	$t8, $f18
/* 001268 0x8099BF00 00000000 */ nop
/* 001269 0x8099BF04 0178C821 */ addu	$t9, $t3, $t8
/* 001270 0x8099BF08 A4590002 */ sh	$t9, 0X2($v0)
.L8099BF0C:
/* 001271 0x8099BF0C 00001025 */ move	$v0, $zero
.L8099BF10:
/* 001272 0x8099BF10 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001273 0x8099BF14 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001274 0x8099BF18 03E00008 */ jr	$ra
/* 001275 0x8099BF1C 00000000 */ nop

