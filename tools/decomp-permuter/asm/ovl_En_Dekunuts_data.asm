.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel En_Dekunuts_InitVars
/* 001868 0x808BEF10 */ .word	0x003B0500
/* 001869 0x808BEF14 */ .word	0x00000005
/* 001870 0x808BEF18 */ .word	0x00400000
/* 001871 0x808BEF1C */ .word	0x000002C8
/* 001872 0x808BEF20 */ .word	EnDekunuts_Init
/* 001873 0x808BEF24 */ .word	EnDekunuts_Destroy
/* 001874 0x808BEF28 */ .word	EnDekunuts_Update
/* 001875 0x808BEF2C */ .word	EnDekunuts_Draw
glabel D_808BEF30
/* 001876 0x808BEF30 */ .word	0x06000939
/* 001877 0x808BEF34 */ .word	0x10010000
/* 001878 0x808BEF38 */ .word	0x00000000
/* 001879 0x808BEF3C */ .word	0x00000000
/* 001880 0x808BEF40 */ .word	0x00000000
/* 001881 0x808BEF44 */ .word	0xF7CFFFFF
/* 001882 0x808BEF48 */ .word	0x00000000
/* 001883 0x808BEF4C */ .word	0x00010100
/* 001884 0x808BEF50 */ .word	0x00120020
/* 001885 0x808BEF54 */ .word	0x00000000
/* 001886 0x808BEF58 */ .word	0x00000000
glabel D_808BEF5C
/* 001887 0x808BEF5C */ .word	0x01000012
/* 001888 0x808BEF60 */ .word	0x0020FF00
glabel D_808BEF64
/* 001889 0x808BEF64 */ .word	0x01010001
/* 001890 0x808BEF68 */ .word	0x01010001
/* 001891 0x808BEF6C */ .word	0x01010122
/* 001892 0x808BEF70 */ .word	0x32420101
/* 001893 0x808BEF74 */ .word	0x01020151
/* 001894 0x808BEF78 */ .word	0x00000101
/* 001895 0x808BEF7C */ .word	0x01000000
/* 001896 0x808BEF80 */ .word	0x00000001
glabel D_808BEF84
/* 001897 0x808BEF84 */ .word	0x891F004D
/* 001898 0x808BEF88 */ .word	0xB074FFFF
/* 001899 0x808BEF8C */ .word	0x30540A28
glabel D_808BEF90
/* 001900 0x808BEF90 */ .word	0xFFFFFFFF
glabel D_808BEF94
/* 001901 0x808BEF94 */ .word	0x96969600
glabel D_808BEF98
/* 001902 0x808BEF98 */ .short	0xFFFF
glabel D_808BEF9A
/* 001902 0x808BEF98 */ .short	0xFF03
/* 001903 0x808BEF9C */ .word	0xFF00FF01
/* 001904 0x808BEFA0 */ .word	0xFF020000
glabel D_808BEFA4
/* 001905 0x808BEFA4 */ .word	0xC4BB8000
/* 001906 0x808BEFA8 */ .word	0x00000000
/* 001907 0x808BEFAC */ .word	0xC4D48000
/* 001908 0x808BEFB0 */ .word	0xC4BB8000
/* 001909 0x808BEFB4 */ .word	0x00000000
/* 001910 0x808BEFB8 */ .word	0x44D48000
/* 001911 0x808BEFBC */ .word	0xC51C4000
/* 001912 0x808BEFC0 */ .word	0xC4FA0000
/* 001913 0x808BEFC4 */ .word	0x00000000
/* 001914 0x808BEFC8 */ .word	0xC47A0000
/* 001915 0x808BEFCC */ .word	0x447A0000
/* 001916 0x808BEFD0 */ .word	0x00000000
/* 001917 0x808BEFD4 */ .word	0x00000000
/* 001918 0x808BEFD8 */ .word	0x00000000
/* 001919 0x808BEFDC */ .word	0x00000000
