glabel func_808CB094
/* 001017 0x808CB094 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001018 0x808CB098 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001019 0x808CB09C AFA5001C */ sw	$a1, 0X1C($sp)
/* 001020 0x808CB0A0 00803825 */ move	$a3, $a0
/* 001021 0x808CB0A4 8CE50120 */ lw	$a1, 0X120($a3)
/* 001022 0x808CB0A8 24E40024 */ addiu	$a0, $a3, 0X24
/* 001023 0x808CB0AC 3C0640A0 */ lui	$a2, 0x40A0
/* 001024 0x808CB0B0 0C040112 */ jal	Lib_PushAwayVec3f
/* 001025 0x808CB0B4 24A5003C */ addiu	$a1, $a1, 0X3C
/* 001026 0x808CB0B8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001027 0x808CB0BC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001028 0x808CB0C0 03E00008 */ jr	$ra
/* 001029 0x808CB0C4 00000000 */ nop

