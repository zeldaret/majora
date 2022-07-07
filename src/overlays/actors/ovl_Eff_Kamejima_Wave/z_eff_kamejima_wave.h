#ifndef Z_EFF_KAMEJIMA_WAVE_H
#define Z_EFF_KAMEJIMA_WAVE_H

#include "global.h"

#define EFFKAMEJIMAWAVE_GET_F(thisx) ((thisx)->params & 0xF)
#define PARAMS_1 1

struct EffKamejimaWave;

typedef void (*EffKamejimaWaveActionFunc)(struct EffKamejimaWave*, PlayState*);

typedef struct EffKamejimaWave {
    /* 0x000 */ Actor actor;
    /* 0x144 */ f32 scaleOffset;
    /* 0x148 */ UNK_TYPE1 pad148[4];
    /* 0x14C */ EffKamejimaWaveActionFunc actionFunc;
} EffKamejimaWave; // size = 0x150

extern const ActorInit Eff_Kamejima_Wave_InitVars;

#endif // Z_EFF_KAMEJIMA_WAVE_H
