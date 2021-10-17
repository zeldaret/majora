.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel D_8096E910
/* 003456 0x8096E910 */ .word	0x00000000
glabel D_8096E914
/* 003457 0x8096E914 */ .word	0x001E0000
glabel D_8096E918
/* 003458 0x8096E918 */ .word	0x00000000
glabel D_8096E91C
/* 003459 0x8096E91C */ .word	0x00000000
glabel D_8096E920
/* 003460 0x8096E920 */ .word	0x00140000
glabel En_Mag_InitVars
/* 003461 0x8096E924 */ .word	0x00C50600
/* 003462 0x8096E928 */ .word	0x00000030
/* 003463 0x8096E92C */ .word	0x01150000
/* 003464 0x8096E930 */ .word	0x00011F78
/* 003465 0x8096E934 */ .word	EnMag_Init
/* 003466 0x8096E938 */ .word	EnMag_Destroy
/* 003467 0x8096E93C */ .word	EnMag_Update
/* 003468 0x8096E940 */ .word	EnMag_Draw
glabel D_8096E944
/* 003469 0x8096E944 */ .word	0x009B00FF
glabel D_8096E948
/* 003470 0x8096E948 */ .word	0x00FF009B
glabel D_8096E94C
/* 003471 0x8096E94C */ .word	0x003700FF
glabel D_8096E950
/* 003472 0x8096E950 */ .word	0x00FF0000
glabel D_8096E954
/* 003473 0x8096E954 */ .word	0x00FF009B
glabel D_8096E958
/* 003474 0x8096E958 */ .word	0x00FF009B
glabel D_8096E95C
/* 003475 0x8096E95C */ .word	0x00FF0000
glabel D_8096E960
/* 003476 0x8096E960 */ .word	0x0000009B
glabel D_8096E964
/* 003477 0x8096E964 */ .word	0x191B0E1C
/* 003478 0x8096E968 */ .word	0x1C1C1D0A
/* 003479 0x8096E96C */ .word	0x1B1D0000
glabel D_8096E970
/* 003480 0x8096E970 */ .word	0x0600CF40
/* 003481 0x8096E974 */ .word	0x0600D740
/* 003482 0x8096E978 */ .word	0x0600EF40
/* 003483 0x8096E97C */ .word	0x0600DF40
/* 003484 0x8096E980 */ .word	0x0600E740
/* 003485 0x8096E984 */ .word	0x0600F740
glabel D_8096E988
/* 003486 0x8096E988 */ .word	0x06009F40
/* 003487 0x8096E98C */ .word	0x0600A740
/* 003488 0x8096E990 */ .word	0x0600BF40
/* 003489 0x8096E994 */ .word	0x0600AF40
/* 003490 0x8096E998 */ .word	0x0600B740
/* 003491 0x8096E99C */ .word	0x0600C740
glabel D_8096E9A0
/* 003492 0x8096E9A0 */ .word	0x0600FF40
/* 003493 0x8096E9A4 */ .word	0x06010340
/* 003494 0x8096E9A8 */ .word	0x06010340
/* 003495 0x8096E9AC */ .word	0x06010740
/* 003496 0x8096E9B0 */ .word	0x06010B40
/* 003497 0x8096E9B4 */ .word	0x06010B40
glabel D_8096E9B8
/* 003498 0x8096E9B8 */ .word	0xFFFF0001
/* 003499 0x8096E9BC */ .word	0x0001FFFF
/* 003500 0x8096E9C0 */ .word	0x00010001
glabel D_8096E9C4
/* 003501 0x8096E9C4 */ .word	0xFFFEFFFE
/* 003502 0x8096E9C8 */ .word	0xFFFE0002
/* 003503 0x8096E9CC */ .word	0x00020002
glabel D_8096E9D0
/* 003504 0x8096E9D0 */ .word	0x00000000
glabel D_8096E9D4
/* 003505 0x8096E9D4 */ .word	0x00FF0000
/* 003506 0x8096E9D8 */ .word	0x00000000
/* 003507 0x8096E9DC */ .word	0x00000000
