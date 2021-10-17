.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel En_Thiefbird_InitVars
/* 002956 0x80C135A0 */ .word	0x02910500
/* 002957 0x80C135A4 */ .word	0x80001205
/* 002958 0x80C135A8 */ .word	0x00220000
/* 002959 0x80C135AC */ .word	0x00000990
/* 002960 0x80C135B0 */ .word	EnThiefbird_Init
/* 002961 0x80C135B4 */ .word	EnThiefbird_Destroy
/* 002962 0x80C135B8 */ .word	EnThiefbird_Update
/* 002963 0x80C135BC */ .word	EnThiefbird_Draw
glabel D_80C135C0
/* 002964 0x80C135C0 */ .word	0x00000000
/* 002965 0x80C135C4 */ .word	0xF7CFFFFF
/* 002966 0x80C135C8 */ .word	0x00000000
/* 002967 0x80C135CC */ .word	0xF7CFFFFF
/* 002968 0x80C135D0 */ .word	0x00000000
/* 002969 0x80C135D4 */ .word	0x00010100
/* 002970 0x80C135D8 */ .word	0x01000000
/* 002971 0x80C135DC */ .word	0x00000000
/* 002972 0x80C135E0 */ .word	0x00180064
/* 002973 0x80C135E4 */ .word	0x00000000
/* 002974 0x80C135E8 */ .word	0xF7CFFFFF
/* 002975 0x80C135EC */ .word	0x00000000
/* 002976 0x80C135F0 */ .word	0xF7CFFFFF
/* 002977 0x80C135F4 */ .word	0x00000000
/* 002978 0x80C135F8 */ .word	0x00010100
/* 002979 0x80C135FC */ .word	0x09000384
/* 002980 0x80C13600 */ .word	0xFDA80000
/* 002981 0x80C13604 */ .word	0x00140064
/* 002982 0x80C13608 */ .word	0x00000000
/* 002983 0x80C1360C */ .word	0xF7CFFFFF
/* 002984 0x80C13610 */ .word	0x00040000
/* 002985 0x80C13614 */ .word	0xF7CFFFFF
/* 002986 0x80C13618 */ .word	0x00000000
/* 002987 0x80C1361C */ .word	0x09010100
/* 002988 0x80C13620 */ .word	0x0C0004B0
/* 002989 0x80C13624 */ .word	0x00000000
/* 002990 0x80C13628 */ .word	0x00090064
glabel D_80C1362C
/* 002991 0x80C1362C */ .word	0x03110939
/* 002992 0x80C13630 */ .word	0x10000000
/* 002993 0x80C13634 */ .word	0x00000003
/* 002994 0x80C13638 */ .word	D_80C135C0
glabel D_80C1363C
/* 002995 0x80C1363C */ .word	0x1800000F
/* 002996 0x80C13640 */ .word	0x001E1E00
glabel D_80C13644
/* 002997 0x80C13644 */ .word	0x10010101
/* 002998 0x80C13648 */ .word	0x01010001
/* 002999 0x80C1364C */ .word	0x01010122
/* 003000 0x80C13650 */ .word	0x32420101
/* 003001 0x80C13654 */ .word	0x01021050
/* 003002 0x80C13658 */ .word	0x00000101
/* 003003 0x80C1365C */ .word	0x01000000
/* 003004 0x80C13660 */ .word	0x00000001
glabel D_80C13664
/* 003005 0x80C13664 */ .word	0x0005000B
/* 003006 0x80C13668 */ .word	0x00000001
/* 003007 0x80C1366C */ .word	0x00020014
glabel D_80C13670
/* 003008 0x80C13670 */ .word	0xB0FC0BB8
/* 003009 0x80C13674 */ .word	0xB10003E8
/* 003010 0x80C13678 */ .word	0x891F0023
glabel D_80C1367C
/* 003011 0x80C1367C */ .word	0x305401F4
/* 003012 0x80C13680 */ .word	0x06004348
/* 003013 0x80C13684 */ .word	0x06004B88
/* 003014 0x80C13688 */ .word	0x060055E0
glabel D_80C1368C
/* 003015 0x80C1368C */ .word	0x00000000
/* 003016 0x80C13690 */ .word	0xBE19999A
/* 003017 0x80C13694 */ .word	0x00000000
glabel D_80C13698
/* 003018 0x80C13698 */ .word	0xFF00FF01
/* 003019 0x80C1369C */ .word	0x03FF0205
/* 003020 0x80C136A0 */ .word	0xFFFF0708
/* 003021 0x80C136A4 */ .word	0x09FFFF0A
/* 003022 0x80C136A8 */ .word	0xFF000000
/* 003023 0x80C136AC */ .word	0x00000000
