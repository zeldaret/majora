glabel func_808BE22C
/* 001043 0x808BE22C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 001044 0x808BE230 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001045 0x808BE234 AFA50024 */ sw	$a1, 0X24($sp)
/* 001046 0x808BE238 00803025 */ move	$a2, $a0
/* 001047 0x808BE23C 24C40144 */ addiu	$a0, $a2, 0X144
/* 001048 0x808BE240 AFA4001C */ sw	$a0, 0X1C($sp)
/* 001049 0x808BE244 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 001050 0x808BE248 AFA60020 */ sw	$a2, 0X20($sp)
/* 001051 0x808BE24C 8FA4001C */ lw	$a0, 0X1C($sp)
/* 001052 0x808BE250 0C04DE2E */ jal	func_801378B8
/* 001053 0x808BE254 24050000 */ li	$a1, 0X0
/* 001054 0x808BE258 10400005 */ beqz	$v0, .L808BE270
/* 001055 0x808BE25C 8FA60020 */ lw	$a2, 0X20($sp)
/* 001056 0x808BE260 84C20190 */ lh	$v0, 0X190($a2)
/* 001057 0x808BE264 10400002 */ beqz	$v0, .L808BE270
/* 001058 0x808BE268 244EFFFF */ addiu	$t6, $v0, -0X1
/* 001059 0x808BE26C A4CE0190 */ sh	$t6, 0X190($a2)
.L808BE270:
/* 001060 0x808BE270 84CF0190 */ lh	$t7, 0X190($a2)
/* 001061 0x808BE274 55E00004 */ bnezl	$t7, .L808BE288
/* 001062 0x808BE278 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001063 0x808BE27C 0C22F7D8 */ jal	func_808BDF60
/* 001064 0x808BE280 00C02025 */ move	$a0, $a2
/* 001065 0x808BE284 8FBF0014 */ lw	$ra, 0X14($sp)
.L808BE288:
/* 001066 0x808BE288 27BD0020 */ addiu	$sp, $sp, 0X20
/* 001067 0x808BE28C 03E00008 */ jr	$ra
/* 001068 0x808BE290 00000000 */ nop

