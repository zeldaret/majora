.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel D_80AC5630
/* 000368 0x80AC5630 */ .word	0xE7000000
/* 000369 0x80AC5634 */ .word	0x00000000
/* 000370 0x80AC5638 */ .word	0xD7000002
/* 000371 0x80AC563C */ .word	0x80008000
/* 000372 0x80AC5640 */ .word	0xD9C0F9FA
/* 000373 0x80AC5644 */ .word	0x00000000
/* 000374 0x80AC5648 */ .word	0xFCFFFFFF
/* 000375 0x80AC564C */ .word	0xFFFCF87C
/* 000376 0x80AC5650 */ .word	0xEF882C30
/* 000377 0x80AC5654 */ .word	0x00552048
/* 000378 0x80AC5658 */ .word	0xDF000000
/* 000379 0x80AC565C */ .word	0x00000000
glabel D_80AC5660
/* 000380 0x80AC5660 */ .word	0x00000241
/* 000381 0x80AC5664 */ .word	0x00000000
/* 000382 0x80AC5668 */ .word	0x00000000
/* 000383 0x80AC566C */ .word	0xFFFFFFFF
/* 000384 0x80AC5670 */ .word	0x03E8FB7E
/* 000385 0x80AC5674 */ .word	0x00000000
/* 000386 0x80AC5678 */ .word	0x00000000
/* 000387 0x80AC567C */ .word	0xFFFFFFFF
/* 000388 0x80AC5680 */ .word	0xFC18FB7E
/* 000389 0x80AC5684 */ .word	0x00000000
/* 000390 0x80AC5688 */ .word	0x00000000
/* 000391 0x80AC568C */ .word	0xFFFFFFFF
/* 000392 0x80AC5690 */ .word	0x0000FB7E
/* 000393 0x80AC5694 */ .word	0x00000000
/* 000394 0x80AC5698 */ .word	0x00000000
/* 000395 0x80AC569C */ .word	0xFFFFFFFF
/* 000396 0x80AC56A0 */ .word	0x01F4FEE0
/* 000397 0x80AC56A4 */ .word	0x00000000
/* 000398 0x80AC56A8 */ .word	0x00000000
/* 000399 0x80AC56AC */ .word	0xFFFFFFFF
/* 000400 0x80AC56B0 */ .word	0xFE0CFEE0
/* 000401 0x80AC56B4 */ .word	0x00000000
/* 000402 0x80AC56B8 */ .word	0x00000000
/* 000403 0x80AC56BC */ .word	0xFFFFFFFF
/* 000404 0x80AC56C0 */ .word	0x83007D00
/* 000405 0x80AC56C4 */ .word	0x00000000
/* 000406 0x80AC56C8 */ .word	0x00000000
/* 000407 0x80AC56CC */ .word	0xFFFFFFFF
/* 000408 0x80AC56D0 */ .word	0x7D007D00
/* 000409 0x80AC56D4 */ .word	0x00000000
/* 000410 0x80AC56D8 */ .word	0x00000000
/* 000411 0x80AC56DC */ .word	0xFFFFFFFF
/* 000412 0x80AC56E0 */ .word	0x7D008300
/* 000413 0x80AC56E4 */ .word	0x00000000
/* 000414 0x80AC56E8 */ .word	0x00000000
/* 000415 0x80AC56EC */ .word	0xFFFFFFFF
/* 000416 0x80AC56F0 */ .word	0x83008300
/* 000417 0x80AC56F4 */ .word	0x00000000
/* 000418 0x80AC56F8 */ .word	0x00000000
/* 000419 0x80AC56FC */ .word	0xFFFFFFFF
glabel D_80AC5700
/* 000420 0x80AC5700 */ .word	func_80AC50A8
/* 000421 0x80AC5704 */ .word	func_80AC5148
/* 000422 0x80AC5708 */ .word	func_80AC5154
/* 000423 0x80AC570C */ .word	func_80AC528C
/* 000424 0x80AC5710 */ .word	func_80AC5070
/* 000425 0x80AC5714 */ .word	func_80AC5274
/* 000426 0x80AC5718 */ .word	func_80AC5268
/* 000427 0x80AC571C */ .word	0x00000000
/* 000428 0x80AC5720 */ .word	func_80AC559C
/* 000429 0x80AC5724 */ .word	0x00000000
/* 000430 0x80AC5728 */ .word	0x00000000
/* 000431 0x80AC572C */ .word	0x00000000
glabel D_80AC5730
/* 000432 0x80AC5730 */ .word	0x3CF5C28F
glabel D_80AC5734
/* 000433 0x80AC5734 */ .word	0x3C75C28F
glabel D_80AC5738
/* 000434 0x80AC5738 */ .word	0x3CF5C28F
glabel D_80AC573C
/* 000435 0x80AC573C */ .word	0x3CF5C28F
/* 000436 0x80AC5740 */ .word	0x000005C0
/* 000437 0x80AC5744 */ .word	0x00000100
/* 000438 0x80AC5748 */ .word	0x00000010
/* 000439 0x80AC574C */ .word	0x00000000
/* 000440 0x80AC5750 */ .word	0x00000015
/* 000441 0x80AC5754 */ .word	0x45000024
/* 000442 0x80AC5758 */ .word	0x46000028
/* 000443 0x80AC575C */ .word	0x450000A8
/* 000444 0x80AC5760 */ .word	0x460000B0
/* 000445 0x80AC5764 */ .word	0x450000EC
/* 000446 0x80AC5768 */ .word	0x460000F0
/* 000447 0x80AC576C */ .word	0x450002FC
/* 000448 0x80AC5770 */ .word	0x46000300
/* 000449 0x80AC5774 */ .word	0x450003BC
/* 000450 0x80AC5778 */ .word	0x460003C0
/* 000451 0x80AC577C */ .word	0x440003D8
/* 000452 0x80AC5780 */ .word	0x45000540
/* 000453 0x80AC5784 */ .word	0x46000544
/* 000454 0x80AC5788 */ .word	0x820000D0
/* 000455 0x80AC578C */ .word	0x820000D4
/* 000456 0x80AC5790 */ .word	0x820000D8
/* 000457 0x80AC5794 */ .word	0x820000DC
/* 000458 0x80AC5798 */ .word	0x820000E0
/* 000459 0x80AC579C */ .word	0x820000E4
/* 000460 0x80AC57A0 */ .word	0x820000E8
/* 000461 0x80AC57A4 */ .word	0x820000F0
/* 000462 0x80AC57A8 */ .word	0x00000000
/* 000463 0x80AC57AC */ .word	0x00000070
