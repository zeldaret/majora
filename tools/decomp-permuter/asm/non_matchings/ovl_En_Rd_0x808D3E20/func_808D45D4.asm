glabel func_808D45D4
/* 000493 0x808D45D4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000494 0x808D45D8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000495 0x808D45DC 00803825 */ move	$a3, $a0
/* 000496 0x808D45E0 3C050601 */ lui	$a1, 0x0601
/* 000497 0x808D45E4 24A5216C */ addiu	$a1, $a1, 0X216C
/* 000498 0x808D45E8 24E40144 */ addiu	$a0, $a3, 0X144
/* 000499 0x808D45EC 3C06C0C0 */ lui	$a2, 0xC0C0
/* 000500 0x808D45F0 0C04DD65 */ jal	SkelAnime_ChangeAnimTransitionRepeat
/* 000501 0x808D45F4 AFA70018 */ sw	$a3, 0X18($sp)
/* 000502 0x808D45F8 8FA70018 */ lw	$a3, 0X18($sp)
/* 000503 0x808D45FC 240E000E */ li	$t6, 0XE
/* 000504 0x808D4600 0C021BF7 */ jal	randZeroOne
/* 000505 0x808D4604 A0EE03EF */ sb	$t6, 0X3EF($a3)
/* 000506 0x808D4608 3C014120 */ lui	$at, 0x4120
/* 000507 0x808D460C 44812000 */ mtc1	$at, $f4
/* 000508 0x808D4610 3C0140A0 */ lui	$at, 0x40A0
/* 000509 0x808D4614 44814000 */ mtc1	$at, $f8
/* 000510 0x808D4618 46040182 */ mul.s	$f6, $f0, $f4
/* 000511 0x808D461C 8FA70018 */ lw	$a3, 0X18($sp)
/* 000512 0x808D4620 44809000 */ mtc1	$zero, $f18
/* 000513 0x808D4624 3C08808D */ lui	$t0, %hi(func_808D4660)
/* 000514 0x808D4628 84F900BE */ lh	$t9, 0XBE($a3)
/* 000515 0x808D462C 25084660 */ addiu	$t0, $t0, %lo(func_808D4660)
/* 000516 0x808D4630 A4E003E4 */ sh	$zero, 0X3E4($a3)
/* 000517 0x808D4634 46083280 */ add.s	$f10, $f6, $f8
/* 000518 0x808D4638 ACE80188 */ sw	$t0, 0X188($a3)
/* 000519 0x808D463C E4F20070 */ swc1	$f18, 0X70($a3)
/* 000520 0x808D4640 A4F90032 */ sh	$t9, 0X32($a3)
/* 000521 0x808D4644 4600540D */ trunc.w.s	$f16, $f10
/* 000522 0x808D4648 44188000 */ mfc1	$t8, $f16
/* 000523 0x808D464C 00000000 */ nop
/* 000524 0x808D4650 A4F803D6 */ sh	$t8, 0X3D6($a3)
/* 000525 0x808D4654 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000526 0x808D4658 03E00008 */ jr	$ra
/* 000527 0x808D465C 27BD0018 */ addiu	$sp, $sp, 0X18

