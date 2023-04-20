#ifndef SEGMENT_SYMBOLS_H
#define SEGMENT_SYMBOLS_H

#include "libc/stddef.h"
#include "PR/ultratypes.h"

#define DECLARE_SEGMENT(name)          \
    extern u8 _##name##SegmentStart[]; \
    extern u8 _##name##SegmentEnd[];

#define DECLARE_ROM_SEGMENT(name)         \
    extern u8 _##name##SegmentRomStart[]; \
    extern u8 _##name##SegmentRomEnd[];

#define DECLARE_BSS_SEGMENT(name)         \
    extern u8 _##name##SegmentBssStart[]; \
    extern u8 _##name##SegmentBssEnd[];

#define DECLARE_OVERLAY_SEGMENT(name) \
    DECLARE_SEGMENT(ovl_##name)       \
    DECLARE_ROM_SEGMENT(ovl_##name)

#define SEGMENT_START(segment) (_ ## segment ## SegmentStart)
#define SEGMENT_END(segment) (_ ## segment ## SegmentEnd)
#define SEGMENT_SIZE(segment) ((uintptr_t)SEGMENT_END(segment) - (uintptr_t)SEGMENT_START(segment))

#define SEGMENT_ROM_START(segment) (_ ## segment ## SegmentRomStart)
#define SEGMENT_ROM_END(segment) (_ ## segment ## SegmentRomEnd)
#define SEGMENT_ROM_SIZE(segment) ((uintptr_t)SEGMENT_ROM_END(segment) - (uintptr_t)SEGMENT_ROM_START(segment))

#define SEGMENT_BSS_START(segment) (_ ## segment ## SegmentBssStart)
#define SEGMENT_BSS_END(segment) (_ ## segment ## SegmentBssEnd)
#define SEGMENT_BSS_SIZE(segment) ((uintptr_t)SEGMENT_BSS_END(segment) - (uintptr_t)SEGMENT_BSS_START(segment))

DECLARE_SEGMENT(boot)
DECLARE_ROM_SEGMENT(boot)

DECLARE_SEGMENT(dmadata)
DECLARE_ROM_SEGMENT(dmadata)

DECLARE_ROM_SEGMENT(Audiobank)
DECLARE_ROM_SEGMENT(Audioseq)
DECLARE_ROM_SEGMENT(Audiotable)
DECLARE_ROM_SEGMENT(kanji)
DECLARE_ROM_SEGMENT(link_animetion)
DECLARE_ROM_SEGMENT(icon_item_field_static)
DECLARE_ROM_SEGMENT(icon_item_dungeon_static)
DECLARE_ROM_SEGMENT(icon_item_gameover_static)
DECLARE_ROM_SEGMENT(icon_item_jpn_static)
DECLARE_ROM_SEGMENT(icon_item_vtx_static)
DECLARE_ROM_SEGMENT(map_i_static)
DECLARE_ROM_SEGMENT(map_grand_static)
DECLARE_ROM_SEGMENT(item_name_static)
DECLARE_ROM_SEGMENT(map_name_static)
DECLARE_ROM_SEGMENT(icon_item_static_test)
DECLARE_ROM_SEGMENT(icon_item_static_old)
DECLARE_ROM_SEGMENT(icon_item_24_static_test)
DECLARE_ROM_SEGMENT(icon_item_24_static_old)
DECLARE_ROM_SEGMENT(schedule_dma_static_test)
DECLARE_ROM_SEGMENT(schedule_static)
DECLARE_ROM_SEGMENT(story_static)
DECLARE_ROM_SEGMENT(do_action_static)
DECLARE_ROM_SEGMENT(message_static)
DECLARE_ROM_SEGMENT(message_texture_static)
DECLARE_ROM_SEGMENT(nes_font_static)
DECLARE_ROM_SEGMENT(message_data_static)
DECLARE_ROM_SEGMENT(staff_message_data_static)

DECLARE_SEGMENT(code)
DECLARE_ROM_SEGMENT(code)
DECLARE_BSS_SEGMENT(code)

DECLARE_OVERLAY_SEGMENT(title)
DECLARE_OVERLAY_SEGMENT(select)
DECLARE_OVERLAY_SEGMENT(opening)
DECLARE_OVERLAY_SEGMENT(file_choose)
DECLARE_OVERLAY_SEGMENT(daytelop)
DECLARE_OVERLAY_SEGMENT(kaleido_scope)
DECLARE_OVERLAY_SEGMENT(player_actor)

#define DEFINE_ACTOR(name, _enumValue, _allocType, _debugName) DECLARE_OVERLAY_SEGMENT(name)
#define DEFINE_ACTOR_INTERNAL(_name, _enumValue, _allocType, _debugName)
#define DEFINE_ACTOR_UNSET(_enumValue)

#include "tables/actor_table.h"

#undef DEFINE_ACTOR
#undef DEFINE_ACTOR_INTERNAL
#undef DEFINE_ACTOR_UNSET

DECLARE_OVERLAY_SEGMENT(fbdemo_triforce)
DECLARE_OVERLAY_SEGMENT(fbdemo_wipe1)
DECLARE_OVERLAY_SEGMENT(fbdemo_wipe3)
DECLARE_OVERLAY_SEGMENT(fbdemo_wipe4)
DECLARE_OVERLAY_SEGMENT(fbdemo_wipe5)

#define DEFINE_OBJECT(name, _enumValue) DECLARE_ROM_SEGMENT(name)
#define DEFINE_OBJECT_UNSET(_enumValue)
#define DEFINE_OBJECT_SIZE_ZERO(_name, _enumValue)

#include "tables/object_table.h"

#undef DEFINE_OBJECT
#undef DEFINE_OBJECT_UNSET
#undef DEFINE_OBJECT_SIZE_ZERO

DECLARE_ROM_SEGMENT(scene_texture_01)
DECLARE_ROM_SEGMENT(scene_texture_02)
DECLARE_ROM_SEGMENT(scene_texture_03)
DECLARE_ROM_SEGMENT(scene_texture_04)
DECLARE_ROM_SEGMENT(scene_texture_05)
DECLARE_ROM_SEGMENT(scene_texture_06)
DECLARE_ROM_SEGMENT(scene_texture_07)
DECLARE_ROM_SEGMENT(scene_texture_08)
DECLARE_ROM_SEGMENT(nintendo_rogo_static)
DECLARE_ROM_SEGMENT(title_static)
DECLARE_SEGMENT(memerrmsg)
DECLARE_ROM_SEGMENT(memerrmsg)
DECLARE_SEGMENT(locerrmsg)
DECLARE_ROM_SEGMENT(locerrmsg)
DECLARE_ROM_SEGMENT(parameter_static)
DECLARE_ROM_SEGMENT(week_static)
DECLARE_ROM_SEGMENT(daytelop_static)
DECLARE_ROM_SEGMENT(ger_daytelop_static)
DECLARE_ROM_SEGMENT(fra_daytelop_static)
DECLARE_ROM_SEGMENT(esp_daytelop_static)
DECLARE_ROM_SEGMENT(d2_fine_static)
DECLARE_ROM_SEGMENT(d2_cloud_static)
DECLARE_ROM_SEGMENT(d2_fine_pal_static)
DECLARE_ROM_SEGMENT(elf_message_field)
DECLARE_ROM_SEGMENT(elf_message_ydan)

DECLARE_ROM_SEGMENT(Z2_20SICHITAI2)
DECLARE_ROM_SEGMENT(Z2_20SICHITAI2_room_00)
DECLARE_ROM_SEGMENT(Z2_20SICHITAI2_room_01)
DECLARE_ROM_SEGMENT(Z2_20SICHITAI2_room_02)

DECLARE_ROM_SEGMENT(Z2_WITCH_SHOP)
DECLARE_ROM_SEGMENT(Z2_WITCH_SHOP_room_00)

DECLARE_ROM_SEGMENT(Z2_LAST_BS)
DECLARE_ROM_SEGMENT(Z2_LAST_BS_room_00)

DECLARE_ROM_SEGMENT(Z2_HAKASHITA)
DECLARE_ROM_SEGMENT(Z2_HAKASHITA_room_00)
DECLARE_ROM_SEGMENT(Z2_HAKASHITA_room_01)
DECLARE_ROM_SEGMENT(Z2_HAKASHITA_room_02)
DECLARE_ROM_SEGMENT(Z2_HAKASHITA_room_03)
DECLARE_ROM_SEGMENT(Z2_HAKASHITA_room_04)

DECLARE_ROM_SEGMENT(Z2_AYASHIISHOP)
DECLARE_ROM_SEGMENT(Z2_AYASHIISHOP_room_00)
DECLARE_ROM_SEGMENT(Z2_AYASHIISHOP_room_01)

DECLARE_ROM_SEGMENT(Z2_OMOYA)
DECLARE_ROM_SEGMENT(Z2_OMOYA_room_00)
DECLARE_ROM_SEGMENT(Z2_OMOYA_room_01)
DECLARE_ROM_SEGMENT(Z2_OMOYA_room_02)

DECLARE_ROM_SEGMENT(Z2_BOWLING)
DECLARE_ROM_SEGMENT(Z2_BOWLING_room_00)

DECLARE_ROM_SEGMENT(Z2_SONCHONOIE)
DECLARE_ROM_SEGMENT(Z2_SONCHONOIE_room_00)
DECLARE_ROM_SEGMENT(Z2_SONCHONOIE_room_01)
DECLARE_ROM_SEGMENT(Z2_SONCHONOIE_room_02)
DECLARE_ROM_SEGMENT(Z2_SONCHONOIE_room_03)

DECLARE_ROM_SEGMENT(Z2_IKANA)
DECLARE_ROM_SEGMENT(Z2_IKANA_room_00)
DECLARE_ROM_SEGMENT(Z2_IKANA_room_01)
DECLARE_ROM_SEGMENT(Z2_IKANA_room_02)
DECLARE_ROM_SEGMENT(Z2_IKANA_room_03)
DECLARE_ROM_SEGMENT(Z2_IKANA_room_04)

DECLARE_ROM_SEGMENT(Z2_KAIZOKU)
DECLARE_ROM_SEGMENT(Z2_KAIZOKU_room_00)

DECLARE_ROM_SEGMENT(Z2_MILK_BAR)
DECLARE_ROM_SEGMENT(Z2_MILK_BAR_room_00)

DECLARE_ROM_SEGMENT(Z2_INISIE_N)
DECLARE_ROM_SEGMENT(Z2_INISIE_N_room_00)
DECLARE_ROM_SEGMENT(Z2_INISIE_N_room_01)
DECLARE_ROM_SEGMENT(Z2_INISIE_N_room_02)
DECLARE_ROM_SEGMENT(Z2_INISIE_N_room_03)
DECLARE_ROM_SEGMENT(Z2_INISIE_N_room_04)
DECLARE_ROM_SEGMENT(Z2_INISIE_N_room_05)
DECLARE_ROM_SEGMENT(Z2_INISIE_N_room_06)
DECLARE_ROM_SEGMENT(Z2_INISIE_N_room_07)
DECLARE_ROM_SEGMENT(Z2_INISIE_N_room_08)
DECLARE_ROM_SEGMENT(Z2_INISIE_N_room_09)
DECLARE_ROM_SEGMENT(Z2_INISIE_N_room_10)
DECLARE_ROM_SEGMENT(Z2_INISIE_N_room_11)

DECLARE_ROM_SEGMENT(Z2_TAKARAYA)
DECLARE_ROM_SEGMENT(Z2_TAKARAYA_room_00)

DECLARE_ROM_SEGMENT(Z2_INISIE_R)
DECLARE_ROM_SEGMENT(Z2_INISIE_R_room_00)
DECLARE_ROM_SEGMENT(Z2_INISIE_R_room_01)
DECLARE_ROM_SEGMENT(Z2_INISIE_R_room_02)
DECLARE_ROM_SEGMENT(Z2_INISIE_R_room_03)
DECLARE_ROM_SEGMENT(Z2_INISIE_R_room_04)
DECLARE_ROM_SEGMENT(Z2_INISIE_R_room_05)
DECLARE_ROM_SEGMENT(Z2_INISIE_R_room_06)
DECLARE_ROM_SEGMENT(Z2_INISIE_R_room_07)
DECLARE_ROM_SEGMENT(Z2_INISIE_R_room_08)
DECLARE_ROM_SEGMENT(Z2_INISIE_R_room_09)
DECLARE_ROM_SEGMENT(Z2_INISIE_R_room_10)
DECLARE_ROM_SEGMENT(Z2_INISIE_R_room_11)

DECLARE_ROM_SEGMENT(Z2_OKUJOU)
DECLARE_ROM_SEGMENT(Z2_OKUJOU_room_00)

DECLARE_ROM_SEGMENT(Z2_OPENINGDAN)
DECLARE_ROM_SEGMENT(Z2_OPENINGDAN_room_00)
DECLARE_ROM_SEGMENT(Z2_OPENINGDAN_room_01)

DECLARE_ROM_SEGMENT(Z2_MITURIN)
DECLARE_ROM_SEGMENT(Z2_MITURIN_room_00)
DECLARE_ROM_SEGMENT(Z2_MITURIN_room_01)
DECLARE_ROM_SEGMENT(Z2_MITURIN_room_02)
DECLARE_ROM_SEGMENT(Z2_MITURIN_room_03)
DECLARE_ROM_SEGMENT(Z2_MITURIN_room_04)
DECLARE_ROM_SEGMENT(Z2_MITURIN_room_05)
DECLARE_ROM_SEGMENT(Z2_MITURIN_room_06)
DECLARE_ROM_SEGMENT(Z2_MITURIN_room_07)
DECLARE_ROM_SEGMENT(Z2_MITURIN_room_08)
DECLARE_ROM_SEGMENT(Z2_MITURIN_room_09)
DECLARE_ROM_SEGMENT(Z2_MITURIN_room_10)
DECLARE_ROM_SEGMENT(Z2_MITURIN_room_11)
DECLARE_ROM_SEGMENT(Z2_MITURIN_room_12)

DECLARE_ROM_SEGMENT(Z2_13HUBUKINOMITI)
DECLARE_ROM_SEGMENT(Z2_13HUBUKINOMITI_room_00)

DECLARE_ROM_SEGMENT(Z2_CASTLE)
DECLARE_ROM_SEGMENT(Z2_CASTLE_room_00)
DECLARE_ROM_SEGMENT(Z2_CASTLE_room_01)
DECLARE_ROM_SEGMENT(Z2_CASTLE_room_02)
DECLARE_ROM_SEGMENT(Z2_CASTLE_room_03)
DECLARE_ROM_SEGMENT(Z2_CASTLE_room_04)
DECLARE_ROM_SEGMENT(Z2_CASTLE_room_05)
DECLARE_ROM_SEGMENT(Z2_CASTLE_room_06)
DECLARE_ROM_SEGMENT(Z2_CASTLE_room_07)
DECLARE_ROM_SEGMENT(Z2_CASTLE_room_08)
DECLARE_ROM_SEGMENT(Z2_CASTLE_room_09)

DECLARE_ROM_SEGMENT(Z2_DEKUTES)
DECLARE_ROM_SEGMENT(Z2_DEKUTES_room_00)

DECLARE_ROM_SEGMENT(Z2_MITURIN_BS)
DECLARE_ROM_SEGMENT(Z2_MITURIN_BS_room_00)

DECLARE_ROM_SEGMENT(Z2_SYATEKI_MIZU)
DECLARE_ROM_SEGMENT(Z2_SYATEKI_MIZU_room_00)

DECLARE_ROM_SEGMENT(Z2_HAKUGIN)
DECLARE_ROM_SEGMENT(Z2_HAKUGIN_room_00)
DECLARE_ROM_SEGMENT(Z2_HAKUGIN_room_01)
DECLARE_ROM_SEGMENT(Z2_HAKUGIN_room_02)
DECLARE_ROM_SEGMENT(Z2_HAKUGIN_room_03)
DECLARE_ROM_SEGMENT(Z2_HAKUGIN_room_04)
DECLARE_ROM_SEGMENT(Z2_HAKUGIN_room_05)
DECLARE_ROM_SEGMENT(Z2_HAKUGIN_room_06)
DECLARE_ROM_SEGMENT(Z2_HAKUGIN_room_07)
DECLARE_ROM_SEGMENT(Z2_HAKUGIN_room_08)
DECLARE_ROM_SEGMENT(Z2_HAKUGIN_room_09)
DECLARE_ROM_SEGMENT(Z2_HAKUGIN_room_10)
DECLARE_ROM_SEGMENT(Z2_HAKUGIN_room_11)
DECLARE_ROM_SEGMENT(Z2_HAKUGIN_room_12)
DECLARE_ROM_SEGMENT(Z2_HAKUGIN_room_13)

DECLARE_ROM_SEGMENT(Z2_ROMANYMAE)
DECLARE_ROM_SEGMENT(Z2_ROMANYMAE_room_00)

DECLARE_ROM_SEGMENT(Z2_PIRATE)
DECLARE_ROM_SEGMENT(Z2_PIRATE_room_00)
DECLARE_ROM_SEGMENT(Z2_PIRATE_room_01)
DECLARE_ROM_SEGMENT(Z2_PIRATE_room_02)
DECLARE_ROM_SEGMENT(Z2_PIRATE_room_03)
DECLARE_ROM_SEGMENT(Z2_PIRATE_room_04)
DECLARE_ROM_SEGMENT(Z2_PIRATE_room_05)
DECLARE_ROM_SEGMENT(Z2_PIRATE_room_06)
DECLARE_ROM_SEGMENT(Z2_PIRATE_room_07)
DECLARE_ROM_SEGMENT(Z2_PIRATE_room_08)
DECLARE_ROM_SEGMENT(Z2_PIRATE_room_09)
DECLARE_ROM_SEGMENT(Z2_PIRATE_room_10)
DECLARE_ROM_SEGMENT(Z2_PIRATE_room_11)
DECLARE_ROM_SEGMENT(Z2_PIRATE_room_12)
DECLARE_ROM_SEGMENT(Z2_PIRATE_room_13)
DECLARE_ROM_SEGMENT(Z2_PIRATE_room_14)

DECLARE_ROM_SEGMENT(Z2_SYATEKI_MORI)
DECLARE_ROM_SEGMENT(Z2_SYATEKI_MORI_room_00)

DECLARE_ROM_SEGMENT(Z2_SINKAI)
DECLARE_ROM_SEGMENT(Z2_SINKAI_room_00)

DECLARE_ROM_SEGMENT(Z2_YOUSEI_IZUMI)
DECLARE_ROM_SEGMENT(Z2_YOUSEI_IZUMI_room_00)
DECLARE_ROM_SEGMENT(Z2_YOUSEI_IZUMI_room_01)
DECLARE_ROM_SEGMENT(Z2_YOUSEI_IZUMI_room_02)
DECLARE_ROM_SEGMENT(Z2_YOUSEI_IZUMI_room_03)
DECLARE_ROM_SEGMENT(Z2_YOUSEI_IZUMI_room_04)

DECLARE_ROM_SEGMENT(Z2_KINSTA1)
DECLARE_ROM_SEGMENT(Z2_KINSTA1_room_00)
DECLARE_ROM_SEGMENT(Z2_KINSTA1_room_01)
DECLARE_ROM_SEGMENT(Z2_KINSTA1_room_02)
DECLARE_ROM_SEGMENT(Z2_KINSTA1_room_03)
DECLARE_ROM_SEGMENT(Z2_KINSTA1_room_04)
DECLARE_ROM_SEGMENT(Z2_KINSTA1_room_05)

DECLARE_ROM_SEGMENT(Z2_KINDAN2)
DECLARE_ROM_SEGMENT(Z2_KINDAN2_room_00)
DECLARE_ROM_SEGMENT(Z2_KINDAN2_room_01)
DECLARE_ROM_SEGMENT(Z2_KINDAN2_room_02)
DECLARE_ROM_SEGMENT(Z2_KINDAN2_room_03)
DECLARE_ROM_SEGMENT(Z2_KINDAN2_room_04)
DECLARE_ROM_SEGMENT(Z2_KINDAN2_room_05)

DECLARE_ROM_SEGMENT(Z2_TENMON_DAI)
DECLARE_ROM_SEGMENT(Z2_TENMON_DAI_room_00)
DECLARE_ROM_SEGMENT(Z2_TENMON_DAI_room_01)

DECLARE_ROM_SEGMENT(Z2_LAST_DEKU)
DECLARE_ROM_SEGMENT(Z2_LAST_DEKU_room_00)
DECLARE_ROM_SEGMENT(Z2_LAST_DEKU_room_01)

DECLARE_ROM_SEGMENT(Z2_22DEKUCITY)
DECLARE_ROM_SEGMENT(Z2_22DEKUCITY_room_00)
DECLARE_ROM_SEGMENT(Z2_22DEKUCITY_room_01)
DECLARE_ROM_SEGMENT(Z2_22DEKUCITY_room_02)

DECLARE_ROM_SEGMENT(Z2_KAJIYA)
DECLARE_ROM_SEGMENT(Z2_KAJIYA_room_00)

DECLARE_ROM_SEGMENT(Z2_00KEIKOKU)
DECLARE_ROM_SEGMENT(Z2_00KEIKOKU_room_00)

DECLARE_ROM_SEGMENT(Z2_POSTHOUSE)
DECLARE_ROM_SEGMENT(Z2_POSTHOUSE_room_00)

DECLARE_ROM_SEGMENT(Z2_LABO)
DECLARE_ROM_SEGMENT(Z2_LABO_room_00)

DECLARE_ROM_SEGMENT(Z2_DANPEI2TEST)
DECLARE_ROM_SEGMENT(Z2_DANPEI2TEST_room_00)
DECLARE_ROM_SEGMENT(Z2_DANPEI2TEST_room_01)

DECLARE_ROM_SEGMENT(Z2_16GORON_HOUSE)
DECLARE_ROM_SEGMENT(Z2_16GORON_HOUSE_room_00)
DECLARE_ROM_SEGMENT(Z2_16GORON_HOUSE_room_01)

DECLARE_ROM_SEGMENT(Z2_33ZORACITY)
DECLARE_ROM_SEGMENT(Z2_33ZORACITY_room_00)

DECLARE_ROM_SEGMENT(Z2_8ITEMSHOP)
DECLARE_ROM_SEGMENT(Z2_8ITEMSHOP_room_00)

DECLARE_ROM_SEGMENT(Z2_F01)
DECLARE_ROM_SEGMENT(Z2_F01_room_00)

DECLARE_ROM_SEGMENT(Z2_INISIE_BS)
DECLARE_ROM_SEGMENT(Z2_INISIE_BS_room_00)

DECLARE_ROM_SEGMENT(Z2_30GYOSON)
DECLARE_ROM_SEGMENT(Z2_30GYOSON_room_00)

DECLARE_ROM_SEGMENT(Z2_31MISAKI)
DECLARE_ROM_SEGMENT(Z2_31MISAKI_room_00)

DECLARE_ROM_SEGMENT(Z2_TAKARAKUJI)
DECLARE_ROM_SEGMENT(Z2_TAKARAKUJI_room_00)

DECLARE_ROM_SEGMENT(Z2_TORIDE)
DECLARE_ROM_SEGMENT(Z2_TORIDE_room_00)

DECLARE_ROM_SEGMENT(Z2_FISHERMAN)
DECLARE_ROM_SEGMENT(Z2_FISHERMAN_room_00)

DECLARE_ROM_SEGMENT(Z2_GORONSHOP)
DECLARE_ROM_SEGMENT(Z2_GORONSHOP_room_00)

DECLARE_ROM_SEGMENT(Z2_DEKU_KING)
DECLARE_ROM_SEGMENT(Z2_DEKU_KING_room_00)

DECLARE_ROM_SEGMENT(Z2_LAST_GORON)
DECLARE_ROM_SEGMENT(Z2_LAST_GORON_room_00)
DECLARE_ROM_SEGMENT(Z2_LAST_GORON_room_01)

DECLARE_ROM_SEGMENT(Z2_24KEMONOMITI)
DECLARE_ROM_SEGMENT(Z2_24KEMONOMITI_room_00)

DECLARE_ROM_SEGMENT(Z2_F01_B)
DECLARE_ROM_SEGMENT(Z2_F01_B_room_00)

DECLARE_ROM_SEGMENT(Z2_F01C)
DECLARE_ROM_SEGMENT(Z2_F01C_room_00)

DECLARE_ROM_SEGMENT(Z2_BOTI)
DECLARE_ROM_SEGMENT(Z2_BOTI_room_00)
DECLARE_ROM_SEGMENT(Z2_BOTI_room_01)

DECLARE_ROM_SEGMENT(Z2_HAKUGIN_BS)
DECLARE_ROM_SEGMENT(Z2_HAKUGIN_BS_room_00)

DECLARE_ROM_SEGMENT(Z2_20SICHITAI)
DECLARE_ROM_SEGMENT(Z2_20SICHITAI_room_00)
DECLARE_ROM_SEGMENT(Z2_20SICHITAI_room_01)
DECLARE_ROM_SEGMENT(Z2_20SICHITAI_room_02)

DECLARE_ROM_SEGMENT(Z2_21MITURINMAE)
DECLARE_ROM_SEGMENT(Z2_21MITURINMAE_room_00)

DECLARE_ROM_SEGMENT(Z2_LAST_ZORA)
DECLARE_ROM_SEGMENT(Z2_LAST_ZORA_room_00)

DECLARE_ROM_SEGMENT(Z2_11GORONNOSATO2)
DECLARE_ROM_SEGMENT(Z2_11GORONNOSATO2_room_00)
DECLARE_ROM_SEGMENT(Z2_11GORONNOSATO2_room_01)

DECLARE_ROM_SEGMENT(Z2_SEA)
DECLARE_ROM_SEGMENT(Z2_SEA_room_00)
DECLARE_ROM_SEGMENT(Z2_SEA_room_01)
DECLARE_ROM_SEGMENT(Z2_SEA_room_02)
DECLARE_ROM_SEGMENT(Z2_SEA_room_03)
DECLARE_ROM_SEGMENT(Z2_SEA_room_04)
DECLARE_ROM_SEGMENT(Z2_SEA_room_05)
DECLARE_ROM_SEGMENT(Z2_SEA_room_06)
DECLARE_ROM_SEGMENT(Z2_SEA_room_07)
DECLARE_ROM_SEGMENT(Z2_SEA_room_08)
DECLARE_ROM_SEGMENT(Z2_SEA_room_09)
DECLARE_ROM_SEGMENT(Z2_SEA_room_10)
DECLARE_ROM_SEGMENT(Z2_SEA_room_11)
DECLARE_ROM_SEGMENT(Z2_SEA_room_12)
DECLARE_ROM_SEGMENT(Z2_SEA_room_13)
DECLARE_ROM_SEGMENT(Z2_SEA_room_14)
DECLARE_ROM_SEGMENT(Z2_SEA_room_15)

DECLARE_ROM_SEGMENT(Z2_35TAKI)
DECLARE_ROM_SEGMENT(Z2_35TAKI_room_00)

DECLARE_ROM_SEGMENT(Z2_REDEAD)
DECLARE_ROM_SEGMENT(Z2_REDEAD_room_00)
DECLARE_ROM_SEGMENT(Z2_REDEAD_room_01)
DECLARE_ROM_SEGMENT(Z2_REDEAD_room_02)
DECLARE_ROM_SEGMENT(Z2_REDEAD_room_03)
DECLARE_ROM_SEGMENT(Z2_REDEAD_room_04)
DECLARE_ROM_SEGMENT(Z2_REDEAD_room_05)
DECLARE_ROM_SEGMENT(Z2_REDEAD_room_06)
DECLARE_ROM_SEGMENT(Z2_REDEAD_room_07)
DECLARE_ROM_SEGMENT(Z2_REDEAD_room_08)
DECLARE_ROM_SEGMENT(Z2_REDEAD_room_09)
DECLARE_ROM_SEGMENT(Z2_REDEAD_room_10)
DECLARE_ROM_SEGMENT(Z2_REDEAD_room_11)
DECLARE_ROM_SEGMENT(Z2_REDEAD_room_12)
DECLARE_ROM_SEGMENT(Z2_REDEAD_room_13)

DECLARE_ROM_SEGMENT(Z2_BANDROOM)
DECLARE_ROM_SEGMENT(Z2_BANDROOM_room_00)
DECLARE_ROM_SEGMENT(Z2_BANDROOM_room_01)
DECLARE_ROM_SEGMENT(Z2_BANDROOM_room_02)
DECLARE_ROM_SEGMENT(Z2_BANDROOM_room_03)
DECLARE_ROM_SEGMENT(Z2_BANDROOM_room_04)

DECLARE_ROM_SEGMENT(Z2_11GORONNOSATO)
DECLARE_ROM_SEGMENT(Z2_11GORONNOSATO_room_00)
DECLARE_ROM_SEGMENT(Z2_11GORONNOSATO_room_01)

DECLARE_ROM_SEGMENT(Z2_GORON_HAKA)
DECLARE_ROM_SEGMENT(Z2_GORON_HAKA_room_00)

DECLARE_ROM_SEGMENT(Z2_SECOM)
DECLARE_ROM_SEGMENT(Z2_SECOM_room_00)
DECLARE_ROM_SEGMENT(Z2_SECOM_room_01)

DECLARE_ROM_SEGMENT(Z2_10YUKIYAMANOMURA)
DECLARE_ROM_SEGMENT(Z2_10YUKIYAMANOMURA_room_00)

DECLARE_ROM_SEGMENT(Z2_TOUGITES)
DECLARE_ROM_SEGMENT(Z2_TOUGITES_room_00)

DECLARE_ROM_SEGMENT(Z2_DANPEI)
DECLARE_ROM_SEGMENT(Z2_DANPEI_room_00)
DECLARE_ROM_SEGMENT(Z2_DANPEI_room_01)
DECLARE_ROM_SEGMENT(Z2_DANPEI_room_02)
DECLARE_ROM_SEGMENT(Z2_DANPEI_room_03)
DECLARE_ROM_SEGMENT(Z2_DANPEI_room_04)
DECLARE_ROM_SEGMENT(Z2_DANPEI_room_05)
DECLARE_ROM_SEGMENT(Z2_DANPEI_room_06)
DECLARE_ROM_SEGMENT(Z2_DANPEI_room_07)
DECLARE_ROM_SEGMENT(Z2_DANPEI_room_08)

DECLARE_ROM_SEGMENT(Z2_IKANAMAE)
DECLARE_ROM_SEGMENT(Z2_IKANAMAE_room_00)

DECLARE_ROM_SEGMENT(Z2_DOUJOU)
DECLARE_ROM_SEGMENT(Z2_DOUJOU_room_00)

DECLARE_ROM_SEGMENT(Z2_MUSICHOUSE)
DECLARE_ROM_SEGMENT(Z2_MUSICHOUSE_room_00)

DECLARE_ROM_SEGMENT(Z2_IKNINSIDE)
DECLARE_ROM_SEGMENT(Z2_IKNINSIDE_room_00)
DECLARE_ROM_SEGMENT(Z2_IKNINSIDE_room_01)

DECLARE_ROM_SEGMENT(Z2_MAP_SHOP)
DECLARE_ROM_SEGMENT(Z2_MAP_SHOP_room_00)

DECLARE_ROM_SEGMENT(Z2_F40)
DECLARE_ROM_SEGMENT(Z2_F40_room_00)

DECLARE_ROM_SEGMENT(Z2_F41)
DECLARE_ROM_SEGMENT(Z2_F41_room_00)

DECLARE_ROM_SEGMENT(Z2_10YUKIYAMANOMURA2)
DECLARE_ROM_SEGMENT(Z2_10YUKIYAMANOMURA2_room_00)
DECLARE_ROM_SEGMENT(Z2_10YUKIYAMANOMURA2_room_01)

DECLARE_ROM_SEGMENT(Z2_14YUKIDAMANOMITI)
DECLARE_ROM_SEGMENT(Z2_14YUKIDAMANOMITI_room_00)

DECLARE_ROM_SEGMENT(Z2_12HAKUGINMAE)
DECLARE_ROM_SEGMENT(Z2_12HAKUGINMAE_room_00)

DECLARE_ROM_SEGMENT(Z2_17SETUGEN)
DECLARE_ROM_SEGMENT(Z2_17SETUGEN_room_00)

DECLARE_ROM_SEGMENT(Z2_17SETUGEN2)
DECLARE_ROM_SEGMENT(Z2_17SETUGEN2_room_00)

DECLARE_ROM_SEGMENT(Z2_SEA_BS)
DECLARE_ROM_SEGMENT(Z2_SEA_BS_room_00)

DECLARE_ROM_SEGMENT(Z2_RANDOM)
DECLARE_ROM_SEGMENT(Z2_RANDOM_room_00)
DECLARE_ROM_SEGMENT(Z2_RANDOM_room_01)
DECLARE_ROM_SEGMENT(Z2_RANDOM_room_02)
DECLARE_ROM_SEGMENT(Z2_RANDOM_room_03)
DECLARE_ROM_SEGMENT(Z2_RANDOM_room_04)
DECLARE_ROM_SEGMENT(Z2_RANDOM_room_05)

DECLARE_ROM_SEGMENT(Z2_YADOYA)
DECLARE_ROM_SEGMENT(Z2_YADOYA_room_00)
DECLARE_ROM_SEGMENT(Z2_YADOYA_room_01)
DECLARE_ROM_SEGMENT(Z2_YADOYA_room_02)
DECLARE_ROM_SEGMENT(Z2_YADOYA_room_03)
DECLARE_ROM_SEGMENT(Z2_YADOYA_room_04)

DECLARE_ROM_SEGMENT(Z2_KONPEKI_ENT)
DECLARE_ROM_SEGMENT(Z2_KONPEKI_ENT_room_00)

DECLARE_ROM_SEGMENT(Z2_INSIDETOWER)
DECLARE_ROM_SEGMENT(Z2_INSIDETOWER_room_00)
DECLARE_ROM_SEGMENT(Z2_INSIDETOWER_room_01)

DECLARE_ROM_SEGMENT(Z2_26SARUNOMORI)
DECLARE_ROM_SEGMENT(Z2_26SARUNOMORI_room_00)
DECLARE_ROM_SEGMENT(Z2_26SARUNOMORI_room_01)
DECLARE_ROM_SEGMENT(Z2_26SARUNOMORI_room_02)
DECLARE_ROM_SEGMENT(Z2_26SARUNOMORI_room_03)
DECLARE_ROM_SEGMENT(Z2_26SARUNOMORI_room_04)
DECLARE_ROM_SEGMENT(Z2_26SARUNOMORI_room_05)
DECLARE_ROM_SEGMENT(Z2_26SARUNOMORI_room_06)
DECLARE_ROM_SEGMENT(Z2_26SARUNOMORI_room_07)
DECLARE_ROM_SEGMENT(Z2_26SARUNOMORI_room_08)

DECLARE_ROM_SEGMENT(Z2_LOST_WOODS)
DECLARE_ROM_SEGMENT(Z2_LOST_WOODS_room_00)
DECLARE_ROM_SEGMENT(Z2_LOST_WOODS_room_01)
DECLARE_ROM_SEGMENT(Z2_LOST_WOODS_room_02)

DECLARE_ROM_SEGMENT(Z2_LAST_LINK)
DECLARE_ROM_SEGMENT(Z2_LAST_LINK_room_00)
DECLARE_ROM_SEGMENT(Z2_LAST_LINK_room_01)
DECLARE_ROM_SEGMENT(Z2_LAST_LINK_room_02)
DECLARE_ROM_SEGMENT(Z2_LAST_LINK_room_03)
DECLARE_ROM_SEGMENT(Z2_LAST_LINK_room_04)
DECLARE_ROM_SEGMENT(Z2_LAST_LINK_room_05)
DECLARE_ROM_SEGMENT(Z2_LAST_LINK_room_06)
DECLARE_ROM_SEGMENT(Z2_LAST_LINK_room_07)

DECLARE_ROM_SEGMENT(Z2_SOUGEN)
DECLARE_ROM_SEGMENT(Z2_SOUGEN_room_00)

DECLARE_ROM_SEGMENT(Z2_BOMYA)
DECLARE_ROM_SEGMENT(Z2_BOMYA_room_00)

DECLARE_ROM_SEGMENT(Z2_KYOJINNOMA)
DECLARE_ROM_SEGMENT(Z2_KYOJINNOMA_room_00)

DECLARE_ROM_SEGMENT(Z2_KOEPONARACE)
DECLARE_ROM_SEGMENT(Z2_KOEPONARACE_room_00)

DECLARE_ROM_SEGMENT(Z2_GORONRACE)
DECLARE_ROM_SEGMENT(Z2_GORONRACE_room_00)

DECLARE_ROM_SEGMENT(Z2_TOWN)
DECLARE_ROM_SEGMENT(Z2_TOWN_room_00)

DECLARE_ROM_SEGMENT(Z2_ICHIBA)
DECLARE_ROM_SEGMENT(Z2_ICHIBA_room_00)

DECLARE_ROM_SEGMENT(Z2_BACKTOWN)
DECLARE_ROM_SEGMENT(Z2_BACKTOWN_room_00)

DECLARE_ROM_SEGMENT(Z2_CLOCKTOWER)
DECLARE_ROM_SEGMENT(Z2_CLOCKTOWER_room_00)

DECLARE_ROM_SEGMENT(Z2_ALLEY)
DECLARE_ROM_SEGMENT(Z2_ALLEY_room_00)

DECLARE_ROM_SEGMENT(SPOT00)
DECLARE_ROM_SEGMENT(SPOT00_room_00)

DECLARE_ROM_SEGMENT(KAKUSIANA)
DECLARE_ROM_SEGMENT(KAKUSIANA_room_00)
DECLARE_ROM_SEGMENT(KAKUSIANA_room_01)
DECLARE_ROM_SEGMENT(KAKUSIANA_room_02)
DECLARE_ROM_SEGMENT(KAKUSIANA_room_03)
DECLARE_ROM_SEGMENT(KAKUSIANA_room_04)
DECLARE_ROM_SEGMENT(KAKUSIANA_room_05)
DECLARE_ROM_SEGMENT(KAKUSIANA_room_06)
DECLARE_ROM_SEGMENT(KAKUSIANA_room_07)
DECLARE_ROM_SEGMENT(KAKUSIANA_room_08)
DECLARE_ROM_SEGMENT(KAKUSIANA_room_09)
DECLARE_ROM_SEGMENT(KAKUSIANA_room_10)
DECLARE_ROM_SEGMENT(KAKUSIANA_room_11)
DECLARE_ROM_SEGMENT(KAKUSIANA_room_12)
DECLARE_ROM_SEGMENT(KAKUSIANA_room_13)
DECLARE_ROM_SEGMENT(KAKUSIANA_room_14)

DECLARE_ROM_SEGMENT(bump_texture_static)

#endif
