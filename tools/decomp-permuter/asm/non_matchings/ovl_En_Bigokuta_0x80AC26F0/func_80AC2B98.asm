glabel func_80AC2B98
/* 000298 0x80AC2B98 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000299 0x80AC2B9C AFB00020 */ sw	$s0, 0X20($sp)
/* 000300 0x80AC2BA0 00808025 */ move	$s0, $a0
/* 000301 0x80AC2BA4 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000302 0x80AC2BA8 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000303 0x80AC2BAC 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000304 0x80AC2BB0 260E0024 */ addiu	$t6, $s0, 0X24
/* 000305 0x80AC2BB4 AFAE0010 */ sw	$t6, 0X10($sp)
/* 000306 0x80AC2BB8 24840830 */ addiu	$a0, $a0, 0X830
/* 000307 0x80AC2BBC AFA4002C */ sw	$a0, 0X2C($sp)
/* 000308 0x80AC2BC0 26050080 */ addiu	$a1, $s0, 0X80
/* 000309 0x80AC2BC4 27A60030 */ addiu	$a2, $sp, 0X30
/* 000310 0x80AC2BC8 0C031047 */ jal	func_800C411C
/* 000311 0x80AC2BCC 02003825 */ move	$a3, $s0
/* 000312 0x80AC2BD0 E6000088 */ swc1	$f0, 0X88($s0)
/* 000313 0x80AC2BD4 8E060024 */ lw	$a2, 0X24($s0)
/* 000314 0x80AC2BD8 8E07002C */ lw	$a3, 0X2C($s0)
/* 000315 0x80AC2BDC 260F000C */ addiu	$t7, $s0, 0XC
/* 000316 0x80AC2BE0 27B80034 */ addiu	$t8, $sp, 0X34
/* 000317 0x80AC2BE4 AFB80014 */ sw	$t8, 0X14($sp)
/* 000318 0x80AC2BE8 AFAF0010 */ sw	$t7, 0X10($sp)
/* 000319 0x80AC2BEC 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000320 0x80AC2BF0 0C03287A */ jal	func_800CA1E8
/* 000321 0x80AC2BF4 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000322 0x80AC2BF8 10400008 */ beqz	$v0, .L80AC2C1C
/* 000323 0x80AC2BFC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000324 0x80AC2C00 C6040088 */ lwc1	$f4, 0X88($s0)
/* 000325 0x80AC2C04 C606000C */ lwc1	$f6, 0XC($s0)
/* 000326 0x80AC2C08 24020001 */ li	$v0, 0X1
/* 000327 0x80AC2C0C 4604303E */ c.le.s	$f6, $f4
/* 000328 0x80AC2C10 00000000 */ nop
/* 000329 0x80AC2C14 45000003 */ bc1f .L80AC2C24
/* 000330 0x80AC2C18 00000000 */ nop
.L80AC2C1C:
/* 000331 0x80AC2C1C 10000001 */ b	.L80AC2C24
/* 000332 0x80AC2C20 00001025 */ move	$v0, $zero
.L80AC2C24:
/* 000333 0x80AC2C24 8FB00020 */ lw	$s0, 0X20($sp)
/* 000334 0x80AC2C28 03E00008 */ jr	$ra
/* 000335 0x80AC2C2C 27BD0038 */ addiu	$sp, $sp, 0X38

