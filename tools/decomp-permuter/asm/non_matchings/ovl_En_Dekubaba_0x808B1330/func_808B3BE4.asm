glabel func_808B3BE4
/* 002605 0x808B3BE4 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 002606 0x808B3BE8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 002607 0x808B3BEC 240EA000 */ li	$t6, -0X6000
/* 002608 0x808B3BF0 240FB000 */ li	$t7, -0X5000
/* 002609 0x808B3BF4 2418B800 */ li	$t8, -0X4800
/* 002610 0x808B3BF8 A48E0190 */ sh	$t6, 0X190($a0)
/* 002611 0x808B3BFC A48F0196 */ sh	$t7, 0X196($a0)
/* 002612 0x808B3C00 A4980194 */ sh	$t8, 0X194($a0)
/* 002613 0x808B3C04 0C22C54C */ jal	func_808B1530
/* 002614 0x808B3C08 AFA40020 */ sw	$a0, 0X20($sp)
/* 002615 0x808B3C0C 24190023 */ li	$t9, 0X23
/* 002616 0x808B3C10 8FA40020 */ lw	$a0, 0X20($sp)
/* 002617 0x808B3C14 AFB90010 */ sw	$t9, 0X10($sp)
/* 002618 0x808B3C18 24054000 */ li	$a1, 0X4000
/* 002619 0x808B3C1C 240600FF */ li	$a2, 0XFF
/* 002620 0x808B3C20 0C02F2DC */ jal	func_800BCB70
/* 002621 0x808B3C24 00003825 */ move	$a3, $zero
/* 002622 0x808B3C28 8FA40020 */ lw	$a0, 0X20($sp)
/* 002623 0x808B3C2C 3C0A808B */ lui	$t2, %hi(func_808B3C50)
/* 002624 0x808B3C30 254A3C50 */ addiu	$t2, $t2, %lo(func_808B3C50)
/* 002625 0x808B3C34 9088024D */ lbu	$t0, 0X24D($a0)
/* 002626 0x808B3C38 AC8A0188 */ sw	$t2, 0X188($a0)
/* 002627 0x808B3C3C 3109FFFE */ andi	$t1, $t0, 0XFFFE
/* 002628 0x808B3C40 A089024D */ sb	$t1, 0X24D($a0)
/* 002629 0x808B3C44 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002630 0x808B3C48 03E00008 */ jr	$ra
/* 002631 0x808B3C4C 27BD0020 */ addiu	$sp, $sp, 0X20

