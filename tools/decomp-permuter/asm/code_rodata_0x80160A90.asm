.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel jtbl_D_801DF900
/* 321424 0x801DF900 */ .word	L80161260
/* 321425 0x801DF904 */ .word	L80161284
/* 321426 0x801DF908 */ .word	L80161290
/* 321427 0x801DF90C */ .word	L8016129C
/* 321428 0x801DF910 */ .word	L80161278
/* 321429 0x801DF914 */ .word	L8016126C
/* 321430 0x801DF918 */ .word	L801612A8
/* 321431 0x801DF91C */ .word	L80161254
glabel jtbl_D_801DF920
/* 321432 0x801DF920 */ .word	L80161484
/* 321433 0x801DF924 */ .word	L8016141C
/* 321434 0x801DF928 */ .word	L80161450
/* 321435 0x801DF92C */ .word	L801614B8
/* 321436 0x801DF930 */ .word	L801614EC
glabel jtbl_D_801DF934
/* 321437 0x801DF934 */ .word	L801615F4
/* 321438 0x801DF938 */ .word	L80161594
/* 321439 0x801DF93C */ .word	L801615B8
/* 321440 0x801DF940 */ .word	L80161618
/* 321441 0x801DF944 */ .word	L8016163C
glabel jtbl_D_801DF948
/* 321442 0x801DF948 */ .word	L8016176C
/* 321443 0x801DF94C */ .word	L80161704
/* 321444 0x801DF950 */ .word	L80161738
/* 321445 0x801DF954 */ .word	L801617A0
/* 321446 0x801DF958 */ .word	L801617D4
glabel jtbl_D_801DF95C
/* 321447 0x801DF95C */ .word	L801618DC
/* 321448 0x801DF960 */ .word	L8016187C
/* 321449 0x801DF964 */ .word	L801618A0
/* 321450 0x801DF968 */ .word	L80161900
/* 321451 0x801DF96C */ .word	L80161924
glabel D_801DF970
/* 321452 0x801DF970 */ .word	0x43360AAB
glabel D_801DF974
/* 321453 0x801DF974 */ .word	0x43360AAB
glabel D_801DF978
/* 321454 0x801DF978 */ .word	0x3C8EFA35
glabel D_801DF97C
/* 321455 0x801DF97C */ .word	0x3C8EFA35
glabel D_801DF980
/* 321456 0x801DF980 */ .word	0x43360AAB
glabel D_801DF984
/* 321457 0x801DF984 */ .word	0x43360AAB
glabel D_801DF988
/* 321458 0x801DF988 */ .word	0x43360AAB
glabel D_801DF98C
/* 321459 0x801DF98C */ .word	0x3E2AAAAB
glabel D_801DF990
/* 321460 0x801DF990 */ .word	0x3F2AAAAB
glabel D_801DF994
/* 321461 0x801DF994 */ .word	0x43360AAB
glabel D_801DF998
/* 321462 0x801DF998 */ .word	0x3E99999A
glabel D_801DF99C
/* 321463 0x801DF99C */ .word	0x3F19999A
glabel D_801DF9A0
/* 321464 0x801DF9A0 */ .word	0x3F666666
glabel D_801DF9A4
/* 321465 0x801DF9A4 */ .word	0x3F666666
glabel D_801DF9A8
/* 321466 0x801DF9A8 */ .word	0x3F19999A
glabel D_801DF9AC
/* 321467 0x801DF9AC */ .word	0x3E99999A
glabel D_801DF9B0
/* 321468 0x801DF9B0 */ .word	0x3F666666
glabel D_801DF9B4
/* 321469 0x801DF9B4 */ .word	0x43360AAB
/* 321470 0x801DF9B8 */ .word	0x00000000
/* 321471 0x801DF9BC */ .word	0x00000000
