glabel func_80C0D27C
/* 002043 0x80C0D27C 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 002044 0x80C0D280 AFB00028 */ sw	$s0, 0X28($sp)
/* 002045 0x80C0D284 00808025 */ move	$s0, $a0
/* 002046 0x80C0D288 AFBF002C */ sw	$ra, 0X2C($sp)
/* 002047 0x80C0D28C AFA50034 */ sw	$a1, 0X34($sp)
/* 002048 0x80C0D290 2406000B */ li	$a2, 0XB
/* 002049 0x80C0D294 86020324 */ lh	$v0, 0X324($s0)
/* 002050 0x80C0D298 14C20008 */ bne	$a2, $v0, .L80C0D2BC
/* 002051 0x80C0D29C 00000000 */ nop
/* 002052 0x80C0D2A0 86030322 */ lh	$v1, 0X322($s0)
/* 002053 0x80C0D2A4 10600005 */ beqz	$v1, .L80C0D2BC
/* 002054 0x80C0D2A8 2861003C */ slti	$at, $v1, 0X3C
/* 002055 0x80C0D2AC 10200003 */ beqz	$at, .L80C0D2BC
/* 002056 0x80C0D2B0 240E000A */ li	$t6, 0XA
/* 002057 0x80C0D2B4 A60E0324 */ sh	$t6, 0X324($s0)
/* 002058 0x80C0D2B8 86020324 */ lh	$v0, 0X324($s0)
.L80C0D2BC:
/* 002059 0x80C0D2BC 10C20003 */ beq	$a2, $v0, .L80C0D2CC
/* 002060 0x80C0D2C0 2401000A */ li	$at, 0XA
/* 002061 0x80C0D2C4 54410012 */ bnel	$v0, $at, .L80C0D310
/* 002062 0x80C0D2C8 86190294 */ lh	$t9, 0X294($s0)
.L80C0D2CC:
/* 002063 0x80C0D2CC 860F0322 */ lh	$t7, 0X322($s0)
/* 002064 0x80C0D2D0 8FA40034 */ lw	$a0, 0X34($sp)
/* 002065 0x80C0D2D4 02002825 */ move	$a1, $s0
/* 002066 0x80C0D2D8 11E0000C */ beqz	$t7, .L80C0D30C
/* 002067 0x80C0D2DC 26060330 */ addiu	$a2, $s0, 0X330
/* 002068 0x80C0D2E0 24180002 */ li	$t8, 0X2
/* 002069 0x80C0D2E4 AFB80010 */ sw	$t8, 0X10($sp)
/* 002070 0x80C0D2E8 3C0180C1 */ lui	$at, %hi(D_80C0FB0C)
/* 002071 0x80C0D2EC C426FB0C */ lwc1	$f6, %lo(D_80C0FB0C)($at)
/* 002072 0x80C0D2F0 C604032C */ lwc1	$f4, 0X32C($s0)
/* 002073 0x80C0D2F4 24070011 */ li	$a3, 0X11
/* 002074 0x80C0D2F8 E7A60018 */ swc1	$f6, 0X18($sp)
/* 002075 0x80C0D2FC 0C02FDF3 */ jal	func_800BF7CC
/* 002076 0x80C0D300 E7A40014 */ swc1	$f4, 0X14($sp)
/* 002077 0x80C0D304 A6000322 */ sh	$zero, 0X322($s0)
/* 002078 0x80C0D308 A6000324 */ sh	$zero, 0X324($s0)
.L80C0D30C:
/* 002079 0x80C0D30C 86190294 */ lh	$t9, 0X294($s0)
.L80C0D310:
/* 002080 0x80C0D310 57200004 */ bnezl	$t9, .L80C0D324
/* 002081 0x80C0D314 8FBF002C */ lw	$ra, 0X2C($sp)
/* 002082 0x80C0D318 0C30321B */ jal	func_80C0C86C
/* 002083 0x80C0D31C 02002025 */ move	$a0, $s0
/* 002084 0x80C0D320 8FBF002C */ lw	$ra, 0X2C($sp)
.L80C0D324:
/* 002085 0x80C0D324 8FB00028 */ lw	$s0, 0X28($sp)
/* 002086 0x80C0D328 27BD0030 */ addiu	$sp, $sp, 0X30
/* 002087 0x80C0D32C 03E00008 */ jr	$ra
/* 002088 0x80C0D330 00000000 */ nop


.section .late_rodata

glabel D_80C0FB0C
/* 004639 0x80C0FB0C */ .word	0x3ECCCCCD
