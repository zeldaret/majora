.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel En_Railgibud_InitVars
/* 002856 0x80BA80A0 */ .word	0x02350500
/* 002857 0x80BA80A4 */ .word	0x00000415
/* 002858 0x80BA80A8 */ .word	0x00750000
/* 002859 0x80BA80AC */ .word	0x00000408
/* 002860 0x80BA80B0 */ .word	EnRailgibud_Init
/* 002861 0x80BA80B4 */ .word	EnRailgibud_Destroy
/* 002862 0x80BA80B8 */ .word	EnRailgibud_Update
/* 002863 0x80BA80BC */ .word	EnRailgibud_Draw
glabel D_80BA80C0
/* 002864 0x80BA80C0 */ .word	0x06006678
/* 002865 0x80BA80C4 */ .word	0x3F800000
/* 002866 0x80BA80C8 */ .word	0x00000000
/* 002867 0x80BA80CC */ .word	0x00000000
/* 002868 0x80BA80D0 */ .word	0x00000000
/* 002869 0x80BA80D4 */ .word	0xC1000000
/* 002870 0x80BA80D8 */ .word	0x06006B08
/* 002871 0x80BA80DC */ .word	0x3F000000
/* 002872 0x80BA80E0 */ .word	0x00000000
/* 002873 0x80BA80E4 */ .word	0x00000000
/* 002874 0x80BA80E8 */ .word	0x03000000
/* 002875 0x80BA80EC */ .word	0x00000000
/* 002876 0x80BA80F0 */ .word	0x06006EEC
/* 002877 0x80BA80F4 */ .word	0x3F800000
/* 002878 0x80BA80F8 */ .word	0x00000000
/* 002879 0x80BA80FC */ .word	0x00000000
/* 002880 0x80BA8100 */ .word	0x02000000
/* 002881 0x80BA8104 */ .word	0xC1000000
/* 002882 0x80BA8108 */ .word	0x060073A4
/* 002883 0x80BA810C */ .word	0x00000000
/* 002884 0x80BA8110 */ .word	0x00000000
/* 002885 0x80BA8114 */ .word	0x00000000
/* 002886 0x80BA8118 */ .word	0x02000000
/* 002887 0x80BA811C */ .word	0xC1000000
/* 002888 0x80BA8120 */ .word	0x06007BBC
/* 002889 0x80BA8124 */ .word	0x3F800000
/* 002890 0x80BA8128 */ .word	0x00000000
/* 002891 0x80BA812C */ .word	0x00000000
/* 002892 0x80BA8130 */ .word	0x02000000
/* 002893 0x80BA8134 */ .word	0xC1000000
/* 002894 0x80BA8138 */ .word	0x060081A8
/* 002895 0x80BA813C */ .word	0x3F800000
/* 002896 0x80BA8140 */ .word	0x00000000
/* 002897 0x80BA8144 */ .word	0x00000000
/* 002898 0x80BA8148 */ .word	0x00000000
/* 002899 0x80BA814C */ .word	0xC1000000
/* 002900 0x80BA8150 */ .word	0x06009298
/* 002901 0x80BA8154 */ .word	0x3F800000
/* 002902 0x80BA8158 */ .word	0x00000000
/* 002903 0x80BA815C */ .word	0x00000000
/* 002904 0x80BA8160 */ .word	0x02000000
/* 002905 0x80BA8164 */ .word	0xC1000000
/* 002906 0x80BA8168 */ .word	0x06009900
/* 002907 0x80BA816C */ .word	0x3F800000
/* 002908 0x80BA8170 */ .word	0x00000000
/* 002909 0x80BA8174 */ .word	0x00000000
/* 002910 0x80BA8178 */ .word	0x02000000
/* 002911 0x80BA817C */ .word	0xC1000000
/* 002912 0x80BA8180 */ .word	0x0600A450
/* 002913 0x80BA8184 */ .word	0x3F800000
/* 002914 0x80BA8188 */ .word	0x00000000
/* 002915 0x80BA818C */ .word	0x00000000
/* 002916 0x80BA8190 */ .word	0x02000000
/* 002917 0x80BA8194 */ .word	0xC1000000
/* 002918 0x80BA8198 */ .word	0x0600ABE0
/* 002919 0x80BA819C */ .word	0x3F800000
/* 002920 0x80BA81A0 */ .word	0x00000000
/* 002921 0x80BA81A4 */ .word	0x00000000
/* 002922 0x80BA81A8 */ .word	0x00000000
/* 002923 0x80BA81AC */ .word	0xC1000000
/* 002924 0x80BA81B0 */ .word	0x060113EC
/* 002925 0x80BA81B4 */ .word	0x3ECCCCCD
/* 002926 0x80BA81B8 */ .word	0x00000000
/* 002927 0x80BA81BC */ .word	0x00000000
/* 002928 0x80BA81C0 */ .word	0x01000000
/* 002929 0x80BA81C4 */ .word	0xC1000000
/* 002930 0x80BA81C8 */ .word	0x0601216C
/* 002931 0x80BA81CC */ .word	0x3F800000
/* 002932 0x80BA81D0 */ .word	0x00000000
/* 002933 0x80BA81D4 */ .word	0x00000000
/* 002934 0x80BA81D8 */ .word	0x00000000
/* 002935 0x80BA81DC */ .word	0xC1000000
/* 002936 0x80BA81E0 */ .word	0x060118D8
/* 002937 0x80BA81E4 */ .word	0x3F800000
/* 002938 0x80BA81E8 */ .word	0x00000000
/* 002939 0x80BA81EC */ .word	0x00000000
/* 002940 0x80BA81F0 */ .word	0x00000000
/* 002941 0x80BA81F4 */ .word	0xC1000000
/* 002942 0x80BA81F8 */ .word	0x06011DB8
/* 002943 0x80BA81FC */ .word	0x3F800000
/* 002944 0x80BA8200 */ .word	0x00000000
/* 002945 0x80BA8204 */ .word	0x00000000
/* 002946 0x80BA8208 */ .word	0x00000000
/* 002947 0x80BA820C */ .word	0xC1000000
/* 002948 0x80BA8210 */ .word	0x0600A450
/* 002949 0x80BA8214 */ .word	0x40400000
/* 002950 0x80BA8218 */ .word	0x00000000
/* 002951 0x80BA821C */ .word	0x00000000
/* 002952 0x80BA8220 */ .word	0x02000000
/* 002953 0x80BA8224 */ .word	0xC0C00000
/* 002954 0x80BA8228 */ .word	0x06005DF4
/* 002955 0x80BA822C */ .word	0x3F800000
/* 002956 0x80BA8230 */ .word	0x00000000
/* 002957 0x80BA8234 */ .word	0x00000000
/* 002958 0x80BA8238 */ .word	0x02000000
/* 002959 0x80BA823C */ .word	0xC1000000
/* 002960 0x80BA8240 */ .word	0x060061E4
/* 002961 0x80BA8244 */ .word	0x3F800000
/* 002962 0x80BA8248 */ .word	0x00000000
/* 002963 0x80BA824C */ .word	0x00000000
/* 002964 0x80BA8250 */ .word	0x00000000
/* 002965 0x80BA8254 */ .word	0xC1000000
/* 002966 0x80BA8258 */ .word	0x06001600
/* 002967 0x80BA825C */ .word	0x3F800000
/* 002968 0x80BA8260 */ .word	0x00000000
/* 002969 0x80BA8264 */ .word	0x00000000
/* 002970 0x80BA8268 */ .word	0x00000000
/* 002971 0x80BA826C */ .word	0xC1000000
/* 002972 0x80BA8270 */ .word	0x060009C4
/* 002973 0x80BA8274 */ .word	0x3F800000
/* 002974 0x80BA8278 */ .word	0x00000000
/* 002975 0x80BA827C */ .word	0x00000000
/* 002976 0x80BA8280 */ .word	0x02000000
/* 002977 0x80BA8284 */ .word	0xC1000000
/* 002978 0x80BA8288 */ .word	0x06000F1C
/* 002979 0x80BA828C */ .word	0x3F800000
/* 002980 0x80BA8290 */ .word	0x00000000
/* 002981 0x80BA8294 */ .word	0x00000000
/* 002982 0x80BA8298 */ .word	0x00000000
/* 002983 0x80BA829C */ .word	0xC1000000
glabel D_80BA82A0
/* 002984 0x80BA82A0 */ .word	0x00000939
/* 002985 0x80BA82A4 */ .word	0x10010000
/* 002986 0x80BA82A8 */ .word	0x01000000
/* 002987 0x80BA82AC */ .word	0x00000000
/* 002988 0x80BA82B0 */ .word	0x00000000
/* 002989 0x80BA82B4 */ .word	0xF7EFFFFF
/* 002990 0x80BA82B8 */ .word	0x00000000
/* 002991 0x80BA82BC */ .word	0x00050100
/* 002992 0x80BA82C0 */ .word	0x00140046
/* 002993 0x80BA82C4 */ .word	0x00000000
/* 002994 0x80BA82C8 */ .word	0x00000000
glabel D_80BA82CC
/* 002995 0x80BA82CC */ .word	0x00F200F1
/* 002996 0x80BA82D0 */ .word	0xD0D0F2D0
/* 002997 0x80BA82D4 */ .word	0xF1F1F121
/* 002998 0x80BA82D8 */ .word	0xD042F110
/* 002999 0x80BA82DC */ .word	0xD0F200C0
/* 003000 0x80BA82E0 */ .word	0x00E0F1F1
/* 003001 0x80BA82E4 */ .word	0xF1000000
/* 003002 0x80BA82E8 */ .word	0x000000F1
glabel D_80BA82EC
/* 003003 0x80BA82EC */ .word	0x08000000
/* 003004 0x80BA82F0 */ .word	0x00000000
/* 003005 0x80BA82F4 */ .word	0xFF000000
glabel D_80BA82F8
/* 003006 0x80BA82F8 */ .word	0x00000000
glabel D_80BA82FC
/* 003007 0x80BA82FC */ .word	0xB05407D0
/* 003008 0x80BA8300 */ .word	0xC858000A
/* 003009 0x80BA8304 */ .word	0x3874F254
glabel D_80BA8308
/* 003010 0x80BA8308 */ .word	0x00000000
/* 003011 0x80BA830C */ .word	0x41000000
/* 003012 0x80BA8310 */ .word	0x00000000
glabel D_80BA8314
/* 003013 0x80BA8314 */ .word	0x00000000
/* 003014 0x80BA8318 */ .word	0xBFC00000
/* 003015 0x80BA831C */ .word	0x00000000
glabel D_80BA8320
/* 003016 0x80BA8320 */ .word	0x00000000
/* 003017 0x80BA8324 */ .word	0x3E99999A
/* 003018 0x80BA8328 */ .word	0x00000000
/* 003019 0x80BA832C */ .word	0x00000000
