glabel EnRg_Update
/* 001692 0x80BF5390 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 001693 0x80BF5394 AFB10020 */ sw	$s1, 0X20($sp)
/* 001694 0x80BF5398 AFB0001C */ sw	$s0, 0X1C($sp)
/* 001695 0x80BF539C 00808025 */ move	$s0, $a0
/* 001696 0x80BF53A0 00A08825 */ move	$s1, $a1
/* 001697 0x80BF53A4 AFBF0024 */ sw	$ra, 0X24($sp)
/* 001698 0x80BF53A8 02002025 */ move	$a0, $s0
/* 001699 0x80BF53AC 0C2FCFC5 */ jal	func_80BF3F14
/* 001700 0x80BF53B0 02202825 */ move	$a1, $s1
/* 001701 0x80BF53B4 8E190188 */ lw	$t9, 0X188($s0)
/* 001702 0x80BF53B8 02002025 */ move	$a0, $s0
/* 001703 0x80BF53BC 02202825 */ move	$a1, $s1
/* 001704 0x80BF53C0 0320F809 */ jalr	$t9
/* 001705 0x80BF53C4 00000000 */ nop
/* 001706 0x80BF53C8 960F0310 */ lhu	$t7, 0X310($s0)
/* 001707 0x80BF53CC 860E0032 */ lh	$t6, 0X32($s0)
/* 001708 0x80BF53D0 31F80010 */ andi	$t8, $t7, 0X10
/* 001709 0x80BF53D4 17000008 */ bnez	$t8, .L80BF53F8
/* 001710 0x80BF53D8 A60E00BE */ sh	$t6, 0XBE($s0)
/* 001711 0x80BF53DC 0C2FD03D */ jal	func_80BF40F4
/* 001712 0x80BF53E0 02002025 */ move	$a0, $s0
/* 001713 0x80BF53E4 0C2FCFFE */ jal	func_80BF3FF8
/* 001714 0x80BF53E8 02002025 */ move	$a0, $s0
/* 001715 0x80BF53EC 02002025 */ move	$a0, $s0
/* 001716 0x80BF53F0 0C2FD009 */ jal	func_80BF4024
/* 001717 0x80BF53F4 02202825 */ move	$a1, $s1
.L80BF53F8:
/* 001718 0x80BF53F8 44802000 */ mtc1	$zero, $f4
/* 001719 0x80BF53FC 2408001D */ li	$t0, 0X1D
/* 001720 0x80BF5400 AFA80014 */ sw	$t0, 0X14($sp)
/* 001721 0x80BF5404 02202025 */ move	$a0, $s1
/* 001722 0x80BF5408 02002825 */ move	$a1, $s0
/* 001723 0x80BF540C 3C0641F0 */ lui	$a2, 0x41F0
/* 001724 0x80BF5410 3C0741A0 */ lui	$a3, 0x41A0
/* 001725 0x80BF5414 0C02DE2E */ jal	func_800B78B8
/* 001726 0x80BF5418 E7A40010 */ swc1	$f4, 0X10($sp)
/* 001727 0x80BF541C 3C01C6FA */ lui	$at, 0xC6FA
/* 001728 0x80BF5420 44813000 */ mtc1	$at, $f6
/* 001729 0x80BF5424 C6080088 */ lwc1	$f8, 0X88($s0)
/* 001730 0x80BF5428 26040024 */ addiu	$a0, $s0, 0X24
/* 001731 0x80BF542C 4606403E */ c.le.s	$f8, $f6
/* 001732 0x80BF5430 00000000 */ nop
/* 001733 0x80BF5434 45020004 */ bc1fl .L80BF5448
/* 001734 0x80BF5438 02002025 */ move	$a0, $s0
/* 001735 0x80BF543C 0C03FD43 */ jal	Math_Vec3f_Copy
/* 001736 0x80BF5440 26050108 */ addiu	$a1, $s0, 0X108
/* 001737 0x80BF5444 02002025 */ move	$a0, $s0
.L80BF5448:
/* 001738 0x80BF5448 0C2FCFB5 */ jal	func_80BF3ED4
/* 001739 0x80BF544C 02202825 */ move	$a1, $s1
/* 001740 0x80BF5450 0C05A433 */ jal	func_801690CC
/* 001741 0x80BF5454 02202025 */ move	$a0, $s1
/* 001742 0x80BF5458 54400004 */ bnezl	$v0, .L80BF546C
/* 001743 0x80BF545C 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001744 0x80BF5460 0C2FCF19 */ jal	func_80BF3C64
/* 001745 0x80BF5464 02002025 */ move	$a0, $s0
/* 001746 0x80BF5468 8FBF0024 */ lw	$ra, 0X24($sp)
.L80BF546C:
/* 001747 0x80BF546C 8FB0001C */ lw	$s0, 0X1C($sp)
/* 001748 0x80BF5470 8FB10020 */ lw	$s1, 0X20($sp)
/* 001749 0x80BF5474 03E00008 */ jr	$ra
/* 001750 0x80BF5478 27BD0028 */ addiu	$sp, $sp, 0X28

