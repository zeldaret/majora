glabel func_80A0D414
/* 000769 0x80A0D414 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000770 0x80A0D418 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000771 0x80A0D41C 8CA21CCC */ lw	$v0, 0X1CCC($a1)
/* 000772 0x80A0D420 44802000 */ mtc1	$zero, $f4
/* 000773 0x80A0D424 3C0143C3 */ lui	$at, 0x43C3
/* 000774 0x80A0D428 C4400024 */ lwc1	$f0, 0X24($v0)
/* 000775 0x80A0D42C 4600203E */ c.le.s	$f4, $f0
/* 000776 0x80A0D430 00000000 */ nop
/* 000777 0x80A0D434 45020017 */ bc1fl .L80A0D494
/* 000778 0x80A0D438 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000779 0x80A0D43C 44813000 */ mtc1	$at, $f6
/* 000780 0x80A0D440 3C014290 */ lui	$at, 0x4290
/* 000781 0x80A0D444 4606003E */ c.le.s	$f0, $f6
/* 000782 0x80A0D448 00000000 */ nop
/* 000783 0x80A0D44C 45020011 */ bc1fl .L80A0D494
/* 000784 0x80A0D450 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000785 0x80A0D454 C440002C */ lwc1	$f0, 0X2C($v0)
/* 000786 0x80A0D458 44814000 */ mtc1	$at, $f8
/* 000787 0x80A0D45C 3C0180A1 */ lui	$at, %hi(D_80A10AD8)
/* 000788 0x80A0D460 4600403E */ c.le.s	$f8, $f0
/* 000789 0x80A0D464 00000000 */ nop
/* 000790 0x80A0D468 4502000A */ bc1fl .L80A0D494
/* 000791 0x80A0D46C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000792 0x80A0D470 C42A0AD8 */ lwc1	$f10, %lo(D_80A10AD8)($at)
/* 000793 0x80A0D474 3C0580A1 */ lui	$a1, %hi(func_80A0DD40)
/* 000794 0x80A0D478 460A003E */ c.le.s	$f0, $f10
/* 000795 0x80A0D47C 00000000 */ nop
/* 000796 0x80A0D480 45020004 */ bc1fl .L80A0D494
/* 000797 0x80A0D484 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000798 0x80A0D488 0C28322B */ jal	func_80A0C8AC
/* 000799 0x80A0D48C 24A5DD40 */ addiu	$a1, $a1, %lo(func_80A0DD40)
/* 000800 0x80A0D490 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A0D494:
/* 000801 0x80A0D494 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000802 0x80A0D498 03E00008 */ jr	$ra
/* 000803 0x80A0D49C 00000000 */ nop

