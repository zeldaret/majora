/**
 * Sfx Item Bank
 *
 * DEFINE_SFX should be used for all sfx define in the item bank from sequence 0
 *    - Argument 0: Channel name for sequence 0
 *    - Argument 1: Enum value for this sfx
 *    - Argument 2: Importance for deciding which sfx to prioritize. Higher values have greater importance
 *    - Argument 3: Slows the decay of volume with distance (a 3-bit number ranging from 0-7)
 *    - Argument 4: Applies increasingly random offsets to frequency (a 2-bit number ranging from 0-3)
 *    - Argument 5: Various flags to add properties to the sfx
 *    - Argument 6: Various flags to add properties to the sfx
 */
/* 0x1800 */ DEFINE_SFX(CHAN_1A70, NA_SE_IT_SWORD_IMPACT, 0x30, 0, 1, 0, SFX_FLAG_FREQ_NO_DIST)
/* 0x1801 */ DEFINE_SFX(CHAN_1A7A, NA_SE_IT_SWORD_SWING, 0x30, 0, 1, 0, 0)
/* 0x1802 */ DEFINE_SFX(CHAN_1A8A, NA_SE_IT_SWORD_PUTAWAY, 0x30, 0, 0, 0, 0)
/* 0x1803 */ DEFINE_SFX(CHAN_1A94, NA_SE_IT_SWORD_PICKOUT, 0x30, 0, 0, 0, 0)
/* 0x1804 */ DEFINE_SFX(CHAN_1A9E, NA_SE_IT_ARROW_SHOT, 0x40, 0, 1, 0, SFX_FLAG_BEHIND_SCREEN_Z_INDEX)
/* 0x1805 */ DEFINE_SFX(CHAN_1AA8, NA_SE_IT_BOOMERANG_THROW, 0x30, 0, 1, 0, SFX_FLAG_BEHIND_SCREEN_Z_INDEX)
/* 0x1806 */ DEFINE_SFX(CHAN_1ABA, NA_SE_IT_SHIELD_BOUND, 0x60, 3, 2, 0, 0)
/* 0x1807 */ DEFINE_SFX(CHAN_1ACA, NA_SE_IT_BOW_DRAW, 0x30, 0, 1, 0, SFX_FLAG_BEHIND_SCREEN_Z_INDEX)
/* 0x1808 */ DEFINE_SFX(CHAN_1AD8, NA_SE_IT_SHIELD_REFLECT_SW, 0x80, 3, 1, 0, 0)
/* 0x1809 */ DEFINE_SFX(CHAN_1AF0, NA_SE_IT_ARROW_STICK_HRAD, 0x30, 0, 0, 0, 0)
/* 0x180A */ DEFINE_SFX(CHAN_1AFA, NA_SE_IT_HAMMER_HIT, 0x30, 0, 1, 0, 0)
/* 0x180B */ DEFINE_SFX(CHAN_1B11, NA_SE_IT_HOOKSHOT_CHAIN, 0x38, 0, 0, 0, SFX_FLAG_BEHIND_SCREEN_Z_INDEX)
/* 0x180C */ DEFINE_SFX(CHAN_1B29, NA_SE_IT_SHIELD_REFLECT_MG, 0x30, 1, 0, 0, SFX_FLAG_BEHIND_SCREEN_Z_INDEX)
/* 0x180D */ DEFINE_SFX(CHAN_1B59, NA_SE_IT_BOMB_IGNIT, 0x50, 0, 0, 0, SFX_FLAG_8)
/* 0x180E */ DEFINE_SFX(CHAN_1B71, NA_SE_IT_BOMB_EXPLOSION, 0x90, 2, 0, 0, 0)
/* 0x180F */ DEFINE_SFX(CHAN_1B80, NA_SE_IT_BOMB_UNEXPLOSION, 0x50, 2, 0, 0, 0)
/* 0x1810 */ DEFINE_SFX(CHAN_1B9D, NA_SE_IT_BOOMERANG_FLY, 0x30, 0, 0, 0, SFX_FLAG_BEHIND_SCREEN_Z_INDEX)
/* 0x1811 */ DEFINE_SFX(CHAN_1BCD, NA_SE_IT_SWORD_STRIKE, 0x40, 2, 0, 0, 0)
/* 0x1812 */ DEFINE_SFX(CHAN_1BE1, NA_SE_IT_HAMMER_SWING, 0x30, 0, 1, 0, 0)
/* 0x1813 */ DEFINE_SFX(CHAN_1BEF, NA_SE_IT_HOOKSHOT_REFLECT, 0x30, 0, 0, 0, 0)
/* 0x1814 */ DEFINE_SFX(CHAN_1C02, NA_SE_IT_HOOKSHOT_STICK_CRE, 0x30, 0, 0, 0, 0)
/* 0x1815 */ DEFINE_SFX(CHAN_1C17, NA_SE_IT_ARROW_STICK_OBJ, 0x34, 0, 0, 0, 0)
/* 0x1816 */ DEFINE_SFX(CHAN_1C1A, NA_SE_IT_SWORD_SLASH, 0x30, 0, 0, 0, 0)
/* 0x1817 */ DEFINE_SFX(CHAN_1C3D, NA_SE_IT_SWORD_SLASH_HARD, 0x30, 0, 0, 0, 0)
/* 0x1818 */ DEFINE_SFX(CHAN_1C60, NA_SE_IT_SWORD_SWING_HARD, 0x30, 0, 0, 0, 0)
/* 0x1819 */ DEFINE_SFX(CHAN_2CF0, NA_SE_IT_BOMB_BOUND, 0x30, 0, 0, 0, 0)
/* 0x181A */ DEFINE_SFX(CHAN_1C7E, NA_SE_IT_WALL_HIT_HARD, 0x60, 0, 0, 0, 0)
/* 0x181B */ DEFINE_SFX(CHAN_1C91, NA_SE_IT_WALL_HIT_SOFT, 0x30, 0, 0, 0, 0)
/* 0x181C */ DEFINE_SFX(CHAN_1CAA, NA_SE_IT_STONE_HIT, 0x30, 0, 0, 0, 0)
/* 0x181D */ DEFINE_SFX(CHAN_1CBB, NA_SE_IT_WOODSTICK_BROKEN, 0x30, 0, 0, 0, 0)
/* 0x181E */ DEFINE_SFX(CHAN_1CCC, NA_SE_IT_LASH, 0x30, 0, 2, 0, 0)
/* 0x181F */ DEFINE_SFX(CHAN_1CDF, NA_SE_IT_SHIELD_SWING, 0x30, 0, 1, 0, 0)
/* 0x1820 */ DEFINE_SFX(CHAN_1CFF, NA_SE_IT_SLING_SHOT, 0x30, 0, 0, 0, SFX_FLAG_BEHIND_SCREEN_Z_INDEX)
/* 0x1821 */ DEFINE_SFX(CHAN_1D0D, NA_SE_IT_SLING_DRAW, 0x20, 0, 0, 0, SFX_FLAG_BEHIND_SCREEN_Z_INDEX)
/* 0x1822 */ DEFINE_SFX(CHAN_1D1B, NA_SE_IT_SWORD_CHARGE, 0x30, 0, 0, 0, 0)
/* 0x1823 */ DEFINE_SFX(CHAN_1D51, NA_SE_IT_ROLLING_CUT, 0x30, 0, 0, 0, 0)
/* 0x1824 */ DEFINE_SFX(CHAN_1D68, NA_SE_IT_SWORD_STRIKE_HARD, 0x30, 0, 0, 0, 0)
/* 0x1825 */ DEFINE_SFX(CHAN_1D81, NA_SE_IT_SLING_REFLECT, 0x30, 0, 0, 0, 0)
/* 0x1826 */ DEFINE_SFX(CHAN_1D97, NA_SE_IT_SHIELD_REMOVE, 0x30, 0, 0, 0, 0)
/* 0x1827 */ DEFINE_SFX(CHAN_1DB7, NA_SE_IT_HOOKSHOT_READY, 0x30, 0, 0, 0, SFX_FLAG_BEHIND_SCREEN_Z_INDEX)
/* 0x1828 */ DEFINE_SFX(CHAN_1DD1, NA_SE_IT_HOOKSHOT_RECEIVE, 0x30, 0, 0, 0, SFX_FLAG_BEHIND_SCREEN_Z_INDEX)
/* 0x1829 */ DEFINE_SFX(CHAN_1DEB, NA_SE_IT_HOOKSHOT_STICK_OBJ, 0x60, 3, 1, 0, 0)
/* 0x182A */ DEFINE_SFX(CHAN_1E0D, NA_SE_IT_SWORD_REFLECT_MG, 0x30, 1, 0, 0, 0)
/* 0x182B */ DEFINE_SFX(CHAN_1E23, NA_SE_IT_DEKU, 0x30, 1, 0, 0, SFX_FLAG_BEHIND_SCREEN_Z_INDEX)
/* 0x182C */ DEFINE_SFX(CHAN_1E46, NA_SE_IT_WALL_HIT_BUYO, 0x30, 0, 0, 0, 0)
/* 0x182D */ DEFINE_SFX(CHAN_1E8C, NA_SE_IT_SWORD_PUTAWAY_STN, 0x30, 0, 0, 0, 0)
/* 0x182E */ DEFINE_SFX(CHAN_1E9D, NA_SE_IT_ROLLING_CUT_LV1, 0xA0, 2, 0, 0, 0)
/* 0x182F */ DEFINE_SFX(CHAN_1EC0, NA_SE_IT_ROLLING_CUT_LV2, 0xA0, 2, 0, 0, 0)
/* 0x1830 */ DEFINE_SFX(CHAN_1EDE, NA_SE_IT_BOW_FLICK, 0x30, 0, 0, 0, SFX_FLAG_BEHIND_SCREEN_Z_INDEX)
/* 0x1831 */ DEFINE_SFX(CHAN_1EF4, NA_SE_IT_BOMBCHU_MOVE, 0x30, 0, 0, 0, SFX_FLAG_8)
/* 0x1832 */ DEFINE_SFX(CHAN_1F16, NA_SE_IT_SHIELD_CHARGE_LV1, 0x60, 0, 0, 0, 0)
/* 0x1833 */ DEFINE_SFX(CHAN_1F62, NA_SE_IT_SHIELD_CHARGE_LV2, 0x60, 0, 0, 0, 0)
/* 0x1834 */ DEFINE_SFX(CHAN_1F67, NA_SE_IT_SHIELD_CHARGE_LV3, 0x60, 0, 0, 0, 0)
/* 0x1835 */ DEFINE_SFX(CHAN_1F6C, NA_SE_IT_SLING_FLICK, 0x30, 0, 0, 0, SFX_FLAG_BEHIND_SCREEN_Z_INDEX)
/* 0x1836 */ DEFINE_SFX(CHAN_1F81, NA_SE_IT_SWORD_STICK_STN, 0x30, 0, 0, 0, 0)
/* 0x1837 */ DEFINE_SFX(CHAN_1F98, NA_SE_IT_REFLECTION_WOOD, 0x60, 1, 2, 0, 0)
/* 0x1838 */ DEFINE_SFX(CHAN_1FB5, NA_SE_IT_SHIELD_REFLECT_MG2, 0x30, 0, 0, 0, 0)
/* 0x1839 */ DEFINE_SFX(CHAN_1FBE, NA_SE_IT_MAGIC_ARROW_SHOT, 0x30, 0, 0, 0, SFX_FLAG_BEHIND_SCREEN_Z_INDEX)
/* 0x183A */ DEFINE_SFX(CHAN_1FCF, NA_SE_IT_EXPLOSION_FRAME, 0x60, 3, 0, 0, SFX_FLAG_FREQ_NO_DIST)
/* 0x183B */ DEFINE_SFX(CHAN_1FEA, NA_SE_IT_EXPLOSION_ICE, 0x60, 3, 0, 0, SFX_FLAG_FREQ_NO_DIST)
/* 0x183C */ DEFINE_SFX(CHAN_1FFB, NA_SE_IT_EXPLOSION_LIGHT, 0x60, 3, 0, 0, SFX_FLAG_FREQ_NO_DIST)
/* 0x183D */ DEFINE_SFX(CHAN_200A, NA_SE_IT_FISHING_REEL_SLOW, 0x30, 0, 0, 0, SFX_PARAM_RAND_FREQ_LOWER)
/* 0x183E */ DEFINE_SFX(CHAN_2015, NA_SE_IT_FISHING_REEL_HIGH, 0x30, 0, 0, 0, SFX_PARAM_RAND_FREQ_LOWER)
/* 0x183F */ DEFINE_SFX(CHAN_1ACA, NA_SE_IT_PULL_FISHING_ROD, 0x30, 0, 1, 0, 0)
/* 0x1840 */ DEFINE_SFX(CHAN_2020, NA_SE_IT_DM_FLYING_GOD_PASS, 0x80, 3, 0, 0, 0)
/* 0x1841 */ DEFINE_SFX(CHAN_204F, NA_SE_IT_DM_FLYING_GOD_DASH, 0x80, 3, 0, 0, 0)
/* 0x1842 */ DEFINE_SFX(CHAN_2074, NA_SE_IT_DM_RING_EXPLOSION, 0x30, 3, 0, 0, 0)
/* 0x1843 */ DEFINE_SFX(CHAN_20B2, NA_SE_IT_DM_RING_GATHER, 0x30, 0, 0, 0, 0)
/* 0x1844 */ DEFINE_SFX(CHAN_27CD, NA_SE_IT_INGO_HORSE_NEIGH, 0x30, 0, 1, 0, 0)
/* 0x1845 */ DEFINE_SFX(CHAN_20B2, NA_SE_IT_EARTHQUAKE, 0x30, 0, 0, 0, 0)
/* 0x1846 */ DEFINE_SFX(CHAN_20C7, NA_SE_IT_ERUPTION_PILLAR, 0x30, 0, 0, 0, 0)
/* 0x1847 */ DEFINE_SFX(CHAN_20D6, NA_SE_IT_KAKASHI_JUMP, 0x30, 0, 0, 0, 0)
/* 0x1848 */ DEFINE_SFX(CHAN_20EA, NA_SE_IT_FLAME, 0x30, 0, 0, 0, 0)
/* 0x1849 */ DEFINE_SFX(CHAN_362F, NA_SE_IT_SHIELD_BEAM, 0x30, 0, 0, 0, 0)
/* 0x184A */ DEFINE_SFX(CHAN_20F1, NA_SE_IT_FISHING_HIT, 0x30, 0, 0, 0, 0)
/* 0x184B */ DEFINE_SFX(CHAN_210E, NA_SE_IT_GOODS_APPEAR, 0x30, 0, 0, 0, 0)
/* 0x184C */ DEFINE_SFX(CHAN_211B, NA_SE_IT_MAJIN_SWORD_BROKEN, 0x80, 0, 0, 0, 0)
/* 0x184D */ DEFINE_SFX(CHAN_2135, NA_SE_IT_HAND_CLAP, 0x30, 0, 0, 0, 0)
/* 0x184E */ DEFINE_SFX(CHAN_213F, NA_SE_IT_MASTER_SWORD_SWING, 0x30, 0, 0, 0, 0)
/* 0x184F */ DEFINE_SFX(CHAN_2156, NA_SE_IT_GORON_BALLFANG, 0x30, 0, 0, 0, 0)
/* 0x1850 */ DEFINE_SFX(CHAN_217C, NA_SE_IT_DEKUNUTS_FLOWER_OPEN, 0x80, 0, 0, 0, 0)
/* 0x1851 */ DEFINE_SFX(CHAN_21A1, NA_SE_IT_DEKUNUTS_FLOWER_ROLL, 0x80, 0, 0, 0, 0)
/* 0x1852 */ DEFINE_SFX(CHAN_21AF, NA_SE_IT_DEKUNUTS_FLOWER_CLOSE, 0x30, 0, 0, 0, 0)
/* 0x1853 */ DEFINE_SFX(CHAN_21BC, NA_SE_IT_DEKUNUTS_BUBLE_BROKEN, 0x30, 0, 0, 0, 0)
/* 0x1854 */ DEFINE_SFX(CHAN_21BC, NA_SE_IT_DEKUNUTS_BUBLE_VANISH, 0x30, 0, 0, 0, 0)
/* 0x1855 */ DEFINE_SFX(CHAN_38A0, NA_SE_IT_DEKUNUTS_DROP_BOMB, 0x30, 0, 0, 0, 0)
/* 0x1856 */ DEFINE_SFX(CHAN_21EE, NA_SE_IT_SET_TRANSFORM_MASK, 0x30, 0, 0, 0, 0)
/* 0x1857 */ DEFINE_SFX(CHAN_2206, NA_SE_IT_GORON_PUNCH_SWING, 0x30, 0, 0, 0, 0)
/* 0x1858 */ DEFINE_SFX(CHAN_2219, NA_SE_IT_TRANSFORM_MASK_BROKEN, 0x30, 0, 0, 0, 0)
/* 0x1859 */ DEFINE_SFX(CHAN_2230, NA_SE_IT_ZORA_KICK_SWING, 0x40, 0, 0, 0, 0)
/* 0x185A */ DEFINE_SFX(CHAN_2245, NA_SE_IT_DEKUNUTS_BUBLE_SHOT_LEVEL, 0x30, 0, 0, 0, 0)
/* 0x185B */ DEFINE_SFX(CHAN_225C, NA_SE_IT_BIG_BOMB_IGNIT, 0x60, 0, 0, 0, SFX_FLAG_8)
/* 0x185C */ DEFINE_SFX(CHAN_228C, NA_SE_IT_BIG_BOMB_EXPLOSION, 0x70, 0, 0, 0, 0)
/* 0x185D */ DEFINE_SFX(CHAN_22AE, NA_SE_IT_REFLECTION_SNOW, 0x60, 0, 0, 0, 0)
/* 0x185E */ DEFINE_SFX(CHAN_22BF, NA_SE_IT_GORON_ROLLING_REFLECTION, 0x30, 3, 2, 0, SFX_FLAG_BEHIND_SCREEN_Z_INDEX)
/* 0x185F */ DEFINE_SFX(CHAN_22DC, NA_SE_IT_MASK_BOUND_0, 0x30, 0, 1, 0, 0)
/* 0x1860 */ DEFINE_SFX(CHAN_22EB, NA_SE_IT_MASK_BOUND_1, 0x30, 0, 1, 0, 0)
/* 0x1861 */ DEFINE_SFX(CHAN_22FA, NA_SE_IT_MASK_BOUND_SAND, 0x30, 0, 0, 0, 0)
/* 0x1862 */ DEFINE_SFX(CHAN_2307, NA_SE_IT_REFLECTION_WATER, 0x30, 0, 0, 0, 0)
/* 0x1863 */ DEFINE_SFX(CHAN_2318, NA_SE_IT_KYOJIN_BEARING, 0x60, 0, 0, 0, SFX_FLAG_VOLUME_NO_DIST)
/* 0x1864 */ DEFINE_SFX(CHAN_21BC, NA_SE_FISHING_REEL_SLOW2, 0x30, 0, 0, 0, 0)
/* 0x1865 */ DEFINE_SFX(CHAN_38A0, NA_SE_IT_LURE_LAND1, 0x30, 0, 0, 0, 0)
/* 0x1866 */ DEFINE_SFX(CHAN_21EE, NA_SE_IT_ROD_THROW, 0x30, 0, 0, 0, 0)
/* 0x1867 */ DEFINE_SFX(CHAN_2206, NA_SE_IT_REFLECT_BOSS, 0x30, 0, 0, 0, 0)
/* 0x1868 */ DEFINE_SFX(CHAN_2219, NA_SE_IT_SHIELD_SWING_ZORA, 0x30, 0, 0, 0, 0)
/* 0x1869 */ DEFINE_SFX(CHAN_2230, NA_SE_IT_SHIELD_REMOVE_ZORA, 0x30, 0, 0, 0, 0)
/* 0x186A */ DEFINE_SFX(CHAN_2245, NA_SE_IT_BOMB_EXPLOSION2, 0x30, 0, 0, 0, 0)
/* 0x186B */ DEFINE_SFX(CHAN_225C, NA_SE_IT_FISHING_REEL_REVERSE, 0x30, 0, 0, 0, 0)
/* 0x186C */ DEFINE_SFX(CHAN_228C, NA_SE_IT_FISHING_WORM_BOUND, 0x30, 0, 0, 0, 0)
/* 0x186D */ DEFINE_SFX(CHAN_22AE, NA_SE_IT_DUMMY_109, 0x30, 0, 0, 0, 0)
/* 0x186E */ DEFINE_SFX(CHAN_22BF, NA_SE_IT_DUMMY_110, 0x30, 0, 0, 0, 0)
/* 0x186F */ DEFINE_SFX(CHAN_22DC, NA_SE_IT_DUMMY_111, 0x30, 0, 0, 0, 0)
