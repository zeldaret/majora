.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel D_8091D2D0
/* 001164 0x8091D2D0 */ .word	0x00000000
/* 001165 0x8091D2D4 */ .word	0x00000000
/* 001166 0x8091D2D8 */ .word	0x00000000
/* 001167 0x8091D2DC */ .word	0xF7CFFFFF
/* 001168 0x8091D2E0 */ .word	0x00000000
/* 001169 0x8091D2E4 */ .word	0x00000100
/* 001170 0x8091D2E8 */ .word	0x00000000
/* 001171 0x8091D2EC */ .word	0x00000000
/* 001172 0x8091D2F0 */ .word	0x00050064
glabel D_8091D2F4
/* 001173 0x8091D2F4 */ .word	0x0A000019
/* 001174 0x8091D2F8 */ .word	0x10000000
/* 001175 0x8091D2FC */ .word	0x00000001
/* 001176 0x8091D300 */ .word	D_8091D2D0
glabel En_Butte_InitVars
/* 001177 0x8091D304 */ .word	0x00150700
/* 001178 0x8091D308 */ .word	0x00000000
/* 001179 0x8091D30C */ .word	0x00020000
/* 001180 0x8091D310 */ .word	0x00000260
/* 001181 0x8091D314 */ .word	EnButte_Init
/* 001182 0x8091D318 */ .word	EnButte_Destroy
/* 001183 0x8091D31C */ .word	EnButte_Update
/* 001184 0x8091D320 */ .word	EnButte_Draw
glabel D_8091D324
/* 001185 0x8091D324 */ .word	0x00050023
/* 001186 0x8091D328 */ .word	0x00000000
/* 001187 0x8091D32C */ .word	0x3DCCCCCD
/* 001188 0x8091D330 */ .word	0x3F000000
/* 001189 0x8091D334 */ .word	0x00000000
/* 001190 0x8091D338 */ .word	0x000A002D
/* 001191 0x8091D33C */ .word	0x3F8CCCCD
/* 001192 0x8091D340 */ .word	0x3DCCCCCD
/* 001193 0x8091D344 */ .word	0x3E800000
/* 001194 0x8091D348 */ .word	0x03E80000
/* 001195 0x8091D34C */ .word	0x000A0028
/* 001196 0x8091D350 */ .word	0x3FC00000
/* 001197 0x8091D354 */ .word	0x3DCCCCCD
/* 001198 0x8091D358 */ .word	0x3E99999A
/* 001199 0x8091D35C */ .word	0x07D00000
glabel D_8091D360
/* 001200 0x8091D360 */ .word	0x00030003
/* 001201 0x8091D364 */ .word	0x3F4CCCCD
/* 001202 0x8091D368 */ .word	0x3DCCCCCD
/* 001203 0x8091D36C */ .word	0x3E4CCCCD
/* 001204 0x8091D370 */ .word	0x00000000
/* 001205 0x8091D374 */ .word	0x000A0014
/* 001206 0x8091D378 */ .word	0x40000000
/* 001207 0x8091D37C */ .word	0x3E99999A
/* 001208 0x8091D380 */ .word	0x3F800000
/* 001209 0x8091D384 */ .word	0x00000000
/* 001210 0x8091D388 */ .word	0x000A0014
/* 001211 0x8091D38C */ .word	0x4019999A
/* 001212 0x8091D390 */ .word	0x3E99999A
/* 001213 0x8091D394 */ .word	0x3F800000
/* 001214 0x8091D398 */ .word	0x00000000
glabel D_8091D39C
/* 001215 0x8091D39C */ .word	0x00000000
glabel D_8091D3A0
/* 001216 0x8091D3A0 */ .word	0x00000000
glabel D_8091D3A4
/* 001217 0x8091D3A4 */ .word	0x00000000
/* 001218 0x8091D3A8 */ .word	0x00000000
/* 001219 0x8091D3AC */ .word	0xC0400000
glabel D_8091D3B0
/* 001220 0x8091D3B0 */ .word	0xC858000A
/* 001221 0x8091D3B4 */ .word	0xB0FC02BC
/* 001222 0x8091D3B8 */ .word	0xB1000014
/* 001223 0x8091D3BC */ .word	0x3104003C
glabel D_8091D3C0
/* 001224 0x8091D3C0 */ .word	0x42480000
/* 001225 0x8091D3C4 */ .word	0x42A00000
/* 001226 0x8091D3C8 */ .word	0x42C80000
glabel D_8091D3CC
/* 001227 0x8091D3CC */ .word	0x41F00000
/* 001228 0x8091D3D0 */ .word	0x42200000
/* 001229 0x8091D3D4 */ .word	0x42480000
glabel D_8091D3D8
/* 001230 0x8091D3D8 */ .word	0x41700000
/* 001231 0x8091D3DC */ .word	0x41A00000
/* 001232 0x8091D3E0 */ .word	0x41C80000
glabel D_8091D3E4
/* 001233 0x8091D3E4 */ .word	0x40F00000
/* 001234 0x8091D3E8 */ .word	0x41200000
/* 001235 0x8091D3EC */ .word	0x41480000
glabel D_8091D3F0
/* 001236 0x8091D3F0 */ .word	0x000005DC
/* 001237 0x8091D3F4 */ .word	0x00000000
/* 001238 0x8091D3F8 */ .word	0x00000000
/* 001239 0x8091D3FC */ .word	0x00000000
