glabel func_8096FAAC
/* 000307 0x8096FAAC 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000308 0x8096FAB0 AFB00028 */ sw	$s0, 0X28($sp)
/* 000309 0x8096FAB4 00808025 */ move	$s0, $a0
/* 000310 0x8096FAB8 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000311 0x8096FABC F7B60020 */ sdc1	$f22, 0X20($sp)
/* 000312 0x8096FAC0 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 000313 0x8096FAC4 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000314 0x8096FAC8 860E0208 */ lh	$t6, 0X208($s0)
/* 000315 0x8096FACC 3C018097 */ lui	$at, %hi(D_80972080)
/* 000316 0x8096FAD0 26040214 */ addiu	$a0, $s0, 0X214
/* 000317 0x8096FAD4 51C00033 */ beqzl	$t6, .L8096FBA4
/* 000318 0x8096FAD8 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000319 0x8096FADC C4342080 */ lwc1	$f20, %lo(D_80972080)($at)
/* 000320 0x8096FAE0 3C014080 */ lui	$at, 0x4080
/* 000321 0x8096FAE4 4481B000 */ mtc1	$at, $f22
/* 000322 0x8096FAE8 8E050238 */ lw	$a1, 0X238($s0)
/* 000323 0x8096FAEC 4406A000 */ mfc1	$a2, $f20
/* 000324 0x8096FAF0 4407B000 */ mfc1	$a3, $f22
/* 000325 0x8096FAF4 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000326 0x8096FAF8 AFA40034 */ sw	$a0, 0X34($sp)
/* 000327 0x8096FAFC 4406A000 */ mfc1	$a2, $f20
/* 000328 0x8096FB00 4407B000 */ mfc1	$a3, $f22
/* 000329 0x8096FB04 26040218 */ addiu	$a0, $s0, 0X218
/* 000330 0x8096FB08 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000331 0x8096FB0C 8E05023C */ lw	$a1, 0X23C($s0)
/* 000332 0x8096FB10 4406A000 */ mfc1	$a2, $f20
/* 000333 0x8096FB14 4407B000 */ mfc1	$a3, $f22
/* 000334 0x8096FB18 2604021C */ addiu	$a0, $s0, 0X21C
/* 000335 0x8096FB1C 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000336 0x8096FB20 8E050240 */ lw	$a1, 0X240($s0)
/* 000337 0x8096FB24 26040220 */ addiu	$a0, $s0, 0X220
/* 000338 0x8096FB28 8E050244 */ lw	$a1, 0X244($s0)
/* 000339 0x8096FB2C 4406A000 */ mfc1	$a2, $f20
/* 000340 0x8096FB30 4407B000 */ mfc1	$a3, $f22
/* 000341 0x8096FB34 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000342 0x8096FB38 AFA40030 */ sw	$a0, 0X30($sp)
/* 000343 0x8096FB3C 4406A000 */ mfc1	$a2, $f20
/* 000344 0x8096FB40 4407B000 */ mfc1	$a3, $f22
/* 000345 0x8096FB44 26040224 */ addiu	$a0, $s0, 0X224
/* 000346 0x8096FB48 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000347 0x8096FB4C 8E050248 */ lw	$a1, 0X248($s0)
/* 000348 0x8096FB50 4406A000 */ mfc1	$a2, $f20
/* 000349 0x8096FB54 4407B000 */ mfc1	$a3, $f22
/* 000350 0x8096FB58 26040228 */ addiu	$a0, $s0, 0X228
/* 000351 0x8096FB5C 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000352 0x8096FB60 8E05024C */ lw	$a1, 0X24C($s0)
/* 000353 0x8096FB64 3C063E99 */ lui	$a2, 0x3E99
/* 000354 0x8096FB68 34C6999A */ ori	$a2, $a2, 0X999A
/* 000355 0x8096FB6C 2604020C */ addiu	$a0, $s0, 0X20C
/* 000356 0x8096FB70 8E050210 */ lw	$a1, 0X210($s0)
/* 000357 0x8096FB74 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000358 0x8096FB78 3C074120 */ lui	$a3, 0x4120
/* 000359 0x8096FB7C 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000360 0x8096FB80 86050208 */ lh	$a1, 0X208($s0)
/* 000361 0x8096FB84 8FA60030 */ lw	$a2, 0X30($sp)
/* 000362 0x8096FB88 0C05A5C3 */ jal	func_8016970C
/* 000363 0x8096FB8C 8FA70034 */ lw	$a3, 0X34($sp)
/* 000364 0x8096FB90 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000365 0x8096FB94 86050208 */ lh	$a1, 0X208($s0)
/* 000366 0x8096FB98 0C05A650 */ jal	func_80169940
/* 000367 0x8096FB9C 8E06020C */ lw	$a2, 0X20C($s0)
/* 000368 0x8096FBA0 8FBF002C */ lw	$ra, 0X2C($sp)
.L8096FBA4:
/* 000369 0x8096FBA4 D7B40018 */ ldc1	$f20, 0X18($sp)
/* 000370 0x8096FBA8 D7B60020 */ ldc1	$f22, 0X20($sp)
/* 000371 0x8096FBAC 8FB00028 */ lw	$s0, 0X28($sp)
/* 000372 0x8096FBB0 03E00008 */ jr	$ra
/* 000373 0x8096FBB4 27BD0038 */ addiu	$sp, $sp, 0X38


.section .late_rodata

glabel D_80972080
/* 002728 0x80972080 */ .word	0x3ECCCCCD
