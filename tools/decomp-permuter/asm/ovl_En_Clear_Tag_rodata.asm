.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel enClearTagOverlayInfo
/* 005976 0x8094DCC0 */ .word	0x00002DE0
/* 005977 0x8094DCC4 */ .word	0x00002F20
/* 005978 0x8094DCC8 */ .word	0x00000060
/* 005979 0x8094DCCC */ .word	0x00000000
/* 005980 0x8094DCD0 */ .word	0x0000007F
glabel enClearTagOverlayRelocations
/* 005981 0x8094DCD4 */ .word	0x45000034
/* 005982 0x8094DCD8 */ .word	0x46000088
/* 005983 0x8094DCDC */ .word	0x45000090
/* 005984 0x8094DCE0 */ .word	0x46000098
/* 005985 0x8094DCE4 */ .word	0x450001C8
/* 005986 0x8094DCE8 */ .word	0x460001D0
/* 005987 0x8094DCEC */ .word	0x4500035C
/* 005988 0x8094DCF0 */ .word	0x46000360
/* 005989 0x8094DCF4 */ .word	0x450003E4
/* 005990 0x8094DCF8 */ .word	0x46000444
/* 005991 0x8094DCFC */ .word	0x45000464
/* 005992 0x8094DD00 */ .word	0x46000468
/* 005993 0x8094DD04 */ .word	0x450005B0
/* 005994 0x8094DD08 */ .word	0x460005B4
/* 005995 0x8094DD0C */ .word	0x450009B0
/* 005996 0x8094DD10 */ .word	0x460009BC
/* 005997 0x8094DD14 */ .word	0x450009C0
/* 005998 0x8094DD18 */ .word	0x460009D8
/* 005999 0x8094DD1C */ .word	0x45000A68
/* 006000 0x8094DD20 */ .word	0x46000A6C
/* 006001 0x8094DD24 */ .word	0x45000B30
/* 006002 0x8094DD28 */ .word	0x46000B3C
/* 006003 0x8094DD2C */ .word	0x45000BC0
/* 006004 0x8094DD30 */ .word	0x46000C20
/* 006005 0x8094DD34 */ .word	0x44000D0C
/* 006006 0x8094DD38 */ .word	0x45000D54
/* 006007 0x8094DD3C */ .word	0x46000D58
/* 006008 0x8094DD40 */ .word	0x45000D5C
/* 006009 0x8094DD44 */ .word	0x46000D78
/* 006010 0x8094DD48 */ .word	0x45000D60
/* 006011 0x8094DD4C */ .word	0x46000D74
/* 006012 0x8094DD50 */ .word	0x45000D64
/* 006013 0x8094DD54 */ .word	0x46000D70
/* 006014 0x8094DD58 */ .word	0x45000D68
/* 006015 0x8094DD5C */ .word	0x46000D6C
/* 006016 0x8094DD60 */ .word	0x44000E78
/* 006017 0x8094DD64 */ .word	0x45000F08
/* 006018 0x8094DD68 */ .word	0x46000F3C
/* 006019 0x8094DD6C */ .word	0x44000F38
/* 006020 0x8094DD70 */ .word	0x45000F78
/* 006021 0x8094DD74 */ .word	0x46000F94
/* 006022 0x8094DD78 */ .word	0x44000F90
/* 006023 0x8094DD7C */ .word	0x45000FA4
/* 006024 0x8094DD80 */ .word	0x46000FA8
/* 006025 0x8094DD84 */ .word	0x44000FCC
/* 006026 0x8094DD88 */ .word	0x44000FEC
/* 006027 0x8094DD8C */ .word	0x44001014
/* 006028 0x8094DD90 */ .word	0x4500102C
/* 006029 0x8094DD94 */ .word	0x46001030
/* 006030 0x8094DD98 */ .word	0x4500103C
/* 006031 0x8094DD9C */ .word	0x4600104C
/* 006032 0x8094DDA0 */ .word	0x4400113C
/* 006033 0x8094DDA4 */ .word	0x45001184
/* 006034 0x8094DDA8 */ .word	0x4600118C
/* 006035 0x8094DDAC */ .word	0x45001190
/* 006036 0x8094DDB0 */ .word	0x460011B4
/* 006037 0x8094DDB4 */ .word	0x45001198
/* 006038 0x8094DDB8 */ .word	0x460011AC
/* 006039 0x8094DDBC */ .word	0x45001194
/* 006040 0x8094DDC0 */ .word	0x460011B0
/* 006041 0x8094DDC4 */ .word	0x4500119C
/* 006042 0x8094DDC8 */ .word	0x460011A8
/* 006043 0x8094DDCC */ .word	0x440012A8
/* 006044 0x8094DDD0 */ .word	0x440012CC
/* 006045 0x8094DDD4 */ .word	0x440012DC
/* 006046 0x8094DDD8 */ .word	0x450013C8
/* 006047 0x8094DDDC */ .word	0x460013D4
/* 006048 0x8094DDE0 */ .word	0x4500140C
/* 006049 0x8094DDE4 */ .word	0x4600142C
/* 006050 0x8094DDE8 */ .word	0x45001508
/* 006051 0x8094DDEC */ .word	0x46001530
/* 006052 0x8094DDF0 */ .word	0x44001634
/* 006053 0x8094DDF4 */ .word	0x44001650
/* 006054 0x8094DDF8 */ .word	0x44001680
/* 006055 0x8094DDFC */ .word	0x450016D0
/* 006056 0x8094DE00 */ .word	0x460016D4
/* 006057 0x8094DE04 */ .word	0x45001878
/* 006058 0x8094DE08 */ .word	0x46001888
/* 006059 0x8094DE0C */ .word	0x450018FC
/* 006060 0x8094DE10 */ .word	0x46001900
/* 006061 0x8094DE14 */ .word	0x45001B10
/* 006062 0x8094DE18 */ .word	0x46001B18
/* 006063 0x8094DE1C */ .word	0x45001B1C
/* 006064 0x8094DE20 */ .word	0x46001B20
/* 006065 0x8094DE24 */ .word	0x45001CFC
/* 006066 0x8094DE28 */ .word	0x46001D04
/* 006067 0x8094DE2C */ .word	0x45001D0C
/* 006068 0x8094DE30 */ .word	0x46001D14
/* 006069 0x8094DE34 */ .word	0x45001F34
/* 006070 0x8094DE38 */ .word	0x46001F38
/* 006071 0x8094DE3C */ .word	0x45001F50
/* 006072 0x8094DE40 */ .word	0x46001F58
/* 006073 0x8094DE44 */ .word	0x450020AC
/* 006074 0x8094DE48 */ .word	0x460020B0
/* 006075 0x8094DE4C */ .word	0x450020BC
/* 006076 0x8094DE50 */ .word	0x460020C0
/* 006077 0x8094DE54 */ .word	0x45002320
/* 006078 0x8094DE58 */ .word	0x46002324
/* 006079 0x8094DE5C */ .word	0x45002330
/* 006080 0x8094DE60 */ .word	0x46002334
/* 006081 0x8094DE64 */ .word	0x450024C4
/* 006082 0x8094DE68 */ .word	0x460024DC
/* 006083 0x8094DE6C */ .word	0x45002600
/* 006084 0x8094DE70 */ .word	0x46002604
/* 006085 0x8094DE74 */ .word	0x45002630
/* 006086 0x8094DE78 */ .word	0x46002638
/* 006087 0x8094DE7C */ .word	0x4500263C
/* 006088 0x8094DE80 */ .word	0x46002640
/* 006089 0x8094DE84 */ .word	0x45002B58
/* 006090 0x8094DE88 */ .word	0x46002B60
/* 006091 0x8094DE8C */ .word	0x45002BF0
/* 006092 0x8094DE90 */ .word	0x46002C00
/* 006093 0x8094DE94 */ .word	0x82000010
/* 006094 0x8094DE98 */ .word	0x82000014
/* 006095 0x8094DE9C */ .word	0x82000018
/* 006096 0x8094DEA0 */ .word	0x8200001C
/* 006097 0x8094DEA4 */ .word	0x8200036C
/* 006098 0x8094DEA8 */ .word	0x820003D4
/* 006099 0x8094DEAC */ .word	0x82000A34
/* 006100 0x8094DEB0 */ .word	0x82000A6C
/* 006101 0x8094DEB4 */ .word	0x82000ACC
/* 006102 0x8094DEB8 */ .word	0x82001B3C
/* 006103 0x8094DEBC */ .word	0x82001B8C
/* 006104 0x8094DEC0 */ .word	0x82001DEC
/* 006105 0x8094DEC4 */ .word	0x82001E44
/* 006106 0x8094DEC8 */ .word	0x82002EB4
/* 006107 0x8094DECC */ .word	0x82002F0C
/* 006108 0x8094DED0 */ .word	0x00000000
/* 006109 0x8094DED4 */ .word	0x00000000
/* 006110 0x8094DED8 */ .word	0x00000000
glabel enClearTagOverlayInfoOffset
/* 006111 0x8094DEDC */ .word	0x00000220
