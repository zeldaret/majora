glabel func_80AE0418
/* 000478 0x80AE0418 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000479 0x80AE041C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000480 0x80AE0420 AFA40018 */ sw	$a0, 0X18($sp)
/* 000481 0x80AE0424 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000482 0x80AE0428 8FA40018 */ lw	$a0, 0X18($sp)
/* 000483 0x80AE042C 0C02E19F */ jal	func_800B867C
/* 000484 0x80AE0430 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000485 0x80AE0434 10400006 */ beqz	$v0, .L80AE0450
/* 000486 0x80AE0438 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000487 0x80AE043C 2405107D */ li	$a1, 0X107D
/* 000488 0x80AE0440 0C05462C */ jal	func_801518B0
/* 000489 0x80AE0444 00003025 */ move	$a2, $zero
/* 000490 0x80AE0448 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000491 0x80AE044C 8FA40018 */ lw	$a0, 0X18($sp)
.L80AE0450:
/* 000492 0x80AE0450 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000493 0x80AE0454 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000494 0x80AE0458 03E00008 */ jr	$ra
/* 000495 0x80AE045C 00000000 */ nop

