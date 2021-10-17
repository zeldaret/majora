.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel En_Ot_InitVars
/* 003112 0x80B5E380 */ .word	0x02050400
/* 003113 0x80B5E384 */ .word	0x00000019
/* 003114 0x80B5E388 */ .word	0x01EC0000
/* 003115 0x80B5E38C */ .word	0x00000758
/* 003116 0x80B5E390 */ .word	EnOt_Init
/* 003117 0x80B5E394 */ .word	EnOt_Destroy
/* 003118 0x80B5E398 */ .word	EnOt_Update
/* 003119 0x80B5E39C */ .word	EnOt_Draw
glabel D_80B5E3A0
/* 003120 0x80B5E3A0 */ .word	0x00001939
/* 003121 0x80B5E3A4 */ .word	0x10010000
/* 003122 0x80B5E3A8 */ .word	0x01000000
/* 003123 0x80B5E3AC */ .word	0x00000000
/* 003124 0x80B5E3B0 */ .word	0x00000000
/* 003125 0x80B5E3B4 */ .word	0xF7CFFFFF
/* 003126 0x80B5E3B8 */ .word	0x00000000
/* 003127 0x80B5E3BC */ .word	0x00010100
/* 003128 0x80B5E3C0 */ .word	0x00050021
/* 003129 0x80B5E3C4 */ .word	0xFFEC0000
/* 003130 0x80B5E3C8 */ .word	0x00000000
glabel D_80B5E3CC
/* 003131 0x80B5E3CC */ .word	0x06004B30
/* 003132 0x80B5E3D0 */ .word	0x3F800000
/* 003133 0x80B5E3D4 */ .word	0x00000000
/* 003134 0x80B5E3D8 */ .word	0xC0A00000
/* 003135 0x80B5E3DC */ .word	0x060008D8
/* 003136 0x80B5E3E0 */ .word	0x3F800000
/* 003137 0x80B5E3E4 */ .word	0x00000000
/* 003138 0x80B5E3E8 */ .word	0xC0A00000
/* 003139 0x80B5E3EC */ .word	0x06000420
/* 003140 0x80B5E3F0 */ .word	0x3F800000
/* 003141 0x80B5E3F4 */ .word	0x00000000
/* 003142 0x80B5E3F8 */ .word	0x00000000
glabel D_80B5E3FC
/* 003143 0x80B5E3FC */ .word	0xB1000050
/* 003144 0x80B5E400 */ .word	0xB1040050
/* 003145 0x80B5E404 */ .word	0x30FC0FA0
glabel D_80B5E408
/* 003146 0x80B5E408 */ .word	0xFFC85000
glabel D_80B5E40C
/* 003147 0x80B5E40C */ .word	0xFF3CC800
glabel D_80B5E410
/* 003148 0x80B5E410 */ .word	0x43C80000
/* 003149 0x80B5E414 */ .word	0x44160000
/* 003150 0x80B5E418 */ .word	0x00000000
/* 003151 0x80B5E41C */ .word	0x00000000
