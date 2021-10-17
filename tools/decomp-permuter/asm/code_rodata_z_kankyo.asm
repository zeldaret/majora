.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel D_801DD880
/* 319344 0x801DD880 */ .word	0x03842328
/* 319345 0x801DD884 */ .word	0xD50809C4
/* 319346 0x801DD888 */ .word	0x2328DA1C
/* 319347 0x801DD88C */ .word	0x0E7422D8
/* 319348 0x801DD890 */ .word	0xDA1C1450
/* 319349 0x801DD894 */ .word	0x2468D8F0
/* 319350 0x801DD898 */ .word	0x1C8428A0
/* 319351 0x801DD89C */ .word	0xCBA81F40
/* 319352 0x801DD8A0 */ .word	0x2134D8F0
/* 319353 0x801DD8A4 */ .word	0x1F4028A0
/* 319354 0x801DD8A8 */ .word	0xDAE4E4A8
/* 319355 0x801DD8AC */ .word	0x4A384A38
/* 319356 0x801DD8B0 */ .word	0xD0584C2C
/* 319357 0x801DD8B4 */ .word	0x3A98D8F0
/* 319358 0x801DD8B8 */ .word	0x36B047E0
/* 319359 0x801DD8BC */ .word	0xD9543264
/* 319360 0x801DD8C0 */ .word	0x3E1CD8F0
/* 319361 0x801DD8C4 */ .word	0x307037DC
/* 319362 0x801DD8C8 */ .word	0xD8F01F40
/* 319363 0x801DD8CC */ .word	0x5208D760
/* 319364 0x801DD8D0 */ .word	0x183827D8
/* 319365 0x801DD8D4 */ .word	0x00004E20
/* 319366 0x801DD8D8 */ .word	0x4A38076C
/* 319367 0x801DD8DC */ .word	0x2328DCD8
glabel D_801DD8E0
/* 319368 0x801DD8E0 */ .word	0x41A4FFFF
/* 319369 0x801DD8E4 */ .word	0x83A4E6FF
/* 319370 0x801DD8E8 */ .word	0x62CDFFFF
/* 319371 0x801DD8EC */ .word	0x5252FFFF
/* 319372 0x801DD8F0 */ .word	0x7BA4A4FF
/* 319373 0x801DD8F4 */ .word	0x62CDFFFF
/* 319374 0x801DD8F8 */ .word	0x62A4E6FF
/* 319375 0x801DD8FC */ .word	0xFF5A00FF
glabel D_801DD900
/* 319376 0x801DD900 */ .word	0x405070FF
/* 319377 0x801DD904 */ .word	0x606080FF
/* 319378 0x801DD908 */ .word	0x807090FF
/* 319379 0x801DD90C */ .word	0xA080A0FF
/* 319380 0x801DD910 */ .word	0xC090A8FF
/* 319381 0x801DD914 */ .word	0xE0A0B0FF
/* 319382 0x801DD918 */ .word	0xE0A0B0FF
/* 319383 0x801DD91C */ .word	0x686888FF
/* 319384 0x801DD920 */ .word	0x887898FF
/* 319385 0x801DD924 */ .word	0xA888A8FF
/* 319386 0x801DD928 */ .word	0xC898B8FF
/* 319387 0x801DD92C */ .word	0xE8A8B8FF
/* 319388 0x801DD930 */ .word	0xE0B0B8FF
/* 319389 0x801DD934 */ .word	0xF0C0C0FF
/* 319390 0x801DD938 */ .word	0xE8B8C0FF
/* 319391 0x801DD93C */ .word	0xF8C8C0FF
glabel D_801DD940
/* 319392 0x801DD940 */ .word	0x38D1B717
glabel D_801DD944
/* 319393 0x801DD944 */ .word	0x3C23D70A
glabel D_801DD948
/* 319394 0x801DD948 */ .word	0x3C23D70A
glabel D_801DD94C
/* 319395 0x801DD94C */ .word	0x3F4CCCCD
glabel D_801DD950
/* 319396 0x801DD950 */ .word	0x3F4CCCCD
glabel D_801DD954
/* 319397 0x801DD954 */ .word	0x3F4CCCCD
glabel D_801DD958
/* 319398 0x801DD958 */ .word	0x3A83126F
glabel D_801DD95C
/* 319399 0x801DD95C */ .word	0x441D8000
glabel D_801DD960
/* 319400 0x801DD960 */ .word	0x38D1B717
glabel D_801DD964
/* 319401 0x801DD964 */ .word	0x3DCCCCCD
glabel D_801DD968
/* 319402 0x801DD968 */ .word	0x3DCCCCCD
glabel D_801DD96C
/* 319403 0x801DD96C */ .word	0x4BE4E1C0
glabel D_801DD970
/* 319404 0x801DD970 */ .word	0x3E99999A
glabel D_801DD974
/* 319405 0x801DD974 */ .word	0x3F333333
glabel D_801DD978
/* 319406 0x801DD978 */ .word	0x3D4CCCCD
glabel D_801DD97C
/* 319407 0x801DD97C */ .word	0x3CA3D70A
glabel D_801DD980
/* 319408 0x801DD980 */ .word	0x3DCCCCCD
glabel D_801DD984
/* 319409 0x801DD984 */ .word	0x4039999A
glabel D_801DD988
/* 319410 0x801DD988 */ .word	0x459C4000
glabel D_801DD98C
/* 319411 0x801DD98C */ .word	0x46147000
glabel D_801DD990
/* 319412 0x801DD990 */ .word	0x3C8EFA35
glabel jtbl_D_801DD994
/* 319413 0x801DD994 */ .word	L800FBBBC
/* 319414 0x801DD998 */ .word	L800FBA14
/* 319415 0x801DD99C */ .word	L800FBA5C
/* 319416 0x801DD9A0 */ .word	L800FBA80
/* 319417 0x801DD9A4 */ .word	L800FBAD8
/* 319418 0x801DD9A8 */ .word	L800FBAFC
/* 319419 0x801DD9AC */ .word	L800FBB48
/* 319420 0x801DD9B0 */ .word	L800FBB74
/* 319421 0x801DD9B4 */ .word	L800FBBBC
glabel jtbl_D_801DD9B8
/* 319422 0x801DD9B8 */ .word	L800FC6DC
/* 319423 0x801DD9BC */ .word	L800FC6F8
/* 319424 0x801DD9C0 */ .word	L800FC6B0
/* 319425 0x801DD9C4 */ .word	L800FC75C
/* 319426 0x801DD9C8 */ .word	L800FC6F8
/* 319427 0x801DD9CC */ .word	L800FC788
/* 319428 0x801DD9D0 */ .word	L800FC7A8
/* 319429 0x801DD9D4 */ .word	L800FC788
/* 319430 0x801DD9D8 */ .word	L800FC7A8
/* 319431 0x801DD9DC */ .word	L800FC7D4
/* 319432 0x801DD9E0 */ .word	L800FC7FC
/* 319433 0x801DD9E4 */ .word	L800FC828
/* 319434 0x801DD9E8 */ .word	L800FC840
glabel D_801DD9EC
/* 319435 0x801DD9EC */ .word	0x3E2AAAAB
glabel D_801DD9F0
/* 319436 0x801DD9F0 */ .word	0x3FEAAAAB
glabel D_801DD9F4
/* 319437 0x801DD9F4 */ .word	0x393FFA00
glabel D_801DD9F8
/* 319438 0x801DD9F8 */ .word	0x39BFFA00
glabel D_801DD9FC
/* 319439 0x801DD9FC */ .word	0x3F99999A
glabel jtbl_D_801DDA00
/* 319440 0x801DDA00 */ .word	L800FE55C
/* 319441 0x801DDA04 */ .word	L800FE584
/* 319442 0x801DDA08 */ .word	L800FE584
/* 319443 0x801DDA0C */ .word	L800FE55C
/* 319444 0x801DDA10 */ .word	L800FE584
/* 319445 0x801DDA14 */ .word	L800FE584
/* 319446 0x801DDA18 */ .word	L800FE584
/* 319447 0x801DDA1C */ .word	L800FE584
/* 319448 0x801DDA20 */ .word	L800FE584
/* 319449 0x801DDA24 */ .word	L800FE584
/* 319450 0x801DDA28 */ .word	L800FE584
/* 319451 0x801DDA2C */ .word	L800FE584
/* 319452 0x801DDA30 */ .word	L800FE584
/* 319453 0x801DDA34 */ .word	L800FE570
/* 319454 0x801DDA38 */ .word	L800FE55C
/* 319455 0x801DDA3C */ .word	L800FE55C
/* 319456 0x801DDA40 */ .word	L800FE55C
/* 319457 0x801DDA44 */ .word	L800FE584
/* 319458 0x801DDA48 */ .word	L800FE584
/* 319459 0x801DDA4C */ .word	L800FE584
/* 319460 0x801DDA50 */ .word	L800FE584
/* 319461 0x801DDA54 */ .word	L800FE584
/* 319462 0x801DDA58 */ .word	L800FE584
/* 319463 0x801DDA5C */ .word	L800FE584
/* 319464 0x801DDA60 */ .word	L800FE584
/* 319465 0x801DDA64 */ .word	L800FE584
/* 319466 0x801DDA68 */ .word	L800FE584
/* 319467 0x801DDA6C */ .word	L800FE584
/* 319468 0x801DDA70 */ .word	L800FE584
/* 319469 0x801DDA74 */ .word	L800FE584
/* 319470 0x801DDA78 */ .word	L800FE55C
glabel D_801DDA7C
/* 319471 0x801DDA7C */ .word	0x42360B61
