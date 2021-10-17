.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel osContInit
/* 009920 0x80089B60 3C028009 */ lui	$v0, %hi(D_80097E40)
/* 009921 0x80089B64 24427E40 */ addiu	$v0, $v0, %lo(D_80097E40)
/* 009922 0x80089B68 8C4E0000 */ lw	$t6, 0X0($v0)
/* 009923 0x80089B6C 27BDFF90 */ addiu	$sp, $sp, -0X70
/* 009924 0x80089B70 AFBF0024 */ sw	$ra, 0X24($sp)
/* 009925 0x80089B74 AFA40070 */ sw	$a0, 0X70($sp)
/* 009926 0x80089B78 AFA50074 */ sw	$a1, 0X74($sp)
/* 009927 0x80089B7C 11C00003 */ beqz	$t6, .L80089B8C
/* 009928 0x80089B80 AFA60078 */ sw	$a2, 0X78($sp)
/* 009929 0x80089B84 10000049 */ b	.L80089CAC
/* 009930 0x80089B88 00001025 */ move	$v0, $zero
.L80089B8C:
/* 009931 0x80089B8C 240F0001 */ li	$t7, 0X1
/* 009932 0x80089B90 0C024108 */ jal	osGetTime
/* 009933 0x80089B94 AC4F0000 */ sw	$t7, 0X0($v0)
/* 009934 0x80089B98 AFA20060 */ sw	$v0, 0X60($sp)
/* 009935 0x80089B9C 14400020 */ bnez	$v0, .L80089C20
/* 009936 0x80089BA0 AFA30064 */ sw	$v1, 0X64($sp)
/* 009937 0x80089BA4 3C010165 */ lui	$at, 0x0165
/* 009938 0x80089BA8 3421A0BC */ ori	$at, $at, 0XA0BC
/* 009939 0x80089BAC 0061082B */ sltu	$at, $v1, $at
/* 009940 0x80089BB0 1020001B */ beqz	$at, .L80089C20
/* 009941 0x80089BB4 27A40028 */ addiu	$a0, $sp, 0X28
/* 009942 0x80089BB8 27A5006C */ addiu	$a1, $sp, 0X6C
/* 009943 0x80089BBC 0C023C90 */ jal	osCreateMesgQueue
/* 009944 0x80089BC0 24060001 */ li	$a2, 0X1
/* 009945 0x80089BC4 8FB80060 */ lw	$t8, 0X60($sp)
/* 009946 0x80089BC8 8FB90064 */ lw	$t9, 0X64($sp)
/* 009947 0x80089BCC 3C090165 */ lui	$t1, 0x0165
/* 009948 0x80089BD0 3529A0BC */ ori	$t1, $t1, 0XA0BC
/* 009949 0x80089BD4 24080000 */ li	$t0, 0X0
/* 009950 0x80089BD8 240A0000 */ li	$t2, 0X0
/* 009951 0x80089BDC 240B0000 */ li	$t3, 0X0
/* 009952 0x80089BE0 27AC0028 */ addiu	$t4, $sp, 0X28
/* 009953 0x80089BE4 27AD006C */ addiu	$t5, $sp, 0X6C
/* 009954 0x80089BE8 01183023 */ subu	$a2, $t0, $t8
/* 009955 0x80089BEC 0139082B */ sltu	$at, $t1, $t9
/* 009956 0x80089BF0 00C13023 */ subu	$a2, $a2, $at
/* 009957 0x80089BF4 AFAD001C */ sw	$t5, 0X1C($sp)
/* 009958 0x80089BF8 AFAC0018 */ sw	$t4, 0X18($sp)
/* 009959 0x80089BFC AFAB0014 */ sw	$t3, 0X14($sp)
/* 009960 0x80089C00 AFAA0010 */ sw	$t2, 0X10($sp)
/* 009961 0x80089C04 27A40040 */ addiu	$a0, $sp, 0X40
/* 009962 0x80089C08 0C025054 */ jal	osSetTimer
/* 009963 0x80089C0C 01393823 */ subu	$a3, $t1, $t9
/* 009964 0x80089C10 27A40028 */ addiu	$a0, $sp, 0X28
/* 009965 0x80089C14 27A5006C */ addiu	$a1, $sp, 0X6C
/* 009966 0x80089C18 0C021FB4 */ jal	osRecvMesg
/* 009967 0x80089C1C 24060001 */ li	$a2, 0X1
.L80089C20:
/* 009968 0x80089C20 240E0004 */ li	$t6, 0X4
/* 009969 0x80089C24 3C01800A */ lui	$at, %hi(__osMaxControllers)
/* 009970 0x80089C28 A02ECF11 */ sb	$t6, %lo(__osMaxControllers)($at)
/* 009971 0x80089C2C 0C02275A */ jal	__osPackRequestData
/* 009972 0x80089C30 00002025 */ move	$a0, $zero
/* 009973 0x80089C34 3C05800A */ lui	$a1, %hi(__osContPifRam)
/* 009974 0x80089C38 24A5CED0 */ addiu	$a1, $a1, %lo(__osContPifRam)
/* 009975 0x80089C3C 0C022B5C */ jal	__osSiRawStartDma
/* 009976 0x80089C40 24040001 */ li	$a0, 0X1
/* 009977 0x80089C44 8FA40070 */ lw	$a0, 0X70($sp)
/* 009978 0x80089C48 27A5006C */ addiu	$a1, $sp, 0X6C
/* 009979 0x80089C4C 0C021FB4 */ jal	osRecvMesg
/* 009980 0x80089C50 24060001 */ li	$a2, 0X1
/* 009981 0x80089C54 3C05800A */ lui	$a1, %hi(__osContPifRam)
/* 009982 0x80089C58 24A5CED0 */ addiu	$a1, $a1, %lo(__osContPifRam)
/* 009983 0x80089C5C 0C022B5C */ jal	__osSiRawStartDma
/* 009984 0x80089C60 00002025 */ move	$a0, $zero
/* 009985 0x80089C64 AFA20068 */ sw	$v0, 0X68($sp)
/* 009986 0x80089C68 8FA40070 */ lw	$a0, 0X70($sp)
/* 009987 0x80089C6C 27A5006C */ addiu	$a1, $sp, 0X6C
/* 009988 0x80089C70 0C021FB4 */ jal	osRecvMesg
/* 009989 0x80089C74 24060001 */ li	$a2, 0X1
/* 009990 0x80089C78 8FA40074 */ lw	$a0, 0X74($sp)
/* 009991 0x80089C7C 0C02272F */ jal	__osContGetInitData
/* 009992 0x80089C80 8FA50078 */ lw	$a1, 0X78($sp)
/* 009993 0x80089C84 3C01800A */ lui	$at, %hi(__osContLastCmd)
/* 009994 0x80089C88 0C0226A8 */ jal	__osSiCreateAccessQueue
/* 009995 0x80089C8C A020CF10 */ sb	$zero, %lo(__osContLastCmd)($at)
/* 009996 0x80089C90 3C04800A */ lui	$a0, %hi(D_8009CF38)
/* 009997 0x80089C94 3C05800A */ lui	$a1, %hi(D_8009CF50)
/* 009998 0x80089C98 24A5CF50 */ addiu	$a1, $a1, %lo(D_8009CF50)
/* 009999 0x80089C9C 2484CF38 */ addiu	$a0, $a0, %lo(D_8009CF38)
/* 010000 0x80089CA0 0C023C90 */ jal	osCreateMesgQueue
/* 010001 0x80089CA4 24060001 */ li	$a2, 0X1
/* 010002 0x80089CA8 8FA20068 */ lw	$v0, 0X68($sp)
.L80089CAC:
/* 010003 0x80089CAC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 010004 0x80089CB0 27BD0070 */ addiu	$sp, $sp, 0X70
/* 010005 0x80089CB4 03E00008 */ jr	$ra
/* 010006 0x80089CB8 00000000 */ nop

glabel __osContGetInitData
/* 010007 0x80089CBC 3C07800A */ lui	$a3, %hi(__osMaxControllers)
/* 010008 0x80089CC0 24E7CF11 */ addiu	$a3, $a3, %lo(__osMaxControllers)
/* 010009 0x80089CC4 90EE0000 */ lbu	$t6, 0X0($a3)
/* 010010 0x80089CC8 3C03800A */ lui	$v1, %hi(__osContPifRam)
/* 010011 0x80089CCC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 010012 0x80089CD0 00001025 */ move	$v0, $zero
/* 010013 0x80089CD4 2463CED0 */ addiu	$v1, $v1, %lo(__osContPifRam)
/* 010014 0x80089CD8 19C00020 */ blez	$t6, .L80089D5C
/* 010015 0x80089CDC 00003025 */ move	$a2, $zero
/* 010016 0x80089CE0 27A8000C */ addiu	$t0, $sp, 0XC
.L80089CE4:
/* 010017 0x80089CE4 88610000 */ lwl	$at, 0X0($v1)
/* 010018 0x80089CE8 98610003 */ lwr	$at, 0X3($v1)
/* 010019 0x80089CEC AD010000 */ sw	$at, 0X0($t0)
/* 010020 0x80089CF0 88780004 */ lwl	$t8, 0X4($v1)
/* 010021 0x80089CF4 98780007 */ lwr	$t8, 0X7($v1)
/* 010022 0x80089CF8 AD180004 */ sw	$t8, 0X4($t0)
/* 010023 0x80089CFC 93B9000E */ lbu	$t9, 0XE($sp)
/* 010024 0x80089D00 332900C0 */ andi	$t1, $t9, 0XC0
/* 010025 0x80089D04 00095103 */ sra	$t2, $t1, 4
/* 010026 0x80089D08 314B00FF */ andi	$t3, $t2, 0XFF
/* 010027 0x80089D0C 1560000D */ bnez	$t3, .L80089D44
/* 010028 0x80089D10 A0AA0003 */ sb	$t2, 0X3($a1)
/* 010029 0x80089D14 93AC0011 */ lbu	$t4, 0X11($sp)
/* 010030 0x80089D18 93AE0010 */ lbu	$t6, 0X10($sp)
/* 010031 0x80089D1C 24190001 */ li	$t9, 0X1
/* 010032 0x80089D20 000C6A00 */ sll	$t5, $t4, 8
/* 010033 0x80089D24 01AE7825 */ or	$t7, $t5, $t6
/* 010034 0x80089D28 A4AF0000 */ sh	$t7, 0X0($a1)
/* 010035 0x80089D2C 93B80012 */ lbu	$t8, 0X12($sp)
/* 010036 0x80089D30 00D94804 */ sllv	$t1, $t9, $a2
/* 010037 0x80089D34 00491025 */ or	$v0, $v0, $t1
/* 010038 0x80089D38 304A00FF */ andi	$t2, $v0, 0XFF
/* 010039 0x80089D3C 01401025 */ move	$v0, $t2
/* 010040 0x80089D40 A0B80002 */ sb	$t8, 0X2($a1)
.L80089D44:
/* 010041 0x80089D44 90EB0000 */ lbu	$t3, 0X0($a3)
/* 010042 0x80089D48 24C60001 */ addiu	$a2, $a2, 0X1
/* 010043 0x80089D4C 24630008 */ addiu	$v1, $v1, 0X8
/* 010044 0x80089D50 00CB082A */ slt	$at, $a2, $t3
/* 010045 0x80089D54 1420FFE3 */ bnez	$at, .L80089CE4
/* 010046 0x80089D58 24A50004 */ addiu	$a1, $a1, 0X4
.L80089D5C:
/* 010047 0x80089D5C A0820000 */ sb	$v0, 0X0($a0)
/* 010048 0x80089D60 03E00008 */ jr	$ra
/* 010049 0x80089D64 27BD0018 */ addiu	$sp, $sp, 0X18

glabel __osPackRequestData
/* 010050 0x80089D68 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 010051 0x80089D6C AFA40018 */ sw	$a0, 0X18($sp)
/* 010052 0x80089D70 308E00FF */ andi	$t6, $a0, 0XFF
/* 010053 0x80089D74 3C03800A */ lui	$v1, %hi(__osContPifRam)
/* 010054 0x80089D78 3C02800A */ lui	$v0, %hi(D_8009CF0C)
/* 010055 0x80089D7C 01C02025 */ move	$a0, $t6
/* 010056 0x80089D80 2442CF0C */ addiu	$v0, $v0, %lo(D_8009CF0C)
/* 010057 0x80089D84 2463CED0 */ addiu	$v1, $v1, %lo(__osContPifRam)
.L80089D88:
/* 010058 0x80089D88 24630004 */ addiu	$v1, $v1, 0X4
/* 010059 0x80089D8C 0062082B */ sltu	$at, $v1, $v0
/* 010060 0x80089D90 1420FFFD */ bnez	$at, .L80089D88
/* 010061 0x80089D94 AC60FFFC */ sw	$zero, -0X4($v1)
/* 010062 0x80089D98 3C05800A */ lui	$a1, %hi(__osContPifRam)
/* 010063 0x80089D9C 24A3CED0 */ addiu	$v1, $a1, %lo(__osContPifRam)
/* 010064 0x80089DA0 240F0001 */ li	$t7, 0X1
/* 010065 0x80089DA4 AC6F003C */ sw	$t7, 0X3C($v1)
/* 010066 0x80089DA8 3C06800A */ lui	$a2, %hi(__osMaxControllers)
/* 010067 0x80089DAC 24C6CF11 */ addiu	$a2, $a2, %lo(__osMaxControllers)
/* 010068 0x80089DB0 90CD0000 */ lbu	$t5, 0X0($a2)
/* 010069 0x80089DB4 241800FF */ li	$t8, 0XFF
/* 010070 0x80089DB8 24190001 */ li	$t9, 0X1
/* 010071 0x80089DBC 24080003 */ li	$t0, 0X3
/* 010072 0x80089DC0 240900FF */ li	$t1, 0XFF
/* 010073 0x80089DC4 240A00FF */ li	$t2, 0XFF
/* 010074 0x80089DC8 240B00FF */ li	$t3, 0XFF
/* 010075 0x80089DCC 240C00FF */ li	$t4, 0XFF
/* 010076 0x80089DD0 A3B8000C */ sb	$t8, 0XC($sp)
/* 010077 0x80089DD4 A3B9000D */ sb	$t9, 0XD($sp)
/* 010078 0x80089DD8 A3A8000E */ sb	$t0, 0XE($sp)
/* 010079 0x80089DDC A3A4000F */ sb	$a0, 0XF($sp)
/* 010080 0x80089DE0 A3A90010 */ sb	$t1, 0X10($sp)
/* 010081 0x80089DE4 A3AA0011 */ sb	$t2, 0X11($sp)
/* 010082 0x80089DE8 A3AB0012 */ sb	$t3, 0X12($sp)
/* 010083 0x80089DEC A3AC0013 */ sb	$t4, 0X13($sp)
/* 010084 0x80089DF0 19A0000E */ blez	$t5, .L80089E2C
/* 010085 0x80089DF4 00001025 */ move	$v0, $zero
/* 010086 0x80089DF8 27A4000C */ addiu	$a0, $sp, 0XC
/* 010087 0x80089DFC 8C810000 */ lw	$at, 0X0($a0)
.L80089E00:
/* 010088 0x80089E00 24420001 */ addiu	$v0, $v0, 0X1
/* 010089 0x80089E04 24630008 */ addiu	$v1, $v1, 0X8
/* 010090 0x80089E08 A861FFF8 */ swl	$at, -0X8($v1)
/* 010091 0x80089E0C B861FFFB */ swr	$at, -0X5($v1)
/* 010092 0x80089E10 8C8F0004 */ lw	$t7, 0X4($a0)
/* 010093 0x80089E14 A86FFFFC */ swl	$t7, -0X4($v1)
/* 010094 0x80089E18 B86FFFFF */ swr	$t7, -0X1($v1)
/* 010095 0x80089E1C 90D80000 */ lbu	$t8, 0X0($a2)
/* 010096 0x80089E20 0058082A */ slt	$at, $v0, $t8
/* 010097 0x80089E24 5420FFF6 */ bnezl	$at, .L80089E00
/* 010098 0x80089E28 8C810000 */ lw	$at, 0X0($a0)
.L80089E2C:
/* 010099 0x80089E2C 241900FE */ li	$t9, 0XFE
/* 010100 0x80089E30 A0790000 */ sb	$t9, 0X0($v1)
/* 010101 0x80089E34 03E00008 */ jr	$ra
/* 010102 0x80089E38 27BD0018 */ addiu	$sp, $sp, 0X18
/* 010103 0x80089E3C 00000000 */ nop
