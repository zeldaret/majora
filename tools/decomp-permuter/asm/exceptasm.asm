.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel __osExceptionPreamble
/* 008872 0x80088B00 3C1A8009 */ lui	$k0, %hi(__osException)
/* 008873 0x80088B04 275A8B10 */ addiu	$k0, $k0, %lo(__osException)
/* 008874 0x80088B08 03400008 */ jr	$k0
/* 008875 0x80088B0C 00000000 */ nop

glabel __osException
/* 008876 0x80088B10 3C1A800A */ lui	$k0, %hi(__osThreadSave)
/* 008877 0x80088B14 275ACF80 */ addiu	$k0, $k0, %lo(__osThreadSave)
/* 008878 0x80088B18 FF410020 */ sd	$at, 0X20($k0)
/* 008879 0x80088B1C 401B6000 */ mfc0	$k1, $12
/* 008880 0x80088B20 AF5B0118 */ sw	$k1, 0X118($k0)
/* 008881 0x80088B24 2401FFFC */ li	$at, -0X4
/* 008882 0x80088B28 0361D824 */ and	$k1, $k1, $at
/* 008883 0x80088B2C 409B6000 */ mtc0	$k1, $12
/* 008884 0x80088B30 FF480058 */ sd	$t0, 0X58($k0)
/* 008885 0x80088B34 FF490060 */ sd	$t1, 0X60($k0)
/* 008886 0x80088B38 FF4A0068 */ sd	$t2, 0X68($k0)
/* 008887 0x80088B3C AF400018 */ sw	$zero, 0X18($k0)
/* 008888 0x80088B40 40086800 */ mfc0	$t0, $13
/* 008889 0x80088B44 03404025 */ move	$t0, $k0
/* 008890 0x80088B48 3C1A8009 */ lui	$k0, %hi(__osRunningThread)
/* 008891 0x80088B4C 8F5A7E20 */ lw	$k0, %lo(__osRunningThread)($k0)
/* 008892 0x80088B50 DD090020 */ ld	$t1, 0X20($t0)
/* 008893 0x80088B54 FF490020 */ sd	$t1, 0X20($k0)
/* 008894 0x80088B58 DD090118 */ ld	$t1, 0X118($t0)
/* 008895 0x80088B5C FF490118 */ sd	$t1, 0X118($k0)
/* 008896 0x80088B60 DD090058 */ ld	$t1, 0X58($t0)
/* 008897 0x80088B64 FF490058 */ sd	$t1, 0X58($k0)
/* 008898 0x80088B68 DD090060 */ ld	$t1, 0X60($t0)
/* 008899 0x80088B6C FF490060 */ sd	$t1, 0X60($k0)
/* 008900 0x80088B70 DD090068 */ ld	$t1, 0X68($t0)
/* 008901 0x80088B74 FF490068 */ sd	$t1, 0X68($k0)
/* 008902 0x80088B78 8F5B0118 */ lw	$k1, 0X118($k0)
/* 008903 0x80088B7C 00004012 */ mflo	$t0
/* 008904 0x80088B80 FF480108 */ sd	$t0, 0X108($k0)
/* 008905 0x80088B84 00004010 */ mfhi	$t0
/* 008906 0x80088B88 3369FF00 */ andi	$t1, $k1, 0XFF00
/* 008907 0x80088B8C FF420028 */ sd	$v0, 0X28($k0)
/* 008908 0x80088B90 FF430030 */ sd	$v1, 0X30($k0)
/* 008909 0x80088B94 FF440038 */ sd	$a0, 0X38($k0)
/* 008910 0x80088B98 FF450040 */ sd	$a1, 0X40($k0)
/* 008911 0x80088B9C FF460048 */ sd	$a2, 0X48($k0)
/* 008912 0x80088BA0 FF470050 */ sd	$a3, 0X50($k0)
/* 008913 0x80088BA4 FF4B0070 */ sd	$t3, 0X70($k0)
/* 008914 0x80088BA8 FF4C0078 */ sd	$t4, 0X78($k0)
/* 008915 0x80088BAC FF4D0080 */ sd	$t5, 0X80($k0)
/* 008916 0x80088BB0 FF4E0088 */ sd	$t6, 0X88($k0)
/* 008917 0x80088BB4 FF4F0090 */ sd	$t7, 0X90($k0)
/* 008918 0x80088BB8 FF500098 */ sd	$s0, 0X98($k0)
/* 008919 0x80088BBC FF5100A0 */ sd	$s1, 0XA0($k0)
/* 008920 0x80088BC0 FF5200A8 */ sd	$s2, 0XA8($k0)
/* 008921 0x80088BC4 FF5300B0 */ sd	$s3, 0XB0($k0)
/* 008922 0x80088BC8 FF5400B8 */ sd	$s4, 0XB8($k0)
/* 008923 0x80088BCC FF5500C0 */ sd	$s5, 0XC0($k0)
/* 008924 0x80088BD0 FF5600C8 */ sd	$s6, 0XC8($k0)
/* 008925 0x80088BD4 FF5700D0 */ sd	$s7, 0XD0($k0)
/* 008926 0x80088BD8 FF5800D8 */ sd	$t8, 0XD8($k0)
/* 008927 0x80088BDC FF5900E0 */ sd	$t9, 0XE0($k0)
/* 008928 0x80088BE0 FF5C00E8 */ sd	$gp, 0XE8($k0)
/* 008929 0x80088BE4 FF5D00F0 */ sd	$sp, 0XF0($k0)
/* 008930 0x80088BE8 FF5E00F8 */ sd	$fp, 0XF8($k0)
/* 008931 0x80088BEC FF5F0100 */ sd	$ra, 0X100($k0)
/* 008932 0x80088BF0 11200011 */ beqz	$t1, .L80088C38
/* 008933 0x80088BF4 FF480110 */ sd	$t0, 0X110($k0)
/* 008934 0x80088BF8 3C088009 */ lui	$t0, %hi(__OSGlobalIntMask)
/* 008935 0x80088BFC 25087E60 */ addiu	$t0, $t0, %lo(__OSGlobalIntMask)
/* 008936 0x80088C00 8D080000 */ lw	$t0, 0X0($t0)
/* 008937 0x80088C04 2401FFFF */ li	$at, -0X1
/* 008938 0x80088C08 01015026 */ xor	$t2, $t0, $at
/* 008939 0x80088C0C 3C01FFFF */ lui	$at, 0xFFFF
/* 008940 0x80088C10 314AFF00 */ andi	$t2, $t2, 0XFF00
/* 008941 0x80088C14 342100FF */ ori	$at, $at, 0XFF
/* 008942 0x80088C18 012A6025 */ or	$t4, $t1, $t2
/* 008943 0x80088C1C 03615824 */ and	$t3, $k1, $at
/* 008944 0x80088C20 3108FF00 */ andi	$t0, $t0, 0XFF00
/* 008945 0x80088C24 016C5825 */ or	$t3, $t3, $t4
/* 008946 0x80088C28 01284824 */ and	$t1, $t1, $t0
/* 008947 0x80088C2C 0361D824 */ and	$k1, $k1, $at
/* 008948 0x80088C30 AF4B0118 */ sw	$t3, 0X118($k0)
/* 008949 0x80088C34 0369D825 */ or	$k1, $k1, $t1
.L80088C38:
/* 008950 0x80088C38 3C09A430 */ lui	$t1, 0xA430
/* 008951 0x80088C3C 8D29000C */ lw	$t1, 0XC($t1)
/* 008952 0x80088C40 1120000B */ beqz	$t1, .L80088C70
/* 008953 0x80088C44 00000000 */ nop
/* 008954 0x80088C48 3C088009 */ lui	$t0, %hi(__OSGlobalIntMask)
/* 008955 0x80088C4C 25087E60 */ addiu	$t0, $t0, %lo(__OSGlobalIntMask)
/* 008956 0x80088C50 8D080000 */ lw	$t0, 0X0($t0)
/* 008957 0x80088C54 8F4C0128 */ lw	$t4, 0X128($k0)
/* 008958 0x80088C58 2401FFFF */ li	$at, -0X1
/* 008959 0x80088C5C 00084402 */ srl	$t0, $t0, 16
/* 008960 0x80088C60 01014026 */ xor	$t0, $t0, $at
/* 008961 0x80088C64 3108003F */ andi	$t0, $t0, 0X3F
/* 008962 0x80088C68 010C4024 */ and	$t0, $t0, $t4
/* 008963 0x80088C6C 01284825 */ or	$t1, $t1, $t0
.L80088C70:
/* 008964 0x80088C70 AF490128 */ sw	$t1, 0X128($k0)
/* 008965 0x80088C74 40087000 */ mfc0	$t0, $14
/* 008966 0x80088C78 AF48011C */ sw	$t0, 0X11C($k0)
/* 008967 0x80088C7C 8F480018 */ lw	$t0, 0X18($k0)
/* 008968 0x80088C80 11000014 */ beqz	$t0, .L80088CD4
/* 008969 0x80088C84 00000000 */ nop
/* 008970 0x80088C88 4448F800 */ cfc1	$t0, $31
/* 008971 0x80088C8C 00000000 */ nop
/* 008972 0x80088C90 AF48012C */ sw	$t0, 0X12C($k0)
/* 008973 0x80088C94 F7400130 */ sdc1	$f0, 0X130($k0)
/* 008974 0x80088C98 F7420138 */ sdc1	$f2, 0X138($k0)
/* 008975 0x80088C9C F7440140 */ sdc1	$f4, 0X140($k0)
/* 008976 0x80088CA0 F7460148 */ sdc1	$f6, 0X148($k0)
/* 008977 0x80088CA4 F7480150 */ sdc1	$f8, 0X150($k0)
/* 008978 0x80088CA8 F74A0158 */ sdc1	$f10, 0X158($k0)
/* 008979 0x80088CAC F74C0160 */ sdc1	$f12, 0X160($k0)
/* 008980 0x80088CB0 F74E0168 */ sdc1	$f14, 0X168($k0)
/* 008981 0x80088CB4 F7500170 */ sdc1	$f16, 0X170($k0)
/* 008982 0x80088CB8 F7520178 */ sdc1	$f18, 0X178($k0)
/* 008983 0x80088CBC F7540180 */ sdc1	$f20, 0X180($k0)
/* 008984 0x80088CC0 F7560188 */ sdc1	$f22, 0X188($k0)
/* 008985 0x80088CC4 F7580190 */ sdc1	$f24, 0X190($k0)
/* 008986 0x80088CC8 F75A0198 */ sdc1	$f26, 0X198($k0)
/* 008987 0x80088CCC F75C01A0 */ sdc1	$f28, 0X1A0($k0)
/* 008988 0x80088CD0 F75E01A8 */ sdc1	$f30, 0X1A8($k0)
.L80088CD4:
/* 008989 0x80088CD4 40086800 */ mfc0	$t0, $13
/* 008990 0x80088CD8 AF480120 */ sw	$t0, 0X120($k0)
/* 008991 0x80088CDC 24090002 */ li	$t1, 0X2
/* 008992 0x80088CE0 A7490010 */ sh	$t1, 0X10($k0)
/* 008993 0x80088CE4 3109007C */ andi	$t1, $t0, 0X7C
/* 008994 0x80088CE8 240A0024 */ li	$t2, 0X24
/* 008995 0x80088CEC 112A00B6 */ beq	$t1, $t2, .L80088FC8
/* 008996 0x80088CF0 00000000 */ nop
/* 008997 0x80088CF4 240A002C */ li	$t2, 0X2C
/* 008998 0x80088CF8 112A0105 */ beq	$t1, $t2, .L80089110
/* 008999 0x80088CFC 00000000 */ nop
/* 009000 0x80088D00 240A0000 */ li	$t2, 0X0
/* 009001 0x80088D04 152A00C9 */ bne	$t1, $t2, .L8008902C
/* 009002 0x80088D08 00000000 */ nop
/* 009003 0x80088D0C 03688024 */ and	$s0, $k1, $t0
.L80088D10:
/* 009004 0x80088D10 3209FF00 */ andi	$t1, $s0, 0XFF00
/* 009005 0x80088D14 00095302 */ srl	$t2, $t1, 12
/* 009006 0x80088D18 15400003 */ bnez	$t2, .L80088D28
/* 009007 0x80088D1C 00000000 */ nop
/* 009008 0x80088D20 00095202 */ srl	$t2, $t1, 8
/* 009009 0x80088D24 214A0010 */ addi	$t2, $t2, 0X10
.L80088D28:
/* 009010 0x80088D28 3C01800A */ lui	$at, %hi(D_80099270)
/* 009011 0x80088D2C 002A0821 */ addu	$at, $at, $t2
/* 009012 0x80088D30 902A9270 */ lbu	$t2, %lo(D_80099270)($at)
/* 009013 0x80088D34 3C01800A */ lui	$at, %hi(__osIntTable)
/* 009014 0x80088D38 002A0821 */ addu	$at, $at, $t2
/* 009015 0x80088D3C 8C2A9290 */ lw	$t2, %lo(__osIntTable)($at)
/* 009016 0x80088D40 01400008 */ jr	$t2
/* 009017 0x80088D44 00000000 */ nop

glabel func_80088D48
/* 009018 0x80088D48 2401DFFF */ li	$at, -0X2001
/* 009019 0x80088D4C 1000FFF0 */ b	.L80088D10
/* 009020 0x80088D50 02018024 */ and	$s0, $s0, $at

glabel func_80088D54
/* 009021 0x80088D54 2401BFFF */ li	$at, -0X4001
/* 009022 0x80088D58 1000FFED */ b	.L80088D10
/* 009023 0x80088D5C 02018024 */ and	$s0, $s0, $at

glabel func_80088D60
/* 009024 0x80088D60 40095800 */ mfc0	$t1, $11
/* 009025 0x80088D64 40895800 */ mtc0	$t1, $11
/* 009026 0x80088D68 0C022417 */ jal	send_mesg
/* 009027 0x80088D6C 24040018 */ li	$a0, 0X18
/* 009028 0x80088D70 3C01FFFF */ lui	$at, 0xFFFF
/* 009029 0x80088D74 34217FFF */ ori	$at, $at, 0X7FFF
/* 009030 0x80088D78 1000FFE5 */ b	.L80088D10
/* 009031 0x80088D7C 02018024 */ and	$s0, $s0, $at

glabel func_80088D80
/* 009032 0x80088D80 3C098009 */ lui	$t1, %hi(D_80097DE0)
/* 009033 0x80088D84 25297DE0 */ addiu	$t1, $t1, %lo(D_80097DE0)
/* 009034 0x80088D88 8D2A0008 */ lw	$t2, 0X8($t1)
/* 009035 0x80088D8C 2401F7FF */ li	$at, -0X801
/* 009036 0x80088D90 02018024 */ and	$s0, $s0, $at
/* 009037 0x80088D94 11400007 */ beqz	$t2, .L80088DB4
/* 009038 0x80088D98 21290008 */ addi	$t1, $t1, 0X8
/* 009039 0x80088D9C 0140F809 */ jalr	$t2
/* 009040 0x80088DA0 8D3D0004 */ lw	$sp, 0X4($t1)
/* 009041 0x80088DA4 10400003 */ beqz	$v0, .L80088DB4
/* 009042 0x80088DA8 00000000 */ nop
/* 009043 0x80088DAC 1000008C */ b	.L80088FE0
/* 009044 0x80088DB0 00000000 */ nop
.L80088DB4:
/* 009045 0x80088DB4 0C022417 */ jal	send_mesg
/* 009046 0x80088DB8 24040010 */ li	$a0, 0X10
/* 009047 0x80088DBC 1000FFD4 */ b	.L80088D10
/* 009048 0x80088DC0 00000000 */ nop

glabel func_80088DC4
/* 009049 0x80088DC4 3C088009 */ lui	$t0, %hi(__OSGlobalIntMask)
/* 009050 0x80088DC8 25087E60 */ addiu	$t0, $t0, %lo(__OSGlobalIntMask)
/* 009051 0x80088DCC 8D080000 */ lw	$t0, 0X0($t0)
/* 009052 0x80088DD0 3C11A430 */ lui	$s1, 0xA430
/* 009053 0x80088DD4 8E310008 */ lw	$s1, 0X8($s1)
/* 009054 0x80088DD8 00084402 */ srl	$t0, $t0, 16
/* 009055 0x80088DDC 02288824 */ and	$s1, $s1, $t0
/* 009056 0x80088DE0 32290001 */ andi	$t1, $s1, 0X1
/* 009057 0x80088DE4 11200013 */ beqz	$t1, .L80088E34
/* 009058 0x80088DE8 00000000 */ nop
/* 009059 0x80088DEC 3C0CA404 */ lui	$t4, 0xA404
/* 009060 0x80088DF0 8D8C0010 */ lw	$t4, 0X10($t4)
/* 009061 0x80088DF4 34098008 */ ori	$t1, $zero, 0X8008
/* 009062 0x80088DF8 3C01A404 */ lui	$at, 0xA404
/* 009063 0x80088DFC 318C0300 */ andi	$t4, $t4, 0X300
/* 009064 0x80088E00 3231003E */ andi	$s1, $s1, 0X3E
/* 009065 0x80088E04 11800007 */ beqz	$t4, .L80088E24
/* 009066 0x80088E08 AC290010 */ sw	$t1, 0X10($at)
/* 009067 0x80088E0C 0C022417 */ jal	send_mesg
/* 009068 0x80088E10 24040020 */ li	$a0, 0X20
/* 009069 0x80088E14 12200042 */ beqz	$s1, .L80088F20
/* 009070 0x80088E18 00000000 */ nop
/* 009071 0x80088E1C 10000005 */ b	.L80088E34
/* 009072 0x80088E20 00000000 */ nop
.L80088E24:
/* 009073 0x80088E24 0C022417 */ jal	send_mesg
/* 009074 0x80088E28 24040058 */ li	$a0, 0X58
/* 009075 0x80088E2C 1220003C */ beqz	$s1, .L80088F20
/* 009076 0x80088E30 00000000 */ nop
.L80088E34:
/* 009077 0x80088E34 32290008 */ andi	$t1, $s1, 0X8
/* 009078 0x80088E38 11200007 */ beqz	$t1, .L80088E58
/* 009079 0x80088E3C 3C01A440 */ lui	$at, 0xA440
/* 009080 0x80088E40 32310037 */ andi	$s1, $s1, 0X37
/* 009081 0x80088E44 AC200010 */ sw	$zero, 0X10($at)
/* 009082 0x80088E48 0C022417 */ jal	send_mesg
/* 009083 0x80088E4C 24040038 */ li	$a0, 0X38
/* 009084 0x80088E50 12200033 */ beqz	$s1, .L80088F20
/* 009085 0x80088E54 00000000 */ nop
.L80088E58:
/* 009086 0x80088E58 32290004 */ andi	$t1, $s1, 0X4
/* 009087 0x80088E5C 11200009 */ beqz	$t1, .L80088E84
/* 009088 0x80088E60 00000000 */ nop
/* 009089 0x80088E64 24090001 */ li	$t1, 0X1
/* 009090 0x80088E68 3C01A450 */ lui	$at, 0xA450
/* 009091 0x80088E6C 3231003B */ andi	$s1, $s1, 0X3B
/* 009092 0x80088E70 AC29000C */ sw	$t1, 0XC($at)
/* 009093 0x80088E74 0C022417 */ jal	send_mesg
/* 009094 0x80088E78 24040030 */ li	$a0, 0X30
/* 009095 0x80088E7C 12200028 */ beqz	$s1, .L80088F20
/* 009096 0x80088E80 00000000 */ nop
.L80088E84:
/* 009097 0x80088E84 32290002 */ andi	$t1, $s1, 0X2
/* 009098 0x80088E88 11200007 */ beqz	$t1, .L80088EA8
/* 009099 0x80088E8C 3C01A480 */ lui	$at, 0xA480
/* 009100 0x80088E90 3231003D */ andi	$s1, $s1, 0X3D
/* 009101 0x80088E94 AC200018 */ sw	$zero, 0X18($at)
/* 009102 0x80088E98 0C022417 */ jal	send_mesg
/* 009103 0x80088E9C 24040028 */ li	$a0, 0X28
/* 009104 0x80088EA0 1220001F */ beqz	$s1, .L80088F20
/* 009105 0x80088EA4 00000000 */ nop
.L80088EA8:
/* 009106 0x80088EA8 32290010 */ andi	$t1, $s1, 0X10
/* 009107 0x80088EAC 11200013 */ beqz	$t1, .L80088EFC
/* 009108 0x80088EB0 00000000 */ nop
/* 009109 0x80088EB4 24090002 */ li	$t1, 0X2
/* 009110 0x80088EB8 3C01A460 */ lui	$at, 0xA460
/* 009111 0x80088EBC AC290010 */ sw	$t1, 0X10($at)
/* 009112 0x80088EC0 3C098009 */ lui	$t1, %hi(D_80097E08)
/* 009113 0x80088EC4 25297E08 */ addiu	$t1, $t1, %lo(D_80097E08)
/* 009114 0x80088EC8 8D2A0000 */ lw	$t2, 0X0($t1)
/* 009115 0x80088ECC 3231002F */ andi	$s1, $s1, 0X2F
/* 009116 0x80088ED0 11400006 */ beqz	$t2, .L80088EEC
/* 009117 0x80088ED4 00000000 */ nop
/* 009118 0x80088ED8 8D3D0004 */ lw	$sp, 0X4($t1)
/* 009119 0x80088EDC 0140F809 */ jalr	$t2
/* 009120 0x80088EE0 00402025 */ move	$a0, $v0
/* 009121 0x80088EE4 14400003 */ bnez	$v0, .L80088EF4
/* 009122 0x80088EE8 00000000 */ nop
.L80088EEC:
/* 009123 0x80088EEC 0C022417 */ jal	send_mesg
/* 009124 0x80088EF0 24040040 */ li	$a0, 0X40
.L80088EF4:
/* 009125 0x80088EF4 1220000A */ beqz	$s1, .L80088F20
/* 009126 0x80088EF8 00000000 */ nop
.L80088EFC:
/* 009127 0x80088EFC 32290020 */ andi	$t1, $s1, 0X20
/* 009128 0x80088F00 11200007 */ beqz	$t1, .L80088F20
/* 009129 0x80088F04 00000000 */ nop
/* 009130 0x80088F08 24090800 */ li	$t1, 0X800
/* 009131 0x80088F0C 3C01A430 */ lui	$at, 0xA430
/* 009132 0x80088F10 3231001F */ andi	$s1, $s1, 0X1F
/* 009133 0x80088F14 AC290000 */ sw	$t1, 0X0($at)
/* 009134 0x80088F18 0C022417 */ jal	send_mesg
/* 009135 0x80088F1C 24040048 */ li	$a0, 0X48
.L80088F20:
/* 009136 0x80088F20 2401FBFF */ li	$at, -0X401
/* 009137 0x80088F24 1000FF7A */ b	.L80088D10
/* 009138 0x80088F28 02018024 */ and	$s0, $s0, $at

glabel func_80088F2C
/* 009139 0x80088F2C 8F5B0118 */ lw	$k1, 0X118($k0)
/* 009140 0x80088F30 2401EFFF */ li	$at, -0X1001
/* 009141 0x80088F34 3C098009 */ lui	$t1, %hi(__osShutdown)
/* 009142 0x80088F38 0361D824 */ and	$k1, $k1, $at
/* 009143 0x80088F3C AF5B0118 */ sw	$k1, 0X118($k0)
/* 009144 0x80088F40 25297E5C */ addiu	$t1, $t1, %lo(__osShutdown)
/* 009145 0x80088F44 8D2A0000 */ lw	$t2, 0X0($t1)
/* 009146 0x80088F48 11400003 */ beqz	$t2, .L80088F58
/* 009147 0x80088F4C 2401EFFF */ li	$at, -0X1001
/* 009148 0x80088F50 10000023 */ b	.L80088FE0
/* 009149 0x80088F54 02018024 */ and	$s0, $s0, $at
.L80088F58:
/* 009150 0x80088F58 240A0001 */ li	$t2, 0X1
/* 009151 0x80088F5C AD2A0000 */ sw	$t2, 0X0($t1)
/* 009152 0x80088F60 0C022417 */ jal	send_mesg
/* 009153 0x80088F64 24040070 */ li	$a0, 0X70
/* 009154 0x80088F68 3C0A8009 */ lui	$t2, %hi(__osRunQueue)
/* 009155 0x80088F6C 8D4A7E18 */ lw	$t2, %lo(__osRunQueue)($t2)
/* 009156 0x80088F70 2401EFFF */ li	$at, -0X1001
/* 009157 0x80088F74 02018024 */ and	$s0, $s0, $at
/* 009158 0x80088F78 8D5B0118 */ lw	$k1, 0X118($t2)
/* 009159 0x80088F7C 0361D824 */ and	$k1, $k1, $at
/* 009160 0x80088F80 10000017 */ b	.L80088FE0
/* 009161 0x80088F84 AD5B0118 */ sw	$k1, 0X118($t2)

glabel func_80088F88
/* 009162 0x80088F88 2401FDFF */ li	$at, -0X201
/* 009163 0x80088F8C 01014024 */ and	$t0, $t0, $at
/* 009164 0x80088F90 40886800 */ mtc0	$t0, $13
/* 009165 0x80088F94 0C022417 */ jal	send_mesg
/* 009166 0x80088F98 24040008 */ li	$a0, 0X8
/* 009167 0x80088F9C 2401FDFF */ li	$at, -0X201
/* 009168 0x80088FA0 1000FF5B */ b	.L80088D10
/* 009169 0x80088FA4 02018024 */ and	$s0, $s0, $at

glabel func_80088FA8
/* 009170 0x80088FA8 2401FEFF */ li	$at, -0X101
/* 009171 0x80088FAC 01014024 */ and	$t0, $t0, $at
/* 009172 0x80088FB0 40886800 */ mtc0	$t0, $13
/* 009173 0x80088FB4 0C022417 */ jal	send_mesg
/* 009174 0x80088FB8 24040000 */ li	$a0, 0X0
/* 009175 0x80088FBC 2401FEFF */ li	$at, -0X101
/* 009176 0x80088FC0 1000FF53 */ b	.L80088D10
/* 009177 0x80088FC4 02018024 */ and	$s0, $s0, $at
.L80088FC8:
/* 009178 0x80088FC8 24090001 */ li	$t1, 0X1
/* 009179 0x80088FCC A7490012 */ sh	$t1, 0X12($k0)
/* 009180 0x80088FD0 0C022417 */ jal	send_mesg
/* 009181 0x80088FD4 24040050 */ li	$a0, 0X50
/* 009182 0x80088FD8 10000001 */ b	.L80088FE0
/* 009183 0x80088FDC 00000000 */ nop
.L80088FE0:

glabel func_80088FE0
/* 009184 0x80088FE0 3C0A8009 */ lui	$t2, %hi(__osRunQueue)
/* 009185 0x80088FE4 8D4A7E18 */ lw	$t2, %lo(__osRunQueue)($t2)
/* 009186 0x80088FE8 8F490004 */ lw	$t1, 0X4($k0)
/* 009187 0x80088FEC 8D4B0004 */ lw	$t3, 0X4($t2)
/* 009188 0x80088FF0 012B082A */ slt	$at, $t1, $t3
/* 009189 0x80088FF4 10200007 */ beqz	$at, .L80089014
/* 009190 0x80088FF8 00000000 */ nop
/* 009191 0x80088FFC 3C048009 */ lui	$a0, %hi(__osRunQueue)
/* 009192 0x80089000 03402825 */ move	$a1, $k0
/* 009193 0x80089004 0C022491 */ jal	__osEnqueueThread
/* 009194 0x80089008 24847E18 */ addiu	$a0, $a0, %lo(__osRunQueue)
/* 009195 0x8008900C 080224A9 */ j	__osDispatchThread
/* 009196 0x80089010 00000000 */ nop
.L80089014:
/* 009197 0x80089014 3C098009 */ lui	$t1, %hi(__osRunQueue)
/* 009198 0x80089018 25297E18 */ addiu	$t1, $t1, %lo(__osRunQueue)
/* 009199 0x8008901C 8D2A0000 */ lw	$t2, 0X0($t1)
/* 009200 0x80089020 AF4A0000 */ sw	$t2, 0X0($k0)
/* 009201 0x80089024 080224A9 */ j	__osDispatchThread
/* 009202 0x80089028 AD3A0000 */ sw	$k0, 0X0($t1)
.L8008902C:
/* 009203 0x8008902C 3C018009 */ lui	$at, %hi(__osFaultedThread)
/* 009204 0x80089030 AC3A7E24 */ sw	$k0, %lo(__osFaultedThread)($at)
/* 009205 0x80089034 24090001 */ li	$t1, 0X1
/* 009206 0x80089038 A7490010 */ sh	$t1, 0X10($k0)
/* 009207 0x8008903C 24090002 */ li	$t1, 0X2
/* 009208 0x80089040 A7490012 */ sh	$t1, 0X12($k0)
/* 009209 0x80089044 400A4000 */ mfc0	$t2, $8
/* 009210 0x80089048 AF4A0124 */ sw	$t2, 0X124($k0)
/* 009211 0x8008904C 0C022417 */ jal	send_mesg
/* 009212 0x80089050 24040060 */ li	$a0, 0X60
/* 009213 0x80089054 080224A9 */ j	__osDispatchThread
/* 009214 0x80089058 00000000 */ nop

glabel send_mesg
/* 009215 0x8008905C 3C0A800A */ lui	$t2, %hi(__osEventStateTab)
/* 009216 0x80089060 254AE510 */ addiu	$t2, $t2, %lo(__osEventStateTab)
/* 009217 0x80089064 01445021 */ addu	$t2, $t2, $a0
/* 009218 0x80089068 8D490000 */ lw	$t1, 0X0($t2)
/* 009219 0x8008906C 03E09025 */ move	$s2, $ra
/* 009220 0x80089070 11200025 */ beqz	$t1, .L80089108
/* 009221 0x80089074 00000000 */ nop
/* 009222 0x80089078 8D2B0008 */ lw	$t3, 0X8($t1)
/* 009223 0x8008907C 8D2C0010 */ lw	$t4, 0X10($t1)
/* 009224 0x80089080 016C082A */ slt	$at, $t3, $t4
/* 009225 0x80089084 10200020 */ beqz	$at, .L80089108
/* 009226 0x80089088 00000000 */ nop
/* 009227 0x8008908C 8D2D000C */ lw	$t5, 0XC($t1)
/* 009228 0x80089090 01AB6821 */ addu	$t5, $t5, $t3
/* 009229 0x80089094 01AC001A */ div	$zero, $t5, $t4
/* 009230 0x80089098 15800002 */ bnez	$t4, .L800890A4
/* 009231 0x8008909C 00000000 */ nop
/* 009232 0x800890A0 0007000D */ break	0x00007
.L800890A4:
/* 009233 0x800890A4 2401FFFF */ li	$at, -0X1
/* 009234 0x800890A8 15810004 */ bne	$t4, $at, .L800890BC
/* 009235 0x800890AC 3C018000 */ lui	$at, 0x8000
/* 009236 0x800890B0 15A10002 */ bne	$t5, $at, .L800890BC
/* 009237 0x800890B4 00000000 */ nop
/* 009238 0x800890B8 0006000D */ break	0x00006
.L800890BC:
/* 009239 0x800890BC 8D2C0014 */ lw	$t4, 0X14($t1)
/* 009240 0x800890C0 00006810 */ mfhi	$t5
/* 009241 0x800890C4 000D6880 */ sll	$t5, $t5, 2
/* 009242 0x800890C8 018D6021 */ addu	$t4, $t4, $t5
/* 009243 0x800890CC 8D4D0004 */ lw	$t5, 0X4($t2)
/* 009244 0x800890D0 256A0001 */ addiu	$t2, $t3, 0X1
/* 009245 0x800890D4 AD8D0000 */ sw	$t5, 0X0($t4)
/* 009246 0x800890D8 AD2A0008 */ sw	$t2, 0X8($t1)
/* 009247 0x800890DC 8D2A0000 */ lw	$t2, 0X0($t1)
/* 009248 0x800890E0 8D4B0000 */ lw	$t3, 0X0($t2)
/* 009249 0x800890E4 11600008 */ beqz	$t3, .L80089108
/* 009250 0x800890E8 00000000 */ nop
/* 009251 0x800890EC 0C0224A3 */ jal	__osPopThread
/* 009252 0x800890F0 01202025 */ move	$a0, $t1
/* 009253 0x800890F4 00405025 */ move	$t2, $v0
/* 009254 0x800890F8 3C048009 */ lui	$a0, %hi(__osRunQueue)
/* 009255 0x800890FC 01402825 */ move	$a1, $t2
/* 009256 0x80089100 0C022491 */ jal	__osEnqueueThread
/* 009257 0x80089104 24847E18 */ addiu	$a0, $a0, %lo(__osRunQueue)
.L80089108:
/* 009258 0x80089108 02400008 */ jr	$s2
/* 009259 0x8008910C 00000000 */ nop
.L80089110:

glabel handle_CpU
/* 009260 0x80089110 3C013000 */ lui	$at, 0x3000
/* 009261 0x80089114 01014824 */ and	$t1, $t0, $at
/* 009262 0x80089118 00094F02 */ srl	$t1, $t1, 28
/* 009263 0x8008911C 240A0001 */ li	$t2, 0X1
/* 009264 0x80089120 152AFFC2 */ bne	$t1, $t2, .L8008902C
/* 009265 0x80089124 00000000 */ nop
/* 009266 0x80089128 8F5B0118 */ lw	$k1, 0X118($k0)
/* 009267 0x8008912C 3C012000 */ lui	$at, 0x2000
/* 009268 0x80089130 24090001 */ li	$t1, 0X1
/* 009269 0x80089134 0361D825 */ or	$k1, $k1, $at
/* 009270 0x80089138 AF490018 */ sw	$t1, 0X18($k0)
/* 009271 0x8008913C 1000FFB5 */ b	.L80089014
/* 009272 0x80089140 AF5B0118 */ sw	$k1, 0X118($k0)

glabel __osEnqueueAndYield
/* 009273 0x80089144 3C058009 */ lui	$a1, %hi(__osRunningThread)
/* 009274 0x80089148 8CA57E20 */ lw	$a1, %lo(__osRunningThread)($a1)
/* 009275 0x8008914C 40086000 */ mfc0	$t0, $12
/* 009276 0x80089150 8CBB0018 */ lw	$k1, 0X18($a1)
/* 009277 0x80089154 35080002 */ ori	$t0, $t0, 0X2
/* 009278 0x80089158 ACA80118 */ sw	$t0, 0X118($a1)
/* 009279 0x8008915C FCB00098 */ sd	$s0, 0X98($a1)
/* 009280 0x80089160 FCB100A0 */ sd	$s1, 0XA0($a1)
/* 009281 0x80089164 FCB200A8 */ sd	$s2, 0XA8($a1)
/* 009282 0x80089168 FCB300B0 */ sd	$s3, 0XB0($a1)
/* 009283 0x8008916C FCB400B8 */ sd	$s4, 0XB8($a1)
/* 009284 0x80089170 FCB500C0 */ sd	$s5, 0XC0($a1)
/* 009285 0x80089174 FCB600C8 */ sd	$s6, 0XC8($a1)
/* 009286 0x80089178 FCB700D0 */ sd	$s7, 0XD0($a1)
/* 009287 0x8008917C FCBC00E8 */ sd	$gp, 0XE8($a1)
/* 009288 0x80089180 FCBD00F0 */ sd	$sp, 0XF0($a1)
/* 009289 0x80089184 FCBE00F8 */ sd	$fp, 0XF8($a1)
/* 009290 0x80089188 FCBF0100 */ sd	$ra, 0X100($a1)
/* 009291 0x8008918C 13600009 */ beqz	$k1, .L800891B4
/* 009292 0x80089190 ACBF011C */ sw	$ra, 0X11C($a1)
/* 009293 0x80089194 445BF800 */ cfc1	$k1, $31
/* 009294 0x80089198 F4B40180 */ sdc1	$f20, 0X180($a1)
/* 009295 0x8008919C F4B60188 */ sdc1	$f22, 0X188($a1)
/* 009296 0x800891A0 F4B80190 */ sdc1	$f24, 0X190($a1)
/* 009297 0x800891A4 F4BA0198 */ sdc1	$f26, 0X198($a1)
/* 009298 0x800891A8 F4BC01A0 */ sdc1	$f28, 0X1A0($a1)
/* 009299 0x800891AC F4BE01A8 */ sdc1	$f30, 0X1A8($a1)
/* 009300 0x800891B0 ACBB012C */ sw	$k1, 0X12C($a1)
.L800891B4:
/* 009301 0x800891B4 8CBB0118 */ lw	$k1, 0X118($a1)
/* 009302 0x800891B8 3369FF00 */ andi	$t1, $k1, 0XFF00
/* 009303 0x800891BC 1120000D */ beqz	$t1, .L800891F4
/* 009304 0x800891C0 00000000 */ nop
/* 009305 0x800891C4 3C088009 */ lui	$t0, %hi(__OSGlobalIntMask)
/* 009306 0x800891C8 25087E60 */ addiu	$t0, $t0, %lo(__OSGlobalIntMask)
/* 009307 0x800891CC 8D080000 */ lw	$t0, 0X0($t0)
/* 009308 0x800891D0 2401FFFF */ li	$at, -0X1
/* 009309 0x800891D4 01014026 */ xor	$t0, $t0, $at
/* 009310 0x800891D8 3C01FFFF */ lui	$at, 0xFFFF
/* 009311 0x800891DC 3108FF00 */ andi	$t0, $t0, 0XFF00
/* 009312 0x800891E0 342100FF */ ori	$at, $at, 0XFF
/* 009313 0x800891E4 01284825 */ or	$t1, $t1, $t0
/* 009314 0x800891E8 0361D824 */ and	$k1, $k1, $at
/* 009315 0x800891EC 0369D825 */ or	$k1, $k1, $t1
/* 009316 0x800891F0 ACBB0118 */ sw	$k1, 0X118($a1)
.L800891F4:
/* 009317 0x800891F4 3C1BA430 */ lui	$k1, 0xA430
/* 009318 0x800891F8 8F7B000C */ lw	$k1, 0XC($k1)
/* 009319 0x800891FC 1360000B */ beqz	$k1, .L8008922C
/* 009320 0x80089200 00000000 */ nop
/* 009321 0x80089204 3C1A8009 */ lui	$k0, %hi(__OSGlobalIntMask)
/* 009322 0x80089208 275A7E60 */ addiu	$k0, $k0, %lo(__OSGlobalIntMask)
/* 009323 0x8008920C 8F5A0000 */ lw	$k0, 0X0($k0)
/* 009324 0x80089210 8CA80128 */ lw	$t0, 0X128($a1)
/* 009325 0x80089214 2401FFFF */ li	$at, -0X1
/* 009326 0x80089218 001AD402 */ srl	$k0, $k0, 16
/* 009327 0x8008921C 0341D026 */ xor	$k0, $k0, $at
/* 009328 0x80089220 335A003F */ andi	$k0, $k0, 0X3F
/* 009329 0x80089224 0348D024 */ and	$k0, $k0, $t0
/* 009330 0x80089228 037AD825 */ or	$k1, $k1, $k0
.L8008922C:
/* 009331 0x8008922C 10800003 */ beqz	$a0, .L8008923C
/* 009332 0x80089230 ACBB0128 */ sw	$k1, 0X128($a1)
/* 009333 0x80089234 0C022491 */ jal	__osEnqueueThread
/* 009334 0x80089238 00000000 */ nop
.L8008923C:
/* 009335 0x8008923C 080224A9 */ j	__osDispatchThread
/* 009336 0x80089240 00000000 */ nop

glabel __osEnqueueThread
/* 009337 0x80089244 8C980000 */ lw	$t8, 0X0($a0)
/* 009338 0x80089248 8CAF0004 */ lw	$t7, 0X4($a1)
/* 009339 0x8008924C 0080C825 */ move	$t9, $a0
/* 009340 0x80089250 8F0E0004 */ lw	$t6, 0X4($t8)
/* 009341 0x80089254 01CF082A */ slt	$at, $t6, $t7
/* 009342 0x80089258 14200007 */ bnez	$at, .L80089278
/* 009343 0x8008925C 00000000 */ nop
.L80089260:
/* 009344 0x80089260 0300C825 */ move	$t9, $t8
/* 009345 0x80089264 8F180000 */ lw	$t8, 0X0($t8)
/* 009346 0x80089268 8F0E0004 */ lw	$t6, 0X4($t8)
/* 009347 0x8008926C 01CF082A */ slt	$at, $t6, $t7
/* 009348 0x80089270 1020FFFB */ beqz	$at, .L80089260
/* 009349 0x80089274 00000000 */ nop
.L80089278:
/* 009350 0x80089278 8F380000 */ lw	$t8, 0X0($t9)
/* 009351 0x8008927C ACB80000 */ sw	$t8, 0X0($a1)
/* 009352 0x80089280 AF250000 */ sw	$a1, 0X0($t9)
/* 009353 0x80089284 03E00008 */ jr	$ra
/* 009354 0x80089288 ACA40008 */ sw	$a0, 0X8($a1)

glabel __osPopThread
/* 009355 0x8008928C 8C820000 */ lw	$v0, 0X0($a0)
/* 009356 0x80089290 8C590000 */ lw	$t9, 0X0($v0)
/* 009357 0x80089294 03E00008 */ jr	$ra
/* 009358 0x80089298 AC990000 */ sw	$t9, 0X0($a0)

glabel func_8008929c
/* 009359 0x8008929C 03E00008 */ jr	$ra
/* 009360 0x800892A0 00000000 */ nop

glabel __osDispatchThread
/* 009361 0x800892A4 3C048009 */ lui	$a0, %hi(__osRunQueue)
/* 009362 0x800892A8 0C0224A3 */ jal	__osPopThread
/* 009363 0x800892AC 24847E18 */ addiu	$a0, $a0, %lo(__osRunQueue)
/* 009364 0x800892B0 3C018009 */ lui	$at, %hi(__osRunningThread)
/* 009365 0x800892B4 AC227E20 */ sw	$v0, %lo(__osRunningThread)($at)
/* 009366 0x800892B8 24080004 */ li	$t0, 0X4
/* 009367 0x800892BC A4480010 */ sh	$t0, 0X10($v0)
/* 009368 0x800892C0 0040D025 */ move	$k0, $v0
/* 009369 0x800892C4 3C088009 */ lui	$t0, %hi(__OSGlobalIntMask)
/* 009370 0x800892C8 8F5B0118 */ lw	$k1, 0X118($k0)
/* 009371 0x800892CC 25087E60 */ addiu	$t0, $t0, %lo(__OSGlobalIntMask)
/* 009372 0x800892D0 8D080000 */ lw	$t0, 0X0($t0)
/* 009373 0x800892D4 3C01FFFF */ lui	$at, 0xFFFF
/* 009374 0x800892D8 3369FF00 */ andi	$t1, $k1, 0XFF00
/* 009375 0x800892DC 342100FF */ ori	$at, $at, 0XFF
/* 009376 0x800892E0 3108FF00 */ andi	$t0, $t0, 0XFF00
/* 009377 0x800892E4 01284824 */ and	$t1, $t1, $t0
/* 009378 0x800892E8 0361D824 */ and	$k1, $k1, $at
/* 009379 0x800892EC 0369D825 */ or	$k1, $k1, $t1
/* 009380 0x800892F0 409B6000 */ mtc0	$k1, $12
/* 009381 0x800892F4 DF5B0108 */ ld	$k1, 0X108($k0)
/* 009382 0x800892F8 DF410020 */ ld	$at, 0X20($k0)
/* 009383 0x800892FC DF420028 */ ld	$v0, 0X28($k0)
/* 009384 0x80089300 03600013 */ mtlo	$k1
/* 009385 0x80089304 DF5B0110 */ ld	$k1, 0X110($k0)
/* 009386 0x80089308 DF430030 */ ld	$v1, 0X30($k0)
/* 009387 0x8008930C DF440038 */ ld	$a0, 0X38($k0)
/* 009388 0x80089310 DF450040 */ ld	$a1, 0X40($k0)
/* 009389 0x80089314 DF460048 */ ld	$a2, 0X48($k0)
/* 009390 0x80089318 DF470050 */ ld	$a3, 0X50($k0)
/* 009391 0x8008931C DF480058 */ ld	$t0, 0X58($k0)
/* 009392 0x80089320 DF490060 */ ld	$t1, 0X60($k0)
/* 009393 0x80089324 DF4A0068 */ ld	$t2, 0X68($k0)
/* 009394 0x80089328 DF4B0070 */ ld	$t3, 0X70($k0)
/* 009395 0x8008932C DF4C0078 */ ld	$t4, 0X78($k0)
/* 009396 0x80089330 DF4D0080 */ ld	$t5, 0X80($k0)
/* 009397 0x80089334 DF4E0088 */ ld	$t6, 0X88($k0)
/* 009398 0x80089338 DF4F0090 */ ld	$t7, 0X90($k0)
/* 009399 0x8008933C DF500098 */ ld	$s0, 0X98($k0)
/* 009400 0x80089340 DF5100A0 */ ld	$s1, 0XA0($k0)
/* 009401 0x80089344 DF5200A8 */ ld	$s2, 0XA8($k0)
/* 009402 0x80089348 DF5300B0 */ ld	$s3, 0XB0($k0)
/* 009403 0x8008934C DF5400B8 */ ld	$s4, 0XB8($k0)
/* 009404 0x80089350 DF5500C0 */ ld	$s5, 0XC0($k0)
/* 009405 0x80089354 DF5600C8 */ ld	$s6, 0XC8($k0)
/* 009406 0x80089358 DF5700D0 */ ld	$s7, 0XD0($k0)
/* 009407 0x8008935C DF5800D8 */ ld	$t8, 0XD8($k0)
/* 009408 0x80089360 DF5900E0 */ ld	$t9, 0XE0($k0)
/* 009409 0x80089364 DF5C00E8 */ ld	$gp, 0XE8($k0)
/* 009410 0x80089368 03600011 */ mthi	$k1
/* 009411 0x8008936C DF5D00F0 */ ld	$sp, 0XF0($k0)
/* 009412 0x80089370 DF5E00F8 */ ld	$fp, 0XF8($k0)
/* 009413 0x80089374 DF5F0100 */ ld	$ra, 0X100($k0)
/* 009414 0x80089378 8F5B011C */ lw	$k1, 0X11C($k0)
/* 009415 0x8008937C 409B7000 */ mtc0	$k1, $14
/* 009416 0x80089380 8F5B0018 */ lw	$k1, 0X18($k0)
/* 009417 0x80089384 13600013 */ beqz	$k1, .L800893D4
/* 009418 0x80089388 00000000 */ nop
/* 009419 0x8008938C 8F5B012C */ lw	$k1, 0X12C($k0)
/* 009420 0x80089390 44DBF800 */ ctc1	$k1, $31
/* 009421 0x80089394 D7400130 */ ldc1	$f0, 0X130($k0)
/* 009422 0x80089398 D7420138 */ ldc1	$f2, 0X138($k0)
/* 009423 0x8008939C D7440140 */ ldc1	$f4, 0X140($k0)
/* 009424 0x800893A0 D7460148 */ ldc1	$f6, 0X148($k0)
/* 009425 0x800893A4 D7480150 */ ldc1	$f8, 0X150($k0)
/* 009426 0x800893A8 D74A0158 */ ldc1	$f10, 0X158($k0)
/* 009427 0x800893AC D74C0160 */ ldc1	$f12, 0X160($k0)
/* 009428 0x800893B0 D74E0168 */ ldc1	$f14, 0X168($k0)
/* 009429 0x800893B4 D7500170 */ ldc1	$f16, 0X170($k0)
/* 009430 0x800893B8 D7520178 */ ldc1	$f18, 0X178($k0)
/* 009431 0x800893BC D7540180 */ ldc1	$f20, 0X180($k0)
/* 009432 0x800893C0 D7560188 */ ldc1	$f22, 0X188($k0)
/* 009433 0x800893C4 D7580190 */ ldc1	$f24, 0X190($k0)
/* 009434 0x800893C8 D75A0198 */ ldc1	$f26, 0X198($k0)
/* 009435 0x800893CC D75C01A0 */ ldc1	$f28, 0X1A0($k0)
/* 009436 0x800893D0 D75E01A8 */ ldc1	$f30, 0X1A8($k0)
.L800893D4:
/* 009437 0x800893D4 8F5B0128 */ lw	$k1, 0X128($k0)
/* 009438 0x800893D8 3C1A8009 */ lui	$k0, %hi(__OSGlobalIntMask)
/* 009439 0x800893DC 275A7E60 */ addiu	$k0, $k0, %lo(__OSGlobalIntMask)
/* 009440 0x800893E0 8F5A0000 */ lw	$k0, 0X0($k0)
/* 009441 0x800893E4 001AD402 */ srl	$k0, $k0, 16
/* 009442 0x800893E8 037AD824 */ and	$k1, $k1, $k0
/* 009443 0x800893EC 001BD840 */ sll	$k1, $k1, 1
/* 009444 0x800893F0 3C1A800A */ lui	$k0, %hi(D_800991A0)
/* 009445 0x800893F4 275A91A0 */ addiu	$k0, $k0, %lo(D_800991A0)
/* 009446 0x800893F8 037AD821 */ addu	$k1, $k1, $k0
/* 009447 0x800893FC 977B0000 */ lhu	$k1, 0X0($k1)
/* 009448 0x80089400 3C1AA430 */ lui	$k0, 0xA430
/* 009449 0x80089404 275A000C */ addiu	$k0, $k0, 0XC
/* 009450 0x80089408 AF5B0000 */ sw	$k1, 0X0($k0)
/* 009451 0x8008940C 00000000 */ nop
/* 009452 0x80089410 00000000 */ nop
/* 009453 0x80089414 00000000 */ nop
/* 009454 0x80089418 00000000 */ nop
/* 009455 0x8008941C 42000018 */ eret

glabel __osCleanupThread
/* 009456 0x80089420 0C02251C */ jal	osDestroyThread
/* 009457 0x80089424 00002025 */ move	$a0, $zero
/* 009458 0x80089428 00000000 */ nop
/* 009459 0x8008942C 00000000 */ nop
