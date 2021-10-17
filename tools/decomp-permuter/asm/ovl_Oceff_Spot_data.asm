.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel Oceff_Spot_InitVars
/* 000448 0x80972D80 */ .word	0x00CC0700
/* 000449 0x80972D84 */ .word	0x02000010
/* 000450 0x80972D88 */ .word	0x00010000
/* 000451 0x80972D8C */ .word	0x00000178
/* 000452 0x80972D90 */ .word	OceffSpot_Init
/* 000453 0x80972D94 */ .word	OceffSpot_Destroy
/* 000454 0x80972D98 */ .word	OceffSpot_Update
/* 000455 0x80972D9C */ .word	OceffSpot_Draw
glabel D_80972DA0
/* 000456 0x80972DA0 */ .word	0x354D5AAC
/* 000457 0x80972DA4 */ .word	0xA5561C01
/* 000458 0x80972DA8 */ .word	0x124688B5
/* 000459 0x80972DAC */ .word	0x74583231
/* 000460 0x80972DB0 */ .word	0x313D71D6
/* 000461 0x80972DB4 */ .word	0x9F5B3507
/* 000462 0x80972DB8 */ .word	0x104089AD
/* 000463 0x80972DBC */ .word	0x748F440C
/* 000464 0x80972DC0 */ .word	0x408176AC
/* 000465 0x80972DC4 */ .word	0xB4661301
/* 000466 0x80972DC8 */ .word	0x2261C0BE
/* 000467 0x80972DCC */ .word	0x49392533
/* 000468 0x80972DD0 */ .word	0x2C497FC4
/* 000469 0x80972DD4 */ .word	0x80451D06
/* 000470 0x80972DD8 */ .word	0x2466BBD0
/* 000471 0x80972DDC */ .word	0x9CB85411
/* 000472 0x80972DE0 */ .word	0x40A09DA3
/* 000473 0x80972DE4 */ .word	0xB37F210B
/* 000474 0x80972DE8 */ .word	0x3D8AEAC7
/* 000475 0x80972DEC */ .word	0x3F241930
/* 000476 0x80972DF0 */ .word	0x2F5591A7
/* 000477 0x80972DF4 */ .word	0x6441080F
/* 000478 0x80972DF8 */ .word	0x4191E8DB
/* 000479 0x80972DFC */ .word	0xB7A76B18
/* 000480 0x80972E00 */ .word	0x4094BAA0
/* 000481 0x80972E04 */ .word	0x76532D22
/* 000482 0x80972E08 */ .word	0x60BAFEE8
/* 000483 0x80972E0C */ .word	0x8253545F
/* 000484 0x80972E10 */ .word	0x6078A896
/* 000485 0x80972E14 */ .word	0x73540723
/* 000486 0x80972E18 */ .word	0x66C2FEBB
/* 000487 0x80972E1C */ .word	0x87888723
/* 000488 0x80972E20 */ .word	0x4B87C79E
/* 000489 0x80972E24 */ .word	0x33123048
/* 000490 0x80972E28 */ .word	0x88E3FFFC
/* 000491 0x80972E2C */ .word	0xD39F7E72
/* 000492 0x80972E30 */ .word	0x8DA2AE80
/* 000493 0x80972E34 */ .word	0xA77B1940
/* 000494 0x80972E38 */ .word	0x90EBFFA9
/* 000495 0x80972E3C */ .word	0x6289973E
/* 000496 0x80972E40 */ .word	0x6F9ACD83
/* 000497 0x80972E44 */ .word	0x2D104B7F
/* 000498 0x80972E48 */ .word	0xAEEBFDF3
/* 000499 0x80972E4C */ .word	0xD8B26772
/* 000500 0x80972E50 */ .word	0xA7C7AD77
/* 000501 0x80972E54 */ .word	0xB1B34A61
/* 000502 0x80972E58 */ .word	0xB0F8FFD5
/* 000503 0x80972E5C */ .word	0x9496986B
/* 000504 0x80972E60 */ .word	0x9EC6D25D
/* 000505 0x80972E64 */ .word	0x503E85B3
/* 000506 0x80972E68 */ .word	0xC0C1E1EE
/* 000507 0x80972E6C */ .word	0xBD9B618E
/* 000508 0x80972E70 */ .word	0xBFE4A975
/* 000509 0x80972E74 */ .word	0x86E18B86
/* 000510 0x80972E78 */ .word	0xABCFF7F2
/* 000511 0x80972E7C */ .word	0xBC837E69
/* 000512 0x80972E80 */ .word	0xB5EFE465
/* 000513 0x80972E84 */ .word	0x5B66BACB
/* 000514 0x80972E88 */ .word	0xC794AADC
/* 000515 0x80972E8C */ .word	0xAC8982AE
/* 000516 0x80972E90 */ .word	0xD3F59754
/* 000517 0x80972E94 */ .word	0x65E2AAAD
/* 000518 0x80972E98 */ .word	0x8C85D0E1
/* 000519 0x80972E9C */ .word	0xAF634D39
/* 000520 0x80972EA0 */ .word	0xC7E2EDA3
/* 000521 0x80972EA4 */ .word	0x527ECACF
/* 000522 0x80972EA8 */ .word	0xBF777FC0
/* 000523 0x80972EAC */ .word	0xA284A5A5
/* 000524 0x80972EB0 */ .word	0xE3FE8A2F
/* 000525 0x80972EB4 */ .word	0x60CCAFBE
/* 000526 0x80972EB8 */ .word	0x7164B8BA
/* 000527 0x80972EBC */ .word	0x97553A2B
/* 000528 0x80972EC0 */ .word	0xE8BCBCDA
/* 000529 0x80972EC4 */ .word	0x76A1BBBA
/* 000530 0x80972EC8 */ .word	0x844D83BD
/* 000531 0x80972ECC */ .word	0x9C6B875B
/* 000532 0x80972ED0 */ .word	0xD9FFAA3F
/* 000533 0x80972ED4 */ .word	0x6AC9B59B
/* 000534 0x80972ED8 */ .word	0x6592BD94
/* 000535 0x80972EDC */ .word	0x956D3D3B
/* 000536 0x80972EE0 */ .word	0xFFA773D3
/* 000537 0x80972EE4 */ .word	0xB5B9AB90
/* 000538 0x80972EE8 */ .word	0x4033A0BC
/* 000539 0x80972EEC */ .word	0x873E3E1D
/* 000540 0x80972EF0 */ .word	0xB5FFE48D
/* 000541 0x80972EF4 */ .word	0x8CC9A761
/* 000542 0x80972EF8 */ .word	0x62CBAF79
/* 000543 0x80972EFC */ .word	0x98883457
/* 000544 0x80972F00 */ .word	0xF3766FAF
/* 000545 0x80972F04 */ .word	0xD5B2A26B
/* 000546 0x80972F08 */ .word	0x44549D8B
/* 000547 0x80972F0C */ .word	0x56232221
/* 000548 0x80972F10 */ .word	0x7DFFF2DD
/* 000549 0x80972F14 */ .word	0xC6B68840
/* 000550 0x80972F18 */ .word	0x4ECCA267
/* 000551 0x80972F1C */ .word	0x696D296E
/* 000552 0x80972F20 */ .word	0xA8328AAD
/* 000553 0x80972F24 */ .word	0xD3998447
/* 000554 0x80972F28 */ .word	0x5E7D8C5B
/* 000555 0x80972F2C */ .word	0x391F1E35
/* 000556 0x80972F30 */ .word	0x4EF6CDD3
/* 000557 0x80972F34 */ .word	0xDD9B6C2D
/* 000558 0x80972F38 */ .word	0x27A09571
/* 000559 0x80972F3C */ .word	0x37443656
/* 000560 0x80972F40 */ .word	0x4C1265C9
/* 000561 0x80972F44 */ .word	0xCA91612E
/* 000562 0x80972F48 */ .word	0x3B5A7A65
/* 000563 0x80972F4C */ .word	0x2F4F3421
/* 000564 0x80972F50 */ .word	0x36EAC380
/* 000565 0x80972F54 */ .word	0xB6814A1B
/* 000566 0x80972F58 */ .word	0x0C607075
/* 000567 0x80972F5C */ .word	0x5860803B
/* 000568 0x80972F60 */ .word	0x27102CCD
/* 000569 0x80972F64 */ .word	0xC9A87A47
/* 000570 0x80972F68 */ .word	0x16204B80
/* 000571 0x80972F6C */ .word	0x44B3860F
/* 000572 0x80972F70 */ .word	0x28DAE042
/* 000573 0x80972F74 */ .word	0x7F773710
/* 000574 0x80972F78 */ .word	0x0235616D
/* 000575 0x80972F7C */ .word	0xA089BE60
/* 000576 0x80972F80 */ .word	0x34161EBC
/* 000577 0x80972F84 */ .word	0xBBAAA972
/* 000578 0x80972F88 */ .word	0x172A3B91
/* 000579 0x80972F8C */ .word	0x96F6C319
/* 000580 0x80972F90 */ .word	0x21B7F02A
/* 000581 0x80972F94 */ .word	0x618F662A
/* 000582 0x80972F98 */ .word	0x02327A8C
/* 000583 0x80972F9C */ .word	0x97577B5C
/* 000584 0x80972FA0 */ .word	0x48171FB3
/* 000585 0x80972FA4 */ .word	0xA090AF87
/* 000586 0x80972FA8 */ .word	0x1F65609D
/* 000587 0x80972FAC */ .word	0xD8FFD41E
/* 000588 0x80972FB0 */ .word	0x177CC522
/* 000589 0x80972FB4 */ .word	0x69A8A462
/* 000590 0x80972FB8 */ .word	0x0D3A93B6
/* 000591 0x80972FBC */ .word	0x4F0C1821
/* 000592 0x80972FC0 */ .word	0x39151CA7
/* 000593 0x80972FC4 */ .word	0x928EAA9A
/* 000594 0x80972FC8 */ .word	0x33919BAF
/* 000595 0x80972FCC */ .word	0xEBFBDA23
/* 000596 0x80972FD0 */ .word	0x093B6937
/* 000597 0x80972FD4 */ .word	0x80AEA66C
/* 000598 0x80972FD8 */ .word	0x304491C7
/* 000599 0x80972FDC */ .word	0x3A031710
/* 000600 0x80972FE0 */ .word	0x16162197
/* 000601 0x80972FE4 */ .word	0x9B9FB5BA
/* 000602 0x80972FE8 */ .word	0x4C95CED8
/* 000603 0x80972FEC */ .word	0xF8F0D425
/* 000604 0x80972FF0 */ .word	0x05144066
/* 000605 0x80972FF4 */ .word	0x84B17F5A
/* 000606 0x80972FF8 */ .word	0x725E8DCD
/* 000607 0x80972FFC */ .word	0x5D376910
/* 000608 0x80973000 */ .word	0x19183886
/* 000609 0x80973004 */ .word	0xA3A1C4C6
/* 000610 0x80973008 */ .word	0x6584D1F1
/* 000611 0x8097300C */ .word	0xFFFABF12
/* 000612 0x80973010 */ .word	0x0E123F77
/* 000613 0x80973014 */ .word	0x88AF6881
/* 000614 0x80973018 */ .word	0xB97F98BB
/* 000615 0x8097301C */ .word	0x879BBC23
/* 000616 0x80973020 */ .word	0x4A20557C
/* 000617 0x80973024 */ .word	0x9BA5D0BB
/* 000618 0x80973028 */ .word	0x7583C6E0
/* 000619 0x8097302C */ .word	0xFEFFB322
/* 000620 0x80973030 */ .word	0x34283976
/* 000621 0x80973034 */ .word	0x95B06EB8
/* 000622 0x80973038 */ .word	0xE29B999F
/* 000623 0x8097303C */ .word	0xBDE9E582
/* 000624 0x80973040 */ .word	0x814C5C82
/* 000625 0x80973044 */ .word	0xA1C0ECBE
/* 000626 0x80973048 */ .word	0x789ED6B2
/* 000627 0x8097304C */ .word	0xF4FFD78F
/* 000628 0x80973050 */ .word	0x73324087
/* 000629 0x80973054 */ .word	0xA0C26FAB
/* 000630 0x80973058 */ .word	0xE0B1A5B9
/* 000631 0x8097305C */ .word	0xF2FFFADE
/* 000632 0x80973060 */ .word	0xAC906A89
/* 000633 0x80973064 */ .word	0xB3DDFFCB
/* 000634 0x80973068 */ .word	0x86B8CD75
/* 000635 0x8097306C */ .word	0xDFFFF1D7
/* 000636 0x80973070 */ .word	0x8F31579C
/* 000637 0x80973074 */ .word	0xAFDE7B87
/* 000638 0x80973078 */ .word	0xC8BAB4EB
/* 000639 0x8097307C */ .word	0xF0F2FFE4
/* 000640 0x80973080 */ .word	0xB29B798B
/* 000641 0x80973084 */ .word	0xC3F4FFD2
/* 000642 0x80973088 */ .word	0xA0A17C32
/* 000643 0x8097308C */ .word	0xA9FFE8BD
/* 000644 0x80973090 */ .word	0x784D7A91
/* 000645 0x80973094 */ .word	0xC7F5AB9B
/* 000646 0x80973098 */ .word	0xBEBB86D9
/* 000647 0x8097309C */ .word	0xB0BCF9D4
/* 000648 0x809730A0 */ .word	0x835C4C70
/* 000649 0x809730A4 */ .word	0xD8FFFFD7
/* 000650 0x809730A8 */ .word	0xA2682907
/* 000651 0x809730AC */ .word	0x68FFE29F
/* 000652 0x809730B0 */ .word	0x61707B7A
/* 000653 0x809730B4 */ .word	0xE5FFE7C8
/* 000654 0x809730B8 */ .word	0xCCC33C8E
/* 000655 0x809730BC */ .word	0x768CE0C7
/* 000656 0x809730C0 */ .word	0x51281940
/* 000657 0x809730C4 */ .word	0xCBFFFFCB
/* 000658 0x809730C8 */ .word	0x87450C00
/* 000659 0x809730CC */ .word	0x4BF3D58E
/* 000660 0x809730D0 */ .word	0x6D767B92
/* 000661 0x809730D4 */ .word	0xFAFFFFC8
/* 000662 0x809730D8 */ .word	0xC7BF175B
/* 000663 0x809730DC */ .word	0x708BBA9A
/* 000664 0x809730E0 */ .word	0x3A161542
/* 000665 0x809730E4 */ .word	0xB4FFF5A9
/* 000666 0x809730E8 */ .word	0x6D39090C
/* 000667 0x809730EC */ .word	0x50D8BC86
/* 000668 0x809730F0 */ .word	0x897AA1C8
/* 000669 0x809730F4 */ .word	0xFFFFF4A1
/* 000670 0x809730F8 */ .word	0x8C880B50
/* 000671 0x809730FC */ .word	0x91A49762
/* 000672 0x80973100 */ .word	0x2D0C1E78
/* 000673 0x80973104 */ .word	0xD4FFD97F
/* 000674 0x80973108 */ .word	0x58351E23
/* 000675 0x8097310C */ .word	0x6BB49283
/* 000676 0x80973110 */ .word	0x9B95C9EE
/* 000677 0x80973114 */ .word	0xFFFFD377
/* 000678 0x80973118 */ .word	0x4336075E
/* 000679 0x8097311C */ .word	0xBFB27641
/* 000680 0x80973120 */ .word	0x1B0224B5
/* 000681 0x80973124 */ .word	0xFCF7AC55
/* 000682 0x80973128 */ .word	0x41384344
/* 000683 0x8097312C */ .word	0x8FA06468
/* 000684 0x80973130 */ .word	0x9FB5DBFD
/* 000685 0x80973134 */ .word	0xFFF1A553
/* 000686 0x80973138 */ .word	0x190B1275
/* 000687 0x8097313C */ .word	0xCCA75D3A
/* 000688 0x80973140 */ .word	0x0C042ED9
/* 000689 0x80973144 */ .word	0xFFD97C33
/* 000690 0x80973148 */ .word	0x28405669
/* 000691 0x8097314C */ .word	0xB0914C3A
/* 000692 0x80973150 */ .word	0x9199C6FF
/* 000693 0x80973154 */ .word	0xFECF7835
/* 000694 0x80973158 */ .word	0x080C308B
/* 000695 0x8097315C */ .word	0xB38F6D47
/* 000696 0x80973160 */ .word	0x0A0D3DDB
/* 000697 0x80973164 */ .word	0xF3A75519
/* 000698 0x80973168 */ .word	0x1341558E
/* 000699 0x8097316C */ .word	0xBE7B4321
/* 000700 0x80973170 */ .word	0x6B4D94F8
/* 000701 0x80973174 */ .word	0xE4AC591A
/* 000702 0x80973178 */ .word	0x02175096
/* 000703 0x8097317C */ .word	0x8E7A9145
/* 000704 0x80973180 */ .word	0x1D224BBF
/* 000705 0x80973184 */ .word	0xC1723508
/* 000706 0x80973188 */ .word	0x0D3E5FA5
/* 000707 0x8097318C */ .word	0xA568351E
/* 000708 0x80973190 */ .word	0x422B6EE0
/* 000709 0x80973194 */ .word	0xBB85480B
/* 000710 0x80973198 */ .word	0x04256799
/* 000711 0x8097319C */ .word	0x716D6D21
glabel D_809731A0
/* 000712 0x809731A0 */ .word	0x00230000
/* 000713 0x809731A4 */ .word	0xFFDD0000
/* 000714 0x809731A8 */ .word	0x05000400
/* 000715 0x809731AC */ .word	0xFFFFFF00
/* 000716 0x809731B0 */ .word	0x00230096
/* 000717 0x809731B4 */ .word	0xFFDD0000
/* 000718 0x809731B8 */ .word	0x05000200
/* 000719 0x809731BC */ .word	0xFFFFFF7E
/* 000720 0x809731C0 */ .word	0x00320096
/* 000721 0x809731C4 */ .word	0x00000000
/* 000722 0x809731C8 */ .word	0x04000200
/* 000723 0x809731CC */ .word	0xFFFFFF7E
/* 000724 0x809731D0 */ .word	0x00320000
/* 000725 0x809731D4 */ .word	0x00000000
/* 000726 0x809731D8 */ .word	0x04000400
/* 000727 0x809731DC */ .word	0xFFFFFF00
/* 000728 0x809731E0 */ .word	0x002301F4
/* 000729 0x809731E4 */ .word	0xFFDD0000
/* 000730 0x809731E8 */ .word	0x05000000
/* 000731 0x809731EC */ .word	0xFFFFFFFF
/* 000732 0x809731F0 */ .word	0x003201F4
/* 000733 0x809731F4 */ .word	0x00000000
/* 000734 0x809731F8 */ .word	0x04000000
/* 000735 0x809731FC */ .word	0xFFFFFFFF
/* 000736 0x80973200 */ .word	0x00000000
/* 000737 0x80973204 */ .word	0xFFCE0000
/* 000738 0x80973208 */ .word	0x06000400
/* 000739 0x8097320C */ .word	0xFFFFFF00
/* 000740 0x80973210 */ .word	0x00000096
/* 000741 0x80973214 */ .word	0xFFCE0000
/* 000742 0x80973218 */ .word	0x06000200
/* 000743 0x8097321C */ .word	0xFFFFFF7E
/* 000744 0x80973220 */ .word	0x000001F4
/* 000745 0x80973224 */ .word	0xFFCE0000
/* 000746 0x80973228 */ .word	0x06000000
/* 000747 0x8097322C */ .word	0xFFFFFFFF
/* 000748 0x80973230 */ .word	0xFFDD0000
/* 000749 0x80973234 */ .word	0xFFDD0000
/* 000750 0x80973238 */ .word	0x07000400
/* 000751 0x8097323C */ .word	0xFFFFFF00
/* 000752 0x80973240 */ .word	0xFFDD0096
/* 000753 0x80973244 */ .word	0xFFDD0000
/* 000754 0x80973248 */ .word	0x07000200
/* 000755 0x8097324C */ .word	0xFFFFFF7E
/* 000756 0x80973250 */ .word	0xFFDD01F4
/* 000757 0x80973254 */ .word	0xFFDD0000
/* 000758 0x80973258 */ .word	0x07000000
/* 000759 0x8097325C */ .word	0xFFFFFFFF
/* 000760 0x80973260 */ .word	0xFFCE0000
/* 000761 0x80973264 */ .word	0x00000000
/* 000762 0x80973268 */ .word	0x08000400
/* 000763 0x8097326C */ .word	0xFFFFFF00
/* 000764 0x80973270 */ .word	0xFFCE0096
/* 000765 0x80973274 */ .word	0x00000000
/* 000766 0x80973278 */ .word	0x08000200
/* 000767 0x8097327C */ .word	0xFFFFFF7E
/* 000768 0x80973280 */ .word	0xFFCE01F4
/* 000769 0x80973284 */ .word	0x00000000
/* 000770 0x80973288 */ .word	0x08000000
/* 000771 0x8097328C */ .word	0xFFFFFFFF
/* 000772 0x80973290 */ .word	0xFFDD0000
/* 000773 0x80973294 */ .word	0x00230000
/* 000774 0x80973298 */ .word	0x01000400
/* 000775 0x8097329C */ .word	0xFFFFFF00
/* 000776 0x809732A0 */ .word	0xFFDD0096
/* 000777 0x809732A4 */ .word	0x00230000
/* 000778 0x809732A8 */ .word	0x01000200
/* 000779 0x809732AC */ .word	0xFFFFFF7E
/* 000780 0x809732B0 */ .word	0xFFCE0096
/* 000781 0x809732B4 */ .word	0x00000000
/* 000782 0x809732B8 */ .word	0x00000200
/* 000783 0x809732BC */ .word	0xFFFFFF7E
/* 000784 0x809732C0 */ .word	0xFFCE0000
/* 000785 0x809732C4 */ .word	0x00000000
/* 000786 0x809732C8 */ .word	0x00000400
/* 000787 0x809732CC */ .word	0xFFFFFF00
/* 000788 0x809732D0 */ .word	0xFFDD01F4
/* 000789 0x809732D4 */ .word	0x00230000
/* 000790 0x809732D8 */ .word	0x01000000
/* 000791 0x809732DC */ .word	0xFFFFFFFF
/* 000792 0x809732E0 */ .word	0xFFCE01F4
/* 000793 0x809732E4 */ .word	0x00000000
/* 000794 0x809732E8 */ .word	0x00000000
/* 000795 0x809732EC */ .word	0xFFFFFFFF
/* 000796 0x809732F0 */ .word	0x00000000
/* 000797 0x809732F4 */ .word	0x00320000
/* 000798 0x809732F8 */ .word	0x02000400
/* 000799 0x809732FC */ .word	0xFFFFFF00
/* 000800 0x80973300 */ .word	0x00000096
/* 000801 0x80973304 */ .word	0x00320000
/* 000802 0x80973308 */ .word	0x02000200
/* 000803 0x8097330C */ .word	0xFFFFFF7E
/* 000804 0x80973310 */ .word	0x000001F4
/* 000805 0x80973314 */ .word	0x00320000
/* 000806 0x80973318 */ .word	0x02000000
/* 000807 0x8097331C */ .word	0xFFFFFFFF
/* 000808 0x80973320 */ .word	0x00230000
/* 000809 0x80973324 */ .word	0x00230000
/* 000810 0x80973328 */ .word	0x03000400
/* 000811 0x8097332C */ .word	0xFFFFFF00
/* 000812 0x80973330 */ .word	0x00230096
/* 000813 0x80973334 */ .word	0x00230000
/* 000814 0x80973338 */ .word	0x03000200
/* 000815 0x8097333C */ .word	0xFFFFFF7E
/* 000816 0x80973340 */ .word	0x002301F4
/* 000817 0x80973344 */ .word	0x00230000
/* 000818 0x80973348 */ .word	0x03000000
/* 000819 0x8097334C */ .word	0xFFFFFFFF
glabel D_80973350
/* 000820 0x80973350 */ .word	0xE7000000
/* 000821 0x80973354 */ .word	0x00000000
/* 000822 0x80973358 */ .word	0xE3001001
/* 000823 0x8097335C */ .word	0x00000000
/* 000824 0x80973360 */ .word	0xD7000002
/* 000825 0x80973364 */ .word	0xFFFFFFFF
/* 000826 0x80973368 */ .word	0xFD900000
/* 000827 0x8097336C */ .word	D_80972DA0
/* 000828 0x80973370 */ .word	0xF5900000
/* 000829 0x80973374 */ .word	0x07014051
/* 000830 0x80973378 */ .word	0xE6000000
/* 000831 0x8097337C */ .word	0x00000000
/* 000832 0x80973380 */ .word	0xF3000000
/* 000833 0x80973384 */ .word	0x071FF200
/* 000834 0x80973388 */ .word	0xE7000000
/* 000835 0x8097338C */ .word	0x00000000
/* 000836 0x80973390 */ .word	0xF5880800
/* 000837 0x80973394 */ .word	0x00014051
/* 000838 0x80973398 */ .word	0xF2000000
/* 000839 0x8097339C */ .word	0x0007C07C
/* 000840 0x809733A0 */ .word	0xE8000000
/* 000841 0x809733A4 */ .word	0x00000000
/* 000842 0x809733A8 */ .word	0xF5880800
/* 000843 0x809733AC */ .word	0x01017C50
/* 000844 0x809733B0 */ .word	0xF2000000
/* 000845 0x809733B4 */ .word	0x0107C07C
/* 000846 0x809733B8 */ .word	0xFC262A60
/* 000847 0x809733BC */ .word	0x3510937F
/* 000848 0x809733C0 */ .word	0xE200001C
/* 000849 0x809733C4 */ .word	0x0C1849D8
/* 000850 0x809733C8 */ .word	0xD9F0FBFF
/* 000851 0x809733CC */ .word	0x00000000
/* 000852 0x809733D0 */ .word	0xFA000000
/* 000853 0x809733D4 */ .word	0xFFFFAAFF
/* 000854 0x809733D8 */ .word	0xFB000000
/* 000855 0x809733DC */ .word	0xC8FF0080
/* 000856 0x809733E0 */ .word	0xDF000000
/* 000857 0x809733E4 */ .word	0x00000000
glabel D_809733E8
/* 000858 0x809733E8 */ .word	0x0101B036
/* 000859 0x809733EC */ .word	D_809731A0
/* 000860 0x809733F0 */ .word	0x06000204
/* 000861 0x809733F4 */ .word	0x00000406
/* 000862 0x809733F8 */ .word	0x0602080A
/* 000863 0x809733FC */ .word	0x00020A04
/* 000864 0x80973400 */ .word	0x060C0E02
/* 000865 0x80973404 */ .word	0x000C0200
/* 000866 0x80973408 */ .word	0x060E1008
/* 000867 0x8097340C */ .word	0x000E0802
/* 000868 0x80973410 */ .word	0x0612140E
/* 000869 0x80973414 */ .word	0x00120E0C
/* 000870 0x80973418 */ .word	0x06141610
/* 000871 0x8097341C */ .word	0x0014100E
/* 000872 0x80973420 */ .word	0x06181A14
/* 000873 0x80973424 */ .word	0x00181412
/* 000874 0x80973428 */ .word	0x061A1C16
/* 000875 0x8097342C */ .word	0x001A1614
/* 000876 0x80973430 */ .word	0x061E2022
/* 000877 0x80973434 */ .word	0x001E2224
/* 000878 0x80973438 */ .word	0x06202628
/* 000879 0x8097343C */ .word	0x00202822
/* 000880 0x80973440 */ .word	0x062A2C20
/* 000881 0x80973444 */ .word	0x002A201E
/* 000882 0x80973448 */ .word	0x062C2E26
/* 000883 0x8097344C */ .word	0x002C2620
/* 000884 0x80973450 */ .word	0x0630322C
/* 000885 0x80973454 */ .word	0x00302C2A
/* 000886 0x80973458 */ .word	0x0632342E
/* 000887 0x8097345C */ .word	0x00322E2C
/* 000888 0x80973460 */ .word	0x06060432
/* 000889 0x80973464 */ .word	0x00063230
/* 000890 0x80973468 */ .word	0x06040A34
/* 000891 0x8097346C */ .word	0x00043432
/* 000892 0x80973470 */ .word	0xDF000000
/* 000893 0x80973474 */ .word	0x00000000
glabel D_80973478
/* 000894 0x80973478 */ .word	0xC8580000
/* 000895 0x8097347C */ .word	0x30FC05DC
