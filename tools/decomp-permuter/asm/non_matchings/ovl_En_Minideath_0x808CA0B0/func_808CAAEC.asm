glabel func_808CAAEC
/* 000655 0x808CAAEC 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000656 0x808CAAF0 AFB00018 */ sw	$s0, 0X18($sp)
/* 000657 0x808CAAF4 00808025 */ move	$s0, $a0
/* 000658 0x808CAAF8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000659 0x808CAAFC AFA50024 */ sw	$a1, 0X24($sp)
/* 000660 0x808CAB00 8E050120 */ lw	$a1, 0X120($s0)
/* 000661 0x808CAB04 02002025 */ move	$a0, $s0
/* 000662 0x808CAB08 0C02DB7E */ jal	Actor_DistanceToPoint
/* 000663 0x808CAB0C 24A5003C */ addiu	$a1, $a1, 0X3C
/* 000664 0x808CAB10 8E050120 */ lw	$a1, 0X120($s0)
/* 000665 0x808CAB14 02002025 */ move	$a0, $s0
/* 000666 0x808CAB18 0C02DB4B */ jal	Actor_YawToPoint
/* 000667 0x808CAB1C 24A5003C */ addiu	$a1, $a1, 0X3C
/* 000668 0x808CAB20 00022C00 */ sll	$a1, $v0, 16
/* 000669 0x808CAB24 00052C03 */ sra	$a1, $a1, 16
/* 000670 0x808CAB28 260400BE */ addiu	$a0, $s0, 0XBE
/* 000671 0x808CAB2C 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000672 0x808CAB30 24060800 */ li	$a2, 0X800
/* 000673 0x808CAB34 8E050120 */ lw	$a1, 0X120($s0)
/* 000674 0x808CAB38 02002025 */ move	$a0, $s0
/* 000675 0x808CAB3C 0C02DB6A */ jal	Actor_PitchToPoint
/* 000676 0x808CAB40 24A5003C */ addiu	$a1, $a1, 0X3C
/* 000677 0x808CAB44 00022C00 */ sll	$a1, $v0, 16
/* 000678 0x808CAB48 00052C03 */ sra	$a1, $a1, 16
/* 000679 0x808CAB4C 260400BC */ addiu	$a0, $s0, 0XBC
/* 000680 0x808CAB50 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000681 0x808CAB54 24060800 */ li	$a2, 0X800
/* 000682 0x808CAB58 860E001C */ lh	$t6, 0X1C($s0)
/* 000683 0x808CAB5C 24010009 */ li	$at, 0X9
/* 000684 0x808CAB60 55C10007 */ bnel	$t6, $at, .L808CAB80
/* 000685 0x808CAB64 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000686 0x808CAB68 920F01DC */ lbu	$t7, 0X1DC($s0)
/* 000687 0x808CAB6C 02002025 */ move	$a0, $s0
/* 000688 0x808CAB70 35F80001 */ ori	$t8, $t7, 0X1
/* 000689 0x808CAB74 0C232BC2 */ jal	func_808CAF08
/* 000690 0x808CAB78 A21801DC */ sb	$t8, 0X1DC($s0)
/* 000691 0x808CAB7C 8FBF001C */ lw	$ra, 0X1C($sp)
.L808CAB80:
/* 000692 0x808CAB80 8FB00018 */ lw	$s0, 0X18($sp)
/* 000693 0x808CAB84 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000694 0x808CAB88 03E00008 */ jr	$ra
/* 000695 0x808CAB8C 00000000 */ nop

