.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel enZogOverlayInfo
/* 002516 0x80B95A60 */ .word	0x00002550
/* 002517 0x80B95A64 */ .word	0x00000170
/* 002518 0x80B95A68 */ .word	0x00000090
/* 002519 0x80B95A6C */ .word	0x00000010
/* 002520 0x80B95A70 */ .word	0x000000E4
glabel enZogOverlayRelocations
/* 002521 0x80B95A74 */ .word	0x450000F0
/* 002522 0x80B95A78 */ .word	0x46000108
/* 002523 0x80B95A7C */ .word	0x45000244
/* 002524 0x80B95A80 */ .word	0x46000248
/* 002525 0x80B95A84 */ .word	0x4500024C
/* 002526 0x80B95A88 */ .word	0x46000250
/* 002527 0x80B95A8C */ .word	0x45000264
/* 002528 0x80B95A90 */ .word	0x46000268
/* 002529 0x80B95A94 */ .word	0x4500027C
/* 002530 0x80B95A98 */ .word	0x46000280
/* 002531 0x80B95A9C */ .word	0x4500028C
/* 002532 0x80B95AA0 */ .word	0x46000290
/* 002533 0x80B95AA4 */ .word	0x450002A4
/* 002534 0x80B95AA8 */ .word	0x460002A8
/* 002535 0x80B95AAC */ .word	0x450002AC
/* 002536 0x80B95AB0 */ .word	0x460002B0
/* 002537 0x80B95AB4 */ .word	0x450002D4
/* 002538 0x80B95AB8 */ .word	0x460002D8
/* 002539 0x80B95ABC */ .word	0x45000330
/* 002540 0x80B95AC0 */ .word	0x46000334
/* 002541 0x80B95AC4 */ .word	0x450003CC
/* 002542 0x80B95AC8 */ .word	0x460003D8
/* 002543 0x80B95ACC */ .word	0x45000420
/* 002544 0x80B95AD0 */ .word	0x4600042C
/* 002545 0x80B95AD4 */ .word	0x44000468
/* 002546 0x80B95AD8 */ .word	0x450005E0
/* 002547 0x80B95ADC */ .word	0x460005EC
/* 002548 0x80B95AE0 */ .word	0x4500061C
/* 002549 0x80B95AE4 */ .word	0x46000624
/* 002550 0x80B95AE8 */ .word	0x45000634
/* 002551 0x80B95AEC */ .word	0x46000638
/* 002552 0x80B95AF0 */ .word	0x45000654
/* 002553 0x80B95AF4 */ .word	0x4600065C
/* 002554 0x80B95AF8 */ .word	0x450006C8
/* 002555 0x80B95AFC */ .word	0x460006CC
/* 002556 0x80B95B00 */ .word	0x450007A4
/* 002557 0x80B95B04 */ .word	0x460007B0
/* 002558 0x80B95B08 */ .word	0x450007E0
/* 002559 0x80B95B0C */ .word	0x460007EC
/* 002560 0x80B95B10 */ .word	0x450007F4
/* 002561 0x80B95B14 */ .word	0x46000818
/* 002562 0x80B95B18 */ .word	0x440008A4
/* 002563 0x80B95B1C */ .word	0x440009C8
/* 002564 0x80B95B20 */ .word	0x45000B4C
/* 002565 0x80B95B24 */ .word	0x46000B64
/* 002566 0x80B95B28 */ .word	0x45000B50
/* 002567 0x80B95B2C */ .word	0x46000B60
/* 002568 0x80B95B30 */ .word	0x45000B34
/* 002569 0x80B95B34 */ .word	0x46000B48
/* 002570 0x80B95B38 */ .word	0x45000B3C
/* 002571 0x80B95B3C */ .word	0x46000B40
/* 002572 0x80B95B40 */ .word	0x45000BCC
/* 002573 0x80B95B44 */ .word	0x46000BD4
/* 002574 0x80B95B48 */ .word	0x45000BE0
/* 002575 0x80B95B4C */ .word	0x46000BE4
/* 002576 0x80B95B50 */ .word	0x45000C00
/* 002577 0x80B95B54 */ .word	0x46000C04
/* 002578 0x80B95B58 */ .word	0x45000C34
/* 002579 0x80B95B5C */ .word	0x46000C50
/* 002580 0x80B95B60 */ .word	0x45000C70
/* 002581 0x80B95B64 */ .word	0x46000C74
/* 002582 0x80B95B68 */ .word	0x45000C98
/* 002583 0x80B95B6C */ .word	0x46000C9C
/* 002584 0x80B95B70 */ .word	0x45000CBC
/* 002585 0x80B95B74 */ .word	0x46000CC0
/* 002586 0x80B95B78 */ .word	0x45000CD4
/* 002587 0x80B95B7C */ .word	0x46000CD8
/* 002588 0x80B95B80 */ .word	0x45000CEC
/* 002589 0x80B95B84 */ .word	0x46000CF0
/* 002590 0x80B95B88 */ .word	0x45000D04
/* 002591 0x80B95B8C */ .word	0x46000D08
/* 002592 0x80B95B90 */ .word	0x44000E00
/* 002593 0x80B95B94 */ .word	0x44000E10
/* 002594 0x80B95B98 */ .word	0x44000E20
/* 002595 0x80B95B9C */ .word	0x45000E78
/* 002596 0x80B95BA0 */ .word	0x46000E80
/* 002597 0x80B95BA4 */ .word	0x44000E94
/* 002598 0x80B95BA8 */ .word	0x44000EB8
/* 002599 0x80B95BAC */ .word	0x44000EDC
/* 002600 0x80B95BB0 */ .word	0x44000F00
/* 002601 0x80B95BB4 */ .word	0x44000F28
/* 002602 0x80B95BB8 */ .word	0x44000F50
/* 002603 0x80B95BBC */ .word	0x44000FA0
/* 002604 0x80B95BC0 */ .word	0x44000FCC
/* 002605 0x80B95BC4 */ .word	0x45000FF4
/* 002606 0x80B95BC8 */ .word	0x46000FF8
/* 002607 0x80B95BCC */ .word	0x4500100C
/* 002608 0x80B95BD0 */ .word	0x46001010
/* 002609 0x80B95BD4 */ .word	0x45001024
/* 002610 0x80B95BD8 */ .word	0x46001028
/* 002611 0x80B95BDC */ .word	0x45001040
/* 002612 0x80B95BE0 */ .word	0x4600104C
/* 002613 0x80B95BE4 */ .word	0x45001060
/* 002614 0x80B95BE8 */ .word	0x46001064
/* 002615 0x80B95BEC */ .word	0x44001098
/* 002616 0x80B95BF0 */ .word	0x450010B8
/* 002617 0x80B95BF4 */ .word	0x460010BC
/* 002618 0x80B95BF8 */ .word	0x450011C8
/* 002619 0x80B95BFC */ .word	0x460011CC
/* 002620 0x80B95C00 */ .word	0x440011F0
/* 002621 0x80B95C04 */ .word	0x45001234
/* 002622 0x80B95C08 */ .word	0x46001238
/* 002623 0x80B95C0C */ .word	0x440012A4
/* 002624 0x80B95C10 */ .word	0x450012AC
/* 002625 0x80B95C14 */ .word	0x460012B0
/* 002626 0x80B95C18 */ .word	0x440012F0
/* 002627 0x80B95C1C */ .word	0x44001314
/* 002628 0x80B95C20 */ .word	0x45001328
/* 002629 0x80B95C24 */ .word	0x46001338
/* 002630 0x80B95C28 */ .word	0x440013AC
/* 002631 0x80B95C2C */ .word	0x450013B8
/* 002632 0x80B95C30 */ .word	0x460013BC
/* 002633 0x80B95C34 */ .word	0x4500146C
/* 002634 0x80B95C38 */ .word	0x46001474
/* 002635 0x80B95C3C */ .word	0x44001480
/* 002636 0x80B95C40 */ .word	0x45001558
/* 002637 0x80B95C44 */ .word	0x4600155C
/* 002638 0x80B95C48 */ .word	0x4400157C
/* 002639 0x80B95C4C */ .word	0x450015C0
/* 002640 0x80B95C50 */ .word	0x460015C4
/* 002641 0x80B95C54 */ .word	0x44001638
/* 002642 0x80B95C58 */ .word	0x45001640
/* 002643 0x80B95C5C */ .word	0x46001644
/* 002644 0x80B95C60 */ .word	0x44001688
/* 002645 0x80B95C64 */ .word	0x440016C8
/* 002646 0x80B95C68 */ .word	0x440016D4
/* 002647 0x80B95C6C */ .word	0x44001708
/* 002648 0x80B95C70 */ .word	0x4500171C
/* 002649 0x80B95C74 */ .word	0x46001728
/* 002650 0x80B95C78 */ .word	0x44001888
/* 002651 0x80B95C7C */ .word	0x4500195C
/* 002652 0x80B95C80 */ .word	0x46001968
/* 002653 0x80B95C84 */ .word	0x440019E4
/* 002654 0x80B95C88 */ .word	0x44001A18
/* 002655 0x80B95C8C */ .word	0x45001AD8
/* 002656 0x80B95C90 */ .word	0x46001ADC
/* 002657 0x80B95C94 */ .word	0x44001AFC
/* 002658 0x80B95C98 */ .word	0x44001B08
/* 002659 0x80B95C9C */ .word	0x44001B40
/* 002660 0x80B95CA0 */ .word	0x44001B4C
/* 002661 0x80B95CA4 */ .word	0x45001B54
/* 002662 0x80B95CA8 */ .word	0x46001B58
/* 002663 0x80B95CAC */ .word	0x45001B80
/* 002664 0x80B95CB0 */ .word	0x46001B84
/* 002665 0x80B95CB4 */ .word	0x45001CC8
/* 002666 0x80B95CB8 */ .word	0x46001CCC
/* 002667 0x80B95CBC */ .word	0x45001D40
/* 002668 0x80B95CC0 */ .word	0x46001D44
/* 002669 0x80B95CC4 */ .word	0x45001D60
/* 002670 0x80B95CC8 */ .word	0x46001D70
/* 002671 0x80B95CCC */ .word	0x44001D9C
/* 002672 0x80B95CD0 */ .word	0x44001DFC
/* 002673 0x80B95CD4 */ .word	0x44001E30
/* 002674 0x80B95CD8 */ .word	0x44001E3C
/* 002675 0x80B95CDC */ .word	0x45001E5C
/* 002676 0x80B95CE0 */ .word	0x46001E64
/* 002677 0x80B95CE4 */ .word	0x44001EA8
/* 002678 0x80B95CE8 */ .word	0x44001EB8
/* 002679 0x80B95CEC */ .word	0x44001EC8
/* 002680 0x80B95CF0 */ .word	0x44001F14
/* 002681 0x80B95CF4 */ .word	0x44001F38
/* 002682 0x80B95CF8 */ .word	0x45001FB0
/* 002683 0x80B95CFC */ .word	0x46001FC4
/* 002684 0x80B95D00 */ .word	0x450021D8
/* 002685 0x80B95D04 */ .word	0x460021E0
/* 002686 0x80B95D08 */ .word	0x450021DC
/* 002687 0x80B95D0C */ .word	0x460021EC
/* 002688 0x80B95D10 */ .word	0x45002208
/* 002689 0x80B95D14 */ .word	0x46002210
/* 002690 0x80B95D18 */ .word	0x4500220C
/* 002691 0x80B95D1C */ .word	0x4600221C
/* 002692 0x80B95D20 */ .word	0x450022AC
/* 002693 0x80B95D24 */ .word	0x460022B4
/* 002694 0x80B95D28 */ .word	0x450022B0
/* 002695 0x80B95D2C */ .word	0x460022C0
/* 002696 0x80B95D30 */ .word	0x450022DC
/* 002697 0x80B95D34 */ .word	0x460022E4
/* 002698 0x80B95D38 */ .word	0x450022E0
/* 002699 0x80B95D3C */ .word	0x460022F0
/* 002700 0x80B95D40 */ .word	0x450023F8
/* 002701 0x80B95D44 */ .word	0x46002408
/* 002702 0x80B95D48 */ .word	0x45002420
/* 002703 0x80B95D4C */ .word	0x46002430
/* 002704 0x80B95D50 */ .word	0x45002448
/* 002705 0x80B95D54 */ .word	0x46002464
/* 002706 0x80B95D58 */ .word	0x450024B4
/* 002707 0x80B95D5C */ .word	0x460024C4
/* 002708 0x80B95D60 */ .word	0x450024DC
/* 002709 0x80B95D64 */ .word	0x460024EC
/* 002710 0x80B95D68 */ .word	0x45002518
/* 002711 0x80B95D6C */ .word	0x4600251C
/* 002712 0x80B95D70 */ .word	0x82000010
/* 002713 0x80B95D74 */ .word	0x82000014
/* 002714 0x80B95D78 */ .word	0x82000018
/* 002715 0x80B95D7C */ .word	0x8200001C
/* 002716 0x80B95D80 */ .word	0x82000114
/* 002717 0x80B95D84 */ .word	0x82000118
/* 002718 0x80B95D88 */ .word	0x8200011C
/* 002719 0x80B95D8C */ .word	0x82000120
/* 002720 0x80B95D90 */ .word	0xC200000C
/* 002721 0x80B95D94 */ .word	0xC2000010
/* 002722 0x80B95D98 */ .word	0xC2000014
/* 002723 0x80B95D9C */ .word	0xC2000018
/* 002724 0x80B95DA0 */ .word	0xC200001C
/* 002725 0x80B95DA4 */ .word	0xC2000020
/* 002726 0x80B95DA8 */ .word	0xC2000024
/* 002727 0x80B95DAC */ .word	0xC2000028
/* 002728 0x80B95DB0 */ .word	0xC200002C
/* 002729 0x80B95DB4 */ .word	0xC2000030
/* 002730 0x80B95DB8 */ .word	0xC2000034
/* 002731 0x80B95DBC */ .word	0xC2000038
/* 002732 0x80B95DC0 */ .word	0xC200003C
/* 002733 0x80B95DC4 */ .word	0xC2000040
/* 002734 0x80B95DC8 */ .word	0xC2000044
/* 002735 0x80B95DCC */ .word	0xC2000048
/* 002736 0x80B95DD0 */ .word	0xC200004C
/* 002737 0x80B95DD4 */ .word	0xC2000050
/* 002738 0x80B95DD8 */ .word	0xC2000054
/* 002739 0x80B95DDC */ .word	0xC2000058
/* 002740 0x80B95DE0 */ .word	0xC200005C
/* 002741 0x80B95DE4 */ .word	0xC2000060
/* 002742 0x80B95DE8 */ .word	0xC2000064
/* 002743 0x80B95DEC */ .word	0xC2000068
/* 002744 0x80B95DF0 */ .word	0xC200006C
/* 002745 0x80B95DF4 */ .word	0xC2000070
/* 002746 0x80B95DF8 */ .word	0xC2000074
/* 002747 0x80B95DFC */ .word	0xC2000078
/* 002748 0x80B95E00 */ .word	0xC200007C
/* 002749 0x80B95E04 */ .word	0x00000000
/* 002750 0x80B95E08 */ .word	0x00000000
glabel enZogOverlayInfoOffset
/* 002751 0x80B95E0C */ .word	0x000003B0
