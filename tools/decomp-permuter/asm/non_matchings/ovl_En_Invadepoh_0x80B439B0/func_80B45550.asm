glabel func_80B45550
/* 001768 0x80B45550 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 001769 0x80B45554 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 001770 0x80B45558 AFB10024 */ sw	$s1, 0X24($sp)
/* 001771 0x80B4555C 4486A000 */ mtc1	$a2, $f20
/* 001772 0x80B45560 00808825 */ move	$s1, $a0
/* 001773 0x80B45564 AFBF002C */ sw	$ra, 0X2C($sp)
/* 001774 0x80B45568 AFB20028 */ sw	$s2, 0X28($sp)
/* 001775 0x80B4556C AFB00020 */ sw	$s0, 0X20($sp)
/* 001776 0x80B45570 AFA7004C */ sw	$a3, 0X4C($sp)
/* 001777 0x80B45574 8CB01D2C */ lw	$s0, 0X1D2C($a1)
/* 001778 0x80B45578 AFA00034 */ sw	$zero, 0X34($sp)
/* 001779 0x80B4557C 24120005 */ li	$s2, 0X5
/* 001780 0x80B45580 5200001B */ beqzl	$s0, .L80B455F0
/* 001781 0x80B45584 8FA20034 */ lw	$v0, 0X34($sp)
/* 001782 0x80B45588 860E0000 */ lh	$t6, 0X0($s0)
.L80B4558C:
/* 001783 0x80B4558C 564E0015 */ bnel	$s2, $t6, .L80B455E4
/* 001784 0x80B45590 8E10012C */ lw	$s0, 0X12C($s0)
/* 001785 0x80B45594 8E0F0138 */ lw	$t7, 0X138($s0)
/* 001786 0x80B45598 51E00012 */ beqzl	$t7, .L80B455E4
/* 001787 0x80B4559C 8E10012C */ lw	$s0, 0X12C($s0)
/* 001788 0x80B455A0 82380003 */ lb	$t8, 0X3($s1)
/* 001789 0x80B455A4 82190003 */ lb	$t9, 0X3($s0)
/* 001790 0x80B455A8 26040024 */ addiu	$a0, $s0, 0X24
/* 001791 0x80B455AC 5719000D */ bnel	$t8, $t9, .L80B455E4
/* 001792 0x80B455B0 8E10012C */ lw	$s0, 0X12C($s0)
/* 001793 0x80B455B4 0C05E9BE */ jal	Math3D_DistanceSquared
/* 001794 0x80B455B8 26250024 */ addiu	$a1, $s1, 0X24
/* 001795 0x80B455BC 4614003C */ c.lt.s	$f0, $f20
/* 001796 0x80B455C0 00000000 */ nop
/* 001797 0x80B455C4 45020007 */ bc1fl .L80B455E4
/* 001798 0x80B455C8 8E10012C */ lw	$s0, 0X12C($s0)
/* 001799 0x80B455CC 8FA8004C */ lw	$t0, 0X4C($sp)
/* 001800 0x80B455D0 24090001 */ li	$t1, 0X1
/* 001801 0x80B455D4 A20801A7 */ sb	$t0, 0X1A7($s0)
/* 001802 0x80B455D8 10000004 */ b	.L80B455EC
/* 001803 0x80B455DC AFA90034 */ sw	$t1, 0X34($sp)
/* 001804 0x80B455E0 8E10012C */ lw	$s0, 0X12C($s0)
.L80B455E4:
/* 001805 0x80B455E4 5600FFE9 */ bnezl	$s0, .L80B4558C
/* 001806 0x80B455E8 860E0000 */ lh	$t6, 0X0($s0)
.L80B455EC:
/* 001807 0x80B455EC 8FA20034 */ lw	$v0, 0X34($sp)
.L80B455F0:
/* 001808 0x80B455F0 8FBF002C */ lw	$ra, 0X2C($sp)
/* 001809 0x80B455F4 D7B40018 */ ldc1	$f20, 0X18($sp)
/* 001810 0x80B455F8 8FB00020 */ lw	$s0, 0X20($sp)
/* 001811 0x80B455FC 8FB10024 */ lw	$s1, 0X24($sp)
/* 001812 0x80B45600 8FB20028 */ lw	$s2, 0X28($sp)
/* 001813 0x80B45604 03E00008 */ jr	$ra
/* 001814 0x80B45608 27BD0040 */ addiu	$sp, $sp, 0X40

