glabel func_80C1F480
/* 000044 0x80C1F480 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000045 0x80C1F484 AFB2001C */ sw	$s2, 0X1C($sp)
/* 000046 0x80C1F488 00809025 */ move	$s2, $a0
/* 000047 0x80C1F48C AFBF0024 */ sw	$ra, 0X24($sp)
/* 000048 0x80C1F490 AFB30020 */ sw	$s3, 0X20($sp)
/* 000049 0x80C1F494 AFB10018 */ sw	$s1, 0X18($sp)
/* 000050 0x80C1F498 AFB00014 */ sw	$s0, 0X14($sp)
/* 000051 0x80C1F49C AFA5002C */ sw	$a1, 0X2C($sp)
/* 000052 0x80C1F4A0 00008025 */ move	$s0, $zero
/* 000053 0x80C1F4A4 26510148 */ addiu	$s1, $s2, 0X148
/* 000054 0x80C1F4A8 24130C30 */ li	$s3, 0XC30
.L80C1F4AC:
/* 000055 0x80C1F4AC 02402025 */ move	$a0, $s2
/* 000056 0x80C1F4B0 0C307D57 */ jal	func_80C1F55C
/* 000057 0x80C1F4B4 02202825 */ move	$a1, $s1
/* 000058 0x80C1F4B8 26100034 */ addiu	$s0, $s0, 0X34
/* 000059 0x80C1F4BC 1613FFFB */ bne	$s0, $s3, .L80C1F4AC
/* 000060 0x80C1F4C0 26310034 */ addiu	$s1, $s1, 0X34
/* 000061 0x80C1F4C4 0C307D3A */ jal	func_80C1F4E8
/* 000062 0x80C1F4C8 02402025 */ move	$a0, $s2
/* 000063 0x80C1F4CC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000064 0x80C1F4D0 8FB00014 */ lw	$s0, 0X14($sp)
/* 000065 0x80C1F4D4 8FB10018 */ lw	$s1, 0X18($sp)
/* 000066 0x80C1F4D8 8FB2001C */ lw	$s2, 0X1C($sp)
/* 000067 0x80C1F4DC 8FB30020 */ lw	$s3, 0X20($sp)
/* 000068 0x80C1F4E0 03E00008 */ jr	$ra
/* 000069 0x80C1F4E4 27BD0028 */ addiu	$sp, $sp, 0X28

