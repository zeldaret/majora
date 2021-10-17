.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_801224E0
/* 127624 0x801224E0 AFA50004 */ sw	$a1, 0X4($sp)
/* 127625 0x801224E4 AFA60008 */ sw	$a2, 0X8($sp)
/* 127626 0x801224E8 00063400 */ sll	$a2, $a2, 16
/* 127627 0x801224EC 00052C00 */ sll	$a1, $a1, 16
/* 127628 0x801224F0 00052C03 */ sra	$a1, $a1, 16
/* 127629 0x801224F4 00063403 */ sra	$a2, $a2, 16
/* 127630 0x801224F8 10A60007 */ beq	$a1, $a2, .L80122518
/* 127631 0x801224FC 00001825 */ move	$v1, $zero
/* 127632 0x80122500 3C0E0002 */ lui	$t6, 0x0002
/* 127633 0x80122504 01C47021 */ addu	$t6, $t6, $a0
/* 127634 0x80122508 8DCE8864 */ lw	$t6, -0X779C($t6)
/* 127635 0x8012250C 000578C0 */ sll	$t7, $a1, 3
/* 127636 0x80122510 10000001 */ b	.L80122518
/* 127637 0x80122514 01CF1821 */ addu	$v1, $t6, $t7
.L80122518:
/* 127638 0x80122518 00601025 */ move	$v0, $v1
/* 127639 0x8012251C 03E00008 */ jr	$ra
/* 127640 0x80122520 00000000 */ nop

glabel func_80122524
/* 127641 0x80122524 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 127642 0x80122528 AFBF0014 */ sw	$ra, 0X14($sp)
/* 127643 0x8012252C AFA40020 */ sw	$a0, 0X20($sp)
/* 127644 0x80122530 AFA60028 */ sw	$a2, 0X28($sp)
/* 127645 0x80122534 AFA7002C */ sw	$a3, 0X2C($sp)
/* 127646 0x80122538 14A00004 */ bnez	$a1, .L8012254C
/* 127647 0x8012253C 3C01BF80 */ lui	$at, 0xBF80
/* 127648 0x80122540 44810000 */ mtc1	$at, $f0
/* 127649 0x80122544 1000001E */ b	.L801225C0
/* 127650 0x80122548 8FBF0014 */ lw	$ra, 0X14($sp)
.L8012254C:
/* 127651 0x8012254C 0C040141 */ jal	Lib_PtrSegToVirt
/* 127652 0x80122550 8CA40004 */ lw	$a0, 0X4($a1)
/* 127653 0x80122554 87AE002A */ lh	$t6, 0X2A($sp)
/* 127654 0x80122558 8FA40020 */ lw	$a0, 0X20($sp)
/* 127655 0x8012255C 000E7880 */ sll	$t7, $t6, 2
/* 127656 0x80122560 01EE7823 */ subu	$t7, $t7, $t6
/* 127657 0x80122564 000F7840 */ sll	$t7, $t7, 1
/* 127658 0x80122568 01E21821 */ addu	$v1, $t7, $v0
/* 127659 0x8012256C 84780000 */ lh	$t8, 0X0($v1)
/* 127660 0x80122570 84790004 */ lh	$t9, 0X4($v1)
/* 127661 0x80122574 C4880024 */ lwc1	$f8, 0X24($a0)
/* 127662 0x80122578 44982000 */ mtc1	$t8, $f4
/* 127663 0x8012257C 44995000 */ mtc1	$t9, $f10
/* 127664 0x80122580 C492002C */ lwc1	$f18, 0X2C($a0)
/* 127665 0x80122584 468021A0 */ cvt.s.w	$f6, $f4
/* 127666 0x80122588 46805420 */ cvt.s.w	$f16, $f10
/* 127667 0x8012258C 46083301 */ sub.s	$f12, $f6, $f8
/* 127668 0x80122590 46128381 */ sub.s	$f14, $f16, $f18
/* 127669 0x80122594 E7AC001C */ swc1	$f12, 0X1C($sp)
/* 127670 0x80122598 0C05FFB9 */ jal	atans
/* 127671 0x8012259C E7AE0018 */ swc1	$f14, 0X18($sp)
/* 127672 0x801225A0 C7AC001C */ lwc1	$f12, 0X1C($sp)
/* 127673 0x801225A4 C7AE0018 */ lwc1	$f14, 0X18($sp)
/* 127674 0x801225A8 8FA8002C */ lw	$t0, 0X2C($sp)
/* 127675 0x801225AC 460C6102 */ mul.s	$f4, $f12, $f12
/* 127676 0x801225B0 A5020000 */ sh	$v0, 0X0($t0)
/* 127677 0x801225B4 460E7182 */ mul.s	$f6, $f14, $f14
/* 127678 0x801225B8 46062000 */ add.s	$f0, $f4, $f6
/* 127679 0x801225BC 8FBF0014 */ lw	$ra, 0X14($sp)
.L801225C0:
/* 127680 0x801225C0 27BD0020 */ addiu	$sp, $sp, 0X20
/* 127681 0x801225C4 03E00008 */ jr	$ra
/* 127682 0x801225C8 00000000 */ nop

glabel func_801225CC
/* 127683 0x801225CC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 127684 0x801225D0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 127685 0x801225D4 00803025 */ move	$a2, $a0
/* 127686 0x801225D8 50C0001D */ beqzl	$a2, .L80122650
/* 127687 0x801225DC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 127688 0x801225E0 8CC40004 */ lw	$a0, 0X4($a2)
/* 127689 0x801225E4 AFA60018 */ sw	$a2, 0X18($sp)
/* 127690 0x801225E8 0C040141 */ jal	Lib_PtrSegToVirt
/* 127691 0x801225EC AFA5001C */ sw	$a1, 0X1C($sp)
/* 127692 0x801225F0 8FA60018 */ lw	$a2, 0X18($sp)
/* 127693 0x801225F4 8FA5001C */ lw	$a1, 0X1C($sp)
/* 127694 0x801225F8 90CE0000 */ lbu	$t6, 0X0($a2)
/* 127695 0x801225FC 000E7880 */ sll	$t7, $t6, 2
/* 127696 0x80122600 01EE7823 */ subu	$t7, $t7, $t6
/* 127697 0x80122604 000F7840 */ sll	$t7, $t7, 1
/* 127698 0x80122608 004F1821 */ addu	$v1, $v0, $t7
/* 127699 0x8012260C 8478FFFA */ lh	$t8, -0X6($v1)
/* 127700 0x80122610 2463FFFA */ addiu	$v1, $v1, -0X6
/* 127701 0x80122614 44982000 */ mtc1	$t8, $f4
/* 127702 0x80122618 00000000 */ nop
/* 127703 0x8012261C 468021A0 */ cvt.s.w	$f6, $f4
/* 127704 0x80122620 E4A60000 */ swc1	$f6, 0X0($a1)
/* 127705 0x80122624 84790002 */ lh	$t9, 0X2($v1)
/* 127706 0x80122628 44994000 */ mtc1	$t9, $f8
/* 127707 0x8012262C 00000000 */ nop
/* 127708 0x80122630 468042A0 */ cvt.s.w	$f10, $f8
/* 127709 0x80122634 E4AA0004 */ swc1	$f10, 0X4($a1)
/* 127710 0x80122638 84680004 */ lh	$t0, 0X4($v1)
/* 127711 0x8012263C 44888000 */ mtc1	$t0, $f16
/* 127712 0x80122640 00000000 */ nop
/* 127713 0x80122644 468084A0 */ cvt.s.w	$f18, $f16
/* 127714 0x80122648 E4B20008 */ swc1	$f18, 0X8($a1)
/* 127715 0x8012264C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80122650:
/* 127716 0x80122650 27BD0018 */ addiu	$sp, $sp, 0X18
/* 127717 0x80122654 03E00008 */ jr	$ra
/* 127718 0x80122658 00000000 */ nop
/* 127719 0x8012265C 00000000 */ nop
