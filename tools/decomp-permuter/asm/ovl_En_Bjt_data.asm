.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel D_80BFDEA0
/* 000752 0x80BFDEA0 */ .word	0x0A00610D
/* 000753 0x80BFDEA4 */ .word	0x02000006
/* 000754 0x80BFDEA8 */ .word	0x0001050E
/* 000755 0x80BFDEAC */ .word	0x00000600
/* 000756 0x80BFDEB0 */ .word	0x01050000
glabel D_80BFDEB4
/* 000757 0x80BFDEB4 */ .word	0x0E29480C
/* 000758 0x80BFDEB8 */ .word	0x0E00FF2B
/* 000759 0x80BFDEBC */ .word	0x00000052
/* 000760 0x80BFDEC0 */ .word	0x005F2C29
/* 000761 0x80BFDEC4 */ .word	0x4A0C2F00
/* 000762 0x80BFDEC8 */ .word	0x000C1509
/* 000763 0x80BFDECC */ .word	0x00000E29
/* 000764 0x80BFDED0 */ .word	0x4B0C1509
/* 000765 0x80BFDED4 */ .word	0x00000E29
/* 000766 0x80BFDED8 */ .word	0x4C0C1200
/* 000767 0x80BFDEDC */ .word	0x4908001D
/* 000768 0x80BFDEE0 */ .word	0x09000006
/* 000769 0x80BFDEE4 */ .word	0x000C0000
/* 000770 0x80BFDEE8 */ .word	0x13000C2F
/* 000771 0x80BFDEEC */ .word	0x00002E2D
/* 000772 0x80BFDEF0 */ .word	0x00282D00
/* 000773 0x80BFDEF4 */ .word	0x0D0C1149
/* 000774 0x80BFDEF8 */ .word	0x08115A80
/* 000775 0x80BFDEFC */ .word	0x10090000
/* 000776 0x80BFDF00 */ .word	0x06000200
/* 000777 0x80BFDF04 */ .word	0x00130002
/* 000778 0x80BFDF08 */ .word	0x2F00002E
/* 000779 0x80BFDF0C */ .word	0x2D000D0C
/* 000780 0x80BFDF10 */ .word	0x115A8010
/* 000781 0x80BFDF14 */ .word	0x2C29490C
/* 000782 0x80BFDF18 */ .word	0x2F00000C
/* 000783 0x80BFDF1C */ .word	0x2D000D12
/* 000784 0x80BFDF20 */ .word	0x102D000D
/* 000785 0x80BFDF24 */ .word	0x12100000
glabel En_Bjt_InitVars
/* 000786 0x80BFDF28 */ .word	0x027D0400
/* 000787 0x80BFDF2C */ .word	0x00000009
/* 000788 0x80BFDF30 */ .word	0x024F0000
/* 000789 0x80BFDF34 */ .word	0x0000025C
/* 000790 0x80BFDF38 */ .word	EnBjt_Init
/* 000791 0x80BFDF3C */ .word	EnBjt_Destroy
/* 000792 0x80BFDF40 */ .word	EnBjt_Update
/* 000793 0x80BFDF44 */ .word	EnBjt_Draw
glabel D_80BFDF48
/* 000794 0x80BFDF48 */ .word	0x01000039
/* 000795 0x80BFDF4C */ .word	0x10010000
/* 000796 0x80BFDF50 */ .word	0x01000000
/* 000797 0x80BFDF54 */ .word	0x00000000
/* 000798 0x80BFDF58 */ .word	0x00000000
/* 000799 0x80BFDF5C */ .word	0x00000000
/* 000800 0x80BFDF60 */ .word	0x00000000
/* 000801 0x80BFDF64 */ .word	0x00000100
/* 000802 0x80BFDF68 */ .word	0x000A0044
/* 000803 0x80BFDF6C */ .word	0x00000000
/* 000804 0x80BFDF70 */ .word	0x00000000
glabel D_80BFDF74
/* 000805 0x80BFDF74 */ .word	0x00000000
/* 000806 0x80BFDF78 */ .word	0x00000000
/* 000807 0x80BFDF7C */ .word	0xFF000000
glabel D_80BFDF80
/* 000808 0x80BFDF80 */ .word	0x060007B8
/* 000809 0x80BFDF84 */ .word	0x3F800000
/* 000810 0x80BFDF88 */ .word	0x0000FFFF
/* 000811 0x80BFDF8C */ .word	0x00000000
/* 000812 0x80BFDF90 */ .word	0x060007B8
/* 000813 0x80BFDF94 */ .word	0x3F800000
/* 000814 0x80BFDF98 */ .word	0x0000FFFF
/* 000815 0x80BFDF9C */ .word	0x0000FFFC
/* 000816 0x80BFDFA0 */ .word	0x060000FC
/* 000817 0x80BFDFA4 */ .word	0x3F800000
/* 000818 0x80BFDFA8 */ .word	0x0000FFFF
/* 000819 0x80BFDFAC */ .word	0x0000FFFC
/* 000820 0x80BFDFB0 */ .word	0x060003A8
/* 000821 0x80BFDFB4 */ .word	0x3F800000
/* 000822 0x80BFDFB8 */ .word	0x0000FFFF
/* 000823 0x80BFDFBC */ .word	0x0000FFFC
/* 000824 0x80BFDFC0 */ .word	0x06000564
/* 000825 0x80BFDFC4 */ .word	0x3F800000
/* 000826 0x80BFDFC8 */ .word	0x0000FFFF
/* 000827 0x80BFDFCC */ .word	0x0000FFFC
/* 000828 0x80BFDFD0 */ .word	0x06000218
/* 000829 0x80BFDFD4 */ .word	0x3F800000
/* 000830 0x80BFDFD8 */ .word	0x0000FFFF
/* 000831 0x80BFDFDC */ .word	0x0000FFFC
glabel D_80BFDFE0
/* 000832 0x80BFDFE0 */ .word	0x00000000
/* 000833 0x80BFDFE4 */ .word	0x41000000
/* 000834 0x80BFDFE8 */ .word	0x41200000
/* 000835 0x80BFDFEC */ .word	0x00000000
