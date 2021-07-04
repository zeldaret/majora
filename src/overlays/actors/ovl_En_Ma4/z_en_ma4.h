#ifndef Z_EN_MA4_H
#define Z_EN_MA4_H

#include <global.h>
#include "overlays/actors/ovl_En_Ma_Yts/z_en_ma_yts.h"

struct EnMa4;

typedef void (*EnMa4ActionFunc)(struct EnMa4*, GlobalContext*);

typedef struct EnMa4 {
    /* 0x000 */ Actor actor;
    /* 0x144 */ SkelAnime skelAnime;
    /* 0x188 */ EnMa4ActionFunc actionFunc;
    /* 0x18C */ ColliderCylinder collider;
    /* 0x1D8 */ struct_800BD888_arg1 unk_1D8;
    /* 0x200 */ Vec3s* pathPoints;
    /* 0x204 */ Vec3s limbDrawTable[MA1_LIMB_MAX];
    /* 0x28E */ char unk28E[0x6];
    /* 0x294 */ Vec3s transitionDrawTable[MA1_LIMB_MAX];
    /* 0x31E */ char unk31E[0x6];
    /* 0x324 */ s16 pathIndex;
    /* 0x326 */ s16 pathPointsCount;
    /* 0x328 */ char unk_328[0x2]; // unused
    /* 0x32A */ s16 blinkTimer;
    /* 0x33C */ s16 overrideEyeTexIndex;
    /* 0x32E */ s16 eyeTexIndex;
    /* 0x330 */ s16 mouthTexIndex;
    /* 0x332 */ s16 type;
    /* 0x334 */ u16 unk_334; // set but not used
    /* 0x336 */ s16 unk_336; // type2?
    /* 0x338 */ s16 poppedBalloonCounter; // modified by EnPoFusen
    /* 0x33A */ s16 hasBow;
    /* 0x33C */ s16 unk_33C; // multipurpose (?)
    /* 0x33E */ u16 textId;
} EnMa4; // size = 0x340

extern const ActorInit En_Ma4_InitVars;

typedef enum {
    /* 0 */ MA4_TYPE_0,
    /* 1 */ MA4_TYPE_1,
    /* 2 */ MA4_TYPE_SITTING,
} EnMa4Type;

/**
 * MA4_TYPE_0: 
 * MA4_TYPE_1: 
 * MA4_TYPE_SITTING: 
 */

#endif // Z_EN_MA4_H
