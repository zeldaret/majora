#ifndef Z64_CURVE_H
#define Z64_CURVE_H

#include "PR/ultratypes.h"
#include "z64math.h"

struct GlobalContext;

typedef struct {
    /* 0x0 */ u16 flags;         // Only the bottom two bytes are used, although others are set in objects
    /* 0x2 */ s16 abscissa;      // knot input value
    /* 0x4 */ s16 leftGradient;  // left derivative at the point
    /* 0x6 */ s16 rightGradient; // right derivative at the point
    /* 0x8 */ f32 ordinate;      // output value
} CurveInterpKnot; // size = 0xC

typedef struct {
    /* 0x0 */ u8* maxIndex;
    /* 0x4 */ CurveInterpKnot* CurveInterpKnot;
    /* 0x8 */ s16* copyValues;
    /* 0xC */ s16 unk_0C; // Set but not used
    /* 0xE */ s16 unk10;
} CurveAnimationHeader; // size 0x10

typedef struct {
    /* 0x0 */ u8 child;
    /* 0x1 */ u8 sibling;
    /* 0x4 */ Gfx* dList[2];
} SkelCurveLimb; // size >= 0x8

typedef struct {
    /* 0x0 */ SkelCurveLimb** limbs;
    /* 0x4 */ u8 limbCount;
} CurveSkeletonHeader; // size = 0x8

typedef struct {
    /* 0x0 */ Vec3s scale;
    /* 0x6 */ Vec3s rot;
    /* 0xC */ Vec3s pos;
} LimbTransform; // size = 0x12

typedef struct {
    /* 0x00 */ u8 limbCount;
    /* 0x04 */ SkelCurveLimb** skeleton;
    /* 0x08 */ CurveAnimationHeader* animation;
    /* 0x0C */ f32 unk_0C; // set but not used
    /* 0x10 */ f32 endFrame;
    /* 0x14 */ f32 playSpeed;
    /* 0x18 */ f32 curFrame;
    /* 0x1C */ LimbTransform* transforms;
} SkelCurve; // size = 0x20

typedef s32 (*OverrideCurveLimbDraw)(struct GlobalContext* globalCtx, SkelCurve* skelCuve, s32 limbIndex,
                                     struct Actor* actor);
typedef void (*PostCurveLimbDraw)(struct GlobalContext* globalCtx, SkelCurve* skelCuve, s32 limbIndex,
                                  struct Actor* actor);



f32 Curve_Interpolate(f32 x, CurveInterpKnot* transData, s32 refIdx);

void SkelCurve_Clear(SkelCurve* skelCurve);
s32 SkelCurve_Init(struct GlobalContext* globalCtx, SkelCurve* skelCurve, CurveSkeletonHeader* limbListSeg, CurveAnimationHeader* transUpdIdx);
void SkelCurve_Destroy(struct GlobalContext* globalCtx, SkelCurve* skelCurve);
void SkelCurve_SetAnim(SkelCurve* skelCurve, CurveAnimationHeader* transUpdIdx, f32 arg2, f32 endFrame, f32 curFrame, f32 playSpeed);
s32 SkelCurve_Update(struct GlobalContext* globalCtx, SkelCurve* skelCurve);
void SkelCurve_Draw(Actor* actor, struct GlobalContext* globalCtx, SkelCurve* skelCurve, OverrideCurveLimbDraw overrideLimbDraw, PostCurveLimbDraw postLimbDraw, s32 lod, Actor* thisx);


// ZAPD compatibility typedefs
// TODO: Remove when ZAPD adds support for them
typedef CurveInterpKnot TransformData;
typedef CurveAnimationHeader TransformUpdateIndex;
typedef CurveSkeletonHeader SkelCurveLimbList;

#endif // Z64_CURVE_H
