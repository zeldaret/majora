glabel func_80B94C5C
/* 001619 0x80B94C5C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001620 0x80B94C60 44801000 */ mtc1	$zero, $f2
/* 001621 0x80B94C64 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001622 0x80B94C68 848E0304 */ lh	$t6, 0X304($a0)
/* 001623 0x80B94C6C 3C0880B9 */ lui	$t0, %hi(func_80B94A00)
/* 001624 0x80B94C70 E4820070 */ swc1	$f2, 0X70($a0)
/* 001625 0x80B94C74 11C00010 */ beqz	$t6, .L80B94CB8
/* 001626 0x80B94C78 25084A00 */ addiu	$t0, $t0, %lo(func_80B94A00)
/* 001627 0x80B94C7C C48000C4 */ lwc1	$f0, 0XC4($a0)
/* 001628 0x80B94C80 3C0141A0 */ lui	$at, 0x41A0
/* 001629 0x80B94C84 4600103C */ c.lt.s	$f2, $f0
/* 001630 0x80B94C88 00000000 */ nop
/* 001631 0x80B94C8C 45020006 */ bc1fl .L80B94CA8
/* 001632 0x80B94C90 3C01BF80 */ lui	$at, 0xBF80
/* 001633 0x80B94C94 44812000 */ mtc1	$at, $f4
/* 001634 0x80B94C98 00000000 */ nop
/* 001635 0x80B94C9C 46040181 */ sub.s	$f6, $f0, $f4
/* 001636 0x80B94CA0 E48600C4 */ swc1	$f6, 0XC4($a0)
/* 001637 0x80B94CA4 3C01BF80 */ lui	$at, 0xBF80
.L80B94CA8:
/* 001638 0x80B94CA8 44810000 */ mtc1	$at, $f0
/* 001639 0x80B94CAC 00000000 */ nop
/* 001640 0x80B94CB0 E4800068 */ swc1	$f0, 0X68($a0)
/* 001641 0x80B94CB4 E4800078 */ swc1	$f0, 0X78($a0)
.L80B94CB8:
/* 001642 0x80B94CB8 848F02FC */ lh	$t7, 0X2FC($a0)
/* 001643 0x80B94CBC 24010001 */ li	$at, 0X1
/* 001644 0x80B94CC0 55E10008 */ bnel	$t7, $at, .L80B94CE4
/* 001645 0x80B94CC4 84990304 */ lh	$t9, 0X304($a0)
/* 001646 0x80B94CC8 84980302 */ lh	$t8, 0X302($a0)
/* 001647 0x80B94CCC 24020002 */ li	$v0, 0X2
/* 001648 0x80B94CD0 57000004 */ bnezl	$t8, .L80B94CE4
/* 001649 0x80B94CD4 84990304 */ lh	$t9, 0X304($a0)
/* 001650 0x80B94CD8 A48202FE */ sh	$v0, 0X2FE($a0)
/* 001651 0x80B94CDC A4820300 */ sh	$v0, 0X300($a0)
/* 001652 0x80B94CE0 84990304 */ lh	$t9, 0X304($a0)
.L80B94CE4:
/* 001653 0x80B94CE4 24010005 */ li	$at, 0X5
/* 001654 0x80B94CE8 17210002 */ bne	$t9, $at, .L80B94CF4
/* 001655 0x80B94CEC 00000000 */ nop
/* 001656 0x80B94CF0 AC880328 */ sw	$t0, 0X328($a0)
.L80B94CF4:
/* 001657 0x80B94CF4 0C2E4E92 */ jal	func_80B93A48
/* 001658 0x80B94CF8 00000000 */ nop
/* 001659 0x80B94CFC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001660 0x80B94D00 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001661 0x80B94D04 03E00008 */ jr	$ra
/* 001662 0x80B94D08 00000000 */ nop

