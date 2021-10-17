.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel D_8097CEC0
/* 000332 0x8097CEC0 */ .word	0x00000016
/* 000333 0x8097CEC4 */ .word	func_8097C990
glabel D_8097CEC8
/* 000334 0x8097CEC8 */ .word	0x00000000
/* 000335 0x8097CECC */ .word	0xC47A0000
/* 000336 0x8097CED0 */ .word	0x00000000
/* 000337 0x8097CED4 */ .word	0x00000000
/* 000338 0x8097CED8 */ .word	0x00000000
/* 000339 0x8097CEDC */ .word	0x00000000
glabel D_8097CEE0
/* 000340 0x8097CEE0 */ .word	0xFFF6FFF6
/* 000341 0x8097CEE4 */ .word	0x00000000
/* 000342 0x8097CEE8 */ .word	0x00000400
/* 000343 0x8097CEEC */ .word	0xFFFFFFFF
/* 000344 0x8097CEF0 */ .word	0x000AFFF6
/* 000345 0x8097CEF4 */ .word	0x00000000
/* 000346 0x8097CEF8 */ .word	0x04000400
/* 000347 0x8097CEFC */ .word	0xFFFFFFFF
/* 000348 0x8097CF00 */ .word	0x000A000A
/* 000349 0x8097CF04 */ .word	0x00000000
/* 000350 0x8097CF08 */ .word	0x04000000
/* 000351 0x8097CF0C */ .word	0xFFFFFFFF
/* 000352 0x8097CF10 */ .word	0xFFF6000A
/* 000353 0x8097CF14 */ .word	0x00000000
/* 000354 0x8097CF18 */ .word	0x00000000
/* 000355 0x8097CF1C */ .word	0xFFFFFFFF
glabel D_8097CF20
/* 000356 0x8097CF20 */ .word	0xE7000000
/* 000357 0x8097CF24 */ .word	0x00000000
/* 000358 0x8097CF28 */ .word	0xE3001001
/* 000359 0x8097CF2C */ .word	0x00000000
/* 000360 0x8097CF30 */ .word	0xD7000002
/* 000361 0x8097CF34 */ .word	0xFFFFFFFF
/* 000362 0x8097CF38 */ .word	0xFD900000
/* 000363 0x8097CF3C */ .word	D_8097CF98
/* 000364 0x8097CF40 */ .word	0xF5900000
/* 000365 0x8097CF44 */ .word	0x07054150
/* 000366 0x8097CF48 */ .word	0xE6000000
/* 000367 0x8097CF4C */ .word	0x00000000
/* 000368 0x8097CF50 */ .word	0xF3000000
/* 000369 0x8097CF54 */ .word	0x071FF200
/* 000370 0x8097CF58 */ .word	0xE7000000
/* 000371 0x8097CF5C */ .word	0x00000000
/* 000372 0x8097CF60 */ .word	0xF5880800
/* 000373 0x8097CF64 */ .word	0x00054150
/* 000374 0x8097CF68 */ .word	0xF2000000
/* 000375 0x8097CF6C */ .word	0x0007C07C
/* 000376 0x8097CF70 */ .word	0xFC3097FF
/* 000377 0x8097CF74 */ .word	0x5FFEFE38
/* 000378 0x8097CF78 */ .word	0xD9F0FBFF
/* 000379 0x8097CF7C */ .word	0x00000000
/* 000380 0x8097CF80 */ .word	0x01004008
/* 000381 0x8097CF84 */ .word	D_8097CEE0
/* 000382 0x8097CF88 */ .word	0x06000204
/* 000383 0x8097CF8C */ .word	0x00000406
/* 000384 0x8097CF90 */ .word	0xDF000000
/* 000385 0x8097CF94 */ .word	0x00000000
glabel D_8097CF98
/* 000386 0x8097CF98 */ .word	0x00000000
/* 000387 0x8097CF9C */ .word	0x00000000
/* 000388 0x8097CFA0 */ .word	0x00000000
/* 000389 0x8097CFA4 */ .word	0x00000000
/* 000390 0x8097CFA8 */ .word	0x00000000
/* 000391 0x8097CFAC */ .word	0x00000000
/* 000392 0x8097CFB0 */ .word	0x00000000
/* 000393 0x8097CFB4 */ .word	0x00000000
/* 000394 0x8097CFB8 */ .word	0x00000000
/* 000395 0x8097CFBC */ .word	0x00000000
/* 000396 0x8097CFC0 */ .word	0x00000000
/* 000397 0x8097CFC4 */ .word	0x00000000
/* 000398 0x8097CFC8 */ .word	0x00000000
/* 000399 0x8097CFCC */ .word	0x00000000
/* 000400 0x8097CFD0 */ .word	0x00000000
/* 000401 0x8097CFD4 */ .word	0x00000000
/* 000402 0x8097CFD8 */ .word	0x00000000
/* 000403 0x8097CFDC */ .word	0x00000000
/* 000404 0x8097CFE0 */ .word	0x00000000
/* 000405 0x8097CFE4 */ .word	0x00000000
/* 000406 0x8097CFE8 */ .word	0x00000000
/* 000407 0x8097CFEC */ .word	0x00000000
/* 000408 0x8097CFF0 */ .word	0x00000000
/* 000409 0x8097CFF4 */ .word	0x00000000
/* 000410 0x8097CFF8 */ .word	0x00000000
/* 000411 0x8097CFFC */ .word	0x00000000
/* 000412 0x8097D000 */ .word	0x00000000
/* 000413 0x8097D004 */ .word	0x00000000
/* 000414 0x8097D008 */ .word	0x00000000
/* 000415 0x8097D00C */ .word	0x00000000
/* 000416 0x8097D010 */ .word	0x00000000
/* 000417 0x8097D014 */ .word	0x00000000
/* 000418 0x8097D018 */ .word	0x00000000
/* 000419 0x8097D01C */ .word	0x005B3000
/* 000420 0x8097D020 */ .word	0x00000000
/* 000421 0x8097D024 */ .word	0x00000000
/* 000422 0x8097D028 */ .word	0x00000000
/* 000423 0x8097D02C */ .word	0x000B0000
/* 000424 0x8097D030 */ .word	0x07000000
/* 000425 0x8097D034 */ .word	0x00000000
/* 000426 0x8097D038 */ .word	0x00000000
/* 000427 0x8097D03C */ .word	0x005BB64B
/* 000428 0x8097D040 */ .word	0x3A000000
/* 000429 0x8097D044 */ .word	0x00000000
/* 000430 0x8097D048 */ .word	0x00000000
/* 000431 0x8097D04C */ .word	0x005B0000
/* 000432 0x8097D050 */ .word	0x00000000
/* 000433 0x8097D054 */ .word	0x00000000
/* 000434 0x8097D058 */ .word	0x00000000
/* 000435 0x8097D05C */ .word	0x001E00B6
/* 000436 0x8097D060 */ .word	0xFF5B0000
/* 000437 0x8097D064 */ .word	0x00000000
/* 000438 0x8097D068 */ .word	0x00000000
/* 000439 0x8097D06C */ .word	0x00251F0C
/* 000440 0x8097D070 */ .word	0x07000000
/* 000441 0x8097D074 */ .word	0x0A000000
/* 000442 0x8097D078 */ .word	0x00000000
/* 000443 0x8097D07C */ .word	0x00000000
/* 000444 0x8097D080 */ .word	0xB6FF0000
/* 000445 0x8097D084 */ .word	0x00000000
/* 000446 0x8097D088 */ .word	0x00000000
/* 000447 0x8097D08C */ .word	0x00255B00
/* 000448 0x8097D090 */ .word	0x071F1E14
/* 000449 0x8097D094 */ .word	0x0A000000
/* 000450 0x8097D098 */ .word	0x00000000
/* 000451 0x8097D09C */ .word	0x00000000
/* 000452 0x8097D0A0 */ .word	0x00457350
/* 000453 0x8097D0A4 */ .word	0x00000000
/* 000454 0x8097D0A8 */ .word	0x00000000
/* 000455 0x8097D0AC */ .word	0x00295B8C
/* 000456 0x8097D0B0 */ .word	0x5B5B0000
/* 000457 0x8097D0B4 */ .word	0x00000000
/* 000458 0x8097D0B8 */ .word	0x00000000
/* 000459 0x8097D0BC */ .word	0x00000000
/* 000460 0x8097D0C0 */ .word	0x00455C39
/* 000461 0x8097D0C4 */ .word	0x0F000000
/* 000462 0x8097D0C8 */ .word	0x00000000
/* 000463 0x8097D0CC */ .word	0x0000A1FF
/* 000464 0x8097D0D0 */ .word	0x5B000000
/* 000465 0x8097D0D4 */ .word	0x00000000
/* 000466 0x8097D0D8 */ .word	0x00000000
/* 000467 0x8097D0DC */ .word	0x00000000
/* 000468 0x8097D0E0 */ .word	0x005B5B00
/* 000469 0x8097D0E4 */ .word	0x00000000
/* 000470 0x8097D0E8 */ .word	0x00000000
/* 000471 0x8097D0EC */ .word	0x005B311C
/* 000472 0x8097D0F0 */ .word	0x00000000
/* 000473 0x8097D0F4 */ .word	0x00000000
/* 000474 0x8097D0F8 */ .word	0x00000000
/* 000475 0x8097D0FC */ .word	0x00000000
/* 000476 0x8097D100 */ .word	0x5BB60000
/* 000477 0x8097D104 */ .word	0x00000000
/* 000478 0x8097D108 */ .word	0x00000000
/* 000479 0x8097D10C */ .word	0x5BB63100
/* 000480 0x8097D110 */ .word	0x00000000
/* 000481 0x8097D114 */ .word	0x00000000
/* 000482 0x8097D118 */ .word	0x00000000
/* 000483 0x8097D11C */ .word	0x00000000
/* 000484 0x8097D120 */ .word	0xFFB60000
/* 000485 0x8097D124 */ .word	0x00000000
/* 000486 0x8097D128 */ .word	0x00000046
/* 000487 0x8097D12C */ .word	0xEA310000
/* 000488 0x8097D130 */ .word	0x00000000
/* 000489 0x8097D134 */ .word	0x00000000
/* 000490 0x8097D138 */ .word	0x00000000
/* 000491 0x8097D13C */ .word	0x00000000
/* 000492 0x8097D140 */ .word	0x0072B646
/* 000493 0x8097D144 */ .word	0x00000000
/* 000494 0x8097D148 */ .word	0x0000B6A1
/* 000495 0x8097D14C */ .word	0x81000000
/* 000496 0x8097D150 */ .word	0x00000000
/* 000497 0x8097D154 */ .word	0x00000000
/* 000498 0x8097D158 */ .word	0x00000000
/* 000499 0x8097D15C */ .word	0x000C0000
/* 000500 0x8097D160 */ .word	0x00172E19
/* 000501 0x8097D164 */ .word	0xBDAB5D41
/* 000502 0x8097D168 */ .word	0x366BEAEA
/* 000503 0x8097D16C */ .word	0x81000000
/* 000504 0x8097D170 */ .word	0x00000000
/* 000505 0x8097D174 */ .word	0x00000000
/* 000506 0x8097D178 */ .word	0x00000000
/* 000507 0x8097D17C */ .word	0x06000000
/* 000508 0x8097D180 */ .word	0x00000074
/* 000509 0x8097D184 */ .word	0xFFFF0500
/* 000510 0x8097D188 */ .word	0x0A2342B6
/* 000511 0x8097D18C */ .word	0xFF000000
/* 000512 0x8097D190 */ .word	0x00000000
/* 000513 0x8097D194 */ .word	0x00000000
/* 000514 0x8097D198 */ .word	0x00000000
/* 000515 0x8097D19C */ .word	0x00000000
/* 000516 0x8097D1A0 */ .word	0x00000000
/* 000517 0x8097D1A4 */ .word	0x005B0000
/* 000518 0x8097D1A8 */ .word	0x03030100
/* 000519 0x8097D1AC */ .word	0x00FF0700
/* 000520 0x8097D1B0 */ .word	0x00000000
/* 000521 0x8097D1B4 */ .word	0x00000000
/* 000522 0x8097D1B8 */ .word	0x00000000
/* 000523 0x8097D1BC */ .word	0x00000000
/* 000524 0x8097D1C0 */ .word	0x00000000
/* 000525 0x8097D1C4 */ .word	0x00020503
/* 000526 0x8097D1C8 */ .word	0x00000000
/* 000527 0x8097D1CC */ .word	0x00466200
/* 000528 0x8097D1D0 */ .word	0x00000000
/* 000529 0x8097D1D4 */ .word	0x00000000
/* 000530 0x8097D1D8 */ .word	0x00000000
/* 000531 0x8097D1DC */ .word	0x00000000
/* 000532 0x8097D1E0 */ .word	0x00000000
/* 000533 0x8097D1E4 */ .word	0x00000000
/* 000534 0x8097D1E8 */ .word	0x00000000
/* 000535 0x8097D1EC */ .word	0x00076200
/* 000536 0x8097D1F0 */ .word	0x00000000
/* 000537 0x8097D1F4 */ .word	0x00000000
/* 000538 0x8097D1F8 */ .word	0x00000000
/* 000539 0x8097D1FC */ .word	0x00000000
/* 000540 0x8097D200 */ .word	0x00000000
/* 000541 0x8097D204 */ .word	0x00000000
/* 000542 0x8097D208 */ .word	0x00000000
/* 000543 0x8097D20C */ .word	0x00002962
/* 000544 0x8097D210 */ .word	0x00000000
/* 000545 0x8097D214 */ .word	0x00000000
/* 000546 0x8097D218 */ .word	0x00000000
/* 000547 0x8097D21C */ .word	0x00000000
/* 000548 0x8097D220 */ .word	0x00000000
/* 000549 0x8097D224 */ .word	0x00000000
/* 000550 0x8097D228 */ .word	0x00000000
/* 000551 0x8097D22C */ .word	0x00003EA1
/* 000552 0x8097D230 */ .word	0x62000000
/* 000553 0x8097D234 */ .word	0x00000000
/* 000554 0x8097D238 */ .word	0x00000000
/* 000555 0x8097D23C */ .word	0x0000002E
/* 000556 0x8097D240 */ .word	0xB6350000
/* 000557 0x8097D244 */ .word	0x00000000
/* 000558 0x8097D248 */ .word	0x00000000
/* 000559 0x8097D24C */ .word	0x000000EA
/* 000560 0x8097D250 */ .word	0x46000000
/* 000561 0x8097D254 */ .word	0x00000000
/* 000562 0x8097D258 */ .word	0x00000000
/* 000563 0x8097D25C */ .word	0x00002EFF
/* 000564 0x8097D260 */ .word	0xFF5A0000
/* 000565 0x8097D264 */ .word	0x00000000
/* 000566 0x8097D268 */ .word	0x00000000
/* 000567 0x8097D26C */ .word	0x000000FF
/* 000568 0x8097D270 */ .word	0xFF001700
/* 000569 0x8097D274 */ .word	0x00000000
/* 000570 0x8097D278 */ .word	0x00000000
/* 000571 0x8097D27C */ .word	0x01015BFF
/* 000572 0x8097D280 */ .word	0xA1A10000
/* 000573 0x8097D284 */ .word	0x00000000
/* 000574 0x8097D288 */ .word	0x00000000
/* 000575 0x8097D28C */ .word	0x00030046
/* 000576 0x8097D290 */ .word	0x97732100
/* 000577 0x8097D294 */ .word	0x00000000
/* 000578 0x8097D298 */ .word	0x00000000
/* 000579 0x8097D29C */ .word	0x040CB65E
/* 000580 0x8097D2A0 */ .word	0x4A5B4600
/* 000581 0x8097D2A4 */ .word	0x00000000
/* 000582 0x8097D2A8 */ .word	0x00000003
/* 000583 0x8097D2AC */ .word	0x0C0E8C46
/* 000584 0x8097D2B0 */ .word	0x1C035C00
/* 000585 0x8097D2B4 */ .word	0x00000000
/* 000586 0x8097D2B8 */ .word	0x00000017
/* 000587 0x8097D2BC */ .word	0x134F5B00
/* 000588 0x8097D2C0 */ .word	0x00000046
/* 000589 0x8097D2C4 */ .word	0x46000000
/* 000590 0x8097D2C8 */ .word	0x00000000
/* 000591 0x8097D2CC */ .word	0x34D20000
/* 000592 0x8097D2D0 */ .word	0x0401005B
/* 000593 0x8097D2D4 */ .word	0x00000000
/* 000594 0x8097D2D8 */ .word	0x00000000
/* 000595 0x8097D2DC */ .word	0x5BB60000
/* 000596 0x8097D2E0 */ .word	0x00000000
/* 000597 0x8097D2E4 */ .word	0x30FCB600
/* 000598 0x8097D2E8 */ .word	0x0000A1E7
/* 000599 0x8097D2EC */ .word	0x00000001
/* 000600 0x8097D2F0 */ .word	0x0100141E
/* 000601 0x8097D2F4 */ .word	0x5B000000
/* 000602 0x8097D2F8 */ .word	0x00000000
/* 000603 0x8097D2FC */ .word	0x00000000
/* 000604 0x8097D300 */ .word	0x00000000
/* 000605 0x8097D304 */ .word	0x0000A1FF
/* 000606 0x8097D308 */ .word	0x5B46FF00
/* 000607 0x8097D30C */ .word	0x00000100
/* 000608 0x8097D310 */ .word	0x00000000
/* 000609 0x8097D314 */ .word	0x00000000
/* 000610 0x8097D318 */ .word	0x00000000
/* 000611 0x8097D31C */ .word	0x00000000
/* 000612 0x8097D320 */ .word	0x00000000
/* 000613 0x8097D324 */ .word	0x000000FC
/* 000614 0x8097D328 */ .word	0xFFA13100
/* 000615 0x8097D32C */ .word	0x00000000
/* 000616 0x8097D330 */ .word	0x00000000
/* 000617 0x8097D334 */ .word	0x00000000
/* 000618 0x8097D338 */ .word	0x00000000
/* 000619 0x8097D33C */ .word	0x00000000
/* 000620 0x8097D340 */ .word	0x00000000
/* 000621 0x8097D344 */ .word	0x00000000
/* 000622 0x8097D348 */ .word	0xB6000000
/* 000623 0x8097D34C */ .word	0x00000000
/* 000624 0x8097D350 */ .word	0x00000000
/* 000625 0x8097D354 */ .word	0x00000000
/* 000626 0x8097D358 */ .word	0x00000000
/* 000627 0x8097D35C */ .word	0x00000000
/* 000628 0x8097D360 */ .word	0x00000000
/* 000629 0x8097D364 */ .word	0x00000000
/* 000630 0x8097D368 */ .word	0x00000000
/* 000631 0x8097D36C */ .word	0x00000000
/* 000632 0x8097D370 */ .word	0x00000000
/* 000633 0x8097D374 */ .word	0x00000000
/* 000634 0x8097D378 */ .word	0x00000000
/* 000635 0x8097D37C */ .word	0x00000000
/* 000636 0x8097D380 */ .word	0x00000000
/* 000637 0x8097D384 */ .word	0x00000000
/* 000638 0x8097D388 */ .word	0x00000000
/* 000639 0x8097D38C */ .word	0x00000000
/* 000640 0x8097D390 */ .word	0x00000000
/* 000641 0x8097D394 */ .word	0x00000000
/* 000642 0x8097D398 */ .word	0x00000000
/* 000643 0x8097D39C */ .word	0x00000000
glabel D_8097D3A0
/* 000644 0x8097D3A0 */ .word	0x469C4000
glabel D_8097D3A4
/* 000645 0x8097D3A4 */ .word	0x418F3333
/* 000646 0x8097D3A8 */ .word	0x00000000
/* 000647 0x8097D3AC */ .word	0x00000000
glabel effectSsFhgFlashOverlayInfo
/* 000648 0x8097D3B0 */ .word	0x00000530
/* 000649 0x8097D3B4 */ .word	0x000004E0
/* 000650 0x8097D3B8 */ .word	0x00000010
/* 000651 0x8097D3BC */ .word	0x00000000
/* 000652 0x8097D3C0 */ .word	0x00000011
glabel effectSsFhgFlashOverlayRelocations
/* 000653 0x8097D3C4 */ .word	0x45000020
/* 000654 0x8097D3C8 */ .word	0x46000024
/* 000655 0x8097D3CC */ .word	0x450000B0
/* 000656 0x8097D3D0 */ .word	0x460000C0
/* 000657 0x8097D3D4 */ .word	0x450000B4
/* 000658 0x8097D3D8 */ .word	0x460000C4
/* 000659 0x8097D3DC */ .word	0x450000FC
/* 000660 0x8097D3E0 */ .word	0x46000100
/* 000661 0x8097D3E4 */ .word	0x45000124
/* 000662 0x8097D3E8 */ .word	0x46000128
/* 000663 0x8097D3EC */ .word	0x4500033C
/* 000664 0x8097D3F0 */ .word	0x46000340
/* 000665 0x8097D3F4 */ .word	0x45000374
/* 000666 0x8097D3F8 */ .word	0x46000378
/* 000667 0x8097D3FC */ .word	0x82000004
/* 000668 0x8097D400 */ .word	0x8200007C
/* 000669 0x8097D404 */ .word	0x820000C4
/* 000670 0x8097D408 */ .word	0x00000000
glabel effectSsFhgFlashOverlayInfoOffset
/* 000671 0x8097D40C */ .word	0x00000060
