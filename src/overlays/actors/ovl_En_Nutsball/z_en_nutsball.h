#ifndef Z_EN_NUTSBALL_H
#define Z_EN_NUTSBALL_H

#include <global.h>

struct EnNutsball;

typedef struct EnNutsball {
    /* 0x000 */ Actor actor;
    /* 0x144 */ s16 timer;
    /* 0x146 */ UNK_TYPE2 unk146;
    /* 0x148 */ ColliderCylinder collider;
} EnNutsball; // size = 0x194

extern const ActorInit En_Nutsball_InitVars;

#endif // Z_EN_NUTSBALL_H
