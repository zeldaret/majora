.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel D_808E3DE0
/* 001528 0x808E3DE0 */ .word	0x443D8000
glabel D_808E3DE4
/* 001529 0x808E3DE4 */ .word	0xC46AC000
glabel D_808E3DE8
/* 001530 0x808E3DE8 */ .word	0xC4D34000
glabel D_808E3DEC
/* 001531 0x808E3DEC */ .word	0x446A8000
glabel D_808E3DF0
/* 001532 0x808E3DF0 */ .word	0x44664000
glabel D_808E3DF4
/* 001533 0x808E3DF4 */ .word	0x38000100
glabel D_808E3DF8
/* 001534 0x808E3DF8 */ .word	0x3FA33333
glabel D_808E3DFC
/* 001535 0x808E3DFC */ .word	0x3C23D70A
glabel mirRayOverlayInfo
/* 001536 0x808E3E00 */ .word	0x000015D0
/* 001537 0x808E3E04 */ .word	0x00000200
/* 001538 0x808E3E08 */ .word	0x00000030
/* 001539 0x808E3E0C */ .word	0x00000000
/* 001540 0x808E3E10 */ .word	0x00000036
glabel mirRayOverlayRelocations
/* 001541 0x808E3E14 */ .word	0x4500000C
/* 001542 0x808E3E18 */ .word	0x46000010
/* 001543 0x808E3E1C */ .word	0x450000F4
/* 001544 0x808E3E20 */ .word	0x46000110
/* 001545 0x808E3E24 */ .word	0x4400013C
/* 001546 0x808E3E28 */ .word	0x4500028C
/* 001547 0x808E3E2C */ .word	0x46000290
/* 001548 0x808E3E30 */ .word	0x45000294
/* 001549 0x808E3E34 */ .word	0x460002A0
/* 001550 0x808E3E38 */ .word	0x450003D4
/* 001551 0x808E3E3C */ .word	0x460003D8
/* 001552 0x808E3E40 */ .word	0x450003E0
/* 001553 0x808E3E44 */ .word	0x460003E8
/* 001554 0x808E3E48 */ .word	0x450003EC
/* 001555 0x808E3E4C */ .word	0x460003F8
/* 001556 0x808E3E50 */ .word	0x450003FC
/* 001557 0x808E3E54 */ .word	0x4600040C
/* 001558 0x808E3E58 */ .word	0x45000410
/* 001559 0x808E3E5C */ .word	0x4600041C
/* 001560 0x808E3E60 */ .word	0x45000464
/* 001561 0x808E3E64 */ .word	0x46000474
/* 001562 0x808E3E68 */ .word	0x44000494
/* 001563 0x808E3E6C */ .word	0x450004AC
/* 001564 0x808E3E70 */ .word	0x460004B0
/* 001565 0x808E3E74 */ .word	0x45000530
/* 001566 0x808E3E78 */ .word	0x46000544
/* 001567 0x808E3E7C */ .word	0x45000598
/* 001568 0x808E3E80 */ .word	0x4600059C
/* 001569 0x808E3E84 */ .word	0x450005B4
/* 001570 0x808E3E88 */ .word	0x460005C0
/* 001571 0x808E3E8C */ .word	0x440005D8
/* 001572 0x808E3E90 */ .word	0x44000628
/* 001573 0x808E3E94 */ .word	0x440006B4
/* 001574 0x808E3E98 */ .word	0x45000728
/* 001575 0x808E3E9C */ .word	0x46000734
/* 001576 0x808E3EA0 */ .word	0x45000CA0
/* 001577 0x808E3EA4 */ .word	0x46000CA4
/* 001578 0x808E3EA8 */ .word	0x45000E30
/* 001579 0x808E3EAC */ .word	0x46000E34
/* 001580 0x808E3EB0 */ .word	0x450010D8
/* 001581 0x808E3EB4 */ .word	0x460010DC
/* 001582 0x808E3EB8 */ .word	0x44001110
/* 001583 0x808E3EBC */ .word	0x440011FC
/* 001584 0x808E3EC0 */ .word	0x44001204
/* 001585 0x808E3EC4 */ .word	0x44001214
/* 001586 0x808E3EC8 */ .word	0x45001268
/* 001587 0x808E3ECC */ .word	0x4600126C
/* 001588 0x808E3ED0 */ .word	0x45001358
/* 001589 0x808E3ED4 */ .word	0x4600135C
/* 001590 0x808E3ED8 */ .word	0x82000010
/* 001591 0x808E3EDC */ .word	0x82000014
/* 001592 0x808E3EE0 */ .word	0x82000018
/* 001593 0x808E3EE4 */ .word	0x8200001C
/* 001594 0x808E3EE8 */ .word	0x820000A4
glabel mirRayOverlayInfoOffset
/* 001595 0x808E3EEC */ .word	0x000000F0
