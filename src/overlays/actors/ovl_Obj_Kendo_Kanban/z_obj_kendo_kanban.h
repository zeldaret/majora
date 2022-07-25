#ifndef Z_OBJ_KENDO_KANBAN_H
#define Z_OBJ_KENDO_KANBAN_H

#include "global.h"

struct ObjKendoKanban;

typedef void (*ObjKendoKanbanActionFunc)(struct ObjKendoKanban*, PlayState*);

#define OBJKENDOKANBAN_GET_F(thisx) ((thisx)->params & 0xF)

#define OBJKENDOKANBAN_F_0 0
#define OBJKENDOKANBAN_F_1 (1 << 0)
#define OBJKENDOKANBAN_F_2 (1 << 1)
#define OBJKENDOKANBAN_F_4 (1 << 2)
#define OBJKENDOKANBAN_F_8 (1 << 3)

typedef struct ObjKendoKanban {
    /* 0x000 */ Actor actor;
    /* 0x144 */ ColliderCylinder colliderCylinder;
    /* 0x190 */ ColliderTris colliderTris;
    /* 0x1B0 */ ColliderTrisElement colliderTrisElements[2];
    /* 0x268 */ ObjKendoKanbanActionFunc actionFunc;
    /* 0x26C */ Vec3f unk_26C[4];
    /* 0x29C */ Vec3f unk_29C[4];
    /* 0x2CC */ Vec3f unk_2CC;
    /* 0x2D8 */ Vec3f unk_2D8;
    /* 0x2E4 */ Vec3f unk_2E4;
    /* 0x2F0 */ Vec3f unk_2F0;
    /* 0x2FC */ s32 unk_2FC;
    /* 0x300 */ s16 unk_300;
    /* 0x302 */ s16 unk_302;
    /* 0x304 */ s16 unk_304;
    /* 0x306 */ UNK_TYPE1 pad306[2];
    /* 0x308 */ s16 unk_308;
    /* 0x30A */ s16 unk_30A;
    /* 0x30C */ u8 unk_30C;
} ObjKendoKanban; // size = 0x310

#endif // Z_OBJ_KENDO_KANBAN_H
