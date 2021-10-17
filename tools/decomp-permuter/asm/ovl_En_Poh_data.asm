.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel En_Poh_InitVars
/* 003036 0x80B2F660 */ .word	0x01F30500
/* 003037 0x80B2F664 */ .word	0x00001205
/* 003038 0x80B2F668 */ .word	0x01C30000
/* 003039 0x80B2F66C */ .word	0x00000418
/* 003040 0x80B2F670 */ .word	EnPoh_Init
/* 003041 0x80B2F674 */ .word	EnPoh_Destroy
/* 003042 0x80B2F678 */ .word	EnPoh_Update
/* 003043 0x80B2F67C */ .word	EnPoh_Draw
glabel D_80B2F680
/* 003044 0x80B2F680 */ .word	0x03000839
/* 003045 0x80B2F684 */ .word	0x10010000
/* 003046 0x80B2F688 */ .word	0x00000000
/* 003047 0x80B2F68C */ .word	0x00000000
/* 003048 0x80B2F690 */ .word	0x00000000
/* 003049 0x80B2F694 */ .word	0xF7CBFFFE
/* 003050 0x80B2F698 */ .word	0x00000000
/* 003051 0x80B2F69C */ .word	0x00050100
/* 003052 0x80B2F6A0 */ .word	0x00140028
/* 003053 0x80B2F6A4 */ .word	0x00140000
/* 003054 0x80B2F6A8 */ .word	0x00000000
glabel D_80B2F6AC
/* 003055 0x80B2F6AC */ .word	0x00000000
/* 003056 0x80B2F6B0 */ .word	0xF7CFFFFF
/* 003057 0x80B2F6B4 */ .word	0x00080000
/* 003058 0x80B2F6B8 */ .word	0x00000000
/* 003059 0x80B2F6BC */ .word	0x00000000
/* 003060 0x80B2F6C0 */ .word	0x01000100
/* 003061 0x80B2F6C4 */ .word	0x12000000
/* 003062 0x80B2F6C8 */ .word	0x05780000
/* 003063 0x80B2F6CC */ .word	0x000A0064
glabel D_80B2F6D0
/* 003064 0x80B2F6D0 */ .word	0x03110939
/* 003065 0x80B2F6D4 */ .word	0x10000000
/* 003066 0x80B2F6D8 */ .word	0x00000001
/* 003067 0x80B2F6DC */ .word	D_80B2F6AC
glabel D_80B2F6E0
/* 003068 0x80B2F6E0 */ .word	0xF0010001
/* 003069 0x80B2F6E4 */ .word	0x010100E0
/* 003070 0x80B2F6E8 */ .word	0x01010001
/* 003071 0x80B2F6EC */ .word	0x01420101
/* 003072 0x80B2F6F0 */ .word	0x01021000
/* 003073 0x80B2F6F4 */ .word	0x00000101
/* 003074 0x80B2F6F8 */ .word	0x01000000
/* 003075 0x80B2F6FC */ .word	0x00000001
glabel D_80B2F700
/* 003076 0x80B2F700 */ .word	0x03000019
/* 003077 0x80B2F704 */ .word	0x00323200
glabel D_80B2F708
/* 003078 0x80B2F708 */ .word	0x891F0044
/* 003079 0x80B2F70C */ .word	0x30540C80
glabel D_80B2F710
/* 003080 0x80B2F710 */ .word	0x00000000
/* 003081 0x80B2F714 */ .word	0x40400000
/* 003082 0x80B2F718 */ .word	0x00000000
glabel D_80B2F71C
/* 003083 0x80B2F71C */ .word	0xFFFFFFFF
/* 003084 0x80B2F720 */ .word	0x0405FFFF
/* 003085 0x80B2F724 */ .word	0xFF0001FF
/* 003086 0x80B2F728 */ .word	0xFFFFFFFF
/* 003087 0x80B2F72C */ .word	0x02FFFF03
/* 003088 0x80B2F730 */ .word	0xFF000000
glabel D_80B2F734
/* 003089 0x80B2F734 */ .word	0xC4160000
/* 003090 0x80B2F738 */ .word	0x43FA0000
/* 003091 0x80B2F73C */ .word	0x44D48000
/* 003092 0x80B2F740 */ .word	0xC4160000
/* 003093 0x80B2F744 */ .word	0x43FA0000
/* 003094 0x80B2F748 */ .word	0xC4D48000
/* 003095 0x80B2F74C */ .word	0x447A0000
/* 003096 0x80B2F750 */ .word	0x44D48000
/* 003097 0x80B2F754 */ .word	0x00000000
/* 003098 0x80B2F758 */ .word	0x00000000
/* 003099 0x80B2F75C */ .word	0x00000000
