glabel func_800B4AEC
/* 015371 0x800B4AEC 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 015372 0x800B4AF0 AFB00020 */ sw	$s0, 0X20($sp)
/* 015373 0x800B4AF4 44866000 */ mtc1	$a2, $f12
/* 015374 0x800B4AF8 00A08025 */ move	$s0, $a1
/* 015375 0x800B4AFC AFBF0024 */ sw	$ra, 0X24($sp)
/* 015376 0x800B4B00 C6000028 */ lwc1	$f0, 0X28($s0)
/* 015377 0x800B4B04 260E0024 */ addiu	$t6, $s0, 0X24
/* 015378 0x800B4B08 24850830 */ addiu	$a1, $a0, 0X830
/* 015379 0x800B4B0C 460C0100 */ add.s	$f4, $f0, $f12
/* 015380 0x800B4B10 E7A00030 */ swc1	$f0, 0X30($sp)
/* 015381 0x800B4B14 26060080 */ addiu	$a2, $s0, 0X80
/* 015382 0x800B4B18 27A70034 */ addiu	$a3, $sp, 0X34
/* 015383 0x800B4B1C E6040028 */ swc1	$f4, 0X28($s0)
/* 015384 0x800B4B20 AFAE0014 */ sw	$t6, 0X14($sp)
/* 015385 0x800B4B24 0C031062 */ jal	func_800C4188
/* 015386 0x800B4B28 AFB00010 */ sw	$s0, 0X10($sp)
/* 015387 0x800B4B2C E6000088 */ swc1	$f0, 0X88($s0)
/* 015388 0x800B4B30 8FAF0034 */ lw	$t7, 0X34($sp)
/* 015389 0x800B4B34 A20F0085 */ sb	$t7, 0X85($s0)
/* 015390 0x800B4B38 C7A60030 */ lwc1	$f6, 0X30($sp)
/* 015391 0x800B4B3C E6060028 */ swc1	$f6, 0X28($s0)
/* 015392 0x800B4B40 8FBF0024 */ lw	$ra, 0X24($sp)
/* 015393 0x800B4B44 8FB00020 */ lw	$s0, 0X20($sp)
/* 015394 0x800B4B48 03E00008 */ jr	$ra
/* 015395 0x800B4B4C 27BD0038 */ addiu	$sp, $sp, 0X38

