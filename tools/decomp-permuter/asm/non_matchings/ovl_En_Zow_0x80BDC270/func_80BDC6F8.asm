glabel func_80BDC6F8
/* 000290 0x80BDC6F8 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 000291 0x80BDC6FC AFB20044 */ sw	$s2, 0X44($sp)
/* 000292 0x80BDC700 AFB0003C */ sw	$s0, 0X3C($sp)
/* 000293 0x80BDC704 00A08025 */ move	$s0, $a1
/* 000294 0x80BDC708 00809025 */ move	$s2, $a0
/* 000295 0x80BDC70C AFBF004C */ sw	$ra, 0X4C($sp)
/* 000296 0x80BDC710 AFB30048 */ sw	$s3, 0X48($sp)
/* 000297 0x80BDC714 AFB10040 */ sw	$s1, 0X40($sp)
/* 000298 0x80BDC718 F7BA0030 */ sdc1	$f26, 0X30($sp)
/* 000299 0x80BDC71C F7B80028 */ sdc1	$f24, 0X28($sp)
/* 000300 0x80BDC720 F7B60020 */ sdc1	$f22, 0X20($sp)
/* 000301 0x80BDC724 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 000302 0x80BDC728 3C0180BE */ lui	$at, %hi(D_80BDDD88)
/* 000303 0x80BDC72C C438DD88 */ lwc1	$f24, %lo(D_80BDDD88)($at)
/* 000304 0x80BDC730 3C0180BE */ lui	$at, %hi(D_80BDDD8C)
/* 000305 0x80BDC734 C436DD8C */ lwc1	$f22, %lo(D_80BDDD8C)($at)
/* 000306 0x80BDC738 3C01C1A0 */ lui	$at, 0xC1A0
/* 000307 0x80BDC73C 4481A000 */ mtc1	$at, $f20
/* 000308 0x80BDC740 4480D000 */ mtc1	$zero, $f26
/* 000309 0x80BDC744 00008825 */ move	$s1, $zero
/* 000310 0x80BDC748 24130002 */ li	$s3, 0X2
.L80BDC74C:
/* 000311 0x80BDC74C 920E0000 */ lbu	$t6, 0X0($s0)
/* 000312 0x80BDC750 566E0027 */ bnel	$s3, $t6, .L80BDC7F0
/* 000313 0x80BDC754 26310001 */ addiu	$s1, $s1, 0X1
/* 000314 0x80BDC758 C6040014 */ lwc1	$f4, 0X14($s0)
/* 000315 0x80BDC75C C606002C */ lwc1	$f6, 0X2C($s0)
/* 000316 0x80BDC760 C6000030 */ lwc1	$f0, 0X30($s0)
/* 000317 0x80BDC764 C60A0018 */ lwc1	$f10, 0X18($s0)
/* 000318 0x80BDC768 46062200 */ add.s	$f8, $f4, $f6
/* 000319 0x80BDC76C C6040034 */ lwc1	$f4, 0X34($s0)
/* 000320 0x80BDC770 C612001C */ lwc1	$f18, 0X1C($s0)
/* 000321 0x80BDC774 4600A03E */ c.le.s	$f20, $f0
/* 000322 0x80BDC778 E6080014 */ swc1	$f8, 0X14($s0)
/* 000323 0x80BDC77C 46005400 */ add.s	$f16, $f10, $f0
/* 000324 0x80BDC780 02002025 */ move	$a0, $s0
/* 000325 0x80BDC784 26050014 */ addiu	$a1, $s0, 0X14
/* 000326 0x80BDC788 46049180 */ add.s	$f6, $f18, $f4
/* 000327 0x80BDC78C E6100018 */ swc1	$f16, 0X18($s0)
/* 000328 0x80BDC790 240F00C8 */ li	$t7, 0XC8
/* 000329 0x80BDC794 45000005 */ bc1f .L80BDC7AC
/* 000330 0x80BDC798 E606001C */ swc1	$f6, 0X1C($s0)
/* 000331 0x80BDC79C C6080024 */ lwc1	$f8, 0X24($s0)
/* 000332 0x80BDC7A0 46080280 */ add.s	$f10, $f0, $f8
/* 000333 0x80BDC7A4 10000003 */ b	.L80BDC7B4
/* 000334 0x80BDC7A8 E60A0030 */ swc1	$f10, 0X30($s0)
.L80BDC7AC:
/* 000335 0x80BDC7AC E6140030 */ swc1	$f20, 0X30($s0)
/* 000336 0x80BDC7B0 E61A0024 */ swc1	$f26, 0X24($s0)
.L80BDC7B4:
/* 000337 0x80BDC7B4 C6500028 */ lwc1	$f16, 0X28($s2)
/* 000338 0x80BDC7B8 C652008C */ lwc1	$f18, 0X8C($s2)
/* 000339 0x80BDC7BC C6040018 */ lwc1	$f4, 0X18($s0)
/* 000340 0x80BDC7C0 46128000 */ add.s	$f0, $f16, $f18
/* 000341 0x80BDC7C4 4600203C */ c.lt.s	$f4, $f0
/* 000342 0x80BDC7C8 00000000 */ nop
/* 000343 0x80BDC7CC 45020008 */ bc1fl .L80BDC7F0
/* 000344 0x80BDC7D0 26310001 */ addiu	$s1, $s1, 0X1
/* 000345 0x80BDC7D4 A2000000 */ sb	$zero, 0X0($s0)
/* 000346 0x80BDC7D8 E6000018 */ swc1	$f0, 0X18($s0)
/* 000347 0x80BDC7DC 4406B000 */ mfc1	$a2, $f22
/* 000348 0x80BDC7E0 4407C000 */ mfc1	$a3, $f24
/* 000349 0x80BDC7E4 0C2F709C */ jal	func_80BDC270
/* 000350 0x80BDC7E8 AFAF0010 */ sw	$t7, 0X10($sp)
/* 000351 0x80BDC7EC 26310001 */ addiu	$s1, $s1, 0X1
.L80BDC7F0:
/* 000352 0x80BDC7F0 00118C00 */ sll	$s1, $s1, 16
/* 000353 0x80BDC7F4 00118C03 */ sra	$s1, $s1, 16
/* 000354 0x80BDC7F8 2A21000F */ slti	$at, $s1, 0XF
/* 000355 0x80BDC7FC 1420FFD3 */ bnez	$at, .L80BDC74C
/* 000356 0x80BDC800 26100038 */ addiu	$s0, $s0, 0X38
/* 000357 0x80BDC804 8FBF004C */ lw	$ra, 0X4C($sp)
/* 000358 0x80BDC808 D7B40018 */ ldc1	$f20, 0X18($sp)
/* 000359 0x80BDC80C D7B60020 */ ldc1	$f22, 0X20($sp)
/* 000360 0x80BDC810 D7B80028 */ ldc1	$f24, 0X28($sp)
/* 000361 0x80BDC814 D7BA0030 */ ldc1	$f26, 0X30($sp)
/* 000362 0x80BDC818 8FB0003C */ lw	$s0, 0X3C($sp)
/* 000363 0x80BDC81C 8FB10040 */ lw	$s1, 0X40($sp)
/* 000364 0x80BDC820 8FB20044 */ lw	$s2, 0X44($sp)
/* 000365 0x80BDC824 8FB30048 */ lw	$s3, 0X48($sp)
/* 000366 0x80BDC828 03E00008 */ jr	$ra
/* 000367 0x80BDC82C 27BD0050 */ addiu	$sp, $sp, 0X50


.section .late_rodata

glabel D_80BDDD88
/* 001734 0x80BDDD88 */ .word	0x3DF5C28F
glabel D_80BDDD8C
/* 001735 0x80BDDD8C */ .word	0x3D75C28F
