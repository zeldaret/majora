#include "z_en_bb.h"

#define FLAGS 0x00000205

#define THIS ((EnBb*)thisx)

void EnBb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBb_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBb_Draw(Actor* thisx, GlobalContext* globalCtx);

#if 0
const ActorInit En_Bb_InitVars = {
    ACTOR_EN_BB,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_BB,
    sizeof(EnBb),
    (ActorFunc)EnBb_Init,
    (ActorFunc)EnBb_Destroy,
    (ActorFunc)EnBb_Update,
    (ActorFunc)EnBb_Draw,
};


// static ColliderSphereInit sSphereInit = {
static ColliderSphereInit D_808C37A0 = {
    { COLTYPE_HIT3, AT_NONE | AT_TYPE_ENEMY, AC_ON | AC_TYPE_PLAYER, OC1_ON | OC1_TYPE_ALL, OC2_TYPE_1, COLSHAPE_SPHERE, },
    { ELEMTYPE_UNK0, { 0xF7CFFFFF, 0x00, 0x08 }, { 0xF7CFFFFF, 0x00, 0x00 }, TOUCH_ON | TOUCH_SFX_NORMAL, BUMP_ON | BUMP_HOOKABLE, OCELEM_ON, },
    { 0, { { 0, 0, 0 }, 20 }, 100 },
};


// static DamageTable sDamageTable = {
static DamageTable D_808C37CC = {
    /* Deku Nut       */ DMG_ENTRY(0, 0x1),
    /* Deku Stick     */ DMG_ENTRY(1, 0x0),
    /* Horse trample  */ DMG_ENTRY(1, 0x0),
    /* Explosives     */ DMG_ENTRY(1, 0x0),
    /* Zora boomerang */ DMG_ENTRY(1, 0x0),
    /* Normal arrow   */ DMG_ENTRY(1, 0x0),
    /* UNK_DMG_0x06   */ DMG_ENTRY(0, 0x0),
    /* Hookshot       */ DMG_ENTRY(0, 0xE),
    /* Goron punch    */ DMG_ENTRY(1, 0x0),
    /* Sword          */ DMG_ENTRY(1, 0x0),
    /* Goron pound    */ DMG_ENTRY(1, 0x0),
    /* Fire arrow     */ DMG_ENTRY(1, 0x0),
    /* Ice arrow      */ DMG_ENTRY(2, 0x3),
    /* Light arrow    */ DMG_ENTRY(2, 0x4),
    /* Goron spikes   */ DMG_ENTRY(1, 0x0),
    /* Deku spin      */ DMG_ENTRY(1, 0x0),
    /* Deku bubble    */ DMG_ENTRY(1, 0x0),
    /* Deku launch    */ DMG_ENTRY(2, 0x0),
    /* UNK_DMG_0x12   */ DMG_ENTRY(0, 0x1),
    /* Zora barrier   */ DMG_ENTRY(0, 0x5),
    /* Normal shield  */ DMG_ENTRY(0, 0x0),
    /* Light ray      */ DMG_ENTRY(0, 0x0),
    /* Thrown object  */ DMG_ENTRY(1, 0x0),
    /* Zora punch     */ DMG_ENTRY(1, 0x0),
    /* Spin attack    */ DMG_ENTRY(1, 0x0),
    /* Sword beam     */ DMG_ENTRY(0, 0x0),
    /* Normal Roll    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1B   */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1C   */ DMG_ENTRY(0, 0x0),
    /* Unblockable    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1E   */ DMG_ENTRY(0, 0x0),
    /* Powder Keg     */ DMG_ENTRY(1, 0x0),
};


// sColChkInfoInit
static CollisionCheckInfoInit D_808C37EC = { 2, 20, 40, 50 };


// static InitChainEntry sInitChain[] = {
static InitChainEntry D_808C37F4[] = {
    ICHAIN_S8(hintId, 28, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 10, ICHAIN_STOP),
};


extern ColliderSphereInit D_808C37A0;
extern DamageTable D_808C37CC;
extern CollisionCheckInfoInit D_808C37EC;
extern InitChainEntry D_808C37F4[];
#endif

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/EnBb_Init.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/EnBb_Destroy.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C1E94.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C1F00.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C1F74.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C1FF4.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C20D4.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C2238.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C2344.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C23EC.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C254C.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C25E0.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C272C.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C28CC.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C2A00.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C2B1C.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C2B94.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C2BD0.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C2C38.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C2CB4.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C2CF0.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C2D78.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C2E34.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/EnBb_Update.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C32EC.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/func_808C3324.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bb_0x808C1D40/EnBb_Draw.asm")
