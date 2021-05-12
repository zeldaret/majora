#ifndef Z_OBJ_HSSTUMP_H
#define Z_OBJ_HSSTUMP_H

#include <global.h>

struct ObjHsStump;

typedef void (*ObjHsStumpActionFunc)(struct ObjHsStump*, GlobalContext*);

typedef struct ObjHsStump {
    /* 0x000 */ DynaPolyActor dyna;
    /* 0x15C */ ObjHsStumpActionFunc actionFunc;
    /* 0x160 */ s16 flag;
    /* 0x162 */ u8 isHidden;
    /* 0x163 */ u8 pad;
    /* 0x164 */ s16 framesAppeared;
    /* 0x166 */ s16 rotAngle;
    /* 0x168 */ f32 rotFactor;
} ObjHsStump; // size = 0x16C

extern const ActorInit Obj_HsStump_InitVars;

#endif // Z_OBJ_HSSTUMP_H
