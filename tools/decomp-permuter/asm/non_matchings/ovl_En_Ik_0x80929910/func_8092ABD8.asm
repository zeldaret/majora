glabel func_8092ABD8
/* 001202 0x8092ABD8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001203 0x8092ABDC AFBF0014 */ sw	$ra, 0X14($sp)
/* 001204 0x8092ABE0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001205 0x8092ABE4 00803825 */ move	$a3, $a0
/* 001206 0x8092ABE8 8FA4001C */ lw	$a0, 0X1C($sp)
/* 001207 0x8092ABEC 3C010001 */ lui	$at, 0x0001
/* 001208 0x8092ABF0 34218884 */ ori	$at, $at, 0X8884
/* 001209 0x8092ABF4 24E60478 */ addiu	$a2, $a3, 0X478
/* 001210 0x8092ABF8 AFA70018 */ sw	$a3, 0X18($sp)
/* 001211 0x8092ABFC 0C0389D0 */ jal	Collision_AddAC
/* 001212 0x8092AC00 00812821 */ addu	$a1, $a0, $at
/* 001213 0x8092AC04 8FA70018 */ lw	$a3, 0X18($sp)
/* 001214 0x8092AC08 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 001215 0x8092AC0C 24E40144 */ addiu	$a0, $a3, 0X144
/* 001216 0x8092AC10 1040000A */ beqz	$v0, .L8092AC3C
/* 001217 0x8092AC14 8FA70018 */ lw	$a3, 0X18($sp)
/* 001218 0x8092AC18 84EF02F6 */ lh	$t7, 0X2F6($a3)
/* 001219 0x8092AC1C 00E02025 */ move	$a0, $a3
/* 001220 0x8092AC20 25F8FFFF */ addiu	$t8, $t7, -0X1
/* 001221 0x8092AC24 A4F802F6 */ sh	$t8, 0X2F6($a3)
/* 001222 0x8092AC28 84F902F6 */ lh	$t9, 0X2F6($a3)
/* 001223 0x8092AC2C 57200004 */ bnezl	$t9, .L8092AC40
/* 001224 0x8092AC30 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001225 0x8092AC34 0C24A78B */ jal	func_80929E2C
/* 001226 0x8092AC38 8FA5001C */ lw	$a1, 0X1C($sp)
.L8092AC3C:
/* 001227 0x8092AC3C 8FBF0014 */ lw	$ra, 0X14($sp)
.L8092AC40:
/* 001228 0x8092AC40 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001229 0x8092AC44 03E00008 */ jr	$ra
/* 001230 0x8092AC48 00000000 */ nop

