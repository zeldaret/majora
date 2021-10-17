.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel demoKankyoOverlayInfo
/* 002068 0x808D04A0 */ .word	0x00001F70
/* 002069 0x808D04A4 */ .word	0x00000030
/* 002070 0x808D04A8 */ .word	0x000000B0
/* 002071 0x808D04AC */ .word	0x00000000
/* 002072 0x808D04B0 */ .word	0x00000070
glabel demoKankyoOverlayRelocations
/* 002073 0x808D04B4 */ .word	0x450000D0
/* 002074 0x808D04B8 */ .word	0x460000D4
/* 002075 0x808D04BC */ .word	0x450000DC
/* 002076 0x808D04C0 */ .word	0x460000E8
/* 002077 0x808D04C4 */ .word	0x45000204
/* 002078 0x808D04C8 */ .word	0x46000208
/* 002079 0x808D04CC */ .word	0x45000220
/* 002080 0x808D04D0 */ .word	0x46000224
/* 002081 0x808D04D4 */ .word	0x450002B0
/* 002082 0x808D04D8 */ .word	0x460002B4
/* 002083 0x808D04DC */ .word	0x4500043C
/* 002084 0x808D04E0 */ .word	0x46000440
/* 002085 0x808D04E4 */ .word	0x45000478
/* 002086 0x808D04E8 */ .word	0x4600048C
/* 002087 0x808D04EC */ .word	0x450004D0
/* 002088 0x808D04F0 */ .word	0x460004D4
/* 002089 0x808D04F4 */ .word	0x450004F8
/* 002090 0x808D04F8 */ .word	0x460004FC
/* 002091 0x808D04FC */ .word	0x4500056C
/* 002092 0x808D0500 */ .word	0x460005A0
/* 002093 0x808D0504 */ .word	0x450005B0
/* 002094 0x808D0508 */ .word	0x460005B4
/* 002095 0x808D050C */ .word	0x450005BC
/* 002096 0x808D0510 */ .word	0x460005D0
/* 002097 0x808D0514 */ .word	0x450005E8
/* 002098 0x808D0518 */ .word	0x460005EC
/* 002099 0x808D051C */ .word	0x45000604
/* 002100 0x808D0520 */ .word	0x46000608
/* 002101 0x808D0524 */ .word	0x45000620
/* 002102 0x808D0528 */ .word	0x46000624
/* 002103 0x808D052C */ .word	0x45000644
/* 002104 0x808D0530 */ .word	0x46000648
/* 002105 0x808D0534 */ .word	0x45000660
/* 002106 0x808D0538 */ .word	0x46000664
/* 002107 0x808D053C */ .word	0x4500067C
/* 002108 0x808D0540 */ .word	0x46000680
/* 002109 0x808D0544 */ .word	0x450006A0
/* 002110 0x808D0548 */ .word	0x460006A4
/* 002111 0x808D054C */ .word	0x450006BC
/* 002112 0x808D0550 */ .word	0x460006C0
/* 002113 0x808D0554 */ .word	0x450006D8
/* 002114 0x808D0558 */ .word	0x460006DC
/* 002115 0x808D055C */ .word	0x45000718
/* 002116 0x808D0560 */ .word	0x4600071C
/* 002117 0x808D0564 */ .word	0x450008CC
/* 002118 0x808D0568 */ .word	0x460008D0
/* 002119 0x808D056C */ .word	0x4500096C
/* 002120 0x808D0570 */ .word	0x46000970
/* 002121 0x808D0574 */ .word	0x45000990
/* 002122 0x808D0578 */ .word	0x46000994
/* 002123 0x808D057C */ .word	0x45000C54
/* 002124 0x808D0580 */ .word	0x46000C5C
/* 002125 0x808D0584 */ .word	0x44000C64
/* 002126 0x808D0588 */ .word	0x45000E04
/* 002127 0x808D058C */ .word	0x46000E08
/* 002128 0x808D0590 */ .word	0x45000E20
/* 002129 0x808D0594 */ .word	0x46000E24
/* 002130 0x808D0598 */ .word	0x45000EB0
/* 002131 0x808D059C */ .word	0x46000EB4
/* 002132 0x808D05A0 */ .word	0x45000F88
/* 002133 0x808D05A4 */ .word	0x46000F8C
/* 002134 0x808D05A8 */ .word	0x45000FB0
/* 002135 0x808D05AC */ .word	0x46000FB4
/* 002136 0x808D05B0 */ .word	0x45001028
/* 002137 0x808D05B4 */ .word	0x4600105C
/* 002138 0x808D05B8 */ .word	0x4500106C
/* 002139 0x808D05BC */ .word	0x46001070
/* 002140 0x808D05C0 */ .word	0x45001078
/* 002141 0x808D05C4 */ .word	0x4600108C
/* 002142 0x808D05C8 */ .word	0x450010A4
/* 002143 0x808D05CC */ .word	0x460010A8
/* 002144 0x808D05D0 */ .word	0x450010C0
/* 002145 0x808D05D4 */ .word	0x460010C4
/* 002146 0x808D05D8 */ .word	0x450010DC
/* 002147 0x808D05DC */ .word	0x460010E0
/* 002148 0x808D05E0 */ .word	0x45001100
/* 002149 0x808D05E4 */ .word	0x46001104
/* 002150 0x808D05E8 */ .word	0x4500111C
/* 002151 0x808D05EC */ .word	0x46001120
/* 002152 0x808D05F0 */ .word	0x45001138
/* 002153 0x808D05F4 */ .word	0x4600113C
/* 002154 0x808D05F8 */ .word	0x4500115C
/* 002155 0x808D05FC */ .word	0x46001160
/* 002156 0x808D0600 */ .word	0x45001178
/* 002157 0x808D0604 */ .word	0x4600117C
/* 002158 0x808D0608 */ .word	0x45001194
/* 002159 0x808D060C */ .word	0x46001198
/* 002160 0x808D0610 */ .word	0x45001404
/* 002161 0x808D0614 */ .word	0x4600142C
/* 002162 0x808D0618 */ .word	0x45001434
/* 002163 0x808D061C */ .word	0x46001444
/* 002164 0x808D0620 */ .word	0x44001440
/* 002165 0x808D0624 */ .word	0x4500144C
/* 002166 0x808D0628 */ .word	0x46001454
/* 002167 0x808D062C */ .word	0x4500140C
/* 002168 0x808D0630 */ .word	0x4600147C
/* 002169 0x808D0634 */ .word	0x45001480
/* 002170 0x808D0638 */ .word	0x46001488
/* 002171 0x808D063C */ .word	0x4400148C
/* 002172 0x808D0640 */ .word	0x450014A0
/* 002173 0x808D0644 */ .word	0x460014A8
/* 002174 0x808D0648 */ .word	0x440014AC
/* 002175 0x808D064C */ .word	0x45001900
/* 002176 0x808D0650 */ .word	0x46001904
/* 002177 0x808D0654 */ .word	0x45001E24
/* 002178 0x808D0658 */ .word	0x46001E28
/* 002179 0x808D065C */ .word	0x44001F3C
/* 002180 0x808D0660 */ .word	0x44001F4C
/* 002181 0x808D0664 */ .word	0x82000018
/* 002182 0x808D0668 */ .word	0x8200001C
/* 002183 0x808D066C */ .word	0x82000020
/* 002184 0x808D0670 */ .word	0x82000024
/* 002185 0x808D0674 */ .word	0x00000000
/* 002186 0x808D0678 */ .word	0x00000000
glabel demoKankyoOverlayInfoOffset
/* 002187 0x808D067C */ .word	0x000001E0
