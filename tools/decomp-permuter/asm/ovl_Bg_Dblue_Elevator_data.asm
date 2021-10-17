.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel Bg_Dblue_Elevator_InitVars
/* 000648 0x80B92940 */ .word	0x02220100
/* 000649 0x80B92944 */ .word	0x00000010
/* 000650 0x80B92948 */ .word	0x01840000
/* 000651 0x80B9294C */ .word	0x00000170
/* 000652 0x80B92950 */ .word	BgDblueElevator_Init
/* 000653 0x80B92954 */ .word	BgDblueElevator_Destroy
/* 000654 0x80B92958 */ .word	BgDblueElevator_Update
/* 000655 0x80B9295C */ .word	BgDblueElevator_Draw
glabel D_80B92960
/* 000656 0x80B92960 */ .word	0x00000000
glabel D_80B92964
/* 000657 0x80B92964 */ .word	func_80B922C0
/* 000658 0x80B92968 */ .word	0x43A00000
glabel D_80B9296C
/* 000659 0x80B9296C */ .word	0x1E010000
/* 000660 0x80B92970 */ .word	0x3F800000
/* 000661 0x80B92974 */ .word	0x3DCCCCCD
/* 000662 0x80B92978 */ .word	0x40C00000
/* 000663 0x80B9297C */ .word	0x00000001
/* 000664 0x80B92980 */ .word	func_80B922C0
/* 000665 0x80B92984 */ .word	0x43430000
/* 000666 0x80B92988 */ .word	0x1E010000
/* 000667 0x80B9298C */ .word	0x3F800000
/* 000668 0x80B92990 */ .word	0x3DCCCCCD
/* 000669 0x80B92994 */ .word	0x40A00000
/* 000670 0x80B92998 */ .word	0x00000000
/* 000671 0x80B9299C */ .word	func_80B922FC
/* 000672 0x80B929A0 */ .word	0x438C0000
/* 000673 0x80B929A4 */ .word	0x1E010000
/* 000674 0x80B929A8 */ .word	0x3F800000
/* 000675 0x80B929AC */ .word	0x3DCCCCCD
/* 000676 0x80B929B0 */ .word	0x40C00000
/* 000677 0x80B929B4 */ .word	0x00000000
/* 000678 0x80B929B8 */ .word	func_80B922FC
/* 000679 0x80B929BC */ .word	0x438C0000
/* 000680 0x80B929C0 */ .word	0x1EFF0000
/* 000681 0x80B929C4 */ .word	0x3F800000
/* 000682 0x80B929C8 */ .word	0x3DCCCCCD
/* 000683 0x80B929CC */ .word	0x40C00000
glabel D_80B929D0
/* 000684 0x80B929D0 */ .word	0xFFA6FFA6
/* 000685 0x80B929D4 */ .word	0x005A005A
glabel D_80B929D8
/* 000686 0x80B929D8 */ .word	0xFF9C005A
/* 000687 0x80B929DC */ .short	0x005A
glabel D_80B929DE
/* 000687 0x80B929DC */ .short	0xFF9C
glabel D_80B929E0
/* 000688 0x80B929E0 */ .short	0x0002
glabel D_80B929E2
/* 000688 0x80B929E0 */ .byte	0x04
glabel D_80B929E3
/* 000688 0x80B929E0 */ .byte	0x00
glabel D_80B929E4
/* 000689 0x80B929E4 */ .word	0x00010203
/* 000690 0x80B929E8 */ .short	0x0405
glabel D_80B929EA
/* 000690 0x80B929E8 */ .short	0x0000
glabel D_80B929EC
/* 000691 0x80B929EC */ .word	0xB0FC0FA0
/* 000692 0x80B929F0 */ .word	0xB10000FA
/* 000693 0x80B929F4 */ .word	0xB10400FA
/* 000694 0x80B929F8 */ .word	0x48580064
/* 000695 0x80B929FC */ .word	0x00000000
