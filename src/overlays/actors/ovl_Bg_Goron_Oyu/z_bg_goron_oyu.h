#ifndef Z_BG_GORON_OYU_H
#define Z_BG_GORON_OYU_H

#include "global.h"

struct BgGoronOyu;

typedef void (*BgGoronOyuActionFunc)(struct BgGoronOyu*, GlobalContext*);

typedef struct BgGoronOyu {
    /* 0x000 */ DynaPolyActor polyActor;
    /* 0x15C */ BgGoronOyuActionFunc actionFunc;
    /* 0x160 */ u8 gap160[4];
    /* 0x164 */ f32 flt164;
    /* 0x168 */ Vec3f waterBoxPos;
    /* 0x174 */ f32 waterBoxXLength;
    /* 0x178 */ f32 waterBoxZLength;
    /* 0x17C */ s16 initialActorCutscene;
    /* 0x17E */ u16 unk17E;
} BgGoronOyu; // size = 0x180

#endif // Z_BG_GORON_OYU_H
