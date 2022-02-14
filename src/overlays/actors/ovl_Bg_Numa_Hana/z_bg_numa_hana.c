/*
 * File: z_bg_numa_hana.c
 * Overlay: ovl_Bg_Numa_Hana
 * Description: Big wooden flower in Woodfall Temple
 */

#include "z_bg_numa_hana.h"

#define FLAGS 0x00000410

#define THIS ((BgNumaHana*)thisx)

void BgNumaHana_Init(Actor* thisx, GlobalContext* globalCtx);
void BgNumaHana_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgNumaHana_Update(Actor* thisx, GlobalContext* globalCtx);
void BgNumaHana_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A1AA28(BgNumaHana* this, GlobalContext* globalCtx);
void func_80A1AA4C(BgNumaHana* this, GlobalContext* globalCtx);
void func_80A1AB00(BgNumaHana* this, GlobalContext* globalCtx);
void func_80A1ABF0(BgNumaHana* this, GlobalContext* globalCtx);
void func_80A1ACE0(BgNumaHana* this, GlobalContext* globalCtx);
void func_80A1AE1C(BgNumaHana* this, GlobalContext* globalCtx);
void func_80A1AA14(BgNumaHana* this);
void func_80A1AE08(BgNumaHana* this);
void func_80A1AA38(BgNumaHana* this);

const ActorInit Bg_Numa_Hana_InitVars = {
    ACTOR_BG_NUMA_HANA,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_NUMA_OBJ,
    sizeof(BgNumaHana),
    (ActorFunc)BgNumaHana_Init,
    (ActorFunc)BgNumaHana_Destroy,
    (ActorFunc)BgNumaHana_Update,
    (ActorFunc)BgNumaHana_Draw,
};

// static ColliderCylinderInit sCylinderInit = {
static ColliderCylinderInit D_80A1B260 = {
    {
        COLTYPE_METAL,
        AT_NONE,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK2,
        { 0x00000000, 0x00, 0x00 },
        { 0x01CBFBB6, 0x00, 0x00 },
        TOUCH_NONE | TOUCH_SFX_NORMAL,
        BUMP_ON | BUMP_HOOKABLE,
        OCELEM_ON,
    },
    { 18, 16, 0, { 0, 0, 0 } },
};

static FireObjInitParams D_80A1B28C = {
    0.00405000010505f, 0.0500000007451f, 3, 1, 0, 0, 0,
};

static s16 D_80A1B29C[] = { 0x0000, 0x2AAA, 0x5555, 0x8000, 0xAAAA, 0xD555 };

// static InitChainEntry sInitChain[] = {
static InitChainEntry D_80A1B2A8[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 600, ICHAIN_STOP),
};

extern CollisionHeader D_06009FE0;
extern CollisionHeader D_0600A740;
extern UNK_TYPE D_0600B928;

Actor* func_80A1A500(BgNumaHana* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/func_80A1A500.s")

void func_80A1A56C(BgNumaHana* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/func_80A1A56C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/func_80A1A750.s")

void BgNumaHana_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    DynaPolyActor* child;
    s32 temp;
    BgNumaHana* this = THIS;

    temp = this->dyna.actor.params & 1;
    Actor_ProcessInitChain(&this->dyna.actor, D_80A1B2A8);
    DynaPolyActor_Init(&this->dyna, 3);
    if (temp == 1) {
        DynaPolyActor_LoadMesh(globalCtx, &this->dyna, &D_06009FE0);
        func_80A1AA14(this);
        this->dyna.actor.draw = NULL;
        return;
    }

    DynaPolyActor_LoadMesh(globalCtx, &this->dyna, &D_0600A740);
    FireObj_Init(globalCtx, &this->unk_15C, &D_80A1B28C, &this->dyna.actor);
    Collider_InitCylinder(globalCtx, &this->unk_1E8);
    Collider_SetCylinder(globalCtx, &this->unk_1E8, &this->dyna.actor, &D_80A1B260);
    this->dyna.actor.colChkInfo.mass = MASS_IMMOVABLE;
    if (func_80A1A500(this, globalCtx) == NULL) {
        Actor_MarkForDeath(&this->dyna.actor);
        return;
    }

    if (gSaveContext.weekEventReg[12] & 1) {
        func_800C62BC(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
        this->unk_328 = 0x2000;
        this->unk_32A = 0x2000;
        this->unk_32C = 0;
        this->unk_32E = 0;
        this->unk_330 = 0;
        this->unk_334 = 0.0f;
        this->unk_338 = -0x4000;
        this->unk_33A = 0;
        this->unk_33C = 0x147;
        this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y + 210.0f;
        FireObj_SetState2(&this->unk_15C, 0.05f, 2);
        Flags_SetSwitch(globalCtx, BG_NUMA_HAMA_SWITCH_FLAG(&this->dyna.actor));
        func_80A1AE08(this);
    } else {
        child = (DynaPolyActor*)this->dyna.actor.child;
        func_800C62BC(globalCtx, &globalCtx->colCtx.dyna, child->bgId);
        Flags_UnsetSwitch(globalCtx, BG_NUMA_HAMA_SWITCH_FLAG(&this->dyna.actor));
        func_80A1AA38(this);
    }

    func_80A1A56C(this);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/BgNumaHana_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/func_80A1AA14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/func_80A1AA28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/func_80A1AA38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/func_80A1AA4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/func_80A1AAE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/func_80A1AB00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/func_80A1ABD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/func_80A1ABF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/func_80A1ACCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/func_80A1ACE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/func_80A1AE08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/func_80A1AE1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/BgNumaHana_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Bg_Numa_Hana/BgNumaHana_Draw.s")
