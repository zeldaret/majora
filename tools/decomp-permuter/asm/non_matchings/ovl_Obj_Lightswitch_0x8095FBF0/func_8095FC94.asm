glabel func_8095FC94
/* 000041 0x8095FC94 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000042 0x8095FC98 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000043 0x8095FC9C AFA5001C */ sw	$a1, 0X1C($sp)
/* 000044 0x8095FCA0 00803825 */ move	$a3, $a0
/* 000045 0x8095FCA4 50C00009 */ beqzl	$a2, .L8095FCCC
/* 000046 0x8095FCA8 84E5001C */ lh	$a1, 0X1C($a3)
/* 000047 0x8095FCAC 84E5001C */ lh	$a1, 0X1C($a3)
/* 000048 0x8095FCB0 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000049 0x8095FCB4 00052A03 */ sra	$a1, $a1, 8
/* 000050 0x8095FCB8 0C02D6FD */ jal	Actor_SetSwitchFlag
/* 000051 0x8095FCBC 30A5007F */ andi	$a1, $a1, 0X7F
/* 000052 0x8095FCC0 10000007 */ b	.L8095FCE0
/* 000053 0x8095FCC4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000054 0x8095FCC8 84E5001C */ lh	$a1, 0X1C($a3)
.L8095FCCC:
/* 000055 0x8095FCCC 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000056 0x8095FCD0 00052A03 */ sra	$a1, $a1, 8
/* 000057 0x8095FCD4 0C02D70D */ jal	Actor_UnsetSwitchFlag
/* 000058 0x8095FCD8 30A5007F */ andi	$a1, $a1, 0X7F
/* 000059 0x8095FCDC 8FBF0014 */ lw	$ra, 0X14($sp)
.L8095FCE0:
/* 000060 0x8095FCE0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000061 0x8095FCE4 03E00008 */ jr	$ra
/* 000062 0x8095FCE8 00000000 */ nop

