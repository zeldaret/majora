#ifndef Z_BG_NUMA_HANA_H
#define Z_BG_NUMA_HANA_H

#include "global.h"

#define BG_NUMA_HAMA_SWITCH_FLAG(thisx) (((thisx)->params >> 8) & 0x7F)

struct BgNumaHana;

typedef void (*BgNumaHanaActionFunc)(struct BgNumaHana*, GlobalContext*);

typedef struct BgNumaHana {
    /* 0x000 */ DynaPolyActor dyna;
    /* 0x15C */ FireObj unk_15C;
    /* 0x1E8 */ ColliderCylinder collider;
    /* 0x234 */ BgNumaHanaActionFunc actionFunc;
    /* 0x238 */ char unk_238[0xF0];
    /* 0x328 */ s16 unk_328;
    /* 0x32A */ s16 unk_32A;
    /* 0x32C */ Vec3s unk_32C;
    /* 0x334 */ f32 unk_334;
    /* 0x338 */ s16 unk_338;
    /* 0x33A */ s16 unk_33A;
    /* 0x33C */ s16 unk_33C;
    /* 0x33E */ s16 unk_33E;
} BgNumaHana; // size = 0x340

extern const ActorInit Bg_Numa_Hana_InitVars;

#endif // Z_BG_NUMA_HANA_H
