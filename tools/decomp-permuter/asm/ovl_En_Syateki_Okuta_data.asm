.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel En_Syateki_Okuta_InitVars
/* 001368 0x80A37550 */ .word	0x014F0500
/* 001369 0x80A37554 */ .word	0x08000030
/* 001370 0x80A37558 */ .word	0x00050000
/* 001371 0x80A3755C */ .word	0x000002AC
/* 001372 0x80A37560 */ .word	EnSyatekiOkuta_Init
/* 001373 0x80A37564 */ .word	EnSyatekiOkuta_Destroy
/* 001374 0x80A37568 */ .word	EnSyatekiOkuta_Update
/* 001375 0x80A3756C */ .word	EnSyatekiOkuta_Draw
glabel D_80A37570
/* 001376 0x80A37570 */ .word	0x03000939
/* 001377 0x80A37574 */ .word	0x10010000
/* 001378 0x80A37578 */ .word	0x01000000
/* 001379 0x80A3757C */ .word	0x00000000
/* 001380 0x80A37580 */ .word	0x00000000
/* 001381 0x80A37584 */ .word	0xF7CFFFFF
/* 001382 0x80A37588 */ .word	0x00000000
/* 001383 0x80A3758C */ .word	0x00010100
/* 001384 0x80A37590 */ .word	0x00140028
/* 001385 0x80A37594 */ .word	0xFFE20000
/* 001386 0x80A37598 */ .word	0x00000000
glabel D_80A3759C
/* 001387 0x80A3759C */ .word	0x0600044C
/* 001388 0x80A375A0 */ .word	0x3F800000
/* 001389 0x80A375A4 */ .word	0x00000000
/* 001390 0x80A375A8 */ .word	0x00000000
/* 001391 0x80A375AC */ .word	0x02000000
/* 001392 0x80A375B0 */ .word	0xBF800000
/* 001393 0x80A375B4 */ .word	0x06003958
/* 001394 0x80A375B8 */ .word	0x3F800000
/* 001395 0x80A375BC */ .word	0x00000000
/* 001396 0x80A375C0 */ .word	0x00000000
/* 001397 0x80A375C4 */ .word	0x02000000
/* 001398 0x80A375C8 */ .word	0xBF800000
/* 001399 0x80A375CC */ .word	0x06003B24
/* 001400 0x80A375D0 */ .word	0x3F800000
/* 001401 0x80A375D4 */ .word	0x00000000
/* 001402 0x80A375D8 */ .word	0x00000000
/* 001403 0x80A375DC */ .word	0x02000000
/* 001404 0x80A375E0 */ .word	0xBF800000
/* 001405 0x80A375E4 */ .word	0x06003EE4
/* 001406 0x80A375E8 */ .word	0x3F800000
/* 001407 0x80A375EC */ .word	0x00000000
/* 001408 0x80A375F0 */ .word	0x00000000
/* 001409 0x80A375F4 */ .word	0x00000000
/* 001410 0x80A375F8 */ .word	0xBF800000
/* 001411 0x80A375FC */ .word	0x0600466C
/* 001412 0x80A37600 */ .word	0x3F800000
/* 001413 0x80A37604 */ .word	0x00000000
/* 001414 0x80A37608 */ .word	0x00000000
/* 001415 0x80A3760C */ .word	0x02000000
/* 001416 0x80A37610 */ .word	0xBF800000
/* 001417 0x80A37614 */ .word	0x06004204
/* 001418 0x80A37618 */ .word	0x3F800000
/* 001419 0x80A3761C */ .word	0x00000000
/* 001420 0x80A37620 */ .word	0x00000000
/* 001421 0x80A37624 */ .word	0x02000000
/* 001422 0x80A37628 */ .word	0xBF800000
/* 001423 0x80A3762C */ .word	0x00000000
glabel D_80A37630
/* 001424 0x80A37630 */ .word	0xE7000000
/* 001425 0x80A37634 */ .word	0x00000000
/* 001426 0x80A37638 */ .word	0xFA000000
/* 001427 0x80A3763C */ .word	0x00C89BFF
/* 001428 0x80A37640 */ .word	0xDF000000
/* 001429 0x80A37644 */ .word	0x00000000
glabel D_80A37648
/* 001430 0x80A37648 */ .word	0x00000000
/* 001431 0x80A3764C */ .word	0x00008F4F
/* 001432 0x80A37650 */ .word	0x00000000
/* 001433 0x80A37654 */ .word	0x00000000
/* 001434 0x80A37658 */ .word	0x00000000
/* 001435 0x80A3765C */ .word	0x00000000
/* 001436 0x80A37660 */ .word	0x8F4F0000
/* 001437 0x80A37664 */ .word	0x00000000
/* 001438 0x80A37668 */ .word	0x00000000
/* 001439 0x80A3766C */ .word	0x8F4FFFFF
/* 001440 0x80A37670 */ .word	0x8F4F0000
/* 001441 0x80A37674 */ .word	0x00000000
/* 001442 0x80A37678 */ .word	0x00000000
/* 001443 0x80A3767C */ .word	0x00008F4F
/* 001444 0x80A37680 */ .word	0xFFFF8F4F
/* 001445 0x80A37684 */ .word	0x00000000
/* 001446 0x80A37688 */ .word	0x00008F4F
/* 001447 0x80A3768C */ .word	0xFFFFFFFF
/* 001448 0x80A37690 */ .word	0xFFFF8F4F
/* 001449 0x80A37694 */ .word	0x00000000
/* 001450 0x80A37698 */ .word	0x00000000
/* 001451 0x80A3769C */ .word	0x8F4FFFFF
/* 001452 0x80A376A0 */ .word	0xFFFFFFFF
/* 001453 0x80A376A4 */ .word	0x8F4F0000
/* 001454 0x80A376A8 */ .word	0x8F4FFFFF
/* 001455 0x80A376AC */ .word	0xFFFFFFFF
/* 001456 0x80A376B0 */ .word	0xFFFFFFFF
/* 001457 0x80A376B4 */ .word	0x8F4F0000
/* 001458 0x80A376B8 */ .word	0x00008F4F
/* 001459 0x80A376BC */ .word	0xFFFFFFFF
/* 001460 0x80A376C0 */ .word	0xFFFFFFFF
/* 001461 0x80A376C4 */ .word	0xFFFF8F4F
/* 001462 0x80A376C8 */ .word	0x00008F4F
/* 001463 0x80A376CC */ .word	0xFFFFFFFF
/* 001464 0x80A376D0 */ .word	0xFFFFFFFF
/* 001465 0x80A376D4 */ .word	0xFFFF8F4F
/* 001466 0x80A376D8 */ .word	0x8F4FFFFF
/* 001467 0x80A376DC */ .word	0xFFFFFFFF
/* 001468 0x80A376E0 */ .word	0xFFFFFFFF
/* 001469 0x80A376E4 */ .word	0x8F4F0000
/* 001470 0x80A376E8 */ .word	0x00000000
/* 001471 0x80A376EC */ .word	0x8F4FFFFF
/* 001472 0x80A376F0 */ .word	0xFFFFFFFF
/* 001473 0x80A376F4 */ .word	0xFFFFFFFF
/* 001474 0x80A376F8 */ .word	0xFFFFFFFF
/* 001475 0x80A376FC */ .word	0xFFFFFFFF
/* 001476 0x80A37700 */ .word	0xFFFF8F4F
/* 001477 0x80A37704 */ .word	0x00000000
/* 001478 0x80A37708 */ .word	0x00000000
/* 001479 0x80A3770C */ .word	0x00008F4F
/* 001480 0x80A37710 */ .word	0xFFFFFFFF
/* 001481 0x80A37714 */ .word	0xFFFFFFFF
/* 001482 0x80A37718 */ .word	0xFFFFFFFF
/* 001483 0x80A3771C */ .word	0xFFFFFFFF
/* 001484 0x80A37720 */ .word	0x8F4F0000
/* 001485 0x80A37724 */ .word	0x00000000
/* 001486 0x80A37728 */ .word	0x00000000
/* 001487 0x80A3772C */ .word	0x00000000
/* 001488 0x80A37730 */ .word	0x8F4FFFFF
/* 001489 0x80A37734 */ .word	0xFFFFFFFF
/* 001490 0x80A37738 */ .word	0xFFFFFFFF
/* 001491 0x80A3773C */ .word	0xFFFF8F4F
/* 001492 0x80A37740 */ .word	0x00000000
/* 001493 0x80A37744 */ .word	0x00000000
/* 001494 0x80A37748 */ .word	0x00000000
/* 001495 0x80A3774C */ .word	0x00000000
/* 001496 0x80A37750 */ .word	0x8F4FFFFF
/* 001497 0x80A37754 */ .word	0xFFFFFFFF
/* 001498 0x80A37758 */ .word	0xFFFFFFFF
/* 001499 0x80A3775C */ .word	0xFFFF8F4F
/* 001500 0x80A37760 */ .word	0x00000000
/* 001501 0x80A37764 */ .word	0x00000000
/* 001502 0x80A37768 */ .word	0x00000000
/* 001503 0x80A3776C */ .word	0x00008F4F
/* 001504 0x80A37770 */ .word	0xFFFFFFFF
/* 001505 0x80A37774 */ .word	0xFFFFFFFF
/* 001506 0x80A37778 */ .word	0xFFFFFFFF
/* 001507 0x80A3777C */ .word	0xFFFFFFFF
/* 001508 0x80A37780 */ .word	0x8F4F0000
/* 001509 0x80A37784 */ .word	0x00000000
/* 001510 0x80A37788 */ .word	0x00000000
/* 001511 0x80A3778C */ .word	0x8F4FFFFF
/* 001512 0x80A37790 */ .word	0xFFFFFFFF
/* 001513 0x80A37794 */ .word	0xFFFFFFFF
/* 001514 0x80A37798 */ .word	0xFFFFFFFF
/* 001515 0x80A3779C */ .word	0xFFFFFFFF
/* 001516 0x80A377A0 */ .word	0xFFFF8F4F
/* 001517 0x80A377A4 */ .word	0x00000000
/* 001518 0x80A377A8 */ .word	0x00008F4F
/* 001519 0x80A377AC */ .word	0xFFFFFFFF
/* 001520 0x80A377B0 */ .word	0xFFFFFFFF
/* 001521 0x80A377B4 */ .word	0xFFFF8F4F
/* 001522 0x80A377B8 */ .word	0x8F4FFFFF
/* 001523 0x80A377BC */ .word	0xFFFFFFFF
/* 001524 0x80A377C0 */ .word	0xFFFFFFFF
/* 001525 0x80A377C4 */ .word	0x8F4F0000
/* 001526 0x80A377C8 */ .word	0x8F4FFFFF
/* 001527 0x80A377CC */ .word	0xFFFFFFFF
/* 001528 0x80A377D0 */ .word	0xFFFFFFFF
/* 001529 0x80A377D4 */ .word	0x8F4F0000
/* 001530 0x80A377D8 */ .word	0x00008F4F
/* 001531 0x80A377DC */ .word	0xFFFFFFFF
/* 001532 0x80A377E0 */ .word	0xFFFFFFFF
/* 001533 0x80A377E4 */ .word	0xFFFF8F4F
/* 001534 0x80A377E8 */ .word	0x00008F4F
/* 001535 0x80A377EC */ .word	0xFFFFFFFF
/* 001536 0x80A377F0 */ .word	0xFFFF8F4F
/* 001537 0x80A377F4 */ .word	0x00000000
/* 001538 0x80A377F8 */ .word	0x00000000
/* 001539 0x80A377FC */ .word	0x8F4FFFFF
/* 001540 0x80A37800 */ .word	0xFFFFFFFF
/* 001541 0x80A37804 */ .word	0x8F4F0000
/* 001542 0x80A37808 */ .word	0x00000000
/* 001543 0x80A3780C */ .word	0x8F4FFFFF
/* 001544 0x80A37810 */ .word	0x8F4F0000
/* 001545 0x80A37814 */ .word	0x00000000
/* 001546 0x80A37818 */ .word	0x00000000
/* 001547 0x80A3781C */ .word	0x00008F4F
/* 001548 0x80A37820 */ .word	0xFFFF8F4F
/* 001549 0x80A37824 */ .word	0x00000000
/* 001550 0x80A37828 */ .word	0x00000000
/* 001551 0x80A3782C */ .word	0x00008F4F
/* 001552 0x80A37830 */ .word	0x00000000
/* 001553 0x80A37834 */ .word	0x00000000
/* 001554 0x80A37838 */ .word	0x00000000
/* 001555 0x80A3783C */ .word	0x00000000
/* 001556 0x80A37840 */ .word	0x8F4F0000
/* 001557 0x80A37844 */ .word	0x00000000
glabel D_80A37848
/* 001558 0x80A37848 */ .word	0x00000000
/* 001559 0x80A3784C */ .word	0x00000000
/* 001560 0x80A37850 */ .word	0x00008F4F
/* 001561 0x80A37854 */ .word	0x8F4F8F4F
/* 001562 0x80A37858 */ .word	0x8F4F8F4F
/* 001563 0x80A3785C */ .word	0x8F4F0000
/* 001564 0x80A37860 */ .word	0x00000000
/* 001565 0x80A37864 */ .word	0x00000000
/* 001566 0x80A37868 */ .word	0x00000000
/* 001567 0x80A3786C */ .word	0x00008F4F
/* 001568 0x80A37870 */ .word	0x8F4FFFFF
/* 001569 0x80A37874 */ .word	0xFFFFFFFF
/* 001570 0x80A37878 */ .word	0xFFFFFFFF
/* 001571 0x80A3787C */ .word	0xFFFF8F4F
/* 001572 0x80A37880 */ .word	0x8F4F0000
/* 001573 0x80A37884 */ .word	0x00000000
/* 001574 0x80A37888 */ .word	0x00000000
/* 001575 0x80A3788C */ .word	0x8F4FFFFF
/* 001576 0x80A37890 */ .word	0xFFFFFFFF
/* 001577 0x80A37894 */ .word	0xFFFFFFFF
/* 001578 0x80A37898 */ .word	0xFFFFFFFF
/* 001579 0x80A3789C */ .word	0xFFFFFFFF
/* 001580 0x80A378A0 */ .word	0xFFFF8F4F
/* 001581 0x80A378A4 */ .word	0x00000000
/* 001582 0x80A378A8 */ .word	0x00008F4F
/* 001583 0x80A378AC */ .word	0xFFFFFFFF
/* 001584 0x80A378B0 */ .word	0xFFFFFFFF
/* 001585 0x80A378B4 */ .word	0xFFFFFFFF
/* 001586 0x80A378B8 */ .word	0xFFFFFFFF
/* 001587 0x80A378BC */ .word	0xFFFFFFFF
/* 001588 0x80A378C0 */ .word	0xFFFFFFFF
/* 001589 0x80A378C4 */ .word	0x8F4F0000
/* 001590 0x80A378C8 */ .word	0x00008F4F
/* 001591 0x80A378CC */ .word	0xFFFFFFFF
/* 001592 0x80A378D0 */ .word	0xFFFFFFFF
/* 001593 0x80A378D4 */ .word	0x8F4F8F4F
/* 001594 0x80A378D8 */ .word	0x8F4F8F4F
/* 001595 0x80A378DC */ .word	0xFFFFFFFF
/* 001596 0x80A378E0 */ .word	0xFFFFFFFF
/* 001597 0x80A378E4 */ .word	0x8F4F0000
/* 001598 0x80A378E8 */ .word	0x8F4FFFFF
/* 001599 0x80A378EC */ .word	0xFFFFFFFF
/* 001600 0x80A378F0 */ .word	0xFFFF8F4F
/* 001601 0x80A378F4 */ .word	0x00000000
/* 001602 0x80A378F8 */ .word	0x00000000
/* 001603 0x80A378FC */ .word	0x8F4FFFFF
/* 001604 0x80A37900 */ .word	0xFFFFFFFF
/* 001605 0x80A37904 */ .word	0xFFFF8F4F
/* 001606 0x80A37908 */ .word	0x8F4FFFFF
/* 001607 0x80A3790C */ .word	0xFFFFFFFF
/* 001608 0x80A37910 */ .word	0x8F4F0000
/* 001609 0x80A37914 */ .word	0x00000000
/* 001610 0x80A37918 */ .word	0x00000000
/* 001611 0x80A3791C */ .word	0x00008F4F
/* 001612 0x80A37920 */ .word	0xFFFFFFFF
/* 001613 0x80A37924 */ .word	0xFFFF8F4F
/* 001614 0x80A37928 */ .word	0x8F4FFFFF
/* 001615 0x80A3792C */ .word	0xFFFFFFFF
/* 001616 0x80A37930 */ .word	0x8F4F0000
/* 001617 0x80A37934 */ .word	0x00000000
/* 001618 0x80A37938 */ .word	0x00000000
/* 001619 0x80A3793C */ .word	0x00008F4F
/* 001620 0x80A37940 */ .word	0xFFFFFFFF
/* 001621 0x80A37944 */ .word	0xFFFF8F4F
/* 001622 0x80A37948 */ .word	0x8F4FFFFF
/* 001623 0x80A3794C */ .word	0xFFFFFFFF
/* 001624 0x80A37950 */ .word	0x8F4F0000
/* 001625 0x80A37954 */ .word	0x00000000
/* 001626 0x80A37958 */ .word	0x00000000
/* 001627 0x80A3795C */ .word	0x00008F4F
/* 001628 0x80A37960 */ .word	0xFFFFFFFF
/* 001629 0x80A37964 */ .word	0xFFFF8F4F
/* 001630 0x80A37968 */ .word	0x8F4FFFFF
/* 001631 0x80A3796C */ .word	0xFFFFFFFF
/* 001632 0x80A37970 */ .word	0x8F4F0000
/* 001633 0x80A37974 */ .word	0x00000000
/* 001634 0x80A37978 */ .word	0x00000000
/* 001635 0x80A3797C */ .word	0x00008F4F
/* 001636 0x80A37980 */ .word	0xFFFFFFFF
/* 001637 0x80A37984 */ .word	0xFFFF8F4F
/* 001638 0x80A37988 */ .word	0x8F4FFFFF
/* 001639 0x80A3798C */ .word	0xFFFFFFFF
/* 001640 0x80A37990 */ .word	0xFFFF8F4F
/* 001641 0x80A37994 */ .word	0x00000000
/* 001642 0x80A37998 */ .word	0x00000000
/* 001643 0x80A3799C */ .word	0x8F4FFFFF
/* 001644 0x80A379A0 */ .word	0xFFFFFFFF
/* 001645 0x80A379A4 */ .word	0xFFFF8F4F
/* 001646 0x80A379A8 */ .word	0x00008F4F
/* 001647 0x80A379AC */ .word	0xFFFFFFFF
/* 001648 0x80A379B0 */ .word	0xFFFFFFFF
/* 001649 0x80A379B4 */ .word	0x8F4F8F4F
/* 001650 0x80A379B8 */ .word	0x8F4F8F4F
/* 001651 0x80A379BC */ .word	0xFFFFFFFF
/* 001652 0x80A379C0 */ .word	0xFFFFFFFF
/* 001653 0x80A379C4 */ .word	0x8F4F0000
/* 001654 0x80A379C8 */ .word	0x00008F4F
/* 001655 0x80A379CC */ .word	0xFFFFFFFF
/* 001656 0x80A379D0 */ .word	0xFFFFFFFF
/* 001657 0x80A379D4 */ .word	0xFFFFFFFF
/* 001658 0x80A379D8 */ .word	0xFFFFFFFF
/* 001659 0x80A379DC */ .word	0xFFFFFFFF
/* 001660 0x80A379E0 */ .word	0xFFFFFFFF
/* 001661 0x80A379E4 */ .word	0x8F4F0000
/* 001662 0x80A379E8 */ .word	0x00000000
/* 001663 0x80A379EC */ .word	0x8F4FFFFF
/* 001664 0x80A379F0 */ .word	0xFFFFFFFF
/* 001665 0x80A379F4 */ .word	0xFFFFFFFF
/* 001666 0x80A379F8 */ .word	0xFFFFFFFF
/* 001667 0x80A379FC */ .word	0xFFFFFFFF
/* 001668 0x80A37A00 */ .word	0xFFFF8F4F
/* 001669 0x80A37A04 */ .word	0x00000000
/* 001670 0x80A37A08 */ .word	0x00000000
/* 001671 0x80A37A0C */ .word	0x00008F4F
/* 001672 0x80A37A10 */ .word	0x8F4FFFFF
/* 001673 0x80A37A14 */ .word	0xFFFFFFFF
/* 001674 0x80A37A18 */ .word	0xFFFFFFFF
/* 001675 0x80A37A1C */ .word	0xFFFF8F4F
/* 001676 0x80A37A20 */ .word	0x8F4F0000
/* 001677 0x80A37A24 */ .word	0x00000000
/* 001678 0x80A37A28 */ .word	0x00000000
/* 001679 0x80A37A2C */ .word	0x00000000
/* 001680 0x80A37A30 */ .word	0x00008F4F
/* 001681 0x80A37A34 */ .word	0x8F4F8F4F
/* 001682 0x80A37A38 */ .word	0x8F4F8F4F
/* 001683 0x80A37A3C */ .word	0x8F4F0000
/* 001684 0x80A37A40 */ .word	0x00000000
/* 001685 0x80A37A44 */ .word	0x00000000
glabel D_80A37A48
/* 001686 0x80A37A48 */ .word	0x00140014
/* 001687 0x80A37A4C */ .word	0x000A0000
/* 001688 0x80A37A50 */ .word	0x000001F0
/* 001689 0x80A37A54 */ .word	0x007800FF
/* 001690 0x80A37A58 */ .word	0xFFEC0014
/* 001691 0x80A37A5C */ .word	0x000A0000
/* 001692 0x80A37A60 */ .word	0x00000000
/* 001693 0x80A37A64 */ .word	0x007800FF
/* 001694 0x80A37A68 */ .word	0xFFECFFEC
/* 001695 0x80A37A6C */ .word	0x000A0000
/* 001696 0x80A37A70 */ .word	0x01F00000
/* 001697 0x80A37A74 */ .word	0x007800FF
/* 001698 0x80A37A78 */ .word	0x0014FFEC
/* 001699 0x80A37A7C */ .word	0x000A0000
/* 001700 0x80A37A80 */ .word	0x01F001F0
/* 001701 0x80A37A84 */ .word	0x007800FF
glabel D_80A37A88
/* 001702 0x80A37A88 */ .word	0xE7000000
/* 001703 0x80A37A8C */ .word	0x00000000
/* 001704 0x80A37A90 */ .word	0xFD900000
/* 001705 0x80A37A94 */ .word	D_80A37648
/* 001706 0x80A37A98 */ .word	0xF5900000
/* 001707 0x80A37A9C */ .word	0x07090240
/* 001708 0x80A37AA0 */ .word	0xE6000000
/* 001709 0x80A37AA4 */ .word	0x00000000
/* 001710 0x80A37AA8 */ .word	0xF3000000
/* 001711 0x80A37AAC */ .word	0x070FF200
/* 001712 0x80A37AB0 */ .word	0xE7000000
/* 001713 0x80A37AB4 */ .word	0x00000000
/* 001714 0x80A37AB8 */ .word	0xF5900800
/* 001715 0x80A37ABC */ .word	0x00090240
/* 001716 0x80A37AC0 */ .word	0xF2000000
/* 001717 0x80A37AC4 */ .word	0x0003C03C
/* 001718 0x80A37AC8 */ .word	0xFCFFFE03
/* 001719 0x80A37ACC */ .word	0xFF0CF3FF
/* 001720 0x80A37AD0 */ .word	0xE200001C
/* 001721 0x80A37AD4 */ .word	0xC81049D8
/* 001722 0x80A37AD8 */ .word	0xD9F3FFFF
/* 001723 0x80A37ADC */ .word	0x00000000
/* 001724 0x80A37AE0 */ .word	0xD9FFFFFF
/* 001725 0x80A37AE4 */ .word	0x00030400
/* 001726 0x80A37AE8 */ .word	0x01004008
/* 001727 0x80A37AEC */ .word	D_80A37A48
/* 001728 0x80A37AF0 */ .word	0x05000204
/* 001729 0x80A37AF4 */ .word	0x00000000
/* 001730 0x80A37AF8 */ .word	0x05040600
/* 001731 0x80A37AFC */ .word	0x00000000
/* 001732 0x80A37B00 */ .word	0xDF000000
/* 001733 0x80A37B04 */ .word	0x00000000
glabel D_80A37B08
/* 001734 0x80A37B08 */ .word	0xE7000000
/* 001735 0x80A37B0C */ .word	0x00000000
/* 001736 0x80A37B10 */ .word	0xFD900000
/* 001737 0x80A37B14 */ .word	D_80A37848
/* 001738 0x80A37B18 */ .word	0xF5900000
/* 001739 0x80A37B1C */ .word	0x07090240
/* 001740 0x80A37B20 */ .word	0xE6000000
/* 001741 0x80A37B24 */ .word	0x00000000
/* 001742 0x80A37B28 */ .word	0xF3000000
/* 001743 0x80A37B2C */ .word	0x070FF200
/* 001744 0x80A37B30 */ .word	0xE7000000
/* 001745 0x80A37B34 */ .word	0x00000000
/* 001746 0x80A37B38 */ .word	0xF5900800
/* 001747 0x80A37B3C */ .word	0x00090240
/* 001748 0x80A37B40 */ .word	0xF2000000
/* 001749 0x80A37B44 */ .word	0x0003C03C
/* 001750 0x80A37B48 */ .word	0xFCFFFE03
/* 001751 0x80A37B4C */ .word	0xFF0CF3FF
/* 001752 0x80A37B50 */ .word	0xE200001C
/* 001753 0x80A37B54 */ .word	0xC81049D8
/* 001754 0x80A37B58 */ .word	0xD9F3FFFF
/* 001755 0x80A37B5C */ .word	0x00000000
/* 001756 0x80A37B60 */ .word	0xD9FFFFFF
/* 001757 0x80A37B64 */ .word	0x00030400
/* 001758 0x80A37B68 */ .word	0x01004008
/* 001759 0x80A37B6C */ .word	D_80A37A48
/* 001760 0x80A37B70 */ .word	0x05000204
/* 001761 0x80A37B74 */ .word	0x00000000
/* 001762 0x80A37B78 */ .word	0x05040600
/* 001763 0x80A37B7C */ .word	0x00000000
/* 001764 0x80A37B80 */ .word	0xDF000000
/* 001765 0x80A37B84 */ .word	0x00000000
glabel D_80A37B88
/* 001766 0x80A37B88 */ .word	0x891F0042
/* 001767 0x80A37B8C */ .word	0x30541964
glabel D_80A37B90
/* 001768 0x80A37B90 */ .word	0xFFFFFFFF
glabel D_80A37B94
/* 001769 0x80A37B94 */ .word	0x969696FF
glabel D_80A37B98
/* 001770 0x80A37B98 */ .word	0x00000000
/* 001771 0x80A37B9C */ .word	0xBF000000
/* 001772 0x80A37BA0 */ .word	0x00000000
glabel D_80A37BA4
/* 001773 0x80A37BA4 */ .word	0xFFFFFFFF
glabel D_80A37BA8
/* 001774 0x80A37BA8 */ .word	0x96969600
/* 001775 0x80A37BAC */ .word	0x00000000
