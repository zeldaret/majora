#ifndef Z_OBJ_KIBAKO2_H
#define Z_OBJ_KIBAKO2_H

#include "global.h"

#define GET_KIBAKO2_COLLECTIBLE_ID(x) (((x->dyna.actor.params >> 0x8) & 0x7F) << 8)

struct ObjKibako2;

typedef void (*ObjKibako2ActionFunc)(struct ObjKibako2* this, GlobalContext* globalCtx);

typedef struct ObjKibako2 {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x015C */ ColliderCylinder collider;
    /* 0x01A8 */ ObjKibako2ActionFunc actionFunc;
    /* 0x01AC */ s8 unk_1AC;
    /* 0x01AD */ s8 skulltulaNoiseTimer;
    /* 0x01AE */ char unk_1AE[0x2];
} ObjKibako2; // size = 0x1B0

extern const ActorInit Obj_Kibako2_InitVars;

#endif // Z_OBJ_KIBAKO2_H
