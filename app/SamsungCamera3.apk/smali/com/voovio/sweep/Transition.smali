.class public Lcom/voovio/sweep/Transition;
.super Ljava/lang/Object;
.source "Transition.java"


# static fields
.field static DIR_0_1:I

.field static DIR_1_0:I


# instance fields
.field m_aP:[Lcom/voovio/voo3d/data/Vector3;

.field m_aPortals:[[Lcom/voovio/sweep/Portal;

.field m_aTR0:[Lcom/voovio/sweep/Transform;

.field m_aTR1:[Lcom/voovio/sweep/Transform;

.field m_aVoovios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;"
        }
    .end annotation
.end field

.field m_fAngleBetweenPortalNormals:F

.field m_fAngleStepX:F

.field m_fAngleStepY:F

.field m_fAngle_v1_v2:F

.field m_fAngle_v1_vt:F

.field m_fD:F

.field m_fRotationAngle:F

.field m_fWalkingSteps:F

.field m_nDir:I

.field m_nMoveToPosition:I

.field m_nPortalIn:I

.field m_nPortalOut:I

.field m_nWay:I

.field m_oSweep:Lcom/voovio/sweep/Sweep;

.field m_ptIn:Lcom/voovio/voo3d/data/Vector3;

.field m_ptOut:Lcom/voovio/voo3d/data/Vector3;

.field m_v1:Lcom/voovio/voo3d/data/Vector3;

.field m_v2:Lcom/voovio/voo3d/data/Vector3;

.field m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

.field m_vSide:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    .line 17
    const/4 v0, 0x1

    sput v0, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/voovio/sweep/Sweep;)V
    .locals 8
    .param p1, "oSweep"    # Lcom/voovio/sweep/Sweep;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 83
    new-array v0, v7, [[Lcom/voovio/sweep/Portal;

    new-array v1, v7, [Lcom/voovio/sweep/Portal;

    new-instance v2, Lcom/voovio/sweep/Portal;

    invoke-direct {v2}, Lcom/voovio/sweep/Portal;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lcom/voovio/sweep/Portal;

    invoke-direct {v2}, Lcom/voovio/sweep/Portal;-><init>()V

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Lcom/voovio/sweep/Portal;

    new-instance v2, Lcom/voovio/sweep/Portal;

    invoke-direct {v2}, Lcom/voovio/sweep/Portal;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lcom/voovio/sweep/Portal;

    invoke-direct {v2}, Lcom/voovio/sweep/Portal;-><init>()V

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    .line 84
    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    .line 90
    iput-object v4, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    .line 91
    iput-object v4, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    .line 94
    sget v0, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    .line 95
    iput v5, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    .line 96
    iput v6, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    .line 99
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    .line 100
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    .line 101
    new-array v0, v7, [Lcom/voovio/voo3d/data/Vector3;

    new-instance v1, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v1}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v1}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    .line 102
    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepX:F

    .line 103
    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    .line 106
    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fWalkingSteps:F

    .line 109
    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    .line 112
    iput-object v4, p0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    .line 115
    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fD:F

    .line 118
    iput-object v4, p0, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    .line 119
    iput-object v4, p0, Lcom/voovio/sweep/Transition;->m_v2:Lcom/voovio/voo3d/data/Vector3;

    .line 120
    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fAngle_v1_v2:F

    .line 121
    iput v3, p0, Lcom/voovio/sweep/Transition;->m_fAngle_v1_vt:F

    .line 124
    iput-object v4, p0, Lcom/voovio/sweep/Transition;->m_aP:[Lcom/voovio/voo3d/data/Vector3;

    .line 125
    return-void
.end method

.method private GetIntermediatePoint(Lcom/voovio/voo3d/data/Vector3;FLcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;
    .locals 19
    .param p1, "v"    # Lcom/voovio/voo3d/data/Vector3;
    .param p2, "s"    # F
    .param p3, "ptI"    # Lcom/voovio/voo3d/data/Vector3;

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/voovio/sweep/Voovio;

    .line 203
    .local v11, "oVoovio":Lcom/voovio/sweep/Voovio;
    const/high16 v14, 0x3f000000

    iget v15, v11, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    float-to-double v14, v14

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_fF:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    double-to-float v14, v14

    const v15, 0x3c8efa35

    sub-float v8, v14, v15

    .line 204
    .local v8, "fFovH2":F
    const/high16 v14, 0x3f000000

    iget v15, v11, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    float-to-double v14, v14

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_fF:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    double-to-float v9, v14

    .line 206
    .local v9, "fFovV2":F
    move-object/from16 v0, p1

    iget v14, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    float-to-double v14, v14

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    double-to-float v6, v14

    .line 207
    .local v6, "fAngleH":F
    move-object/from16 v0, p1

    iget v14, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    float-to-double v14, v14

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    double-to-float v7, v14

    .line 209
    .local v7, "fAngleV":F
    const/4 v3, 0x1

    .line 210
    .local v3, "LEFT":I
    const/4 v5, 0x2

    .line 211
    .local v5, "TOP":I
    const/4 v4, 0x4

    .line 212
    .local v4, "RIGHT":I
    const/16 v2, 0x8

    .line 214
    .local v2, "BOTTOM":I
    const/4 v12, 0x0

    .line 215
    .local v12, "sides":I
    neg-float v14, v8

    cmpg-float v14, v6, v14

    if-gez v14, :cond_2

    .line 216
    or-int/2addr v12, v3

    .line 220
    :cond_0
    :goto_0
    neg-float v14, v9

    cmpg-float v14, v7, v14

    if-gez v14, :cond_3

    .line 221
    or-int/2addr v12, v2

    .line 225
    :cond_1
    :goto_1
    if-ne v12, v3, :cond_4

    .line 226
    move-object/from16 v0, p1

    iget v14, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float v14, v14, p2

    move-object/from16 v0, p1

    iget v15, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float v15, v15, p2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v16, v0

    mul-float v16, v16, p2

    neg-float v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->tan(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 259
    :goto_2
    return-object p3

    .line 217
    :cond_2
    cmpl-float v14, v6, v8

    if-lez v14, :cond_0

    .line 218
    or-int/2addr v12, v4

    goto :goto_0

    .line 222
    :cond_3
    cmpl-float v14, v7, v9

    if-lez v14, :cond_1

    .line 223
    or-int/2addr v12, v5

    goto :goto_1

    .line 228
    :cond_4
    if-ne v12, v4, :cond_5

    .line 229
    move-object/from16 v0, p1

    iget v14, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float v14, v14, p2

    move-object/from16 v0, p1

    iget v15, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float v15, v15, p2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v16, v0

    mul-float v16, v16, p2

    float-to-double v0, v8

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->tan(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_2

    .line 231
    :cond_5
    if-ne v12, v2, :cond_6

    .line 232
    move-object/from16 v0, p1

    iget v14, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float v14, v14, p2

    move-object/from16 v0, p1

    iget v15, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float v15, v15, p2

    neg-float v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v16, v0

    mul-float v16, v16, p2

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_2

    .line 234
    :cond_6
    if-ne v12, v5, :cond_7

    .line 235
    move-object/from16 v0, p1

    iget v14, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float v14, v14, p2

    move-object/from16 v0, p1

    iget v15, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float v15, v15, p2

    float-to-double v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v16, v0

    mul-float v16, v16, p2

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto/16 :goto_2

    .line 237
    :cond_7
    if-eqz v12, :cond_c

    .line 238
    const/4 v14, 0x3

    if-ne v12, v14, :cond_9

    .line 239
    iget v14, v11, Lcom/voovio/sweep/Voovio;->m_fF:F

    iget v15, v11, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    int-to-float v15, v15

    const/high16 v16, 0x40000000

    div-float v15, v15, v16

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000

    div-float v16, v16, v17

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 247
    :cond_8
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 249
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v13

    .line 250
    .local v13, "vT":Lcom/voovio/voo3d/data/Vector3;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    .line 251
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v10

    .line 252
    .local v10, "fLength":F
    invoke-static {v13}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 254
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    goto/16 :goto_2

    .line 240
    .end local v10    # "fLength":F
    .end local v13    # "vT":Lcom/voovio/voo3d/data/Vector3;
    :cond_9
    const/16 v14, 0x9

    if-ne v12, v14, :cond_a

    .line 241
    iget v14, v11, Lcom/voovio/sweep/Voovio;->m_fF:F

    iget v15, v11, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    neg-int v15, v15

    int-to-float v15, v15

    const/high16 v16, 0x40000000

    div-float v15, v15, v16

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000

    div-float v16, v16, v17

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_3

    .line 242
    :cond_a
    const/4 v14, 0x6

    if-ne v12, v14, :cond_b

    .line 243
    iget v14, v11, Lcom/voovio/sweep/Voovio;->m_fF:F

    iget v15, v11, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    int-to-float v15, v15

    const/high16 v16, 0x40000000

    div-float v15, v15, v16

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000

    div-float v16, v16, v17

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_3

    .line 244
    :cond_b
    const/16 v14, 0xc

    if-ne v12, v14, :cond_8

    .line 245
    iget v14, v11, Lcom/voovio/sweep/Voovio;->m_fF:F

    iget v15, v11, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    neg-int v15, v15

    int-to-float v15, v15

    const/high16 v16, 0x40000000

    div-float v15, v15, v16

    iget v0, v11, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000

    div-float v16, v16, v17

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto/16 :goto_3

    .line 257
    :cond_c
    const v14, 0x3f4ccccd

    mul-float v14, v14, p2

    move-object/from16 v0, p1

    iget v15, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v14, v15

    const v15, 0x3f4ccccd

    mul-float v15, v15, p2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    const v16, 0x3f4ccccd

    mul-float v16, v16, p2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto/16 :goto_2
.end method

.method private computeAngleBetweenPortalNormals()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 734
    new-instance v2, Lcom/voovio/geometry/Point;

    iget-object v4, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v4, v4, v6

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v5, v5, v6

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-direct {v2, v4, v5}, Lcom/voovio/geometry/Point;-><init>(FF)V

    .line 735
    .local v2, "vN0":Lcom/voovio/geometry/Point;
    new-instance v3, Lcom/voovio/geometry/Point;

    iget-object v4, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v4, v4, v7

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v5, v5, v7

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-direct {v3, v4, v5}, Lcom/voovio/geometry/Point;-><init>(FF)V

    .line 736
    .local v3, "vN1":Lcom/voovio/geometry/Point;
    invoke-virtual {v2, v3}, Lcom/voovio/geometry/Point;->dotPerp(Lcom/voovio/geometry/Point;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/high16 v1, -0x40800000

    .line 737
    .local v1, "fSign":F
    :goto_0
    invoke-virtual {v2, v3}, Lcom/voovio/geometry/Point;->getAngle(Lcom/voovio/geometry/Point;)F

    move-result v4

    mul-float v0, v1, v4

    .line 739
    .local v0, "fAngle":F
    return v0

    .line 736
    .end local v0    # "fAngle":F
    .end local v1    # "fSign":F
    :cond_0
    const/high16 v1, 0x3f800000

    goto :goto_0
.end method


# virtual methods
.method public AddVoovio(Lcom/voovio/sweep/Voovio;Z)I
    .locals 4
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;
    .param p2, "bRegister"    # Z

    .prologue
    const/4 v3, 0x2

    .line 152
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 153
    .local v0, "nIndex":I
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    if-nez v1, :cond_0

    .line 157
    new-array v1, v3, [Lcom/voovio/sweep/Transform;

    iput-object v1, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    new-instance v2, Lcom/voovio/sweep/Transform;

    invoke-direct {v2}, Lcom/voovio/sweep/Transform;-><init>()V

    aput-object v2, v1, v0

    .line 160
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    if-nez v1, :cond_1

    .line 161
    new-array v1, v3, [Lcom/voovio/sweep/Transform;

    iput-object v1, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    new-instance v2, Lcom/voovio/sweep/Transform;

    invoke-direct {v2}, Lcom/voovio/sweep/Transform;-><init>()V

    aput-object v2, v1, v0

    .line 165
    if-eqz p2, :cond_2

    .line 166
    invoke-virtual {p1, p0, v0}, Lcom/voovio/sweep/Voovio;->RegisterTransition(Lcom/voovio/sweep/Transition;I)V

    .line 168
    :cond_2
    return v0
.end method

.method protected ComputeInOut(Lcom/voovio/voo3d/scenegraph/Camera3D;)V
    .locals 8
    .param p1, "oCamera"    # Lcom/voovio/voo3d/scenegraph/Camera3D;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 642
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aP:[Lcom/voovio/voo3d/data/Vector3;

    if-nez v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/voovio/voo3d/data/Vector3;

    iput-object v2, p0, Lcom/voovio/sweep/Transition;->m_aP:[Lcom/voovio/voo3d/data/Vector3;

    .line 643
    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aP:[Lcom/voovio/voo3d/data/Vector3;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v2, v2, v5

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    aget-object v2, v2, v5

    iget-boolean v2, v2, Lcom/voovio/sweep/Portal;->m_bI:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v2, v2, v5

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/voovio/sweep/Portal;->m_ptI:Lcom/voovio/voo3d/data/Vector3;

    :goto_0
    aput-object v2, v3, v4

    .line 644
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aP:[Lcom/voovio/voo3d/data/Vector3;

    iget v3, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    iget-object v4, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v4, v4, v5

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    aput-object v4, v2, v3

    .line 646
    iget v2, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v2, v3, :cond_3

    .line 647
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aP:[Lcom/voovio/voo3d/data/Vector3;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 650
    :goto_1
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aP:[Lcom/voovio/voo3d/data/Vector3;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 653
    iget v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    .line 655
    .local v0, "vCamDir":Lcom/voovio/voo3d/data/Vector3;
    :goto_2
    if-nez v0, :cond_5

    .line 656
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v3, v3, v4

    sget v4, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 657
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v3, v3, v4

    sget v4, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 659
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v4, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v3, v3, v4

    sget-object v4, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    iput v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    .line 688
    :cond_1
    :goto_3
    return-void

    .line 643
    .end local v0    # "vCamDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_2
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v2, v2, v5

    iget v5, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    goto/16 :goto_0

    .line 649
    :cond_3
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v3, v3, v4

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto :goto_1

    .line 653
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 662
    .restart local v0    # "vCamDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_5
    iget v2, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_6

    .line 663
    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    .line 664
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v2, v0}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 666
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v3, v3, v4

    sget v4, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 667
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v3, v3, v4

    sget v4, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 674
    :goto_4
    sget-object v2, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v2}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v2

    iput-object v2, p0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    .line 675
    new-instance v1, Lcom/voovio/voo3d/data/Vector3;

    iget v2, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-direct {v1, v2, v6, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    .line 676
    .local v1, "vK":Lcom/voovio/voo3d/data/Vector3;
    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 678
    iget v2, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v2, v3, :cond_7

    .line 679
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    iput v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepX:F

    .line 680
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    iput v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    goto/16 :goto_3

    .line 670
    .end local v1    # "vK":Lcom/voovio/voo3d/data/Vector3;
    :cond_6
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 671
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v3, v3, v4

    sget v4, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    goto :goto_4

    .line 682
    .restart local v1    # "vK":Lcom/voovio/voo3d/data/Vector3;
    :cond_7
    iget v2, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_1

    .line 683
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    neg-float v2, v2

    iput v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepX:F

    .line 684
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v3, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    neg-float v2, v2

    iput v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    .line 685
    iget v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v4, Lcom/voovio/sweep/Portal;->PORTAL_FRONT:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    sget v5, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    aget-object v4, v4, v5

    sget-object v5, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v3, v4, v5}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    goto/16 :goto_3
.end method

.method public FromAngle(F)V
    .locals 1
    .param p1, "fAngle"    # F

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/voovio/sweep/Transition;->FromAngle(FF)V

    .line 337
    return-void
.end method

.method public FromAngle(FF)V
    .locals 39
    .param p1, "fAngle"    # F
    .param p2, "fDeltaY"    # F

    .prologue
    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/voovio/sweep/Voovio;

    .line 349
    .local v25, "oVoovio":Lcom/voovio/sweep/Voovio;
    const/high16 v18, -0x3cea0000

    .line 350
    .local v18, "fOffset":F
    const v14, 0x4315cccd

    .line 352
    .local v14, "fD":F
    const/high16 v35, 0x3f000000

    move-object/from16 v0, v25

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    mul-float v20, v35, v36

    .line 353
    .local v20, "fW":F
    move-object/from16 v0, v25

    iget v15, v0, Lcom/voovio/sweep/Voovio;->m_fF:F

    .line 354
    .local v15, "fF":F
    const/high16 v35, 0x40000000

    add-float v36, v15, v18

    div-float v36, v20, v36

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->atan(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    const v36, 0x42652ee0

    mul-float v17, v35, v36

    .line 356
    .local v17, "fMaxAngle":F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 357
    .local v10, "fAngleMod":F
    const/high16 v35, 0x42b40000

    cmpl-float v35, v10, v35

    if-lez v35, :cond_0

    const/high16 v10, 0x42b40000

    .line 358
    :cond_0
    const/16 v35, 0x0

    cmpl-float v35, p1, v35

    if-ltz v35, :cond_2

    const/high16 v12, 0x3f800000

    .line 366
    .local v12, "fAngleSign":F
    :goto_0
    add-float v21, v15, v18

    .line 367
    .local v21, "fd":F
    mul-float v35, v21, v21

    mul-float v36, v20, v20

    add-float v35, v35, v36

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v35

    move-wide/from16 v0, v35

    double-to-float v0, v0

    move/from16 v19, v0

    .line 368
    .local v19, "fRadius":F
    const/high16 v35, 0x42480000

    div-float v35, v35, v19

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v35

    move-wide/from16 v0, v35

    double-to-float v11, v0

    .line 369
    .local v11, "fAngleOffset":F
    sub-float v35, v17, v11

    cmpl-float v35, v10, v35

    if-lez v35, :cond_1

    .line 370
    sub-float v10, v17, v11

    .line 372
    :cond_1
    mul-float p1, v12, v10

    .line 374
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v28, v0

    .line 375
    .local v28, "ptCamPos":Lcom/voovio/voo3d/data/Vector3;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v31, v0

    .line 376
    .local v31, "vCamDir":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v32

    .line 377
    .local v32, "vCamPerp":Lcom/voovio/voo3d/data/Vector3;
    sget-object v35, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    .line 379
    new-instance v4, Lcom/voovio/sweep/Transform;

    invoke-direct {v4}, Lcom/voovio/sweep/Transform;-><init>()V

    .line 380
    .local v4, "TRc_o":Lcom/voovio/sweep/Transform;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v37, v0

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v4, v0, v1, v2}, Lcom/voovio/sweep/Transform;->Translate(FFF)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Lcom/voovio/sweep/Transform;->Init()V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    invoke-virtual/range {v35 .. v35}, Lcom/voovio/sweep/Transform;->Init()V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    const/16 v36, 0x0

    neg-float v0, v12

    move/from16 v37, v0

    mul-float v37, v37, v10

    const/16 v38, 0x0

    invoke-virtual/range {v35 .. v38}, Lcom/voovio/sweep/Transform;->Rotate(FFF)V

    .line 389
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v34

    .line 390
    .local v34, "vOffset":Lcom/voovio/voo3d/data/Vector3;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v35, v0

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v37, v0

    move/from16 v0, v37

    neg-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v34 .. v37}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 394
    const v35, 0x3c8efa35

    mul-float v35, v35, p1

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    move-wide/from16 v0, v35

    double-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x3f800000

    sub-float v35, v35, v36

    mul-float v13, v18, v35

    .line 395
    .local v13, "fAvance":F
    const v35, 0x3c8efa35

    mul-float v35, v35, p1

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    move-wide/from16 v0, v35

    double-to-float v0, v0

    move/from16 v35, v0

    mul-float v16, v18, v35

    .line 397
    .local v16, "fLateral":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    move-object/from16 v0, v34

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v36, v0

    add-float v36, v36, v13

    move-object/from16 v0, v34

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v37, v0

    add-float v37, v37, p2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v38, v0

    add-float v38, v38, v16

    invoke-virtual/range {v35 .. v38}, Lcom/voovio/sweep/Transform;->Translate(FFF)V

    .line 398
    invoke-static/range {v34 .. v34}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/voovio/sweep/Transform;->TransformWith(Lcom/voovio/sweep/Transform;)V

    .line 404
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    const/16 v35, 0x2

    move/from16 v0, v22

    move/from16 v1, v35

    if-lt v0, v1, :cond_3

    .line 411
    add-float v35, v18, v14

    const v36, 0x3c8efa35

    mul-float v36, v36, p1

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    mul-float v35, v35, v36

    sub-float v13, v35, v18

    .line 412
    add-float v35, v18, v14

    const v36, 0x3c8efa35

    mul-float v36, v36, p1

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    mul-float v16, v35, v36

    .line 414
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v8, v0, [F

    const/16 v35, 0x0

    const/high16 v36, 0x43160000

    aput v36, v8, v35

    const/16 v35, 0x1

    aput v13, v8, v35

    .line 415
    .local v8, "afAvance":[F
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v9, v0, [F

    const/16 v35, 0x0

    const/16 v36, 0x0

    aput v36, v9, v35

    const/16 v35, 0x1

    aput v16, v9, v35

    .line 416
    .local v9, "afLateral":[F
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v5, v0, [F

    const/16 v35, 0x0

    const/16 v36, 0x0

    aput v36, v5, v35

    const/16 v35, 0x1

    aput p2, v5, v35

    .line 417
    .local v5, "afAltura":[F
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    .line 418
    .local v6, "afAnchura":[F
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v7, v0, [F

    const/16 v35, 0x0

    const/16 v36, 0x0

    aput v36, v7, v35

    const/16 v35, 0x1

    mul-float v36, v12, v10

    aput v36, v7, v35

    .line 420
    .local v7, "afAngulo":[F
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v27

    .line 421
    .local v27, "ptAvance":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v30

    .line 422
    .local v30, "ptLateral":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v26

    .line 423
    .local v26, "ptAltura":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v29

    .line 424
    .local v29, "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v33

    .line 425
    .local v33, "vDir":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v23

    .line 426
    .local v23, "oM":Lcom/voovio/voo3d/data/Matrix4;
    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v24

    .line 427
    .local v24, "oR":Lcom/voovio/voo3d/data/Matrix4;
    const/16 v22, 0x0

    :goto_2
    const/16 v35, 0x2

    move/from16 v0, v22

    move/from16 v1, v35

    if-lt v0, v1, :cond_4

    .line 463
    invoke-static/range {v27 .. v27}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 464
    invoke-static/range {v30 .. v30}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 465
    invoke-static/range {v26 .. v26}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 466
    invoke-static/range {v29 .. v29}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 467
    invoke-static/range {v33 .. v33}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 468
    invoke-static/range {v23 .. v23}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 469
    invoke-static/range {v24 .. v24}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 471
    invoke-static/range {v32 .. v32}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 475
    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/Transition;->computeAngleBetweenPortalNormals()F

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    .line 476
    const v35, 0x3c8efa35

    mul-float v35, v35, p1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    .line 477
    return-void

    .line 358
    .end local v4    # "TRc_o":Lcom/voovio/sweep/Transform;
    .end local v5    # "afAltura":[F
    .end local v6    # "afAnchura":[F
    .end local v7    # "afAngulo":[F
    .end local v8    # "afAvance":[F
    .end local v9    # "afLateral":[F
    .end local v11    # "fAngleOffset":F
    .end local v12    # "fAngleSign":F
    .end local v13    # "fAvance":F
    .end local v16    # "fLateral":F
    .end local v19    # "fRadius":F
    .end local v21    # "fd":F
    .end local v22    # "i":I
    .end local v23    # "oM":Lcom/voovio/voo3d/data/Matrix4;
    .end local v24    # "oR":Lcom/voovio/voo3d/data/Matrix4;
    .end local v26    # "ptAltura":Lcom/voovio/voo3d/data/Vector3;
    .end local v27    # "ptAvance":Lcom/voovio/voo3d/data/Vector3;
    .end local v28    # "ptCamPos":Lcom/voovio/voo3d/data/Vector3;
    .end local v29    # "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    .end local v30    # "ptLateral":Lcom/voovio/voo3d/data/Vector3;
    .end local v31    # "vCamDir":Lcom/voovio/voo3d/data/Vector3;
    .end local v32    # "vCamPerp":Lcom/voovio/voo3d/data/Vector3;
    .end local v33    # "vDir":Lcom/voovio/voo3d/data/Vector3;
    .end local v34    # "vOffset":Lcom/voovio/voo3d/data/Vector3;
    :cond_2
    const/high16 v12, -0x40800000

    goto/16 :goto_0

    .line 406
    .restart local v4    # "TRc_o":Lcom/voovio/sweep/Transform;
    .restart local v11    # "fAngleOffset":F
    .restart local v12    # "fAngleSign":F
    .restart local v13    # "fAvance":F
    .restart local v16    # "fLateral":F
    .restart local v19    # "fRadius":F
    .restart local v21    # "fd":F
    .restart local v22    # "i":I
    .restart local v28    # "ptCamPos":Lcom/voovio/voo3d/data/Vector3;
    .restart local v31    # "vCamDir":Lcom/voovio/voo3d/data/Vector3;
    .restart local v32    # "vCamPerp":Lcom/voovio/voo3d/data/Vector3;
    .restart local v34    # "vOffset":Lcom/voovio/voo3d/data/Vector3;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v35, v0

    aget-object v35, v35, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v36, v0

    aget-object v36, v36, v22

    invoke-virtual/range {v35 .. v36}, Lcom/voovio/sweep/Transform;->CopyTo(Lcom/voovio/sweep/Transform;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v35, v0

    aget-object v35, v35, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v35 .. v36}, Lcom/voovio/sweep/Transform;->GlobalToLocal(Lcom/voovio/sweep/Transform;)V

    .line 404
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 429
    .restart local v5    # "afAltura":[F
    .restart local v6    # "afAnchura":[F
    .restart local v7    # "afAngulo":[F
    .restart local v8    # "afAvance":[F
    .restart local v9    # "afLateral":[F
    .restart local v23    # "oM":Lcom/voovio/voo3d/data/Matrix4;
    .restart local v24    # "oR":Lcom/voovio/voo3d/data/Matrix4;
    .restart local v26    # "ptAltura":Lcom/voovio/voo3d/data/Vector3;
    .restart local v27    # "ptAvance":Lcom/voovio/voo3d/data/Vector3;
    .restart local v29    # "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    .restart local v30    # "ptLateral":Lcom/voovio/voo3d/data/Vector3;
    .restart local v33    # "vDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_4
    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    aget v35, v8, v22

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    .line 430
    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    aget v35, v9, v22

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    .line 431
    sget-object v35, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    aget v35, v5, v22

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    .line 433
    move-object/from16 v0, v27

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v35, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move-object/from16 v0, v26

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v36, v0

    add-float v35, v35, v36

    .line 434
    move-object/from16 v0, v27

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v36, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v37, v0

    add-float v36, v36, v37

    move-object/from16 v0, v26

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v37, v0

    add-float v36, v36, v37

    .line 435
    move-object/from16 v0, v27

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v37, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v38, v0

    add-float v37, v37, v38

    move-object/from16 v0, v26

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v38, v0

    add-float v37, v37, v38

    .line 433
    move-object/from16 v0, v29

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 436
    iget-object v0, v4, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 438
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 440
    aget v35, v7, v22

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->rotationY(F)V

    .line 441
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 442
    iget-object v0, v4, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    aget-object v35, v35, v22

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    aget-object v35, v35, v22

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget-object v35, v35, v36

    aget-object v35, v35, v22

    aget v36, v6, v22

    invoke-virtual/range {v35 .. v36}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v35, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 451
    invoke-virtual/range {v23 .. v23}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    .line 452
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v35, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 455
    invoke-virtual/range {v24 .. v24}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    .line 456
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    aget-object v35, v35, v22

    sget v36, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/voovio/sweep/Portal;->m_nType:I

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    aget-object v35, v35, v22

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    aget-object v35, v35, v22

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    aget-object v35, v35, v36

    aget-object v35, v35, v22

    aget v36, v6, v22

    invoke-virtual/range {v35 .. v36}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    .line 427
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 417
    nop

    :array_0
    .array-data 4
        0x42480000
        0x41200000
    .end array-data
.end method

.method public FromTemplate(Lcom/voovio/sweep/Template;)V
    .locals 24
    .param p1, "oTemplate"    # Lcom/voovio/sweep/Template;

    .prologue
    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x442a8000

    div-float v4, v19, v20

    .line 488
    .local v4, "fFactor":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_oSweep:Lcom/voovio/sweep/Sweep;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Sweep;->m_fFOV:F

    move/from16 v19, v0

    const/high16 v20, 0x42480000

    cmpl-float v19, v19, v20

    if-nez v19, :cond_0

    const/high16 v19, 0x3f800000

    cmpl-float v19, v4, v19

    if-eqz v19, :cond_0

    .line 489
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/voovio/sweep/Template;->clone(F)Lcom/voovio/sweep/Template;

    move-result-object p1

    .line 493
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    .line 494
    .local v13, "ptCamPos":Lcom/voovio/voo3d/data/Vector3;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v16, v0

    .line 495
    .local v16, "vCamDir":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v17

    .line 496
    .local v17, "vCamPerp":Lcom/voovio/voo3d/data/Vector3;
    sget-object v19, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    .line 498
    new-instance v3, Lcom/voovio/sweep/Transform;

    invoke-direct {v3}, Lcom/voovio/sweep/Transform;-><init>()V

    .line 499
    .local v3, "TRc_o":Lcom/voovio/sweep/Transform;
    iget v0, v13, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v13, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2}, Lcom/voovio/sweep/Transform;->Translate(FFF)V

    .line 502
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v19, 0x2

    move/from16 v0, v19

    if-lt v5, v0, :cond_1

    .line 538
    const/4 v5, 0x0

    :goto_1
    const/16 v19, 0x2

    move/from16 v0, v19

    if-lt v5, v0, :cond_3

    .line 545
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v12

    .line 546
    .local v12, "ptAvance":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v15

    .line 547
    .local v15, "ptLateral":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v11

    .line 548
    .local v11, "ptAltura":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v14

    .line 549
    .local v14, "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v18

    .line 550
    .local v18, "vDir":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v9

    .line 551
    .local v9, "oM":Lcom/voovio/voo3d/data/Matrix4;
    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v10

    .line 552
    .local v10, "oR":Lcom/voovio/voo3d/data/Matrix4;
    const/4 v5, 0x0

    :goto_2
    const/16 v19, 0x2

    move/from16 v0, v19

    if-lt v5, v0, :cond_4

    .line 584
    invoke-static {v12}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 585
    invoke-static {v15}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 586
    invoke-static {v11}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 587
    invoke-static {v14}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 588
    invoke-static/range {v18 .. v18}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 589
    invoke-static {v9}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 590
    invoke-static {v10}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 592
    invoke-static/range {v17 .. v17}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 596
    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/Transition;->computeAngleBetweenPortalNormals()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    .line 597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    .line 598
    return-void

    .line 504
    .end local v9    # "oM":Lcom/voovio/voo3d/data/Matrix4;
    .end local v10    # "oR":Lcom/voovio/voo3d/data/Matrix4;
    .end local v11    # "ptAltura":Lcom/voovio/voo3d/data/Vector3;
    .end local v12    # "ptAvance":Lcom/voovio/voo3d/data/Vector3;
    .end local v14    # "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    .end local v15    # "ptLateral":Lcom/voovio/voo3d/data/Vector3;
    .end local v18    # "vDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    invoke-virtual/range {v19 .. v19}, Lcom/voovio/sweep/Transform;->Init()V

    .line 506
    if-lez v5, :cond_2

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    move-object/from16 v21, v0

    aget-object v21, v21, v5

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/sweep/Template$Position;->m_fAngulo:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Lcom/voovio/sweep/Transform;->Rotate(FFF)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    .line 513
    .local v6, "l_vCamPos":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v7

    .line 514
    .local v7, "l_vDir":Lcom/voovio/voo3d/data/Vector3;
    iget v0, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v7, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 515
    invoke-virtual {v7}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 516
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/sweep/Template$Position;->m_fOffset:F

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    .line 518
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v8

    .line 519
    .local v8, "l_vOffset":Lcom/voovio/voo3d/data/Vector3;
    iget v0, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 520
    invoke-virtual {v8, v7}, Lcom/voovio/voo3d/data/Vector3;->add(Lcom/voovio/voo3d/data/Vector3;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/sweep/Template$Position;->m_fAvance:F

    move/from16 v20, v0

    iget v0, v8, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v21, v0

    add-float v20, v20, v21

    .line 526
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    move-object/from16 v21, v0

    aget-object v21, v21, v5

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/sweep/Template$Position;->m_fAltura:F

    move/from16 v21, v0

    iget v0, v8, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v22, v0

    add-float v21, v21, v22

    .line 527
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_aPositions:[Lcom/voovio/sweep/Template$Position;

    move-object/from16 v22, v0

    aget-object v22, v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Lcom/voovio/sweep/Template$Position;->m_fLateral:F

    move/from16 v22, v0

    iget v0, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v23, v0

    add-float v22, v22, v23

    .line 525
    invoke-virtual/range {v19 .. v22}, Lcom/voovio/sweep/Transform;->Translate(FFF)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/voovio/sweep/Transform;->TransformWith(Lcom/voovio/sweep/Transform;)V

    .line 532
    invoke-static {v7}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 533
    invoke-static {v8}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 502
    .end local v6    # "l_vCamPos":Lcom/voovio/voo3d/data/Vector3;
    .end local v7    # "l_vDir":Lcom/voovio/voo3d/data/Vector3;
    .end local v8    # "l_vOffset":Lcom/voovio/voo3d/data/Vector3;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 540
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    invoke-virtual/range {v19 .. v20}, Lcom/voovio/sweep/Transform;->CopyTo(Lcom/voovio/sweep/Transform;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Lcom/voovio/sweep/Transform;->GlobalToLocal(Lcom/voovio/sweep/Transform;)V

    .line 538
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 554
    .restart local v9    # "oM":Lcom/voovio/voo3d/data/Matrix4;
    .restart local v10    # "oR":Lcom/voovio/voo3d/data/Matrix4;
    .restart local v11    # "ptAltura":Lcom/voovio/voo3d/data/Vector3;
    .restart local v12    # "ptAvance":Lcom/voovio/voo3d/data/Vector3;
    .restart local v14    # "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    .restart local v15    # "ptLateral":Lcom/voovio/voo3d/data/Vector3;
    .restart local v18    # "vDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fAvance:[F

    move-object/from16 v19, v0

    aget v19, v19, v5

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    .line 555
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fLateral:[F

    move-object/from16 v19, v0

    aget v19, v19, v5

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    .line 556
    sget-object v19, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fAltura:[F

    move-object/from16 v19, v0

    aget v19, v19, v5

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/voovio/voo3d/data/Vector3;->scale(F)V

    .line 558
    iget v0, v12, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    iget v0, v15, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v20, v0

    add-float v19, v19, v20

    iget v0, v11, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v20, v0

    add-float v19, v19, v20

    .line 559
    iget v0, v12, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v20, v0

    iget v0, v15, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v11, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v21, v0

    add-float v20, v20, v21

    .line 560
    iget v0, v12, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    iget v0, v15, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v22, v0

    add-float v21, v21, v22

    iget v0, v11, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v22, v0

    add-float v21, v21, v22

    .line 558
    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 561
    iget-object v0, v3, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 563
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-object v19, v19, v5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fAnchura:[F

    move-object/from16 v20, v0

    aget v20, v20, v5

    invoke-virtual/range {v19 .. v20}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 572
    invoke-virtual {v9}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    .line 573
    invoke-virtual {v9, v14}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 576
    invoke-virtual {v10}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    .line 577
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-object v19, v19, v5

    sget v20, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/voovio/sweep/Portal;->m_nType:I

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-object v19, v19, v5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Template;->m_fAnchura:[F

    move-object/from16 v20, v0

    aget v20, v20, v5

    invoke-virtual/range {v19 .. v20}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    .line 552
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2
.end method

.method public FromTranslation(Lcom/voovio/voo3d/data/Vector3;)V
    .locals 12
    .param p1, "vT"    # Lcom/voovio/voo3d/data/Vector3;

    .prologue
    .line 269
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/voovio/sweep/Voovio;

    iget-object v3, v9, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    .line 270
    .local v3, "ptCamPos":Lcom/voovio/voo3d/data/Vector3;
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/voovio/sweep/Voovio;

    iget-object v7, v9, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    .line 272
    .local v7, "vCamDir":Lcom/voovio/voo3d/data/Vector3;
    new-instance v0, Lcom/voovio/sweep/Transform;

    invoke-direct {v0}, Lcom/voovio/sweep/Transform;-><init>()V

    .line 273
    .local v0, "TRc_o":Lcom/voovio/sweep/Transform;
    iget v9, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    const/4 v10, 0x0

    iget v11, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v0, v9, v10, v11}, Lcom/voovio/sweep/Transform;->Translate(FFF)V

    .line 276
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/voovio/sweep/Transform;->Init()V

    .line 277
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/voovio/sweep/Transform;->Init()V

    .line 280
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9, p1}, Lcom/voovio/sweep/Transform;->Translate(Lcom/voovio/voo3d/data/Vector3;)V

    .line 283
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v9, 0x2

    if-lt v1, v9, :cond_0

    .line 290
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v6

    .line 291
    .local v6, "v":Lcom/voovio/voo3d/data/Vector3;
    invoke-virtual {v6, p1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 292
    invoke-virtual {v6}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    move-result v5

    .line 294
    .local v5, "s":F
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v4

    .line 295
    .local v4, "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v8

    .line 296
    .local v8, "vDir":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v2

    .line 298
    .local v2, "oM":Lcom/voovio/voo3d/data/Matrix4;
    invoke-virtual {v8, v7}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 299
    const/4 v1, 0x0

    :goto_1
    const/4 v9, 0x2

    if-lt v1, v9, :cond_1

    .line 322
    invoke-static {v6}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 323
    invoke-static {v4}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 324
    invoke-static {v8}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 325
    invoke-static {v2}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 329
    invoke-direct {p0}, Lcom/voovio/sweep/Transition;->computeAngleBetweenPortalNormals()F

    move-result v9

    iput v9, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    .line 330
    iget v9, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    iput v9, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    .line 331
    return-void

    .line 285
    .end local v2    # "oM":Lcom/voovio/voo3d/data/Matrix4;
    .end local v4    # "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    .end local v5    # "s":F
    .end local v6    # "v":Lcom/voovio/voo3d/data/Vector3;
    .end local v8    # "vDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_0
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Lcom/voovio/sweep/Transform;->CopyTo(Lcom/voovio/sweep/Transform;)V

    .line 286
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Lcom/voovio/sweep/Transform;->GlobalToLocal(Lcom/voovio/sweep/Transform;)V

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    .restart local v2    # "oM":Lcom/voovio/voo3d/data/Matrix4;
    .restart local v4    # "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    .restart local v5    # "s":F
    .restart local v6    # "v":Lcom/voovio/voo3d/data/Vector3;
    .restart local v8    # "vDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_1
    if-nez v1, :cond_2

    .line 302
    invoke-direct {p0, v6, v5, v4}, Lcom/voovio/sweep/Transition;->GetIntermediatePoint(Lcom/voovio/voo3d/data/Vector3;FLcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    .line 305
    :goto_2
    iget-object v9, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v9, v4}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 308
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    invoke-virtual {v9, v4}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    .line 309
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    invoke-virtual {v9, v8}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    .line 310
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    const/high16 v10, 0x42480000

    invoke-virtual {v9, v10}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    .line 313
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v2, v9}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 314
    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    .line 315
    invoke-virtual {v2, v4}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 317
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    sget v10, Lcom/voovio/sweep/Portal;->PORTAL_REAR:I

    iput v10, v9, Lcom/voovio/sweep/Portal;->m_nType:I

    .line 318
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    invoke-virtual {v9, v4}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    .line 319
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    invoke-virtual {v9, v8}, Lcom/voovio/sweep/Portal;->SetPortalNormal(Lcom/voovio/voo3d/data/Vector3;)V

    .line 320
    iget-object v9, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-object v9, v9, v1

    const/high16 v10, 0x41200000

    invoke-virtual {v9, v10}, Lcom/voovio/sweep/Portal;->SetPortalWidth(F)V

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 304
    :cond_2
    iget v9, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    const v10, 0x3dcccccd

    add-float/2addr v9, v10

    iget v10, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v11, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v4, v9, v10, v11}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_2
.end method

.method public GetFinalPosition(Lcom/voovio/voo3d/data/Vector3;)V
    .locals 5
    .param p1, "ptPos"    # Lcom/voovio/voo3d/data/Vector3;

    .prologue
    .line 720
    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v3, v3, v4

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    aget-object v3, v3, v4

    iget-object v2, v3, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    .line 721
    .local v2, "vN":Lcom/voovio/voo3d/data/Vector3;
    iget v3, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v4, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    .line 722
    .local v1, "ptOut":Lcom/voovio/voo3d/data/Vector3;
    :goto_0
    iget v3, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v4, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v3, v4, :cond_1

    const v0, 0x3dcccccd

    .line 724
    .local v0, "fFactor":F
    :goto_1
    iget v3, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v4, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 725
    iget v3, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v4, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 726
    iget v3, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v4, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 727
    return-void

    .line 721
    .end local v0    # "fFactor":F
    .end local v1    # "ptOut":Lcom/voovio/voo3d/data/Vector3;
    :cond_0
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    goto :goto_0

    .line 722
    .restart local v1    # "ptOut":Lcom/voovio/voo3d/data/Vector3;
    :cond_1
    const v0, -0x42333333

    goto :goto_1
.end method

.method public GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V
    .locals 5
    .param p1, "fFactor"    # F
    .param p2, "ptPos"    # Lcom/voovio/voo3d/data/Vector3;
    .param p3, "vDir"    # Lcom/voovio/voo3d/data/Vector3;

    .prologue
    const/4 v4, 0x0

    .line 694
    const/high16 v1, -0x40800000

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v2, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x3f800000

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v2, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    .line 695
    :cond_1
    iget v1, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v2, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v0, v1, v4

    .line 697
    .local v0, "oTR":Lcom/voovio/sweep/Transform;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/voovio/sweep/Transition;->GetFinalPosition(Lcom/voovio/voo3d/data/Vector3;)V

    .line 698
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v2, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p3, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 700
    iget-object v1, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, p2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 701
    iget-object v1, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, p3}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 714
    .end local v0    # "oTR":Lcom/voovio/sweep/Transform;
    :goto_1
    return-void

    .line 695
    :cond_2
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    goto :goto_0

    .line 704
    :cond_3
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p2, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 705
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p2, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 706
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p2, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 708
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    aget-object v1, v1, v4

    invoke-virtual {p3, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 710
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    if-eqz v1, :cond_4

    .line 711
    iget v1, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepX:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p3, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    .line 712
    :cond_4
    iget v1, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    mul-float/2addr v1, p1

    invoke-virtual {p3, v1}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    goto :goto_1
.end method

.method public RemoveVoovio(I)V
    .locals 2
    .param p1, "nIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, p0}, Lcom/voovio/sweep/Voovio;->UnRegisterTransition(Lcom/voovio/sweep/Transition;)V

    .line 176
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aput-object v1, v0, p1

    .line 179
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aput-object v1, v0, p1

    .line 180
    return-void
.end method

.method public RemoveVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 3
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    .line 186
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 187
    .local v1, "nVoovios":I
    const/4 v0, 0x0

    .local v0, "nIndex":I
    :goto_0
    if-lt v0, v1, :cond_2

    .line 193
    :cond_0
    if-ge v0, v1, :cond_1

    .line 194
    invoke-virtual {p0, v0}, Lcom/voovio/sweep/Transition;->RemoveVoovio(I)V

    .line 195
    :cond_1
    return-void

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq p1, v2, :cond_0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public Setup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 625
    sget v0, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    .line 626
    iput v2, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    .line 627
    const/4 v0, 0x1

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    .line 629
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iget v1, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    aget-object v0, v0, v1

    iput-boolean v2, v0, Lcom/voovio/sweep/Portal;->m_bI:Z

    .line 631
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/voovio/sweep/Transition;->ComputeInOut(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 633
    const/high16 v0, 0x42700000

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_fD:F

    .line 635
    return-void
.end method

.method public TestTransition(ILcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/scenegraph/Camera3D;)Z
    .locals 4
    .param p1, "nDir"    # I
    .param p2, "pt0"    # Lcom/voovio/voo3d/data/Vector3;
    .param p3, "pt1"    # Lcom/voovio/voo3d/data/Vector3;
    .param p4, "oCamera"    # Lcom/voovio/voo3d/scenegraph/Camera3D;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 604
    iput p1, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    .line 605
    sget v0, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    .line 606
    iget v0, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    .line 608
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v0, v0, p1

    iget v3, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    aget-object v0, v0, v3

    invoke-virtual {v0, p2, p3}, Lcom/voovio/sweep/Portal;->TestGoAcross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    invoke-virtual {p0, p4}, Lcom/voovio/sweep/Transition;->ComputeInOut(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 612
    const/high16 v0, 0x42700000

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_fD:F

    .line 618
    :goto_2
    return v2

    :cond_0
    move v0, v2

    .line 605
    goto :goto_0

    :cond_1
    move v0, v1

    .line 606
    goto :goto_1

    :cond_2
    move v2, v1

    .line 618
    goto :goto_2
.end method

.method public TranslateRearPortalToVoovioOrigin()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 788
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    .line 790
    .local v0, "oVoovio":Lcom/voovio/sweep/Voovio;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    .line 791
    .local v1, "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    iget-object v2, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    const v3, 0x3dcccccd

    add-float/2addr v2, v3

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 793
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v2, v2, v5

    aget-object v2, v2, v5

    invoke-virtual {v2, v1}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    .line 795
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v2, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 797
    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v2, v2, v6

    aget-object v2, v2, v5

    invoke-virtual {v2, v1}, Lcom/voovio/sweep/Portal;->SetPortalCenter(Lcom/voovio/voo3d/data/Vector3;)V

    .line 799
    invoke-static {v1}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 800
    return-void
.end method

.method public clone()Lcom/voovio/sweep/Transition;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/voovio/sweep/Transition;

    invoke-direct {v0}, Lcom/voovio/sweep/Transition;-><init>()V

    .line 133
    .local v0, "oTransition":Lcom/voovio/sweep/Transition;
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    iput-object v1, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    .line 134
    iget v1, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    iput v1, v0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    .line 137
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    iput-object v1, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    .line 138
    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    iput-object v1, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    .line 141
    iget v1, p0, Lcom/voovio/sweep/Transition;->m_fWalkingSteps:F

    iput v1, v0, Lcom/voovio/sweep/Transition;->m_fWalkingSteps:F

    .line 144
    iget v1, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    iput v1, v0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    .line 146
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/voovio/sweep/Transition;->clone()Lcom/voovio/sweep/Transition;

    move-result-object v0

    return-object v0
.end method

.method public getAngleBetweenPortalNormals()F
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    return v0
.end method

.method public getAngleToV1(Lcom/voovio/voo3d/data/Vector3;)F
    .locals 6
    .param p1, "v0"    # Lcom/voovio/voo3d/data/Vector3;

    .prologue
    const/4 v0, 0x0

    .line 806
    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_v2:Lcom/voovio/voo3d/data/Vector3;

    iget-object v4, p0, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    sget-object v5, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v3, v4, v5}, Lcom/voovio/voo3d/data/Vector3;->dotPerp(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    .line 807
    .local v2, "fDotPerp21":F
    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    sget-object v4, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p1, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->dotPerp(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v1

    .line 809
    .local v1, "fDotPerp01":F
    mul-float v3, v1, v2

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    .line 810
    iget-object v3, p0, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    sget-object v4, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p1, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v0

    .line 811
    .local v0, "fAngle":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/voovio/sweep/Transition;->m_fAngle_v1_v2:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fAngle_v1_v2:F

    .line 814
    .end local v0    # "fAngle":F
    :cond_0
    return v0
.end method

.method public getRotationAngle()F
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    return v0
.end method

.method public getWalkingSteps()F
    .locals 1

    .prologue
    .line 774
    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fWalkingSteps:F

    return v0
.end method

.method public isRotation()Z
    .locals 2

    .prologue
    .line 753
    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRotationAngle(F)V
    .locals 0
    .param p1, "fAngle"    # F

    .prologue
    .line 767
    iput p1, p0, Lcom/voovio/sweep/Transition;->m_fRotationAngle:F

    .line 768
    return-void
.end method

.method public setWalkingSteps(F)V
    .locals 0
    .param p1, "fSteps"    # F

    .prologue
    .line 781
    iput p1, p0, Lcom/voovio/sweep/Transition;->m_fWalkingSteps:F

    .line 782
    return-void
.end method
