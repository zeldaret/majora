glabel func_8096426C
/* 002787 0x8096426C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002788 0x80964270 AFBF0014 */ sw	$ra, 0X14($sp)
/* 002789 0x80964274 00803025 */ move	$a2, $a0
/* 002790 0x80964278 00A02025 */ move	$a0, $a1
/* 002791 0x8096427C 0C051D89 */ jal	func_80147624
/* 002792 0x80964280 AFA60018 */ sw	$a2, 0X18($sp)
/* 002793 0x80964284 10400012 */ beqz	$v0, .L809642D0
/* 002794 0x80964288 8FA60018 */ lw	$a2, 0X18($sp)
/* 002795 0x8096428C 94CE0552 */ lhu	$t6, 0X552($a2)
/* 002796 0x80964290 25CFD7C0 */ addiu	$t7, $t6, -0X2840
/* 002797 0x80964294 2DE1003E */ sltiu	$at, $t7, 0X3E
/* 002798 0x80964298 1020000C */ beqz	$at, .L809642CC
/* 002799 0x8096429C 000F7880 */ sll	$t7, $t7, 2
/* 002800 0x809642A0 3C018096 */ lui	$at, %hi(jtbl_D_80964F10)
/* 002801 0x809642A4 002F0821 */ addu	$at, $at, $t7
/* 002802 0x809642A8 8C2F4F10 */ lw	$t7, %lo(jtbl_D_80964F10)($at)
/* 002803 0x809642AC 01E00008 */ jr	$t7
/* 002804 0x809642B0 00000000 */ nop
glabel L809642B4
.L809642B4:
/* 002805 0x809642B4 24180001 */ li	$t8, 0X1
/* 002806 0x809642B8 10000005 */ b	.L809642D0
/* 002807 0x809642BC A4D8053C */ sh	$t8, 0X53C($a2)
glabel L809642C0
.L809642C0:
/* 002808 0x809642C0 24190002 */ li	$t9, 0X2
/* 002809 0x809642C4 10000002 */ b	.L809642D0
/* 002810 0x809642C8 A4D9053C */ sh	$t9, 0X53C($a2)
glabel L809642CC
.L809642CC:
/* 002811 0x809642CC A4C0053C */ sh	$zero, 0X53C($a2)
.L809642D0:
/* 002812 0x809642D0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002813 0x809642D4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002814 0x809642D8 03E00008 */ jr	$ra
/* 002815 0x809642DC 00000000 */ nop


.section .late_rodata

glabel jtbl_D_80964F10
/* 003596 0x80964F10 */ .word	L809642B4
/* 003597 0x80964F14 */ .word	L809642B4
/* 003598 0x80964F18 */ .word	L809642CC
/* 003599 0x80964F1C */ .word	L809642B4
/* 003600 0x80964F20 */ .word	L809642CC
/* 003601 0x80964F24 */ .word	L809642CC
/* 003602 0x80964F28 */ .word	L809642CC
/* 003603 0x80964F2C */ .word	L809642B4
/* 003604 0x80964F30 */ .word	L809642C0
/* 003605 0x80964F34 */ .word	L809642B4
/* 003606 0x80964F38 */ .word	L809642C0
/* 003607 0x80964F3C */ .word	L809642CC
/* 003608 0x80964F40 */ .word	L809642CC
/* 003609 0x80964F44 */ .word	L809642B4
/* 003610 0x80964F48 */ .word	L809642C0
/* 003611 0x80964F4C */ .word	L809642B4
/* 003612 0x80964F50 */ .word	L809642C0
/* 003613 0x80964F54 */ .word	L809642B4
/* 003614 0x80964F58 */ .word	L809642C0
/* 003615 0x80964F5C */ .word	L809642B4
/* 003616 0x80964F60 */ .word	L809642CC
/* 003617 0x80964F64 */ .word	L809642B4
/* 003618 0x80964F68 */ .word	L809642C0
/* 003619 0x80964F6C */ .word	L809642B4
/* 003620 0x80964F70 */ .word	L809642C0
/* 003621 0x80964F74 */ .word	L809642B4
/* 003622 0x80964F78 */ .word	L809642C0
/* 003623 0x80964F7C */ .word	L809642B4
/* 003624 0x80964F80 */ .word	L809642C0
/* 003625 0x80964F84 */ .word	L809642B4
/* 003626 0x80964F88 */ .word	L809642C0
/* 003627 0x80964F8C */ .word	L809642CC
/* 003628 0x80964F90 */ .word	L809642C0
/* 003629 0x80964F94 */ .word	L809642B4
/* 003630 0x80964F98 */ .word	L809642C0
/* 003631 0x80964F9C */ .word	L809642B4
/* 003632 0x80964FA0 */ .word	L809642C0
/* 003633 0x80964FA4 */ .word	L809642B4
/* 003634 0x80964FA8 */ .word	L809642C0
/* 003635 0x80964FAC */ .word	L809642B4
/* 003636 0x80964FB0 */ .word	L809642C0
/* 003637 0x80964FB4 */ .word	L809642B4
/* 003638 0x80964FB8 */ .word	L809642C0
/* 003639 0x80964FBC */ .word	L809642B4
/* 003640 0x80964FC0 */ .word	L809642C0
/* 003641 0x80964FC4 */ .word	L809642B4
/* 003642 0x80964FC8 */ .word	L809642C0
/* 003643 0x80964FCC */ .word	L809642CC
/* 003644 0x80964FD0 */ .word	L809642CC
/* 003645 0x80964FD4 */ .word	L809642B4
/* 003646 0x80964FD8 */ .word	L809642CC
/* 003647 0x80964FDC */ .word	L809642CC
/* 003648 0x80964FE0 */ .word	L809642CC
/* 003649 0x80964FE4 */ .word	L809642B4
/* 003650 0x80964FE8 */ .word	L809642CC
/* 003651 0x80964FEC */ .word	L809642B4
/* 003652 0x80964FF0 */ .word	L809642CC
/* 003653 0x80964FF4 */ .word	L809642B4
/* 003654 0x80964FF8 */ .word	L809642CC
/* 003655 0x80964FFC */ .word	L809642B4
/* 003656 0x80965000 */ .word	L809642CC
/* 003657 0x80965004 */ .word	L809642B4
