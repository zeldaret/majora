.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel En_Sw_InitVars
/* 003104 0x808DB9C0 */ .word	0x00500400
/* 003105 0x808DB9C4 */ .word	0x00000005
/* 003106 0x808DB9C8 */ .word	0x00200000
/* 003107 0x808DB9CC */ .word	0x000004A4
/* 003108 0x808DB9D0 */ .word	EnSw_Init
/* 003109 0x808DB9D4 */ .word	EnSw_Destroy
/* 003110 0x808DB9D8 */ .word	EnSw_Update
/* 003111 0x808DB9DC */ .word	EnSw_Draw
glabel D_808DB9E0
/* 003112 0x808DB9E0 */ .word	0x0A110939
/* 003113 0x808DB9E4 */ .word	0x10040000
/* 003114 0x808DB9E8 */ .word	0x00000000
/* 003115 0x808DB9EC */ .word	0xF7CFFFFF
/* 003116 0x808DB9F0 */ .word	0x00000000
/* 003117 0x808DB9F4 */ .word	0xF7CFFFFF
/* 003118 0x808DB9F8 */ .word	0x00000000
/* 003119 0x808DB9FC */ .word	0x01010100
/* 003120 0x808DBA00 */ .word	0x00000000
/* 003121 0x808DBA04 */ .word	0x00000000
/* 003122 0x808DBA08 */ .word	0x00100064
glabel D_808DBA0C
/* 003123 0x808DBA0C */ .word	0x01000000
/* 003124 0x808DBA10 */ .word	0x00000000
/* 003125 0x808DBA14 */ .word	0xFF000000
glabel D_808DBA18
/* 003126 0x808DBA18 */ .word	0x01010001
/* 003127 0x808DBA1C */ .word	0x01010001
/* 003128 0x808DBA20 */ .word	0x01010222
/* 003129 0x808DBA24 */ .word	0x32420101
/* 003130 0x808DBA28 */ .word	0x01020151
/* 003131 0x808DBA2C */ .word	0x01010101
/* 003132 0x808DBA30 */ .word	0x01000000
/* 003133 0x808DBA34 */ .word	0x00000001
glabel D_808DBA38
/* 003134 0x808DBA38 */ .word	0x01000000
/* 003135 0x808DBA3C */ .word	0x00000000
/* 003136 0x808DBA40 */ .word	0xFF000000
glabel D_808DBA44
/* 003137 0x808DBA44 */ .word	0x10010001
/* 003138 0x808DBA48 */ .word	0x01010001
/* 003139 0x808DBA4C */ .word	0x01010222
/* 003140 0x808DBA50 */ .word	0x32420101
/* 003141 0x808DBA54 */ .word	0x01021051
/* 003142 0x808DBA58 */ .word	0x01010101
/* 003143 0x808DBA5C */ .word	0x01000000
/* 003144 0x808DBA60 */ .word	0x00000001
glabel D_808DBA64
/* 003145 0x808DBA64 */ .word	0x06000304
/* 003146 0x808DBA68 */ .word	0x3F800000
/* 003147 0x808DBA6C */ .word	0x0000FFFF
/* 003148 0x808DBA70 */ .word	0x03000000
/* 003149 0x808DBA74 */ .word	0x06000304
/* 003150 0x808DBA78 */ .word	0x3F800000
/* 003151 0x808DBA7C */ .word	0x0000FFFF
/* 003152 0x808DBA80 */ .word	0x0300FFFC
/* 003153 0x808DBA84 */ .word	0x060055A8
/* 003154 0x808DBA88 */ .word	0x3F800000
/* 003155 0x808DBA8C */ .word	0x0000FFFF
/* 003156 0x808DBA90 */ .word	0x0100FFFC
/* 003157 0x808DBA94 */ .word	0x06005B98
/* 003158 0x808DBA98 */ .word	0x3F800000
/* 003159 0x808DBA9C */ .word	0x0000FFFF
/* 003160 0x808DBAA0 */ .word	0x0100FFFC
glabel D_808DBAA4
/* 003161 0x808DBAA4 */ .word	0xAA825AFF
glabel D_808DBAA8
/* 003162 0x808DBAA8 */ .word	0x643C1400
glabel D_808DBAAC
/* 003163 0x808DBAAC */ .word	0x00000000
/* 003164 0x808DBAB0 */ .word	0x3F800000
/* 003165 0x808DBAB4 */ .word	0x00000000
/* 003166 0x808DBAB8 */ .word	0x00000000
/* 003167 0x808DBABC */ .word	0x00000000
