glabel func_80B379C0
/* 000592 0x80B379C0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000593 0x80B379C4 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000594 0x80B379C8 00802825 */ move	$a1, $a0
/* 000595 0x80B379CC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000596 0x80B379D0 AFA40018 */ sw	$a0, 0X18($sp)
/* 000597 0x80B379D4 84A2021E */ lh	$v0, 0X21E($a1)
/* 000598 0x80B379D8 24010028 */ li	$at, 0X28
/* 000599 0x80B379DC 00A02025 */ move	$a0, $a1
/* 000600 0x80B379E0 14410005 */ bne	$v0, $at, .L80B379F8
/* 000601 0x80B379E4 244E0001 */ addiu	$t6, $v0, 0X1
/* 000602 0x80B379E8 0C2CDE85 */ jal	func_80B37A14
/* 000603 0x80B379EC AFA50018 */ sw	$a1, 0X18($sp)
/* 000604 0x80B379F0 10000002 */ b	.L80B379FC
/* 000605 0x80B379F4 8FA50018 */ lw	$a1, 0X18($sp)
.L80B379F8:
/* 000606 0x80B379F8 A4AE021E */ sh	$t6, 0X21E($a1)
.L80B379FC:
/* 000607 0x80B379FC 0C2CDF01 */ jal	func_80B37C04
/* 000608 0x80B37A00 24A40218 */ addiu	$a0, $a1, 0X218
/* 000609 0x80B37A04 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000610 0x80B37A08 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000611 0x80B37A0C 03E00008 */ jr	$ra
/* 000612 0x80B37A10 00000000 */ nop

