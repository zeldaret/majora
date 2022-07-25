#ifndef Z_EN_S_GORO_H
#define Z_EN_S_GORO_H

#include "global.h"

#define EN_S_GORO_GET_PARAM_F(thisx) ((thisx)->params & 0xF)

struct EnSGoro;

typedef void (*EnSGoroActionFunc)(struct EnSGoro*, PlayState*);

typedef struct EnSGoro {
    /* 0x000 */ Actor actor;
    /* 0x144 */ char unk_144[0x48];
    /* 0x18C */ EnSGoroActionFunc actionFunc;
    /* 0x190 */ char unk_190[0x180];
} EnSGoro; // size = 0x310

#endif // Z_EN_S_GORO_H
