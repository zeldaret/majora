.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel osCreateViManager
/* 021648 0x800952A0 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 021649 0x800952A4 AFB00020 */ sw	$s0, 0X20($sp)
/* 021650 0x800952A8 3C10800A */ lui	$s0, %hi(__osViDevMgr)
/* 021651 0x800952AC 26108160 */ addiu	$s0, $s0, %lo(__osViDevMgr)
/* 021652 0x800952B0 8E0E0000 */ lw	$t6, 0X0($s0)
/* 021653 0x800952B4 AFBF0024 */ sw	$ra, 0X24($sp)
/* 021654 0x800952B8 AFA40030 */ sw	$a0, 0X30($sp)
/* 021655 0x800952BC 55C00054 */ bnezl	$t6, .L80095410
/* 021656 0x800952C0 8FBF0024 */ lw	$ra, 0X24($sp)
/* 021657 0x800952C4 0C023CE8 */ jal	__osTimerServicesInit
/* 021658 0x800952C8 00000000 */ nop
/* 021659 0x800952CC 3C01800A */ lui	$at, %hi(D_8009817C)
/* 021660 0x800952D0 3C04800A */ lui	$a0, %hi(viEventQueue)
/* 021661 0x800952D4 3C05800A */ lui	$a1, %hi(viEventBuf)
/* 021662 0x800952D8 AC20817C */ sw	$zero, %lo(D_8009817C)($at)
/* 021663 0x800952DC 24A5F858 */ addiu	$a1, $a1, %lo(viEventBuf)
/* 021664 0x800952E0 2484F840 */ addiu	$a0, $a0, %lo(viEventQueue)
/* 021665 0x800952E4 0C023C90 */ jal	osCreateMesgQueue
/* 021666 0x800952E8 24060005 */ li	$a2, 0X5
/* 021667 0x800952EC 3C06800A */ lui	$a2, %hi(viRetraceMsg)
/* 021668 0x800952F0 3C07800A */ lui	$a3, %hi(viCounterMsg)
/* 021669 0x800952F4 24E7F888 */ addiu	$a3, $a3, %lo(viCounterMsg)
/* 021670 0x800952F8 24C6F870 */ addiu	$a2, $a2, %lo(viRetraceMsg)
/* 021671 0x800952FC 240F000D */ li	$t7, 0XD
/* 021672 0x80095300 2418000E */ li	$t8, 0XE
/* 021673 0x80095304 3C05800A */ lui	$a1, %hi(viEventQueue)
/* 021674 0x80095308 A4CF0000 */ sh	$t7, 0X0($a2)
/* 021675 0x8009530C A0C00002 */ sb	$zero, 0X2($a2)
/* 021676 0x80095310 ACC00004 */ sw	$zero, 0X4($a2)
/* 021677 0x80095314 A4F80000 */ sh	$t8, 0X0($a3)
/* 021678 0x80095318 A0E00002 */ sb	$zero, 0X2($a3)
/* 021679 0x8009531C ACE00004 */ sw	$zero, 0X4($a3)
/* 021680 0x80095320 24A5F840 */ addiu	$a1, $a1, %lo(viEventQueue)
/* 021681 0x80095324 0C023590 */ jal	osSetEventMesg
/* 021682 0x80095328 24040007 */ li	$a0, 0X7
/* 021683 0x8009532C 3C07800A */ lui	$a3, %hi(viCounterMsg)
/* 021684 0x80095330 3C05800A */ lui	$a1, %hi(viEventQueue)
/* 021685 0x80095334 24E6F888 */ addiu	$a2, $a3, %lo(viCounterMsg)
/* 021686 0x80095338 24A5F840 */ addiu	$a1, $a1, %lo(viEventQueue)
/* 021687 0x8009533C 0C023590 */ jal	osSetEventMesg
/* 021688 0x80095340 24040003 */ li	$a0, 0X3
/* 021689 0x80095344 2419FFFF */ li	$t9, -0X1
/* 021690 0x80095348 AFB90028 */ sw	$t9, 0X28($sp)
/* 021691 0x8009534C 0C023F38 */ jal	osGetThreadPri
/* 021692 0x80095350 00002025 */ move	$a0, $zero
/* 021693 0x80095354 8FA80030 */ lw	$t0, 0X30($sp)
/* 021694 0x80095358 00002025 */ move	$a0, $zero
/* 021695 0x8009535C 0048082A */ slt	$at, $v0, $t0
/* 021696 0x80095360 10200003 */ beqz	$at, .L80095370
/* 021697 0x80095364 01002825 */ move	$a1, $t0
/* 021698 0x80095368 0C023F00 */ jal	osSetThreadPri
/* 021699 0x8009536C AFA20028 */ sw	$v0, 0X28($sp)
.L80095370:
/* 021700 0x80095370 0C024698 */ jal	__osDisableInt
/* 021701 0x80095374 00000000 */ nop
/* 021702 0x80095378 8FAB0030 */ lw	$t3, 0X30($sp)
/* 021703 0x8009537C 3C03800A */ lui	$v1, %hi(viEventQueue)
/* 021704 0x80095380 3C04800A */ lui	$a0, %hi(viThread)
/* 021705 0x80095384 3C0A800A */ lui	$t2, %hi(viEventQueue)
/* 021706 0x80095388 2484E690 */ addiu	$a0, $a0, %lo(viThread)
/* 021707 0x8009538C 2463F840 */ addiu	$v1, $v1, %lo(viEventQueue)
/* 021708 0x80095390 24090001 */ li	$t1, 0X1
/* 021709 0x80095394 254AF840 */ addiu	$t2, $t2, %lo(viEventQueue)
/* 021710 0x80095398 3C068009 */ lui	$a2, %hi(viMgrMain)
/* 021711 0x8009539C AFA2002C */ sw	$v0, 0X2C($sp)
/* 021712 0x800953A0 AE090000 */ sw	$t1, 0X0($s0)
/* 021713 0x800953A4 AE040004 */ sw	$a0, 0X4($s0)
/* 021714 0x800953A8 AE030008 */ sw	$v1, 0X8($s0)
/* 021715 0x800953AC AE03000C */ sw	$v1, 0XC($s0)
/* 021716 0x800953B0 AE000010 */ sw	$zero, 0X10($s0)
/* 021717 0x800953B4 AE000014 */ sw	$zero, 0X14($s0)
/* 021718 0x800953B8 AE000018 */ sw	$zero, 0X18($s0)
/* 021719 0x800953BC 24C65420 */ addiu	$a2, $a2, %lo(viMgrMain)
/* 021720 0x800953C0 AFAA0010 */ sw	$t2, 0X10($sp)
/* 021721 0x800953C4 00002825 */ move	$a1, $zero
/* 021722 0x800953C8 02003825 */ move	$a3, $s0
/* 021723 0x800953CC 0C022790 */ jal	osCreateThread
/* 021724 0x800953D0 AFAB0014 */ sw	$t3, 0X14($sp)
/* 021725 0x800953D4 0C0246BC */ jal	__osViInit
/* 021726 0x800953D8 00000000 */ nop
/* 021727 0x800953DC 3C04800A */ lui	$a0, %hi(viThread)
/* 021728 0x800953E0 0C0255EC */ jal	osStartThread
/* 021729 0x800953E4 2484E690 */ addiu	$a0, $a0, %lo(viThread)
/* 021730 0x800953E8 0C0246B4 */ jal	__osRestoreInt
/* 021731 0x800953EC 8FA4002C */ lw	$a0, 0X2C($sp)
/* 021732 0x800953F0 8FAC0028 */ lw	$t4, 0X28($sp)
/* 021733 0x800953F4 2401FFFF */ li	$at, -0X1
/* 021734 0x800953F8 00002025 */ move	$a0, $zero
/* 021735 0x800953FC 51810004 */ beql	$t4, $at, .L80095410
/* 021736 0x80095400 8FBF0024 */ lw	$ra, 0X24($sp)
/* 021737 0x80095404 0C023F00 */ jal	osSetThreadPri
/* 021738 0x80095408 01802825 */ move	$a1, $t4
/* 021739 0x8009540C 8FBF0024 */ lw	$ra, 0X24($sp)
.L80095410:
/* 021740 0x80095410 8FB00020 */ lw	$s0, 0X20($sp)
/* 021741 0x80095414 27BD0030 */ addiu	$sp, $sp, 0X30
/* 021742 0x80095418 03E00008 */ jr	$ra
/* 021743 0x8009541C 00000000 */ nop

glabel viMgrMain
/* 021744 0x80095420 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 021745 0x80095424 AFBF0034 */ sw	$ra, 0X34($sp)
/* 021746 0x80095428 AFB70030 */ sw	$s7, 0X30($sp)
/* 021747 0x8009542C 0080B825 */ move	$s7, $a0
/* 021748 0x80095430 AFB6002C */ sw	$s6, 0X2C($sp)
/* 021749 0x80095434 AFB50028 */ sw	$s5, 0X28($sp)
/* 021750 0x80095438 AFB40024 */ sw	$s4, 0X24($sp)
/* 021751 0x8009543C AFB30020 */ sw	$s3, 0X20($sp)
/* 021752 0x80095440 AFB2001C */ sw	$s2, 0X1C($sp)
/* 021753 0x80095444 AFB10018 */ sw	$s1, 0X18($sp)
/* 021754 0x80095448 AFB00014 */ sw	$s0, 0X14($sp)
/* 021755 0x8009544C 0C02556C */ jal	__osViGetCurrentContext
/* 021756 0x80095450 AFA00044 */ sw	$zero, 0X44($sp)
/* 021757 0x80095454 94430002 */ lhu	$v1, 0X2($v0)
/* 021758 0x80095458 3C01800A */ lui	$at, %hi(vimgrRetrace)
/* 021759 0x8009545C 2416000E */ li	$s6, 0XE
/* 021760 0x80095460 14600004 */ bnez	$v1, .L80095474
/* 021761 0x80095464 A423F8A0 */ sh	$v1, %lo(vimgrRetrace)($at)
/* 021762 0x80095468 24030001 */ li	$v1, 0X1
/* 021763 0x8009546C 3C01800A */ lui	$at, %hi(vimgrRetrace)
/* 021764 0x80095470 A423F8A0 */ sh	$v1, %lo(vimgrRetrace)($at)
.L80095474:
/* 021765 0x80095474 3C13800A */ lui	$s3, %hi(__osViIntrCount)
/* 021766 0x80095478 3C12800A */ lui	$s2, %hi(__osBaseCounter)
/* 021767 0x8009547C 3C11800A */ lui	$s1, %hi(__osCurrentTime)
/* 021768 0x80095480 2631E5B0 */ addiu	$s1, $s1, %lo(__osCurrentTime)
/* 021769 0x80095484 2652E5B8 */ addiu	$s2, $s2, %lo(__osBaseCounter)
/* 021770 0x80095488 2673E5BC */ addiu	$s3, $s3, %lo(__osViIntrCount)
/* 021771 0x8009548C 2415000D */ li	$s5, 0XD
/* 021772 0x80095490 27B40044 */ addiu	$s4, $sp, 0X44
.L80095494:
/* 021773 0x80095494 8EE4000C */ lw	$a0, 0XC($s7)
.L80095498:
/* 021774 0x80095498 02802825 */ move	$a1, $s4
/* 021775 0x8009549C 0C021FB4 */ jal	osRecvMesg
/* 021776 0x800954A0 24060001 */ li	$a2, 0X1
/* 021777 0x800954A4 8FAE0044 */ lw	$t6, 0X44($sp)
/* 021778 0x800954A8 95C30000 */ lhu	$v1, 0X0($t6)
/* 021779 0x800954AC 10750005 */ beq	$v1, $s5, .L800954C4
/* 021780 0x800954B0 00000000 */ nop
/* 021781 0x800954B4 1076002A */ beq	$v1, $s6, .L80095560
/* 021782 0x800954B8 00000000 */ nop
/* 021783 0x800954BC 1000FFF6 */ b	.L80095498
/* 021784 0x800954C0 8EE4000C */ lw	$a0, 0XC($s7)
.L800954C4:
/* 021785 0x800954C4 0C024704 */ jal	__osViSwapContext
/* 021786 0x800954C8 00000000 */ nop
/* 021787 0x800954CC 3C03800A */ lui	$v1, %hi(vimgrRetrace)
/* 021788 0x800954D0 9463F8A0 */ lhu	$v1, %lo(vimgrRetrace)($v1)
/* 021789 0x800954D4 3C01800A */ lui	$at, %hi(vimgrRetrace)
/* 021790 0x800954D8 2463FFFF */ addiu	$v1, $v1, -0X1
/* 021791 0x800954DC 306FFFFF */ andi	$t7, $v1, 0XFFFF
/* 021792 0x800954E0 15E0000E */ bnez	$t7, .L8009551C
/* 021793 0x800954E4 A42FF8A0 */ sh	$t7, %lo(vimgrRetrace)($at)
/* 021794 0x800954E8 0C02556C */ jal	__osViGetCurrentContext
/* 021795 0x800954EC 00000000 */ nop
/* 021796 0x800954F0 8C580010 */ lw	$t8, 0X10($v0)
/* 021797 0x800954F4 00408025 */ move	$s0, $v0
/* 021798 0x800954F8 00003025 */ move	$a2, $zero
/* 021799 0x800954FC 53000005 */ beqzl	$t8, .L80095514
/* 021800 0x80095500 96030002 */ lhu	$v1, 0X2($s0)
/* 021801 0x80095504 8C440010 */ lw	$a0, 0X10($v0)
/* 021802 0x80095508 0C021EC4 */ jal	osSendMesg
/* 021803 0x8009550C 8C450014 */ lw	$a1, 0X14($v0)
/* 021804 0x80095510 96030002 */ lhu	$v1, 0X2($s0)
.L80095514:
/* 021805 0x80095514 3C01800A */ lui	$at, %hi(vimgrRetrace)
/* 021806 0x80095518 A423F8A0 */ sh	$v1, %lo(vimgrRetrace)($at)
.L8009551C:
/* 021807 0x8009551C 8E790000 */ lw	$t9, 0X0($s3)
/* 021808 0x80095520 8E500000 */ lw	$s0, 0X0($s2)
/* 021809 0x80095524 27280001 */ addiu	$t0, $t9, 0X1
/* 021810 0x80095528 0C0234B0 */ jal	osGetCount
/* 021811 0x8009552C AE680000 */ sw	$t0, 0X0($s3)
/* 021812 0x80095530 8E2D0004 */ lw	$t5, 0X4($s1)
/* 021813 0x80095534 00508023 */ subu	$s0, $v0, $s0
/* 021814 0x80095538 8E2C0000 */ lw	$t4, 0X0($s1)
/* 021815 0x8009553C 020D7821 */ addu	$t7, $s0, $t5
/* 021816 0x80095540 240A0000 */ li	$t2, 0X0
/* 021817 0x80095544 01ED082B */ sltu	$at, $t7, $t5
/* 021818 0x80095548 002A7021 */ addu	$t6, $at, $t2
/* 021819 0x8009554C 01CC7021 */ addu	$t6, $t6, $t4
/* 021820 0x80095550 AE420000 */ sw	$v0, 0X0($s2)
/* 021821 0x80095554 AE2E0000 */ sw	$t6, 0X0($s1)
/* 021822 0x80095558 1000FFCE */ b	.L80095494
/* 021823 0x8009555C AE2F0004 */ sw	$t7, 0X4($s1)
.L80095560:
/* 021824 0x80095560 0C023D0B */ jal	__osTimerInterrupt
/* 021825 0x80095564 00000000 */ nop
/* 021826 0x80095568 1000FFCB */ b	.L80095498
/* 021827 0x8009556C 8EE4000C */ lw	$a0, 0XC($s7)
/* 021828 0x80095570 00000000 */ nop
/* 021829 0x80095574 00000000 */ nop
/* 021830 0x80095578 00000000 */ nop
/* 021831 0x8009557C 00000000 */ nop
/* 021832 0x80095580 8FBF0034 */ lw	$ra, 0X34($sp)
/* 021833 0x80095584 8FB00014 */ lw	$s0, 0X14($sp)
/* 021834 0x80095588 8FB10018 */ lw	$s1, 0X18($sp)
/* 021835 0x8009558C 8FB2001C */ lw	$s2, 0X1C($sp)
/* 021836 0x80095590 8FB30020 */ lw	$s3, 0X20($sp)
/* 021837 0x80095594 8FB40024 */ lw	$s4, 0X24($sp)
/* 021838 0x80095598 8FB50028 */ lw	$s5, 0X28($sp)
/* 021839 0x8009559C 8FB6002C */ lw	$s6, 0X2C($sp)
/* 021840 0x800955A0 8FB70030 */ lw	$s7, 0X30($sp)
/* 021841 0x800955A4 03E00008 */ jr	$ra
/* 021842 0x800955A8 27BD0050 */ addiu	$sp, $sp, 0X50
/* 021843 0x800955AC 00000000 */ nop
