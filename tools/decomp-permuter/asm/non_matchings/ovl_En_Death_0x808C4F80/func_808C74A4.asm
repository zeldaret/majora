glabel func_808C74A4
/* 002377 0x808C74A4 00001025 */ move	$v0, $zero
/* 002378 0x808C74A8 00801825 */ move	$v1, $a0
/* 002379 0x808C74AC 24060014 */ li	$a2, 0X14
/* 002380 0x808C74B0 24050005 */ li	$a1, 0X5
.L808C74B4:
/* 002381 0x808C74B4 8C6E06E4 */ lw	$t6, 0X6E4($v1)
/* 002382 0x808C74B8 24420004 */ addiu	$v0, $v0, 0X4
/* 002383 0x808C74BC 24630010 */ addiu	$v1, $v1, 0X10
/* 002384 0x808C74C0 A5C5001C */ sh	$a1, 0X1C($t6)
/* 002385 0x808C74C4 8C6F06D8 */ lw	$t7, 0X6D8($v1)
/* 002386 0x808C74C8 A5E5001C */ sh	$a1, 0X1C($t7)
/* 002387 0x808C74CC 8C7806DC */ lw	$t8, 0X6DC($v1)
/* 002388 0x808C74D0 A705001C */ sh	$a1, 0X1C($t8)
/* 002389 0x808C74D4 8C7906E0 */ lw	$t9, 0X6E0($v1)
/* 002390 0x808C74D8 1446FFF6 */ bne	$v0, $a2, .L808C74B4
/* 002391 0x808C74DC A725001C */ sh	$a1, 0X1C($t9)
/* 002392 0x808C74E0 3C08808C */ lui	$t0, %hi(func_808C74F8)
/* 002393 0x808C74E4 250874F8 */ addiu	$t0, $t0, %lo(func_808C74F8)
/* 002394 0x808C74E8 A48002EE */ sh	$zero, 0X2EE($a0)
/* 002395 0x808C74EC AC880188 */ sw	$t0, 0X188($a0)
/* 002396 0x808C74F0 03E00008 */ jr	$ra
/* 002397 0x808C74F4 00000000 */ nop

