.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel En_Zow_InitVars
/* 001688 0x80BDDCD0 */ .word	0x02600400
/* 001689 0x80BDDCD4 */ .word	0x00000019
/* 001690 0x80BDDCD8 */ .word	0x00D00000
/* 001691 0x80BDDCDC */ .word	0x0000061C
/* 001692 0x80BDDCE0 */ .word	EnZow_Init
/* 001693 0x80BDDCE4 */ .word	EnZow_Destroy
/* 001694 0x80BDDCE8 */ .word	EnZow_Update
/* 001695 0x80BDDCEC */ .word	EnZow_Draw
glabel D_80BDDCF0
/* 001696 0x80BDDCF0 */ .word	0x0A001139
/* 001697 0x80BDDCF4 */ .word	0x10010000
/* 001698 0x80BDDCF8 */ .word	0x00000000
/* 001699 0x80BDDCFC */ .word	0x00000000
/* 001700 0x80BDDD00 */ .word	0x00000000
/* 001701 0x80BDDD04 */ .word	0xF7CFFFFF
/* 001702 0x80BDDD08 */ .word	0x00000000
/* 001703 0x80BDDD0C */ .word	0x00010100
/* 001704 0x80BDDD10 */ .word	0x001E0028
/* 001705 0x80BDDD14 */ .word	0x00000000
/* 001706 0x80BDDD18 */ .word	0x00000000
glabel D_80BDDD1C
/* 001707 0x80BDDD1C */ .word	0x00000000
/* 001708 0x80BDDD20 */ .word	0x3F800000
/* 001709 0x80BDDD24 */ .word	0x00000000
glabel D_80BDDD28
/* 001710 0x80BDDD28 */ .word	0x00000000
/* 001711 0x80BDDD2C */ .word	0xBF800000
/* 001712 0x80BDDD30 */ .word	0x00000000
glabel D_80BDDD34
/* 001713 0x80BDDD34 */ .word	0x00000000
glabel D_80BDDD38
/* 001714 0x80BDDD38 */ .word	0x00000000
glabel D_80BDDD3C
/* 001715 0x80BDDD3C */ .word	0x00000000
glabel D_80BDDD40
/* 001716 0x80BDDD40 */ .word	0x06004168
/* 001717 0x80BDDD44 */ .word	0x06003610
/* 001718 0x80BDDD48 */ .word	0x06003610
glabel D_80BDDD4C
/* 001719 0x80BDDD4C */ .word	0x43C80000
/* 001720 0x80BDDD50 */ .word	0x00000000
/* 001721 0x80BDDD54 */ .word	0x00000000
glabel D_80BDDD58
/* 001722 0x80BDDD58 */ .word	0x060050A0
/* 001723 0x80BDDD5C */ .word	0x060058A0
/* 001724 0x80BDDD60 */ .word	0x060060A0
/* 001725 0x80BDDD64 */ .word	0x00000000
/* 001726 0x80BDDD68 */ .word	0x00000000
/* 001727 0x80BDDD6C */ .word	0x00000000
