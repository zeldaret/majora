.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel D_8097C880
/* 000252 0x8097C880 */ .word	0xFFFFFFFF
/* 000253 0x8097C884 */ .word	0xFF00FFFF
/* 000254 0x8097C888 */ .word	0xFFFF0000
/* 000255 0x8097C88C */ .word	0xFFC864C8
/* 000256 0x8097C890 */ .word	0x96009664
/* 000257 0x8097C894 */ .word	0x00643200
/* 000258 0x8097C898 */ .word	0xFFFFFFFF
/* 000259 0x8097C89C */ .word	0x0000FFFF
/* 000260 0x8097C8A0 */ .word	0x00FF0000
/* 000261 0x8097C8A4 */ .word	0xFFFFFF00
/* 000262 0x8097C8A8 */ .word	0xFFC8FFFF
/* 000263 0x8097C8AC */ .word	0xFF9600FF
glabel D_8097C8B0
/* 000264 0x8097C8B0 */ .word	0x04033310
/* 000265 0x8097C8B4 */ .word	0x04033490
/* 000266 0x8097C8B8 */ .word	0x04033610
/* 000267 0x8097C8BC */ .word	0x04033790
/* 000268 0x8097C8C0 */ .word	0x04033910
/* 000269 0x8097C8C4 */ .word	0x04033A90
/* 000270 0x8097C8C8 */ .word	0x04033C10
/* 000271 0x8097C8CC */ .word	0x04033D90
/* 000272 0x8097C8D0 */ .word	0x04033F10
/* 000273 0x8097C8D4 */ .word	0x04034090
/* 000274 0x8097C8D8 */ .word	0x04034210
/* 000275 0x8097C8DC */ .word	0x04034390
/* 000276 0x8097C8E0 */ .word	0x04034510
/* 000277 0x8097C8E4 */ .word	0x04034690
/* 000278 0x8097C8E8 */ .word	0x04034810
/* 000279 0x8097C8EC */ .word	0x04034990
/* 000280 0x8097C8F0 */ .word	0x04034B10
/* 000281 0x8097C8F4 */ .word	0x04034C90
/* 000282 0x8097C8F8 */ .word	0x04034E10
/* 000283 0x8097C8FC */ .word	0x04034F90
/* 000284 0x8097C900 */ .word	0x04035110
/* 000285 0x8097C904 */ .word	0x04035290
/* 000286 0x8097C908 */ .word	0x04035410
/* 000287 0x8097C90C */ .word	0x04035590
/* 000288 0x8097C910 */ .word	0x04033310
/* 000289 0x8097C914 */ .word	0x04033490
/* 000290 0x8097C918 */ .word	0x04033610
/* 000291 0x8097C91C */ .word	0x04033790
/* 000292 0x8097C920 */ .word	0x04033910
/* 000293 0x8097C924 */ .word	0x04033A90
/* 000294 0x8097C928 */ .word	0x04033C10
/* 000295 0x8097C92C */ .word	0x04033D90
glabel D_8097C930
/* 000296 0x8097C930 */ .word	0x00000015
/* 000297 0x8097C934 */ .word	func_8097C490
/* 000298 0x8097C938 */ .word	0x00000000
/* 000299 0x8097C93C */ .word	0x00000000
glabel effectSsHitmarkOverlayInfo
/* 000300 0x8097C940 */ .word	0x000003F0
/* 000301 0x8097C944 */ .word	0x000000C0
/* 000302 0x8097C948 */ .word	0x00000000
/* 000303 0x8097C94C */ .word	0x00000000
/* 000304 0x8097C950 */ .word	0x0000000B
glabel effectSsHitmarkOverlayRelocations
/* 000305 0x8097C954 */ .word	0x45000020
/* 000306 0x8097C958 */ .word	0x4600003C
/* 000307 0x8097C95C */ .word	0x45000030
/* 000308 0x8097C960 */ .word	0x46000040
/* 000309 0x8097C964 */ .word	0x45000048
/* 000310 0x8097C968 */ .word	0x46000080
/* 000311 0x8097C96C */ .word	0x450001C0
/* 000312 0x8097C970 */ .word	0x460001D4
/* 000313 0x8097C974 */ .word	0x450002E0
/* 000314 0x8097C978 */ .word	0x460002E8
/* 000315 0x8097C97C */ .word	0x820000B4
/* 000316 0x8097C980 */ .word	0x00000000
/* 000317 0x8097C984 */ .word	0x00000000
/* 000318 0x8097C988 */ .word	0x00000000
glabel effectSsHitmarkOverlayInfoOffset
/* 000319 0x8097C98C */ .word	0x00000050
