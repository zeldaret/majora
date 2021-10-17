.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel objEtceteraOverlayInfo
/* 000764 0x80A7C860 */ .word	0x00000B00
/* 000765 0x80A7C864 */ .word	0x000000B0
/* 000766 0x80A7C868 */ .word	0x00000040
/* 000767 0x80A7C86C */ .word	0x00000000
/* 000768 0x80A7C870 */ .word	0x00000046
glabel objEtceteraOverlayRelocations
/* 000769 0x80A7C874 */ .word	0x4500001C
/* 000770 0x80A7C878 */ .word	0x46000054
/* 000771 0x80A7C87C */ .word	0x450000AC
/* 000772 0x80A7C880 */ .word	0x460000BC
/* 000773 0x80A7C884 */ .word	0x450000D4
/* 000774 0x80A7C888 */ .word	0x460000D8
/* 000775 0x80A7C88C */ .word	0x450000F0
/* 000776 0x80A7C890 */ .word	0x460000F4
/* 000777 0x80A7C894 */ .word	0x4500016C
/* 000778 0x80A7C898 */ .word	0x46000184
/* 000779 0x80A7C89C */ .word	0x450001A0
/* 000780 0x80A7C8A0 */ .word	0x460001A8
/* 000781 0x80A7C8A4 */ .word	0x450001AC
/* 000782 0x80A7C8A8 */ .word	0x460001B0
/* 000783 0x80A7C8AC */ .word	0x450001D4
/* 000784 0x80A7C8B0 */ .word	0x460001D8
/* 000785 0x80A7C8B4 */ .word	0x450001FC
/* 000786 0x80A7C8B8 */ .word	0x46000204
/* 000787 0x80A7C8BC */ .word	0x45000270
/* 000788 0x80A7C8C0 */ .word	0x46000278
/* 000789 0x80A7C8C4 */ .word	0x45000274
/* 000790 0x80A7C8C8 */ .word	0x4600027C
/* 000791 0x80A7C8CC */ .word	0x45000320
/* 000792 0x80A7C8D0 */ .word	0x46000328
/* 000793 0x80A7C8D4 */ .word	0x45000324
/* 000794 0x80A7C8D8 */ .word	0x4600032C
/* 000795 0x80A7C8DC */ .word	0x45000348
/* 000796 0x80A7C8E0 */ .word	0x4600034C
/* 000797 0x80A7C8E4 */ .word	0x45000354
/* 000798 0x80A7C8E8 */ .word	0x4600035C
/* 000799 0x80A7C8EC */ .word	0x450003A4
/* 000800 0x80A7C8F0 */ .word	0x460003B8
/* 000801 0x80A7C8F4 */ .word	0x44000420
/* 000802 0x80A7C8F8 */ .word	0x4500041C
/* 000803 0x80A7C8FC */ .word	0x46000430
/* 000804 0x80A7C900 */ .word	0x440004A4
/* 000805 0x80A7C904 */ .word	0x440004D0
/* 000806 0x80A7C908 */ .word	0x440004DC
/* 000807 0x80A7C90C */ .word	0x4500054C
/* 000808 0x80A7C910 */ .word	0x46000554
/* 000809 0x80A7C914 */ .word	0x45000550
/* 000810 0x80A7C918 */ .word	0x46000558
/* 000811 0x80A7C91C */ .word	0x44000568
/* 000812 0x80A7C920 */ .word	0x450005CC
/* 000813 0x80A7C924 */ .word	0x460005D0
/* 000814 0x80A7C928 */ .word	0x450005D8
/* 000815 0x80A7C92C */ .word	0x460005E8
/* 000816 0x80A7C930 */ .word	0x45000604
/* 000817 0x80A7C934 */ .word	0x46000608
/* 000818 0x80A7C938 */ .word	0x45000620
/* 000819 0x80A7C93C */ .word	0x46000624
/* 000820 0x80A7C940 */ .word	0x4500062C
/* 000821 0x80A7C944 */ .word	0x46000640
/* 000822 0x80A7C948 */ .word	0x45000644
/* 000823 0x80A7C94C */ .word	0x46000648
/* 000824 0x80A7C950 */ .word	0x450006AC
/* 000825 0x80A7C954 */ .word	0x460006B4
/* 000826 0x80A7C958 */ .word	0x45000880
/* 000827 0x80A7C95C */ .word	0x46000888
/* 000828 0x80A7C960 */ .word	0x45000884
/* 000829 0x80A7C964 */ .word	0x4600088C
/* 000830 0x80A7C968 */ .word	0x450008A8
/* 000831 0x80A7C96C */ .word	0x460008AC
/* 000832 0x80A7C970 */ .word	0x45000918
/* 000833 0x80A7C974 */ .word	0x46000920
/* 000834 0x80A7C978 */ .word	0x4500091C
/* 000835 0x80A7C97C */ .word	0x46000924
/* 000836 0x80A7C980 */ .word	0x82000010
/* 000837 0x80A7C984 */ .word	0x82000014
/* 000838 0x80A7C988 */ .word	0x82000018
glabel objEtceteraOverlayInfoOffset
/* 000839 0x80A7C98C */ .word	0x00000130
