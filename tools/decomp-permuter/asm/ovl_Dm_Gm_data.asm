.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel Dm_Gm_InitVars
/* 000868 0x80C250F0 */ .word	0x02AD0400
/* 000869 0x80C250F4 */ .word	0x00000009
/* 000870 0x80C250F8 */ .word	0x00E20000
/* 000871 0x80C250FC */ .word	0x000002D8
/* 000872 0x80C25100 */ .word	DmGm_Init
/* 000873 0x80C25104 */ .word	DmGm_Destroy
/* 000874 0x80C25108 */ .word	DmGm_Update
/* 000875 0x80C2510C */ .word	0x00000000
glabel D_80C25110
/* 000876 0x80C25110 */ .word	0x06007E08
/* 000877 0x80C25114 */ .word	0x3F800000
/* 000878 0x80C25118 */ .word	0x0000FFFF
/* 000879 0x80C2511C */ .word	0x00000000
/* 000880 0x80C25120 */ .word	0x060071E8
/* 000881 0x80C25124 */ .word	0x3F800000
/* 000882 0x80C25128 */ .word	0x0000FFFF
/* 000883 0x80C2512C */ .word	0x00000000
/* 000884 0x80C25130 */ .word	0x06006CC0
/* 000885 0x80C25134 */ .word	0x3F800000
/* 000886 0x80C25138 */ .word	0x0000FFFF
/* 000887 0x80C2513C */ .word	0x0000FFFC
/* 000888 0x80C25140 */ .word	0x06013E1C
/* 000889 0x80C25144 */ .word	0x3F800000
/* 000890 0x80C25148 */ .word	0x0000FFFF
/* 000891 0x80C2514C */ .word	0x0000FFFC
/* 000892 0x80C25150 */ .word	0x06007E3C
/* 000893 0x80C25154 */ .word	0x3F800000
/* 000894 0x80C25158 */ .word	0x0000FFFF
/* 000895 0x80C2515C */ .word	0x02000000
/* 000896 0x80C25160 */ .word	0x060088C0
/* 000897 0x80C25164 */ .word	0x3F800000
/* 000898 0x80C25168 */ .word	0x0000FFFF
/* 000899 0x80C2516C */ .word	0x00000000
/* 000900 0x80C25170 */ .word	0x060013C8
/* 000901 0x80C25174 */ .word	0x3F800000
/* 000902 0x80C25178 */ .word	0x0000FFFF
/* 000903 0x80C2517C */ .word	0x02000000
/* 000904 0x80C25180 */ .word	0x06002550
/* 000905 0x80C25184 */ .word	0x3F800000
/* 000906 0x80C25188 */ .word	0x0000FFFF
/* 000907 0x80C2518C */ .word	0x00000000
/* 000908 0x80C25190 */ .word	0x0600353C
/* 000909 0x80C25194 */ .word	0x3F800000
/* 000910 0x80C25198 */ .word	0x0000FFFF
/* 000911 0x80C2519C */ .word	0x02000000
/* 000912 0x80C251A0 */ .word	0x06004498
/* 000913 0x80C251A4 */ .word	0x3F800000
/* 000914 0x80C251A8 */ .word	0x0000FFFF
/* 000915 0x80C251AC */ .word	0x00000000
/* 000916 0x80C251B0 */ .word	0x060060B4
/* 000917 0x80C251B4 */ .word	0x3F800000
/* 000918 0x80C251B8 */ .word	0x0000FFFF
/* 000919 0x80C251BC */ .word	0x02000000
/* 000920 0x80C251C0 */ .word	0x0600041C
/* 000921 0x80C251C4 */ .word	0x3F800000
/* 000922 0x80C251C8 */ .word	0x0000FFFF
/* 000923 0x80C251CC */ .word	0x02000000
/* 000924 0x80C251D0 */ .word	0x06004A78
/* 000925 0x80C251D4 */ .word	0x3F800000
/* 000926 0x80C251D8 */ .word	0x0000FFFF
/* 000927 0x80C251DC */ .word	0x02000000
/* 000928 0x80C251E0 */ .word	0x0600506C
/* 000929 0x80C251E4 */ .word	0x3F800000
/* 000930 0x80C251E8 */ .word	0x0000FFFF
/* 000931 0x80C251EC */ .word	0x00000000
glabel D_80C251F0
/* 000932 0x80C251F0 */ .word	0x00000000
/* 000933 0x80C251F4 */ .word	0x00000000
/* 000934 0x80C251F8 */ .word	0x0000000C
/* 000935 0x80C251FC */ .word	0x00000002
/* 000936 0x80C25200 */ .word	0x00000004
/* 000937 0x80C25204 */ .word	0x00000006
/* 000938 0x80C25208 */ .word	0x00000008
/* 000939 0x80C2520C */ .word	0x0000000A
/* 000940 0x80C25210 */ .word	0x0000000B
/* 000941 0x80C25214 */ .word	0x00000003
glabel D_80C25218
/* 000942 0x80C25218 */ .word	0x43E10000
/* 000943 0x80C2521C */ .word	0x442F0000
/* 000944 0x80C25220 */ .word	0xC43E0000
glabel D_80C25224
/* 000945 0x80C25224 */ .word	0x238C0000
/* 000946 0x80C25228 */ .word	0xC0040000
glabel D_80C2522C
/* 000947 0x80C2522C */ .word	0x447A0000
/* 000948 0x80C25230 */ .word	0x00000000
/* 000949 0x80C25234 */ .word	0x00000000
glabel D_80C25238
/* 000950 0x80C25238 */ .word	0x0600E6E0
/* 000951 0x80C2523C */ .word	0x0600F7A0
/* 000952 0x80C25240 */ .word	0x060101A0
glabel D_80C25244
/* 000953 0x80C25244 */ .word	0x0600E1E0
/* 000954 0x80C25248 */ .word	0x0600EFA0
/* 000955 0x80C2524C */ .word	0x0600F3A0
/* 000956 0x80C25250 */ .word	0x0600EFA0
/* 000957 0x80C25254 */ .word	0x0600FDA0
/* 000958 0x80C25258 */ .word	0x0600F9A0
/* 000959 0x80C2525C */ .word	0x060103A0
