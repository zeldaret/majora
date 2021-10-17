.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel enBjtOverlayInfo
/* 000856 0x80BFE040 */ .word	0x00000BC0
/* 000857 0x80BFE044 */ .word	0x00000150
/* 000858 0x80BFE048 */ .word	0x00000050
/* 000859 0x80BFE04C */ .word	0x00000000
/* 000860 0x80BFE050 */ .word	0x00000044
glabel enBjtOverlayRelocations
/* 000861 0x80BFE054 */ .word	0x45000090
/* 000862 0x80BFE058 */ .word	0x46000094
/* 000863 0x80BFE05C */ .word	0x450000DC
/* 000864 0x80BFE060 */ .word	0x460000E0
/* 000865 0x80BFE064 */ .word	0x4500016C
/* 000866 0x80BFE068 */ .word	0x46000174
/* 000867 0x80BFE06C */ .word	0x45000250
/* 000868 0x80BFE070 */ .word	0x46000254
/* 000869 0x80BFE074 */ .word	0x45000274
/* 000870 0x80BFE078 */ .word	0x46000278
/* 000871 0x80BFE07C */ .word	0x45000280
/* 000872 0x80BFE080 */ .word	0x46000284
/* 000873 0x80BFE084 */ .word	0x45000354
/* 000874 0x80BFE088 */ .word	0x46000358
/* 000875 0x80BFE08C */ .word	0x45000360
/* 000876 0x80BFE090 */ .word	0x46000394
/* 000877 0x80BFE094 */ .word	0x45000404
/* 000878 0x80BFE098 */ .word	0x4600040C
/* 000879 0x80BFE09C */ .word	0x44000498
/* 000880 0x80BFE0A0 */ .word	0x44000510
/* 000881 0x80BFE0A4 */ .word	0x44000520
/* 000882 0x80BFE0A8 */ .word	0x4400057C
/* 000883 0x80BFE0AC */ .word	0x440005B0
/* 000884 0x80BFE0B0 */ .word	0x440005DC
/* 000885 0x80BFE0B4 */ .word	0x45000670
/* 000886 0x80BFE0B8 */ .word	0x46000678
/* 000887 0x80BFE0BC */ .word	0x45000674
/* 000888 0x80BFE0C0 */ .word	0x4600067C
/* 000889 0x80BFE0C4 */ .word	0x44000708
/* 000890 0x80BFE0C8 */ .word	0x44000720
/* 000891 0x80BFE0CC */ .word	0x4400074C
/* 000892 0x80BFE0D0 */ .word	0x4500077C
/* 000893 0x80BFE0D4 */ .word	0x46000790
/* 000894 0x80BFE0D8 */ .word	0x450007C8
/* 000895 0x80BFE0DC */ .word	0x460007CC
/* 000896 0x80BFE0E0 */ .word	0x4500081C
/* 000897 0x80BFE0E4 */ .word	0x46000820
/* 000898 0x80BFE0E8 */ .word	0x4400085C
/* 000899 0x80BFE0EC */ .word	0x44000888
/* 000900 0x80BFE0F0 */ .word	0x44000A20
/* 000901 0x80BFE0F4 */ .word	0x45000A28
/* 000902 0x80BFE0F8 */ .word	0x46000A2C
/* 000903 0x80BFE0FC */ .word	0x45000A48
/* 000904 0x80BFE100 */ .word	0x46000A4C
/* 000905 0x80BFE104 */ .word	0x45000A78
/* 000906 0x80BFE108 */ .word	0x46000A7C
/* 000907 0x80BFE10C */ .word	0x44000ACC
/* 000908 0x80BFE110 */ .word	0x44000AEC
/* 000909 0x80BFE114 */ .word	0x44000B00
/* 000910 0x80BFE118 */ .word	0x44000B3C
/* 000911 0x80BFE11C */ .word	0x82000098
/* 000912 0x80BFE120 */ .word	0x8200009C
/* 000913 0x80BFE124 */ .word	0x820000A0
/* 000914 0x80BFE128 */ .word	0x820000A4
/* 000915 0x80BFE12C */ .word	0xC2000000
/* 000916 0x80BFE130 */ .word	0xC2000004
/* 000917 0x80BFE134 */ .word	0xC2000008
/* 000918 0x80BFE138 */ .word	0xC200000C
/* 000919 0x80BFE13C */ .word	0xC2000010
/* 000920 0x80BFE140 */ .word	0xC2000014
/* 000921 0x80BFE144 */ .word	0xC2000018
/* 000922 0x80BFE148 */ .word	0xC200001C
/* 000923 0x80BFE14C */ .word	0xC2000020
/* 000924 0x80BFE150 */ .word	0xC2000038
/* 000925 0x80BFE154 */ .word	0xC200003C
/* 000926 0x80BFE158 */ .word	0xC2000040
/* 000927 0x80BFE15C */ .word	0xC2000044
/* 000928 0x80BFE160 */ .word	0xC2000048
/* 000929 0x80BFE164 */ .word	0x00000000
/* 000930 0x80BFE168 */ .word	0x00000000
glabel enBjtOverlayInfoOffset
/* 000931 0x80BFE16C */ .word	0x00000130
