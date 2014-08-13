.class public Lcom/voovio/voo3d/scenegraph/Camera3D;
.super Ljava/lang/Object;
.source "Camera3D.java"


# instance fields
.field public m_aViewMatrix:[F

.field public m_fFar:F

.field m_fFov:F

.field public m_fNear:F

.field m_fPan:F

.field m_fRoll:F

.field m_fTilt:F

.field private m_oClipSpaceMatrix:Lcom/voovio/voo3d/data/Matrix4;

.field public m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

.field private m_oPerspectiveMatrix:Lcom/voovio/voo3d/data/Matrix4;

.field private m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

.field private m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

.field public m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

.field public m_oViewport:Lcom/voovio/voo3d/view/Viewport;

.field public m_ptPos:Lcom/voovio/voo3d/data/Vector3;

.field public m_vOut:Lcom/voovio/voo3d/data/Vector3;

.field m_vRotation:Lcom/voovio/voo3d/data/Vector3;

.field m_vScale:Lcom/voovio/voo3d/data/Vector3;

.field public m_vSide:Lcom/voovio/voo3d/data/Vector3;

.field public m_vUp:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method public constructor <init>(IIFFF)V
    .locals 4
    .param p1, "nWidth"    # I
    .param p2, "nHeight"    # I
    .param p3, "fFov"    # F
    .param p4, "fNear"    # F
    .param p5, "fFar"    # F

    .prologue
    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    .line 45
    iput p4, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fNear:F

    .line 46
    iput p5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFar:F

    .line 48
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    const/high16 v1, 0x43960000

    invoke-direct {v0, v2, v2, v1}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    .line 50
    new-instance v0, Lcom/voovio/voo3d/view/Viewport;

    invoke-direct {v0, p1, p2}, Lcom/voovio/voo3d/view/Viewport;-><init>(II)V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    .line 52
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0, v2, v2, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    .line 53
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0, v3, v2, v2}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    .line 54
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0, v2, v3, v2}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    .line 56
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0, v3, v3, v3}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    .line 57
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0, v2, v2, v2}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    .line 59
    iput v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fRoll:F

    .line 60
    iput v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fTilt:F

    .line 61
    iput v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fPan:F

    .line 63
    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    .line 64
    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    .line 65
    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    .line 66
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aViewMatrix:[F

    .line 68
    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oPerspectiveMatrix:Lcom/voovio/voo3d/data/Matrix4;

    .line 69
    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oClipSpaceMatrix:Lcom/voovio/voo3d/data/Matrix4;

    .line 70
    new-instance v0, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    .line 72
    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updatePerspectiveProjection()V

    .line 73
    invoke-virtual {p0, v2, v2, v2}, Lcom/voovio/voo3d/scenegraph/Camera3D;->lookAt(FFF)V

    .line 74
    return-void
.end method


# virtual methods
.method public Clone()Lcom/voovio/voo3d/scenegraph/Camera3D;
    .locals 6

    .prologue
    .line 79
    new-instance v0, Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v1}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fNear:F

    iget v5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFar:F

    invoke-direct/range {v0 .. v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;-><init>(IIFFF)V

    .line 81
    .local v0, "oDstCamera":Lcom/voovio/voo3d/scenegraph/Camera3D;
    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->CopyTo(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 83
    return-object v0
.end method

.method public CopyTo(Lcom/voovio/voo3d/scenegraph/Camera3D;)V
    .locals 5
    .param p1, "oDstCamera"    # Lcom/voovio/voo3d/scenegraph/Camera3D;

    .prologue
    .line 89
    iget v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fPan:F

    iput v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fPan:F

    .line 90
    iget v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fRoll:F

    iput v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fRoll:F

    .line 91
    iget v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fTilt:F

    iput v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fTilt:F

    .line 92
    iget-object v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 93
    iget-object v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 94
    iget-object v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 95
    iget-object v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 96
    iget-object v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 97
    iget-object v1, p1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v2, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 99
    invoke-virtual {p1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v0

    .line 100
    .local v0, "oDstViewport":Lcom/voovio/voo3d/view/Viewport;
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v1}, Lcom/voovio/voo3d/view/Viewport;->getOffsetX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/view/Viewport;->setOffsetX(F)V

    .line 101
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v1}, Lcom/voovio/voo3d/view/Viewport;->getOffsetY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/view/Viewport;->setOffsetY(F)V

    .line 102
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v1}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/view/Viewport;->setWidth(I)V

    .line 103
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v1}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/view/Viewport;->setHeight(I)V

    .line 105
    iget v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    invoke-virtual {p1, v1}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    .line 107
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 108
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 109
    return-void
.end method

.method public addFov(F)V
    .locals 1
    .param p1, "fov"    # F

    .prologue
    .line 338
    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    .line 339
    return-void
.end method

.method public addPan(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 491
    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fPan:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPan(F)V

    .line 492
    return-void
.end method

.method public addRoll(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 441
    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fRoll:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setRoll(F)V

    .line 442
    return-void
.end method

.method public addRotateX(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 364
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setRotateX(F)V

    .line 365
    return-void
.end method

.method public addRotateY(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 390
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setRotateY(F)V

    .line 391
    return-void
.end method

.method public addRotateZ(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 416
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setRotateZ(F)V

    .line 417
    return-void
.end method

.method public addTilt(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 466
    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fTilt:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setTilt(F)V

    .line 467
    return-void
.end method

.method public getFov()F
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    return v0
.end method

.method public getFovH()F
    .locals 7

    .prologue
    const/high16 v6, 0x40000000

    .line 329
    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getHeight2()I

    move-result v2

    int-to-double v2, v2

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    const v5, 0x3c8efa35

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 330
    .local v0, "fF":F
    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getWidth2()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v6

    const v3, 0x42652ee0

    mul-float v1, v2, v3

    .line 332
    .local v1, "fFOVH":F
    return v1
.end method

.method public getPan()F
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fPan:F

    return v0
.end method

.method public getRoll()F
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fRoll:F

    return v0
.end method

.method public getRotateX()F
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    return v0
.end method

.method public getRotateY()F
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    return v0
.end method

.method public getRotateZ()F
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v0, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    return v0
.end method

.method public getTilt()F
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fTilt:F

    return v0
.end method

.method public getVector3OnFrontal(FF)Lcom/voovio/voo3d/data/Vector3;
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 271
    new-instance v4, Lcom/voovio/voo3d/data/Vector3;

    const/high16 v5, 0x3f800000

    invoke-direct {v4, p1, p2, v5}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    .line 273
    .local v4, "vRay":Lcom/voovio/voo3d/data/Vector3;
    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v0

    .line 274
    .local v0, "oInverseProjection":Lcom/voovio/voo3d/data/Matrix4;
    iget-object v5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v0, v5}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 275
    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Matrix4;->inverse()V

    .line 277
    invoke-virtual {v0, v4}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 279
    invoke-static {v0}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 281
    iget-object v5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v5, v4}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult(Lcom/voovio/voo3d/data/Vector3;)V

    .line 282
    iget-object v5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v4, v5}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    .line 283
    invoke-virtual {v4}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 285
    sget-object v3, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    .line 287
    .local v3, "vN":Lcom/voovio/voo3d/data/Vector3;
    iget-object v5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v3, v5}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v3, v4}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v6

    div-float v2, v5, v6

    .line 289
    .local v2, "t":F
    new-instance v1, Lcom/voovio/voo3d/data/Vector3;

    iget-object v5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v5, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v6, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 290
    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v6, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v7, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    .line 291
    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v7, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v8, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    .line 289
    invoke-direct {v1, v5, v6, v7}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    .line 293
    .local v1, "pt":Lcom/voovio/voo3d/data/Vector3;
    return-object v1
.end method

.method public getViewport()Lcom/voovio/voo3d/view/Viewport;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    return-object v0
.end method

.method public lookAt(FFF)V
    .locals 3
    .param p1, "fX"    # F
    .param p2, "fY"    # F
    .param p3, "fZ"    # F

    .prologue
    .line 130
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iput p1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 131
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iput p2, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 132
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iput p3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 133
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Vector3;->sub(Lcom/voovio/voo3d/data/Vector3;)V

    .line 134
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 137
    sget-object v0, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    .line 138
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 140
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    .line 141
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 143
    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateMatrix()V

    .line 144
    return-void
.end method

.method public moveHorizontallyForward(FZ)V
    .locals 3
    .param p1, "d"    # F
    .param p2, "bUpdate"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 225
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 227
    if-eqz p2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateMatrix()V

    .line 229
    :cond_0
    return-void
.end method

.method public moveHorizontallySideways(FZ)V
    .locals 3
    .param p1, "d"    # F
    .param p2, "bUpdate"    # Z

    .prologue
    .line 235
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 236
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 238
    if-eqz p2, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateMatrix()V

    .line 240
    :cond_0
    return-void
.end method

.method public moveVertically(FZ)V
    .locals 2
    .param p1, "d"    # F
    .param p2, "bUpdate"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 248
    if-eqz p2, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateMatrix()V

    .line 250
    :cond_0
    return-void
.end method

.method public projectVector3D(Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/geometry/Point;
    .locals 8
    .param p1, "oVector"    # Lcom/voovio/voo3d/data/Vector3;

    .prologue
    .line 256
    iget v5, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    mul-float/2addr v5, v6

    iget v6, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    add-float v2, v5, v6

    .line 257
    .local v2, "wx":F
    iget v5, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    mul-float/2addr v5, v6

    iget v6, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    add-float v3, v5, v6

    .line 258
    .local v3, "wy":F
    iget v5, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    mul-float/2addr v5, v6

    iget v6, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    add-float v4, v5, v6

    .line 260
    .local v4, "wz":F
    const/high16 v5, 0x3f800000

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    add-float/2addr v6, v7

    div-float v0, v5, v6

    .line 262
    .local v0, "div":F
    new-instance v1, Lcom/voovio/geometry/Point;

    iget-object v5, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v5, v5, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    mul-float/2addr v5, v2

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    add-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 263
    iget-object v6, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v6, v6, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v7, v7, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    add-float/2addr v6, v7

    mul-float/2addr v6, v0

    .line 262
    invoke-direct {v1, v5, v6}, Lcom/voovio/geometry/Point;-><init>(FF)V

    .line 265
    .local v1, "pt":Lcom/voovio/geometry/Point;
    return-object v1
.end method

.method public setDirection(FFFZ)V
    .locals 3
    .param p1, "fX"    # F
    .param p2, "fY"    # F
    .param p3, "fZ"    # F
    .param p4, "bUpdate"    # Z

    .prologue
    .line 160
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iput p1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 161
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iput p2, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 162
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iput p3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 163
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 166
    sget-object v0, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    .line 167
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 169
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/voovio/voo3d/data/Vector3;->cross(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    .line 170
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v0}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 172
    if-eqz p4, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateMatrix()V

    .line 174
    :cond_0
    return-void
.end method

.method public setFov(F)V
    .locals 0
    .param p1, "fov"    # F

    .prologue
    .line 316
    iput p1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    .line 317
    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updatePerspectiveProjection()V

    .line 318
    return-void
.end method

.method public setPan(F)V
    .locals 3
    .param p1, "angle"    # F

    .prologue
    .line 472
    iget v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fPan:F

    sub-float v0, p1, v1

    .line 473
    .local v0, "fAngle":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 480
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2, v0}, Lcom/voovio/voo3d/data/Matrix4;->axisRotation(Lcom/voovio/voo3d/data/Vector3;F)V

    .line 476
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 477
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 479
    iput p1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fPan:F

    goto :goto_0
.end method

.method public setPosition(FFFZ)V
    .locals 2
    .param p1, "fX"    # F
    .param p2, "fY"    # F
    .param p3, "fZ"    # F
    .param p4, "bUpdate"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iput p1, v1, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    iput p1, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 150
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iput p2, v1, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    iput p2, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 151
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iput p3, v1, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    iput p3, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 153
    if-eqz p4, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateViewMatrix()V

    .line 155
    :cond_0
    return-void
.end method

.method public setRoll(F)V
    .locals 3
    .param p1, "angle"    # F

    .prologue
    .line 422
    iget v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fRoll:F

    sub-float v0, p1, v1

    .line 423
    .local v0, "fAngle":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 430
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2, v0}, Lcom/voovio/voo3d/data/Matrix4;->axisRotation(Lcom/voovio/voo3d/data/Vector3;F)V

    .line 426
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 427
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 429
    iput p1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fRoll:F

    goto :goto_0
.end method

.method public setRotateX(F)V
    .locals 3
    .param p1, "angle"    # F

    .prologue
    .line 344
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float v0, p1, v1

    .line 345
    .local v0, "fAngle":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, v0}, Lcom/voovio/voo3d/data/Matrix4;->rotationX(F)V

    .line 348
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 349
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 350
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 352
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iput p1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    goto :goto_0
.end method

.method public setRotateY(F)V
    .locals 3
    .param p1, "angle"    # F

    .prologue
    .line 370
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float v0, p1, v1

    .line 371
    .local v0, "fAngle":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 379
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, v0}, Lcom/voovio/voo3d/data/Matrix4;->rotationY(F)V

    .line 374
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 375
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 376
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 378
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iput p1, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    goto :goto_0
.end method

.method public setRotateZ(F)V
    .locals 3
    .param p1, "angle"    # F

    .prologue
    .line 396
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float v0, p1, v1

    .line 397
    .local v0, "fAngle":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 405
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, v0}, Lcom/voovio/voo3d/data/Matrix4;->rotationZ(F)V

    .line 400
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 401
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 402
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 404
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vRotation:Lcom/voovio/voo3d/data/Vector3;

    iput p1, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    goto :goto_0
.end method

.method public setTilt(F)V
    .locals 3
    .param p1, "angle"    # F

    .prologue
    .line 447
    iget v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fTilt:F

    sub-float v0, p1, v1

    .line 448
    .local v0, "fAngle":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 455
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2, v0}, Lcom/voovio/voo3d/data/Matrix4;->axisRotation(Lcom/voovio/voo3d/data/Vector3;F)V

    .line 451
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 452
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oTempMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->vectorMult3x3(Lcom/voovio/voo3d/data/Vector3;)V

    .line 454
    iput p1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fTilt:F

    goto :goto_0
.end method

.method public setViewport(Lcom/voovio/voo3d/view/Viewport;)V
    .locals 0
    .param p1, "viewport"    # Lcom/voovio/voo3d/view/Viewport;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    .line 304
    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updatePerspectiveProjection()V

    .line 305
    return-void
.end method

.method public updateMatrix()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    .line 180
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    .line 181
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    .line 182
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    .line 184
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    .line 185
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    .line 186
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    .line 187
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    .line 189
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    .line 190
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vUp:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    .line 191
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vScale:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    .line 192
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    .line 194
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    const/4 v3, 0x0

    iput v3, v2, Lcom/voovio/voo3d/data/Matrix4;->e11:F

    iput v3, v1, Lcom/voovio/voo3d/data/Matrix4;->e7:F

    iput v3, v0, Lcom/voovio/voo3d/data/Matrix4;->e3:F

    .line 195
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    const/high16 v1, 0x3f800000

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e15:F

    .line 197
    invoke-virtual {p0}, Lcom/voovio/voo3d/scenegraph/Camera3D;->updateViewMatrix()V

    .line 198
    return-void
.end method

.method public updatePerspectiveProjection()V
    .locals 5

    .prologue
    .line 114
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v1}, Lcom/voovio/voo3d/view/Viewport;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 116
    .local v0, "aspect":F
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oPerspectiveMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFov:F

    iget v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fNear:F

    iget v4, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_fFar:F

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/voovio/voo3d/data/Matrix4;->perspectiveFieldOfViewRH(FFFF)V

    .line 118
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oClipSpaceMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getWidth2()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    .line 119
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oClipSpaceMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getHeight2()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    .line 120
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oClipSpaceMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getWidth2()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v3}, Lcom/voovio/voo3d/view/Viewport;->getOffset()Lcom/voovio/geometry/Point;

    move-result-object v3

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    .line 121
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oClipSpaceMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v2}, Lcom/voovio/voo3d/view/Viewport;->getHeight2()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewport:Lcom/voovio/voo3d/view/Viewport;

    invoke-virtual {v3}, Lcom/voovio/voo3d/view/Viewport;->getOffset()Lcom/voovio/geometry/Point;

    move-result-object v3

    iget v3, v3, Lcom/voovio/geometry/Point;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    .line 123
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oClipSpaceMatrix:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 124
    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oProjectionMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oPerspectiveMatrix:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->multiply(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 125
    return-void
.end method

.method public updateViewMatrix()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    .line 204
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    .line 205
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    .line 206
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    .line 207
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    .line 208
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    .line 209
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    .line 210
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    .line 211
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    .line 213
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e0:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e1:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v3, v3, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e2:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v3, v3, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    .line 214
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e4:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e5:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v3, v3, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e6:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v3, v3, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    .line 215
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v1, v1, Lcom/voovio/voo3d/data/Matrix4;->e8:F

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e12:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e9:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v3, v3, Lcom/voovio/voo3d/data/Matrix4;->e13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v2, v2, Lcom/voovio/voo3d/data/Matrix4;->e10:F

    iget-object v3, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget v3, v3, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, v0, Lcom/voovio/voo3d/data/Matrix4;->e14:F

    .line 217
    iget-object v0, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_oViewMatrix:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v1, p0, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aViewMatrix:[F

    invoke-virtual {v0, v1}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    .line 218
    return-void
.end method
