glabel func_800C9AB0
/* 036860 0x800C9AB0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 036861 0x800C9AB4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 036862 0x800C9AB8 0C032693 */ jal	func_800C9A4C
/* 036863 0x800C9ABC 00000000 */ nop
/* 036864 0x800C9AC0 304E0002 */ andi	$t6, $v0, 0X2
/* 036865 0x800C9AC4 11C00003 */ beqz	$t6, .L800C9AD4
/* 036866 0x800C9AC8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 036867 0x800C9ACC 10000002 */ b	.L800C9AD8
/* 036868 0x800C9AD0 24030001 */ li	$v1, 0X1
.L800C9AD4:
/* 036869 0x800C9AD4 00001825 */ move	$v1, $zero
.L800C9AD8:
/* 036870 0x800C9AD8 00601025 */ move	$v0, $v1
/* 036871 0x800C9ADC 03E00008 */ jr	$ra
/* 036872 0x800C9AE0 27BD0018 */ addiu	$sp, $sp, 0X18

