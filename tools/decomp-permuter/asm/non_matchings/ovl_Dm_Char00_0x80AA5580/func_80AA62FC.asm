glabel func_80AA62FC
/* 000863 0x80AA62FC 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000864 0x80AA6300 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000865 0x80AA6304 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000866 0x80AA6308 00803825 */ move	$a3, $a0
/* 000867 0x80AA630C 84E5001C */ lh	$a1, 0X1C($a3)
/* 000868 0x80AA6310 AFA70028 */ sw	$a3, 0X28($sp)
/* 000869 0x80AA6314 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000870 0x80AA6318 24A50071 */ addiu	$a1, $a1, 0X71
/* 000871 0x80AA631C 30A5FFFF */ andi	$a1, $a1, 0XFFFF
/* 000872 0x80AA6320 0C03B8A7 */ jal	func_800EE29C
/* 000873 0x80AA6324 A7A50026 */ sh	$a1, 0X26($sp)
/* 000874 0x80AA6328 97A50026 */ lhu	$a1, 0X26($sp)
/* 000875 0x80AA632C 104000D8 */ beqz	$v0, .L80AA6690
/* 000876 0x80AA6330 8FA70028 */ lw	$a3, 0X28($sp)
/* 000877 0x80AA6334 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000878 0x80AA6338 0C03B880 */ jal	func_800EE200
/* 000879 0x80AA633C AFA70028 */ sw	$a3, 0X28($sp)
/* 000880 0x80AA6340 8FAE002C */ lw	$t6, 0X2C($sp)
/* 000881 0x80AA6344 00027880 */ sll	$t7, $v0, 2
/* 000882 0x80AA6348 AFA20020 */ sw	$v0, 0X20($sp)
/* 000883 0x80AA634C 01CF1821 */ addu	$v1, $t6, $t7
/* 000884 0x80AA6350 8C641F4C */ lw	$a0, 0X1F4C($v1)
/* 000885 0x80AA6354 95D81F34 */ lhu	$t8, 0X1F34($t6)
/* 000886 0x80AA6358 8FA70028 */ lw	$a3, 0X28($sp)
/* 000887 0x80AA635C 94990002 */ lhu	$t9, 0X2($a0)
/* 000888 0x80AA6360 571900C2 */ bnel	$t8, $t9, .L80AA666C
/* 000889 0x80AA6364 24F90144 */ addiu	$t9, $a3, 0X144
/* 000890 0x80AA6368 94850000 */ lhu	$a1, 0X0($a0)
/* 000891 0x80AA636C 90E80260 */ lbu	$t0, 0X260($a3)
/* 000892 0x80AA6370 510500BE */ beql	$t0, $a1, .L80AA666C
/* 000893 0x80AA6374 24F90144 */ addiu	$t9, $a3, 0X144
/* 000894 0x80AA6378 A0E50260 */ sb	$a1, 0X260($a3)
/* 000895 0x80AA637C 8C691F4C */ lw	$t1, 0X1F4C($v1)
/* 000896 0x80AA6380 952A0000 */ lhu	$t2, 0X0($t1)
/* 000897 0x80AA6384 254BFFFF */ addiu	$t3, $t2, -0X1
/* 000898 0x80AA6388 2D610038 */ sltiu	$at, $t3, 0X38
/* 000899 0x80AA638C 102000A9 */ beqz	$at, .L80AA6634
/* 000900 0x80AA6390 000B5880 */ sll	$t3, $t3, 2
/* 000901 0x80AA6394 3C0180AA */ lui	$at, %hi(jtbl_D_80AA7A00)
/* 000902 0x80AA6398 002B0821 */ addu	$at, $at, $t3
/* 000903 0x80AA639C 8C2B7A00 */ lw	$t3, %lo(jtbl_D_80AA7A00)($at)
/* 000904 0x80AA63A0 01600008 */ jr	$t3
/* 000905 0x80AA63A4 00000000 */ nop
glabel L80AA63A8
.L80AA63A8:
/* 000906 0x80AA63A8 100000A3 */ b	.L80AA6638
/* 000907 0x80AA63AC A0E00261 */ sb	$zero, 0X261($a3)
glabel L80AA63B0
.L80AA63B0:
/* 000908 0x80AA63B0 240C0002 */ li	$t4, 0X2
/* 000909 0x80AA63B4 100000A0 */ b	.L80AA6638
/* 000910 0x80AA63B8 A0EC0261 */ sb	$t4, 0X261($a3)
glabel L80AA63BC
.L80AA63BC:
/* 000911 0x80AA63BC 240D0003 */ li	$t5, 0X3
/* 000912 0x80AA63C0 1000009D */ b	.L80AA6638
/* 000913 0x80AA63C4 A0ED0261 */ sb	$t5, 0X261($a3)
glabel L80AA63C8
.L80AA63C8:
/* 000914 0x80AA63C8 240F0004 */ li	$t7, 0X4
/* 000915 0x80AA63CC 1000009A */ b	.L80AA6638
/* 000916 0x80AA63D0 A0EF0261 */ sb	$t7, 0X261($a3)
glabel L80AA63D4
.L80AA63D4:
/* 000917 0x80AA63D4 240E0005 */ li	$t6, 0X5
/* 000918 0x80AA63D8 10000097 */ b	.L80AA6638
/* 000919 0x80AA63DC A0EE0261 */ sb	$t6, 0X261($a3)
glabel L80AA63E0
.L80AA63E0:
/* 000920 0x80AA63E0 24180006 */ li	$t8, 0X6
/* 000921 0x80AA63E4 10000094 */ b	.L80AA6638
/* 000922 0x80AA63E8 A0F80261 */ sb	$t8, 0X261($a3)
glabel L80AA63EC
.L80AA63EC:
/* 000923 0x80AA63EC 24190007 */ li	$t9, 0X7
/* 000924 0x80AA63F0 10000091 */ b	.L80AA6638
/* 000925 0x80AA63F4 A0F90261 */ sb	$t9, 0X261($a3)
glabel L80AA63F8
.L80AA63F8:
/* 000926 0x80AA63F8 24080014 */ li	$t0, 0X14
/* 000927 0x80AA63FC 1000008E */ b	.L80AA6638
/* 000928 0x80AA6400 A0E80261 */ sb	$t0, 0X261($a3)
glabel L80AA6404
.L80AA6404:
/* 000929 0x80AA6404 24090015 */ li	$t1, 0X15
/* 000930 0x80AA6408 1000008B */ b	.L80AA6638
/* 000931 0x80AA640C A0E90261 */ sb	$t1, 0X261($a3)
glabel L80AA6410
.L80AA6410:
/* 000932 0x80AA6410 240A000E */ li	$t2, 0XE
/* 000933 0x80AA6414 10000088 */ b	.L80AA6638
/* 000934 0x80AA6418 A0EA0261 */ sb	$t2, 0X261($a3)
glabel L80AA641C
.L80AA641C:
/* 000935 0x80AA641C 240B000F */ li	$t3, 0XF
/* 000936 0x80AA6420 10000085 */ b	.L80AA6638
/* 000937 0x80AA6424 A0EB0261 */ sb	$t3, 0X261($a3)
glabel L80AA6428
.L80AA6428:
/* 000938 0x80AA6428 240C0012 */ li	$t4, 0X12
/* 000939 0x80AA642C 10000082 */ b	.L80AA6638
/* 000940 0x80AA6430 A0EC0261 */ sb	$t4, 0X261($a3)
glabel L80AA6434
.L80AA6434:
/* 000941 0x80AA6434 240D0019 */ li	$t5, 0X19
/* 000942 0x80AA6438 1000007F */ b	.L80AA6638
/* 000943 0x80AA643C A0ED0261 */ sb	$t5, 0X261($a3)
glabel L80AA6440
.L80AA6440:
/* 000944 0x80AA6440 240F001B */ li	$t7, 0X1B
/* 000945 0x80AA6444 1000007C */ b	.L80AA6638
/* 000946 0x80AA6448 A0EF0261 */ sb	$t7, 0X261($a3)
glabel L80AA644C
.L80AA644C:
/* 000947 0x80AA644C 240E0018 */ li	$t6, 0X18
/* 000948 0x80AA6450 10000079 */ b	.L80AA6638
/* 000949 0x80AA6454 A0EE0261 */ sb	$t6, 0X261($a3)
glabel L80AA6458
.L80AA6458:
/* 000950 0x80AA6458 2418000A */ li	$t8, 0XA
/* 000951 0x80AA645C 10000076 */ b	.L80AA6638
/* 000952 0x80AA6460 A0F80261 */ sb	$t8, 0X261($a3)
glabel L80AA6464
.L80AA6464:
/* 000953 0x80AA6464 2419000C */ li	$t9, 0XC
/* 000954 0x80AA6468 10000073 */ b	.L80AA6638
/* 000955 0x80AA646C A0F90261 */ sb	$t9, 0X261($a3)
glabel L80AA6470
.L80AA6470:
/* 000956 0x80AA6470 2408000D */ li	$t0, 0XD
/* 000957 0x80AA6474 10000070 */ b	.L80AA6638
/* 000958 0x80AA6478 A0E80261 */ sb	$t0, 0X261($a3)
glabel L80AA647C
.L80AA647C:
/* 000959 0x80AA647C 2409001D */ li	$t1, 0X1D
/* 000960 0x80AA6480 1000006D */ b	.L80AA6638
/* 000961 0x80AA6484 A0E90261 */ sb	$t1, 0X261($a3)
glabel L80AA6488
.L80AA6488:
/* 000962 0x80AA6488 240A001F */ li	$t2, 0X1F
/* 000963 0x80AA648C 1000006A */ b	.L80AA6638
/* 000964 0x80AA6490 A0EA0261 */ sb	$t2, 0X261($a3)
glabel L80AA6494
.L80AA6494:
/* 000965 0x80AA6494 240B0021 */ li	$t3, 0X21
/* 000966 0x80AA6498 10000067 */ b	.L80AA6638
/* 000967 0x80AA649C A0EB0261 */ sb	$t3, 0X261($a3)
glabel L80AA64A0
.L80AA64A0:
/* 000968 0x80AA64A0 00E02025 */ move	$a0, $a3
/* 000969 0x80AA64A4 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000970 0x80AA64A8 AFA70028 */ sw	$a3, 0X28($sp)
/* 000971 0x80AA64AC 10000062 */ b	.L80AA6638
/* 000972 0x80AA64B0 8FA70028 */ lw	$a3, 0X28($sp)
glabel L80AA64B4
.L80AA64B4:
/* 000973 0x80AA64B4 240C0023 */ li	$t4, 0X23
/* 000974 0x80AA64B8 1000005F */ b	.L80AA6638
/* 000975 0x80AA64BC A0EC0261 */ sb	$t4, 0X261($a3)
glabel L80AA64C0
.L80AA64C0:
/* 000976 0x80AA64C0 240D0025 */ li	$t5, 0X25
/* 000977 0x80AA64C4 1000005C */ b	.L80AA6638
/* 000978 0x80AA64C8 A0ED0261 */ sb	$t5, 0X261($a3)
glabel L80AA64CC
.L80AA64CC:
/* 000979 0x80AA64CC 240F0027 */ li	$t7, 0X27
/* 000980 0x80AA64D0 10000059 */ b	.L80AA6638
/* 000981 0x80AA64D4 A0EF0261 */ sb	$t7, 0X261($a3)
glabel L80AA64D8
.L80AA64D8:
/* 000982 0x80AA64D8 240E0029 */ li	$t6, 0X29
/* 000983 0x80AA64DC 10000056 */ b	.L80AA6638
/* 000984 0x80AA64E0 A0EE0261 */ sb	$t6, 0X261($a3)
glabel L80AA64E4
.L80AA64E4:
/* 000985 0x80AA64E4 2418002D */ li	$t8, 0X2D
/* 000986 0x80AA64E8 10000053 */ b	.L80AA6638
/* 000987 0x80AA64EC A0F80261 */ sb	$t8, 0X261($a3)
glabel L80AA64F0
.L80AA64F0:
/* 000988 0x80AA64F0 2419002E */ li	$t9, 0X2E
/* 000989 0x80AA64F4 10000050 */ b	.L80AA6638
/* 000990 0x80AA64F8 A0F90261 */ sb	$t9, 0X261($a3)
glabel L80AA64FC
.L80AA64FC:
/* 000991 0x80AA64FC 24080030 */ li	$t0, 0X30
/* 000992 0x80AA6500 1000004D */ b	.L80AA6638
/* 000993 0x80AA6504 A0E80261 */ sb	$t0, 0X261($a3)
glabel L80AA6508
.L80AA6508:
/* 000994 0x80AA6508 24090032 */ li	$t1, 0X32
/* 000995 0x80AA650C 1000004A */ b	.L80AA6638
/* 000996 0x80AA6510 A0E90261 */ sb	$t1, 0X261($a3)
glabel L80AA6514
.L80AA6514:
/* 000997 0x80AA6514 240A0034 */ li	$t2, 0X34
/* 000998 0x80AA6518 10000047 */ b	.L80AA6638
/* 000999 0x80AA651C A0EA0261 */ sb	$t2, 0X261($a3)
glabel L80AA6520
.L80AA6520:
/* 001000 0x80AA6520 240B0035 */ li	$t3, 0X35
/* 001001 0x80AA6524 10000044 */ b	.L80AA6638
/* 001002 0x80AA6528 A0EB0261 */ sb	$t3, 0X261($a3)
glabel L80AA652C
.L80AA652C:
/* 001003 0x80AA652C 240C0037 */ li	$t4, 0X37
/* 001004 0x80AA6530 10000041 */ b	.L80AA6638
/* 001005 0x80AA6534 A0EC0261 */ sb	$t4, 0X261($a3)
glabel L80AA6538
.L80AA6538:
/* 001006 0x80AA6538 240D0039 */ li	$t5, 0X39
/* 001007 0x80AA653C 1000003E */ b	.L80AA6638
/* 001008 0x80AA6540 A0ED0261 */ sb	$t5, 0X261($a3)
glabel L80AA6544
.L80AA6544:
/* 001009 0x80AA6544 240F003A */ li	$t7, 0X3A
/* 001010 0x80AA6548 1000003B */ b	.L80AA6638
/* 001011 0x80AA654C A0EF0261 */ sb	$t7, 0X261($a3)
glabel L80AA6550
.L80AA6550:
/* 001012 0x80AA6550 240E003B */ li	$t6, 0X3B
/* 001013 0x80AA6554 10000038 */ b	.L80AA6638
/* 001014 0x80AA6558 A0EE0261 */ sb	$t6, 0X261($a3)
glabel L80AA655C
.L80AA655C:
/* 001015 0x80AA655C 2418003D */ li	$t8, 0X3D
/* 001016 0x80AA6560 10000035 */ b	.L80AA6638
/* 001017 0x80AA6564 A0F80261 */ sb	$t8, 0X261($a3)
glabel L80AA6568
.L80AA6568:
/* 001018 0x80AA6568 2419003E */ li	$t9, 0X3E
/* 001019 0x80AA656C 10000032 */ b	.L80AA6638
/* 001020 0x80AA6570 A0F90261 */ sb	$t9, 0X261($a3)
glabel L80AA6574
.L80AA6574:
/* 001021 0x80AA6574 24080040 */ li	$t0, 0X40
/* 001022 0x80AA6578 1000002F */ b	.L80AA6638
/* 001023 0x80AA657C A0E80261 */ sb	$t0, 0X261($a3)
glabel L80AA6580
.L80AA6580:
/* 001024 0x80AA6580 24090042 */ li	$t1, 0X42
/* 001025 0x80AA6584 1000002C */ b	.L80AA6638
/* 001026 0x80AA6588 A0E90261 */ sb	$t1, 0X261($a3)
glabel L80AA658C
.L80AA658C:
/* 001027 0x80AA658C 240A0044 */ li	$t2, 0X44
/* 001028 0x80AA6590 10000029 */ b	.L80AA6638
/* 001029 0x80AA6594 A0EA0261 */ sb	$t2, 0X261($a3)
glabel L80AA6598
.L80AA6598:
/* 001030 0x80AA6598 240B0045 */ li	$t3, 0X45
/* 001031 0x80AA659C 10000026 */ b	.L80AA6638
/* 001032 0x80AA65A0 A0EB0261 */ sb	$t3, 0X261($a3)
glabel L80AA65A4
.L80AA65A4:
/* 001033 0x80AA65A4 240C0046 */ li	$t4, 0X46
/* 001034 0x80AA65A8 10000023 */ b	.L80AA6638
/* 001035 0x80AA65AC A0EC0261 */ sb	$t4, 0X261($a3)
glabel L80AA65B0
.L80AA65B0:
/* 001036 0x80AA65B0 240D0043 */ li	$t5, 0X43
/* 001037 0x80AA65B4 10000020 */ b	.L80AA6638
/* 001038 0x80AA65B8 A0ED0261 */ sb	$t5, 0X261($a3)
glabel L80AA65BC
.L80AA65BC:
/* 001039 0x80AA65BC 240F0047 */ li	$t7, 0X47
/* 001040 0x80AA65C0 1000001D */ b	.L80AA6638
/* 001041 0x80AA65C4 A0EF0261 */ sb	$t7, 0X261($a3)
glabel L80AA65C8
.L80AA65C8:
/* 001042 0x80AA65C8 240E0049 */ li	$t6, 0X49
/* 001043 0x80AA65CC 1000001A */ b	.L80AA6638
/* 001044 0x80AA65D0 A0EE0261 */ sb	$t6, 0X261($a3)
glabel L80AA65D4
.L80AA65D4:
/* 001045 0x80AA65D4 2418004A */ li	$t8, 0X4A
/* 001046 0x80AA65D8 10000017 */ b	.L80AA6638
/* 001047 0x80AA65DC A0F80261 */ sb	$t8, 0X261($a3)
glabel L80AA65E0
.L80AA65E0:
/* 001048 0x80AA65E0 2419004B */ li	$t9, 0X4B
/* 001049 0x80AA65E4 10000014 */ b	.L80AA6638
/* 001050 0x80AA65E8 A0F90261 */ sb	$t9, 0X261($a3)
glabel L80AA65EC
.L80AA65EC:
/* 001051 0x80AA65EC 2408004D */ li	$t0, 0X4D
/* 001052 0x80AA65F0 10000011 */ b	.L80AA6638
/* 001053 0x80AA65F4 A0E80261 */ sb	$t0, 0X261($a3)
glabel L80AA65F8
.L80AA65F8:
/* 001054 0x80AA65F8 2409004E */ li	$t1, 0X4E
/* 001055 0x80AA65FC 1000000E */ b	.L80AA6638
/* 001056 0x80AA6600 A0E90261 */ sb	$t1, 0X261($a3)
glabel L80AA6604
.L80AA6604:
/* 001057 0x80AA6604 240A004F */ li	$t2, 0X4F
/* 001058 0x80AA6608 1000000B */ b	.L80AA6638
/* 001059 0x80AA660C A0EA0261 */ sb	$t2, 0X261($a3)
glabel L80AA6610
.L80AA6610:
/* 001060 0x80AA6610 240B0050 */ li	$t3, 0X50
/* 001061 0x80AA6614 10000008 */ b	.L80AA6638
/* 001062 0x80AA6618 A0EB0261 */ sb	$t3, 0X261($a3)
glabel L80AA661C
.L80AA661C:
/* 001063 0x80AA661C 240C0052 */ li	$t4, 0X52
/* 001064 0x80AA6620 10000005 */ b	.L80AA6638
/* 001065 0x80AA6624 A0EC0261 */ sb	$t4, 0X261($a3)
glabel L80AA6628
.L80AA6628:
/* 001066 0x80AA6628 240D0053 */ li	$t5, 0X53
/* 001067 0x80AA662C 10000002 */ b	.L80AA6638
/* 001068 0x80AA6630 A0ED0261 */ sb	$t5, 0X261($a3)
glabel L80AA6634
.L80AA6634:
/* 001069 0x80AA6634 A0E00261 */ sb	$zero, 0X261($a3)
.L80AA6638:
/* 001070 0x80AA6638 90EF0261 */ lbu	$t7, 0X261($a3)
/* 001071 0x80AA663C 3C1880AA */ lui	$t8, %hi(D_80AA6FB0)
/* 001072 0x80AA6640 27186FB0 */ addiu	$t8, $t8, %lo(D_80AA6FB0)
/* 001073 0x80AA6644 000F7080 */ sll	$t6, $t7, 2
/* 001074 0x80AA6648 01CF7023 */ subu	$t6, $t6, $t7
/* 001075 0x80AA664C 000E70C0 */ sll	$t6, $t6, 3
/* 001076 0x80AA6650 01D82821 */ addu	$a1, $t6, $t8
/* 001077 0x80AA6654 AFA70028 */ sw	$a3, 0X28($sp)
/* 001078 0x80AA6658 24E40144 */ addiu	$a0, $a3, 0X144
/* 001079 0x80AA665C 0C2A9560 */ jal	func_80AA5580
/* 001080 0x80AA6660 00003025 */ move	$a2, $zero
/* 001081 0x80AA6664 8FA70028 */ lw	$a3, 0X28($sp)
/* 001082 0x80AA6668 24F90144 */ addiu	$t9, $a3, 0X144
.L80AA666C:
/* 001083 0x80AA666C AFB90018 */ sw	$t9, 0X18($sp)
/* 001084 0x80AA6670 00E02025 */ move	$a0, $a3
/* 001085 0x80AA6674 8FA5002C */ lw	$a1, 0X2C($sp)
/* 001086 0x80AA6678 8FA60020 */ lw	$a2, 0X20($sp)
/* 001087 0x80AA667C 0C03B7C9 */ jal	func_800EDF24
/* 001088 0x80AA6680 AFA70028 */ sw	$a3, 0X28($sp)
/* 001089 0x80AA6684 8FA40018 */ lw	$a0, 0X18($sp)
/* 001090 0x80AA6688 10000004 */ b	.L80AA669C
/* 001091 0x80AA668C 8FA70028 */ lw	$a3, 0X28($sp)
.L80AA6690:
/* 001092 0x80AA6690 24080063 */ li	$t0, 0X63
/* 001093 0x80AA6694 A0E80260 */ sb	$t0, 0X260($a3)
/* 001094 0x80AA6698 24E40144 */ addiu	$a0, $a3, 0X144
.L80AA669C:
/* 001095 0x80AA669C 8CE50154 */ lw	$a1, 0X154($a3)
/* 001096 0x80AA66A0 AFA70028 */ sw	$a3, 0X28($sp)
/* 001097 0x80AA66A4 0C04DE2E */ jal	func_801378B8
/* 001098 0x80AA66A8 AFA40018 */ sw	$a0, 0X18($sp)
/* 001099 0x80AA66AC 8FA40018 */ lw	$a0, 0X18($sp)
/* 001100 0x80AA66B0 1040004D */ beqz	$v0, .L80AA67E8
/* 001101 0x80AA66B4 8FA70028 */ lw	$a3, 0X28($sp)
/* 001102 0x80AA66B8 90E20261 */ lbu	$v0, 0X261($a3)
/* 001103 0x80AA66BC 2449FFFC */ addiu	$t1, $v0, -0X4
/* 001104 0x80AA66C0 2D210050 */ sltiu	$at, $t1, 0X50
/* 001105 0x80AA66C4 10200048 */ beqz	$at, .L80AA67E8
/* 001106 0x80AA66C8 00094880 */ sll	$t1, $t1, 2
/* 001107 0x80AA66CC 3C0180AA */ lui	$at, %hi(jtbl_D_80AA7AE0)
/* 001108 0x80AA66D0 00290821 */ addu	$at, $at, $t1
/* 001109 0x80AA66D4 8C297AE0 */ lw	$t1, %lo(jtbl_D_80AA7AE0)($at)
/* 001110 0x80AA66D8 01200008 */ jr	$t1
/* 001111 0x80AA66DC 00000000 */ nop
glabel L80AA66E0
.L80AA66E0:
/* 001112 0x80AA66E0 244A0004 */ addiu	$t2, $v0, 0X4
/* 001113 0x80AA66E4 314B00FF */ andi	$t3, $t2, 0XFF
/* 001114 0x80AA66E8 000B6080 */ sll	$t4, $t3, 2
/* 001115 0x80AA66EC 018B6023 */ subu	$t4, $t4, $t3
/* 001116 0x80AA66F0 3C0D80AA */ lui	$t5, %hi(D_80AA6FB0)
/* 001117 0x80AA66F4 A0EA0261 */ sb	$t2, 0X261($a3)
/* 001118 0x80AA66F8 25AD6FB0 */ addiu	$t5, $t5, %lo(D_80AA6FB0)
/* 001119 0x80AA66FC 000C60C0 */ sll	$t4, $t4, 3
/* 001120 0x80AA6700 018D2821 */ addu	$a1, $t4, $t5
/* 001121 0x80AA6704 AFA70028 */ sw	$a3, 0X28($sp)
/* 001122 0x80AA6708 0C2A9560 */ jal	func_80AA5580
/* 001123 0x80AA670C 00003025 */ move	$a2, $zero
/* 001124 0x80AA6710 3C014214 */ lui	$at, 0x4214
/* 001125 0x80AA6714 8FA70028 */ lw	$a3, 0X28($sp)
/* 001126 0x80AA6718 44812000 */ mtc1	$at, $f4
/* 001127 0x80AA671C 10000032 */ b	.L80AA67E8
/* 001128 0x80AA6720 E4E4015C */ swc1	$f4, 0X15C($a3)
glabel L80AA6724
.L80AA6724:
/* 001129 0x80AA6724 244F0002 */ addiu	$t7, $v0, 0X2
/* 001130 0x80AA6728 31EE00FF */ andi	$t6, $t7, 0XFF
/* 001131 0x80AA672C 000EC080 */ sll	$t8, $t6, 2
/* 001132 0x80AA6730 030EC023 */ subu	$t8, $t8, $t6
/* 001133 0x80AA6734 3C1980AA */ lui	$t9, %hi(D_80AA6FB0)
/* 001134 0x80AA6738 27396FB0 */ addiu	$t9, $t9, %lo(D_80AA6FB0)
/* 001135 0x80AA673C 0018C0C0 */ sll	$t8, $t8, 3
/* 001136 0x80AA6740 A0EF0261 */ sb	$t7, 0X261($a3)
/* 001137 0x80AA6744 03192821 */ addu	$a1, $t8, $t9
/* 001138 0x80AA6748 0C2A9560 */ jal	func_80AA5580
/* 001139 0x80AA674C 00003025 */ move	$a2, $zero
/* 001140 0x80AA6750 10000026 */ b	.L80AA67EC
/* 001141 0x80AA6754 8FBF0014 */ lw	$ra, 0X14($sp)
glabel L80AA6758
.L80AA6758:
/* 001142 0x80AA6758 24480001 */ addiu	$t0, $v0, 0X1
/* 001143 0x80AA675C 310900FF */ andi	$t1, $t0, 0XFF
/* 001144 0x80AA6760 00095080 */ sll	$t2, $t1, 2
/* 001145 0x80AA6764 01495023 */ subu	$t2, $t2, $t1
/* 001146 0x80AA6768 3C0B80AA */ lui	$t3, %hi(D_80AA6FB0)
/* 001147 0x80AA676C 256B6FB0 */ addiu	$t3, $t3, %lo(D_80AA6FB0)
/* 001148 0x80AA6770 000A50C0 */ sll	$t2, $t2, 3
/* 001149 0x80AA6774 A0E80261 */ sb	$t0, 0X261($a3)
/* 001150 0x80AA6778 014B2821 */ addu	$a1, $t2, $t3
/* 001151 0x80AA677C 0C2A9560 */ jal	func_80AA5580
/* 001152 0x80AA6780 00003025 */ move	$a2, $zero
/* 001153 0x80AA6784 10000019 */ b	.L80AA67EC
/* 001154 0x80AA6788 8FBF0014 */ lw	$ra, 0X14($sp)
glabel L80AA678C
.L80AA678C:
/* 001155 0x80AA678C 240C0013 */ li	$t4, 0X13
/* 001156 0x80AA6790 318D00FF */ andi	$t5, $t4, 0XFF
/* 001157 0x80AA6794 000D7880 */ sll	$t7, $t5, 2
/* 001158 0x80AA6798 01ED7823 */ subu	$t7, $t7, $t5
/* 001159 0x80AA679C 3C0E80AA */ lui	$t6, %hi(D_80AA6FB0)
/* 001160 0x80AA67A0 25CE6FB0 */ addiu	$t6, $t6, %lo(D_80AA6FB0)
/* 001161 0x80AA67A4 000F78C0 */ sll	$t7, $t7, 3
/* 001162 0x80AA67A8 A0EC0261 */ sb	$t4, 0X261($a3)
/* 001163 0x80AA67AC 01EE2821 */ addu	$a1, $t7, $t6
/* 001164 0x80AA67B0 0C2A9560 */ jal	func_80AA5580
/* 001165 0x80AA67B4 00003025 */ move	$a2, $zero
/* 001166 0x80AA67B8 1000000C */ b	.L80AA67EC
/* 001167 0x80AA67BC 8FBF0014 */ lw	$ra, 0X14($sp)
glabel L80AA67C0
.L80AA67C0:
/* 001168 0x80AA67C0 301800FF */ andi	$t8, $zero, 0XFF
/* 001169 0x80AA67C4 0018C880 */ sll	$t9, $t8, 2
/* 001170 0x80AA67C8 0338C823 */ subu	$t9, $t9, $t8
/* 001171 0x80AA67CC 3C0880AA */ lui	$t0, %hi(D_80AA6FB0)
/* 001172 0x80AA67D0 25086FB0 */ addiu	$t0, $t0, %lo(D_80AA6FB0)
/* 001173 0x80AA67D4 0019C8C0 */ sll	$t9, $t9, 3
/* 001174 0x80AA67D8 A0E00261 */ sb	$zero, 0X261($a3)
/* 001175 0x80AA67DC 03282821 */ addu	$a1, $t9, $t0
/* 001176 0x80AA67E0 0C2A9560 */ jal	func_80AA5580
/* 001177 0x80AA67E4 00003025 */ move	$a2, $zero
glabel L80AA67E8
.L80AA67E8:
/* 001178 0x80AA67E8 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AA67EC:
/* 001179 0x80AA67EC 27BD0028 */ addiu	$sp, $sp, 0X28
/* 001180 0x80AA67F0 03E00008 */ jr	$ra
/* 001181 0x80AA67F4 00000000 */ nop


.section .late_rodata

glabel jtbl_D_80AA7A00
/* 002336 0x80AA7A00 */ .word	L80AA63A8
/* 002337 0x80AA7A04 */ .word	L80AA63B0
/* 002338 0x80AA7A08 */ .word	L80AA63BC
/* 002339 0x80AA7A0C */ .word	L80AA63C8
/* 002340 0x80AA7A10 */ .word	L80AA63D4
/* 002341 0x80AA7A14 */ .word	L80AA63E0
/* 002342 0x80AA7A18 */ .word	L80AA63EC
/* 002343 0x80AA7A1C */ .word	L80AA63F8
/* 002344 0x80AA7A20 */ .word	L80AA6404
/* 002345 0x80AA7A24 */ .word	L80AA6410
/* 002346 0x80AA7A28 */ .word	L80AA641C
/* 002347 0x80AA7A2C */ .word	L80AA6428
/* 002348 0x80AA7A30 */ .word	L80AA6434
/* 002349 0x80AA7A34 */ .word	L80AA6440
/* 002350 0x80AA7A38 */ .word	L80AA644C
/* 002351 0x80AA7A3C */ .word	L80AA6458
/* 002352 0x80AA7A40 */ .word	L80AA6464
/* 002353 0x80AA7A44 */ .word	L80AA6470
/* 002354 0x80AA7A48 */ .word	L80AA647C
/* 002355 0x80AA7A4C */ .word	L80AA6488
/* 002356 0x80AA7A50 */ .word	L80AA6494
/* 002357 0x80AA7A54 */ .word	L80AA64A0
/* 002358 0x80AA7A58 */ .word	L80AA64B4
/* 002359 0x80AA7A5C */ .word	L80AA64C0
/* 002360 0x80AA7A60 */ .word	L80AA64CC
/* 002361 0x80AA7A64 */ .word	L80AA64D8
/* 002362 0x80AA7A68 */ .word	L80AA64E4
/* 002363 0x80AA7A6C */ .word	L80AA64F0
/* 002364 0x80AA7A70 */ .word	L80AA6634
/* 002365 0x80AA7A74 */ .word	L80AA64FC
/* 002366 0x80AA7A78 */ .word	L80AA6508
/* 002367 0x80AA7A7C */ .word	L80AA6514
/* 002368 0x80AA7A80 */ .word	L80AA6520
/* 002369 0x80AA7A84 */ .word	L80AA6634
/* 002370 0x80AA7A88 */ .word	L80AA652C
/* 002371 0x80AA7A8C */ .word	L80AA6538
/* 002372 0x80AA7A90 */ .word	L80AA6544
/* 002373 0x80AA7A94 */ .word	L80AA6550
/* 002374 0x80AA7A98 */ .word	L80AA655C
/* 002375 0x80AA7A9C */ .word	L80AA6568
/* 002376 0x80AA7AA0 */ .word	L80AA6574
/* 002377 0x80AA7AA4 */ .word	L80AA6580
/* 002378 0x80AA7AA8 */ .word	L80AA658C
/* 002379 0x80AA7AAC */ .word	L80AA6598
/* 002380 0x80AA7AB0 */ .word	L80AA65A4
/* 002381 0x80AA7AB4 */ .word	L80AA65B0
/* 002382 0x80AA7AB8 */ .word	L80AA65BC
/* 002383 0x80AA7ABC */ .word	L80AA65C8
/* 002384 0x80AA7AC0 */ .word	L80AA65D4
/* 002385 0x80AA7AC4 */ .word	L80AA65E0
/* 002386 0x80AA7AC8 */ .word	L80AA65EC
/* 002387 0x80AA7ACC */ .word	L80AA65F8
/* 002388 0x80AA7AD0 */ .word	L80AA6604
/* 002389 0x80AA7AD4 */ .word	L80AA6610
/* 002390 0x80AA7AD8 */ .word	L80AA661C
/* 002391 0x80AA7ADC */ .word	L80AA6628
glabel jtbl_D_80AA7AE0
/* 002392 0x80AA7AE0 */ .word	L80AA66E0
/* 002393 0x80AA7AE4 */ .word	L80AA66E0
/* 002394 0x80AA7AE8 */ .word	L80AA67E8
/* 002395 0x80AA7AEC */ .word	L80AA67E8
/* 002396 0x80AA7AF0 */ .word	L80AA67E8
/* 002397 0x80AA7AF4 */ .word	L80AA67E8
/* 002398 0x80AA7AF8 */ .word	L80AA6758
/* 002399 0x80AA7AFC */ .word	L80AA67E8
/* 002400 0x80AA7B00 */ .word	L80AA67E8
/* 002401 0x80AA7B04 */ .word	L80AA67E8
/* 002402 0x80AA7B08 */ .word	L80AA6724
/* 002403 0x80AA7B0C */ .word	L80AA6724
/* 002404 0x80AA7B10 */ .word	L80AA67E8
/* 002405 0x80AA7B14 */ .word	L80AA67E8
/* 002406 0x80AA7B18 */ .word	L80AA6758
/* 002407 0x80AA7B1C */ .word	L80AA67E8
/* 002408 0x80AA7B20 */ .word	L80AA6724
/* 002409 0x80AA7B24 */ .word	L80AA6724
/* 002410 0x80AA7B28 */ .word	L80AA67E8
/* 002411 0x80AA7B2C */ .word	L80AA67E8
/* 002412 0x80AA7B30 */ .word	L80AA67E8
/* 002413 0x80AA7B34 */ .word	L80AA6758
/* 002414 0x80AA7B38 */ .word	L80AA67E8
/* 002415 0x80AA7B3C */ .word	L80AA6758
/* 002416 0x80AA7B40 */ .word	L80AA67E8
/* 002417 0x80AA7B44 */ .word	L80AA6758
/* 002418 0x80AA7B48 */ .word	L80AA67E8
/* 002419 0x80AA7B4C */ .word	L80AA6758
/* 002420 0x80AA7B50 */ .word	L80AA67E8
/* 002421 0x80AA7B54 */ .word	L80AA6758
/* 002422 0x80AA7B58 */ .word	L80AA67E8
/* 002423 0x80AA7B5C */ .word	L80AA6758
/* 002424 0x80AA7B60 */ .word	L80AA67E8
/* 002425 0x80AA7B64 */ .word	L80AA6758
/* 002426 0x80AA7B68 */ .word	L80AA67E8
/* 002427 0x80AA7B6C */ .word	L80AA6758
/* 002428 0x80AA7B70 */ .word	L80AA67E8
/* 002429 0x80AA7B74 */ .word	L80AA67E8
/* 002430 0x80AA7B78 */ .word	L80AA67E8
/* 002431 0x80AA7B7C */ .word	L80AA6758
/* 002432 0x80AA7B80 */ .word	L80AA67E8
/* 002433 0x80AA7B84 */ .word	L80AA678C
/* 002434 0x80AA7B88 */ .word	L80AA6758
/* 002435 0x80AA7B8C */ .word	L80AA67E8
/* 002436 0x80AA7B90 */ .word	L80AA6758
/* 002437 0x80AA7B94 */ .word	L80AA67E8
/* 002438 0x80AA7B98 */ .word	L80AA6758
/* 002439 0x80AA7B9C */ .word	L80AA67E8
/* 002440 0x80AA7BA0 */ .word	L80AA67E8
/* 002441 0x80AA7BA4 */ .word	L80AA6758
/* 002442 0x80AA7BA8 */ .word	L80AA67E8
/* 002443 0x80AA7BAC */ .word	L80AA6758
/* 002444 0x80AA7BB0 */ .word	L80AA67E8
/* 002445 0x80AA7BB4 */ .word	L80AA67E8
/* 002446 0x80AA7BB8 */ .word	L80AA67E8
/* 002447 0x80AA7BBC */ .word	L80AA6758
/* 002448 0x80AA7BC0 */ .word	L80AA67E8
/* 002449 0x80AA7BC4 */ .word	L80AA67E8
/* 002450 0x80AA7BC8 */ .word	L80AA6758
/* 002451 0x80AA7BCC */ .word	L80AA67E8
/* 002452 0x80AA7BD0 */ .word	L80AA6758
/* 002453 0x80AA7BD4 */ .word	L80AA67E8
/* 002454 0x80AA7BD8 */ .word	L80AA6758
/* 002455 0x80AA7BDC */ .word	L80AA67E8
/* 002456 0x80AA7BE0 */ .word	L80AA67E8
/* 002457 0x80AA7BE4 */ .word	L80AA67E8
/* 002458 0x80AA7BE8 */ .word	L80AA67C0
/* 002459 0x80AA7BEC */ .word	L80AA6758
/* 002460 0x80AA7BF0 */ .word	L80AA67E8
/* 002461 0x80AA7BF4 */ .word	L80AA67E8
/* 002462 0x80AA7BF8 */ .word	L80AA67E8
/* 002463 0x80AA7BFC */ .word	L80AA6758
/* 002464 0x80AA7C00 */ .word	L80AA67E8
/* 002465 0x80AA7C04 */ .word	L80AA67C0
/* 002466 0x80AA7C08 */ .word	L80AA67E8
/* 002467 0x80AA7C0C */ .word	L80AA67E8
/* 002468 0x80AA7C10 */ .word	L80AA6758
/* 002469 0x80AA7C14 */ .word	L80AA67E8
/* 002470 0x80AA7C18 */ .word	L80AA67E8
/* 002471 0x80AA7C1C */ .word	L80AA6758
