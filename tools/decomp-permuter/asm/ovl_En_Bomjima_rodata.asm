.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel enBomjimaOverlayInfo
/* 002688 0x80C00B70 */ .word	0x00002880
/* 002689 0x80C00B74 */ .word	0x00000170
/* 002690 0x80C00B78 */ .word	0x00000010
/* 002691 0x80C00B7C */ .word	0x00000000
/* 002692 0x80C00B80 */ .word	0x000000C5
glabel enBomjimaOverlayRelocations
/* 002693 0x80C00B84 */ .word	0x45000080
/* 002694 0x80C00B88 */ .word	0x46000084
/* 002695 0x80C00B8C */ .word	0x45000114
/* 002696 0x80C00B90 */ .word	0x46000118
/* 002697 0x80C00B94 */ .word	0x4400012C
/* 002698 0x80C00B98 */ .word	0x45000280
/* 002699 0x80C00B9C */ .word	0x46000294
/* 002700 0x80C00BA0 */ .word	0x450002A4
/* 002701 0x80C00BA4 */ .word	0x460002B0
/* 002702 0x80C00BA8 */ .word	0x450002D0
/* 002703 0x80C00BAC */ .word	0x460002DC
/* 002704 0x80C00BB0 */ .word	0x450002EC
/* 002705 0x80C00BB4 */ .word	0x460002F8
/* 002706 0x80C00BB8 */ .word	0x45000308
/* 002707 0x80C00BBC */ .word	0x46000314
/* 002708 0x80C00BC0 */ .word	0x4500033C
/* 002709 0x80C00BC4 */ .word	0x4600034C
/* 002710 0x80C00BC8 */ .word	0x45000370
/* 002711 0x80C00BCC */ .word	0x46000384
/* 002712 0x80C00BD0 */ .word	0x45000358
/* 002713 0x80C00BD4 */ .word	0x46000378
/* 002714 0x80C00BD8 */ .word	0x44000688
/* 002715 0x80C00BDC */ .word	0x440007F4
/* 002716 0x80C00BE0 */ .word	0x44000804
/* 002717 0x80C00BE4 */ .word	0x44000890
/* 002718 0x80C00BE8 */ .word	0x440008A0
/* 002719 0x80C00BEC */ .word	0x44000984
/* 002720 0x80C00BF0 */ .word	0x440009C0
/* 002721 0x80C00BF4 */ .word	0x440009C8
/* 002722 0x80C00BF8 */ .word	0x450009D4
/* 002723 0x80C00BFC */ .word	0x460009D8
/* 002724 0x80C00C00 */ .word	0x44000A14
/* 002725 0x80C00C04 */ .word	0x44000A58
/* 002726 0x80C00C08 */ .word	0x44000A84
/* 002727 0x80C00C0C */ .word	0x44000ABC
/* 002728 0x80C00C10 */ .word	0x44000AE8
/* 002729 0x80C00C14 */ .word	0x44000B2C
/* 002730 0x80C00C18 */ .word	0x44000B78
/* 002731 0x80C00C1C */ .word	0x44000BB8
/* 002732 0x80C00C20 */ .word	0x44000D68
/* 002733 0x80C00C24 */ .word	0x44000E4C
/* 002734 0x80C00C28 */ .word	0x44000E94
/* 002735 0x80C00C2C */ .word	0x44000E9C
/* 002736 0x80C00C30 */ .word	0x45000EA8
/* 002737 0x80C00C34 */ .word	0x46000EB0
/* 002738 0x80C00C38 */ .word	0x44000F94
/* 002739 0x80C00C3C */ .word	0x44000FB8
/* 002740 0x80C00C40 */ .word	0x44000FD0
/* 002741 0x80C00C44 */ .word	0x45000FDC
/* 002742 0x80C00C48 */ .word	0x46000FE4
/* 002743 0x80C00C4C */ .word	0x44001088
/* 002744 0x80C00C50 */ .word	0x440010F0
/* 002745 0x80C00C54 */ .word	0x44001138
/* 002746 0x80C00C58 */ .word	0x44001184
/* 002747 0x80C00C5C */ .word	0x440011C0
/* 002748 0x80C00C60 */ .word	0x44001208
/* 002749 0x80C00C64 */ .word	0x4400122C
/* 002750 0x80C00C68 */ .word	0x44001254
/* 002751 0x80C00C6C */ .word	0x44001290
/* 002752 0x80C00C70 */ .word	0x4500129C
/* 002753 0x80C00C74 */ .word	0x460012A4
/* 002754 0x80C00C78 */ .word	0x44001354
/* 002755 0x80C00C7C */ .word	0x45001364
/* 002756 0x80C00C80 */ .word	0x46001368
/* 002757 0x80C00C84 */ .word	0x4400138C
/* 002758 0x80C00C88 */ .word	0x45001398
/* 002759 0x80C00C8C */ .word	0x460013A0
/* 002760 0x80C00C90 */ .word	0x44001420
/* 002761 0x80C00C94 */ .word	0x45001454
/* 002762 0x80C00C98 */ .word	0x46001460
/* 002763 0x80C00C9C */ .word	0x45001470
/* 002764 0x80C00CA0 */ .word	0x4600147C
/* 002765 0x80C00CA4 */ .word	0x4400149C
/* 002766 0x80C00CA8 */ .word	0x450014A4
/* 002767 0x80C00CAC */ .word	0x460014AC
/* 002768 0x80C00CB0 */ .word	0x440014CC
/* 002769 0x80C00CB4 */ .word	0x450014F8
/* 002770 0x80C00CB8 */ .word	0x46001508
/* 002771 0x80C00CBC */ .word	0x4500151C
/* 002772 0x80C00CC0 */ .word	0x4600152C
/* 002773 0x80C00CC4 */ .word	0x44001540
/* 002774 0x80C00CC8 */ .word	0x440015BC
/* 002775 0x80C00CCC */ .word	0x450015C8
/* 002776 0x80C00CD0 */ .word	0x460015CC
/* 002777 0x80C00CD4 */ .word	0x45001670
/* 002778 0x80C00CD8 */ .word	0x46001678
/* 002779 0x80C00CDC */ .word	0x45001740
/* 002780 0x80C00CE0 */ .word	0x46001744
/* 002781 0x80C00CE4 */ .word	0x450017E8
/* 002782 0x80C00CE8 */ .word	0x460017EC
/* 002783 0x80C00CEC */ .word	0x450017FC
/* 002784 0x80C00CF0 */ .word	0x46001800
/* 002785 0x80C00CF4 */ .word	0x45001844
/* 002786 0x80C00CF8 */ .word	0x46001848
/* 002787 0x80C00CFC */ .word	0x44001944
/* 002788 0x80C00D00 */ .word	0x45001970
/* 002789 0x80C00D04 */ .word	0x4600197C
/* 002790 0x80C00D08 */ .word	0x4500198C
/* 002791 0x80C00D0C */ .word	0x46001998
/* 002792 0x80C00D10 */ .word	0x450019B4
/* 002793 0x80C00D14 */ .word	0x460019B8
/* 002794 0x80C00D18 */ .word	0x44001A18
/* 002795 0x80C00D1C */ .word	0x45001A28
/* 002796 0x80C00D20 */ .word	0x46001A2C
/* 002797 0x80C00D24 */ .word	0x45001A38
/* 002798 0x80C00D28 */ .word	0x46001A3C
/* 002799 0x80C00D2C */ .word	0x44001A98
/* 002800 0x80C00D30 */ .word	0x45001AA0
/* 002801 0x80C00D34 */ .word	0x46001AA4
/* 002802 0x80C00D38 */ .word	0x45001AF8
/* 002803 0x80C00D3C */ .word	0x46001AFC
/* 002804 0x80C00D40 */ .word	0x44001B98
/* 002805 0x80C00D44 */ .word	0x44001BA8
/* 002806 0x80C00D48 */ .word	0x45001BB4
/* 002807 0x80C00D4C */ .word	0x46001BBC
/* 002808 0x80C00D50 */ .word	0x45001C6C
/* 002809 0x80C00D54 */ .word	0x46001C70
/* 002810 0x80C00D58 */ .word	0x44001CB0
/* 002811 0x80C00D5C */ .word	0x45001CB8
/* 002812 0x80C00D60 */ .word	0x46001CBC
/* 002813 0x80C00D64 */ .word	0x45001D34
/* 002814 0x80C00D68 */ .word	0x46001D38
/* 002815 0x80C00D6C */ .word	0x44001D64
/* 002816 0x80C00D70 */ .word	0x44001D70
/* 002817 0x80C00D74 */ .word	0x45001D78
/* 002818 0x80C00D78 */ .word	0x46001D7C
/* 002819 0x80C00D7C */ .word	0x45001D98
/* 002820 0x80C00D80 */ .word	0x46001D9C
/* 002821 0x80C00D84 */ .word	0x44001DB4
/* 002822 0x80C00D88 */ .word	0x44001DBC
/* 002823 0x80C00D8C */ .word	0x45001DC4
/* 002824 0x80C00D90 */ .word	0x46001DC8
/* 002825 0x80C00D94 */ .word	0x45001E18
/* 002826 0x80C00D98 */ .word	0x46001E1C
/* 002827 0x80C00D9C */ .word	0x45001E94
/* 002828 0x80C00DA0 */ .word	0x46001E98
/* 002829 0x80C00DA4 */ .word	0x44001EAC
/* 002830 0x80C00DA8 */ .word	0x44001EEC
/* 002831 0x80C00DAC */ .word	0x45001EF8
/* 002832 0x80C00DB0 */ .word	0x46001EFC
/* 002833 0x80C00DB4 */ .word	0x45001F0C
/* 002834 0x80C00DB8 */ .word	0x46001F10
/* 002835 0x80C00DBC */ .word	0x45001F40
/* 002836 0x80C00DC0 */ .word	0x46001F44
/* 002837 0x80C00DC4 */ .word	0x45001F50
/* 002838 0x80C00DC8 */ .word	0x46001F88
/* 002839 0x80C00DCC */ .word	0x45001F8C
/* 002840 0x80C00DD0 */ .word	0x46001F94
/* 002841 0x80C00DD4 */ .word	0x44001FB8
/* 002842 0x80C00DD8 */ .word	0x44001FC8
/* 002843 0x80C00DDC */ .word	0x45001FD4
/* 002844 0x80C00DE0 */ .word	0x46001FDC
/* 002845 0x80C00DE4 */ .word	0x44002044
/* 002846 0x80C00DE8 */ .word	0x44002050
/* 002847 0x80C00DEC */ .word	0x44002094
/* 002848 0x80C00DF0 */ .word	0x440020D4
/* 002849 0x80C00DF4 */ .word	0x440020EC
/* 002850 0x80C00DF8 */ .word	0x450020F8
/* 002851 0x80C00DFC */ .word	0x460020FC
/* 002852 0x80C00E00 */ .word	0x440021BC
/* 002853 0x80C00E04 */ .word	0x440021CC
/* 002854 0x80C00E08 */ .word	0x440022D0
/* 002855 0x80C00E0C */ .word	0x440022E0
/* 002856 0x80C00E10 */ .word	0x450022F0
/* 002857 0x80C00E14 */ .word	0x460022F4
/* 002858 0x80C00E18 */ .word	0x44002348
/* 002859 0x80C00E1C */ .word	0x44002358
/* 002860 0x80C00E20 */ .word	0x44002378
/* 002861 0x80C00E24 */ .word	0x4400238C
/* 002862 0x80C00E28 */ .word	0x45002394
/* 002863 0x80C00E2C */ .word	0x4600239C
/* 002864 0x80C00E30 */ .word	0x450023E8
/* 002865 0x80C00E34 */ .word	0x460023F4
/* 002866 0x80C00E38 */ .word	0x45002428
/* 002867 0x80C00E3C */ .word	0x46002434
/* 002868 0x80C00E40 */ .word	0x44002460
/* 002869 0x80C00E44 */ .word	0x45002474
/* 002870 0x80C00E48 */ .word	0x4600248C
/* 002871 0x80C00E4C */ .word	0x440024B8
/* 002872 0x80C00E50 */ .word	0x44002548
/* 002873 0x80C00E54 */ .word	0x45002794
/* 002874 0x80C00E58 */ .word	0x460027A8
/* 002875 0x80C00E5C */ .word	0x450027D0
/* 002876 0x80C00E60 */ .word	0x460027E4
/* 002877 0x80C00E64 */ .word	0x4500280C
/* 002878 0x80C00E68 */ .word	0x46002820
/* 002879 0x80C00E6C */ .word	0x45002848
/* 002880 0x80C00E70 */ .word	0x4600284C
/* 002881 0x80C00E74 */ .word	0x82000018
/* 002882 0x80C00E78 */ .word	0x8200001C
/* 002883 0x80C00E7C */ .word	0x82000020
/* 002884 0x80C00E80 */ .word	0x82000024
/* 002885 0x80C00E84 */ .word	0x82000138
/* 002886 0x80C00E88 */ .word	0x8200013C
/* 002887 0x80C00E8C */ .word	0x82000140
/* 002888 0x80C00E90 */ .word	0x82000144
/* 002889 0x80C00E94 */ .word	0x82000148
/* 002890 0x80C00E98 */ .word	0x00000000
glabel enBomjimaOverlayInfoOffset
/* 002891 0x80C00E9C */ .word	0x00000330
