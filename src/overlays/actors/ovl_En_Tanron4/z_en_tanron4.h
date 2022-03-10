#ifndef Z_EN_TANRON4_H
#define Z_EN_TANRON4_H

#include "global.h"

struct EnTanron4;

typedef void (*EnTanron4ActionFunc)(struct EnTanron4*, GlobalContext*);

typedef struct EnTanron4 {
    /* 0x000 */ Actor actor;
    /* 0x144 */ s16 randRollTimer;
    /* 0x146 */ s16 timers[2];
    /* 0x14A */ u8 flyState;
    /* 0x14C */ Vec3f targetPos;
    /* 0x158 */ s16 step;
    /* 0x15A */ s16 roll;
    /* 0x15C */ s16 rollTarget;
    /* 0x160 */ f32 timeInfluence;
    /* 0x164 */ SkelAnime skelAnime;
    /* 0x1A8 */ Vec3s jointTable[11];
    /* 0x1EA */ Vec3s morphTable[11];
    /* 0x022C */ EnTanron4ActionFunc actionFunc;
} EnTanron4; // size = 0x230

// other than these magic values, params is the number of desired seagulls in the flock
#define SEAGULL_CLONE -1
#define SEAGULL_FOLLOW_ACTOR 100

extern const ActorInit En_Tanron4_InitVars;

#endif // Z_EN_TANRON4_H
