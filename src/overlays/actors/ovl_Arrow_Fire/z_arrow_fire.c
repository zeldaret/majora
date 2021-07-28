#include "z_arrow_fire.h"

#define FLAGS 0x02000010

#define THIS ((ArrowFire*)thisx)

void ArrowFire_Init(Actor* thisx, GlobalContext* globalCtx);
void ArrowFire_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ArrowFire_Update(Actor* thisx, GlobalContext* globalCtx);
void ArrowFire_Draw(Actor* thisx, GlobalContext* globalCtx);

#if 0
// static ColliderQuadInit sQuadInit = {
static ColliderQuadInit D_80922230 = {
    { COLTYPE_NONE, AT_ON | AT_TYPE_PLAYER, AC_NONE, OC1_NONE, OC2_TYPE_PLAYER, COLSHAPE_QUAD, },
    { ELEMTYPE_UNK0, { 0x08000000, 0x00, 0x02 }, { 0x00000000, 0x00, 0x00 }, TOUCH_ON | TOUCH_SFX_NORMAL, BUMP_NONE, OCELEM_NONE, },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

const ActorInit Arrow_Fire_InitVars = {
    ACTOR_ARROW_FIRE,
    ACTORCAT_ITEMACTION,
    FLAGS,
    GAMEPLAY_KEEP,
    sizeof(ArrowFire),
    (ActorFunc)ArrowFire_Init,
    (ActorFunc)ArrowFire_Destroy,
    (ActorFunc)ArrowFire_Update,
    (ActorFunc)ArrowFire_Draw,
};

#endif

extern ColliderQuadInit D_80922230;

extern UNK_TYPE D_0E0002E0;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Arrow_Fire/func_80920340.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Arrow_Fire/ArrowFire_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Arrow_Fire/ArrowFire_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Arrow_Fire/func_80920440.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Arrow_Fire/FireArrow_Lerp.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Arrow_Fire/func_8092058C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Arrow_Fire/func_809207A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Arrow_Fire/ArrowFire_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Arrow_Fire/func_80920948.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Arrow_Fire/ArrowFire_Draw.s")
