glabel func_80C1F87C
/* 000299 0x80C1F87C 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000300 0x80C1F880 AFB00018 */ sw	$s0, 0X18($sp)
/* 000301 0x80C1F884 00808025 */ move	$s0, $a0
/* 000302 0x80C1F888 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000303 0x80C1F88C 0C021C0C */ jal	randPlusMinusPoint5
/* 000304 0x80C1F890 00000000 */ nop
/* 000305 0x80C1F894 3C014080 */ lui	$at, 0x4080
/* 000306 0x80C1F898 44812000 */ mtc1	$at, $f4
/* 000307 0x80C1F89C 3C0140C0 */ lui	$at, 0x40C0
/* 000308 0x80C1F8A0 44814000 */ mtc1	$at, $f8
/* 000309 0x80C1F8A4 46040182 */ mul.s	$f6, $f0, $f4
/* 000310 0x80C1F8A8 46083280 */ add.s	$f10, $f6, $f8
/* 000311 0x80C1F8AC E7AA002C */ swc1	$f10, 0X2C($sp)
/* 000312 0x80C1F8B0 0C03FB61 */ jal	Math_Sins
/* 000313 0x80C1F8B4 860400BC */ lh	$a0, 0XBC($s0)
/* 000314 0x80C1F8B8 C7A2002C */ lwc1	$f2, 0X2C($sp)
/* 000315 0x80C1F8BC 860400BC */ lh	$a0, 0XBC($s0)
/* 000316 0x80C1F8C0 46001087 */ neg.s	$f2, $f2
/* 000317 0x80C1F8C4 46020402 */ mul.s	$f16, $f0, $f2
/* 000318 0x80C1F8C8 E6100D7C */ swc1	$f16, 0XD7C($s0)
/* 000319 0x80C1F8CC 0C03FB51 */ jal	Math_Coss
/* 000320 0x80C1F8D0 E7A20020 */ swc1	$f2, 0X20($sp)
/* 000321 0x80C1F8D4 C7A20020 */ lwc1	$f2, 0X20($sp)
/* 000322 0x80C1F8D8 46020482 */ mul.s	$f18, $f0, $f2
/* 000323 0x80C1F8DC E7B20028 */ swc1	$f18, 0X28($sp)
/* 000324 0x80C1F8E0 0C03FB61 */ jal	Math_Sins
/* 000325 0x80C1F8E4 860400BE */ lh	$a0, 0XBE($s0)
/* 000326 0x80C1F8E8 C7A40028 */ lwc1	$f4, 0X28($sp)
/* 000327 0x80C1F8EC 860400BE */ lh	$a0, 0XBE($s0)
/* 000328 0x80C1F8F0 46040182 */ mul.s	$f6, $f0, $f4
/* 000329 0x80C1F8F4 0C03FB51 */ jal	Math_Coss
/* 000330 0x80C1F8F8 E6060D78 */ swc1	$f6, 0XD78($s0)
/* 000331 0x80C1F8FC C7A80028 */ lwc1	$f8, 0X28($sp)
/* 000332 0x80C1F900 46080282 */ mul.s	$f10, $f0, $f8
/* 000333 0x80C1F904 0C021BE8 */ jal	rand
/* 000334 0x80C1F908 E60A0D80 */ swc1	$f10, 0XD80($s0)
/* 000335 0x80C1F90C 860E00BC */ lh	$t6, 0XBC($s0)
/* 000336 0x80C1F910 0002CA02 */ srl	$t9, $v0, 8
/* 000337 0x80C1F914 01D94021 */ addu	$t0, $t6, $t9
/* 000338 0x80C1F918 0C021BE8 */ jal	rand
/* 000339 0x80C1F91C A60800BC */ sh	$t0, 0XBC($s0)
/* 000340 0x80C1F920 860900BE */ lh	$t1, 0XBE($s0)
/* 000341 0x80C1F924 860300BC */ lh	$v1, 0XBC($s0)
/* 000342 0x80C1F928 00026182 */ srl	$t4, $v0, 6
/* 000343 0x80C1F92C 012C6821 */ addu	$t5, $t1, $t4
/* 000344 0x80C1F930 04610003 */ bgez	$v1, .L80C1F940
/* 000345 0x80C1F934 A60D00BE */ sh	$t5, 0XBE($s0)
/* 000346 0x80C1F938 10000002 */ b	.L80C1F944
/* 000347 0x80C1F93C 00031023 */ negu	$v0, $v1
.L80C1F940:
/* 000348 0x80C1F940 00601025 */ move	$v0, $v1
.L80C1F944:
/* 000349 0x80C1F944 28411556 */ slti	$at, $v0, 0X1556
/* 000350 0x80C1F948 54200008 */ bnezl	$at, .L80C1F96C
/* 000351 0x80C1F94C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000352 0x80C1F950 18600004 */ blez	$v1, .L80C1F964
/* 000353 0x80C1F954 2418EAAB */ li	$t8, -0X1555
/* 000354 0x80C1F958 240F1555 */ li	$t7, 0X1555
/* 000355 0x80C1F95C 10000002 */ b	.L80C1F968
/* 000356 0x80C1F960 A60F00BC */ sh	$t7, 0XBC($s0)
.L80C1F964:
/* 000357 0x80C1F964 A61800BC */ sh	$t8, 0XBC($s0)
.L80C1F968:
/* 000358 0x80C1F968 8FBF001C */ lw	$ra, 0X1C($sp)
.L80C1F96C:
/* 000359 0x80C1F96C 8FB00018 */ lw	$s0, 0X18($sp)
/* 000360 0x80C1F970 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000361 0x80C1F974 03E00008 */ jr	$ra
/* 000362 0x80C1F978 00000000 */ nop

