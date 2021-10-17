.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel dmAnOverlayInfo
/* 000968 0x80C1D330 */ .word	0x00000D90
/* 000969 0x80C1D334 */ .word	0x00000170
/* 000970 0x80C1D338 */ .word	0x00000020
/* 000971 0x80C1D33C */ .word	0x00000000
/* 000972 0x80C1D340 */ .word	0x00000030
glabel dmAnOverlayRelocations
/* 000973 0x80C1D344 */ .word	0x45000134
/* 000974 0x80C1D348 */ .word	0x4600014C
/* 000975 0x80C1D34C */ .word	0x44000440
/* 000976 0x80C1D350 */ .word	0x440005F0
/* 000977 0x80C1D354 */ .word	0x4500061C
/* 000978 0x80C1D358 */ .word	0x46000620
/* 000979 0x80C1D35C */ .word	0x44000654
/* 000980 0x80C1D360 */ .word	0x44000668
/* 000981 0x80C1D364 */ .word	0x45000670
/* 000982 0x80C1D368 */ .word	0x46000674
/* 000983 0x80C1D36C */ .word	0x45000680
/* 000984 0x80C1D370 */ .word	0x46000684
/* 000985 0x80C1D374 */ .word	0x450006B0
/* 000986 0x80C1D378 */ .word	0x460006B4
/* 000987 0x80C1D37C */ .word	0x44000794
/* 000988 0x80C1D380 */ .word	0x450007B4
/* 000989 0x80C1D384 */ .word	0x460007BC
/* 000990 0x80C1D388 */ .word	0x44000818
/* 000991 0x80C1D38C */ .word	0x44000858
/* 000992 0x80C1D390 */ .word	0x450008B4
/* 000993 0x80C1D394 */ .word	0x460008B8
/* 000994 0x80C1D398 */ .word	0x44000910
/* 000995 0x80C1D39C */ .word	0x44000928
/* 000996 0x80C1D3A0 */ .word	0x44000930
/* 000997 0x80C1D3A4 */ .word	0x450009C4
/* 000998 0x80C1D3A8 */ .word	0x460009D4
/* 000999 0x80C1D3AC */ .word	0x450009C8
/* 001000 0x80C1D3B0 */ .word	0x460009CC
/* 001001 0x80C1D3B4 */ .word	0x45000AB8
/* 001002 0x80C1D3B8 */ .word	0x46000AC0
/* 001003 0x80C1D3BC */ .word	0x45000CE4
/* 001004 0x80C1D3C0 */ .word	0x46000CF4
/* 001005 0x80C1D3C4 */ .word	0x45000D18
/* 001006 0x80C1D3C8 */ .word	0x46000D28
/* 001007 0x80C1D3CC */ .word	0x45000D38
/* 001008 0x80C1D3D0 */ .word	0x46000D3C
/* 001009 0x80C1D3D4 */ .word	0x45000D50
/* 001010 0x80C1D3D8 */ .word	0x46000D54
/* 001011 0x80C1D3DC */ .word	0x82000010
/* 001012 0x80C1D3E0 */ .word	0x82000014
/* 001013 0x80C1D3E4 */ .word	0x82000018
/* 001014 0x80C1D3E8 */ .word	0xC2000000
/* 001015 0x80C1D3EC */ .word	0xC2000004
/* 001016 0x80C1D3F0 */ .word	0xC2000008
/* 001017 0x80C1D3F4 */ .word	0xC200000C
/* 001018 0x80C1D3F8 */ .word	0xC2000010
/* 001019 0x80C1D3FC */ .word	0xC2000014
/* 001020 0x80C1D400 */ .word	0xC2000018
/* 001021 0x80C1D404 */ .word	0x00000000
/* 001022 0x80C1D408 */ .word	0x00000000
glabel dmAnOverlayInfoOffset
/* 001023 0x80C1D40C */ .word	0x000000E0
