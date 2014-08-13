.class Lcom/voovio/sweep/Voovio;
.super Ljava/lang/Object;
.source "Voovio.java"


# static fields
.field static ROTATION_LEFT:I

.field static ROTATION_RIGHT:I

.field static STATE_DECODING:I

.field static STATE_ERROR:I

.field static STATE_READY:I

.field static STATE_VOID:I


# instance fields
.field m_aTransitions:[Lcom/voovio/sweep/Transition;

.field m_bCreated:Z

.field m_baSize:I

.field m_bmImage:Landroid/graphics/Bitmap;

.field m_fF:F

.field m_fFOV:F

.field m_nDistance:I

.field m_nHeight:I

.field m_nId:I

.field m_nImageHeight:I

.field m_nImageWidth:I

.field m_nMoveToPosition:I

.field m_nState:I

.field m_nTargetState:I

.field m_nWidth:I

.field m_oMask:Lcom/voovio/sweep/Mask;

.field m_oSweep:Lcom/voovio/sweep/Sweep;

.field m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

.field m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

.field m_vCamDir:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 14
    const/4 v0, -0x1

    sput v0, Lcom/voovio/sweep/Voovio;->STATE_ERROR:I

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    .line 16
    sput v1, Lcom/voovio/sweep/Voovio;->STATE_DECODING:I

    .line 17
    sput v2, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    .line 20
    sput v1, Lcom/voovio/sweep/Voovio;->ROTATION_LEFT:I

    .line 21
    sput v2, Lcom/voovio/sweep/Voovio;->ROTATION_RIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/voovio/sweep/Sweep;)V
    .locals 4
    .param p1, "oSweep"    # Lcom/voovio/sweep/Sweep;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/voovio/sweep/Voovio;->m_nId:I

    .line 75
    iput-object p1, p0, Lcom/voovio/sweep/Voovio;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 78
    iput v1, p0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    .line 79
    iput v1, p0, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    .line 82
    iput v1, p0, Lcom/voovio/sweep/Voovio;->m_nImageWidth:I

    .line 83
    iput v1, p0, Lcom/voovio/sweep/Voovio;->m_nImageHeight:I

    .line 86
    iput v1, p0, Lcom/voovio/sweep/Voovio;->m_baSize:I

    .line 89
    iput-object v2, p0, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    .line 92
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    .line 93
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    .line 95
    iput v3, p0, Lcom/voovio/sweep/Voovio;->m_fF:F

    .line 96
    iput v3, p0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    .line 99
    iput-object v2, p0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    .line 102
    iput-object v2, p0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/voovio/sweep/Transition;

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    .line 108
    sget v0, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v0, p0, Lcom/voovio/sweep/Voovio;->m_nState:I

    .line 109
    sget v0, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v0, p0, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    .line 112
    iput v1, p0, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    .line 114
    iput-boolean v1, p0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    .line 115
    return-void
.end method


# virtual methods
.method public ComputeNearestPointInsideVolume()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const v8, 0x3dcccccd

    .line 179
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    .line 180
    .local v0, "ptCamPos":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Vector3Pool;->getVector3()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v2

    .line 182
    .local v2, "vCamDir":Lcom/voovio/voo3d/data/Vector3;
    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v4, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v0, v3, v6, v4}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 183
    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v4, p0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v2, v3, v6, v4}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 184
    invoke-virtual {v2}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 186
    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v3, v5

    if-nez v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v5, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    .line 189
    iget v5, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v6, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    .line 190
    iget v6, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v7, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 188
    invoke-virtual {v3, v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    .line 200
    :goto_0
    invoke-static {v0}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 201
    invoke-static {v2}, Lcom/voovio/voo3d/data/Vector3Pool;->returnVector3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 202
    return-void

    .line 194
    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v3, v3, v5

    aget-object v3, v3, v5

    iget-object v1, v3, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    .line 195
    .local v1, "ptCenter":Lcom/voovio/voo3d/data/Vector3;
    iget-object v3, p0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v5, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    .line 196
    iget v5, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v6, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    .line 197
    iget v6, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v7, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 195
    invoke-virtual {v3, v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;->reset(FFF)V

    goto :goto_0
.end method

.method public Create()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    invoke-virtual {v0}, Lcom/voovio/sweep/Mask;->Create()V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    goto :goto_0
.end method

.method public CreateDefaultFrontal(FIIII)V
    .locals 4
    .param p1, "fFOV"    # F
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "imageWidth"    # I
    .param p5, "imageHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 157
    iput p2, p0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    .line 158
    iput p3, p0, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    .line 160
    iput p4, p0, Lcom/voovio/sweep/Voovio;->m_nImageWidth:I

    .line 161
    iput p5, p0, Lcom/voovio/sweep/Voovio;->m_nImageHeight:I

    .line 163
    iput p1, p0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    .line 164
    const/high16 v0, 0x3f000000

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/voovio/sweep/Voovio;->m_fF:F

    .line 166
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_fF:F

    neg-float v1, v1

    invoke-direct {v0, v1, v3, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    .line 167
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v1, v3, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    .line 170
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    .line 173
    new-instance v0, Lcom/voovio/sweep/Mask;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/Mask;-><init>(Lcom/voovio/sweep/Voovio;)V

    iput-object v0, p0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    .line 174
    return-void
.end method

.method public Destroy()V
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    invoke-virtual {v0}, Lcom/voovio/sweep/Mask;->Destroy()V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    goto :goto_0
.end method

.method DestroyWithoutOpenGLContext()V
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    invoke-virtual {v0}, Lcom/voovio/sweep/Mask;->DestroyWithoutOpenGLContext()V

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    goto :goto_0
.end method

.method public IsTransitionRegistered(Lcom/voovio/sweep/Transition;I)Z
    .locals 1
    .param p1, "oTransition"    # Lcom/voovio/sweep/Transition;
    .param p2, "nType"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v0, v0, p2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public RegisterTransition(Lcom/voovio/sweep/Transition;I)V
    .locals 1
    .param p1, "oTransition"    # Lcom/voovio/sweep/Transition;
    .param p2, "nType"    # I

    .prologue
    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/voovio/sweep/Voovio;->IsTransitionRegistered(Lcom/voovio/sweep/Transition;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aput-object p1, v0, p2

    .line 249
    :cond_0
    return-void
.end method

.method public UnRegisterTransition(Lcom/voovio/sweep/Transition;)V
    .locals 3
    .param p1, "oTransition"    # Lcom/voovio/sweep/Transition;

    .prologue
    .line 254
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 259
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 254
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clone()Lcom/voovio/sweep/Voovio;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/voovio/sweep/Voovio;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/voovio/sweep/Voovio;-><init>(Lcom/voovio/sweep/Sweep;)V

    .line 123
    .local v0, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nId:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nId:I

    .line 126
    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    .line 127
    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    .line 130
    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nImageWidth:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nImageWidth:I

    .line 131
    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_nImageHeight:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nImageHeight:I

    .line 134
    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_baSize:I

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_baSize:I

    .line 137
    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    .line 138
    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    .line 140
    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_fF:F

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_fF:F

    .line 141
    iget v1, p0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    .line 144
    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    invoke-virtual {v1}, Lcom/voovio/sweep/Mask;->clone()Lcom/voovio/sweep/Mask;

    move-result-object v1

    iput-object v1, v0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    .line 145
    iget-object v1, v0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    iput-object v0, v1, Lcom/voovio/sweep/Mask;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    .line 148
    iget-object v1, p0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Vector3;->clone()Lcom/voovio/voo3d/data/Vector3;

    move-result-object v1

    iput-object v1, v0, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    .line 150
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
    invoke-virtual {p0}, Lcom/voovio/sweep/Voovio;->clone()Lcom/voovio/sweep/Voovio;

    move-result-object v0

    return-object v0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "fAlpha"    # F

    .prologue
    .line 264
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 265
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "fAlpha"    # F
    .param p3, "fM"    # [F
    .param p4, "rotations"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xde1

    .line 270
    invoke-static {}, Landroid/opengl/GLES11;->glPushMatrix()V

    .line 271
    if-eqz p3, :cond_0

    .line 272
    invoke-static {p3, v2}, Landroid/opengl/GLES11;->glMultMatrixf([FI)V

    .line 274
    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES11;->glEnable(I)V

    .line 275
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    iget v0, v0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    invoke-static {v1, v0}, Landroid/opengl/GLES11;->glBindTexture(II)V

    .line 277
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oMaskGeometry:Lcom/voovio/sweep/MaskGeometry;

    invoke-virtual {v0, p1, p2, p4}, Lcom/voovio/sweep/MaskGeometry;->draw(Ljavax/microedition/khronos/opengles/GL10;FI)V

    .line 279
    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBindTexture(II)V

    .line 280
    invoke-static {v1}, Landroid/opengl/GLES11;->glDisable(I)V

    .line 282
    invoke-static {}, Landroid/opengl/GLES11;->glPopMatrix()V

    .line 283
    return-void
.end method

.method public drawRotation(Ljavax/microedition/khronos/opengles/GL10;F[FILcom/voovio/sweep/Rotation;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "fFactor"    # F
    .param p3, "fM"    # [F
    .param p4, "rotations"    # I
    .param p5, "oRotation"    # Lcom/voovio/sweep/Rotation;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xde1

    .line 288
    invoke-static {}, Landroid/opengl/GLES11;->glPushMatrix()V

    .line 289
    if-eqz p3, :cond_0

    .line 290
    invoke-static {p3, v2}, Landroid/opengl/GLES11;->glMultMatrixf([FI)V

    .line 292
    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES11;->glEnable(I)V

    .line 293
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_oMask:Lcom/voovio/sweep/Mask;

    iget v0, v0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    invoke-static {v1, v0}, Landroid/opengl/GLES11;->glBindTexture(II)V

    .line 295
    iget-object v0, p0, Lcom/voovio/sweep/Voovio;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oMaskGeometry:Lcom/voovio/sweep/MaskGeometry;

    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/voovio/sweep/MaskGeometry;->drawRotation(Ljavax/microedition/khronos/opengles/GL10;FILcom/voovio/sweep/Rotation;)V

    .line 297
    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBindTexture(II)V

    .line 298
    invoke-static {v1}, Landroid/opengl/GLES11;->glDisable(I)V

    .line 300
    invoke-static {}, Landroid/opengl/GLES11;->glPopMatrix()V

    .line 301
    return-void
.end method

.method public getRotations()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 306
    const/4 v3, 0x0

    .local v3, "oPrevTransition":Lcom/voovio/sweep/Transition;
    const/4 v2, 0x0

    .line 307
    .local v2, "oNextTransition":Lcom/voovio/sweep/Transition;
    const/4 v1, 0x0

    .local v1, "fPrevAngle":F
    const/4 v0, 0x0

    .line 309
    .local v0, "fNextAngle":F
    iget-object v5, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v5, v5, v7

    if-eqz v5, :cond_0

    .line 310
    iget-object v5, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v2, v5, v7

    .line 311
    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v0

    .line 314
    :cond_0
    iget-object v5, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v5, v5, v8

    if-eqz v5, :cond_1

    .line 315
    iget-object v5, p0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v5, v8

    .line 316
    invoke-virtual {v3}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v1

    .line 319
    :cond_1
    const/4 v4, 0x0

    .line 320
    .local v4, "rotations":I
    if-eqz v2, :cond_2

    cmpl-float v5, v0, v6

    if-gtz v5, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    cmpg-float v5, v1, v6

    if-gez v5, :cond_4

    .line 321
    :cond_3
    sget v5, Lcom/voovio/sweep/Voovio;->ROTATION_RIGHT:I

    or-int/2addr v4, v5

    .line 323
    :cond_4
    if-eqz v2, :cond_5

    cmpg-float v5, v0, v6

    if-ltz v5, :cond_6

    :cond_5
    if-eqz v3, :cond_7

    cmpl-float v5, v1, v6

    if-lez v5, :cond_7

    .line 324
    :cond_6
    sget v5, Lcom/voovio/sweep/Voovio;->ROTATION_LEFT:I

    or-int/2addr v4, v5

    .line 326
    :cond_7
    return v4
.end method
