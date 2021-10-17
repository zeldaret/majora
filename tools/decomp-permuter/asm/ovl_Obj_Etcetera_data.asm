.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel Obj_Etcetera_InitVars
/* 000704 0x80A7C770 */ .word	0x01830100
/* 000705 0x80A7C774 */ .word	0x00000010
/* 000706 0x80A7C778 */ .word	0x00010000
/* 000707 0x80A7C77C */ .word	0x00000284
/* 000708 0x80A7C780 */ .word	ObjEtcetera_Init
/* 000709 0x80A7C784 */ .word	ObjEtcetera_Destroy
/* 000710 0x80A7C788 */ .word	ObjEtcetera_Update
/* 000711 0x80A7C78C */ .word	0x00000000
glabel D_80A7C790
/* 000712 0x80A7C790 */ .word	0x0A000900
/* 000713 0x80A7C794 */ .word	0x10010000
/* 000714 0x80A7C798 */ .word	0x00000000
/* 000715 0x80A7C79C */ .word	0x00000000
/* 000716 0x80A7C7A0 */ .word	0x00000000
/* 000717 0x80A7C7A4 */ .word	0x01000202
/* 000718 0x80A7C7A8 */ .word	0x00000000
/* 000719 0x80A7C7AC */ .word	0x00010000
/* 000720 0x80A7C7B0 */ .word	0x0014000E
/* 000721 0x80A7C7B4 */ .word	0x00000000
/* 000722 0x80A7C7B8 */ .word	0x00000000
glabel D_80A7C7BC
/* 000723 0x80A7C7BC */ .word	0x00010001
/* 000724 0x80A7C7C0 */ .word	0x00010001
glabel D_80A7C7C4
/* 000725 0x80A7C7C4 */ .word	0xBF800000
/* 000726 0x80A7C7C8 */ .word	0xBF800000
/* 000727 0x80A7C7CC */ .word	0xBF800000
/* 000728 0x80A7C7D0 */ .word	0xBF333333
/* 000729 0x80A7C7D4 */ .word	0x00000000
/* 000730 0x80A7C7D8 */ .word	0x3F333333
/* 000731 0x80A7C7DC */ .word	0x3F800000
/* 000732 0x80A7C7E0 */ .word	0x3F333333
/* 000733 0x80A7C7E4 */ .word	0x00000000
/* 000734 0x80A7C7E8 */ .word	0xBF333333
/* 000735 0x80A7C7EC */ .word	0xBF800000
/* 000736 0x80A7C7F0 */ .word	0xBF333333
/* 000737 0x80A7C7F4 */ .word	0x00000000
/* 000738 0x80A7C7F8 */ .word	0x3F333333
/* 000739 0x80A7C7FC */ .word	0x3F800000
/* 000740 0x80A7C800 */ .word	0x3F333333
/* 000741 0x80A7C804 */ .word	0x00000000
/* 000742 0x80A7C808 */ .word	0xBF333333
glabel D_80A7C80C
/* 000743 0x80A7C80C */ .word	0x0400E710
/* 000744 0x80A7C810 */ .word	0x0400E710
/* 000745 0x80A7C814 */ .word	0x040118D8
/* 000746 0x80A7C818 */ .word	0x040118D8
/* 000747 0x80A7C81C */ .word	0x00000000
