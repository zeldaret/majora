glabel func_800B8C78
/* 019566 0x800B8C78 AFA40000 */ sw	$a0, 0X0($sp)
/* 019567 0x800B8C7C 8CAE0124 */ lw	$t6, 0X124($a1)
/* 019568 0x800B8C80 00001025 */ move	$v0, $zero
/* 019569 0x800B8C84 11C00003 */ beqz	$t6, .L800B8C94
/* 019570 0x800B8C88 00000000 */ nop
/* 019571 0x800B8C8C 03E00008 */ jr	$ra
/* 019572 0x800B8C90 24020001 */ li	$v0, 0X1
.L800B8C94:
/* 019573 0x800B8C94 03E00008 */ jr	$ra
/* 019574 0x800B8C98 00000000 */ nop

