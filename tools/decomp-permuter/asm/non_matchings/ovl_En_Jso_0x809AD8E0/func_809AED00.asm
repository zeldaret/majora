glabel func_809AED00
/* 001288 0x809AED00 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001289 0x809AED04 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001290 0x809AED08 C480015C */ lwc1	$f0, 0X15C($a0)
/* 001291 0x809AED0C C4840350 */ lwc1	$f4, 0X350($a0)
/* 001292 0x809AED10 4600203E */ c.le.s	$f4, $f0
/* 001293 0x809AED14 00000000 */ nop
/* 001294 0x809AED18 4502000B */ bc1fl .L809AED48
/* 001295 0x809AED1C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001296 0x809AED20 848E028E */ lh	$t6, 0X28E($a0)
/* 001297 0x809AED24 A480028A */ sh	$zero, 0X28A($a0)
/* 001298 0x809AED28 3C01809B */ lui	$at, %hi(D_809B0F40)
/* 001299 0x809AED2C 11C00003 */ beqz	$t6, .L809AED3C
/* 001300 0x809AED30 00000000 */ nop
/* 001301 0x809AED34 A480028E */ sh	$zero, 0X28E($a0)
/* 001302 0x809AED38 AC200F40 */ sw	$zero, %lo(D_809B0F40)($at)
.L809AED3C:
/* 001303 0x809AED3C 0C26BA6C */ jal	func_809AE9B0
/* 001304 0x809AED40 00000000 */ nop
/* 001305 0x809AED44 8FBF0014 */ lw	$ra, 0X14($sp)
.L809AED48:
/* 001306 0x809AED48 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001307 0x809AED4C 03E00008 */ jr	$ra
/* 001308 0x809AED50 00000000 */ nop

