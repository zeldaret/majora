glabel func_80AB9708
/* 004734 0x80AB9708 AFA40000 */ sw	$a0, 0X0($sp)
/* 004735 0x80AB970C AFA7000C */ sw	$a3, 0XC($sp)
/* 004736 0x80AB9710 24010001 */ li	$at, 0X1
/* 004737 0x80AB9714 10A10006 */ beq	$a1, $at, .L80AB9730
/* 004738 0x80AB9718 00001025 */ move	$v0, $zero
/* 004739 0x80AB971C 24010002 */ li	$at, 0X2
/* 004740 0x80AB9720 10A10003 */ beq	$a1, $at, .L80AB9730
/* 004741 0x80AB9724 24010003 */ li	$at, 0X3
/* 004742 0x80AB9728 14A10002 */ bne	$a1, $at, .L80AB9734
/* 004743 0x80AB972C 00000000 */ nop
.L80AB9730:
/* 004744 0x80AB9730 ACC00000 */ sw	$zero, 0X0($a2)
.L80AB9734:
/* 004745 0x80AB9734 03E00008 */ jr	$ra
/* 004746 0x80AB9738 00000000 */ nop

