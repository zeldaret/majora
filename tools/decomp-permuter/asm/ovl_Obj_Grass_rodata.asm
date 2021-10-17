.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel objGrassOverlayInfo
/* 001716 0x809AABE0 */ .word	0x000018E0
/* 001717 0x809AABE4 */ .word	0x000001B0
/* 001718 0x809AABE8 */ .word	0x00000040
/* 001719 0x809AABEC */ .word	0x000000C0
/* 001720 0x809AABF0 */ .word	0x00000068
glabel objGrassOverlayRelocations
/* 001721 0x809AABF4 */ .word	0x45000038
/* 001722 0x809AABF8 */ .word	0x4600003C
/* 001723 0x809AABFC */ .word	0x45000068
/* 001724 0x809AAC00 */ .word	0x46000080
/* 001725 0x809AAC04 */ .word	0x4500027C
/* 001726 0x809AAC08 */ .word	0x4600029C
/* 001727 0x809AAC0C */ .word	0x45000258
/* 001728 0x809AAC10 */ .word	0x4600025C
/* 001729 0x809AAC14 */ .word	0x45000288
/* 001730 0x809AAC18 */ .word	0x46000290
/* 001731 0x809AAC1C */ .word	0x450004B0
/* 001732 0x809AAC20 */ .word	0x460004B4
/* 001733 0x809AAC24 */ .word	0x45000544
/* 001734 0x809AAC28 */ .word	0x46000548
/* 001735 0x809AAC2C */ .word	0x440006CC
/* 001736 0x809AAC30 */ .word	0x440006D8
/* 001737 0x809AAC34 */ .word	0x45000768
/* 001738 0x809AAC38 */ .word	0x46000784
/* 001739 0x809AAC3C */ .word	0x4500076C
/* 001740 0x809AAC40 */ .word	0x46000780
/* 001741 0x809AAC44 */ .word	0x45000770
/* 001742 0x809AAC48 */ .word	0x4600077C
/* 001743 0x809AAC4C */ .word	0x45000774
/* 001744 0x809AAC50 */ .word	0x46000778
/* 001745 0x809AAC54 */ .word	0x450007A4
/* 001746 0x809AAC58 */ .word	0x460007B8
/* 001747 0x809AAC5C */ .word	0x450007A8
/* 001748 0x809AAC60 */ .word	0x460007B4
/* 001749 0x809AAC64 */ .word	0x450007AC
/* 001750 0x809AAC68 */ .word	0x460007B0
/* 001751 0x809AAC6C */ .word	0x45000840
/* 001752 0x809AAC70 */ .word	0x46000844
/* 001753 0x809AAC74 */ .word	0x45000868
/* 001754 0x809AAC78 */ .word	0x4600086C
/* 001755 0x809AAC7C */ .word	0x450008C8
/* 001756 0x809AAC80 */ .word	0x460008CC
/* 001757 0x809AAC84 */ .word	0x45000904
/* 001758 0x809AAC88 */ .word	0x46000918
/* 001759 0x809AAC8C */ .word	0x4500090C
/* 001760 0x809AAC90 */ .word	0x46000910
/* 001761 0x809AAC94 */ .word	0x450009A0
/* 001762 0x809AAC98 */ .word	0x460009A4
/* 001763 0x809AAC9C */ .word	0x450009AC
/* 001764 0x809AACA0 */ .word	0x460009B0
/* 001765 0x809AACA4 */ .word	0x45000A08
/* 001766 0x809AACA8 */ .word	0x46000A0C
/* 001767 0x809AACAC */ .word	0x45000A68
/* 001768 0x809AACB0 */ .word	0x46000A74
/* 001769 0x809AACB4 */ .word	0x45000A6C
/* 001770 0x809AACB8 */ .word	0x46000A70
/* 001771 0x809AACBC */ .word	0x45000AB8
/* 001772 0x809AACC0 */ .word	0x46000ABC
/* 001773 0x809AACC4 */ .word	0x45000AA8
/* 001774 0x809AACC8 */ .word	0x46000AAC
/* 001775 0x809AACCC */ .word	0x45000B20
/* 001776 0x809AACD0 */ .word	0x46000B30
/* 001777 0x809AACD4 */ .word	0x45000B90
/* 001778 0x809AACD8 */ .word	0x46000B94
/* 001779 0x809AACDC */ .word	0x45000BAC
/* 001780 0x809AACE0 */ .word	0x46000BB8
/* 001781 0x809AACE4 */ .word	0x45000D34
/* 001782 0x809AACE8 */ .word	0x46000D38
/* 001783 0x809AACEC */ .word	0x45000D8C
/* 001784 0x809AACF0 */ .word	0x46000D90
/* 001785 0x809AACF4 */ .word	0x45000DA4
/* 001786 0x809AACF8 */ .word	0x46000DA8
/* 001787 0x809AACFC */ .word	0x45000DAC
/* 001788 0x809AAD00 */ .word	0x46000DB0
/* 001789 0x809AAD04 */ .word	0x45000DCC
/* 001790 0x809AAD08 */ .word	0x46000EA8
/* 001791 0x809AAD0C */ .word	0x4400113C
/* 001792 0x809AAD10 */ .word	0x44001148
/* 001793 0x809AAD14 */ .word	0x44001150
/* 001794 0x809AAD18 */ .word	0x450011C4
/* 001795 0x809AAD1C */ .word	0x460011C8
/* 001796 0x809AAD20 */ .word	0x450011CC
/* 001797 0x809AAD24 */ .word	0x460011D0
/* 001798 0x809AAD28 */ .word	0x450011D4
/* 001799 0x809AAD2C */ .word	0x460011D8
/* 001800 0x809AAD30 */ .word	0x450011DC
/* 001801 0x809AAD34 */ .word	0x460011E0
/* 001802 0x809AAD38 */ .word	0x450011E4
/* 001803 0x809AAD3C */ .word	0x460011E8
/* 001804 0x809AAD40 */ .word	0x44001238
/* 001805 0x809AAD44 */ .word	0x45001470
/* 001806 0x809AAD48 */ .word	0x46001478
/* 001807 0x809AAD4C */ .word	0x450014BC
/* 001808 0x809AAD50 */ .word	0x460014C0
/* 001809 0x809AAD54 */ .word	0x45001588
/* 001810 0x809AAD58 */ .word	0x4600158C
/* 001811 0x809AAD5C */ .word	0x440015D0
/* 001812 0x809AAD60 */ .word	0x450016BC
/* 001813 0x809AAD64 */ .word	0x460016C4
/* 001814 0x809AAD68 */ .word	0x450016F4
/* 001815 0x809AAD6C */ .word	0x460016F8
/* 001816 0x809AAD70 */ .word	0x45001784
/* 001817 0x809AAD74 */ .word	0x46001788
/* 001818 0x809AAD78 */ .word	0x440018AC
/* 001819 0x809AAD7C */ .word	0x440018B8
/* 001820 0x809AAD80 */ .word	0x440018C4
/* 001821 0x809AAD84 */ .word	0x82000120
/* 001822 0x809AAD88 */ .word	0x82000124
/* 001823 0x809AAD8C */ .word	0x82000128
/* 001824 0x809AAD90 */ .word	0x8200012C
/* 001825 0x809AAD94 */ .word	0x00000000
/* 001826 0x809AAD98 */ .word	0x00000000
glabel objGrassOverlayInfoOffset
/* 001827 0x809AAD9C */ .word	0x000001C0
