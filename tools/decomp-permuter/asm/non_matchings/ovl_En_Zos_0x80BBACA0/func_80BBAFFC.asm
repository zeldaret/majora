glabel func_80BBAFFC
/* 000215 0x80BBAFFC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000216 0x80BBB000 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000217 0x80BBB004 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000218 0x80BBB008 00803825 */ move	$a3, $a0
/* 000219 0x80BBB00C 24E4021C */ addiu	$a0, $a3, 0X21C
/* 000220 0x80BBB010 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000221 0x80BBB014 AFA70018 */ sw	$a3, 0X18($sp)
/* 000222 0x80BBB018 10400029 */ beqz	$v0, .L80BBB0C0
/* 000223 0x80BBB01C 8FA70018 */ lw	$a3, 0X18($sp)
/* 000224 0x80BBB020 3C014080 */ lui	$at, 0x4080
/* 000225 0x80BBB024 44816000 */ mtc1	$at, $f12
/* 000226 0x80BBB028 0C05E565 */ jal	randZeroOneScaled
/* 000227 0x80BBB02C AFA70018 */ sw	$a3, 0X18($sp)
/* 000228 0x80BBB030 4600010D */ trunc.w.s	$f4, $f0
/* 000229 0x80BBB034 8FA70018 */ lw	$a3, 0X18($sp)
/* 000230 0x80BBB038 24010001 */ li	$at, 0X1
/* 000231 0x80BBB03C 24050007 */ li	$a1, 0X7
/* 000232 0x80BBB040 44022000 */ mfc1	$v0, $f4
/* 000233 0x80BBB044 00E02025 */ move	$a0, $a3
/* 000234 0x80BBB048 00021400 */ sll	$v0, $v0, 16
/* 000235 0x80BBB04C 00021403 */ sra	$v0, $v0, 16
/* 000236 0x80BBB050 10400008 */ beqz	$v0, .L80BBB074
/* 000237 0x80BBB054 00000000 */ nop
/* 000238 0x80BBB058 1041000A */ beq	$v0, $at, .L80BBB084
/* 000239 0x80BBB05C 00E02025 */ move	$a0, $a3
/* 000240 0x80BBB060 24010002 */ li	$at, 0X2
/* 000241 0x80BBB064 1041000C */ beq	$v0, $at, .L80BBB098
/* 000242 0x80BBB068 00E02025 */ move	$a0, $a3
/* 000243 0x80BBB06C 1000000F */ b	.L80BBB0AC
/* 000244 0x80BBB070 00E02025 */ move	$a0, $a3
.L80BBB074:
/* 000245 0x80BBB074 0C2EEBA1 */ jal	func_80BBAE84
/* 000246 0x80BBB078 24060002 */ li	$a2, 0X2
/* 000247 0x80BBB07C 10000011 */ b	.L80BBB0C4
/* 000248 0x80BBB080 24020001 */ li	$v0, 0X1
.L80BBB084:
/* 000249 0x80BBB084 24050008 */ li	$a1, 0X8
/* 000250 0x80BBB088 0C2EEBA1 */ jal	func_80BBAE84
/* 000251 0x80BBB08C 24060002 */ li	$a2, 0X2
/* 000252 0x80BBB090 1000000C */ b	.L80BBB0C4
/* 000253 0x80BBB094 24020001 */ li	$v0, 0X1
.L80BBB098:
/* 000254 0x80BBB098 2405000B */ li	$a1, 0XB
/* 000255 0x80BBB09C 0C2EEBA1 */ jal	func_80BBAE84
/* 000256 0x80BBB0A0 24060002 */ li	$a2, 0X2
/* 000257 0x80BBB0A4 10000007 */ b	.L80BBB0C4
/* 000258 0x80BBB0A8 24020001 */ li	$v0, 0X1
.L80BBB0AC:
/* 000259 0x80BBB0AC 2405000C */ li	$a1, 0XC
/* 000260 0x80BBB0B0 0C2EEBA1 */ jal	func_80BBAE84
/* 000261 0x80BBB0B4 24060002 */ li	$a2, 0X2
/* 000262 0x80BBB0B8 10000002 */ b	.L80BBB0C4
/* 000263 0x80BBB0BC 24020001 */ li	$v0, 0X1
.L80BBB0C0:
/* 000264 0x80BBB0C0 00001025 */ move	$v0, $zero
.L80BBB0C4:
/* 000265 0x80BBB0C4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000266 0x80BBB0C8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000267 0x80BBB0CC 03E00008 */ jr	$ra
/* 000268 0x80BBB0D0 00000000 */ nop

