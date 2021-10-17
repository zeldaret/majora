.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel enSth2OverlayInfo
/* 002772 0x80BFA030 */ .word	0x00000440
/* 002773 0x80BFA034 */ .word	0x00002710
/* 002774 0x80BFA038 */ .word	0x00000000
/* 002775 0x80BFA03C */ .word	0x00000000
/* 002776 0x80BFA040 */ .word	0x0000002C
glabel enSth2OverlayRelocations
/* 002777 0x80BFA044 */ .word	0x45000060
/* 002778 0x80BFA048 */ .word	0x46000064
/* 002779 0x80BFA04C */ .word	0x4500013C
/* 002780 0x80BFA050 */ .word	0x46000158
/* 002781 0x80BFA054 */ .word	0x4500016C
/* 002782 0x80BFA058 */ .word	0x46000170
/* 002783 0x80BFA05C */ .word	0x4500017C
/* 002784 0x80BFA060 */ .word	0x46000184
/* 002785 0x80BFA064 */ .word	0x45000180
/* 002786 0x80BFA068 */ .word	0x46000188
/* 002787 0x80BFA06C */ .word	0x450001E4
/* 002788 0x80BFA070 */ .word	0x460001E8
/* 002789 0x80BFA074 */ .word	0x450002E8
/* 002790 0x80BFA078 */ .word	0x460002F0
/* 002791 0x80BFA07C */ .word	0x4500030C
/* 002792 0x80BFA080 */ .word	0x46000310
/* 002793 0x80BFA084 */ .word	0x45000354
/* 002794 0x80BFA088 */ .word	0x4600035C
/* 002795 0x80BFA08C */ .word	0x450003F0
/* 002796 0x80BFA090 */ .word	0x4600040C
/* 002797 0x80BFA094 */ .word	0x45000404
/* 002798 0x80BFA098 */ .word	0x46000408
/* 002799 0x80BFA09C */ .word	0x82000010
/* 002800 0x80BFA0A0 */ .word	0x82000014
/* 002801 0x80BFA0A4 */ .word	0x82000018
/* 002802 0x80BFA0A8 */ .word	0x82001C5C
/* 002803 0x80BFA0AC */ .word	0x82001CA4
/* 002804 0x80BFA0B0 */ .word	0x82001CDC
/* 002805 0x80BFA0B4 */ .word	0x82001D14
/* 002806 0x80BFA0B8 */ .word	0x82001D54
/* 002807 0x80BFA0BC */ .word	0x82001D8C
/* 002808 0x80BFA0C0 */ .word	0x82001DA4
/* 002809 0x80BFA0C4 */ .word	0x82001DDC
/* 002810 0x80BFA0C8 */ .word	0x82001DF4
/* 002811 0x80BFA0CC */ .word	0x82001E2C
/* 002812 0x80BFA0D0 */ .word	0x82001EA4
/* 002813 0x80BFA0D4 */ .word	0x82001ED4
/* 002814 0x80BFA0D8 */ .word	0x82001F0C
/* 002815 0x80BFA0DC */ .word	0x82001F7C
/* 002816 0x80BFA0E0 */ .word	0x82001FC4
/* 002817 0x80BFA0E4 */ .word	0x82002004
/* 002818 0x80BFA0E8 */ .word	0x82002084
/* 002819 0x80BFA0EC */ .word	0x820026E4
/* 002820 0x80BFA0F0 */ .word	0x820026E8
/* 002821 0x80BFA0F4 */ .word	0x00000000
/* 002822 0x80BFA0F8 */ .word	0x00000000
glabel enSth2OverlayInfoOffset
/* 002823 0x80BFA0FC */ .word	0x000000D0
