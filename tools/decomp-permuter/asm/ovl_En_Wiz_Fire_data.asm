.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel D_80A4C1C0
/* 002760 0x80A4C1C0 */ .word	0x00000000
glabel En_Wiz_Fire_InitVars
/* 002761 0x80A4C1C4 */ .word	0x015F0500
/* 002762 0x80A4C1C8 */ .word	0x08000015
/* 002763 0x80A4C1CC */ .word	0x01780000
/* 002764 0x80A4C1D0 */ .word	0x00002AF4
/* 002765 0x80A4C1D4 */ .word	EnWizFire_Init
/* 002766 0x80A4C1D8 */ .word	EnWizFire_Destroy
/* 002767 0x80A4C1DC */ .word	EnWizFire_Update
/* 002768 0x80A4C1E0 */ .word	EnWizFire_Draw
glabel D_80A4C1E4
/* 002769 0x80A4C1E4 */ .word	0x0A110900
/* 002770 0x80A4C1E8 */ .word	0x10010000
/* 002771 0x80A4C1EC */ .word	0x00000000
/* 002772 0x80A4C1F0 */ .word	0xF7CFFFFF
/* 002773 0x80A4C1F4 */ .word	0x09100000
/* 002774 0x80A4C1F8 */ .word	0x01001202
/* 002775 0x80A4C1FC */ .word	0x00000000
/* 002776 0x80A4C200 */ .word	0x01010000
/* 002777 0x80A4C204 */ .word	0x00000000
/* 002778 0x80A4C208 */ .word	0x00000000
/* 002779 0x80A4C20C */ .word	0x00000000
glabel D_80A4C210
/* 002780 0x80A4C210 */ .word	0x00000000
/* 002781 0x80A4C214 */ .word	0x00000000
/* 002782 0x80A4C218 */ .word	0x00000000
glabel D_80A4C21C
/* 002783 0x80A4C21C */ .word	0x00000000
/* 002784 0x80A4C220 */ .word	0x00000000
/* 002785 0x80A4C224 */ .word	0x00000000
glabel D_80A4C228
/* 002786 0x80A4C228 */ .word	0x00000000
/* 002787 0x80A4C22C */ .word	0x00000000
/* 002788 0x80A4C230 */ .word	0x00000000
glabel D_80A4C234
/* 002789 0x80A4C234 */ .word	0x642828B4
/* 002790 0x80A4C238 */ .word	0x78509B50
/* 002791 0x80A4C23C */ .word	0x507D1400
/* 002792 0x80A4C240 */ .word	0x000000C8
/* 002793 0x80A4C244 */ .word	0xFAFA64FA
/* 002794 0x80A4C248 */ .word	0xFAE1FFEB
glabel D_80A4C24C
/* 002795 0x80A4C24C */ .word	0xFAFAFAFF
glabel D_80A4C250
/* 002796 0x80A4C250 */ .word	0xB4B4B4FF
/* 002797 0x80A4C254 */ .word	0x00000000
/* 002798 0x80A4C258 */ .word	0x00000000
/* 002799 0x80A4C25C */ .word	0x00000000
