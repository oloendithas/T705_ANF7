.class public Lcom/voovio/sweep/Rotation;
.super Lcom/voovio/sweep/Transition;
.source "Rotation.java"


# instance fields
.field m_fOverlapping:F

.field m_fTurnDirection:F

.field m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

.field m_oTransition:Lcom/voovio/sweep/Transition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/Rotation;-><init>(Lcom/voovio/sweep/Sweep;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/voovio/sweep/Sweep;)V
    .locals 3
    .param p1, "oSweep"    # Lcom/voovio/sweep/Sweep;

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/voovio/sweep/Transition;-><init>(Lcom/voovio/sweep/Sweep;)V

    .line 11
    iput-object v1, p0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 13
    iput v0, p0, Lcom/voovio/sweep/Rotation;->m_fTurnDirection:F

    .line 14
    iput v0, p0, Lcom/voovio/sweep/Rotation;->m_fOverlapping:F

    .line 17
    iput-object v1, p0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    .line 31
    sget v0, Lcom/voovio/sweep/Rotation;->DIR_0_1:I

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nDir:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    .line 35
    new-array v0, v2, [Lcom/voovio/sweep/Transform;

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    .line 36
    new-array v0, v2, [Lcom/voovio/sweep/Transform;

    iput-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    .line 38
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method


# virtual methods
.method public GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V
    .locals 4
    .param p1, "fFactor"    # F
    .param p2, "ptPos"    # Lcom/voovio/voo3d/data/Vector3;
    .param p3, "vDir"    # Lcom/voovio/voo3d/data/Vector3;

    .prologue
    const/4 v3, 0x0

    .line 254
    const/high16 v0, -0x40800000

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p2, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 256
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0, p2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 258
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 259
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0, p3}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 270
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 263
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 264
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v2, p0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 266
    iget-object v0, p0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    aget-object v0, v0, v3

    invoke-virtual {p3, v0}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 267
    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepX:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {p3, v0, v1}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    .line 268
    iget v0, p0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    mul-float/2addr v0, p1

    invoke-virtual {p3, v0}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    goto :goto_0
.end method

.method public Setup(Lcom/voovio/sweep/Transition;Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/FrustumLimiter;Z)V
    .locals 29
    .param p1, "oTransition"    # Lcom/voovio/sweep/Transition;
    .param p2, "oCurVoovio"    # Lcom/voovio/sweep/Voovio;
    .param p3, "oCamera"    # Lcom/voovio/voo3d/scenegraph/Camera3D;
    .param p4, "oLimiter"    # Lcom/voovio/sweep/FrustumLimiter;
    .param p5, "bUseCamera"    # Z

    .prologue
    .line 46
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 48
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_4

    const/4 v13, 0x1

    .line 49
    .local v13, "nextIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 52
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v13, v0, :cond_5

    sget v24, Lcom/voovio/sweep/Rotation;->DIR_0_1:I

    :goto_1
    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_nDir:I

    .line 53
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v13, v0, :cond_6

    const/16 v24, 0x0

    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    .line 54
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v13, v0, :cond_7

    const/16 v24, 0x1

    :goto_3
    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    .line 55
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Transition;->ComputeInOut(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/voovio/sweep/Transition;->getRotationAngle()F

    move-result v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_9

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v13, v0, :cond_8

    const/high16 v24, 0x3f800000

    :goto_4
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Rotation;->m_fTurnDirection:F

    .line 62
    const/high16 v24, 0x3f000000

    move-object/from16 v0, p2

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v12, v24, v25

    .line 63
    .local v12, "fW":F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_fF:F

    move/from16 v24, v0

    const/high16 v25, -0x3cea0000

    add-float v8, v24, v25

    .line 64
    .local v8, "fD":F
    const/high16 v24, 0x40000000

    div-float v25, v12, v8

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->atan(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    mul-float v9, v24, v25

    .line 65
    .local v9, "fFOVh":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Transition;->m_fAngleBetweenPortalNormals:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    sub-float v4, v9, v24

    .line 67
    .local v4, "fAngle":F
    const/high16 v24, 0x44800000

    mul-float v24, v24, v4

    div-float v24, v24, v9

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Rotation;->m_fOverlapping:F

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v13, v0, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v24, v0

    const/16 v27, 0x0

    aget-object v24, v24, v27

    :goto_5
    aput-object v24, v25, v26

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v13, v0, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v24, v0

    const/16 v27, 0x1

    aget-object v24, v24, v27

    :goto_6
    aput-object v24, v25, v26

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v13, v0, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v24, v0

    const/16 v27, 0x0

    aget-object v24, v24, v27

    :goto_7
    aput-object v24, v25, v26

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v13, v0, :cond_e

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v24, v0

    const/16 v27, 0x1

    aget-object v24, v24, v27

    :goto_8
    aput-object v24, v25, v26

    .line 75
    move-object/from16 v0, p2

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000

    div-float v23, v24, v25

    .line 76
    .local v23, "width2":F
    invoke-virtual/range {p1 .. p1}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v7

    .line 77
    .local v7, "fAngleY":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/voovio/sweep/Transition;->m_nDir:I

    move/from16 v24, v0

    sget v25, Lcom/voovio/sweep/Rotation;->DIR_1_0:I

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const/high16 v24, -0x40800000

    mul-float v7, v7, v24

    .line 78
    :cond_0
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v24

    div-float v11, v7, v24

    .line 79
    .local v11, "fSign":F
    neg-float v0, v11

    move/from16 v24, v0

    invoke-virtual/range {p3 .. p3}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFovH()F

    move-result v25

    mul-float v24, v24, v25

    const v25, 0x3c8efa35

    mul-float v24, v24, v25

    const/high16 v25, 0x40000000

    div-float v10, v24, v25

    .line 81
    .local v10, "fFovH2":F
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v14

    .line 82
    .local v14, "ptC":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v21

    .line 83
    .local v21, "vOutDir0":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v22

    .line 85
    .local v22, "vOutDir1":Lcom/voovio/voo3d/data/Vector3;
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    cmpg-float v26, v11, v26

    if-gez v26, :cond_1

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    .end local v23    # "width2":F
    :cond_1
    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v14, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 87
    if-eqz p5, :cond_f

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    .line 88
    .local v15, "ptCamPos":Lcom/voovio/voo3d/data/Vector3;
    :goto_9
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v17, v0

    .line 89
    .local v17, "vCamDir":Lcom/voovio/voo3d/data/Vector3;
    if-nez p5, :cond_2

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v14, v0}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v17

    .line 91
    invoke-virtual/range {v17 .. v17}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 92
    neg-float v0, v10

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    .line 96
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptIn:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/voovio/sweep/Transition;->GetFinalPosition(Lcom/voovio/voo3d/data/Vector3;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 102
    iget v0, v14, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    iget v0, v14, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    iget v0, v14, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 103
    invoke-virtual/range {v21 .. v21}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 104
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    .line 105
    if-eqz p5, :cond_3

    .line 106
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v21

    iput v0, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 107
    invoke-virtual/range {v21 .. v21}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 110
    :cond_3
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 111
    move-object/from16 v0, v22

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v24, v0

    const/high16 v25, -0x40800000

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v22

    iput v0, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 114
    sget-object v24, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v5

    .line 115
    .local v5, "fAngle0":F
    sget-object v24, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    .line 116
    .local v6, "fAngle1":F
    mul-float v24, v6, v5

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v24

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v25

    cmpg-float v24, v24, v25

    if-gez v24, :cond_10

    move-object/from16 v20, v22

    .line 118
    .local v20, "vOutDir":Lcom/voovio/voo3d/data/Vector3;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v16

    .line 119
    .local v16, "ptPos":Lcom/voovio/voo3d/data/Vector3;
    move-object/from16 v18, v20

    .line 121
    .local v18, "vDir":Lcom/voovio/voo3d/data/Vector3;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v24, v0

    if-nez v24, :cond_11

    .line 125
    invoke-virtual/range {p3 .. p3}, Lcom/voovio/voo3d/scenegraph/Camera3D;->Clone()Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    .line 128
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v25, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v26, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v24 .. v28}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    .line 131
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    sget-object v25, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual/range {v24 .. v25}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    .line 140
    new-instance v19, Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    .line 141
    .local v19, "vK":Lcom/voovio/voo3d/data/Vector3;
    invoke-virtual/range {v19 .. v19}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fAngleStepX:F

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_vInOutDir:[Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    sget-object v26, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual/range {v24 .. v26}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/voovio/sweep/Transition;->m_fAngleStepY:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    const v25, 0x42652ee0

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fD:F

    .line 150
    invoke-static {v14}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 151
    invoke-static/range {v21 .. v21}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 152
    invoke-static/range {v22 .. v22}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 153
    return-void

    .line 48
    .end local v4    # "fAngle":F
    .end local v5    # "fAngle0":F
    .end local v6    # "fAngle1":F
    .end local v7    # "fAngleY":F
    .end local v8    # "fD":F
    .end local v9    # "fFOVh":F
    .end local v10    # "fFovH2":F
    .end local v11    # "fSign":F
    .end local v12    # "fW":F
    .end local v13    # "nextIndex":I
    .end local v14    # "ptC":Lcom/voovio/voo3d/data/Vector3;
    .end local v15    # "ptCamPos":Lcom/voovio/voo3d/data/Vector3;
    .end local v16    # "ptPos":Lcom/voovio/voo3d/data/Vector3;
    .end local v17    # "vCamDir":Lcom/voovio/voo3d/data/Vector3;
    .end local v18    # "vDir":Lcom/voovio/voo3d/data/Vector3;
    .end local v19    # "vK":Lcom/voovio/voo3d/data/Vector3;
    .end local v20    # "vOutDir":Lcom/voovio/voo3d/data/Vector3;
    .end local v21    # "vOutDir0":Lcom/voovio/voo3d/data/Vector3;
    .end local v22    # "vOutDir1":Lcom/voovio/voo3d/data/Vector3;
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 52
    .restart local v13    # "nextIndex":I
    :cond_5
    sget v24, Lcom/voovio/sweep/Rotation;->DIR_1_0:I

    goto/16 :goto_1

    .line 53
    :cond_6
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 54
    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 58
    :cond_8
    const/high16 v24, -0x40800000

    goto/16 :goto_4

    .line 59
    :cond_9
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v13, v0, :cond_a

    const/high16 v24, -0x40800000

    goto/16 :goto_4

    :cond_a
    const/high16 v24, 0x3f800000

    goto/16 :goto_4

    .line 70
    .restart local v4    # "fAngle":F
    .restart local v8    # "fD":F
    .restart local v9    # "fFOVh":F
    .restart local v12    # "fW":F
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v24, v0

    const/16 v27, 0x1

    aget-object v24, v24, v27

    goto/16 :goto_5

    .line 71
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v24, v0

    const/16 v27, 0x0

    aget-object v24, v24, v27

    goto/16 :goto_6

    .line 72
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v24, v0

    const/16 v27, 0x1

    aget-object v24, v24, v27

    goto/16 :goto_7

    .line 73
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v24, v0

    const/16 v27, 0x0

    aget-object v24, v24, v27

    goto/16 :goto_8

    .line 87
    .restart local v7    # "fAngleY":F
    .restart local v10    # "fFovH2":F
    .restart local v11    # "fSign":F
    .restart local v14    # "ptC":Lcom/voovio/voo3d/data/Vector3;
    .restart local v21    # "vOutDir0":Lcom/voovio/voo3d/data/Vector3;
    .restart local v22    # "vOutDir1":Lcom/voovio/voo3d/data/Vector3;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    goto/16 :goto_9

    .restart local v5    # "fAngle0":F
    .restart local v6    # "fAngle1":F
    .restart local v15    # "ptCamPos":Lcom/voovio/voo3d/data/Vector3;
    .restart local v17    # "vCamDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_10
    move-object/from16 v20, v21

    .line 116
    goto/16 :goto_a

    .line 127
    .restart local v16    # "ptPos":Lcom/voovio/voo3d/data/Vector3;
    .restart local v18    # "vDir":Lcom/voovio/voo3d/data/Vector3;
    .restart local v20    # "vOutDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->CopyTo(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    goto/16 :goto_b
.end method

.method public compute_v2(Lcom/voovio/sweep/Transition;Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/FrustumLimiter;)V
    .locals 23
    .param p1, "oTransition"    # Lcom/voovio/sweep/Transition;
    .param p2, "oCurVoovio"    # Lcom/voovio/sweep/Voovio;
    .param p3, "oCamera"    # Lcom/voovio/voo3d/scenegraph/Camera3D;
    .param p4, "oLimiter"    # Lcom/voovio/sweep/FrustumLimiter;

    .prologue
    .line 159
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 161
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_2

    const/4 v8, 0x1

    .line 162
    .local v8, "nextIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_3

    sget v18, Lcom/voovio/sweep/Rotation;->DIR_0_1:I

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_nDir:I

    .line 166
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_4

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_nPortalIn:I

    .line 167
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_5

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    .line 168
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/Transition;->ComputeInOut(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/voovio/sweep/Transition;->getRotationAngle()F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_7

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_6

    const/high16 v18, 0x3f800000

    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/voovio/sweep/Rotation;->m_fTurnDirection:F

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    aget-object v18, v18, v21

    :goto_5
    aput-object v18, v19, v20

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x1

    aget-object v18, v18, v21

    :goto_6
    aput-object v18, v19, v20

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    aget-object v18, v18, v21

    :goto_7
    aput-object v18, v19, v20

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x1

    aget-object v18, v18, v21

    :goto_8
    aput-object v18, v19, v20

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/voovio/sweep/Transition;->GetFinalPosition(Lcom/voovio/voo3d/data/Vector3;)V

    .line 183
    move-object/from16 v0, p2

    iget v0, v0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v17, v18, v19

    .line 185
    .local v17, "width2":F
    invoke-virtual/range {p1 .. p1}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v5

    .line 186
    .local v5, "fAngleY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/voovio/sweep/Transition;->m_nDir:I

    move/from16 v18, v0

    sget v19, Lcom/voovio/sweep/Rotation;->DIR_1_0:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/high16 v18, -0x40800000

    mul-float v5, v5, v18

    .line 187
    :cond_0
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v18

    div-float v7, v5, v18

    .line 188
    .local v7, "fSign":F
    neg-float v0, v7

    move/from16 v18, v0

    invoke-virtual/range {p3 .. p3}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFovH()F

    move-result v19

    mul-float v18, v18, v19

    const v19, 0x3c8efa35

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000

    div-float v6, v18, v19

    .line 190
    .local v6, "fFovH2":F
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v9

    .line 191
    .local v9, "ptC":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v15

    .line 192
    .local v15, "vOutDir0":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v16

    .line 193
    .local v16, "vOutDir1":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v12

    .line 195
    .local v12, "vCamDir":Lcom/voovio/voo3d/data/Vector3;
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    cmpg-float v20, v7, v20

    if-gez v20, :cond_1

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    .end local v17    # "width2":F
    :cond_1
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v9, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 196
    iget v0, v9, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v9, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    iget v0, v9, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 197
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v15, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 198
    invoke-virtual {v15}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 199
    invoke-virtual {v15, v6}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    .line 202
    .local v10, "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    iget v0, v9, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v18, v0

    iget v0, v10, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v9, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v19, v0

    iget v0, v10, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    iget v0, v9, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v20, v0

    iget v0, v10, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v12, v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 203
    invoke-virtual {v12}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 204
    neg-float v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    .line 206
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 207
    move-object/from16 v0, v16

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v18, v0

    const/high16 v19, -0x40800000

    mul-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 210
    sget-object v18, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v3

    .line 211
    .local v3, "fAngle0":F
    sget-object v18, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    .line 212
    .local v4, "fAngle1":F
    mul-float v18, v4, v3

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_d

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v18

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v19

    cmpg-float v18, v18, v19

    if-gez v18, :cond_d

    move-object/from16 v14, v16

    .line 214
    .local v14, "vOutDir":Lcom/voovio/voo3d/data/Vector3;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_ptOut:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v11

    .line 215
    .local v11, "ptPos":Lcom/voovio/voo3d/data/Vector3;
    move-object v13, v14

    .line 217
    .local v13, "vDir":Lcom/voovio/voo3d/data/Vector3;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    if-nez v18, :cond_e

    .line 221
    invoke-virtual/range {p3 .. p3}, Lcom/voovio/voo3d/scenegraph/Camera3D;->Clone()Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    .line 224
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    iget v0, v11, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    iget v0, v11, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v20, v0

    iget v0, v11, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    iget v0, v13, Lcom/voovio/voo3d/data/Vector3;->x:F

    move/from16 v19, v0

    iget v0, v13, Lcom/voovio/voo3d/data/Vector3;->y:F

    move/from16 v20, v0

    iget v0, v13, Lcom/voovio/voo3d/data/Vector3;->z:F

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v18 .. v22}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/voovio/sweep/FrustumLimiter;->TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/voovio/sweep/Transform;->m_oR:Lcom/voovio/voo3d/data/Matrix4;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/voovio/sweep/Transition;->m_v2:Lcom/voovio/voo3d/data/Vector3;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_v2:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v20, v0

    sget-object v21, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual/range {v19 .. v21}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fAngle_v1_v2:F

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_v1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v19, v0

    sget-object v20, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/voovio/sweep/Transition;->m_fAngle_v1_vt:F

    .line 235
    invoke-static {v9}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 236
    invoke-static {v15}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 237
    invoke-static/range {v16 .. v16}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 238
    invoke-static {v12}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 239
    return-void

    .line 161
    .end local v3    # "fAngle0":F
    .end local v4    # "fAngle1":F
    .end local v5    # "fAngleY":F
    .end local v6    # "fFovH2":F
    .end local v7    # "fSign":F
    .end local v8    # "nextIndex":I
    .end local v9    # "ptC":Lcom/voovio/voo3d/data/Vector3;
    .end local v10    # "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    .end local v11    # "ptPos":Lcom/voovio/voo3d/data/Vector3;
    .end local v12    # "vCamDir":Lcom/voovio/voo3d/data/Vector3;
    .end local v13    # "vDir":Lcom/voovio/voo3d/data/Vector3;
    .end local v14    # "vOutDir":Lcom/voovio/voo3d/data/Vector3;
    .end local v15    # "vOutDir0":Lcom/voovio/voo3d/data/Vector3;
    .end local v16    # "vOutDir1":Lcom/voovio/voo3d/data/Vector3;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 165
    .restart local v8    # "nextIndex":I
    :cond_3
    sget v18, Lcom/voovio/sweep/Rotation;->DIR_1_0:I

    goto/16 :goto_1

    .line 166
    :cond_4
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 167
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 171
    :cond_6
    const/high16 v18, -0x40800000

    goto/16 :goto_4

    .line 172
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_8

    const/high16 v18, -0x40800000

    goto/16 :goto_4

    :cond_8
    const/high16 v18, 0x3f800000

    goto/16 :goto_4

    .line 175
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x1

    aget-object v18, v18, v21

    goto/16 :goto_5

    .line 176
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    aget-object v18, v18, v21

    goto/16 :goto_6

    .line 177
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x1

    aget-object v18, v18, v21

    goto/16 :goto_7

    .line 178
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    aget-object v18, v18, v21

    goto/16 :goto_8

    .restart local v3    # "fAngle0":F
    .restart local v4    # "fAngle1":F
    .restart local v5    # "fAngleY":F
    .restart local v6    # "fFovH2":F
    .restart local v7    # "fSign":F
    .restart local v9    # "ptC":Lcom/voovio/voo3d/data/Vector3;
    .restart local v10    # "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    .restart local v12    # "vCamDir":Lcom/voovio/voo3d/data/Vector3;
    .restart local v15    # "vOutDir0":Lcom/voovio/voo3d/data/Vector3;
    .restart local v16    # "vOutDir1":Lcom/voovio/voo3d/data/Vector3;
    :cond_d
    move-object v14, v15

    .line 212
    goto/16 :goto_9

    .line 223
    .restart local v11    # "ptPos":Lcom/voovio/voo3d/data/Vector3;
    .restart local v13    # "vDir":Lcom/voovio/voo3d/data/Vector3;
    .restart local v14    # "vOutDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/voovio/sweep/Rotation;->m_oAuxCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->CopyTo(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    goto/16 :goto_a
.end method

.method public isRotation()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method
