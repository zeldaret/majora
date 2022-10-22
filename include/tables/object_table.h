/**
 * Object Table
 *
 * DEFINE_OBJECT should be used for normal objects
 *    - Argument 0: Name of the object segment in spec
 *    - Argument 1: Enum value for this object
 *
 * DEFINE_OBJECT_UNSET and DEFINE_OBJECT_SIZE_ZERO are needed to define empty entries from the original game
 * 
 * DEFINE_OBJECT_UNSET is used to declare a placeholder enum value which maps to an entry with zeroes in `gObjectTable`
 *    - Argument 0: Enum value for this object
 * 
 * DEFINE_OBJECT_SIZE_ZERO is used to declare a placeholder enum value which maps to a zero-size entry in `gObjectTable`, with no corresponding segment in the rom.
 *    - Argument 0: Name of the object segment in spec
 *    - Argument 1: Enum value for this object
 */
/* 0x000 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_0)
/* 0x001 */ DEFINE_OBJECT(gameplay_keep, GAMEPLAY_KEEP)
/* 0x002 */ DEFINE_OBJECT(gameplay_field_keep, GAMEPLAY_FIELD_KEEP)
/* 0x003 */ DEFINE_OBJECT(gameplay_dangeon_keep, GAMEPLAY_DANGEON_KEEP)
/* 0x004 */ DEFINE_OBJECT(object_nb, OBJECT_NB)
/* 0x005 */ DEFINE_OBJECT(object_okuta, OBJECT_OKUTA)
/* 0x006 */ DEFINE_OBJECT(object_crow, OBJECT_CROW)
/* 0x007 */ DEFINE_OBJECT(object_ah, OBJECT_AH)
/* 0x008 */ DEFINE_OBJECT(object_dy_obj, OBJECT_DY_OBJ)
/* 0x009 */ DEFINE_OBJECT(object_wallmaster, OBJECT_WALLMASTER)
/* 0x00A */ DEFINE_OBJECT(object_dodongo, OBJECT_DODONGO)
/* 0x00B */ DEFINE_OBJECT(object_firefly, OBJECT_FIREFLY)
/* 0x00C */ DEFINE_OBJECT(object_box, OBJECT_BOX)
/* 0x00D */ DEFINE_OBJECT(object_al, OBJECT_AL)
/* 0x00E */ DEFINE_OBJECT(object_bubble, OBJECT_BUBBLE)
/* 0x00F */ DEFINE_OBJECT(object_niw, OBJECT_NIW)
/* 0x010 */ DEFINE_OBJECT(object_link_boy, OBJECT_LINK_BOY)
/* 0x011 */ DEFINE_OBJECT(object_link_child, OBJECT_LINK_CHILD)
/* 0x012 */ DEFINE_OBJECT(object_tite, OBJECT_TITE)
/* 0x013 */ DEFINE_OBJECT(object_tab, OBJECT_TAB)
/* 0x014 */ DEFINE_OBJECT(object_ph, OBJECT_PH)
/* 0x015 */ DEFINE_OBJECT(object_and, OBJECT_AND)
/* 0x016 */ DEFINE_OBJECT(object_msmo, OBJECT_MSMO)
/* 0x017 */ DEFINE_OBJECT(object_dinofos, OBJECT_DINOFOS)
/* 0x018 */ DEFINE_OBJECT(object_drs, OBJECT_DRS)
/* 0x019 */ DEFINE_OBJECT(object_zl1, OBJECT_ZL1)
/* 0x01A */ DEFINE_OBJECT(object_an4, OBJECT_AN4)
/* 0x01B */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_1B)
/* 0x01C */ DEFINE_OBJECT(object_test3, OBJECT_TEST3)
/* 0x01D */ DEFINE_OBJECT(object_famos, OBJECT_FAMOS)
/* 0x01E */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_1E)
/* 0x01F */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_1F)
/* 0x020 */ DEFINE_OBJECT(object_st, OBJECT_ST)
/* 0x021 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_21)
/* 0x022 */ DEFINE_OBJECT(object_thiefbird, OBJECT_THIEFBIRD)
/* 0x023 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_23)
/* 0x024 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_24)
/* 0x025 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_25)
/* 0x026 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_26)
/* 0x027 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_27)
/* 0x028 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_28)
/* 0x029 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_29)
/* 0x02A */ DEFINE_OBJECT(object_bombf, OBJECT_BOMBF)
/* 0x02B */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_2B)
/* 0x02C */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_2C)
/* 0x02D */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_2D)
/* 0x02E */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_2E)
/* 0x02F */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_2F)
/* 0x030 */ DEFINE_OBJECT(object_am, OBJECT_AM)
/* 0x031 */ DEFINE_OBJECT(object_dekubaba, OBJECT_DEKUBABA)
/* 0x032 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_32)
/* 0x033 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_33)
/* 0x034 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_34)
/* 0x035 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_35)
/* 0x036 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_36)
/* 0x037 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_37)
/* 0x038 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_38)
/* 0x039 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_39)
/* 0x03A */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_3A)
/* 0x03B */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_3B)
/* 0x03C */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_3C)
/* 0x03D */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_3D)
/* 0x03E */ DEFINE_OBJECT(object_warp1, OBJECT_WARP1)
/* 0x03F */ DEFINE_OBJECT(object_b_heart, OBJECT_B_HEART)
/* 0x040 */ DEFINE_OBJECT(object_dekunuts, OBJECT_DEKUNUTS)
/* 0x041 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_41)
/* 0x042 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_42)
/* 0x043 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_43)
/* 0x044 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_44)
/* 0x045 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_45)
/* 0x046 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_46)
/* 0x047 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_47)
/* 0x048 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_48)
/* 0x049 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_49)
/* 0x04A */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_4A)
/* 0x04B */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_4B)
/* 0x04C */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_4C)
/* 0x04D */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_4D)
/* 0x04E */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_4E)
/* 0x04F */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_4F)
/* 0x050 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_50)
/* 0x051 */ DEFINE_OBJECT(object_bb, OBJECT_BB)
/* 0x052 */ DEFINE_OBJECT(object_death, OBJECT_DEATH)
/* 0x053 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_53)
/* 0x054 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_54)
/* 0x055 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_55)
/* 0x056 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_56)
/* 0x057 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_57)
/* 0x058 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_58)
/* 0x059 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_59)
/* 0x05A */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_5A)
/* 0x05B */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_5B)
/* 0x05C */ DEFINE_OBJECT(object_f40_obj, OBJECT_F40_OBJ)
/* 0x05D */ DEFINE_OBJECT(object_po_composer, OBJECT_PO_COMPOSER)
/* 0x05E */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_5E)
/* 0x05F */ DEFINE_OBJECT(object_hata, OBJECT_HATA)
/* 0x060 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_60)
/* 0x061 */ DEFINE_OBJECT(object_wood02, OBJECT_WOOD02)
/* 0x062 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_62)
/* 0x063 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_63)
/* 0x064 */ DEFINE_OBJECT(object_trap, OBJECT_TRAP)
/* 0x065 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_65)
/* 0x066 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_66)
/* 0x067 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_67)
/* 0x068 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_68)
/* 0x069 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_69)
/* 0x06A */ DEFINE_OBJECT(object_vm, OBJECT_VM)
/* 0x06B */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_6B)
/* 0x06C */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_6C)
/* 0x06D */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_6D)
/* 0x06E */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_6E)
/* 0x06F */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_6F)
/* 0x070 */ DEFINE_OBJECT(object_efc_star_field, OBJECT_EFC_STAR_FIELD)
/* 0x071 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_71)
/* 0x072 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_72)
/* 0x073 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_73)
/* 0x074 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_74)
/* 0x075 */ DEFINE_OBJECT(object_rd, OBJECT_RD)
/* 0x076 */ DEFINE_OBJECT(object_yukimura_obj, OBJECT_YUKIMURA_OBJ)
/* 0x077 */ DEFINE_OBJECT_UNSET(OBJECT_HEAVY_OBJECT)
/* 0x078 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_78)
/* 0x079 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_79)
/* 0x07A */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_7A)
/* 0x07B */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_7B)
/* 0x07C */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_7C)
/* 0x07D */ DEFINE_OBJECT(object_horse_link_child, OBJECT_HORSE_LINK_CHILD)
/* 0x07E */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_7E)
/* 0x07F */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_7F)
/* 0x080 */ DEFINE_OBJECT(object_syokudai, OBJECT_SYOKUDAI)
/* 0x081 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_81)
/* 0x082 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_82)
/* 0x083 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_83)
/* 0x084 */ DEFINE_OBJECT(object_efc_tw, OBJECT_EFC_TW)
/* 0x085 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_85)
/* 0x086 */ DEFINE_OBJECT(object_gi_key, OBJECT_GI_KEY)
/* 0x087 */ DEFINE_OBJECT(object_mir_ray, OBJECT_MIR_RAY)
/* 0x088 */ DEFINE_OBJECT(object_ctower_rot, OBJECT_CTOWER_ROT)
/* 0x089 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_89)
/* 0x08A */ DEFINE_OBJECT(object_bdoor, OBJECT_BDOOR)
/* 0x08B */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_8B)
/* 0x08C */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_8C)
/* 0x08D */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_8D)
/* 0x08E */ DEFINE_OBJECT(object_sb, OBJECT_SB)
/* 0x08F */ DEFINE_OBJECT(object_gi_melody, OBJECT_GI_MELODY)
/* 0x090 */ DEFINE_OBJECT(object_gi_heart, OBJECT_GI_HEART)
/* 0x091 */ DEFINE_OBJECT(object_gi_compass, OBJECT_GI_COMPASS)
/* 0x092 */ DEFINE_OBJECT(object_gi_bosskey, OBJECT_GI_BOSSKEY)
/* 0x093 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_93)
/* 0x094 */ DEFINE_OBJECT(object_gi_nuts, OBJECT_GI_NUTS)
/* 0x095 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_95)
/* 0x096 */ DEFINE_OBJECT(object_gi_hearts, OBJECT_GI_HEARTS)
/* 0x097 */ DEFINE_OBJECT(object_gi_arrowcase, OBJECT_GI_ARROWCASE)
/* 0x098 */ DEFINE_OBJECT(object_gi_bombpouch, OBJECT_GI_BOMBPOUCH)
/* 0x099 */ DEFINE_OBJECT(object_in, OBJECT_IN)
/* 0x09A */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_9A)
/* 0x09B */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_9B)
/* 0x09C */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_9C)
/* 0x09D */ DEFINE_OBJECT(object_os_anime, OBJECT_OS_ANIME)
/* 0x09E */ DEFINE_OBJECT(object_gi_bottle, OBJECT_GI_BOTTLE)
/* 0x09F */ DEFINE_OBJECT(object_gi_stick, OBJECT_GI_STICK)
/* 0x0A0 */ DEFINE_OBJECT(object_gi_map, OBJECT_GI_MAP)
/* 0x0A1 */ DEFINE_OBJECT(object_oF1d_map, OBJECT_OF1D_MAP)
/* 0x0A2 */ DEFINE_OBJECT(object_ru2, OBJECT_RU2)
/* 0x0A3 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_A3)
/* 0x0A4 */ DEFINE_OBJECT(object_gi_magicpot, OBJECT_GI_MAGICPOT)
/* 0x0A5 */ DEFINE_OBJECT(object_gi_bomb_1, OBJECT_GI_BOMB_1)
/* 0x0A6 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_A6)
/* 0x0A7 */ DEFINE_OBJECT(object_ma2, OBJECT_MA2)
/* 0x0A8 */ DEFINE_OBJECT(object_gi_purse, OBJECT_GI_PURSE)
/* 0x0A9 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_A9)
/* 0x0AA */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_AA)
/* 0x0AB */ DEFINE_OBJECT(object_rr, OBJECT_RR)
/* 0x0AC */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_AC)
/* 0x0AD */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_AD)
/* 0x0AE */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_AE)
/* 0x0AF */ DEFINE_OBJECT(object_gi_arrow, OBJECT_GI_ARROW)
/* 0x0B0 */ DEFINE_OBJECT(object_gi_bomb_2, OBJECT_GI_BOMB_2)
/* 0x0B1 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_B1)
/* 0x0B2 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_B2)
/* 0x0B3 */ DEFINE_OBJECT(object_gi_shield_2, OBJECT_GI_SHIELD_2)
/* 0x0B4 */ DEFINE_OBJECT(object_gi_hookshot, OBJECT_GI_HOOKSHOT)
/* 0x0B5 */ DEFINE_OBJECT(object_gi_ocarina, OBJECT_GI_OCARINA)
/* 0x0B6 */ DEFINE_OBJECT(object_gi_milk, OBJECT_GI_MILK)
/* 0x0B7 */ DEFINE_OBJECT(object_ma1, OBJECT_MA1)
/* 0x0B8 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_B8)
/* 0x0B9 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_B9)
/* 0x0BA */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_BA)
/* 0x0BB */ DEFINE_OBJECT(object_ny, OBJECT_NY)
/* 0x0BC */ DEFINE_OBJECT(object_fr, OBJECT_FR)
/* 0x0BD */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_BD)
/* 0x0BE */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_BE)
/* 0x0BF */ DEFINE_OBJECT(object_gi_bow, OBJECT_GI_BOW)
/* 0x0C0 */ DEFINE_OBJECT(object_gi_glasses, OBJECT_GI_GLASSES)
/* 0x0C1 */ DEFINE_OBJECT(object_gi_liquid, OBJECT_GI_LIQUID)
/* 0x0C2 */ DEFINE_OBJECT(object_ani, OBJECT_ANI)
/* 0x0C3 */ DEFINE_OBJECT(object_gi_shield_3, OBJECT_GI_SHIELD_3)
/* 0x0C4 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_C4)
/* 0x0C5 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_C5)
/* 0x0C6 */ DEFINE_OBJECT(object_gi_bean, OBJECT_GI_BEAN)
/* 0x0C7 */ DEFINE_OBJECT(object_gi_fish, OBJECT_GI_FISH)
/* 0x0C8 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_C8)
/* 0x0C9 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_C9)
/* 0x0CA */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_CA)
/* 0x0CB */ DEFINE_OBJECT(object_gi_longsword, OBJECT_GI_LONGSWORD)
/* 0x0CC */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_CC)
/* 0x0CD */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_CD)
/* 0x0CE */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_CE)
/* 0x0CF */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_CF)
/* 0x0D0 */ DEFINE_OBJECT(object_zo, OBJECT_ZO)
/* 0x0D1 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_D1)
/* 0x0D2 */ DEFINE_OBJECT(object_umajump, OBJECT_UMAJUMP)
/* 0x0D3 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_D3)
/* 0x0D4 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_D4)
/* 0x0D5 */ DEFINE_OBJECT(object_mastergolon, OBJECT_MASTERGOLON)
/* 0x0D6 */ DEFINE_OBJECT(object_masterzoora, OBJECT_MASTERZOORA)
/* 0x0D7 */ DEFINE_OBJECT(object_aob, OBJECT_AOB)
/* 0x0D8 */ DEFINE_OBJECT(object_ik, OBJECT_IK)
/* 0x0D9 */ DEFINE_OBJECT(object_ahg, OBJECT_AHG)
/* 0x0DA */ DEFINE_OBJECT(object_cne, OBJECT_CNE)
/* 0x0DB */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_DB)
/* 0x0DC */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_DC)
/* 0x0DD */ DEFINE_OBJECT(object_an3, OBJECT_AN3)
/* 0x0DE */ DEFINE_OBJECT(object_bji, OBJECT_BJI)
/* 0x0DF */ DEFINE_OBJECT(object_bba, OBJECT_BBA)
/* 0x0E0 */ DEFINE_OBJECT(object_an2, OBJECT_AN2)
/* 0x0E1 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_E1)
/* 0x0E2 */ DEFINE_OBJECT(object_an1, OBJECT_AN1)
/* 0x0E3 */ DEFINE_OBJECT(object_boj, OBJECT_BOJ)
/* 0x0E4 */ DEFINE_OBJECT(object_fz, OBJECT_FZ)
/* 0x0E5 */ DEFINE_OBJECT(object_bob, OBJECT_BOB)
/* 0x0E6 */ DEFINE_OBJECT(object_ge1, OBJECT_GE1)
/* 0x0E7 */ DEFINE_OBJECT(object_yabusame_point, OBJECT_YABUSAME_POINT)
/* 0x0E8 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_E8)
/* 0x0E9 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_E9)
/* 0x0EA */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_EA)
/* 0x0EB */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_EB)
/* 0x0EC */ DEFINE_OBJECT(object_d_hsblock, OBJECT_D_HSBLOCK)
/* 0x0ED */ DEFINE_OBJECT(object_d_lift, OBJECT_D_LIFT)
/* 0x0EE */ DEFINE_OBJECT(object_mamenoki, OBJECT_MAMENOKI)
/* 0x0EF */ DEFINE_OBJECT(object_goroiwa, OBJECT_GOROIWA)
/* 0x0F0 */ DEFINE_OBJECT(object_toryo, OBJECT_TORYO)
/* 0x0F1 */ DEFINE_OBJECT(object_daiku, OBJECT_DAIKU)
/* 0x0F2 */ DEFINE_OBJECT(object_nwc, OBJECT_NWC)
/* 0x0F3 */ DEFINE_OBJECT(object_gm, OBJECT_GM)
/* 0x0F4 */ DEFINE_OBJECT(object_ms, OBJECT_MS)
/* 0x0F5 */ DEFINE_OBJECT(object_hs, OBJECT_HS)
/* 0x0F6 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_F6)
/* 0x0F7 */ DEFINE_OBJECT(object_lightswitch, OBJECT_LIGHTSWITCH)
/* 0x0F8 */ DEFINE_OBJECT(object_kusa, OBJECT_KUSA)
/* 0x0F9 */ DEFINE_OBJECT(object_tsubo, OBJECT_TSUBO)
/* 0x0FA */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_FA)
/* 0x0FB */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_FB)
/* 0x0FC */ DEFINE_OBJECT(object_kanban, OBJECT_KANBAN)
/* 0x0FD */ DEFINE_OBJECT(object_owl, OBJECT_OWL)
/* 0x0FE */ DEFINE_OBJECT(object_mk, OBJECT_MK)
/* 0x0FF */ DEFINE_OBJECT(object_fu, OBJECT_FU)
/* 0x100 */ DEFINE_OBJECT(object_gi_ki_tan_mask, OBJECT_GI_KI_TAN_MASK)
/* 0x101 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_101)
/* 0x102 */ DEFINE_OBJECT(object_gi_mask18, OBJECT_GI_MASK18)
/* 0x103 */ DEFINE_OBJECT(object_gi_rabit_mask, OBJECT_GI_RABIT_MASK)
/* 0x104 */ DEFINE_OBJECT(object_gi_truth_mask, OBJECT_GI_TRUTH_MASK)
/* 0x105 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_105)
/* 0x106 */ DEFINE_OBJECT(object_stream, OBJECT_STREAM)
/* 0x107 */ DEFINE_OBJECT(object_mm, OBJECT_MM)
/* 0x108 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_108)
/* 0x109 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_109)
/* 0x10A */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_10A)
/* 0x10B */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_10B)
/* 0x10C */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_10C)
/* 0x10D */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_10D)
/* 0x10E */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_10E)
/* 0x10F */ DEFINE_OBJECT(object_js, OBJECT_JS)
/* 0x110 */ DEFINE_OBJECT(object_cs, OBJECT_CS)
/* 0x111 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_111)
/* 0x112 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_112)
/* 0x113 */ DEFINE_OBJECT(object_gi_soldout, OBJECT_GI_SOLDOUT)
/* 0x114 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_114)
/* 0x115 */ DEFINE_OBJECT(object_mag, OBJECT_MAG)
/* 0x116 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_116)
/* 0x117 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_117)
/* 0x118 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_118)
/* 0x119 */ DEFINE_OBJECT(object_gi_golonmask, OBJECT_GI_GOLONMASK)
/* 0x11A */ DEFINE_OBJECT(object_gi_zoramask, OBJECT_GI_ZORAMASK)
/* 0x11B */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_11B)
/* 0x11C */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_11C)
/* 0x11D */ DEFINE_OBJECT(object_ka, OBJECT_KA)
/* 0x11E */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_11E)
/* 0x11F */ DEFINE_OBJECT(object_zg, OBJECT_ZG)
/* 0x120 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_120)
/* 0x121 */ DEFINE_OBJECT(object_gi_m_arrow, OBJECT_GI_M_ARROW)
/* 0x122 */ DEFINE_OBJECT(object_ds2, OBJECT_DS2)
/* 0x123 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_123)
/* 0x124 */ DEFINE_OBJECT(object_fish, OBJECT_FISH)
/* 0x125 */ DEFINE_OBJECT(object_gi_sutaru, OBJECT_GI_SUTARU)
/* 0x126 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_126)
/* 0x127 */ DEFINE_OBJECT(object_ssh, OBJECT_SSH)
/* 0x128 */ DEFINE_OBJECT(object_bigslime, OBJECT_BIGSLIME)
/* 0x129 */ DEFINE_OBJECT(object_bg, OBJECT_BG)
/* 0x12A */ DEFINE_OBJECT(object_bombiwa, OBJECT_BOMBIWA)
/* 0x12B */ DEFINE_OBJECT(object_hintnuts, OBJECT_HINTNUTS)
/* 0x12C */ DEFINE_OBJECT(object_rs, OBJECT_RS)
/* 0x12D */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_12D)
/* 0x12E */ DEFINE_OBJECT(object_gla, OBJECT_GLA)
/* 0x12F */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_12F)
/* 0x130 */ DEFINE_OBJECT(object_geldb, OBJECT_GELDB)
/* 0x131 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_131)
/* 0x132 */ DEFINE_OBJECT(object_dog, OBJECT_DOG)
/* 0x133 */ DEFINE_OBJECT(object_kibako2, OBJECT_KIBAKO2)
/* 0x134 */ DEFINE_OBJECT(object_dns, OBJECT_DNS)
/* 0x135 */ DEFINE_OBJECT(object_dnk, OBJECT_DNK)
/* 0x136 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_136)
/* 0x137 */ DEFINE_OBJECT(object_gi_insect, OBJECT_GI_INSECT)
/* 0x138 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_138)
/* 0x139 */ DEFINE_OBJECT(object_gi_ghost, OBJECT_GI_GHOST)
/* 0x13A */ DEFINE_OBJECT(object_gi_soul, OBJECT_GI_SOUL)
/* 0x13B */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_13B)
/* 0x13C */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_13C)
/* 0x13D */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_13D)
/* 0x13E */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_13E)
/* 0x13F */ DEFINE_OBJECT(object_gi_rupy, OBJECT_GI_RUPY)
/* 0x140 */ DEFINE_OBJECT(object_mu, OBJECT_MU)
/* 0x141 */ DEFINE_OBJECT(object_wf, OBJECT_WF)
/* 0x142 */ DEFINE_OBJECT(object_skb, OBJECT_SKB)
/* 0x143 */ DEFINE_OBJECT(object_gs, OBJECT_GS)
/* 0x144 */ DEFINE_OBJECT(object_ps, OBJECT_PS)
/* 0x145 */ DEFINE_OBJECT(object_omoya_obj, OBJECT_OMOYA_OBJ)
/* 0x146 */ DEFINE_OBJECT(object_cow, OBJECT_COW)
/* 0x147 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_147)
/* 0x148 */ DEFINE_OBJECT(object_gi_sword_1, OBJECT_GI_SWORD_1)
/* 0x149 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_149)
/* 0x14A */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_14A)
/* 0x14B */ DEFINE_OBJECT(object_zl4, OBJECT_ZL4)
/* 0x14C */ DEFINE_OBJECT(object_link_goron, OBJECT_LINK_GORON)
/* 0x14D */ DEFINE_OBJECT(object_link_zora, OBJECT_LINK_ZORA)
/* 0x14E */ DEFINE_OBJECT(object_grasshopper, OBJECT_GRASSHOPPER)
/* 0x14F */ DEFINE_OBJECT(object_boyo, OBJECT_BOYO)
/* 0x150 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_150)
/* 0x151 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_151)
/* 0x152 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_152)
/* 0x153 */ DEFINE_OBJECT(object_fwall, OBJECT_FWALL)
/* 0x154 */ DEFINE_OBJECT(object_link_nuts, OBJECT_LINK_NUTS)
/* 0x155 */ DEFINE_OBJECT(object_jso, OBJECT_JSO)
/* 0x156 */ DEFINE_OBJECT(object_knight, OBJECT_KNIGHT)
/* 0x157 */ DEFINE_OBJECT(object_icicle, OBJECT_ICICLE)
/* 0x158 */ DEFINE_OBJECT(object_spdweb, OBJECT_SPDWEB)
/* 0x159 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_159)
/* 0x15A */ DEFINE_OBJECT(object_boss01, OBJECT_BOSS01)
/* 0x15B */ DEFINE_OBJECT(object_boss02, OBJECT_BOSS02)
/* 0x15C */ DEFINE_OBJECT(object_boss03, OBJECT_BOSS03)
/* 0x15D */ DEFINE_OBJECT(object_boss04, OBJECT_BOSS04)
/* 0x15E */ DEFINE_OBJECT(object_boss05, OBJECT_BOSS05)
/* 0x15F */ DEFINE_OBJECT_SIZE_ZERO(object_boss07, OBJECT_UNSET_15F) // unused duplicate with size 0
/* 0x160 */ DEFINE_OBJECT(object_boss07, OBJECT_BOSS07)
/* 0x161 */ DEFINE_OBJECT(object_raf, OBJECT_RAF)
/* 0x162 */ DEFINE_OBJECT(object_funen, OBJECT_FUNEN)
/* 0x163 */ DEFINE_OBJECT(object_raillift, OBJECT_RAILLIFT)
/* 0x164 */ DEFINE_OBJECT(object_numa_obj, OBJECT_NUMA_OBJ)
/* 0x165 */ DEFINE_OBJECT(object_flowerpot, OBJECT_FLOWERPOT)
/* 0x166 */ DEFINE_OBJECT(object_spinyroll, OBJECT_SPINYROLL)
/* 0x167 */ DEFINE_OBJECT(object_ice_block, OBJECT_ICE_BLOCK)
/* 0x168 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_168)
/* 0x169 */ DEFINE_OBJECT(object_keikoku_demo, OBJECT_KEIKOKU_DEMO)
/* 0x16A */ DEFINE_OBJECT(object_slime, OBJECT_SLIME)
/* 0x16B */ DEFINE_OBJECT(object_pr, OBJECT_PR)
/* 0x16C */ DEFINE_OBJECT(object_f52_obj, OBJECT_F52_OBJ)
/* 0x16D */ DEFINE_OBJECT(object_f53_obj, OBJECT_F53_OBJ)
/* 0x16E */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_16E)
/* 0x16F */ DEFINE_OBJECT(object_kibako, OBJECT_KIBAKO)
/* 0x170 */ DEFINE_OBJECT(object_sek, OBJECT_SEK)
/* 0x171 */ DEFINE_OBJECT(object_gmo, OBJECT_GMO)
/* 0x172 */ DEFINE_OBJECT(object_bat, OBJECT_BAT)
/* 0x173 */ DEFINE_OBJECT(object_sekihil, OBJECT_SEKIHIL)
/* 0x174 */ DEFINE_OBJECT(object_sekihig, OBJECT_SEKIHIG)
/* 0x175 */ DEFINE_OBJECT(object_sekihin, OBJECT_SEKIHIN)
/* 0x176 */ DEFINE_OBJECT(object_sekihiz, OBJECT_SEKIHIZ)
/* 0x177 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_177)
/* 0x178 */ DEFINE_OBJECT(object_wiz, OBJECT_WIZ)
/* 0x179 */ DEFINE_OBJECT(object_ladder, OBJECT_LADDER)
/* 0x17A */ DEFINE_OBJECT(object_mkk, OBJECT_MKK)
/* 0x17B */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_17B)
/* 0x17C */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_17C)
/* 0x17D */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_17D)
/* 0x17E */ DEFINE_OBJECT(object_keikoku_obj, OBJECT_KEIKOKU_OBJ)
/* 0x17F */ DEFINE_OBJECT(object_sichitai_obj, OBJECT_SICHITAI_OBJ)
/* 0x180 */ DEFINE_OBJECT(object_dekucity_ana_obj, OBJECT_DEKUCITY_ANA_OBJ)
/* 0x181 */ DEFINE_OBJECT(object_rat, OBJECT_RAT)
/* 0x182 */ DEFINE_OBJECT(object_water_effect, OBJECT_WATER_EFFECT)
/* 0x183 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_183)
/* 0x184 */ DEFINE_OBJECT(object_dblue_object, OBJECT_DBLUE_OBJECT)
/* 0x185 */ DEFINE_OBJECT(object_bal, OBJECT_BAL)
/* 0x186 */ DEFINE_OBJECT(object_warp_uzu, OBJECT_WARP_UZU)
/* 0x187 */ DEFINE_OBJECT(object_driftice, OBJECT_DRIFTICE)
/* 0x188 */ DEFINE_OBJECT(object_fall, OBJECT_FALL)
/* 0x189 */ DEFINE_OBJECT(object_hanareyama_obj, OBJECT_HANAREYAMA_OBJ)
/* 0x18A */ DEFINE_OBJECT(object_crace_object, OBJECT_CRACE_OBJECT)
/* 0x18B */ DEFINE_OBJECT(object_dno, OBJECT_DNO)
/* 0x18C */ DEFINE_OBJECT(object_obj_tokeidai, OBJECT_OBJ_TOKEIDAI)
/* 0x18D */ DEFINE_OBJECT(object_eg, OBJECT_EG)
/* 0x18E */ DEFINE_OBJECT(object_tru, OBJECT_TRU)
/* 0x18F */ DEFINE_OBJECT(object_trt, OBJECT_TRT)
/* 0x190 */ DEFINE_OBJECT(object_hakugin_obj, OBJECT_HAKUGIN_OBJ)
/* 0x191 */ DEFINE_OBJECT(object_horse_game_check, OBJECT_HORSE_GAME_CHECK)
/* 0x192 */ DEFINE_OBJECT(object_stk, OBJECT_STK)
/* 0x193 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_193)
/* 0x194 */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_194)
/* 0x195 */ DEFINE_OBJECT(object_mnk, OBJECT_MNK)
/* 0x196 */ DEFINE_OBJECT(object_gi_bottle_red, OBJECT_GI_BOTTLE_RED)
/* 0x197 */ DEFINE_OBJECT(object_tokei_tobira, OBJECT_TOKEI_TOBIRA)
/* 0x198 */ DEFINE_OBJECT(object_az, OBJECT_AZ)
/* 0x199 */ DEFINE_OBJECT(object_twig, OBJECT_TWIG)
/* 0x19A */ DEFINE_OBJECT(object_dekucity_obj, OBJECT_DEKUCITY_OBJ)
/* 0x19B */ DEFINE_OBJECT(object_po_fusen, OBJECT_PO_FUSEN)
/* 0x19C */ DEFINE_OBJECT(object_racetsubo, OBJECT_RACETSUBO)
/* 0x19D */ DEFINE_OBJECT(object_ha, OBJECT_HA)
/* 0x19E */ DEFINE_OBJECT(object_bigokuta, OBJECT_BIGOKUTA)
/* 0x19F */ DEFINE_OBJECT(object_open_obj, OBJECT_OPEN_OBJ)
/* 0x1A0 */ DEFINE_OBJECT(object_fu_kaiten, OBJECT_FU_KAITEN)
/* 0x1A1 */ DEFINE_OBJECT(object_fu_mato, OBJECT_FU_MATO)
/* 0x1A2 */ DEFINE_OBJECT(object_mtoride, OBJECT_MTORIDE)
/* 0x1A3 */ DEFINE_OBJECT(object_osn, OBJECT_OSN)
/* 0x1A4 */ DEFINE_OBJECT(object_tokei_step, OBJECT_TOKEI_STEP)
/* 0x1A5 */ DEFINE_OBJECT(object_lotus, OBJECT_LOTUS)
/* 0x1A6 */ DEFINE_OBJECT(object_tl, OBJECT_TL)
/* 0x1A7 */ DEFINE_OBJECT(object_dkjail_obj, OBJECT_DKJAIL_OBJ)
/* 0x1A8 */ DEFINE_OBJECT(object_visiblock, OBJECT_VISIBLOCK)
/* 0x1A9 */ DEFINE_OBJECT(object_tsn, OBJECT_TSN)
/* 0x1AA */ DEFINE_OBJECT(object_ds2n, OBJECT_DS2N)
/* 0x1AB */ DEFINE_OBJECT(object_fsn, OBJECT_FSN)
/* 0x1AC */ DEFINE_OBJECT(object_shn, OBJECT_SHN)
/* 0x1AD */ DEFINE_OBJECT(object_bigicicle, OBJECT_BIGICICLE)
/* 0x1AE */ DEFINE_OBJECT(object_gi_bottle_15, OBJECT_GI_BOTTLE_15)
/* 0x1AF */ DEFINE_OBJECT(object_tk, OBJECT_TK)
/* 0x1B0 */ DEFINE_OBJECT(object_market_obj, OBJECT_MARKET_OBJ)
/* 0x1B1 */ DEFINE_OBJECT(object_gi_reserve00, OBJECT_GI_RESERVE00)
/* 0x1B2 */ DEFINE_OBJECT(object_gi_reserve01, OBJECT_GI_RESERVE01)
/* 0x1B3 */ DEFINE_OBJECT(object_lightblock, OBJECT_LIGHTBLOCK)
/* 0x1B4 */ DEFINE_OBJECT(object_takaraya_objects, OBJECT_TAKARAYA_OBJECTS)
/* 0x1B5 */ DEFINE_OBJECT(object_wdhand, OBJECT_WDHAND)
/* 0x1B6 */ DEFINE_OBJECT(object_sdn, OBJECT_SDN)
/* 0x1B7 */ DEFINE_OBJECT(object_snowwd, OBJECT_SNOWWD)
/* 0x1B8 */ DEFINE_OBJECT(object_giant, OBJECT_GIANT)
/* 0x1B9 */ DEFINE_OBJECT(object_comb, OBJECT_COMB)
/* 0x1BA */ DEFINE_OBJECT(object_hana, OBJECT_HANA)
/* 0x1BB */ DEFINE_OBJECT(object_boss_hakugin, OBJECT_BOSS_HAKUGIN)
/* 0x1BC */ DEFINE_OBJECT(object_meganeana_obj, OBJECT_MEGANEANA_OBJ)
/* 0x1BD */ DEFINE_OBJECT(object_gi_nutsmask, OBJECT_GI_NUTSMASK)
/* 0x1BE */ DEFINE_OBJECT(object_stk2, OBJECT_STK2)
/* 0x1BF */ DEFINE_OBJECT(object_spot11_obj, OBJECT_SPOT11_OBJ)
/* 0x1C0 */ DEFINE_OBJECT(object_danpei_object, OBJECT_DANPEI_OBJECT)
/* 0x1C1 */ DEFINE_OBJECT(object_dhouse, OBJECT_DHOUSE)
/* 0x1C2 */ DEFINE_OBJECT(object_hakaisi, OBJECT_HAKAISI)
/* 0x1C3 */ DEFINE_OBJECT(object_po, OBJECT_PO)
/* 0x1C4 */ DEFINE_OBJECT(object_snowman, OBJECT_SNOWMAN)
/* 0x1C5 */ DEFINE_OBJECT(object_po_sisters, OBJECT_PO_SISTERS)
/* 0x1C6 */ DEFINE_OBJECT(object_pp, OBJECT_PP)
/* 0x1C7 */ DEFINE_OBJECT(object_goronswitch, OBJECT_GORONSWITCH)
/* 0x1C8 */ DEFINE_OBJECT(object_delf, OBJECT_DELF)
/* 0x1C9 */ DEFINE_OBJECT(object_botihasira, OBJECT_BOTIHASIRA)
/* 0x1CA */ DEFINE_OBJECT(object_gi_bigbomb, OBJECT_GI_BIGBOMB)
/* 0x1CB */ DEFINE_OBJECT(object_pst, OBJECT_PST)
/* 0x1CC */ DEFINE_OBJECT(object_bsmask, OBJECT_BSMASK)
/* 0x1CD */ DEFINE_OBJECT(object_spidertent, OBJECT_SPIDERTENT)
/* 0x1CE */ DEFINE_OBJECT(object_zoraegg, OBJECT_ZORAEGG)
/* 0x1CF */ DEFINE_OBJECT(object_kbt, OBJECT_KBT)
/* 0x1D0 */ DEFINE_OBJECT(object_gg, OBJECT_GG)
/* 0x1D1 */ DEFINE_OBJECT(object_maruta, OBJECT_MARUTA)
/* 0x1D2 */ DEFINE_OBJECT(object_ghaka, OBJECT_GHAKA)
/* 0x1D3 */ DEFINE_OBJECT(object_oyu, OBJECT_OYU)
/* 0x1D4 */ DEFINE_OBJECT(object_dnq, OBJECT_DNQ)
/* 0x1D5 */ DEFINE_OBJECT(object_dai, OBJECT_DAI)
/* 0x1D6 */ DEFINE_OBJECT(object_kgy, OBJECT_KGY)
/* 0x1D7 */ DEFINE_OBJECT(object_fb, OBJECT_FB)
/* 0x1D8 */ DEFINE_OBJECT(object_taisou, OBJECT_TAISOU)
/* 0x1D9 */ DEFINE_OBJECT(object_mask_bu_san, OBJECT_MASK_BU_SAN)
/* 0x1DA */ DEFINE_OBJECT(object_mask_ki_tan, OBJECT_MASK_KI_TAN)
/* 0x1DB */ DEFINE_OBJECT(object_mask_rabit, OBJECT_MASK_RABIT)
/* 0x1DC */ DEFINE_OBJECT(object_mask_skj, OBJECT_MASK_SKJ)
/* 0x1DD */ DEFINE_OBJECT(object_mask_bakuretu, OBJECT_MASK_BAKURETU)
/* 0x1DE */ DEFINE_OBJECT(object_mask_truth, OBJECT_MASK_TRUTH)
/* 0x1DF */ DEFINE_OBJECT(object_gk, OBJECT_GK)
/* 0x1E0 */ DEFINE_OBJECT(object_haka_obj, OBJECT_HAKA_OBJ)
/* 0x1E1 */ DEFINE_OBJECT(object_mask_goron, OBJECT_MASK_GORON)
/* 0x1E2 */ DEFINE_OBJECT(object_mask_zora, OBJECT_MASK_ZORA)
/* 0x1E3 */ DEFINE_OBJECT(object_mask_nuts, OBJECT_MASK_NUTS)
/* 0x1E4 */ DEFINE_OBJECT(object_mask_boy, OBJECT_MASK_BOY)
/* 0x1E5 */ DEFINE_OBJECT(object_dnt, OBJECT_DNT)
/* 0x1E6 */ DEFINE_OBJECT(object_yukiyama, OBJECT_YUKIYAMA)
/* 0x1E7 */ DEFINE_OBJECT(object_icefloe, OBJECT_ICEFLOE)
/* 0x1E8 */ DEFINE_OBJECT(object_gi_gold_dust, OBJECT_GI_GOLD_DUST)
/* 0x1E9 */ DEFINE_OBJECT(object_gi_bottle_16, OBJECT_GI_BOTTLE_16)
/* 0x1EA */ DEFINE_OBJECT(object_gi_bottle_22, OBJECT_GI_BOTTLE_22)
/* 0x1EB */ DEFINE_OBJECT(object_bee, OBJECT_BEE)
/* 0x1EC */ DEFINE_OBJECT(object_ot, OBJECT_OT)
/* 0x1ED */ DEFINE_OBJECT(object_utubo, OBJECT_UTUBO)
/* 0x1EE */ DEFINE_OBJECT(object_dora, OBJECT_DORA)
/* 0x1EF */ DEFINE_OBJECT(object_gi_loach, OBJECT_GI_LOACH)
/* 0x1F0 */ DEFINE_OBJECT(object_gi_seahorse, OBJECT_GI_SEAHORSE)
/* 0x1F1 */ DEFINE_OBJECT(object_bigpo, OBJECT_BIGPO)
/* 0x1F2 */ DEFINE_OBJECT(object_hariko, OBJECT_HARIKO)
/* 0x1F3 */ DEFINE_OBJECT(object_dnj, OBJECT_DNJ)
/* 0x1F4 */ DEFINE_OBJECT(object_sinkai_kabe, OBJECT_SINKAI_KABE)
/* 0x1F5 */ DEFINE_OBJECT(object_kin2_obj, OBJECT_KIN2_OBJ)
/* 0x1F6 */ DEFINE_OBJECT(object_ishi, OBJECT_ISHI)
/* 0x1F7 */ DEFINE_OBJECT(object_hakugin_demo, OBJECT_HAKUGIN_DEMO)
/* 0x1F8 */ DEFINE_OBJECT(object_jg, OBJECT_JG)
/* 0x1F9 */ DEFINE_OBJECT(object_gi_sword_2, OBJECT_GI_SWORD_2)
/* 0x1FA */ DEFINE_OBJECT(object_gi_sword_3, OBJECT_GI_SWORD_3)
/* 0x1FB */ DEFINE_OBJECT(object_gi_sword_4, OBJECT_GI_SWORD_4)
/* 0x1FC */ DEFINE_OBJECT(object_um, OBJECT_UM)
/* 0x1FD */ DEFINE_OBJECT(object_mask_gibudo, OBJECT_MASK_GIBUDO)
/* 0x1FE */ DEFINE_OBJECT(object_mask_json, OBJECT_MASK_JSON)
/* 0x1FF */ DEFINE_OBJECT(object_mask_kerfay, OBJECT_MASK_KERFAY)
/* 0x200 */ DEFINE_OBJECT(object_mask_bigelf, OBJECT_MASK_BIGELF)
/* 0x201 */ DEFINE_OBJECT(object_rb, OBJECT_RB)
/* 0x202 */ DEFINE_OBJECT(object_mbar_obj, OBJECT_MBAR_OBJ)
/* 0x203 */ DEFINE_OBJECT(object_ikana_obj, OBJECT_IKANA_OBJ)
/* 0x204 */ DEFINE_OBJECT(object_kz, OBJECT_KZ)
/* 0x205 */ DEFINE_OBJECT(object_tokei_turret, OBJECT_TOKEI_TURRET)
/* 0x206 */ DEFINE_OBJECT(object_zog, OBJECT_ZOG)
/* 0x207 */ DEFINE_OBJECT(object_rotlift, OBJECT_ROTLIFT)
/* 0x208 */ DEFINE_OBJECT(object_posthouse_obj, OBJECT_POSTHOUSE_OBJ)
/* 0x209 */ DEFINE_OBJECT(object_gi_mask09, OBJECT_GI_MASK09)
/* 0x20A */ DEFINE_OBJECT(object_gi_mask14, OBJECT_GI_MASK14)
/* 0x20B */ DEFINE_OBJECT(object_gi_mask15, OBJECT_GI_MASK15)
/* 0x20C */ DEFINE_OBJECT(object_inibs_object, OBJECT_INIBS_OBJECT)
/* 0x20D */ DEFINE_OBJECT(object_tree, OBJECT_TREE)
/* 0x20E */ DEFINE_OBJECT(object_kaizoku_obj, OBJECT_KAIZOKU_OBJ)
/* 0x20F */ DEFINE_OBJECT(object_gi_reserve_b_00, OBJECT_GI_RESERVE_B_00)
/* 0x210 */ DEFINE_OBJECT(object_gi_reserve_c_00, OBJECT_GI_RESERVE_C_00)
/* 0x211 */ DEFINE_OBJECT(object_zob, OBJECT_ZOB)
/* 0x212 */ DEFINE_OBJECT(object_milkbar, OBJECT_MILKBAR)
/* 0x213 */ DEFINE_OBJECT(object_dmask, OBJECT_DMASK)
/* 0x214 */ DEFINE_OBJECT(object_mask_kyojin, OBJECT_MASK_KYOJIN)
/* 0x215 */ DEFINE_OBJECT(object_gi_reserve_c_01, OBJECT_GI_RESERVE_C_01)
/* 0x216 */ DEFINE_OBJECT(object_zod, OBJECT_ZOD)
/* 0x217 */ DEFINE_OBJECT(object_kumo30, OBJECT_KUMO30)
/* 0x218 */ DEFINE_OBJECT(object_obj_yasi, OBJECT_OBJ_YASI)
/* 0x219 */ DEFINE_OBJECT(object_mask_romerny, OBJECT_MASK_ROMERNY)
/* 0x21A */ DEFINE_OBJECT(object_tanron1, OBJECT_TANRON1)
/* 0x21B */ DEFINE_OBJECT(object_tanron2, OBJECT_TANRON2)
/* 0x21C */ DEFINE_OBJECT(object_tanron3, OBJECT_TANRON3)
/* 0x21D */ DEFINE_OBJECT(object_gi_magicmushroom, OBJECT_GI_MAGICMUSHROOM)
/* 0x21E */ DEFINE_OBJECT(object_obj_chan, OBJECT_OBJ_CHAN)
/* 0x21F */ DEFINE_OBJECT(object_gi_mask10, OBJECT_GI_MASK10)
/* 0x220 */ DEFINE_OBJECT(object_zos, OBJECT_ZOS)
/* 0x221 */ DEFINE_OBJECT(object_mask_posthat, OBJECT_MASK_POSTHAT)
/* 0x222 */ DEFINE_OBJECT(object_f40_switch, OBJECT_F40_SWITCH)
/* 0x223 */ DEFINE_OBJECT(object_lodmoon, OBJECT_LODMOON)
/* 0x224 */ DEFINE_OBJECT(object_tro, OBJECT_TRO)
/* 0x225 */ DEFINE_OBJECT(object_gi_mask12, OBJECT_GI_MASK12)
/* 0x226 */ DEFINE_OBJECT(object_gi_mask23, OBJECT_GI_MASK23)
/* 0x227 */ DEFINE_OBJECT(object_gi_bottle_21, OBJECT_GI_BOTTLE_21)
/* 0x228 */ DEFINE_OBJECT(object_gi_camera, OBJECT_GI_CAMERA)
/* 0x229 */ DEFINE_OBJECT(object_kamejima, OBJECT_KAMEJIMA)
/* 0x22A */ DEFINE_OBJECT(object_harfgibud, OBJECT_HARFGIBUD)
/* 0x22B */ DEFINE_OBJECT(object_zov, OBJECT_ZOV)
/* 0x22C */ DEFINE_OBJECT(object_hgdoor, OBJECT_HGDOOR)
/* 0x22D */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_22D)
/* 0x22E */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_22E)
/* 0x22F */ DEFINE_OBJECT_UNSET(OBJECT_UNSET_22F)
/* 0x230 */ DEFINE_OBJECT(object_dor01, OBJECT_DOR01)
/* 0x231 */ DEFINE_OBJECT(object_dor02, OBJECT_DOR02)
/* 0x232 */ DEFINE_OBJECT(object_dor03, OBJECT_DOR03)
/* 0x233 */ DEFINE_OBJECT(object_dor04, OBJECT_DOR04)
/* 0x234 */ DEFINE_OBJECT(object_last_obj, OBJECT_LAST_OBJ)
/* 0x235 */ DEFINE_OBJECT(object_redead_obj, OBJECT_REDEAD_OBJ)
/* 0x236 */ DEFINE_OBJECT(object_ikninside_obj, OBJECT_IKNINSIDE_OBJ)
/* 0x237 */ DEFINE_OBJECT(object_iknv_obj, OBJECT_IKNV_OBJ)
/* 0x238 */ DEFINE_OBJECT(object_pamera, OBJECT_PAMERA)
/* 0x239 */ DEFINE_OBJECT(object_hsstump, OBJECT_HSSTUMP)
/* 0x23A */ DEFINE_OBJECT(object_zm, OBJECT_ZM)
/* 0x23B */ DEFINE_OBJECT(object_big_fwall, OBJECT_BIG_FWALL)
/* 0x23C */ DEFINE_OBJECT(object_secom_obj, OBJECT_SECOM_OBJ)
/* 0x23D */ DEFINE_OBJECT(object_hunsui, OBJECT_HUNSUI)
/* 0x23E */ DEFINE_OBJECT(object_uch, OBJECT_UCH)
/* 0x23F */ DEFINE_OBJECT(object_tanron4, OBJECT_TANRON4)
/* 0x240 */ DEFINE_OBJECT(object_tanron5, OBJECT_TANRON5)
/* 0x241 */ DEFINE_OBJECT(object_dt, OBJECT_DT)
/* 0x242 */ DEFINE_OBJECT(object_gi_mask03, OBJECT_GI_MASK03)
/* 0x243 */ DEFINE_OBJECT(object_cha, OBJECT_CHA)
/* 0x244 */ DEFINE_OBJECT(object_obj_dinner, OBJECT_OBJ_DINNER)
/* 0x245 */ DEFINE_OBJECT(object_gi_reserve_b_01, OBJECT_GI_RESERVE_B_01)
/* 0x246 */ DEFINE_OBJECT(object_lastday, OBJECT_LASTDAY)
/* 0x247 */ DEFINE_OBJECT(object_bai, OBJECT_BAI)
/* 0x248 */ DEFINE_OBJECT(object_in2, OBJECT_IN2)
/* 0x249 */ DEFINE_OBJECT(object_ikn_demo, OBJECT_IKN_DEMO)
/* 0x24A */ DEFINE_OBJECT(object_yb, OBJECT_YB)
/* 0x24B */ DEFINE_OBJECT(object_rz, OBJECT_RZ)
/* 0x24C */ DEFINE_OBJECT(object_mask_zacho, OBJECT_MASK_ZACHO)
/* 0x24D */ DEFINE_OBJECT(object_gi_fieldmap, OBJECT_GI_FIELDMAP)
/* 0x24E */ DEFINE_OBJECT(object_mask_stone, OBJECT_MASK_STONE)
/* 0x24F */ DEFINE_OBJECT(object_bjt, OBJECT_BJT)
/* 0x250 */ DEFINE_OBJECT(object_taru, OBJECT_TARU)
/* 0x251 */ DEFINE_OBJECT(object_moonston, OBJECT_MOONSTON)
/* 0x252 */ DEFINE_OBJECT(object_mask_bree, OBJECT_MASK_BREE)
/* 0x253 */ DEFINE_OBJECT(object_gi_schedule, OBJECT_GI_SCHEDULE)
/* 0x254 */ DEFINE_OBJECT(object_gi_stonemask, OBJECT_GI_STONEMASK)
/* 0x255 */ DEFINE_OBJECT(object_zoraband, OBJECT_ZORABAND)
/* 0x256 */ DEFINE_OBJECT(object_kepn_koya, OBJECT_KEPN_KOYA)
/* 0x257 */ DEFINE_OBJECT(object_obj_usiyane, OBJECT_OBJ_USIYANE)
/* 0x258 */ DEFINE_OBJECT(object_gi_mask05, OBJECT_GI_MASK05)
/* 0x259 */ DEFINE_OBJECT(object_gi_mask11, OBJECT_GI_MASK11)
/* 0x25A */ DEFINE_OBJECT(object_gi_mask20, OBJECT_GI_MASK20)
/* 0x25B */ DEFINE_OBJECT(object_nnh, OBJECT_NNH)
/* 0x25C */ DEFINE_OBJECT(object_mask_gero, OBJECT_MASK_GERO)
/* 0x25D */ DEFINE_OBJECT(object_mask_yofukasi, OBJECT_MASK_YOFUKASI)
/* 0x25E */ DEFINE_OBJECT(object_mask_meoto, OBJECT_MASK_MEOTO)
/* 0x25F */ DEFINE_OBJECT(object_mask_dancer, OBJECT_MASK_DANCER)
/* 0x260 */ DEFINE_OBJECT(object_kzsaku, OBJECT_KZSAKU)
/* 0x261 */ DEFINE_OBJECT(object_obj_milk_bin, OBJECT_OBJ_MILK_BIN)
/* 0x262 */ DEFINE_OBJECT(object_random_obj, OBJECT_RANDOM_OBJ)
/* 0x263 */ DEFINE_OBJECT(object_kujiya, OBJECT_KUJIYA)
/* 0x264 */ DEFINE_OBJECT(object_kitan, OBJECT_KITAN)
/* 0x265 */ DEFINE_OBJECT(object_gi_mask06, OBJECT_GI_MASK06)
/* 0x266 */ DEFINE_OBJECT(object_gi_mask16, OBJECT_GI_MASK16)
/* 0x267 */ DEFINE_OBJECT(object_astr_obj, OBJECT_ASTR_OBJ)
/* 0x268 */ DEFINE_OBJECT(object_bsb, OBJECT_BSB)
/* 0x269 */ DEFINE_OBJECT(object_fall2, OBJECT_FALL2)
/* 0x26A */ DEFINE_OBJECT(object_sth, OBJECT_STH)
/* 0x26B */ DEFINE_OBJECT(object_gi_mssa, OBJECT_GI_MSSA)
/* 0x26C */ DEFINE_OBJECT(object_smtower, OBJECT_SMTOWER)
/* 0x26D */ DEFINE_OBJECT(object_gi_mask21, OBJECT_GI_MASK21)
/* 0x26E */ DEFINE_OBJECT(object_yado_obj, OBJECT_YADO_OBJ)
/* 0x26F */ DEFINE_OBJECT(object_syoten, OBJECT_SYOTEN)
/* 0x270 */ DEFINE_OBJECT(object_moonend, OBJECT_MOONEND)
/* 0x271 */ DEFINE_OBJECT(object_ob, OBJECT_OB)
/* 0x272 */ DEFINE_OBJECT(object_gi_bottle_04, OBJECT_GI_BOTTLE_04)
/* 0x273 */ DEFINE_OBJECT(object_obj_danpeilift, OBJECT_OBJ_DANPEILIFT)
/* 0x274 */ DEFINE_OBJECT(object_wdor01, OBJECT_WDOR01)
/* 0x275 */ DEFINE_OBJECT(object_wdor02, OBJECT_WDOR02)
/* 0x276 */ DEFINE_OBJECT(object_wdor03, OBJECT_WDOR03)
/* 0x277 */ DEFINE_OBJECT(object_stk3, OBJECT_STK3)
/* 0x278 */ DEFINE_OBJECT(object_kinsta1_obj, OBJECT_KINSTA1_OBJ)
/* 0x279 */ DEFINE_OBJECT(object_kinsta2_obj, OBJECT_KINSTA2_OBJ)
/* 0x27A */ DEFINE_OBJECT(object_bh, OBJECT_BH)
/* 0x27B */ DEFINE_OBJECT(object_wdor04, OBJECT_WDOR04)
/* 0x27C */ DEFINE_OBJECT(object_wdor05, OBJECT_WDOR05)
/* 0x27D */ DEFINE_OBJECT(object_gi_mask17, OBJECT_GI_MASK17)
/* 0x27E */ DEFINE_OBJECT(object_gi_mask22, OBJECT_GI_MASK22)
/* 0x27F */ DEFINE_OBJECT(object_lbfshot, OBJECT_LBFSHOT)
/* 0x280 */ DEFINE_OBJECT(object_fusen, OBJECT_FUSEN)
/* 0x281 */ DEFINE_OBJECT(object_ending_obj, OBJECT_ENDING_OBJ)
/* 0x282 */ DEFINE_OBJECT(object_gi_mask13, OBJECT_GI_MASK13)
