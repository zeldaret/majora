.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel En_Neo_Reeba_InitVars
/* 001812 0x80B7E4E0 */ .word	0x02160500
/* 001813 0x80B7E4E4 */ .word	0x00000205
/* 001814 0x80B7E4E8 */ .word	0x02010000
/* 001815 0x80B7E4EC */ .word	0x00000314
/* 001816 0x80B7E4F0 */ .word	EnNeoReeba_Init
/* 001817 0x80B7E4F4 */ .word	EnNeoReeba_Destroy
/* 001818 0x80B7E4F8 */ .word	EnNeoReeba_Update
/* 001819 0x80B7E4FC */ .word	EnNeoReeba_Draw
glabel D_80B7E500
/* 001820 0x80B7E500 */ .word	0x00E1F1F1
/* 001821 0x80B7E504 */ .word	0xE1E1F1C0
/* 001822 0x80B7E508 */ .word	0xF1F1F122
/* 001823 0x80B7E50C */ .word	0x3242F110
/* 001824 0x80B7E510 */ .word	0xE1F200D0
/* 001825 0x80B7E514 */ .word	0x0000F1F1
/* 001826 0x80B7E518 */ .word	0xF1000000
/* 001827 0x80B7E51C */ .word	0x000000F1
glabel D_80B7E520
/* 001828 0x80B7E520 */ .word	0x05110939
/* 001829 0x80B7E524 */ .word	0x10010000
/* 001830 0x80B7E528 */ .word	0x00000000
/* 001831 0x80B7E52C */ .word	0xF7CFFFFF
/* 001832 0x80B7E530 */ .word	0x08040000
/* 001833 0x80B7E534 */ .word	0xF7CFFFFF
/* 001834 0x80B7E538 */ .word	0x00000000
/* 001835 0x80B7E53C */ .word	0x01050100
/* 001836 0x80B7E540 */ .word	0x0012001E
/* 001837 0x80B7E544 */ .word	0x00000000
/* 001838 0x80B7E548 */ .word	0x00000000
glabel D_80B7E54C
/* 001839 0x80B7E54C */ .word	0x3D23D70A
/* 001840 0x80B7E550 */ .word	0x3D23D70A
/* 001841 0x80B7E554 */ .word	0x3D1FBE77
/* 001842 0x80B7E558 */ .word	0x3D2C0831
/* 001843 0x80B7E55C */ .word	0x3D3851EC
/* 001844 0x80B7E560 */ .word	0x3D3020C5
/* 001845 0x80B7E564 */ .word	0x3D23D70A
/* 001846 0x80B7E568 */ .word	0x3D0F5C29
/* 001847 0x80B7E56C */ .word	0x3CF5C28F
/* 001848 0x80B7E570 */ .word	0x3D072B02
/* 001849 0x80B7E574 */ .word	0x3D23D70A
glabel D_80B7E578
/* 001850 0x80B7E578 */ .word	0x3D23D70A
/* 001851 0x80B7E57C */ .word	0x3D23D70A
/* 001852 0x80B7E580 */ .word	0x3D27EF9E
/* 001853 0x80B7E584 */ .word	0x3D1BA5E3
/* 001854 0x80B7E588 */ .word	0x3D0F5C29
/* 001855 0x80B7E58C */ .word	0x3D178D50
/* 001856 0x80B7E590 */ .word	0x3D23D70A
/* 001857 0x80B7E594 */ .word	0x3D3851EC
/* 001858 0x80B7E598 */ .word	0x3D4CCCCD
/* 001859 0x80B7E59C */ .word	0x3D408312
/* 001860 0x80B7E5A0 */ .word	0x3D23D70A
glabel D_80B7E5A4
/* 001861 0x80B7E5A4 */ .word	0x00000000
/* 001862 0x80B7E5A8 */ .word	0x00000000
/* 001863 0x80B7E5AC */ .word	0x00000000
glabel D_80B7E5B0
/* 001864 0x80B7E5B0 */ .word	0x00000000
/* 001865 0x80B7E5B4 */ .word	0x40800000
/* 001866 0x80B7E5B8 */ .word	0x00000000
glabel D_80B7E5BC
/* 001867 0x80B7E5BC */ .word	0xAAFFFFFF
glabel D_80B7E5C0
/* 001868 0x80B7E5C0 */ .word	0xC8C8FFFF
glabel D_80B7E5C4
/* 001869 0x80B7E5C4 */ .word	0x00000000
/* 001870 0x80B7E5C8 */ .word	0xBF800000
/* 001871 0x80B7E5CC */ .word	0x00000000
