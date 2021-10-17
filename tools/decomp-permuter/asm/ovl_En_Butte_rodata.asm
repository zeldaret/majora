.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel D_8091D400
/* 001240 0x8091D400 */ .word	0x3F19999A
glabel D_8091D404
/* 001241 0x8091D404 */ .word	0x3B449BA6
glabel D_8091D408
/* 001242 0x8091D408 */ .word	0x477FFF00
glabel D_8091D40C
/* 001243 0x8091D40C */ .word	0x477FFF00
glabel D_8091D410
/* 001244 0x8091D410 */ .word	0x477FFF00
glabel D_8091D414
/* 001245 0x8091D414 */ .word	0x461C4000
glabel D_8091D418
/* 001246 0x8091D418 */ .word	0x44992000
glabel D_8091D41C
/* 001247 0x8091D41C */ .word	0x3E99999A
glabel D_8091D420
/* 001248 0x8091D420 */ .word	0x3ECCCCCD
glabel D_8091D424
/* 001249 0x8091D424 */ .word	0x3E4CCCCD
glabel D_8091D428
/* 001250 0x8091D428 */ .word	0x3E19999A
glabel D_8091D42C
/* 001251 0x8091D42C */ .word	0x3E99999A
glabel D_8091D430
/* 001252 0x8091D430 */ .word	0x3E99999A
glabel D_8091D434
/* 001253 0x8091D434 */ .word	0x3E4CCCCD
glabel D_8091D438
/* 001254 0x8091D438 */ .word	0x3E19999A
glabel D_8091D43C
/* 001255 0x8091D43C */ .word	0x3E99999A
glabel D_8091D440
/* 001256 0x8091D440 */ .word	0x3FE66666
glabel D_8091D444
/* 001257 0x8091D444 */ .word	0x459C4000
/* 001258 0x8091D448 */ .word	0x00000000
/* 001259 0x8091D44C */ .word	0x00000000
glabel enButteOverlayInfo
/* 001260 0x8091D450 */ .word	0x00001230
/* 001261 0x8091D454 */ .word	0x00000130
/* 001262 0x8091D458 */ .word	0x00000050
/* 001263 0x8091D45C */ .word	0x00000000
/* 001264 0x8091D460 */ .word	0x0000006F
glabel enButteOverlayRelocations
/* 001265 0x8091D464 */ .word	0x45000028
/* 001266 0x8091D468 */ .word	0x4600002C
/* 001267 0x8091D46C */ .word	0x45000088
/* 001268 0x8091D470 */ .word	0x4600008C
/* 001269 0x8091D474 */ .word	0x45000090
/* 001270 0x8091D478 */ .word	0x46000094
/* 001271 0x8091D47C */ .word	0x450000A0
/* 001272 0x8091D480 */ .word	0x460000AC
/* 001273 0x8091D484 */ .word	0x450000A4
/* 001274 0x8091D488 */ .word	0x460000A8
/* 001275 0x8091D48C */ .word	0x450000B0
/* 001276 0x8091D490 */ .word	0x460000B4
/* 001277 0x8091D494 */ .word	0x450000FC
/* 001278 0x8091D498 */ .word	0x46000104
/* 001279 0x8091D49C */ .word	0x4500018C
/* 001280 0x8091D4A0 */ .word	0x46000190
/* 001281 0x8091D4A4 */ .word	0x450001D0
/* 001282 0x8091D4A8 */ .word	0x460001D4
/* 001283 0x8091D4AC */ .word	0x450002D4
/* 001284 0x8091D4B0 */ .word	0x460002D8
/* 001285 0x8091D4B4 */ .word	0x45000354
/* 001286 0x8091D4B8 */ .word	0x46000364
/* 001287 0x8091D4BC */ .word	0x450003A8
/* 001288 0x8091D4C0 */ .word	0x460003AC
/* 001289 0x8091D4C4 */ .word	0x450003C4
/* 001290 0x8091D4C8 */ .word	0x460003C8
/* 001291 0x8091D4CC */ .word	0x450003E0
/* 001292 0x8091D4D0 */ .word	0x460003E4
/* 001293 0x8091D4D4 */ .word	0x44000428
/* 001294 0x8091D4D8 */ .word	0x450004BC
/* 001295 0x8091D4DC */ .word	0x460004CC
/* 001296 0x8091D4E0 */ .word	0x450004D0
/* 001297 0x8091D4E4 */ .word	0x460004DC
/* 001298 0x8091D4E8 */ .word	0x45000584
/* 001299 0x8091D4EC */ .word	0x46000594
/* 001300 0x8091D4F0 */ .word	0x45000598
/* 001301 0x8091D4F4 */ .word	0x460005A4
/* 001302 0x8091D4F8 */ .word	0x450006B4
/* 001303 0x8091D4FC */ .word	0x460006B8
/* 001304 0x8091D500 */ .word	0x440006CC
/* 001305 0x8091D504 */ .word	0x450006D8
/* 001306 0x8091D508 */ .word	0x460006DC
/* 001307 0x8091D50C */ .word	0x45000708
/* 001308 0x8091D510 */ .word	0x4600070C
/* 001309 0x8091D514 */ .word	0x44000744
/* 001310 0x8091D518 */ .word	0x45000780
/* 001311 0x8091D51C */ .word	0x46000784
/* 001312 0x8091D520 */ .word	0x4500077C
/* 001313 0x8091D524 */ .word	0x46000790
/* 001314 0x8091D528 */ .word	0x4500084C
/* 001315 0x8091D52C */ .word	0x46000850
/* 001316 0x8091D530 */ .word	0x450008B8
/* 001317 0x8091D534 */ .word	0x460008BC
/* 001318 0x8091D538 */ .word	0x440008F4
/* 001319 0x8091D53C */ .word	0x45000920
/* 001320 0x8091D540 */ .word	0x46000924
/* 001321 0x8091D544 */ .word	0x45000938
/* 001322 0x8091D548 */ .word	0x46000950
/* 001323 0x8091D54C */ .word	0x45000954
/* 001324 0x8091D550 */ .word	0x46000960
/* 001325 0x8091D554 */ .word	0x450009D8
/* 001326 0x8091D558 */ .word	0x460009DC
/* 001327 0x8091D55C */ .word	0x440009EC
/* 001328 0x8091D560 */ .word	0x44000A74
/* 001329 0x8091D564 */ .word	0x45000AD4
/* 001330 0x8091D568 */ .word	0x46000AD8
/* 001331 0x8091D56C */ .word	0x44000AEC
/* 001332 0x8091D570 */ .word	0x45000AF8
/* 001333 0x8091D574 */ .word	0x46000AFC
/* 001334 0x8091D578 */ .word	0x45000B34
/* 001335 0x8091D57C */ .word	0x46000B44
/* 001336 0x8091D580 */ .word	0x44000B54
/* 001337 0x8091D584 */ .word	0x45000C00
/* 001338 0x8091D588 */ .word	0x46000C04
/* 001339 0x8091D58C */ .word	0x45000C40
/* 001340 0x8091D590 */ .word	0x46000C94
/* 001341 0x8091D594 */ .word	0x44000CCC
/* 001342 0x8091D598 */ .word	0x45000CF8
/* 001343 0x8091D59C */ .word	0x46000CFC
/* 001344 0x8091D5A0 */ .word	0x45000D10
/* 001345 0x8091D5A4 */ .word	0x46000D28
/* 001346 0x8091D5A8 */ .word	0x45000D2C
/* 001347 0x8091D5AC */ .word	0x46000D38
/* 001348 0x8091D5B0 */ .word	0x45000DB0
/* 001349 0x8091D5B4 */ .word	0x46000DB4
/* 001350 0x8091D5B8 */ .word	0x44000DC4
/* 001351 0x8091D5BC */ .word	0x45000DCC
/* 001352 0x8091D5C0 */ .word	0x46000DD0
/* 001353 0x8091D5C4 */ .word	0x45000DD4
/* 001354 0x8091D5C8 */ .word	0x46000DDC
/* 001355 0x8091D5CC */ .word	0x45000E0C
/* 001356 0x8091D5D0 */ .word	0x46000E10
/* 001357 0x8091D5D4 */ .word	0x44000E50
/* 001358 0x8091D5D8 */ .word	0x44000EA8
/* 001359 0x8091D5DC */ .word	0x44000EEC
/* 001360 0x8091D5E0 */ .word	0x45000EF8
/* 001361 0x8091D5E4 */ .word	0x46000EFC
/* 001362 0x8091D5E8 */ .word	0x44000F30
/* 001363 0x8091D5EC */ .word	0x44000FB4
/* 001364 0x8091D5F0 */ .word	0x45000FD0
/* 001365 0x8091D5F4 */ .word	0x46000FD8
/* 001366 0x8091D5F8 */ .word	0x45001100
/* 001367 0x8091D5FC */ .word	0x46001104
/* 001368 0x8091D600 */ .word	0x45001200
/* 001369 0x8091D604 */ .word	0x46001204
/* 001370 0x8091D608 */ .word	0x44001210
/* 001371 0x8091D60C */ .word	0x82000030
/* 001372 0x8091D610 */ .word	0x82000044
/* 001373 0x8091D614 */ .word	0x82000048
/* 001374 0x8091D618 */ .word	0x8200004C
/* 001375 0x8091D61C */ .word	0x82000050
/* 001376 0x8091D620 */ .word	0x00000000
/* 001377 0x8091D624 */ .word	0x00000000
/* 001378 0x8091D628 */ .word	0x00000000
glabel enButteOverlayInfoOffset
/* 001379 0x8091D62C */ .word	0x000001E0
