/**
 * Sfx System Bank
 *
 * DEFINE_SFX should be used for all sfx define in the system bank from sequence 0
 *    - Argument 0: Channel name for sequence 0
 *    - Argument 1: Enum value for this sfx
 *    - Argument 2: Importance for deciding which sfx to prioritize. Higher values have greater importance
 *    - Argument 3: Slows the decay of volume with distance (a 3-bit number ranging from 0-7)
 *    - Argument 4: Applies increasingly random offsets to frequency (a 2-bit number ranging from 0-3)
 *    - Argument 5: Various flags to add properties to the sfx
 *    - Argument 6: Various flags to add properties to the sfx
 */
/* 0x4800 */ DEFINE_SFX(CHAN_SY_WIN_OPEN, NA_SE_SY_WIN_OPEN, 0xC0, 0, 0, 0, 0)
/* 0x4801 */ DEFINE_SFX(CHAN_SY_WIN_CLOSE, NA_SE_SY_WIN_CLOSE, 0xC0, 0, 0, 0, 0)
/* 0x4802 */ DEFINE_SFX(CHAN_SY_CORRECT_CHIME, NA_SE_SY_CORRECT_CHIME, 0xB0, 0, 0, 0, SFX_FLAG_BLOCK_EQUAL_IMPORTANCE)
/* 0x4803 */ DEFINE_SFX(CHAN_SY_GET_RUPY, NA_SE_SY_GET_RUPY, 0x30, 0, 0, 0, 0)
/* 0x4804 */ DEFINE_SFX(CHAN_SY_MESSAGE_WOMAN, NA_SE_SY_MESSAGE_WOMAN, 0x30, 0, 0, 0, 0)
/* 0x4805 */ DEFINE_SFX(CHAN_SY_MESSAGE_MAN, NA_SE_SY_MESSAGE_MAN, 0x30, 0, 0, 0, 0)
/* 0x4806 */ DEFINE_SFX(CHAN_SY_MESSAGE_MAN, NA_SE_SY_ERROR, 0x50, 0, 0, 0, 0)
/* 0x4807 */ DEFINE_SFX(CHAN_SY_TRE_BOX_APPEAR, NA_SE_SY_TRE_BOX_APPEAR, 0x30, 0, 0, 0, SFX_FLAG_BLOCK_EQUAL_IMPORTANCE)
/* 0x4808 */ DEFINE_SFX(CHAN_SY_DECIDE, NA_SE_SY_DECIDE, 0x30, 0, 0, 0, 0)
/* 0x4809 */ DEFINE_SFX(CHAN_SY_CURSOR, NA_SE_SY_CURSOR, 0x30, 0, 0, 0, 0)
/* 0x480A */ DEFINE_SFX(CHAN_SY_CANCEL, NA_SE_SY_CANCEL, 0x30, 0, 0, 0, 0)
/* 0x480B */ DEFINE_SFX(CHAN_SY_HP_RECOVER, NA_SE_SY_HP_RECOVER, 0x30, 0, 0, 0, 0)
/* 0x480C */ DEFINE_SFX(CHAN_SY_ATTENTION_ON, NA_SE_SY_ATTENTION_ON, 0x20, 0, 0, 0, 0)
/* 0x480D */ DEFINE_SFX(CHAN_SY_DUMMY_13, NA_SE_SY_DUMMY_13, 0x30, 0, 0, 0, 0)
/* 0x480E */ DEFINE_SFX(CHAN_SY_DUMMY_14, NA_SE_SY_DUMMY_14, 0x30, 0, 0, 0, 0)
/* 0x480F */ DEFINE_SFX(CHAN_SY_LOCK_OFF, NA_SE_SY_LOCK_OFF, 0x30, 0, 0, 0, 0)
/* 0x4810 */ DEFINE_SFX(CHAN_SY_LOCK_ON_HUMAN, NA_SE_SY_LOCK_ON_HUMAN, 0x28, 0, 0, 0, 0)
/* 0x4811 */ DEFINE_SFX(CHAN_SY_DUMMY_13, NA_SE_SY_DUMMY_17, 0x30, 0, 0, 0, 0)
/* 0x4812 */ DEFINE_SFX(CHAN_SY_DUMMY_18, NA_SE_SY_DUMMY_18, 0x30, 0, 0, 0, 0)
/* 0x4813 */ DEFINE_SFX(CHAN_SY_CAMERA_ZOOM_UP, NA_SE_SY_CAMERA_ZOOM_UP, 0x30, 0, 0, 0, 0)
/* 0x4814 */ DEFINE_SFX(CHAN_SY_CAMERA_ZOOM_DOWN, NA_SE_SY_CAMERA_ZOOM_DOWN, 0x30, 0, 0, 0, 0)
/* 0x4815 */ DEFINE_SFX(CHAN_SY_CAMERA_ZOOM_UP, NA_SE_SY_DUMMY_21, 0x30, 0, 0, 0, 0)
/* 0x4816 */ DEFINE_SFX(CHAN_SY_CAMERA_ZOOM_UP, NA_SE_SY_DUMMY_22, 0x30, 0, 0, 0, 0)
/* 0x4817 */ DEFINE_SFX(CHAN_SY_ATTENTION_ON_OLD, NA_SE_SY_ATTENTION_ON_OLD, 0x30, 0, 0, 0, 0)
/* 0x4818 */ DEFINE_SFX(CHAN_SY_MESSAGE_PASS, NA_SE_SY_MESSAGE_PASS, 0x18, 0, 0, 0, 0)
/* 0x4819 */ DEFINE_SFX(CHAN_SY_WARNING_COUNT_N, NA_SE_SY_WARNING_COUNT_N, 0x2C, 0, 0, 0, 0)
/* 0x481A */ DEFINE_SFX(CHAN_SY_WARNING_COUNT_E, NA_SE_SY_WARNING_COUNT_E, 0x2C, 0, 0, 0, 0)
/* 0x481B */ DEFINE_SFX(CHAN_SY_HITPOINT_ALARM, NA_SE_SY_HITPOINT_ALARM, 0x20, 0, 0, 0, 0)
/* 0x481C */ DEFINE_SFX(CHAN_OC_TELOP_IMPACT, NA_SE_SY_DUMMY_28, 0x30, 0, 0, 0, 0)
/* 0x481D */ DEFINE_SFX(CHAN_SY_DEMO_CUT, NA_SE_SY_DEMO_CUT, 0x30, 0, 0, 0, 0)
/* 0x481E */ DEFINE_SFX(CHAN_SY_NAVY_CALL, NA_SE_SY_NAVY_CALL, 0x30, 0, 0, 0, 0)
/* 0x481F */ DEFINE_SFX(CHAN_SY_GAUGE_UP, NA_SE_SY_GAUGE_UP, 0x30, 0, 0, 0, 0)
/* 0x4820 */ DEFINE_SFX(CHAN_SY_DUMMY_32, NA_SE_SY_DUMMY_32, 0x30, 0, 0, 0, 0)
/* 0x4821 */ DEFINE_SFX(CHAN_SY_DUMMY_33, NA_SE_SY_DUMMY_33, 0x30, 0, 0, 0, 0)
/* 0x4822 */ DEFINE_SFX(CHAN_SY_DUMMY_34, NA_SE_SY_DUMMY_34, 0x30, 0, 0, 0, 0)
/* 0x4823 */ DEFINE_SFX(CHAN_SY_PIECE_OF_HEART, NA_SE_SY_PIECE_OF_HEART, 0x30, 0, 0, 0, 0)
/* 0x4824 */ DEFINE_SFX(CHAN_SY_GET_ITEM, NA_SE_SY_GET_ITEM, 0x30, 0, 0, 0, 0)
/* 0x4825 */ DEFINE_SFX(CHAN_SY_WIN_SCROLL_LEFT, NA_SE_SY_WIN_SCROLL_LEFT, 0x30, 0, 0, 0, 0)
/* 0x4826 */ DEFINE_SFX(CHAN_SY_WIN_SCROLL_RIGHT, NA_SE_SY_WIN_SCROLL_RIGHT, 0x30, 0, 0, 0, 0)
/* 0x4827 */ DEFINE_SFX(CHAN_SY_OCARINA_ERROR, NA_SE_SY_OCARINA_ERROR, 0x20, 0, 0, 0, 0)
/* 0x4828 */ DEFINE_SFX(CHAN_SY_CAMERA_ZOOM_UP_2, NA_SE_SY_CAMERA_ZOOM_UP_2, 0x30, 0, 0, 0, 0)
/* 0x4829 */ DEFINE_SFX(CHAN_SY_CAMERA_ZOOM_DOWN_2, NA_SE_SY_CAMERA_ZOOM_DOWN_2, 0x30, 0, 0, 0, 0)
/* 0x482A */ DEFINE_SFX(CHAN_SY_GLASSMODE_ON, NA_SE_SY_GLASSMODE_ON, 0x30, 0, 0, 0, 0)
/* 0x482B */ DEFINE_SFX(CHAN_SY_GLASSMODE_OFF, NA_SE_SY_GLASSMODE_OFF, 0x30, 0, 0, 0, 0)
/* 0x482C */ DEFINE_SFX(CHAN_SY_FOUND, NA_SE_SY_FOUND, 0x60, 0, 0, 0, 0)
/* 0x482D */ DEFINE_SFX(CHAN_EV_HIT_SOUND, NA_SE_SY_HIT_SOUND, 0x30, 0, 0, 0, 0)
/* 0x482E */ DEFINE_SFX(CHAN_SY_MESSAGE_END, NA_SE_SY_MESSAGE_END, 0x30, 0, 0, 0, 0)
/* 0x482F */ DEFINE_SFX(CHAN_SY_RUPY_COUNT, NA_SE_SY_RUPY_COUNT, 0x30, 0, 0, 0, 0)
/* 0x4830 */ DEFINE_SFX(CHAN_SY_LOCK_ON, NA_SE_SY_LOCK_ON, 0x30, 0, 0, 0, 0)
/* 0x4831 */ DEFINE_SFX(CHAN_SY_GET_BOXITEM, NA_SE_SY_GET_BOXITEM, 0x30, 0, 0, 0, 0)
/* 0x4832 */ DEFINE_SFX(CHAN_SY_WHITE_OUT_INTO_MOON, NA_SE_SY_WHITE_OUT_INTO_MOON, 0x30, 0, 0, 0, 0)
/* 0x4833 */ DEFINE_SFX(CHAN_SY_WHITE_OUT_S, NA_SE_SY_WHITE_OUT_S, 0x30, 0, 0, 0, 0)
/* 0x4834 */ DEFINE_SFX(CHAN_SY_WHITE_OUT_T, NA_SE_SY_WHITE_OUT_T, 0x30, 0, 0, 0, 0)
/* 0x4835 */ DEFINE_SFX(CHAN_SY_START_SHOT, NA_SE_SY_START_SHOT, 0x30, 0, 0, 0, 0)
/* 0x4836 */ DEFINE_SFX(CHAN_SY_METRONOME, NA_SE_SY_METRONOME, 0x30, 0, 0, 0, 0)
/* 0x4837 */ DEFINE_SFX(CHAN_SY_ATTENTION_URGENCY, NA_SE_SY_ATTENTION_URGENCY, 0x30, 0, 0, 0, 0)
/* 0x4838 */ DEFINE_SFX(CHAN_SY_METRONOME_LV, NA_SE_SY_METRONOME_LV, 0x30, 0, 0, 0, 0)
/* 0x4839 */ DEFINE_SFX(CHAN_SY_FSEL_CURSOR, NA_SE_SY_FSEL_CURSOR, 0x30, 0, 0, 0, 0)
/* 0x483A */ DEFINE_SFX(CHAN_SY_FSEL_DECIDE_S, NA_SE_SY_FSEL_DECIDE_S, 0x30, 0, 0, 0, 0)
/* 0x483B */ DEFINE_SFX(CHAN_SY_FSEL_DECIDE_L, NA_SE_SY_FSEL_DECIDE_L, 0x30, 0, 0, 0, 0)
/* 0x483C */ DEFINE_SFX(CHAN_SY_FSEL_CLOSE, NA_SE_SY_FSEL_CLOSE, 0x30, 0, 0, 0, 0)
/* 0x483D */ DEFINE_SFX(CHAN_SY_FSEL_ERROR, NA_SE_SY_FSEL_ERROR, 0x30, 0, 0, 0, 0)
/* 0x483E */ DEFINE_SFX(CHAN_SY_SET_FIRE_ARROW, NA_SE_SY_SET_FIRE_ARROW, 0x30, 0, 0, 0, 0)
/* 0x483F */ DEFINE_SFX(CHAN_SY_SET_ICE_ARROW, NA_SE_SY_SET_ICE_ARROW, 0x30, 0, 0, 0, 0)
/* 0x4840 */ DEFINE_SFX(CHAN_SY_SET_LIGHT_ARROW, NA_SE_SY_SET_LIGHT_ARROW, 0x30, 0, 0, 0, 0)
/* 0x4841 */ DEFINE_SFX(CHAN_SY_SYNTH_MAGIC_ARROW, NA_SE_SY_SYNTH_MAGIC_ARROW, 0x30, 0, 0, 0, 0)
/* 0x4842 */ DEFINE_SFX(CHAN_SY_METRONOME_2, NA_SE_SY_METRONOME_2, 0x30, 0, 0, 0, 0)
/* 0x4843 */ DEFINE_SFX(CHAN_SY_KINSTA_MARK_APPEAR, NA_SE_SY_KINSTA_MARK_APPEAR, 0x30, 0, 0, 0, 0)
/* 0x4844 */ DEFINE_SFX(CHAN_EV_FIVE_COUNT_LUPY, NA_SE_SY_FIVE_COUNT_LUPY, 0x30, 0, 0, 0, 0)
/* 0x4845 */ DEFINE_SFX(CHAN_SY_CARROT_RECOVER, NA_SE_SY_CARROT_RECOVER, 0x30, 0, 0, 0, 0)
/* 0x4846 */ DEFINE_SFX(CHAN_EV_FAIVE_LUPY_COUNT, NA_SE_EV_FAIVE_LUPY_COUNT, 0x30, 0, 0, 0, 0)
/* 0x4847 */ DEFINE_SFX(CHAN_SY_METRONOME_TEMPO, NA_SE_SY_METRONOME_TEMPO, 0x30, 0, 0, 0, 0)
/* 0x4848 */ DEFINE_SFX(CHAN_SY_COMICAL_SOUND0_0, NA_SE_SY_COMICAL_SOUND0_0, 0x30, 0, 0, 0, 0)
/* 0x4849 */ DEFINE_SFX(CHAN_SY_COMICAL_SOUND0_1, NA_SE_SY_COMICAL_SOUND0_1, 0x30, 0, 0, 0, 0)
/* 0x484A */ DEFINE_SFX(CHAN_SY_COMICAL_SOUND0_LAST, NA_SE_SY_COMICAL_SOUND0_LAST, 0x30, 0, 0, 0, 0)
/* 0x484B */ DEFINE_SFX(CHAN_SY_SOUT_DEMO, NA_SE_SY_SOUT_DEMO, 0x30, 0, 0, 0, 0)
/* 0x484C */ DEFINE_SFX(CHAN_SY_TIMESIGNAL_BELL, NA_SE_SY_TIMESIGNAL_BELL, 0x30, 0, 0, 0, 0)
/* 0x484D */ DEFINE_SFX(CHAN_SY_DEKUNUTS_JUMP_FAILED, NA_SE_SY_DEKUNUTS_JUMP_FAILED, 0x30, 0, 0, 0, 0)
/* 0x484E */ DEFINE_SFX(CHAN_SY_ATTENTION_SOUND, NA_SE_SY_ATTENTION_SOUND, 0x30, 0, 0, 0, 0)
/* 0x484F */ DEFINE_SFX(CHAN_SY_TRANSFORM_MASK_FLASH, NA_SE_SY_TRANSFORM_MASK_FLASH, 0x30, 0, 0, 0, 0)
/* 0x4850 */ DEFINE_SFX(CHAN_SY_CAMERA_SHUTTER, NA_SE_SY_CAMERA_SHUTTER, 0x30, 0, 0, 0, 0)
/* 0x4851 */ DEFINE_SFX(CHAN_SY_STALKIDS_PSYCHO, NA_SE_SY_STALKIDS_PSYCHO, 0x60, 0, 0, 0, 0)
/* 0x4852 */ DEFINE_SFX(CHAN_SY_CHICK_JOIN_CHIME, NA_SE_SY_CHICK_JOIN_CHIME, 0x30, 0, 0, 0, 0)
/* 0x4853 */ DEFINE_SFX(CHAN_SY_HIT_SOUND_L, NA_SE_SY_HIT_SOUND_L, 0x30, 0, 0, 0, 0)
/* 0x4854 */ DEFINE_SFX(CHAN_SY_FAIRY_MASK_SUCCESS, NA_SE_SY_FAIRY_MASK_SUCCESS, 0x30, 0, 0, 0, SFX_FLAG_BLOCK_EQUAL_IMPORTANCE)
/* 0x4855 */ DEFINE_SFX(CHAN_SY_SCHEDULE_WRITE, NA_SE_SY_SCHEDULE_WRITE, 0x60, 0, 0, 0, 0)
/* 0x4856 */ DEFINE_SFX(CHAN_SY_STOPWATCH_TIMER_3, NA_SE_SY_STOPWATCH_TIMER_3, 0x30, 0, 0, 0, 0)
/* 0x4857 */ DEFINE_SFX(CHAN_SY_STOPWATCH_TIMER_INF, NA_SE_SY_STOPWATCH_TIMER_INF, 0x30, 0, 0, 0, 0)
/* 0x4858 */ DEFINE_SFX(CHAN_SY_EARTHQUAKE_OUTDOOR, NA_SE_SY_EARTHQUAKE_OUTDOOR, 0x30, 0, 0, 0, 0)
/* 0x4859 */ DEFINE_SFX(CHAN_SY_SPIRAL_DASH, NA_SE_SY_SPIRAL_DASH, 0x30, 0, 0, 0, 0)
/* 0x485A */ DEFINE_SFX(CHAN_SY_QUIZ_CORRECT, NA_SE_SY_QUIZ_CORRECT, 0x30, 0, 0, 0, 0)
/* 0x485B */ DEFINE_SFX(CHAN_SY_QUIZ_INCORRECT, NA_SE_SY_QUIZ_INCORRECT, 0x30, 0, 0, 0, 0)
/* 0x485C */ DEFINE_SFX(CHAN_SY_DIZZY_EFFECT, NA_SE_SY_DIZZY_EFFECT, 0x30, 0, 0, 0, 0)
/* 0x485D */ DEFINE_SFX(CHAN_SY_TIME_CONTROL_SLOW, NA_SE_SY_TIME_CONTROL_SLOW, 0xA0, 0, 0, 0, SFX_FLAG_LOWER_VOLUME_BGM)
/* 0x485E */ DEFINE_SFX(CHAN_SY_TIME_CONTROL_NORMAL, NA_SE_SY_TIME_CONTROL_NORMAL, 0xA0, 0, 0, 0, SFX_FLAG_LOWER_VOLUME_BGM)
/* 0x485F */ DEFINE_SFX(CHAN_SY_SECOM_WARNING, NA_SE_SY_SECOM_WARNING, 0x30, 0, 0, 0, 0)
