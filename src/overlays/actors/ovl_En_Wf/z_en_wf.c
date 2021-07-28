#include "z_en_wf.h"

#define FLAGS 0x00000415

#define THIS ((EnWf*)thisx)

void EnWf_Init(Actor* thisx, GlobalContext* globalCtx);
void EnWf_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnWf_Update(Actor* thisx, GlobalContext* globalCtx);
void EnWf_Draw(Actor* thisx, GlobalContext* globalCtx);

#if 0
const ActorInit En_Wf_InitVars = {
    ACTOR_EN_WF,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_WF,
    sizeof(EnWf),
    (ActorFunc)EnWf_Init,
    (ActorFunc)EnWf_Destroy,
    (ActorFunc)EnWf_Update,
    (ActorFunc)EnWf_Draw,
};

// static ColliderJntSphElementInit sJntSphElementsInit[4] = {
static ColliderJntSphElementInit D_80994170[4] = {
    {
        { ELEMTYPE_UNK0, { 0xF7CFFFFF, 0x00, 0x10 }, { 0x00000000, 0x00, 0x00 }, TOUCH_ON | TOUCH_SFX_NORMAL, BUMP_NONE, OCELEM_NONE, },
        { 15, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        { ELEMTYPE_UNK0, { 0xF7CFFFFF, 0x00, 0x10 }, { 0x00000000, 0x00, 0x00 }, TOUCH_ON | TOUCH_SFX_NORMAL, BUMP_NONE, OCELEM_NONE, },
        { 21, { { 0, 0, 0 }, 15 }, 100 },
    },
    {
        { ELEMTYPE_UNK1, { 0x00000000, 0x00, 0x00 }, { 0xF7CFFFFF, 0x00, 0x00 }, TOUCH_NONE | TOUCH_SFX_NORMAL, BUMP_ON | BUMP_HOOKABLE, OCELEM_ON, },
        { 17, { { 800, 0, 0 }, 25 }, 100 },
    },
    {
        { ELEMTYPE_UNK1, { 0x00000000, 0x00, 0x00 }, { 0xF7CFFFFF, 0x00, 0x00 }, TOUCH_NONE | TOUCH_SFX_NORMAL, BUMP_ON | BUMP_HOOKABLE, OCELEM_ON, },
        { 12, { { 0, 0, 0 }, 30 }, 100 },
    },
};

// static ColliderJntSphInit sJntSphInit = {
static ColliderJntSphInit D_80994200 = {
    { COLTYPE_METAL, AT_NONE | AT_TYPE_ENEMY, AC_ON | AC_HARD | AC_TYPE_PLAYER, OC1_ON | OC1_TYPE_ALL, OC2_TYPE_1, COLSHAPE_JNTSPH, },
    4, D_80994170, // sJntSphElementsInit,
};

// static ColliderCylinderInit sCylinderInit = {
static ColliderCylinderInit D_80994210 = {
    { COLTYPE_HIT5, AT_NONE, AC_ON | AC_TYPE_PLAYER, OC1_NONE, OC2_NONE, COLSHAPE_CYLINDER, },
    { ELEMTYPE_UNK1, { 0x00000000, 0x00, 0x00 }, { 0xF7CFFFFF, 0x00, 0x00 }, TOUCH_NONE | TOUCH_SFX_NORMAL, BUMP_ON, OCELEM_NONE, },
    { 20, 50, 0, { 0, 0, 0 } },
};

// static ColliderCylinderInit sCylinderInit = {
static ColliderCylinderInit D_8099423C = {
    { COLTYPE_HIT5, AT_NONE, AC_ON | AC_TYPE_PLAYER, OC1_NONE, OC2_NONE, COLSHAPE_CYLINDER, },
    { ELEMTYPE_UNK1, { 0x00000000, 0x00, 0x00 }, { 0xF7CFFFFF, 0x00, 0x00 }, TOUCH_NONE | TOUCH_SFX_NORMAL, BUMP_ON, OCELEM_NONE, },
    { 15, 20, -15, { 0, 0, 0 } },
};

// static DamageTable sDamageTable = {
static DamageTable D_80994268 = {
    /* Deku Nut       */ DMG_ENTRY(0, 0x1),
    /* Deku Stick     */ DMG_ENTRY(1, 0x0),
    /* Horse trample  */ DMG_ENTRY(1, 0x0),
    /* Explosives     */ DMG_ENTRY(1, 0x0),
    /* Zora boomerang */ DMG_ENTRY(1, 0x0),
    /* Normal arrow   */ DMG_ENTRY(1, 0x0),
    /* UNK_DMG_0x06   */ DMG_ENTRY(0, 0x0),
    /* Hookshot       */ DMG_ENTRY(0, 0xF),
    /* Goron punch    */ DMG_ENTRY(2, 0x0),
    /* Sword          */ DMG_ENTRY(1, 0x0),
    /* Goron pound    */ DMG_ENTRY(3, 0x0),
    /* Fire arrow     */ DMG_ENTRY(2, 0x2),
    /* Ice arrow      */ DMG_ENTRY(1, 0x3),
    /* Light arrow    */ DMG_ENTRY(2, 0x4),
    /* Goron spikes   */ DMG_ENTRY(1, 0x0),
    /* Deku spin      */ DMG_ENTRY(0, 0x1),
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

// static DamageTable sDamageTable = {
static DamageTable D_80994288 = {
    /* Deku Nut       */ DMG_ENTRY(0, 0x1),
    /* Deku Stick     */ DMG_ENTRY(1, 0x0),
    /* Horse trample  */ DMG_ENTRY(1, 0x0),
    /* Explosives     */ DMG_ENTRY(1, 0x0),
    /* Zora boomerang */ DMG_ENTRY(1, 0x0),
    /* Normal arrow   */ DMG_ENTRY(1, 0x0),
    /* UNK_DMG_0x06   */ DMG_ENTRY(0, 0x0),
    /* Hookshot       */ DMG_ENTRY(0, 0xF),
    /* Goron punch    */ DMG_ENTRY(1, 0x0),
    /* Sword          */ DMG_ENTRY(1, 0x0),
    /* Goron pound    */ DMG_ENTRY(3, 0x0),
    /* Fire arrow     */ DMG_ENTRY(2, 0x2),
    /* Ice arrow      */ DMG_ENTRY(2, 0x3),
    /* Light arrow    */ DMG_ENTRY(2, 0x4),
    /* Goron spikes   */ DMG_ENTRY(1, 0x0),
    /* Deku spin      */ DMG_ENTRY(0, 0x1),
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
static CollisionCheckInfoInit D_809942A8 = { 8, 50, 100, MASS_HEAVY };

// static InitChainEntry sInitChain[] = {
static InitChainEntry D_809942D0[] = {
    ICHAIN_F32(targetArrowOffset, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -2000, ICHAIN_STOP),
};

#endif

extern ColliderJntSphElementInit D_80994170[4];
extern ColliderJntSphInit D_80994200;
extern ColliderCylinderInit D_80994210;
extern ColliderCylinderInit D_8099423C;
extern DamageTable D_80994268;
extern DamageTable D_80994288;
extern CollisionCheckInfoInit D_809942A8;
extern InitChainEntry D_809942D0[];

extern UNK_TYPE D_06004638;
extern UNK_TYPE D_06004A90;
extern UNK_TYPE D_06004C44;
extern UNK_TYPE D_060053D0;
extern UNK_TYPE D_06005700;
extern UNK_TYPE D_06009808;
extern UNK_TYPE D_06009A50;
extern UNK_TYPE D_0600A3CC;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/EnWf_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/EnWf_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_809907D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80990854.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_809908E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80990948.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80990C6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80990E4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80990EAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80990ED4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80990F0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80990F50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80990FC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80991040.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_809910F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80991174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80991200.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80991280.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80991438.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_8099149C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80991738.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_8099177C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80991948.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_809919F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80991C04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80991C80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80991FD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80992068.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_8099223C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_809922B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_809923B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_809923E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_8099245C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_809924EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_809926D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80992784.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_8099282C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_809928CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80992A74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80992B8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80992D6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80992E0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80992FD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80993018.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80993148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80993194.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80993350.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_809933A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80993524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_8099357C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80993738.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_8099386C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/EnWf_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80993E50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_80993E94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/EnWf_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Wf/func_8099408C.s")
