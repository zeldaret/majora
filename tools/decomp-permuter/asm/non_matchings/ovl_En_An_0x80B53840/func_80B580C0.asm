glabel func_80B580C0
/* 004640 0x80B580C0 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 004641 0x80B580C4 AFB00028 */ sw	$s0, 0X28($sp)
/* 004642 0x80B580C8 00808025 */ move	$s0, $a0
/* 004643 0x80B580CC AFBF002C */ sw	$ra, 0X2C($sp)
/* 004644 0x80B580D0 AFA5004C */ sw	$a1, 0X4C($sp)
/* 004645 0x80B580D4 920E0200 */ lbu	$t6, 0X200($s0)
/* 004646 0x80B580D8 8FB8004C */ lw	$t8, 0X4C($sp)
/* 004647 0x80B580DC 55C00005 */ bnezl	$t6, .L80B580F4
/* 004648 0x80B580E0 8F040000 */ lw	$a0, 0X0($t8)
/* 004649 0x80B580E4 8E0F03B0 */ lw	$t7, 0X3B0($s0)
/* 004650 0x80B580E8 51E00033 */ beqzl	$t7, .L80B581B8
/* 004651 0x80B580EC 8FBF002C */ lw	$ra, 0X2C($sp)
/* 004652 0x80B580F0 8F040000 */ lw	$a0, 0X0($t8)
.L80B580F4:
/* 004653 0x80B580F4 0C04B0A3 */ jal	func_8012C28C
/* 004654 0x80B580F8 AFA40040 */ sw	$a0, 0X40($sp)
/* 004655 0x80B580FC 8FA30040 */ lw	$v1, 0X40($sp)
/* 004656 0x80B58100 8C6202B0 */ lw	$v0, 0X2B0($v1)
/* 004657 0x80B58104 3C08DB06 */ lui	$t0, 0xDB06
/* 004658 0x80B58108 35080020 */ ori	$t0, $t0, 0X20
/* 004659 0x80B5810C 24590008 */ addiu	$t9, $v0, 0X8
/* 004660 0x80B58110 AC7902B0 */ sw	$t9, 0X2B0($v1)
/* 004661 0x80B58114 AC480000 */ sw	$t0, 0X0($v0)
/* 004662 0x80B58118 86090390 */ lh	$t1, 0X390($s0)
/* 004663 0x80B5811C 3C0480B6 */ lui	$a0, %hi(D_80B58EEC)
/* 004664 0x80B58120 AFA30040 */ sw	$v1, 0X40($sp)
/* 004665 0x80B58124 00095080 */ sll	$t2, $t1, 2
/* 004666 0x80B58128 008A2021 */ addu	$a0, $a0, $t2
/* 004667 0x80B5812C 8C848EEC */ lw	$a0, %lo(D_80B58EEC)($a0)
/* 004668 0x80B58130 0C040141 */ jal	Lib_PtrSegToVirt
/* 004669 0x80B58134 AFA20038 */ sw	$v0, 0X38($sp)
/* 004670 0x80B58138 8FA50038 */ lw	$a1, 0X38($sp)
/* 004671 0x80B5813C 8FA30040 */ lw	$v1, 0X40($sp)
/* 004672 0x80B58140 ACA20004 */ sw	$v0, 0X4($a1)
/* 004673 0x80B58144 8C6202B0 */ lw	$v0, 0X2B0($v1)
/* 004674 0x80B58148 3C0CDB06 */ lui	$t4, 0xDB06
/* 004675 0x80B5814C 358C0024 */ ori	$t4, $t4, 0X24
/* 004676 0x80B58150 244B0008 */ addiu	$t3, $v0, 0X8
/* 004677 0x80B58154 AC6B02B0 */ sw	$t3, 0X2B0($v1)
/* 004678 0x80B58158 AC4C0000 */ sw	$t4, 0X0($v0)
/* 004679 0x80B5815C 860D0392 */ lh	$t5, 0X392($s0)
/* 004680 0x80B58160 3C0480B6 */ lui	$a0, %hi(D_80B58EE0)
/* 004681 0x80B58164 AFA20034 */ sw	$v0, 0X34($sp)
/* 004682 0x80B58168 000D7080 */ sll	$t6, $t5, 2
/* 004683 0x80B5816C 008E2021 */ addu	$a0, $a0, $t6
/* 004684 0x80B58170 0C040141 */ jal	Lib_PtrSegToVirt
/* 004685 0x80B58174 8C848EE0 */ lw	$a0, %lo(D_80B58EE0)($a0)
/* 004686 0x80B58178 8FA50034 */ lw	$a1, 0X34($sp)
/* 004687 0x80B5817C 3C0F80B5 */ lui	$t7, %hi(func_80B57EE8)
/* 004688 0x80B58180 25EF7EE8 */ addiu	$t7, $t7, %lo(func_80B57EE8)
/* 004689 0x80B58184 ACA20004 */ sw	$v0, 0X4($a1)
/* 004690 0x80B58188 8E050148 */ lw	$a1, 0X148($s0)
/* 004691 0x80B5818C 8E060164 */ lw	$a2, 0X164($s0)
/* 004692 0x80B58190 92070146 */ lbu	$a3, 0X146($s0)
/* 004693 0x80B58194 3C1880B5 */ lui	$t8, %hi(func_80B57FC4)
/* 004694 0x80B58198 27187FC4 */ addiu	$t8, $t8, %lo(func_80B57FC4)
/* 004695 0x80B5819C AFB80018 */ sw	$t8, 0X18($sp)
/* 004696 0x80B581A0 AFB0001C */ sw	$s0, 0X1C($sp)
/* 004697 0x80B581A4 AFAF0014 */ sw	$t7, 0X14($sp)
/* 004698 0x80B581A8 AFA00010 */ sw	$zero, 0X10($sp)
/* 004699 0x80B581AC 0C04D0F0 */ jal	func_801343C0
/* 004700 0x80B581B0 8FA4004C */ lw	$a0, 0X4C($sp)
/* 004701 0x80B581B4 8FBF002C */ lw	$ra, 0X2C($sp)
.L80B581B8:
/* 004702 0x80B581B8 8FB00028 */ lw	$s0, 0X28($sp)
/* 004703 0x80B581BC 27BD0048 */ addiu	$sp, $sp, 0X48
/* 004704 0x80B581C0 03E00008 */ jr	$ra
/* 004705 0x80B581C4 00000000 */ nop
/* 004706 0x80B581C8 00000000 */ nop
/* 004707 0x80B581CC 00000000 */ nop
