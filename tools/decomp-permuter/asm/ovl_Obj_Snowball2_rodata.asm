.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel D_80B3A960
/* 001744 0x80B3A960 */ .word	0x3FCCCCCD
glabel D_80B3A964
/* 001745 0x80B3A964 */ .word	0xBD75C28F
glabel D_80B3A968
/* 001746 0x80B3A968 */ .word	0x45BA2800
glabel D_80B3A96C
/* 001747 0x80B3A96C */ .word	0x3FCCCCCD
glabel D_80B3A970
/* 001748 0x80B3A970 */ .word	0x3F4CCCCD
glabel D_80B3A974
/* 001749 0x80B3A974 */ .word	0x3E99999A
glabel D_80B3A978
/* 001750 0x80B3A978 */ .word	0xBCA3D70A
glabel D_80B3A97C
/* 001751 0x80B3A97C */ .word	0x3FC66666
glabel D_80B3A980
/* 001752 0x80B3A980 */ .word	0xBF333333
glabel D_80B3A984
/* 001753 0x80B3A984 */ .word	0xBCCCCCCD
glabel D_80B3A988
/* 001754 0x80B3A988 */ .word	0x3CF5C28F
glabel D_80B3A98C
/* 001755 0x80B3A98C */ .word	0x3DE147AE
glabel D_80B3A990
/* 001756 0x80B3A990 */ .word	0x3FCCCCCD
glabel D_80B3A994
/* 001757 0x80B3A994 */ .word	0xBD75C28F
glabel D_80B3A998
/* 001758 0x80B3A998 */ .word	0xBF4CCCCD
glabel D_80B3A99C
/* 001759 0x80B3A99C */ .word	0x40733333
glabel D_80B3A9A0
/* 001760 0x80B3A9A0 */ .word	0x3ECCCCCD
glabel D_80B3A9A4
/* 001761 0x80B3A9A4 */ .word	0xC0333333
glabel D_80B3A9A8
/* 001762 0x80B3A9A8 */ .word	0x3F4CCCCD
glabel D_80B3A9AC
/* 001763 0x80B3A9AC */ .word	0x3F266666
glabel D_80B3A9B0
/* 001764 0x80B3A9B0 */ .word	0x3E8A3D71
glabel D_80B3A9B4
/* 001765 0x80B3A9B4 */ .word	0x3ECCCCCD
glabel D_80B3A9B8
/* 001766 0x80B3A9B8 */ .word	0x3F4CCCCD
glabel D_80B3A9BC
/* 001767 0x80B3A9BC */ .word	0x3F75C28F
glabel D_80B3A9C0
/* 001768 0x80B3A9C0 */ .word	0x3F75C28F
glabel D_80B3A9C4
/* 001769 0x80B3A9C4 */ .word	0x3F333333
glabel D_80B3A9C8
/* 001770 0x80B3A9C8 */ .word	0x3F70A3D7
glabel D_80B3A9CC
/* 001771 0x80B3A9CC */ .word	0x3F4CCCCD
glabel D_80B3A9D0
/* 001772 0x80B3A9D0 */ .word	0x3A83126F
glabel D_80B3A9D4
/* 001773 0x80B3A9D4 */ .word	0x3FCCCCCD
glabel D_80B3A9D8
/* 001774 0x80B3A9D8 */ .word	0x3F19999A
glabel D_80B3A9DC
/* 001775 0x80B3A9DC */ .word	0xBE0F5C28
glabel D_80B3A9E0
/* 001776 0x80B3A9E0 */ .word	0x3F70A3D7
glabel D_80B3A9E4
/* 001777 0x80B3A9E4 */ .word	0x3F4CCCCD
glabel D_80B3A9E8
/* 001778 0x80B3A9E8 */ .word	0x3AA3D70A
/* 001779 0x80B3A9EC */ .word	0x00000000
glabel objSnowball2OverlayInfo
/* 001780 0x80B3A9F0 */ .word	0x00001AA0
/* 001781 0x80B3A9F4 */ .word	0x000000A0
/* 001782 0x80B3A9F8 */ .word	0x00000090
/* 001783 0x80B3A9FC */ .word	0x00000000
/* 001784 0x80B3AA00 */ .word	0x0000008F
glabel objSnowball2OverlayRelocations
/* 001785 0x80B3AA04 */ .word	0x45000130
/* 001786 0x80B3AA08 */ .word	0x46000134
/* 001787 0x80B3AA0C */ .word	0x45000150
/* 001788 0x80B3AA10 */ .word	0x46000158
/* 001789 0x80B3AA14 */ .word	0x45000160
/* 001790 0x80B3AA18 */ .word	0x46000174
/* 001791 0x80B3AA1C */ .word	0x45000164
/* 001792 0x80B3AA20 */ .word	0x46000170
/* 001793 0x80B3AA24 */ .word	0x45000378
/* 001794 0x80B3AA28 */ .word	0x4600037C
/* 001795 0x80B3AA2C */ .word	0x45000414
/* 001796 0x80B3AA30 */ .word	0x46000418
/* 001797 0x80B3AA34 */ .word	0x4500041C
/* 001798 0x80B3AA38 */ .word	0x46000420
/* 001799 0x80B3AA3C */ .word	0x450004B8
/* 001800 0x80B3AA40 */ .word	0x460004C0
/* 001801 0x80B3AA44 */ .word	0x45000544
/* 001802 0x80B3AA48 */ .word	0x46000548
/* 001803 0x80B3AA4C */ .word	0x450005B8
/* 001804 0x80B3AA50 */ .word	0x460005BC
/* 001805 0x80B3AA54 */ .word	0x450005A0
/* 001806 0x80B3AA58 */ .word	0x460005B0
/* 001807 0x80B3AA5C */ .word	0x450005A4
/* 001808 0x80B3AA60 */ .word	0x460005AC
/* 001809 0x80B3AA64 */ .word	0x44000800
/* 001810 0x80B3AA68 */ .word	0x45000868
/* 001811 0x80B3AA6C */ .word	0x4600086C
/* 001812 0x80B3AA70 */ .word	0x45000874
/* 001813 0x80B3AA74 */ .word	0x46000884
/* 001814 0x80B3AA78 */ .word	0x45000888
/* 001815 0x80B3AA7C */ .word	0x4600088C
/* 001816 0x80B3AA80 */ .word	0x45000890
/* 001817 0x80B3AA84 */ .word	0x46000894
/* 001818 0x80B3AA88 */ .word	0x450008B8
/* 001819 0x80B3AA8C */ .word	0x460008BC
/* 001820 0x80B3AA90 */ .word	0x450008C0
/* 001821 0x80B3AA94 */ .word	0x460008D4
/* 001822 0x80B3AA98 */ .word	0x450008D8
/* 001823 0x80B3AA9C */ .word	0x460008DC
/* 001824 0x80B3AAA0 */ .word	0x450008F4
/* 001825 0x80B3AAA4 */ .word	0x460008F8
/* 001826 0x80B3AAA8 */ .word	0x45000914
/* 001827 0x80B3AAAC */ .word	0x46000934
/* 001828 0x80B3AAB0 */ .word	0x4500093C
/* 001829 0x80B3AAB4 */ .word	0x4600094C
/* 001830 0x80B3AAB8 */ .word	0x45000A4C
/* 001831 0x80B3AABC */ .word	0x46000A50
/* 001832 0x80B3AAC0 */ .word	0x45000A54
/* 001833 0x80B3AAC4 */ .word	0x46000A58
/* 001834 0x80B3AAC8 */ .word	0x45000B38
/* 001835 0x80B3AACC */ .word	0x46000B54
/* 001836 0x80B3AAD0 */ .word	0x45000B60
/* 001837 0x80B3AAD4 */ .word	0x46000B64
/* 001838 0x80B3AAD8 */ .word	0x45000B44
/* 001839 0x80B3AADC */ .word	0x46000B80
/* 001840 0x80B3AAE0 */ .word	0x45000B74
/* 001841 0x80B3AAE4 */ .word	0x46000B7C
/* 001842 0x80B3AAE8 */ .word	0x45000C08
/* 001843 0x80B3AAEC */ .word	0x46000C0C
/* 001844 0x80B3AAF0 */ .word	0x45000D88
/* 001845 0x80B3AAF4 */ .word	0x46000D8C
/* 001846 0x80B3AAF8 */ .word	0x45000DD8
/* 001847 0x80B3AAFC */ .word	0x46000DE4
/* 001848 0x80B3AB00 */ .word	0x44000DF8
/* 001849 0x80B3AB04 */ .word	0x44000E10
/* 001850 0x80B3AB08 */ .word	0x45000E5C
/* 001851 0x80B3AB0C */ .word	0x46000E60
/* 001852 0x80B3AB10 */ .word	0x44000EEC
/* 001853 0x80B3AB14 */ .word	0x44000EF8
/* 001854 0x80B3AB18 */ .word	0x44000F0C
/* 001855 0x80B3AB1C */ .word	0x44000F4C
/* 001856 0x80B3AB20 */ .word	0x44000F88
/* 001857 0x80B3AB24 */ .word	0x44000F94
/* 001858 0x80B3AB28 */ .word	0x44000FA0
/* 001859 0x80B3AB2C */ .word	0x44000FDC
/* 001860 0x80B3AB30 */ .word	0x4500115C
/* 001861 0x80B3AB34 */ .word	0x46001164
/* 001862 0x80B3AB38 */ .word	0x440011A4
/* 001863 0x80B3AB3C */ .word	0x440011C0
/* 001864 0x80B3AB40 */ .word	0x450011E4
/* 001865 0x80B3AB44 */ .word	0x460011F0
/* 001866 0x80B3AB48 */ .word	0x450011F4
/* 001867 0x80B3AB4C */ .word	0x46001208
/* 001868 0x80B3AB50 */ .word	0x4500120C
/* 001869 0x80B3AB54 */ .word	0x46001218
/* 001870 0x80B3AB58 */ .word	0x44001250
/* 001871 0x80B3AB5C */ .word	0x450012FC
/* 001872 0x80B3AB60 */ .word	0x46001300
/* 001873 0x80B3AB64 */ .word	0x44001384
/* 001874 0x80B3AB68 */ .word	0x440013C0
/* 001875 0x80B3AB6C */ .word	0x440013CC
/* 001876 0x80B3AB70 */ .word	0x440013D8
/* 001877 0x80B3AB74 */ .word	0x44001448
/* 001878 0x80B3AB78 */ .word	0x44001454
/* 001879 0x80B3AB7C */ .word	0x440014C4
/* 001880 0x80B3AB80 */ .word	0x440014D0
/* 001881 0x80B3AB84 */ .word	0x45001504
/* 001882 0x80B3AB88 */ .word	0x46001508
/* 001883 0x80B3AB8C */ .word	0x450014E0
/* 001884 0x80B3AB90 */ .word	0x46001520
/* 001885 0x80B3AB94 */ .word	0x4500152C
/* 001886 0x80B3AB98 */ .word	0x46001530
/* 001887 0x80B3AB9C */ .word	0x4500153C
/* 001888 0x80B3ABA0 */ .word	0x46001554
/* 001889 0x80B3ABA4 */ .word	0x45001580
/* 001890 0x80B3ABA8 */ .word	0x46001584
/* 001891 0x80B3ABAC */ .word	0x45001574
/* 001892 0x80B3ABB0 */ .word	0x4600159C
/* 001893 0x80B3ABB4 */ .word	0x450015A8
/* 001894 0x80B3ABB8 */ .word	0x460015AC
/* 001895 0x80B3ABBC */ .word	0x44001610
/* 001896 0x80B3ABC0 */ .word	0x4400164C
/* 001897 0x80B3ABC4 */ .word	0x450016A4
/* 001898 0x80B3ABC8 */ .word	0x460016AC
/* 001899 0x80B3ABCC */ .word	0x45001718
/* 001900 0x80B3ABD0 */ .word	0x46001720
/* 001901 0x80B3ABD4 */ .word	0x4500177C
/* 001902 0x80B3ABD8 */ .word	0x4600178C
/* 001903 0x80B3ABDC */ .word	0x450017A8
/* 001904 0x80B3ABE0 */ .word	0x460017B8
/* 001905 0x80B3ABE4 */ .word	0x45001794
/* 001906 0x80B3ABE8 */ .word	0x460017BC
/* 001907 0x80B3ABEC */ .word	0x450017D8
/* 001908 0x80B3ABF0 */ .word	0x460017DC
/* 001909 0x80B3ABF4 */ .word	0x450017EC
/* 001910 0x80B3ABF8 */ .word	0x460017F0
/* 001911 0x80B3ABFC */ .word	0x45001804
/* 001912 0x80B3AC00 */ .word	0x46001824
/* 001913 0x80B3AC04 */ .word	0x45001828
/* 001914 0x80B3AC08 */ .word	0x4600182C
/* 001915 0x80B3AC0C */ .word	0x45001834
/* 001916 0x80B3AC10 */ .word	0x46001838
/* 001917 0x80B3AC14 */ .word	0x440018D4
/* 001918 0x80B3AC18 */ .word	0x45001904
/* 001919 0x80B3AC1C */ .word	0x46001908
/* 001920 0x80B3AC20 */ .word	0x44001940
/* 001921 0x80B3AC24 */ .word	0x44001958
/* 001922 0x80B3AC28 */ .word	0x44001974
/* 001923 0x80B3AC2C */ .word	0x82000010
/* 001924 0x80B3AC30 */ .word	0x82000014
/* 001925 0x80B3AC34 */ .word	0x82000018
/* 001926 0x80B3AC38 */ .word	0x8200001C
/* 001927 0x80B3AC3C */ .word	0x82000050
/* 001928 0x80B3AC40 */ .word	0x00000000
/* 001929 0x80B3AC44 */ .word	0x00000000
/* 001930 0x80B3AC48 */ .word	0x00000000
glabel objSnowball2OverlayInfoOffset
/* 001931 0x80B3AC4C */ .word	0x00000260
