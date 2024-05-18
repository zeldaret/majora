#ifndef FUNCTIONS_H
#define FUNCTIONS_H

#include "z64.h"

Actor* Item_DropCollectible(PlayState* play, Vec3f* spawnPos, u32 params);
Actor* Item_DropCollectible2(PlayState* play, Vec3f* spawnPos, s32 params);
void Item_DropCollectibleRandom(PlayState* play, Actor* fromActor, Vec3f* spawnPos, s16 params);
s32 func_800A8150(s32 index);
s32 func_800A817C(s32 index);
bool Item_CanDropBigFairy(PlayState* play, s32 index, s32 collectibleFlag);

void ActorShape_Init(ActorShape* actorShape, f32 yOffset, ActorShadowFunc shadowDraw, f32 shadowScale);
void ActorShadow_DrawCircle(Actor* actor, Lights* lights, PlayState* play);
void ActorShadow_DrawSquare(Actor* actor, Lights* lights, PlayState* play);
void ActorShadow_DrawWhiteCircle(Actor* actor, Lights* lights, PlayState* play);
void ActorShadow_DrawHorse(Actor* actor, Lights* lights, PlayState* play);

void ActorShadow_DrawFeet(Actor* actor, Lights* mapper, PlayState* play);
void Actor_SetFeetPos(Actor* actor, s32 limbIndex, s32 leftFootIndex, Vec3f* leftFootPos, s32 rightFootIndex, Vec3f* rightFootPos);
void func_800B4AEC(PlayState* play, Actor* actor, f32 y);
void func_800B4B50(Actor* actor, Lights* mapper, PlayState* play);
void Actor_GetProjectedPos(PlayState* play, Vec3f* worldPos, Vec3f* projectedPos, f32* invW);

void Target_Draw(TargetContext* targetCtx, PlayState* play);

s32 Flags_GetSwitch(PlayState* play, s32 flag);
void Flags_SetSwitch(PlayState* play, s32 flag);
void Flags_UnsetSwitch(PlayState* play, s32 flag);
s32 Flags_GetTreasure(PlayState* play, s32 flag);
void Flags_SetTreasure(PlayState* play, s32 flag);
void Flags_SetAllTreasure(PlayState* play, s32 flag);
s32 Flags_GetAllTreasure(PlayState* play);
s32 Flags_GetClear(PlayState* play, s32 roomNumber);
void Flags_SetClear(PlayState* play, s32 roomNumber);
void Flags_UnsetClear(PlayState* play, s32 roomNumber);
s32 Flags_GetClearTemp(PlayState* play, s32 roomNumber);
void Flags_SetClearTemp(PlayState* play, s32 roomNumber);
void Flags_UnsetClearTemp(PlayState* play, s32 roomNumber);
s32 Flags_GetCollectible(PlayState* play, s32 flag);
void Flags_SetCollectible(PlayState* play, s32 flag);

void TitleCard_InitBossName(GameState* gameState, TitleCardContext* titleCtx, TexturePtr texture, s16 x, s16 y, u8 width, u8 height);

s32 Actor_SetPlayerImpact(PlayState* play, PlayerImpactType type, s32 timer, f32 dist, Vec3f* pos);
f32 Actor_GetPlayerImpact(PlayState* play, f32 range, Vec3f* pos, PlayerImpactType* type);
void* Actor_AddSharedMemoryEntry(PlayState* play, s16 id, void* ptr, size_t size);
void* Actor_FreeSharedMemoryEntry(PlayState* play, s16 id);
void* Actor_FindSharedMemoryEntry(PlayState* play, s16 id);
void Actor_Kill(Actor* actor);
void Actor_SetWorldToHome(Actor* actor);
void Actor_SetFocus(Actor* actor, f32 height);
void Actor_SetWorldRotToShape(Actor* actor);
void Actor_SetShapeRotToWorld(Actor* actor);
void Actor_SetScale(Actor* actor, f32 scale);
void Actor_SetObjectDependency(PlayState* play, Actor* actor);
void Actor_SetMovementScale(s32 scale);
void Actor_UpdatePos(Actor* actor);
void Actor_UpdateVelocityWithGravity(Actor* actor);
void Actor_MoveWithGravity(Actor* actor);
void Actor_UpdateVelocityWithoutGravity(Actor* actor);
void Actor_MoveWithoutGravity(Actor* actor);
void Actor_UpdateVelocityWithoutGravityReverse(Actor* actor);
void Actor_MoveWithoutGravityReverse(Actor* actor);
void Actor_SetSpeeds(Actor* actor, f32 speed);
s16 Actor_WorldYawTowardActor(Actor* actorA, Actor* actorB);
s16 Actor_FocusYawTowardActor(Actor* actorA, Actor* actorB);
s16 Actor_WorldYawTowardPoint(Actor* actor, Vec3f* refPoint);
s16 Actor_WorldPitchTowardActor(Actor* actorA, Actor* actorB);
s16 Actor_FocusPitchTowardActor(Actor* actorA, Actor* actorB);
s16 Actor_WorldPitchTowardPoint(Actor* actor, Vec3f* refPoint);
f32 Actor_WorldDistXYZToActor(Actor* actorA, Actor* actorB);
f32 Actor_WorldDistXYZToPoint(Actor* actor, Vec3f* refPoint);
f32 Actor_WorldDistXZToActor(Actor* actorA, Actor* actorB);
f32 Actor_WorldDistXZToPoint(Actor* actor, Vec3f* refPoint);
void Actor_OffsetOfPointInActorCoords(Actor* actor, Vec3f* offset, Vec3f* point);
f32 Actor_HeightDiff(Actor* actor1, Actor* actor2);
void Actor_SetControlStickData(PlayState* play, Input* input, f32 controlStickMagnitude, s16 controlStickAngle);

void func_800B72F8(DynaPolyActor* dyna, f32 extraPushForce, s16 yRotation);

s32 Actor_ActorBIsFacingActorA(Actor* actorA, Actor* actorB, s16 maxAngleDiff);
s32 Actor_IsFacingPlayer(Actor* actor, s16 angle);
s32 Actor_ActorAIsFacingActorB(Actor* actorA, Actor* actorB, s16 maxAngleDiff);
s32 Actor_IsFacingAndNearPlayer(Actor* actor, f32 range, s16 maxAngleDiff);
s32 Actor_ActorAIsFacingAndNearActorB(Actor* actorA, Actor* actorB, f32 range, s16 maxAngleDiff);

void Actor_GetSlopeDirection(CollisionPoly* floorPoly, Vec3f* slopeNormal, s16* downwardSlopeYaw);
void Actor_UpdateBgCheckInfo(PlayState* play, Actor* actor, f32 wallCheckHeight, f32 wallCheckRadius, f32 ceilingCheckHeight, u32 updBgCheckInfoFlags);
Hilite* Hilite_DrawOpa(Vec3f* object, Vec3f* eye, Vec3f* lightDir, GraphicsContext* gfxCtx);
void func_800B8050(Actor* actor, PlayState* play, s32 flag);
void func_800B8118(Actor* actor, PlayState* play, s32 flag);
PosRot Actor_GetFocus(Actor* actor);
PosRot Actor_GetWorld(Actor* actor);
PosRot Actor_GetWorldPosShapeRot(Actor* actor);

s32 Target_OutsideLeashRange(Actor* actor, Player* player, s32 ignoreLeash);
s32 Actor_TalkOfferAccepted(Actor* actor, GameState* gameState);
s32 Actor_OfferTalkExchange(Actor* actor, PlayState* play, f32 xzRange, f32 yRange, PlayerItemAction exchangeItemAction);
s32 Actor_OfferTalkExchangeEquiCylinder(Actor* actor, PlayState* play, f32 radius, PlayerItemAction exchangeItemAction);
s32 Actor_OfferTalk(Actor* actor, PlayState* play, f32 radius);
s32 Actor_OfferTalkNearColChkInfoCylinder(Actor* actor, PlayState* play);
s32 Actor_TextboxIsClosing(Actor* actor, PlayState* play);
s32 Actor_ChangeFocus(Actor* actor1, PlayState* play, Actor* actor2);

s32 func_800B8718(Actor* actor, GameState* gameState);
s32 func_800B874C(Actor* actor, PlayState* play, f32 xzRange, f32 yRange);
s32 func_800B8804(Actor* actor, PlayState* play, f32 xzRange);
s32 func_800B886C(Actor* actor, PlayState* play);
void Actor_GetScreenPos(PlayState* play, Actor* actor, s16* posX, s16* posY);
bool Actor_OnScreen(PlayState* play, Actor* actor);
s32 Actor_HasParent(Actor* actor, PlayState* play);
s32 Actor_OfferGetItem(Actor* actor, PlayState* play, GetItemId getItemId, f32 xzRange, f32 yRange);
s32 Actor_OfferGetItemNearby(Actor* actor, PlayState* play, GetItemId getItemId);
s32 Actor_OfferCarry(Actor* actor, PlayState* play);
s32 Actor_OfferGetItemFar(Actor* actor, PlayState* play, GetItemId getItemId);
s32 Actor_HasNoParent(Actor* actor, PlayState* play);
void func_800B8C20(Actor* actorA, Actor* actorB, PlayState* play);
void Actor_SetClosestSecretDistance(Actor* actor, PlayState* play);
s32 Actor_HasRider(PlayState* play, Actor* horse);
s32 Actor_SetRideActor(PlayState* play, Actor* horse, s32 mountSide);
s32 Actor_HasNoRider(PlayState* play, Actor* horse);

void Actor_PlaySfx(Actor* actor, u16 sfxId);
void Actor_PlaySfx_SurfaceBomb(PlayState* play, Actor* actor);
void Actor_PlaySfx_FlaggedCentered1(Actor* actor, u16 sfxId);
void Actor_PlaySfx_FlaggedCentered2(Actor* actor, u16 sfxId);
void Actor_PlaySfx_FlaggedCentered3(Actor* actor, u16 sfxId);
void Actor_PlaySfx_Flagged(Actor* actor, u16 sfxId);
void Actor_PlaySfx_FlaggedTimer(Actor* actor, s32 timer);
void Actor_PlaySeq_FlaggedKamaroDance(Actor* actor);
void Actor_PlaySeq_FlaggedMusicBoxHouse(Actor* actor);
s32 func_800B90AC(PlayState* play, Actor* actor, CollisionPoly* polygon, s32 bgId, Vec3f* arg4);
void Actor_DeactivateLens(PlayState* play);
void Actor_InitHalfDaysBit(ActorContext* actorCtx);
void Actor_InitContext(PlayState* play, ActorContext* actorCtx, ActorEntry* actorEntry);
void Actor_UpdateAll(PlayState* play, ActorContext* actorCtx);
s32 Actor_AddToLensActors(PlayState* play, Actor* actor);
void Actor_DrawAll(PlayState* play, ActorContext* actorCtx);
void Actor_KillAllWithMissingObject(PlayState* play, ActorContext* actorCtx);
void func_800BA798(PlayState* play, ActorContext* actorCtx);
void Actor_CleanupContext(ActorContext* actorCtx, PlayState* play);
Actor* Actor_Spawn(ActorContext* actorCtx, PlayState* play, s16 actorId, f32 posX, f32 posY, f32 posZ, s16 rotX, s16 rotY, s16 rotZ, s32 params);
Actor* Actor_SpawnAsChildAndCutscene(ActorContext* actorCtx, PlayState* play, s16 index, f32 x, f32 y, f32 z, s16 rotX, s16 rotY, s16 rotZ, s32 params, u32 csId, u32 halfDaysBits, Actor* parent);
Actor* Actor_SpawnAsChild(ActorContext* actorCtx, Actor* parent, PlayState* play, s16 actorId, f32 posX, f32 posY, f32 posZ, s16 rotX, s16 rotY, s16 rotZ, s32 params);
void Actor_SpawnTransitionActors(PlayState* play, ActorContext* actorCtx);
void Enemy_StartFinishingBlow(PlayState* play, Actor* actor);
s16 func_800BBAC0(BlinkInfo* info, s16 arg1, s16 arg2, s16 arg3);
s16 func_800BBB74(BlinkInfo* info, s16 arg1, s16 arg2, s16 arg3);
s16 func_800BBC20(BlinkInfo* info, s16 arg1, s16 arg2, s16 arg3);
void Actor_SpawnBodyParts(Actor* actor, PlayState* play, s32 partParams, Gfx** dList);
void Actor_SpawnFloorDustRing(PlayState* play, Actor* actor, Vec3f* posXZ, f32 radius, s32 countMinusOne, f32 randAccelWeight, s16 scale, s16 scaleStep, u8 useLighting);
void func_800BBFB0(PlayState* play, Vec3f* position, f32 arg2, s32 arg3, s16 arg4, s16 scaleStep, u8 arg6);
void Actor_ChangeCategory(PlayState* play, ActorContext* actorCtx, Actor* actor, u8 actorCategory);
u32 Actor_GetArrowDmgFlags(s32 params);
Actor* func_800BC270(PlayState* play, Actor* actor, f32 distance, u32 dmgFlags);
Actor* func_800BC444(PlayState* play, Actor* actor, f32 distance);
s16 Actor_TestFloorInDirection(Actor* actor, PlayState* play, f32 distance, s16 angle);
s32 Actor_IsTargeted(PlayState* play, Actor* actor);
s32 Actor_OtherIsTargeted(PlayState* play, Actor* actor);
void func_800BC620(Vec3f* pos, Vec3f* scale, u8 alpha, PlayState* play);
void Actor_RequestQuake(PlayState* play, s16 y, s16 duration);
void Actor_RequestQuakeWithSpeed(PlayState* play, s16 y, s16 duration, s16 speed);
void Actor_RequestQuakeAndRumble(Actor* actor, PlayState* play, s16 quakeY, s16 quakeDuration);
void Actor_DrawDoorLock(PlayState* play, s32 frame, s32 type);
void Actor_SetColorFilter(Actor* actor, u16 colorFlag, u16 colorIntensityMax, u16 bufFlag, u16 duration);
Hilite* func_800BCBF4(Vec3f* arg0, PlayState* play);
Hilite* func_800BCC68(Vec3f* arg0, PlayState* play);
void Actor_GetClosestPosOnPath(Vec3s* points, s32 numPoints, Vec3f* srcPos, Vec3f* dstPos, s32 isPathLoop);
s32 Npc_UpdateTalking(PlayState* play, Actor* actor, s16* talkState, f32 interactRange, NpcGetTextIdFunc getTextId, NpcUpdateTalkStateFunc updateTalkState);
void Npc_TrackPoint(Actor* actor, NpcInteractInfo* interactInfo, s16 presetIndex, s16 trackingMode);
void func_800BD9E0(PlayState* play, SkelAnime* skelAnime, OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, Actor* actor, s16 alpha);
void func_800BDAA0(PlayState* play, SkelAnime* skelAnime, OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw, Actor* actor, s16 alpha);
void Actor_ChangeAnimationByInfo(SkelAnime* skelAnime, AnimationInfo* animInfo, s32 animIndex);
void Actor_Noop(Actor* actor, PlayState* play);

void Gfx_DrawDListOpa(PlayState* play, Gfx* dList);
void Gfx_DrawDListXlu(PlayState* play, Gfx* dList);

Actor* Actor_FindNearby(PlayState* play, Actor* inActor, s16 actorId, u8 actorCategory, f32 distance);
s32 func_800BE184(PlayState* play, Actor* actor, f32 xzDist, s16 arg3, s16 arg4, s16 arg5);
u8 Actor_ApplyDamage(Actor* actor);
void Actor_SetDropFlag(Actor* actor, ColliderInfo* colInfo);
void Actor_SetDropFlagJntSph(Actor* actor, ColliderJntSph* jntSphere);
void func_800BE33C(Vec3f* arg0, Vec3f* arg1, Vec3s* dst, s32 arg3);
void func_800BE3D0(Actor* actor, s16 angle, Vec3s* arg2);
void func_800BE504(Actor* actor, ColliderCylinder* collider);
void func_800BE568(Actor* actor, ColliderSphere* collider);
void func_800BE5CC(Actor* actor, ColliderJntSph* collider, s32 colliderIndex);
s32 Actor_IsSmallChest(struct EnBox* chest);
void Actor_DrawDamageEffects(PlayState* play, Actor* actor, Vec3f bodyPartsPos[], s16 bodyPartsCount, f32 effectScale, f32 frozenSteamScale, f32 effectAlpha, u8 type);
void Actor_SpawnIceEffects(PlayState* play, Actor* actor, Vec3f bodyPartsPos[], s32 bodyPartsCount, s32 effectsPerBodyPart, f32 scale, f32 scaleRange);

void DynaPolyActor_UpdateCarriedActorPos(CollisionContext* colCtx, s32 bgId, Actor* carriedActor);
void DynaPolyActor_UpdateCarriedActorRotY(CollisionContext* colCtx, s32 bgId, Actor* carriedActor);
void DynaPolyActor_AttachCarriedActor(CollisionContext* colCtx, Actor* carriedActor, s32 bgId);
u32 DynaPolyActor_TransformCarriedActor(CollisionContext* colCtx, s32 bgId, Actor* carriedActor);
void DynaPolyActor_Init(DynaPolyActor* dynaActor, s32 transformFlags);
void DynaPolyActor_LoadMesh(PlayState* play, DynaPolyActor* dynaActor, CollisionHeader* meshHeader);
void DynaPolyActor_UnsetAllInteractFlags(DynaPolyActor* dynaActor);
void DynaPolyActor_SetActorOnTop(DynaPolyActor* dynaActor);
void DynaPolyActor_SetPlayerOnTop(DynaPolyActor* dynaActor);
void DynaPoly_SetPlayerOnTop(CollisionContext* colCtx, s32 bgId);
void DynaPolyActor_SetPlayerAbove(DynaPolyActor* dynaActor);
void DynaPoly_SetPlayerAbove(CollisionContext* colCtx, s32 bgId);
void DynaPolyActor_SetActorOnSwitch(DynaPolyActor* dynaActor);
void DynaPolyActor_SetActorOnHeavySwitch(DynaPolyActor* dynaActor);
s32 DynaPolyActor_IsActorOnTop(DynaPolyActor* dynaActor);
s32 DynaPolyActor_IsPlayerOnTop(DynaPolyActor* dynaActor);
s32 DynaPolyActor_IsPlayerAbove(DynaPolyActor* dynaActor);
s32 DynaPolyActor_IsSwitchPressed(DynaPolyActor* dynaActor);
s32 DynaPolyActor_IsHeavySwitchPressed(DynaPolyActor* dynaActor);
s32 DynaPolyActor_ValidateMove(PlayState* play, DynaPolyActor* dynaActor, s16 startRadius, s16 endRadius, s16 startHeight);

void Actor_ContinueText(PlayState* play, Actor* actor, u16 textId);
s32 Flags_GetEventChkInf(s32 flag);
void Flags_SetEventChkInf(s32 flag);
s32 Flags_GetInfTable(s32 flag);
void Flags_SetInfTable(s32 flag);
s32 Actor_TrackNone(Vec3s* headRot, Vec3s* torsoRot);
s32 Actor_TrackPoint(Actor* actor, Vec3f* target, Vec3s* headRot, Vec3s* torsoRot);
s32 Actor_TrackPlayerSetFocusHeight(PlayState* play, Actor* actor, Vec3s* headRot, Vec3s* torsoRot, f32 focusHeight);
s32 Actor_TrackPlayer(PlayState* play, Actor* actor, Vec3s* headRot, Vec3s* torsoRot, Vec3f focusPos);

void GetItem_Draw(PlayState* play, s16 drawId);

u16 QuestHint_GetTatlTextId(PlayState* play);

// void func_8010A760(void);
// void func_8010A7CC(void);
// void func_8010A814(void);
// void func_8010A85C(void);
// void func_8010A8A4(void);
// void func_8010A8EC(void);
// void func_8010A990(void);
// void func_8010AA54(void);
// void func_8010AB30(void);
// void func_8010AB94(void);
// void func_8010AC00(void);
// void func_8010AD24(void);
// void func_8010ADD4(void);
// void func_8010AE48(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5);
// UNK_TYPE4 func_8010AECC(UNK_TYPE4 param_1, s32 param_2, s32* param_3);
// void func_8010AF20(void);
// void func_8010AF6C(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5);
// void func_8010AF94(void);
// void func_8010AFE0(void);
// void func_8010B010(void);
// void func_8010B06C(void);
// void func_8010B0B4(void);
// void func_8010B0DC(void);
// void func_8010B108(void);
// void func_8010B140(void);
// void func_8010B180(void);
// void func_8010B1BC(void);
// void func_8010B22C(void);
// void func_8010B284(void);
// void func_8010B2C0(void);
// void func_8010B300(void);
// void func_8010B434(void);
// void func_8010B4A4(void);
// void func_8010B520(void);
// void func_8010B664(void);
// void func_8010B7A8(void);
// void func_8010B828(void);
// void func_8010B878(void);
// void func_8010B8E4(void);
// void func_8010BB0C(void);
// void func_8010BB6C(void);
// void func_8010BBCC(void);
// void func_8010BC28(void);
// void func_8010BC7C(void);
// void func_8010BD48(void);
// void func_8010BD90(void);
// void func_8010BDDC(void);
// void func_8010BE78(void);
// void func_8010BEBC(void);
// void func_8010BEF0(void);
// void func_8010BF24(void);
s32 func_8010BF58(Actor* actor, PlayState* play, void* param_3, UNK_PTR param_4, s32* param_5);

f32 OLib_Vec3fDist(Vec3f* a, Vec3f* b);
f32 OLib_Vec3fDistOutDiff(Vec3f* a, Vec3f* b, Vec3f* dest);
f32 OLib_Vec3fDistXZ(Vec3f* a, Vec3f* b);
f32 OLib_ClampMinDist(f32 val, f32 min);
f32 OLib_ClampMaxDist(f32 val, f32 max);
Vec3f OLib_Vec3fDistNormalize(Vec3f* a, Vec3f* b);
Vec3f OLib_VecSphToVec3f(VecSph* sph);
Vec3f OLib_VecGeoToVec3f(VecGeo* geo);
VecSph OLib_Vec3fToVecSph(Vec3f* vec);
VecGeo OLib_Vec3fToVecGeo(Vec3f* vec);
VecSph OLib_Vec3fDiffToVecSph(Vec3f* a, Vec3f* b);
VecGeo OLib_Vec3fDiffToVecGeo(Vec3f* a, Vec3f* b);
Vec3f OLib_AddVecGeoToVec3f(Vec3f* a, VecGeo* geo);
Vec3f OLib_Vec3fDiffRad(Vec3f* a, Vec3f* b);
Vec3f OLib_Vec3fDiffDegF(Vec3f* a, Vec3f* b);
Vec3s OLib_Vec3fDiffBinAng(Vec3f* a, Vec3f* b);
void OLib_Vec3fDiff(PosRot* a, Vec3f* b, Vec3f* dest, s16 mode);
void OLib_Vec3fAdd(PosRot* a, Vec3f* b, Vec3f* dest, s16 mode);

void Room_Noop(PlayState* play, Room* room, Input* input, s32 arg3);
void Room_Init(PlayState* play, RoomContext* roomCtx);
size_t Room_AllocateAndLoad(PlayState* play, RoomContext* roomCtx);
s32 Room_StartRoomTransition(PlayState* play, RoomContext* roomCtx, s32 index);
s32 Room_HandleLoadCallbacks(PlayState* play, RoomContext* roomCtx);
void Room_Draw(PlayState* play, Room* room, u32 flags);

void func_8012EBF8(PlayState* play, RoomContext* roomCtx);
s32 Inventory_GetBtnBItem(PlayState* play);
void Inventory_ChangeEquipment(s16 value);
u8 Inventory_DeleteEquipment(PlayState* play, s16 equipment);
void Inventory_ChangeUpgrade(s16 upgrade, u32 value);
s32 Inventory_IsMapVisible(s16 sceneId);
void Inventory_SetWorldMapCloudVisibility(s16 tingleIndex);
void Inventory_SaveDekuPlaygroundHighScore(s16 timerId);
void Inventory_IncrementSkullTokenCount(s16 sceneIndex);
s16 Inventory_GetSkullTokenCount(s16 sceneIndex);
void Inventory_SaveLotteryCodeGuess(PlayState* play);

void Play_SetMotionBlurAlpha(u32 alpha);
void Play_EnableMotionBlur(u32 alpha);
void Play_DisableMotionBlur(void);
void Play_SetMotionBlurPriorityAlpha(u32 alpha);
void Play_EnableMotionBlurPriority(u32 alpha);
void Play_DisableMotionBlurPriority(void);
void Play_TriggerPictoPhoto(void);
Gfx* Play_SetFog(PlayState* this, Gfx* gfx);
void Play_Destroy(GameState* thisx);
void Play_CompressI8ToI5(void* srcI8, void* destI5, size_t size);
void Play_DecompressI5ToI8(void* srcI5, void* destI8, size_t size);
void Play_Update(PlayState* this);
void Play_Draw(PlayState* this);
void Play_Main(GameState* thisx);
bool Play_InCsMode(PlayState* this);
f32 Play_GetFloorSurfaceImpl(PlayState* this, MtxF* mtx, CollisionPoly** poly, s32* bgId, Vec3f* pos);
void Play_GetFloorSurface(PlayState* this, MtxF* mtx, Vec3f* pos);
void* Play_LoadFile(PlayState* this, RomFile* entry);
void Play_InitEnvironment(PlayState* this, s16 skyboxId);
void Play_GetScreenPos(PlayState* this, Vec3f* worldPos, Vec3f* screenPos);
s16 Play_CreateSubCamera(PlayState* this);
s16 Play_GetActiveCamId(PlayState* this);
s32 Play_ChangeCameraStatus(PlayState* this, s16 camId, s16 status);
void Play_ClearCamera(PlayState* this, s16 camId);
Camera* Play_GetCamera(PlayState* this, s16 camId);
s32 Play_SetCameraAtEye(PlayState* this, s16 camId, Vec3f* at, Vec3f* eye);
s32 Play_SetCameraAtEyeUp(PlayState* this, s16 camId, Vec3f* at, Vec3f* eye, Vec3f* up);
s32 Play_SetCameraFov(PlayState* this, s16 camId, f32 fov);
s32 Play_SetCameraRoll(PlayState* this, s16 camId, s16 roll);
void Play_CopyCamera(PlayState* this, s16 destCamId, s16 srcCamId);
s32 func_80169A50(PlayState* this, s16 camId, Player* player, s16 setting);
s32 Play_ChangeCameraSetting(PlayState* this, s16 camId, s16 setting);
void func_80169AFC(PlayState* this, s16 camId, s16 timer);
u16 Play_GetActorCsCamSetting(PlayState* this, s32 csCamDataIndex);
Vec3s* Play_GetActorCsCamFuncData(PlayState* this, s32 csCamDataIndex);
s16 Play_GetOriginalSceneId(s16 sceneId);
void Play_SaveCycleSceneFlags(GameState* thisx);
void Play_SetRespawnData(GameState* thisx, s32 respawnMode, u16 entrance, s32 roomIndex, s32 playerParams, Vec3f* pos, s16 yaw);
void Play_SetupRespawnPoint(GameState* thisx, s32 respawnMode, s32 playerParams);
void func_80169EFC(GameState* thisx);
void func_80169F78(GameState* thisx);
void func_80169FDC(GameState* thisx);
s32 Play_CamIsNotFixed(GameState* thisx);
s32 FrameAdvance_IsEnabled(GameState* thisx);
s32 func_8016A02C(GameState* thisx, Actor* actor, s16* yaw);
s32 Play_IsUnderwater(PlayState* this, Vec3f* pos);
s32 Play_IsDebugCamEnabled(void);
void Play_AssignPlayerCsIdsFromScene(GameState* thisx, s32 spawnCsId);
void Play_FillScreen(GameState* thisx, s16 fillScreenOn, u8 red, u8 green, u8 blue, u8 alpha);
void Play_Init(GameState* thisx);

void Graph_FaultClient(void);
void Graph_InitTHGA(TwoHeadGfxArena* arena, Gfx* buffer, s32 size);
void Graph_SetNextGfxPool(GraphicsContext* gfxCtx);
GameStateOverlay* Graph_GetNextGameState(GameState* gameState);
uintptr_t Graph_FaultAddrConv(uintptr_t address, void* param);
void Graph_Init(GraphicsContext* gfxCtx);
void Graph_Destroy(GraphicsContext* gfxCtx);
void Graph_TaskSet00(GraphicsContext* gfxCtx, GameState* gameState);
void Graph_UpdateGame(GameState* gameState);
void Graph_ExecuteAndDraw(GraphicsContext* gfxCtx, GameState* gameState);
void Graph_Update(GraphicsContext* gfxCtx, GameState* gameState);
void Graph_ThreadEntry(void* arg);
Gfx* Gfx_Open(Gfx* gfx);
Gfx* Gfx_Close(Gfx* gfx, Gfx* dst);
void* Gfx_Alloc(Gfx** gfxP, size_t size);

f32 Math3D_Normalize(Vec3f* vec);
s32 Math3D_PlaneVsLineSegClosestPoint(f32 planeAA, f32 planeAB, f32 planeAC, f32 planeADist, f32 planeBA, f32 planeBB, f32 planeBC, f32 planeBDist, Vec3f* linePointA, Vec3f* linePointB, Vec3f* closestPoint);
s32 func_80179798(Vec3f* param_1, Vec3f* param_2, Vec3f* param_3, Vec3f* param_4, Vec3f* param_5, Vec3f* param_6);
f32 func_80179A44(Vec3f* arg0, PosRot* arg1, Vec3f* arg2);
void func_80179B34(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32* arg7, f32* arg8);
// UNK_TYPE4 func_80179B94(f32 fParm1, f32 fParm2, f32 fParm5, f32 param_4, f32 param_5, f32 param_6, f32 param_7, f32 param_8, Vec3f* param_9);
// void func_80179D74(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5, UNK_TYPE4 param_6, UNK_TYPE4 param_7, UNK_TYPE4 param_8, UNK_TYPE4 param_9, UNK_TYPE4 param_10);
void Math3D_ScaleAndAdd(Vec3f* a, Vec3f* b, f32 scale, Vec3f* dst);
void Math3D_Lerp(Vec3f* a, Vec3f* b, f32 t, Vec3f* dst);
f32 Math3D_Parallel(Vec3f* a, Vec3f* b);
s32 Math3D_AngleBetweenVectors(Vec3f* a, Vec3f* b, f32* angle);
void func_80179F64(Vec3f* param_1, Vec3f* param_2, Vec3f* param_3);
s32 Math3D_XZBoundCheck(f32 xMin, f32 xMax, f32 zMin, f32 zMax, f32 x, f32 z);
// void func_8017A09C(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5, UNK_TYPE4 param_6);
// void func_8017A1D0(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5, UNK_TYPE4 param_6);
s32 func_8017A304(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 z, f32 x, f32 chkDist);
// UNK_TYPE4 func_8017A438(Vec3f* pfParm1, Vec3f* pfParm2, Vec3f* pfParm3, Vec3f* pfParm4, f32 param_5);
f32 Math3D_XZLengthSquared(f32 x, f32 z);
f32 Math3D_XZLength(f32 x, f32 z);
f32 Math3D_XZDistanceSquared(f32 x1, f32 x2, f32 z1, f32 z2);
f32 Math3D_XZDistance(f32 x1, f32 x2, f32 z1, f32 z2);
f32 Math3D_LengthSquared(Vec3f* vec);
f32 Math3D_Vec3fMagnitude(Vec3f* vec);
f32 Math3D_Vec3fDistSq(Vec3f* a, Vec3f* b);
f32 Math3D_Distance(Vec3f* a, Vec3f* b);
f32 Math3D_DistanceS(Vec3s* s, Vec3f* f);
f32 func_8017A7B8(f32* param_1, f32* param_2, f32 param_3, f32 param_4);
f32 func_8017A7F8(f32* param_1, f32* param_2, f32 param_3, f32 param_4);
f32 func_8017A838(f32* param_1, f32* param_2, f32 param_3, f32 param_4);
void Math3D_CrossProduct(Vec3f* a, Vec3f* b, Vec3f* res);
void Math3D_SurfaceNorm(Vec3f* a, Vec3f* b, Vec3f* c, Vec3f* res);
u32 Math3D_PointRelativeToCubeFaces(Vec3f* param_1, Vec3f* param_2, Vec3f* param_3);
u32 Math3D_PointRelativeToCubeEdges(Vec3f* param_1, Vec3f* param_2, Vec3f* param_3);
u32 Math3D_PointRelativeToCubeVertices(Vec3f* param_1, Vec3f* param_2, Vec3f* param_3);
s32 Math3D_LineVsCube(Vec3f* min, Vec3f* max, Vec3f* a, Vec3f* b);
// void func_8017B68C(void);
void func_8017B7F8(Vec3f* arg0, s16 arg1, f32* arg2, f32* arg3, f32* arg4);
void Math3D_UnitNormalVector(Vec3f* a, Vec3f* b, Vec3f* c, f32* normX, f32* normY, f32* normZ, f32* param_7);
f32 Math3D_SignedDistanceFromPlane(f32 normX, f32 normY, f32 normZ, f32 d, Vec3f* position);
// void func_8017B9D8(void);
f32 Math3D_UDistPlaneToPos(f32 normX, f32 normY, f32 normZ, f32 d, Vec3f* position);
f32 Math3D_DistPlaneToPos(f32 normX, f32 normY, f32 normZ, f32 d, Vec3f* position);
s32 Math3D_TriChkPointParaYDist(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 y, f32 z, f32 unk, f32 chkDist, f32 ny);
// void func_8017BD98(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5, UNK_TYPE4 param_6, UNK_TYPE4 param_7);
// void func_8017BDE0(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5);
s32 Math3D_TriChkPointParaYIntersectDist(Vec3f* a, Vec3f* b, Vec3f* c, f32 nx, f32 ny, f32 nz, f32 dist, f32 z, f32 x, f32* yIntersect, f32 chkDist);
s32 Math3D_TriChkPointParaYIntersectInsideTri(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 nx, f32 ny, f32 nz, f32 originDist, f32 z, f32 x, f32* yIntersect, f32 chkDist);
// void func_8017BF8C(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5, UNK_TYPE4 param_6);
s32 Math3D_TriChkLineSegParaYIntersect(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 nx, f32 ny, f32 nz, f32 originDist, f32 z, f32 x, f32* yIntersect, f32 y0, f32 y1);
// void func_8017C17C(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5, UNK_TYPE4 param_6, UNK_TYPE4 param_7);
// void func_8017C1F0(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5, UNK_TYPE4 param_6, UNK_TYPE4 param_7, UNK_TYPE4 param_8);
s32 Math3D_TriChkPointParaYIntersectInsideTri2(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 nx, f32 ny, f32 nz, f32 originDist, f32 z, f32 x, f32* yIntersect, f32 chkDist);
s32 Math3D_TriChkPointParaXDist(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 y, f32 z, f32 unk, f32 chkDist, f32 nx);
// void func_8017C808(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5, UNK_TYPE4 param_6, UNK_TYPE4 param_7);
s32 Math3D_TriChkPointParaXIntersect(Vec3f* a, Vec3f* b, Vec3f* c, f32 nx, f32 ny, f32 nz, f32 dist, f32 y, f32 z, f32* xIntersect);
// void func_8017C904(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5, UNK_TYPE4 param_6);
s32 Math3D_TriChkLineSegParaXIntersect(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 nx, f32 ny, f32 nz, f32 originDist, f32 y, f32 z, f32* xIntersect, f32 x0, f32 x1);
// void func_8017CB08(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5, UNK_TYPE4 param_6, UNK_TYPE4 param_7);
s32 Math3D_TriChkLineSegParaZDist(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 y, f32 z, f32 unk, f32 chkDist, f32 nz);
// void func_8017CEA8(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5, UNK_TYPE4 param_6, UNK_TYPE4 param_7);
s32 Math3D_TriChkPointParaZIntersect(Vec3f* a, Vec3f* b, Vec3f* c, f32 nx, f32 ny, f32 nz, f32 dist, f32 x, f32 y, f32* zIntersect);
// void func_8017CFA4(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5, UNK_TYPE4 param_6);
s32 Math3D_TriChkLineSegParaZIntersect(Vec3f* v0, Vec3f* v1, Vec3f* v2, f32 nx, f32 ny, f32 nz, f32 originDist, f32 x, f32 y, f32* zIntersect, f32 z0, f32 z1);
// void func_8017D1AC(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5, UNK_TYPE4 param_6, UNK_TYPE4 param_7);
// void func_8017D220(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5);
s32 Math3D_LineSegVsPlane(f32 nx, f32 ny, f32 nz, f32 originDist, Vec3f* linePointA, Vec3f* linePointB, Vec3f* intersect, s32 fromFront);
// void func_8017D404(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5, UNK_TYPE4 param_6, UNK_TYPE4 param_7, UNK_TYPE4 param_8, UNK_TYPE4 param_9, UNK_TYPE4 param_10, UNK_TYPE4 param_11);
void Math3D_TriSetCoords(TriNorm* tri, Vec3f* pointA, Vec3f* pointB, Vec3f* pointC);
u32 Math3D_IsPointInSphere(Sphere16* sphere, Vec3f* point);
s32 Math3D_PointDistToLine2D(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32* arg6, f32* arg7, f32* arg8); // returns boolean
s32 func_8017D7C0(f32 x0, f32 y0, f32 x1, f32 y1, f32 x2, f32 y2, f32* lineLenSq);
// void func_8017D814(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5);
// void func_8017D91C(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5);
// void func_8017DA24(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5);
s32 Math3D_LineVsSph(Sphere16* sphere, LineSegment* line);
void func_8017DD34(Sphere16* sphere, TriNorm* tri, Vec3f* pfParm3);
s32 Math3D_ColSphereTri(Sphere16* sphere, TriNorm* tri, Vec3f* uParm3);
// void func_8017E294(void);
UNK_TYPE func_8017E350(UNK_PTR, Vec3f*, Vec3f*, Vec3f*, Vec3f*);
s32 Math3D_ColCylinderTri(Cylinder16* cylinder, TriNorm* tri, Vec3f* pzParm3);
// void func_8017F1A0(void);
s32 Math3D_SphVsSph(Sphere16* sphere1, Sphere16* sphere2);
s32 Math3D_ColSphereSphereIntersect(Sphere16* sphere1, Sphere16* sphere2, f32* intersectAmount);
s32 Math3D_ColSphereSphereIntersectAndDistance(Sphere16* sphere1, Sphere16* sphere2, f32* intersectAmount, f32* dist);
s32 Math3D_ColSphereCylinderDistance(Sphere16* sphere, Cylinder16* cylinder, f32* dist);
s32 Math3D_ColSphereCylinderDistanceAndAmount(Sphere16* sphere, Cylinder16* cylinder, f32* dist, f32* intersectAmount);
s32 Math3D_ColCylinderCylinderAmount(Cylinder16* cylinder1, Cylinder16* cylinder2, f32* intersectAmount);
s32 Math3D_ColCylinderCylinderAmountAndDistance(Cylinder16* cylinder1, Cylinder16* cylinder2, f32* intersectAmount, f32* dist);
s32 Math3d_ColTriTri(TriNorm* tri1, TriNorm* tri2, Vec3f* uParm3);
s32 Math3D_XZInSphere(Sphere16* sphere, f32 x, f32 z);
s32 Math3D_XYInSphere(Sphere16* sphere, f32 x, f32 y);
s32 Math3D_YZInSphere(Sphere16* sphere, f32 y, f32 z);
// void func_8017FB1C(UNK_TYPE1 param_1, UNK_TYPE1 param_2, UNK_TYPE1 param_3, UNK_TYPE1 param_4, UNK_TYPE4 param_5, UNK_TYPE4 param_6, UNK_TYPE4 param_7, UNK_TYPE4 param_8, UNK_TYPE4 param_9, UNK_TYPE4 param_10, UNK_TYPE4 param_11);
// void func_8017FD44(void);

void func_80183070(void);

AudioTask* AudioThread_Update(void);
void AudioThread_QueueCmdF32(u32 opArgs, f32 data);
void AudioThread_QueueCmdS32(u32 opArgs, s32 data);
void AudioThread_QueueCmdS8(u32 opArgs, s8 data);
void AudioThread_QueueCmdU16(u32 opArgs, u16 data);
s32 AudioThread_ScheduleProcessCmds(void);
u32 AudioThread_GetExternalLoadQueueMsg(u32* retMsg);
u8* AudioThread_GetFontsForSequence(s32 seqId, u32* outNumFonts);
s32 func_80193C5C(void);
s32 AudioThread_ResetAudioHeap(s32 specId);
void AudioThread_PreNMIInternal(void);
s32 AudioThread_GetEnabledNotesCount(void);
u32 AudioThread_NextRandom(void);
void AudioThread_InitMesgQueues(void);

void Audio_InvalDCache(void* buf, size_t size);
void Audio_WritebackDCache(void* buf, size_t size);

void func_8019AE40(s32 param_1, s32 param_2, u32 param_3, s32 param_4);
void func_8019AEC0(UNK_PTR param_1, UNK_PTR param_2);

void Audio_Init(void);
void Audio_InitSound(void);
void Audio_Update(void);
void Audio_ResetForAudioHeapStep3(void);
void Audio_ResetForAudioHeapStep2(void);
void Audio_ResetForAudioHeapStep1(s32 specId);
void Audio_PreNMI(void);

void Regs_InitData(PlayState* play);

#endif
