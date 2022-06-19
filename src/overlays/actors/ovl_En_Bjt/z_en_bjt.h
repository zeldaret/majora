#ifndef Z_EN_BJT_H
#define Z_EN_BJT_H

#include "global.h"
#include "objects/object_bjt/object_bjt.h"

struct EnBjt;

typedef void (*EnBjtActionFunc)(struct EnBjt*, PlayState*);
typedef s32 (*MsgEventFunc)(Actor*, PlayState*);

typedef struct EnBjt {
    /* 0x000 */ Actor actor;
    /* 0x144 */ SkelAnime skelAnime;
    /* 0x188 */ EnBjtActionFunc actionFunc;
    /* 0x18C */ ColliderCylinder collider;
    /* 0x1D8 */ u8 scheduleResult;
    /* 0x1DC */ s32 msgEventArg4;
    /* 0x1E0 */ Vec3s jointTable[TOILET_HAND_LIMB_MAX];
    /* 0x20A */ Vec3s morphTable[TOILET_HAND_LIMB_MAX];
    /* 0x234 */ u16 stateFlags;
    /* 0x236 */ u16 textId;
    /* 0x238 */ f32 animPlaySpead;
    /* 0x23C */ f32 unk23C;
    /* 0x240 */ s16 unk240;
    /* 0x242 */ s16 unk242;
    /* 0x244 */ char unk244[4];
    /* 0x248 */ s32 playedSfx;
    /* 0x24C */ MsgEventFunc msgEventCallback;
    /* 0x250 */ s32 curAnimIndex;
    /* 0x254 */ char pad254[8];
} EnBjt; // size = 0x25C


extern const ActorInit En_Bjt_InitVars;

#endif // Z_EN_BJT_H
