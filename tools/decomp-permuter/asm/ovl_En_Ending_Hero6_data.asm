.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel En_Ending_Hero6_InitVars
/* 000340 0x80C241E0 */ .word	0x02AC0400
/* 000341 0x80C241E4 */ .word	0x00000009
/* 000342 0x80C241E8 */ .word	0x00010000
/* 000343 0x80C241EC */ .word	0x00000294
/* 000344 0x80C241F0 */ .word	EnEndingHero6_Init
/* 000345 0x80C241F4 */ .word	EnEndingHero6_Destroy
/* 000346 0x80C241F8 */ .word	EnEndingHero6_Update
/* 000347 0x80C241FC */ .word	EnEndingHero6_Draw
glabel D_80C24200
/* 000348 0x80C24200 */ .word	0x0600B0CC
/* 000349 0x80C24204 */ .word	0x06007908
/* 000350 0x80C24208 */ .word	0x06007150
/* 000351 0x80C2420C */ .word	0x0600D640
/* 000352 0x80C24210 */ .word	0x0600A850
/* 000353 0x80C24214 */ .word	0x0600A850
/* 000354 0x80C24218 */ .word	0x0600A850
/* 000355 0x80C2421C */ .word	0x0600A850
/* 000356 0x80C24220 */ .word	0x0600A850
glabel D_80C24224
/* 000357 0x80C24224 */ .word	0x06000BE0
/* 000358 0x80C24228 */ .word	0x060011C0
/* 000359 0x80C2422C */ .word	0x06000E50
/* 000360 0x80C24230 */ .word	0x06002A84
/* 000361 0x80C24234 */ .word	0x06002FA0
/* 000362 0x80C24238 */ .word	0x06002FA0
/* 000363 0x80C2423C */ .word	0x06002FA0
/* 000364 0x80C24240 */ .word	0x06002FA0
/* 000365 0x80C24244 */ .word	0x06002FA0
glabel D_80C24248
/* 000366 0x80C24248 */ .word	0x0000000F
/* 000367 0x80C2424C */ .word	0x00000014
/* 000368 0x80C24250 */ .word	0x00000011
/* 000369 0x80C24254 */ .word	0x00000011
/* 000370 0x80C24258 */ .word	0x00000011
/* 000371 0x80C2425C */ .word	0x00000011
/* 000372 0x80C24260 */ .word	0x00000011
/* 000373 0x80C24264 */ .word	0x00000011
/* 000374 0x80C24268 */ .word	0x00000011
glabel D_80C2426C
/* 000375 0x80C2426C */ .word	0x060070C0
/* 000376 0x80C24270 */ .word	0x06006FB0
/* 000377 0x80C24274 */ .word	0x06006E80
/* 000378 0x80C24278 */ .word	0x06006D70
/* 000379 0x80C2427C */ .word	0x0600A390
glabel D_80C24280
/* 000380 0x80C24280 */ .word	0x06007350
/* 000381 0x80C24284 */ .word	0x06009590
/* 000382 0x80C24288 */ .word	0x06009F90
/* 000383 0x80C2428C */ .word	0x0600A790
/* 000384 0x80C24290 */ .word	0x0600AB90
glabel D_80C24294
/* 000385 0x80C24294 */ .word	0x06007750
/* 000386 0x80C24298 */ .word	0x0600A390
/* 000387 0x80C2429C */ .word	0x0600A490
