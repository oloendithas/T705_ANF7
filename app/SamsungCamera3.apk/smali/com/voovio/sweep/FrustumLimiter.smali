.class Lcom/voovio/sweep/FrustumLimiter;
.super Ljava/lang/Object;
.source "FrustumLimiter.java"


# instance fields
.field m_fDeltaD:F

.field private m_fH2:F

.field private m_fMaxAngleX:F

.field private m_fMaxAngleY:F

.field private m_fMinAngleX:F

.field private m_fMinAngleY:F

.field private m_fW2:F

.field private m_oM:Lcom/voovio/voo3d/data/Matrix4;

.field private m_strTriggerIntersection:Ljava/lang/String;

.field m_vBottom:Lcom/voovio/voo3d/data/Vector3;

.field private m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

.field private m_vCamOrgSide:Lcom/voovio/voo3d/data/Vector3;

.field m_vDir:Lcom/voovio/voo3d/data/Vector3;

.field m_vLeft:Lcom/voovio/voo3d/data/Vector3;

.field m_vRight:Lcom/voovio/voo3d/data/Vector3;

.field m_vTop:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/high16 v4, 0x41200000

    const/high16 v3, -0x3ee00000

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v1, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    .line 12
    iput-object v1, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgSide:Lcom/voovio/voo3d/data/Vector3;

    .line 15
    const-string v0, "none"

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_strTriggerIntersection:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    .line 19
    iput-object v1, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    .line 20
    iput-object v1, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    .line 21
    iput-object v1, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vLeft:Lcom/voovio/voo3d/data/Vector3;

    .line 22
    iput-object v1, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vRight:Lcom/voovio/voo3d/data/Vector3;

    .line 24
    iput v2, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fW2:F

    .line 25
    iput v2, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fH2:F

    .line 27
    iput v3, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    .line 28
    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    .line 29
    iput v3, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    .line 30
    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    .line 32
    iput-object v1, p0, Lcom/voovio/sweep/FrustumLimiter;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    .line 35
    iput v2, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fDeltaD:F

    .line 40
    sget-object v0, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    .line 41
    sget-object v0, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgSide:Lcom/voovio/voo3d/data/Vector3;

    .line 43
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    .line 44
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    .line 45
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    .line 46
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vLeft:Lcom/voovio/voo3d/data/Vector3;

    .line 47
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vRight:Lcom/voovio/voo3d/data/Vector3;

    .line 49
    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    .line 50
    return-void
.end method

.method private GetFOV_H2(Lcom/voovio/voo3d/scenegraph/Camera3D;F)F
    .locals 12
    .param p1, "oCamera"    # Lcom/voovio/voo3d/scenegraph/Camera3D;
    .param p2, "fAngleX"    # F

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v8

    invoke-virtual {v8}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v9

    invoke-virtual {v9}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 127
    .local v1, "fAspectRatio":F
    const/high16 v8, 0x3f000000

    invoke-virtual {p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v9

    mul-float/2addr v8, v9

    const v9, 0x3c8efa35

    mul-float v4, v8, v9

    .line 128
    .local v4, "fFOV_V_Up":F
    float-to-double v8, v1

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 130
    .local v3, "fFOV_H_Left":F
    const v0, 0x3b2b92a6

    .line 131
    .local v0, "fAngOff":F
    add-float v8, v4, v0

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    iget-object v9, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v9, v9, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v9, v9

    mul-float v6, v8, v9

    .line 132
    .local v6, "fUpY":F
    add-float v8, v3, v0

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    neg-float v8, v8

    iget-object v9, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v9, v9, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v9, v9

    mul-float v5, v8, v9

    .line 134
    .local v5, "fLeftX":F
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v7

    .line 135
    .local v7, "pt":Lcom/voovio/voo3d/data/Vector3;
    iget-object v8, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v8, v8

    invoke-virtual {v7, v8, v6, v5}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 137
    iget-object v8, p0, Lcom/voovio/sweep/FrustumLimiter;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v8, v9}, Lcom/voovio/voo3d/data/Matrix4;->rotationX(F)V

    .line 138
    iget-object v8, p0, Lcom/voovio/sweep/FrustumLimiter;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v8, v7}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 139
    const/4 v8, 0x0

    iput v8, v7, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 140
    invoke-virtual {v7}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 142
    sget-object v8, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v7, v8}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v2

    .line 144
    .local v2, "fFOV_H2":F
    invoke-static {v7}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 146
    return v2
.end method


# virtual methods
.method public Init(Lcom/voovio/sweep/Sweep;)V
    .locals 2
    .param p1, "oSweep"    # Lcom/voovio/sweep/Sweep;

    .prologue
    const/high16 v1, 0x3f000000

    .line 56
    iget v0, p1, Lcom/voovio/sweep/Sweep;->m_nWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fW2:F

    .line 57
    iget v0, p1, Lcom/voovio/sweep/Sweep;->m_nHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fH2:F

    .line 58
    return-void
.end method

.method public Test(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;FFFFF)Z
    .locals 11
    .param p1, "oCamera"    # Lcom/voovio/voo3d/scenegraph/Camera3D;
    .param p2, "oVoovio"    # Lcom/voovio/sweep/Voovio;
    .param p3, "fX"    # F
    .param p4, "fY"    # F
    .param p5, "fZ"    # F
    .param p6, "fAngleX"    # F
    .param p7, "fAngleY"    # F

    .prologue
    .line 153
    const/4 v7, 0x0

    cmpl-float v7, p3, v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    cmpl-float v7, p4, v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    cmpl-float v7, p5, v7

    if-eqz v7, :cond_1

    .line 154
    :cond_0
    iget-object v7, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-float v6, v7, p3

    .line 155
    .local v6, "x":F
    iget-object v7, p2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    if-nez v7, :cond_4

    const/4 v1, 0x1

    .line 156
    .local v1, "bIsLast":Z
    :goto_0
    iget-object v7, p2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    if-nez v7, :cond_5

    iget-object v7, p2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    if-eqz v7, :cond_5

    iget-object v7, p2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v0, 0x1

    .line 157
    .local v0, "bIsFirstAndRotation":Z
    :goto_1
    iget-object v7, p2, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 158
    iget-object v7, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-float/2addr v7, p3

    iget-object v8, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-float/2addr v8, p4

    iget-object v9, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v9, v9, Lcom/voovio/voo3d/data/Vector3;->z:F

    add-float v9, v9, p5

    const/4 v10, 0x1

    invoke-virtual {p1, v7, v8, v9, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 166
    .end local v0    # "bIsFirstAndRotation":Z
    .end local v1    # "bIsLast":Z
    .end local v6    # "x":F
    :cond_1
    iget-object v7, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v8, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    sget-object v9, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v7, v8, v9}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v7

    const v8, 0x42652ee0

    mul-float v3, v7, v8

    .line 167
    .local v3, "fCurAngleY":F
    iget-object v7, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v8, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    iget-object v9, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v7, v8, v9}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v7

    const v8, 0x42652ee0

    mul-float v2, v7, v8

    .line 169
    .local v2, "fCurAngleX":F
    const-string v7, "none"

    iput-object v7, p0, Lcom/voovio/sweep/FrustumLimiter;->m_strTriggerIntersection:Ljava/lang/String;

    .line 170
    add-float v5, v3, p7

    .line 171
    .local v5, "fNewAngleY":F
    iget v7, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    cmpg-float v7, v5, v7

    if-gez v7, :cond_6

    .line 172
    iget v7, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iput v7, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fDeltaD:F

    .line 173
    iget v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    .line 174
    const-string v7, "left"

    iput-object v7, p0, Lcom/voovio/sweep/FrustumLimiter;->m_strTriggerIntersection:Ljava/lang/String;

    .line 181
    :cond_2
    :goto_2
    add-float v4, v2, p6

    .line 182
    .local v4, "fNewAngleX":F
    iget v7, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    cmpg-float v7, v4, v7

    if-gez v7, :cond_7

    .line 183
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    .line 187
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget-object v8, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v7, v8}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 188
    iget-object v7, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    neg-float v8, v4

    const v9, 0x3c8efa35

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v7, v8, v9}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    .line 189
    iget-object v7, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    neg-float v8, v5

    const v9, 0x3c8efa35

    mul-float/2addr v8, v9

    sget-object v9, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v7, v8, v9}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    .line 191
    iget-object v7, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v7, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v8, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v9, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v9, v9, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x1

    invoke-virtual {p1, v7, v8, v9, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 193
    const/4 v7, 0x0

    return v7

    .line 155
    .end local v2    # "fCurAngleX":F
    .end local v3    # "fCurAngleY":F
    .end local v4    # "fNewAngleX":F
    .end local v5    # "fNewAngleY":F
    .restart local v6    # "x":F
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 156
    .restart local v1    # "bIsLast":Z
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 175
    .end local v1    # "bIsLast":Z
    .end local v6    # "x":F
    .restart local v2    # "fCurAngleX":F
    .restart local v3    # "fCurAngleY":F
    .restart local v5    # "fNewAngleY":F
    :cond_6
    iget v7, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    cmpl-float v7, v5, v7

    if-lez v7, :cond_2

    .line 176
    iget v7, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iput v7, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fDeltaD:F

    .line 177
    iget v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    .line 178
    const-string v7, "right"

    iput-object v7, p0, Lcom/voovio/sweep/FrustumLimiter;->m_strTriggerIntersection:Ljava/lang/String;

    goto :goto_2

    .line 184
    .restart local v4    # "fNewAngleX":F
    :cond_7
    iget v7, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    cmpl-float v7, v4, v7

    if-lez v7, :cond_3

    .line 185
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    goto :goto_3
.end method

.method public TestLimits(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;)Z
    .locals 9
    .param p1, "oCamera"    # Lcom/voovio/voo3d/scenegraph/Camera3D;
    .param p2, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    const v8, 0x42652ee0

    const v7, 0x3c8efa35

    .line 201
    invoke-virtual {p0, p1}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 204
    iget-object v4, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    mul-float v0, v4, v8

    .line 205
    .local v0, "fAngleX":F
    iget-object v4, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    sget-object v6, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    mul-float v1, v4, v8

    .line 207
    .local v1, "fAngleY":F
    move v2, v0

    .line 208
    .local v2, "fNewAngleX":F
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_4

    .line 209
    iget v2, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    .line 213
    :cond_0
    :goto_0
    move v3, v1

    .line 214
    .local v3, "fNewAngleY":F
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_5

    .line 215
    iget v3, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    .line 219
    :cond_1
    :goto_1
    cmpl-float v4, v2, v0

    if-nez v4, :cond_2

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_3

    .line 220
    :cond_2
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 221
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    neg-float v5, v2

    mul-float/2addr v5, v7

    iget-object v6, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    .line 222
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    neg-float v5, v3

    mul-float/2addr v5, v7

    sget-object v6, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->rotateAxis(FLcom/voovio/voo3d/data/Vector3;)V

    .line 224
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v6, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v7, 0x1

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 227
    :cond_3
    const/4 v4, 0x0

    return v4

    .line 210
    .end local v3    # "fNewAngleY":F
    :cond_4
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    .line 211
    iget v2, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    goto :goto_0

    .line 216
    .restart local v3    # "fNewAngleY":F
    :cond_5
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    .line 217
    iget v3, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    goto :goto_1
.end method

.method public UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V
    .locals 9
    .param p1, "oCamera"    # Lcom/voovio/voo3d/scenegraph/Camera3D;

    .prologue
    const v8, 0x42652ee0

    const/4 v7, 0x0

    .line 65
    const/high16 v4, 0x3f000000

    invoke-virtual {p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getFov()F

    move-result v5

    mul-float/2addr v4, v5

    const v5, 0x3c8efa35

    mul-float v1, v4, v5

    .line 68
    .local v1, "fFOV_V_2":F
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v2

    .line 69
    .local v2, "vDir":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v3

    .line 72
    .local v3, "vSide":Lcom/voovio/voo3d/data/Vector3;
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v5, v5

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 73
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    iget v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fH2:F

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 74
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    iget v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fW2:F

    neg-float v5, v5

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 76
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v2, v4, v7, v5}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 77
    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 78
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v7, v5}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 79
    invoke-virtual {v3}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 81
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vTop:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    .line 82
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v4, v1

    mul-float/2addr v4, v8

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    .line 83
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    .line 86
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v5, v5

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 87
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    iget v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fH2:F

    neg-float v5, v5

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 88
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    iget v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fW2:F

    neg-float v5, v5

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 90
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v2, v4, v7, v5}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 91
    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 92
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v7, v5}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 93
    invoke-virtual {v3}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 95
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vBottom:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v2, v3}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    .line 96
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v4, v1

    mul-float/2addr v4, v8

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    .line 97
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    neg-float v4, v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleX:F

    .line 100
    invoke-static {v2}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 101
    invoke-static {v3}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 104
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleX:F

    invoke-direct {p0, p1, v4}, Lcom/voovio/sweep/FrustumLimiter;->GetFOV_H2(Lcom/voovio/voo3d/scenegraph/Camera3D;F)F

    move-result v0

    .line 107
    .local v0, "fFOV_H_2":F
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vRight:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v5, v5

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 108
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vRight:Lcom/voovio/voo3d/data/Vector3;

    iget v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fW2:F

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 109
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vRight:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    sget-object v6, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    .line 110
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v4, v0

    mul-float/2addr v4, v8

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    .line 111
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMaxAngleY:F

    .line 114
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vLeft:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v5, v5

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 115
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vLeft:Lcom/voovio/voo3d/data/Vector3;

    iget v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fW2:F

    neg-float v5, v5

    iget-object v6, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 116
    iget-object v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vLeft:Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/sweep/FrustumLimiter;->m_vCamOrgDir:Lcom/voovio/voo3d/data/Vector3;

    sget-object v6, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    .line 117
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v4, v0

    mul-float/2addr v4, v8

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    .line 118
    iget v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    neg-float v4, v4

    iput v4, p0, Lcom/voovio/sweep/FrustumLimiter;->m_fMinAngleY:F

    .line 119
    return-void
.end method

.method public getTriggerIntersection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/voovio/sweep/FrustumLimiter;->m_strTriggerIntersection:Ljava/lang/String;

    return-object v0
.end method
