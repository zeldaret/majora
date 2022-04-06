/**
 * File: sys_matrix.c
 * Description: Matrix system that mostly uses a matrix stack.
 *
 * @note The RSP matrix format (and hence the `MtxF` format) is column-major: vectors are presumed to be row vectors,
 * and matrices as a column of row vectors. This means that, for example, a translation matrix
 *
 * \f[
 *  \begin{pmatrix}
 *      1 & 0 & 0 & x \\
 *      0 & 1 & 0 & y \\
 *      0 & 0 & 1 & z \\
 *      0 & 0 & 0 & 1
 *  \end{pmatrix}
 * \f]
 *
 * will be stored as
 * { { 1, 0, 0, 0 }, { 0, 1, 0, 0 }, { 0, 0, 1, 0 }, { x, y, z, 1 }, }
 *
 * As such, we label the elements in column-major order so we can follow the same conventions for multiplying matrices
 * as the rest of the world, i.e. that \f[ [AB]_{ij} = \sum_k A_{ik} B_{kj} \f].
 * 
 * Throughout this file, `mode` indicates whether to multiply the matrix on top of the stack by the new construction
 * (APPLY), or to just overwrite it (NEW).
 */
#include "global.h"

// clang-format off
Mtx gIdentityMtx = gdSPDefMtx(
    1.0f, 0.0f, 0.0f, 0.0f,
    0.0f, 1.0f, 0.0f, 0.0f,
    0.0f, 0.0f, 1.0f, 0.0f,
    0.0f, 0.0f, 0.0f, 1.0f
);
// clang-format on

MtxF gIdentityMtxF = { {
    { 1.0f, 0.0f, 0.0f, 0.0f },
    { 0.0f, 1.0f, 0.0f, 0.0f },
    { 0.0f, 0.0f, 1.0f, 0.0f },
    { 0.0f, 0.0f, 0.0f, 1.0f },
} };

MtxF* sMatrixStack;   // original name: "Matrix_stack"
MtxF* sCurrentMatrix; // original name: "Matrix_now"

#define MATRIX_STACK_SIZE 20

/* Stack operations */

/**
 * @brief Create the matrix stack and set the pointer to the top of it.
 *
 * @remark original name: "new_Matrix"
 */
void Matrix_Init(GameState* gameState) {
    sMatrixStack = THA_AllocEndAlign16(&gameState->heap, MATRIX_STACK_SIZE * sizeof(MtxF));
    sCurrentMatrix = sMatrixStack;
}

/**
 * @brief Place a new matrix on the top of the stack and move the stack pointer up.
 *
 * @remark original name: "Matrix_push"
 */
void Matrix_Push(void) {
    MtxF* prev = sCurrentMatrix;

    sCurrentMatrix++;
    Matrix_MtxFCopy(sCurrentMatrix, prev);
}

/**
 * @brief Discard the top matrix on the stack and move stack pointer to the next one down.
 *
 * @remark original name: "Matrix_pull"
 */
void Matrix_Pop(void) {
    sCurrentMatrix--;
}

/**
 * @brief Copy the top matrix from the stack.
 *
 * @param[out] dest Matrix into which to copy.
 *
 * @remark original name: "Matrix_get"
 */
void Matrix_Get(MtxF* dest) {
    Matrix_MtxFCopy(dest, sCurrentMatrix);
}

/**
 * @brief Overwrite the top matrix on the stack.
 *
 * @param[in] src Matrix from which to copy.
 *
 * @remark original name: "Matrix_put"
 */
void Matrix_Put(MtxF* src) {
    Matrix_MtxFCopy(sCurrentMatrix, src);
}

/**
 * @brief Return pointer to the top of the matrix stack.
 *
 * @return pointer to top matrix on the stack.
 *
 * @remark original name: get_Matrix_now
 */
MtxF* Matrix_GetCurrent(void) {
    return sCurrentMatrix;
}

// Matrix_Mult
/**
 * @brief APPLY replaces current by current * mf. NEW replaces current by mf.
 *
 * @param mf Matrix to multiply by.
 * @param mode NEW or APPLY
 *
 * @remark original name: "Matrix_mult"
 */
void Matrix_Mult(MtxF* mf, s32 mode) {
    MtxF* cmf = Matrix_GetCurrent();

    if (mode == MTXMODE_APPLY) {
        SkinMatrix_MtxFMtxFMult(cmf, mf, cmf);
    } else {
        Matrix_MtxFCopy(sCurrentMatrix, mf);
    }
}

// Matrix_Translate
void Matrix_InsertTranslation(f32 x, f32 y, f32 z, s32 mode) {
    MtxF* cmf = sCurrentMatrix;
    f32 tx;
    f32 ty;

    if (mode == MTXMODE_APPLY) {
        tx = cmf->xx;
        ty = cmf->xy;
        cmf->xw += tx * x + ty * y + cmf->xz * z;
        tx = cmf->yx;
        ty = cmf->yy;
        cmf->yw += tx * x + ty * y + cmf->yz * z;
        tx = cmf->zx;
        ty = cmf->zy;
        cmf->zw += tx * x + ty * y + cmf->zz * z;
        tx = cmf->wx;
        ty = cmf->wy;
        cmf->ww += tx * x + ty * y + cmf->wz * z;
    } else {
        SkinMatrix_SetTranslate(cmf, x, y, z);
    }
}

void Matrix_Scale(f32 x, f32 y, f32 z, s32 mode) {
    MtxF* cmf = sCurrentMatrix;

    if (mode == MTXMODE_APPLY) {
        cmf->xx *= x;
        cmf->yx *= x;
        cmf->zx *= x;
        cmf->xy *= y;
        cmf->yy *= y;
        cmf->zy *= y;
        cmf->xz *= z;
        cmf->yz *= z;
        cmf->zz *= z;
        cmf->wx *= x;
        cmf->wy *= y;
        cmf->wz *= z;
    } else {
        SkinMatrix_SetScale(cmf, x, y, z);
    }
}

// Matrix_RotateXS
void Matrix_InsertXRotation_s(s16 x, s32 mode) {
    MtxF* cmf;
    f32 sin;
    f32 cos;
    f32 temp1;
    f32 temp2;

    if (mode == MTXMODE_APPLY) {
        if (x != 0) {
            cmf = sCurrentMatrix;

            sin = Math_SinS(x);
            cos = Math_CosS(x);

            temp1 = cmf->xy;
            temp2 = cmf->xz;
            cmf->xy = temp1 * cos + temp2 * sin;
            cmf->xz = temp2 * cos - temp1 * sin;

            temp1 = cmf->yy;
            temp2 = cmf->yz;
            cmf->yy = temp1 * cos + temp2 * sin;
            cmf->yz = temp2 * cos - temp1 * sin;

            temp1 = cmf->zy;
            temp2 = cmf->zz;
            cmf->zy = temp1 * cos + temp2 * sin;
            cmf->zz = temp2 * cos - temp1 * sin;

            temp1 = cmf->wy;
            temp2 = cmf->wz;
            cmf->wy = temp1 * cos + temp2 * sin;
            cmf->wz = temp2 * cos - temp1 * sin;
        }
    } else {
        cmf = sCurrentMatrix;

        if (x != 0) {
            sin = Math_SinS(x);
            cos = Math_CosS(x);
        } else {
            sin = 0.0f;
            cos = 1.0f;
        }

        cmf->yx = 0.0f;
        cmf->zx = 0.0f;
        cmf->wx = 0.0f;
        cmf->xy = 0.0f;
        cmf->wy = 0.0f;
        cmf->xz = 0.0f;
        cmf->wz = 0.0f;
        cmf->xw = 0.0f;
        cmf->yw = 0.0f;
        cmf->zw = 0.0f;
        cmf->xx = 1.0f;
        cmf->ww = 1.0f;
        cmf->yy = cos;
        cmf->zz = cos;
        cmf->zy = sin;
        cmf->yz = -sin;
    }
}

// Unused
// Matrix_RotateX
void Matrix_InsertXRotation_f(f32 x, s32 mode) {
    MtxF* cmf;
    f32 sin;
    f32 cos;
    f32 temp1;
    f32 temp2;
    f32 zero = 0.0;
    f32 one = 1.0;

    if (mode == MTXMODE_APPLY) {
        if (x != 0) {
            cmf = sCurrentMatrix;

            sin = sinf(x);
            cos = cosf(x);

            temp1 = cmf->xy;
            temp2 = cmf->xz;
            cmf->xy = temp1 * cos + temp2 * sin;
            cmf->xz = temp2 * cos - temp1 * sin;

            temp1 = cmf->yy;
            temp2 = cmf->yz;
            cmf->yy = temp1 * cos + temp2 * sin;
            cmf->yz = temp2 * cos - temp1 * sin;

            temp1 = cmf->zy;
            temp2 = cmf->zz;
            cmf->zy = temp1 * cos + temp2 * sin;
            cmf->zz = temp2 * cos - temp1 * sin;

            temp1 = cmf->wy;
            temp2 = cmf->wz;
            cmf->wy = temp1 * cos + temp2 * sin;
            cmf->wz = temp2 * cos - temp1 * sin;
        }
    } else {
        cmf = sCurrentMatrix;

        if (x != 0) {
            sin = sinf(x);
            cos = cosf(x);
        } else {
            sin = zero;
            cos = one;
        }

        cmf->xx = one;
        cmf->yx = zero;
        cmf->zx = zero;
        cmf->wx = zero;
        cmf->xy = zero;
        cmf->yy = cos;
        cmf->zy = sin;
        cmf->wy = zero;
        cmf->xz = zero;
        cmf->yz = -sin;
        cmf->zz = cos;
        cmf->wz = zero;
        cmf->xw = zero;
        cmf->yw = zero;
        cmf->zw = zero;
        cmf->ww = one;
    }
}

// Matrix_RotateXApply
void Matrix_RotateStateAroundXAxis(f32 x) {
    MtxF* cmf;
    f32 sin;
    f32 cos;
    f32 temp_1;
    f32 temp_2;
    s32 pad;

    if (x != 0.0f) {
        cmf = sCurrentMatrix;

        sin = sins(RADF_TO_BINANG(x)) * SHT_MINV;
        cos = coss(RADF_TO_BINANG(x)) * SHT_MINV;

        temp_1 = cmf->xy;
        temp_2 = cmf->xz;
        cmf->xy = (temp_1 * cos) + (temp_2 * sin);
        cmf->xz = (temp_2 * cos) - (temp_1 * sin);

        temp_1 = cmf->yy;
        temp_2 = cmf->yz;
        cmf->yy = (temp_1 * cos) + (temp_2 * sin);
        cmf->yz = (temp_2 * cos) - (temp_1 * sin);

        temp_1 = cmf->zy;
        temp_2 = cmf->zz;
        cmf->zy = (temp_1 * cos) + (temp_2 * sin);
        cmf->zz = (temp_2 * cos) - (temp_1 * sin);

        temp_1 = cmf->wy;
        temp_2 = cmf->wz;
        cmf->wy = (temp_1 * cos) + (temp_2 * sin);
        cmf->wz = (temp_2 * cos) - (temp_1 * sin);
    }
}

// Matrix_RotateXNew
void Matrix_SetStateXRotation(f32 x) {
    MtxF* cmf = sCurrentMatrix;
    s32 pad;
    s32 pad1;
    f32 sin;
    f32 cos;

    cmf->xx = 1.0f;
    cmf->yx = 0.0f;
    cmf->zx = 0.0f;
    cmf->wx = 0.0f;
    cmf->xy = 0.0f;
    cmf->wy = 0.0f;
    cmf->xz = 0.0f;
    cmf->wz = 0.0f;
    cmf->xw = 0.0f;
    cmf->yw = 0.0f;
    cmf->zw = 0.0f;
    cmf->ww = 1.0f;

    if (x != 0.0f) {
        sin = sinf(x);
        cos = cosf(x);

        cmf->yy = cos;
        cmf->zz = cos;
        cmf->yz = -sin;
        cmf->zy = sin;
    } else {
        cmf->yy = 1.0f;
        cmf->zy = 0.0f;
        cmf->yz = 0.0f;
        cmf->zz = 1.0f;
    }
}

// Matrix_RotateYS?
void Matrix_RotateY(s16 y, s32 mode) {
    MtxF* cmf;
    f32 sin;
    f32 cos;
    f32 temp1;
    f32 temp2;

    if (mode == MTXMODE_APPLY) {
        if (y != 0) {
            cmf = sCurrentMatrix;

            sin = Math_SinS(y);
            cos = Math_CosS(y);

            temp1 = cmf->xx;
            temp2 = cmf->xz;
            cmf->xx = temp1 * cos - temp2 * sin;
            cmf->xz = temp1 * sin + temp2 * cos;

            temp1 = cmf->yx;
            temp2 = cmf->yz;
            cmf->yx = temp1 * cos - temp2 * sin;
            cmf->yz = temp1 * sin + temp2 * cos;

            temp1 = cmf->zx;
            temp2 = cmf->zz;
            cmf->zx = temp1 * cos - temp2 * sin;
            cmf->zz = temp1 * sin + temp2 * cos;

            temp1 = cmf->wx;
            temp2 = cmf->wz;
            cmf->wx = temp1 * cos - temp2 * sin;
            cmf->wz = temp1 * sin + temp2 * cos;
        }
    } else {
        cmf = sCurrentMatrix;

        if (y != 0) {
            sin = Math_SinS(y);
            cos = Math_CosS(y);
        } else {
            sin = 0.0f;
            cos = 1.0f;
        }

        cmf->yx = 0.0f;
        cmf->wx = 0.0f;
        cmf->xy = 0.0f;
        cmf->zy = 0.0f;
        cmf->wy = 0.0f;
        cmf->yz = 0.0f;
        cmf->wz = 0.0f;
        cmf->xw = 0.0f;
        cmf->yw = 0.0f;
        cmf->zw = 0.0f;
        cmf->yy = 1.0f;
        cmf->ww = 1.0f;
        cmf->xx = cos;
        cmf->zz = cos;
        cmf->zx = -sin;
        cmf->xz = sin;
    }
}

// Matrix_RotateY
void Matrix_InsertYRotation_f(f32 y, s32 mode) {
    MtxF* cmf;
    f32 sin;
    f32 cos;
    f32 temp1;
    f32 temp2;
    f32 zero = 0.0;
    f32 one = 1.0;

    if (mode == MTXMODE_APPLY) {
        if (y != 0.0f) {
            cmf = sCurrentMatrix;

            sin = sinf(y);
            cos = cosf(y);

            temp1 = cmf->xx;
            temp2 = cmf->xz;
            cmf->xx = temp1 * cos - temp2 * sin;
            cmf->xz = temp1 * sin + temp2 * cos;

            temp1 = cmf->yx;
            temp2 = cmf->yz;
            cmf->yx = temp1 * cos - temp2 * sin;
            cmf->yz = temp1 * sin + temp2 * cos;

            temp1 = cmf->zx;
            temp2 = cmf->zz;
            cmf->zx = temp1 * cos - temp2 * sin;
            cmf->zz = temp1 * sin + temp2 * cos;

            temp1 = cmf->wx;
            temp2 = cmf->wz;
            cmf->wx = temp1 * cos - temp2 * sin;
            cmf->wz = temp1 * sin + temp2 * cos;
        }
    } else {
        cmf = sCurrentMatrix;

        if (y != 0.0f) {
            sin = sinf(y);
            cos = cosf(y);
        } else {
            cos = one;
            sin = zero;
        }

        cmf->yx = zero;
        cmf->wx = zero;
        cmf->xy = zero;
        cmf->zy = zero;
        cmf->wy = zero;
        cmf->yz = zero;
        cmf->wz = zero;
        cmf->xw = zero;
        cmf->yw = zero;
        cmf->zw = zero;
        cmf->yy = one;
        cmf->ww = one;
        cmf->xx = cos;
        cmf->zz = cos;
        cmf->zx = -sin;
        cmf->xz = sin;
    }
}

// Matrix_RotateZS
void Matrix_InsertZRotation_s(s16 z, s32 mode) {
    MtxF* cmf;
    f32 sin;
    f32 cos;
    f32 temp1;
    f32 temp2;
    f32 zero = 0.0;
    f32 one = 1.0;

    if (mode == MTXMODE_APPLY) {
        if (z != 0) {
            cmf = sCurrentMatrix;

            sin = Math_SinS(z);
            cos = Math_CosS(z);

            temp1 = cmf->xx;
            temp2 = cmf->xy;
            cmf->xx = temp1 * cos + temp2 * sin;
            cmf->xy = temp2 * cos - temp1 * sin;

            temp1 = cmf->yx;
            temp2 = cmf->yy;
            cmf->yx = temp1 * cos + temp2 * sin;
            cmf->yy = temp2 * cos - temp1 * sin;

            temp1 = cmf->zx;
            temp2 = cmf->zy;
            cmf->zx = temp1 * cos + temp2 * sin;
            cmf->zy = temp2 * cos - temp1 * sin;

            temp1 = cmf->wx;
            temp2 = cmf->wy;
            cmf->wx = temp1 * cos + temp2 * sin;
            cmf->wy = temp2 * cos - temp1 * sin;
        }
    } else {
        cmf = sCurrentMatrix;

        if (z != 0) {
            sin = Math_SinS(z);
            cos = Math_CosS(z);
        } else {
            sin = zero;
            cos = one;
        }

        cmf->zx = zero;
        cmf->wx = zero;
        cmf->zy = zero;
        cmf->wy = zero;
        cmf->xz = zero;
        cmf->yz = zero;
        cmf->wz = zero;
        cmf->xw = zero;
        cmf->yw = zero;
        cmf->zw = zero;
        cmf->zz = one;
        cmf->ww = one;
        cmf->xx = cos;
        cmf->yy = cos;
        cmf->yx = sin;
        cmf->xy = -sin;
    }
}

// Matrix_RotateZ
void Matrix_InsertZRotation_f(f32 z, s32 mode) {
    MtxF* cmf;
    f32 sin;
    f32 cos;
    f32 temp1;
    f32 temp2;

    if (mode == MTXMODE_APPLY) {
        if (z != 0) {
            cmf = sCurrentMatrix;

            sin = sinf(z);
            cos = cosf(z);

            temp1 = cmf->xx;
            temp2 = cmf->xy;
            cmf->xx = temp1 * cos + temp2 * sin;
            cmf->xy = temp2 * cos - temp1 * sin;

            temp1 = cmf->yx;
            temp2 = cmf->yy;
            cmf->yx = temp1 * cos + temp2 * sin;
            cmf->yy = temp2 * cos - temp1 * sin;

            temp1 = cmf->zx;
            temp2 = cmf->zy;
            cmf->zx = temp1 * cos + temp2 * sin;
            cmf->zy = temp2 * cos - temp1 * sin;

            temp1 = cmf->wx;
            temp2 = cmf->wy;
            cmf->wx = temp1 * cos + temp2 * sin;
            cmf->wy = temp2 * cos - temp1 * sin;
        }
    } else {
        cmf = sCurrentMatrix;

        if (z != 0) {
            sin = sinf(z);
            cos = cosf(z);
        } else {
            sin = 0.0f;
            cos = 1.0f;
        }

        cmf->zx = 0.0f;
        cmf->wx = 0.0f;
        cmf->zy = 0.0f;
        cmf->wy = 0.0f;
        cmf->xz = 0.0f;
        cmf->yz = 0.0f;
        cmf->wz = 0.0f;
        cmf->xw = 0.0f;
        cmf->yw = 0.0f;
        cmf->zw = 0.0f;
        cmf->zz = 1.0f;
        cmf->ww = 1.0f;
        cmf->xx = cos;
        cmf->yy = cos;
        cmf->yx = sin;
        cmf->xy = -sin;
    }
}

// Matrix_RotateZYX
void Matrix_InsertRotation(s16 x, s16 y, s16 z, s32 mode) {
    MtxF* cmf = sCurrentMatrix;
    f32 temp1;
    f32 temp2;
    f32 sin;
    f32 cos;

    if (mode == MTXMODE_APPLY) {
        if (z != 0) {
            sin = Math_SinS(z);
            cos = Math_CosS(z);

            temp1 = cmf->xx;
            temp2 = cmf->xy;
            cmf->xx = temp1 * cos + temp2 * sin;
            cmf->xy = temp2 * cos - temp1 * sin;

            temp1 = cmf->yx;
            temp2 = cmf->yy;
            cmf->yx = temp1 * cos + temp2 * sin;
            cmf->yy = temp2 * cos - temp1 * sin;

            temp1 = cmf->zx;
            temp2 = cmf->zy;
            cmf->zx = temp1 * cos + temp2 * sin;
            cmf->zy = temp2 * cos - temp1 * sin;

            temp1 = cmf->wx;
            temp2 = cmf->wy;
            cmf->wx = temp1 * cos + temp2 * sin;
            cmf->wy = temp2 * cos - temp1 * sin;
        }

        if (y != 0) {
            sin = Math_SinS(y);
            cos = Math_CosS(y);

            temp1 = cmf->xx;
            temp2 = cmf->xz;
            cmf->xx = temp1 * cos - temp2 * sin;
            cmf->xz = temp1 * sin + temp2 * cos;

            temp1 = cmf->yx;
            temp2 = cmf->yz;
            cmf->yx = temp1 * cos - temp2 * sin;
            cmf->yz = temp1 * sin + temp2 * cos;

            temp1 = cmf->zx;
            temp2 = cmf->zz;
            cmf->zx = temp1 * cos - temp2 * sin;
            cmf->zz = temp1 * sin + temp2 * cos;

            temp1 = cmf->wx;
            temp2 = cmf->wz;
            cmf->wx = temp1 * cos - temp2 * sin;
            cmf->wz = temp1 * sin + temp2 * cos;
        }

        if (x != 0) {
            sin = Math_SinS(x);
            cos = Math_CosS(x);

            temp1 = cmf->xy;
            temp2 = cmf->xz;
            cmf->xy = temp1 * cos + temp2 * sin;
            cmf->xz = temp2 * cos - temp1 * sin;

            temp1 = cmf->yy;
            temp2 = cmf->yz;
            cmf->yy = temp1 * cos + temp2 * sin;
            cmf->yz = temp2 * cos - temp1 * sin;

            temp1 = cmf->zy;
            temp2 = cmf->zz;
            cmf->zy = temp1 * cos + temp2 * sin;
            cmf->zz = temp2 * cos - temp1 * sin;

            temp1 = cmf->wy;
            temp2 = cmf->wz;
            cmf->wy = temp1 * cos + temp2 * sin;
            cmf->wz = temp2 * cos - temp1 * sin;
        }
    } else {
        SkinMatrix_SetRotateRPY(cmf, x, y, z);
    }
}

// Matrix_TranslateRotateZYX
void Matrix_JointPosition(Vec3f* translation, Vec3s* rotation) {
    MtxF* cmf = sCurrentMatrix;
    f32 sin = Math_SinS(rotation->z);
    f32 cos = Math_CosS(rotation->z);
    f32 temp1;
    f32 temp2;

    temp1 = cmf->xx;
    temp2 = cmf->xy;
    cmf->xw += temp1 * translation->x + temp2 * translation->y + cmf->xz * translation->z;
    cmf->xx = temp1 * cos + temp2 * sin;
    cmf->xy = temp2 * cos - temp1 * sin;

    temp1 = cmf->yx;
    temp2 = cmf->yy;
    cmf->yw += temp1 * translation->x + temp2 * translation->y + cmf->yz * translation->z;
    cmf->yx = temp1 * cos + temp2 * sin;
    cmf->yy = temp2 * cos - temp1 * sin;

    temp1 = cmf->zx;
    temp2 = cmf->zy;
    cmf->zw += temp1 * translation->x + temp2 * translation->y + cmf->zz * translation->z;
    cmf->zx = temp1 * cos + temp2 * sin;
    cmf->zy = temp2 * cos - temp1 * sin;

    temp1 = cmf->wx;
    temp2 = cmf->wy;
    cmf->ww += temp1 * translation->x + temp2 * translation->y + cmf->wz * translation->z;
    cmf->wx = temp1 * cos + temp2 * sin;
    cmf->wy = temp2 * cos - temp1 * sin;

    if (rotation->y != 0) {
        sin = Math_SinS(rotation->y);
        cos = Math_CosS(rotation->y);

        temp1 = cmf->xx;
        temp2 = cmf->xz;
        cmf->xx = temp1 * cos - temp2 * sin;
        cmf->xz = temp1 * sin + temp2 * cos;

        temp1 = cmf->yx;
        temp2 = cmf->yz;
        cmf->yx = temp1 * cos - temp2 * sin;
        cmf->yz = temp1 * sin + temp2 * cos;

        temp1 = cmf->zx;
        temp2 = cmf->zz;
        cmf->zx = temp1 * cos - temp2 * sin;
        cmf->zz = temp1 * sin + temp2 * cos;

        temp1 = cmf->wx;
        temp2 = cmf->wz;
        cmf->wx = temp1 * cos - temp2 * sin;
        cmf->wz = temp1 * sin + temp2 * cos;
    }

    if (rotation->x != 0) {
        sin = Math_SinS(rotation->x);
        cos = Math_CosS(rotation->x);

        temp1 = cmf->xy;
        temp2 = cmf->xz;
        cmf->xy = temp1 * cos + temp2 * sin;
        cmf->xz = temp2 * cos - temp1 * sin;

        temp1 = cmf->yy;
        temp2 = cmf->yz;
        cmf->yy = temp1 * cos + temp2 * sin;
        cmf->yz = temp2 * cos - temp1 * sin;

        temp1 = cmf->zy;
        temp2 = cmf->zz;
        cmf->zy = temp1 * cos + temp2 * sin;
        cmf->zz = temp2 * cos - temp1 * sin;

        temp1 = cmf->wy;
        temp2 = cmf->wz;
        cmf->wy = temp1 * cos + temp2 * sin;
        cmf->wz = temp2 * cos - temp1 * sin;
    }
}

// Matrix_SetTranslateRotateYXZ
void Matrix_SetStateRotationAndTranslation(f32 x, f32 y, f32 z, Vec3s* vec) {
    MtxF* cmf = sCurrentMatrix;
    f32 sp30 = Math_SinS(vec->y);
    f32 sp2C = Math_CosS(vec->y);
    f32 sp28;
    f32 sp24;

    cmf->xx = sp2C;
    cmf->zx = -sp30;
    cmf->xw = x;
    cmf->yw = y;
    cmf->zw = z;
    cmf->wx = 0.0f;
    cmf->wy = 0.0f;
    cmf->wz = 0.0f;
    cmf->ww = 1.0f;

    if (vec->x != 0) {
        sp24 = Math_SinS(vec->x);
        sp28 = Math_CosS(vec->x);

        cmf->zz = sp2C * sp28;
        cmf->zy = sp2C * sp24;
        cmf->xz = sp30 * sp28;
        cmf->xy = sp30 * sp24;
        cmf->yz = -sp24;
        cmf->yy = sp28;
    } else {
        cmf->zz = sp2C;
        cmf->xz = sp30;
        cmf->yz = 0.0f;
        cmf->zy = 0.0f;
        cmf->xy = 0.0f;
        cmf->yy = 1.0f;
    }

    if (vec->z != 0) {
        sp24 = Math_SinS(vec->z);
        sp28 = Math_CosS(vec->z);

        sp30 = cmf->xx;
        sp2C = cmf->xy;
        cmf->xx = sp30 * sp28 + sp2C * sp24;
        cmf->xy = sp2C * sp28 - sp30 * sp24;

        sp30 = cmf->zx;
        sp2C = cmf->zy;
        cmf->zx = sp30 * sp28 + sp2C * sp24;
        cmf->zy = sp2C * sp28 - sp30 * sp24;

        sp2C = cmf->yy;
        cmf->yx = sp2C * sp24;
        cmf->yy = sp2C * sp28;
    } else {
        cmf->yx = 0.0f;
    }
}

// Matrix_MtxFToMtx
Mtx* Matrix_ToRSPMatrix(MtxF* src, Mtx* dest) {
    s32 temp;
    u16* intPart = (u16*)&dest->m[0][0];
    u16* fracPart = (u16*)&dest->m[2][0];

    temp = src->xx * 0x10000;
    intPart[0] = (temp >> 0x10);
    intPart[16 + 0] = temp;

    temp = src->yx * 0x10000;
    intPart[1] = (temp >> 0x10);
    intPart[16 + 1] = temp;

    temp = src->zx * 0x10000;
    intPart[2] = (temp >> 0x10);
    intPart[16 + 2] = temp;

    temp = src->wx * 0x10000;
    intPart[3] = (temp >> 0x10);
    intPart[16 + 3] = temp;

    temp = src->xy * 0x10000;
    intPart[4] = (temp >> 0x10);
    intPart[16 + 4] = temp;

    temp = src->yy * 0x10000;
    intPart[5] = (temp >> 0x10);
    intPart[16 + 5] = temp;

    temp = src->zy * 0x10000;
    intPart[6] = (temp >> 0x10);
    intPart[16 + 6] = temp;

    temp = src->wy * 0x10000;
    intPart[7] = (temp >> 0x10);
    intPart[16 + 7] = temp;

    temp = src->xz * 0x10000;
    intPart[8] = (temp >> 0x10);
    intPart[16 + 8] = temp;

    temp = src->yz * 0x10000;
    intPart[9] = (temp >> 0x10);
    fracPart[9] = temp;

    temp = src->zz * 0x10000;
    intPart[10] = (temp >> 0x10);
    fracPart[10] = temp;

    temp = src->wz * 0x10000;
    intPart[11] = (temp >> 0x10);
    fracPart[11] = temp;

    temp = src->xw * 0x10000;
    intPart[12] = (temp >> 0x10);
    fracPart[12] = temp;

    temp = src->yw * 0x10000;
    intPart[13] = (temp >> 0x10);
    fracPart[13] = temp;

    temp = src->zw * 0x10000;
    intPart[14] = (temp >> 0x10);
    fracPart[14] = temp;

    temp = src->ww * 0x10000;
    intPart[15] = (temp >> 0x10);
    fracPart[15] = temp;

    return dest;
}

Mtx* Matrix_ToMtx(Mtx* dest) {
    return Matrix_ToRSPMatrix(sCurrentMatrix, dest);
}

Mtx* Matrix_NewMtx(GraphicsContext* gfxCtx) {
    return Matrix_ToMtx(GRAPH_ALLOC(gfxCtx, sizeof(Mtx)));
}

// Unused
// Matrix_MtxFToNewMtx
Mtx* Matrix_AppendToPolyOpaDisp(MtxF* src, GraphicsContext* gfxCtx) {
    return Matrix_ToRSPMatrix(src, GRAPH_ALLOC(gfxCtx, sizeof(Mtx)));
}

// Matrix_MultVec3f
void Matrix_MultiplyVector3fByState(Vec3f* src, Vec3f* dest) {
    MtxF* cmf = sCurrentMatrix;

    dest->x = cmf->xw + (cmf->xx * src->x + cmf->xy * src->y + cmf->xz * src->z);
    dest->y = cmf->yw + (cmf->yx * src->x + cmf->yy * src->y + cmf->yz * src->z);
    dest->z = cmf->zw + (cmf->zx * src->x + cmf->zy * src->y + cmf->zz * src->z);
}

// Matrix_GetTranslation
// Gets the translation part of a transformation matrix
void Matrix_GetStateTranslation(Vec3f* translateOut) {
    MtxF* cmf = sCurrentMatrix;

    translateOut->x = cmf->xw;
    translateOut->y = cmf->yw;
    translateOut->z = cmf->zw;
}

// Matrix_MultX
void Matrix_GetStateTranslationAndScaledX(f32 arg0, Vec3f* dst) {
    MtxF* cmf = sCurrentMatrix;

    dst->x = cmf->xw + cmf->xx * arg0;
    dst->y = cmf->yw + cmf->yx * arg0;
    dst->z = cmf->zw + cmf->zx * arg0;
}

// Matrix_MultY
void Matrix_GetStateTranslationAndScaledY(f32 arg0, Vec3f* dst) {
    MtxF* cmf = sCurrentMatrix;

    dst->x = cmf->xw + cmf->xy * arg0;
    dst->y = cmf->yw + cmf->yy * arg0;
    dst->z = cmf->zw + cmf->zy * arg0;
}

// Matrix_MultZ
void Matrix_GetStateTranslationAndScaledZ(f32 arg0, Vec3f* dst) {
    MtxF* cmf = sCurrentMatrix;

    dst->x = cmf->xw + cmf->xz * arg0;
    dst->y = cmf->yw + cmf->yz * arg0;
    dst->z = cmf->zw + cmf->zz * arg0;
}

// Matrix_MultVec3fXZ
void Matrix_MultiplyVector3fXZByCurrentState(Vec3f* arg0, Vec3f* dst) {
    MtxF* cmf = sCurrentMatrix;

    dst->x = cmf->xw + (cmf->xx * arg0->x + cmf->xy * arg0->y + cmf->xz * arg0->z);
    dst->z = cmf->zw + (cmf->zx * arg0->x + cmf->zy * arg0->y + cmf->zz * arg0->z);
}

void Matrix_MtxFCopy(MtxF* dest, MtxF* src) {
    f32 f0;
    f32 f2;

    if (1) {
        f0 = src->mf[0][0];
        f2 = src->mf[0][1];
        dest->mf[0][0] = f0;
        dest->mf[0][1] = f2;
        f0 = src->mf[0][2];
        f2 = src->mf[0][3];
        dest->mf[0][2] = f0;
        dest->mf[0][3] = f2;
    }
    if (1) {
        f0 = src->mf[1][0];
        f2 = src->mf[1][1];
        dest->mf[1][0] = f0;
        dest->mf[1][1] = f2;
        f0 = src->mf[1][2];
        f2 = src->mf[1][3];
        dest->mf[1][2] = f0;
        dest->mf[1][3] = f2;
    }
    if (1) {
        f0 = src->mf[2][0];
        f2 = src->mf[2][1];
        dest->mf[2][0] = f0;
        dest->mf[2][1] = f2;
        f0 = src->mf[2][2];
        f2 = src->mf[2][3];
        dest->mf[2][2] = f0;
        dest->mf[2][3] = f2;
    }
    if (1) {
        f0 = src->mf[3][0];
        f2 = src->mf[3][1];
        dest->mf[3][0] = f0;
        dest->mf[3][1] = f2;
        f0 = src->mf[3][2];
        f2 = src->mf[3][3];
        dest->mf[3][2] = f0;
        dest->mf[3][3] = f2;
    }
}

// Matrix_MtxToMtxF
/**
 * @brief Converts fixed-point RSP-compatible matrix to an MtxF.
 *
 * @param[in] src mtx to convert
 * @param[out] dest MtxF to output to
 */
void Matrix_FromRSPMatrix(Mtx* src, MtxF* dest) {
    u16* intPart = (u16*)&src->m[0][0];
    u16* fracPart = (u16*)&src->m[2][0];

    dest->xx = ((intPart[0] << 0x10) | fracPart[0]) * (1 / (f32)0x10000);
    dest->yx = ((intPart[1] << 0x10) | fracPart[1]) * (1 / (f32)0x10000);
    dest->zx = ((intPart[2] << 0x10) | fracPart[2]) * (1 / (f32)0x10000);
    dest->wx = ((intPart[3] << 0x10) | fracPart[3]) * (1 / (f32)0x10000);
    dest->xy = ((intPart[4] << 0x10) | fracPart[4]) * (1 / (f32)0x10000);
    dest->yy = ((intPart[5] << 0x10) | fracPart[5]) * (1 / (f32)0x10000);
    dest->zy = ((intPart[6] << 0x10) | fracPart[6]) * (1 / (f32)0x10000);
    dest->wy = ((intPart[7] << 0x10) | fracPart[7]) * (1 / (f32)0x10000);
    dest->xz = ((intPart[8] << 0x10) | fracPart[8]) * (1 / (f32)0x10000);
    dest->yz = ((intPart[9] << 0x10) | fracPart[9]) * (1 / (f32)0x10000);
    dest->zz = ((intPart[10] << 0x10) | fracPart[10]) * (1 / (f32)0x10000);
    dest->wz = ((intPart[11] << 0x10) | fracPart[11]) * (1 / (f32)0x10000);
    dest->xw = ((intPart[12] << 0x10) | fracPart[12]) * (1 / (f32)0x10000);
    dest->yw = ((intPart[13] << 0x10) | fracPart[13]) * (1 / (f32)0x10000);
    dest->zw = ((intPart[14] << 0x10) | fracPart[14]) * (1 / (f32)0x10000);
    dest->ww = ((intPart[15] << 0x10) | fracPart[15]) * (1 / (f32)0x10000);
}

// Unused
// Matrix_MultVec3fExt
void Matrix_MultiplyVector3fByMatrix(Vec3f* src, Vec3f* dest, MtxF* mf) {
    dest->x = mf->xw + (mf->xx * src->x + mf->xy * src->y + mf->xz * src->z);
    dest->y = mf->yw + (mf->yx * src->x + mf->yy * src->y + mf->yz * src->z);
    dest->z = mf->zw + (mf->zx * src->x + mf->zy * src->y + mf->zz * src->z);
}

// Matrix_Transpose or Matrix_Reverse
void Matrix_TransposeXYZ(MtxF* mf) {
    f32 temp;

    temp = mf->yx;
    mf->yx = mf->xy;
    mf->xy = temp;

    temp = mf->zx;
    mf->zx = mf->xz;
    mf->xz = temp;

    temp = mf->zy;
    mf->zy = mf->yz;
    mf->yz = temp;
}

// Matrix_ReplaceRotation
void Matrix_NormalizeXYZ(MtxF* mf) {
    MtxF* cmf = sCurrentMatrix;
    f32 temp;
    f32 temp2;
    f32 temp3;

    temp = cmf->xx;
    temp *= temp;
    temp2 = cmf->yx;
    temp += SQ(temp2);
    temp2 = cmf->zx;
    temp += SQ(temp2);
    temp3 = sqrtf(temp);

    cmf->xx = mf->xx * temp3;
    cmf->yx = mf->yx * temp3;
    cmf->zx = mf->zx * temp3;

    temp = cmf->xy;
    temp *= temp;
    temp2 = cmf->yy;
    temp += SQ(temp2);
    temp2 = cmf->zy;
    temp += SQ(temp2);
    temp3 = sqrtf(temp);

    cmf->xy = mf->xy * temp3;
    cmf->yy = mf->yy * temp3;
    cmf->zy = mf->zy * temp3;

    temp = cmf->xz;
    temp *= temp;
    temp2 = cmf->yz;
    temp += SQ(temp2);
    temp2 = cmf->zz;
    temp += SQ(temp2);
    temp3 = sqrtf(temp);

    cmf->xz = mf->xz * temp3;
    cmf->yz = mf->yz * temp3;
    cmf->zz = mf->zz * temp3;
}

// Matrix_MtxFToYXZRotS
void func_8018219C(MtxF* mf, Vec3s* rotDest, s32 flag) {
    f32 temp;
    f32 temp2;
    f32 temp3;
    f32 temp4;

    temp = mf->xz;
    temp *= temp;
    temp += SQ(mf->zz);
    rotDest->x = Math_Atan2S(-mf->yz, sqrtf(temp));

    if ((rotDest->x == 0x4000) || (rotDest->x == -0x4000)) {
        rotDest->z = 0;

        rotDest->y = Math_Atan2S(-mf->zx, mf->xx);
    } else {
        rotDest->y = Math_Atan2S(mf->xz, mf->zz);

        if (!flag) {
            rotDest->z = Math_Atan2S(mf->yx, mf->yy);
        } else {
            temp = mf->xx;
            temp2 = mf->zx;
            temp3 = mf->zy;

            temp *= temp;
            temp += SQ(temp2);
            temp2 = mf->yx;
            temp += SQ(temp2);
            temp = sqrtf(temp);
            temp = temp2 / temp;

            temp2 = mf->xy;
            temp2 *= temp2;
            temp2 += SQ(temp3);
            temp3 = mf->yy;
            temp2 += SQ(temp3);
            temp2 = sqrtf(temp2);
            temp2 = temp3 / temp2;

            rotDest->z = Math_Atan2S(temp, temp2);
        }
    }
}

// Matrix_MtxFToZYXRotS
void func_801822C4(MtxF* mf, Vec3s* rotDest, s32 flag) {
    f32 temp;
    f32 temp2;
    f32 temp3;
    f32 temp4;

    temp = mf->xx;
    temp *= temp;
    temp += SQ(mf->yx);
    rotDest->y = Math_Atan2S(-mf->zx, sqrtf(temp));

    if ((rotDest->y == 0x4000) || (rotDest->y == -0x4000)) {
        rotDest->x = 0;
        rotDest->z = Math_Atan2S(-mf->xy, mf->yy);
        return;
    }

    rotDest->z = Math_Atan2S(mf->yx, mf->xx);

    if (!flag) {
        rotDest->x = Math_Atan2S(mf->zy, mf->zz);
    } else {
        temp = mf->xy;
        temp2 = mf->yy;
        temp3 = mf->yz;

        temp *= temp;
        temp += SQ(temp2);
        temp2 = mf->zy;
        temp += SQ(temp2);
        temp = sqrtf(temp);
        temp = temp2 / temp;

        temp2 = mf->xz;
        temp2 *= temp2;
        temp2 += SQ(temp3);
        temp3 = mf->zz;
        temp2 += SQ(temp3);
        temp2 = sqrtf(temp2);
        temp2 = temp3 / temp2;

        rotDest->x = Math_Atan2S(temp, temp2);
    }
}

// Matrix_RotateAxisF
void Matrix_InsertRotationAroundUnitVector_f(f32 angle, Vec3f* axis, s32 mode) {
    MtxF* cmf;
    f32 sin;
    f32 cos;
    f32 rCos;
    f32 vrs;
    f32 temp1;
    f32 temp2;
    f32 temp3;
    f32 temp4;
    f32 temp5;

    if (mode == MTXMODE_APPLY) {
        if (angle != 0) {
            cmf = sCurrentMatrix;

            sin = sinf(angle);
            cos = cosf(angle);

            temp2 = cmf->xy;
            temp3 = cmf->xz;
            temp1 = cmf->xx;
            temp4 = (axis->x * temp1 + axis->y * temp2 + axis->z * temp3) * (1.0f - cos);
            cmf->xx = temp1 * cos + axis->x * temp4 + sin * (temp2 * axis->z - temp3 * axis->y);
            cmf->xy = temp2 * cos + axis->y * temp4 + sin * (temp3 * axis->x - temp1 * axis->z);
            cmf->xz = temp3 * cos + axis->z * temp4 + sin * (temp1 * axis->y - temp2 * axis->x);

            temp1 = cmf->yx;
            temp2 = cmf->yy;
            temp3 = cmf->yz;
            temp4 = (axis->x * temp1 + axis->y * temp2 + axis->z * temp3) * (1.0f - cos);
            cmf->yx = temp1 * cos + axis->x * temp4 + sin * (temp2 * axis->z - temp3 * axis->y);
            cmf->yy = temp2 * cos + axis->y * temp4 + sin * (temp3 * axis->x - temp1 * axis->z);
            cmf->yz = temp3 * cos + axis->z * temp4 + sin * (temp1 * axis->y - temp2 * axis->x);

            temp1 = cmf->zx;
            temp2 = cmf->zy;
            temp3 = cmf->zz;
            temp4 = (axis->x * temp1 + axis->y * temp2 + axis->z * temp3) * (1.0f - cos);
            cmf->zx = temp1 * cos + axis->x * temp4 + sin * (temp2 * axis->z - temp3 * axis->y);
            cmf->zy = temp2 * cos + axis->y * temp4 + sin * (temp3 * axis->x - temp1 * axis->z);
            cmf->zz = temp3 * cos + axis->z * temp4 + sin * (temp1 * axis->y - temp2 * axis->x);
        }
    } else {
        cmf = sCurrentMatrix;

        if (angle != 0) {
            sin = sinf(angle);
            cos = cosf(angle);
            rCos = 1.0f - cos;

            cmf->xx = axis->x * axis->x * rCos + cos;
            cmf->yy = axis->y * axis->y * rCos + cos;
            cmf->zz = axis->z * axis->z * rCos + cos;

            if (0) {}

            temp2 = axis->x * rCos * axis->y;
            temp3 = axis->z * sin;
            cmf->yx = temp2 + temp3;
            cmf->xy = temp2 - temp3;

            temp2 = axis->x * rCos * axis->z;
            temp3 = axis->y * sin;
            cmf->zx = temp2 - temp3;
            cmf->xz = temp2 + temp3;

            temp2 = axis->y * rCos * axis->z;
            temp3 = axis->x * sin;
            cmf->zy = temp2 + temp3;
            cmf->yz = temp2 - temp3;

            cmf->wx = cmf->wy = cmf->wz = cmf->xw = cmf->yw = cmf->zw = 0.0f;
            cmf->ww = 1.0f;
        } else {
            cmf->yx = 0.0f;
            cmf->zx = 0.0f;
            cmf->wx = 0.0f;
            cmf->xy = 0.0f;
            cmf->zy = 0.0f;
            cmf->wy = 0.0f;
            cmf->xz = 0.0f;
            cmf->yz = 0.0f;
            cmf->wz = 0.0f;
            cmf->xw = 0.0f;
            cmf->yw = 0.0f;
            cmf->zw = 0.0f;
            cmf->xx = 1.0f;
            cmf->yy = 1.0f;
            cmf->zz = 1.0f;
            cmf->ww = 1.0f;
        }
    }
}

// Matrix_RotateAxisS
void Matrix_InsertRotationAroundUnitVector_s(s16 angle, Vec3f* axis, s32 mode) {
    MtxF* cmf;
    f32 cos;
    f32 sin;
    f32 rCos;
    f32 temp1;
    f32 temp2;
    f32 temp3;
    f32 temp4;

    if (mode == MTXMODE_APPLY) {
        if (angle != 0) {
            cmf = sCurrentMatrix;

            sin = Math_SinS(angle);
            cos = Math_CosS(angle);

            temp2 = cmf->xy;
            temp3 = cmf->xz;
            temp1 = cmf->xx;
            temp4 = (axis->x * temp1 + axis->y * temp2 + axis->z * temp3) * (1.0f - cos);
            cmf->xx = temp1 * cos + axis->x * temp4 + sin * (temp2 * axis->z - temp3 * axis->y);
            cmf->xy = temp2 * cos + axis->y * temp4 + sin * (temp3 * axis->x - temp1 * axis->z);
            cmf->xz = temp3 * cos + axis->z * temp4 + sin * (temp1 * axis->y - temp2 * axis->x);

            temp1 = cmf->yx;
            temp2 = cmf->yy;
            temp3 = cmf->yz;
            temp4 = (axis->x * temp1 + axis->y * temp2 + axis->z * temp3) * (1.0f - cos);
            cmf->yx = temp1 * cos + axis->x * temp4 + sin * (temp2 * axis->z - temp3 * axis->y);
            cmf->yy = temp2 * cos + axis->y * temp4 + sin * (temp3 * axis->x - temp1 * axis->z);
            cmf->yz = temp3 * cos + axis->z * temp4 + sin * (temp1 * axis->y - temp2 * axis->x);

            temp1 = cmf->zx;
            temp2 = cmf->zy;
            temp3 = cmf->zz;
            temp4 = (axis->x * temp1 + axis->y * temp2 + axis->z * temp3) * (1.0f - cos);
            cmf->zx = temp1 * cos + axis->x * temp4 + sin * (temp2 * axis->z - temp3 * axis->y);
            cmf->zy = temp2 * cos + axis->y * temp4 + sin * (temp3 * axis->x - temp1 * axis->z);
            cmf->zz = temp3 * cos + axis->z * temp4 + sin * (temp1 * axis->y - temp2 * axis->x);
        }
    } else {
        cmf = sCurrentMatrix;

        if (angle != 0) {
            sin = Math_SinS(angle);
            cos = Math_CosS(angle);
            rCos = 1.0f - cos;

            cmf->xx = axis->x * axis->x * rCos + cos;
            cmf->yy = axis->y * axis->y * rCos + cos;
            cmf->zz = axis->z * axis->z * rCos + cos;

            if (0) {}

            temp2 = axis->x * rCos * axis->y;
            temp3 = axis->z * sin;
            cmf->yx = temp2 + temp3;
            cmf->xy = temp2 - temp3;

            temp2 = axis->x * rCos * axis->z;
            temp3 = axis->y * sin;
            cmf->zx = temp2 - temp3;
            cmf->xz = temp2 + temp3;

            temp2 = axis->y * rCos * axis->z;
            temp3 = axis->x * sin;
            cmf->zy = temp2 + temp3;
            cmf->yz = temp2 - temp3;

            cmf->wx = cmf->wy = cmf->wz = cmf->xw = cmf->yw = cmf->zw = 0.0f;
            cmf->ww = 1.0f;
        } else {
            cmf->yx = 0.0f;
            cmf->zx = 0.0f;
            cmf->wx = 0.0f;
            cmf->xy = 0.0f;
            cmf->zy = 0.0f;
            cmf->wy = 0.0f;
            cmf->xz = 0.0f;
            cmf->yz = 0.0f;
            cmf->wz = 0.0f;
            cmf->xw = 0.0f;
            cmf->yw = 0.0f;
            cmf->zw = 0.0f;
            cmf->xx = 1.0f;
            cmf->yy = 1.0f;
            cmf->zz = 1.0f;
            cmf->ww = 1.0f;
        }
    }
}
