glabel func_8092AC4C
/* 001231 0x8092AC4C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 001232 0x8092AC50 AFB00018 */ sw	$s0, 0X18($sp)
/* 001233 0x8092AC54 00808025 */ move	$s0, $a0
/* 001234 0x8092AC58 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001235 0x8092AC5C 10A00003 */ beqz	$a1, .L8092AC6C
/* 001236 0x8092AC60 02002025 */ move	$a0, $s0
/* 001237 0x8092AC64 0C02F941 */ jal	func_800BE504
/* 001238 0x8092AC68 260503AC */ addiu	$a1, $s0, 0X3AC
.L8092AC6C:
/* 001239 0x8092AC6C 860E0032 */ lh	$t6, 0X32($s0)
/* 001240 0x8092AC70 860F00BE */ lh	$t7, 0XBE($s0)
/* 001241 0x8092AC74 3C0140C0 */ lui	$at, 0x40C0
/* 001242 0x8092AC78 44812000 */ mtc1	$at, $f4
/* 001243 0x8092AC7C 34018000 */ ori	$at, $zero, 0X8000
/* 001244 0x8092AC80 01CF1023 */ subu	$v0, $t6, $t7
/* 001245 0x8092AC84 00411021 */ addu	$v0, $v0, $at
/* 001246 0x8092AC88 00021400 */ sll	$v0, $v0, 16
/* 001247 0x8092AC8C 00021403 */ sra	$v0, $v0, 16
/* 001248 0x8092AC90 04410003 */ bgez	$v0, .L8092ACA0
/* 001249 0x8092AC94 E6040070 */ swc1	$f4, 0X70($s0)
/* 001250 0x8092AC98 10000002 */ b	.L8092ACA4
/* 001251 0x8092AC9C 00021823 */ negu	$v1, $v0
.L8092ACA0:
/* 001252 0x8092ACA0 00401825 */ move	$v1, $v0
.L8092ACA4:
/* 001253 0x8092ACA4 28614001 */ slti	$at, $v1, 0X4001
/* 001254 0x8092ACA8 10200008 */ beqz	$at, .L8092ACCC
/* 001255 0x8092ACAC 26040144 */ addiu	$a0, $s0, 0X144
/* 001256 0x8092ACB0 3C050600 */ lui	$a1, 0x0600
/* 001257 0x8092ACB4 24A55254 */ addiu	$a1, $a1, 0X5254
/* 001258 0x8092ACB8 26040144 */ addiu	$a0, $s0, 0X144
/* 001259 0x8092ACBC 0C04DD22 */ jal	SkelAnime_ChangeAnimTransitionStop
/* 001260 0x8092ACC0 3C06C080 */ lui	$a2, 0xC080
/* 001261 0x8092ACC4 10000005 */ b	.L8092ACDC
/* 001262 0x8092ACC8 00000000 */ nop
.L8092ACCC:
/* 001263 0x8092ACCC 3C050600 */ lui	$a1, 0x0600
/* 001264 0x8092ACD0 24A5367C */ addiu	$a1, $a1, 0X367C
/* 001265 0x8092ACD4 0C04DD22 */ jal	SkelAnime_ChangeAnimTransitionStop
/* 001266 0x8092ACD8 3C06C080 */ lui	$a2, 0xC080
.L8092ACDC:
/* 001267 0x8092ACDC 3C188093 */ lui	$t8, %hi(func_8092ACFC)
/* 001268 0x8092ACE0 2718ACFC */ addiu	$t8, $t8, %lo(func_8092ACFC)
/* 001269 0x8092ACE4 AE1802F0 */ sw	$t8, 0X2F0($s0)
/* 001270 0x8092ACE8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001271 0x8092ACEC 8FB00018 */ lw	$s0, 0X18($sp)
/* 001272 0x8092ACF0 27BD0020 */ addiu	$sp, $sp, 0X20
/* 001273 0x8092ACF4 03E00008 */ jr	$ra
/* 001274 0x8092ACF8 00000000 */ nop

