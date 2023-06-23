#include "global.h"

/**
 * Indices of the columns of this array:
 * - index 0x00: PLAYER_MASK_TRUTH
 * - index 0x01: PLAYER_MASK_KAFEIS_MASK
 * - index 0x02: PLAYER_MASK_ALL_NIGHT
 * - index 0x03: PLAYER_MASK_BUNNY
 * - index 0x04: PLAYER_MASK_KEATON
 * - index 0x05: PLAYER_MASK_GARO
 * - index 0x06: PLAYER_MASK_ROMANI
 * - index 0x07: PLAYER_MASK_CIRCUS_LEADER
 * - index 0x08: PLAYER_MASK_POSTMAN
 * - index 0x09: PLAYER_MASK_COUPLE
 * - index 0x0A: PLAYER_MASK_GREAT_FAIRY
 * - index 0x0B: PLAYER_MASK_GIBDO
 * - index 0x0C: PLAYER_MASK_DON_GERO
 * - index 0x0D: PLAYER_MASK_KAMARO
 * - index 0x0E: PLAYER_MASK_CAPTAIN
 * - index 0x0F: PLAYER_MASK_STONE
 * - index 0x10: PLAYER_MASK_BREMEN
 * - index 0x11: PLAYER_MASK_BLAST
 * - index 0x12: PLAYER_MASK_SCENTS
 */
// clang-format off
static u16 sReactionTextIds[][PLAYER_MASK_GIANT - 1] = {
    /* 0x00 */ { 0 },
    /* 0x01 */ { 0 },
    /* 0x02 */ { 0 },
    /* 0x03 */ { 0 },
    /* 0x04 */ { 0 },
    /* 0x05 */ { 0 },
    /* 0x06 */ { 0 },
    /* 0x07 */ { 0 },
    /* 0x08 */ { 0 },
    /* 0x09 */ { 0 },
    /* 0x0A */ { 0 },
    /* 0x0B */ { 0 },
    /* 0x0C */ { 0 },
    /* 0x0D */ { 0 },
    /* 0x0E */ { 0 },
    /* 0x0F */ { 0 },
    /* 0x10 */ { 0 },
    /* 0x11 */ { 0x0000, 0x236B, 0x0000, 0x0000, 0x236C, 0x0000,
                 0x0000, 0x236D, 0x0000, 0x0000, 0x0000, 0x0000,
                 0x0000, 0x0000, 0x0000, 0x236E, 0x0000, 0x0000, 0x0000 }, // FACE_REACTION_SET_JIM
    /* 0x12 */ { 0x2348, 0x2349, 0x234A, 0x0000, 0x234B, 0x2348,
                 0x234C, 0x2348, 0x234D, 0x234E, 0x2348, 0x2348,
                 0x2348, 0x2348, 0x2348, 0x234F, 0x2348, 0x2348, 0x2350 }, // FACE_REACTION_SET_BOMBERS
    /* 0x13 */ { 0 },
    /* 0x14 */ { 0 },
    /* 0x15 */ { 0x2351, 0x2352, 0x2353, 0x2354, 0x2355, 0x2356,
                 0x2357, 0x2356, 0x2358, 0x2359, 0x2356, 0x235A,
                 0x2353, 0x235A, 0x235A, 0x235B, 0x2354, 0x2351, 0x235C }, // FACE_REACTION_SET_BOMBERS_HIDEOUT_GUARD
    /* 0x16 */ { 0 },
    /* 0x17 */ { 0 },
    /* 0x18 */ { 0 },
    /* 0x19 */ { 0 },
    /* 0x1A */ { 0 },
    /* 0x1B */ { 0 },
    /* 0x1C */ { 0 },
    /* 0x1D */ { 0 },
    /* 0x1E */ { 0 },
    /* 0x1F */ { 0 },
    /* 0x20 */ { 0 },
    /* 0x21 */ { 0 },
    /* 0x22 */ { 0 },
    /* 0x23 */ { 0 },
    /* 0x24 */ { 0 },
    /* 0x25 */ { 0 },
    /* 0x26 */ { 0 },
    /* 0x27 */ { 0 },
    /* 0x28 */ { 0 },
    /* 0x29 */ { 0 },
    /* 0x2A */ { 0 },
    /* 0x2B */ { 0 },
    /* 0x2C */ { 0 },
    /* 0x2D */ { 0x233B, 0x233C, 0x233D, 0x233E, 0x233F, 0x233B,
                 0x2340, 0x2341, 0x2342, 0x2343, 0x2344, 0x2345,
                 0x2346, 0x233B, 0x2345, 0x2347, 0x233D, 0x233B, 0x233D }, // FACE_REACTION_SET_TREASURE_CHEST_SHOP_GAL
    /* 0x2E */ { 0 },
    /* 0x2F */ { 0x2328, 0x2329, 0x232A, 0x232B, 0x2328, 0x2328,
                 0x232C, 0x2328, 0x232D, 0x232E, 0x2328, 0x2328,
                 0x2328, 0x232F, 0x2330, 0x2331, 0x2332, 0x2333, 0x2328 }, // FACE_REACTION_SET_CURIOSITY_SHOP_MAN
    /* 0x30 */ { 0x236F, 0x2370, 0x236F, 0x0000, 0x236F, 0x236F,
                 0x236F, 0x236F, 0x0000, 0x236F, 0x236F, 0x236F,
                 0x236F, 0x236F, 0x2371, 0x2372, 0x236F, 0x236F, 0x236F }, // FACE_REACTION_SET_TOWN_SHOOTING_GALLERY_MAN
    /* 0x31 */ { 0x2373, 0x2374, 0x2373, 0x0000, 0x2373, 0x2373,
                 0x2373, 0x2373, 0x0000, 0x2375, 0x2376, 0x2373,
                 0x2373, 0x2373, 0x2377, 0x2378, 0x2373, 0x2373, 0x2373 }, // FACE_REACTION_SET_SWAMP_SHOOTING_GALLERY_MAN
    /* 0x32 */ { 0 },
    /* 0x33 */ { 0 },
    /* 0x34 */ { 0 },
    /* 0x35 */ { 0 },
    /* 0x36 */ { 0x0000, 0x2334, 0x0000, 0x0000, 0x0000, 0x0000,
                 0x2335, 0x0000, 0x2336, 0x2337, 0x0000, 0x0000,
                 0x0000, 0x0000, 0x2338, 0x2339, 0x0000, 0x233A, 0x0000 }, // FACE_REACTION_SET_PART_TIMER
    /* 0x37 */ { 0 },
    /* 0x38 */ { 0 },
    /* 0x39 */ { 0 },
    /* 0x3A */ { 0 },
    /* 0x3B */ { 0 },
    /* 0x3C */ { 0 },
    /* 0x3D */ { 0 },
    /* 0x3E */ { 0 },
    /* 0x3F */ { 0 },
    /* 0x40 */ { 0 },
    /* 0x41 */ { 0 },
    /* 0x42 */ { 0 },
    /* 0x43 */ { 0 },
    /* 0x44 */ { 0 },
    /* 0x45 */ { 0 },
    /* 0x46 */ { 0 },
    /* 0x47 */ { 0 },
    /* 0x48 */ { 0 },
    /* 0x49 */ { 0 },
    /* 0x4A */ { 0 },
    /* 0x4B */ { 0 },
    /* 0x4C */ { 0 },
    /* 0x4D */ { 0 },
    /* 0x4E */ { 0 },
    /* 0x4F */ { 0 },
    /* 0x50 */ { 0 },
    /* 0x51 */ { 0 },
    /* 0x52 */ { 0 },
    /* 0x53 */ { 0 },
    /* 0x54 */ { 0 },
    /* 0x55 */ { 0 },
    /* 0x56 */ { 0 },
    /* 0x57 */ { 0 },
    /* 0x58 */ { 0 },
    /* 0x59 */ { 0 },
    /* 0x5A */ { 0 },
    /* 0x5B */ { 0 },
    /* 0x5C */ { 0 },
    /* 0x5D */ { 0 },
    /* 0x5E */ { 0 },
    /* 0x5F */ { 0 },
    /* 0x60 */ { 0 },
    /* 0x61 */ { 0 },
    /* 0x62 */ { 0 },
    /* 0x63 */ { 0 },
    /* 0x64 */ { 0 },
    /* 0x65 */ { 0 },
    /* 0x66 */ { 0 },
    /* 0x67 */ { 0 },
    /* 0x68 */ { 0 },
    /* 0x69 */ { 0 },
    /* 0x6A */ { 0 },
    /* 0x6B */ { 0 },
    /* 0x6C */ { 0 },
    /* 0x6D */ { 0 },
    /* 0x6E */ { 0 },
    /* 0x6F */ { 0 },
    /* 0x70 */ { 0 },
    /* 0x71 */ { 0 },
    /* 0x72 */ { 0 },
    /* 0x73 */ { 0 },
    /* 0x74 */ { 0 },
    /* 0x75 */ { 0 },
    /* 0x76 */ { 0 },
    /* 0x77 */ { 0 },
    /* 0x78 */ { 0 },
    /* 0x79 */ { 0 },
    /* 0x7A */ { 0 },
    /* 0x7B */ { 0 },
    /* 0x7C */ { 0 },
    /* 0x7D */ { 0 },
    /* 0x7E */ { 0 },
    /* 0x7F */ { 0 },
    /* 0x80 */ { 0 },
    /* 0x81 */ { 0 },
    /* 0x82 */ { 0 },
    /* 0x83 */ { 0 },
    /* 0x84 */ { 0 },
    /* 0x85 */ { 0 },
    /* 0x86 */ { 0 },
};
// clang-format on

u16 Text_GetFaceReaction(PlayState* play, FaceReactionSet reactionSet) {
    if ((Player_GetMask(play) > PLAYER_MASK_NONE) && (Player_GetMask(play) < PLAYER_MASK_GIANT)) {
        return sReactionTextIds[reactionSet][Player_GetMask(play) - 1];
    }
    return 0;
}
