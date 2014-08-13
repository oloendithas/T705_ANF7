.class public final Lcom/voovio/sweep/SweepOffScreen;
.super Ljava/lang/Object;
.source "SweepOffScreen.java"

# interfaces
.implements Lcom/voovio/sweep/GLOffScreen$Renderer;


# static fields
.field public static final CONFIG_ARGB_8888:I = 0x1

.field public static final CONFIG_RGB_565:I = 0x0

.field static final TAG:Ljava/lang/String; = "SweepOffScreen"


# instance fields
.field private m_bResourceManagerInherited:Z

.field private m_fAutodriveDirection:F

.field private m_fAutodriveVelocityForward:F

.field private m_fAutodriveVelocitySideward:F

.field private m_fTransitionAccumD:F

.field private m_fTransitionFactor:F

.field private m_fTransitionMatrices:[[F

.field private m_fVoovioMatrices:[[F

.field private m_nConfig:I

.field private m_nFramePeriod_ms:I

.field private m_nHeight:I

.field private m_nLastFrame:I

.field private m_nWidth:I

.field m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

.field m_oCurVoovio:Lcom/voovio/sweep/Voovio;

.field private m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

.field private m_oHandler:Landroid/os/Handler;

.field private m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

.field private m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

.field private m_oRMLIntervalRunnable:Ljava/lang/Runnable;

.field private m_oRMLTaskRunnable:Ljava/lang/Runnable;

.field private m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

.field private m_oRotation:Lcom/voovio/sweep/Rotation;

.field m_oSweep:Lcom/voovio/sweep/Sweep;

.field private m_oTransition:Lcom/voovio/sweep/Transition;

.field private m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

.field private m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

.field private m_pt0:Lcom/voovio/voo3d/data/Vector3;

.field private m_pt1:Lcom/voovio/voo3d/data/Vector3;

.field private m_ptPos:Lcom/voovio/voo3d/data/Vector3;

.field private m_vDir:Lcom/voovio/voo3d/data/Vector3;

.field m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;


# direct methods
.method public constructor <init>(IIIILcom/voovio/sweep/ImageProvider;)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I
    .param p4, "config"    # I
    .param p5, "oImageProvider"    # Lcom/voovio/sweep/ImageProvider;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nConfig:I

    .line 37
    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    .line 38
    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    .line 41
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    .line 44
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    .line 47
    iput-boolean v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_bResourceManagerInherited:Z

    .line 48
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    .line 49
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    .line 50
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    .line 53
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 56
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    .line 57
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fVoovioMatrices:[[F

    .line 60
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    .line 63
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    .line 66
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    .line 67
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    .line 71
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 72
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    .line 74
    iput v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    .line 75
    iput v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    .line 79
    iput v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveDirection:F

    .line 81
    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocityForward:F

    .line 82
    const/high16 v0, 0x43480000

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocitySideward:F

    .line 86
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    .line 87
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    .line 88
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRotation:Lcom/voovio/sweep/Rotation;

    .line 92
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    .line 93
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    .line 94
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    .line 95
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    .line 99
    const/16 v0, 0x32

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nFramePeriod_ms:I

    .line 102
    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    .line 107
    iput-boolean v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_bResourceManagerInherited:Z

    .line 108
    new-instance v0, Lcom/voovio/sweep/ResourceManager;

    invoke-direct {v0, p5}, Lcom/voovio/sweep/ResourceManager;-><init>(Lcom/voovio/sweep/ImageProvider;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    .line 110
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/voovio/sweep/SweepOffScreen;->init(IIII)V

    .line 111
    return-void
.end method

.method public constructor <init>(IIIILcom/voovio/sweep/ResourceManager;)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I
    .param p4, "config"    # I
    .param p5, "oResourceManager"    # Lcom/voovio/sweep/ResourceManager;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nConfig:I

    .line 37
    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    .line 38
    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    .line 41
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    .line 44
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    .line 47
    iput-boolean v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_bResourceManagerInherited:Z

    .line 48
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    .line 49
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    .line 50
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    .line 53
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 56
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    .line 57
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fVoovioMatrices:[[F

    .line 60
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    .line 63
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    .line 66
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    .line 67
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    .line 71
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 72
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    .line 74
    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    .line 75
    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    .line 79
    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveDirection:F

    .line 81
    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocityForward:F

    .line 82
    const/high16 v0, 0x43480000

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocitySideward:F

    .line 86
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    .line 87
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    .line 88
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRotation:Lcom/voovio/sweep/Rotation;

    .line 92
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    .line 93
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    .line 94
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    .line 95
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    .line 99
    const/16 v0, 0x32

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nFramePeriod_ms:I

    .line 102
    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    .line 116
    iput-boolean v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_bResourceManagerInherited:Z

    .line 117
    iput-object p5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    .line 119
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/voovio/sweep/SweepOffScreen;->init(IIII)V

    .line 120
    return-void
.end method

.method static synthetic access$0(Lcom/voovio/sweep/SweepOffScreen;)Lcom/voovio/sweep/ResourceManager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/voovio/sweep/SweepOffScreen;)Lcom/voovio/sweep/GLOffScreen;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    return-object v0
.end method

.method static synthetic access$2(Lcom/voovio/sweep/SweepOffScreen;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/voovio/sweep/SweepOffScreen;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/voovio/sweep/SweepOffScreen;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/voovio/sweep/SweepOffScreen;)I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nFramePeriod_ms:I

    return v0
.end method

.method private cameraToVoovioStartPosition(Lcom/voovio/sweep/Voovio;)V
    .locals 11
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    const/4 v5, 0x0

    const v10, 0x3dcccccd

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 426
    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v4, v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setTilt(F)V

    .line 427
    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v4, v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setRotateY(F)V

    .line 430
    const/4 v1, 0x0

    .local v1, "ptPos":Lcom/voovio/voo3d/data/Vector3;
    const/4 v2, 0x0

    .line 431
    .local v2, "vDir":Lcom/voovio/voo3d/data/Vector3;
    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_1

    .line 432
    iget-object v4, p1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 433
    iget-object v4, p1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v4, v4, v8

    aget-object v4, v4, v8

    iget-object v3, v4, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    .line 434
    .local v3, "vN":Lcom/voovio/voo3d/data/Vector3;
    iget-object v4, p1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v4, v4, v8

    aget-object v4, v4, v8

    iget-object v0, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    .line 436
    .local v0, "ptOut":Lcom/voovio/voo3d/data/Vector3;
    new-instance v1, Lcom/voovio/voo3d/data/Vector3;

    .end local v1    # "ptPos":Lcom/voovio/voo3d/data/Vector3;
    iget v4, v0, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v5, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float/2addr v5, v10

    sub-float/2addr v4, v5

    .line 437
    iget v5, v0, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v6, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    .line 438
    iget v6, v0, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v7, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float/2addr v7, v10

    sub-float/2addr v6, v7

    .line 436
    invoke-direct {v1, v4, v5, v6}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    .line 446
    .end local v0    # "ptOut":Lcom/voovio/voo3d/data/Vector3;
    .end local v3    # "vN":Lcom/voovio/voo3d/data/Vector3;
    .restart local v1    # "ptPos":Lcom/voovio/voo3d/data/Vector3;
    :goto_0
    iget-object v2, p1, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    .line 448
    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v5, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v6, v1, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v7, v1, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 449
    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget v5, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v6, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v7, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 452
    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    const v5, 0x3d4ccccd

    invoke-virtual {v4, v5, v9}, Lcom/voovio/voo3d/scenegraph/Camera3D;->moveHorizontallyForward(FZ)V

    .line 453
    return-void

    .line 441
    :cond_0
    iget-object v1, p1, Lcom/voovio/sweep/Voovio;->m_ptNearestInsideVolume:Lcom/voovio/voo3d/data/Vector3;

    .line 442
    goto :goto_0

    .line 444
    :cond_1
    iget-object v4, p1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v4, v4, v9

    iget-object v4, v4, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v4, v4, v9

    aget-object v4, v4, v9

    iget-object v1, v4, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    goto :goto_0
.end method

.method private computeAutodriveVelocity()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 566
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    .line 567
    .local v4, "ptStart":Lcom/voovio/voo3d/data/Vector3;
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v6, v6, v10

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    iget-object v8, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v8, v8, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v8, v8, v10

    iget-object v8, v8, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v8, v8, v10

    aget-object v8, v8, v10

    iget-object v8, v8, Lcom/voovio/sweep/Portal;->m_vN:Lcom/voovio/voo3d/data/Vector3;

    const v9, 0x3dcccccd

    invoke-static {v8, v9}, Lcom/voovio/voo3d/math/VectorMath;->scale(Lcom/voovio/voo3d/data/Vector3;F)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v3

    .line 570
    .local v3, "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v2, v6, v10

    .line 571
    .local v2, "oTransition":Lcom/voovio/sweep/Transition;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v0

    .line 572
    .local v0, "fAngle":F
    :goto_0
    cmpl-float v6, v0, v7

    if-eqz v6, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v6, v0, v6

    :goto_1
    iput v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveDirection:F

    .line 575
    cmpl-float v6, v0, v7

    if-nez v6, :cond_0

    .line 576
    invoke-static {v3, v4}, Lcom/voovio/voo3d/math/VectorMath;->sub(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v5

    .line 577
    .local v5, "vDir":Lcom/voovio/voo3d/data/Vector3;
    invoke-virtual {v5}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 579
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v5, v6}, Lcom/voovio/voo3d/data/Vector3;->dot(Lcom/voovio/voo3d/data/Vector3;)F

    move-result v1

    .line 580
    .local v1, "fDot":F
    cmpl-float v6, v1, v7

    if-lez v6, :cond_3

    .line 581
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 582
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 583
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 591
    .end local v1    # "fDot":F
    .end local v5    # "vDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_0
    :goto_2
    return-void

    .end local v0    # "fAngle":F
    :cond_1
    move v0, v7

    .line 571
    goto :goto_0

    .restart local v0    # "fAngle":F
    :cond_2
    move v6, v7

    .line 572
    goto :goto_1

    .line 586
    .restart local v1    # "fDot":F
    .restart local v5    # "vDir":Lcom/voovio/voo3d/data/Vector3;
    :cond_3
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 587
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 588
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    goto :goto_2
.end method

.method private computeTransitionMatrices()V
    .locals 4

    .prologue
    .line 525
    invoke-static {}, Lcom/voovio/voo3d/data/Matrix4Pool;->getMatrix4()Lcom/voovio/voo3d/data/Matrix4;

    move-result-object v1

    .line 527
    .local v1, "oTempMatrix":Lcom/voovio/voo3d/data/Matrix4;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 538
    invoke-static {v1}, Lcom/voovio/voo3d/data/Matrix4Pool;->returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 539
    return-void

    .line 528
    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 529
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v2, v2, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    .line 535
    :goto_1
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 530
    :cond_1
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 531
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v2, v2, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    invoke-virtual {v1, v2}, Lcom/voovio/voo3d/data/Matrix4;->copy(Lcom/voovio/voo3d/data/Matrix4;)V

    goto :goto_1

    .line 533
    :cond_2
    invoke-virtual {v1}, Lcom/voovio/voo3d/data/Matrix4;->identity()V

    goto :goto_1
.end method

.method private computeVoovioMatrices()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 545
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v0, v2, v4

    .line 546
    .local v0, "oNextTransition":Lcom/voovio/sweep/Transition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    iget-object v2, v0, Lcom/voovio/sweep/Transition;->m_aTR0:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fVoovioMatrices:[[F

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    .line 549
    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v2, v5

    .line 550
    .local v1, "oPrevTransition":Lcom/voovio/sweep/Transition;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    iget-object v2, v1, Lcom/voovio/sweep/Transition;->m_aTR1:[Lcom/voovio/sweep/Transform;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/voovio/sweep/Transform;->m_oM:Lcom/voovio/voo3d/data/Matrix4;

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fVoovioMatrices:[[F

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Matrix4;->FillArray([F)V

    .line 552
    :cond_1
    return-void
.end method

.method private hasAutodrive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 558
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private processDisplacements(FFF)V
    .locals 29
    .param p1, "fX"    # F
    .param p2, "fAngleX"    # F
    .param p3, "fAngleY"    # F

    .prologue
    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_13

    .line 616
    const/16 v24, 0x0

    .line 617
    .local v24, "fTurnDirection":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    instance-of v2, v2, Lcom/voovio/sweep/Rotation;

    if-eqz v2, :cond_b

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    check-cast v2, Lcom/voovio/sweep/Rotation;

    iget v0, v2, Lcom/voovio/sweep/Rotation;->m_fTurnDirection:F

    move/from16 v24, v0

    .line 619
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x3f800000

    cmpl-float v2, v24, v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_8

    const/high16 v2, -0x40800000

    cmpl-float v2, v24, v2

    if-nez v2, :cond_8

    .line 620
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    .line 631
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 633
    .local v21, "fDeltaD":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    .line 634
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_11

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    .line 636
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_4

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    .line 638
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4, v8}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    .line 640
    const/4 v15, 0x0

    .line 641
    .local v15, "bSetCurrentVoovio":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v2, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/voovio/sweep/Voovio;

    .line 642
    .local v26, "oNextVoovio":Lcom/voovio/sweep/Voovio;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_12

    .line 643
    const/4 v15, 0x1

    .line 645
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v3, 0x0

    aget-object v25, v2, v3

    .line 646
    .local v25, "oNextTransition":Lcom/voovio/sweep/Transition;
    if-eqz v25, :cond_5

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    move/from16 v0, v24

    neg-float v3, v0

    move/from16 v0, v21

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    double-to-float v4, v10

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->rotateY(F)V

    .line 651
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 658
    .end local v25    # "oNextTransition":Lcom/voovio/sweep/Transition;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 662
    if-eqz v15, :cond_7

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    .line 664
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/voovio/sweep/SweepOffScreen;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 757
    .end local v15    # "bSetCurrentVoovio":Z
    .end local v21    # "fDeltaD":F
    .end local v24    # "fTurnDirection":F
    .end local v26    # "oNextVoovio":Lcom/voovio/sweep/Voovio;
    :cond_7
    :goto_3
    return-void

    .line 621
    .restart local v24    # "fTurnDirection":F
    :cond_8
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_9

    const/high16 v2, -0x40800000

    cmpl-float v2, v24, v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_2

    const/high16 v2, 0x3f800000

    cmpl-float v2, v24, v2

    if-nez v2, :cond_2

    .line 622
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    goto/16 :goto_0

    .line 625
    :cond_b
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-eq v2, v3, :cond_d

    :cond_c
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_e

    .line 626
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    goto/16 :goto_0

    .line 627
    :cond_e
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-eq v2, v3, :cond_10

    :cond_f
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v2, v3, :cond_2

    .line 628
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    goto/16 :goto_0

    .line 635
    .restart local v21    # "fDeltaD":F
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    goto/16 :goto_1

    .line 653
    .restart local v15    # "bSetCurrentVoovio":Z
    .restart local v26    # "oNextVoovio":Lcom/voovio/sweep/Voovio;
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 654
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    goto/16 :goto_2

    .line 667
    .end local v15    # "bSetCurrentVoovio":Z
    .end local v21    # "fDeltaD":F
    .end local v24    # "fTurnDirection":F
    .end local v26    # "oNextVoovio":Lcom/voovio/sweep/Voovio;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v2, :cond_7

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    mul-float v5, v2, p1

    .line 670
    .local v5, "fDeltaX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    mul-float v6, v2, p1

    .line 671
    .local v6, "fDeltaY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    mul-float v7, v2, p1

    .line 673
    .local v7, "fDeltaZ":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v3, v3, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3}, Lcom/voovio/voo3d/data/Vector3;->copy(Lcom/voovio/voo3d/data/Vector3;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    add-float/2addr v3, v5

    iput v3, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    add-float/2addr v3, v6

    iput v3, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    add-float/2addr v3, v7

    iput v3, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v3, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, v4, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vSide:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v18

    .line 680
    .local v18, "fAngleDiffX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, v2, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_vOut:Lcom/voovio/voo3d/data/Vector3;

    sget-object v3, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    sget-object v4, Lcom/voovio/voo3d/math/VectorMath;->UNIT_Y:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4}, Lcom/voovio/voo3d/data/Vector3;->getAngle(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)F

    move-result v19

    .line 681
    .local v19, "fAngleDiffY":F
    const v2, 0x3e19999a

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    const v3, 0x3c8efa35

    mul-float v20, v2, v3

    .line 683
    .local v20, "fAngularStep":F
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_15

    .line 684
    :cond_14
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_17

    .line 685
    :cond_15
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 686
    .local v16, "fAbsAngleDiffX":F
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 688
    .local v17, "fAbsAngleDiffY":F
    move/from16 v0, v16

    float-to-double v2, v0

    const-wide v10, 0x3f847ae147ae147bL

    cmpl-double v2, v2, v10

    if-lez v2, :cond_16

    .line 689
    div-float v22, v18, v16

    .line 691
    .local v22, "fSignX":F
    cmpg-float v2, v20, v16

    if-gez v2, :cond_19

    move/from16 v0, v22

    neg-float v2, v0

    mul-float p2, v2, v20

    .line 692
    :goto_4
    const v2, 0x42652ee0

    mul-float p2, p2, v2

    .line 695
    .end local v22    # "fSignX":F
    :cond_16
    move/from16 v0, v17

    float-to-double v2, v0

    const-wide v10, 0x3f847ae147ae147bL

    cmpl-double v2, v2, v10

    if-lez v2, :cond_17

    .line 696
    div-float v23, v19, v17

    .line 698
    .local v23, "fSignY":F
    cmpg-float v2, v20, v17

    if-gez v2, :cond_1a

    move/from16 v0, v23

    neg-float v2, v0

    mul-float p3, v2, v20

    .line 699
    :goto_5
    const v2, 0x42652ee0

    mul-float p3, p3, v2

    .line 704
    .end local v16    # "fAbsAngleDiffX":F
    .end local v17    # "fAbsAngleDiffY":F
    .end local v23    # "fSignY":F
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/voovio/sweep/SweepOffScreen;->testTransition(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/sweep/Transition;

    move-result-object v27

    .line 705
    .local v27, "oTransition":Lcom/voovio/sweep/Transition;
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-nez v2, :cond_1b

    .line 706
    if-eqz v27, :cond_1c

    invoke-virtual/range {v27 .. v27}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 707
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 709
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    .line 711
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v3, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v2, v3, :cond_18

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    .line 714
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/SweepOffScreen;->computeTransitionMatrices()V

    goto/16 :goto_3

    .line 691
    .end local v27    # "oTransition":Lcom/voovio/sweep/Transition;
    .restart local v16    # "fAbsAngleDiffX":F
    .restart local v17    # "fAbsAngleDiffY":F
    .restart local v22    # "fSignX":F
    :cond_19
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 p2, v0

    goto :goto_4

    .line 698
    .end local v22    # "fSignX":F
    .restart local v23    # "fSignY":F
    :cond_1a
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 p3, v0

    goto :goto_5

    .line 719
    .end local v16    # "fAbsAngleDiffX":F
    .end local v17    # "fAbsAngleDiffY":F
    .end local v23    # "fSignY":F
    .restart local v27    # "oTransition":Lcom/voovio/sweep/Transition;
    :cond_1b
    if-eqz v27, :cond_1c

    .line 720
    const/4 v7, 0x0

    move v6, v7

    move v5, v7

    .line 725
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/voovio/sweep/FrustumLimiter;->Test(Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/Voovio;FFFFF)Z

    move-result v14

    .line 727
    .local v14, "bLimitReached":Z
    if-eqz v27, :cond_1d

    invoke-virtual/range {v27 .. v27}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 732
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    invoke-virtual {v2}, Lcom/voovio/sweep/FrustumLimiter;->getTriggerIntersection()Ljava/lang/String;

    move-result-object v28

    .line 733
    .local v28, "strTriggerIntersection":Ljava/lang/String;
    const/4 v9, 0x0

    .line 734
    .local v9, "oTurnTransition":Lcom/voovio/sweep/Transition;
    const-string v2, "left"

    move-object/from16 v0, v28

    if-eq v0, v2, :cond_1e

    const-string v2, "both"

    move-object/from16 v0, v28

    if-ne v0, v2, :cond_20

    .line 735
    :cond_1e
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_20

    .line 736
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    .line 741
    :cond_1f
    :goto_6
    if-eqz v9, :cond_7

    .line 742
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oRotation:Lcom/voovio/sweep/Rotation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/voovio/sweep/Rotation;->Setup(Lcom/voovio/sweep/Transition;Lcom/voovio/sweep/Voovio;Lcom/voovio/voo3d/scenegraph/Camera3D;Lcom/voovio/sweep/FrustumLimiter;Z)V

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oRotation:Lcom/voovio/sweep/Rotation;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget v2, v2, Lcom/voovio/sweep/FrustumLimiter;->m_fDeltaD:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    .line 747
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionAccumD:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v3, v3, Lcom/voovio/sweep/Transition;->m_fD:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    .line 749
    invoke-direct/range {p0 .. p0}, Lcom/voovio/sweep/SweepOffScreen;->computeTransitionMatrices()V

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v2, v3, v4, v8}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v8, v8, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v4, v8, v10}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    goto/16 :goto_3

    .line 737
    :cond_20
    const-string v2, "right"

    move-object/from16 v0, v28

    if-eq v0, v2, :cond_21

    const-string v2, "both"

    move-object/from16 v0, v28

    if-ne v0, v2, :cond_1f

    .line 738
    :cond_21
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_1f

    .line 739
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto/16 :goto_6
.end method

.method private setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 11
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 338
    iput-object p1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    .line 340
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->computeVoovioMatrices()V

    .line 343
    const/4 v3, 0x0

    .local v3, "oPrevTransition":Lcom/voovio/sweep/Transition;
    const/4 v2, 0x0

    .line 344
    .local v2, "oNextTransition":Lcom/voovio/sweep/Transition;
    const/4 v1, 0x0

    .local v1, "fPrevAngle":F
    const/4 v0, 0x0

    .line 346
    .local v0, "fNextAngle":F
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    iput-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    .line 347
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    if-eqz v6, :cond_0

    .line 348
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v2, v6, v8

    .line 349
    invoke-virtual {v2}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v0

    .line 352
    :cond_0
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v10

    if-eqz v6, :cond_1

    .line 353
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v6, v10

    .line 354
    invoke-virtual {v3}, Lcom/voovio/sweep/Transition;->getAngleBetweenPortalNormals()F

    move-result v1

    .line 357
    :cond_1
    if-eqz v2, :cond_8

    cmpl-float v6, v0, v9

    if-lez v6, :cond_8

    if-eqz v3, :cond_8

    cmpg-float v6, v1, v9

    if-gez v6, :cond_8

    .line 358
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_7

    .line 359
    :cond_2
    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    .line 368
    :cond_3
    :goto_0
    if-eqz v2, :cond_b

    cmpg-float v6, v0, v9

    if-gez v6, :cond_b

    if-eqz v3, :cond_b

    cmpl-float v6, v1, v9

    if-lez v6, :cond_b

    .line 369
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_a

    .line 370
    :cond_4
    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    .line 380
    :cond_5
    :goto_1
    const/4 v5, 0x0

    .local v5, "ptStart":Lcom/voovio/voo3d/data/Vector3;
    const/4 v4, 0x0

    .line 381
    .local v4, "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    instance-of v6, v6, Lcom/voovio/sweep/Rotation;

    if-eqz v6, :cond_d

    .line 382
    new-instance v5, Lcom/voovio/voo3d/data/Vector3;

    .end local v5    # "ptStart":Lcom/voovio/voo3d/data/Vector3;
    invoke-direct {v5}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    .line 383
    .restart local v5    # "ptStart":Lcom/voovio/voo3d/data/Vector3;
    new-instance v4, Lcom/voovio/voo3d/data/Vector3;

    .end local v4    # "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    const/high16 v6, 0x3f800000

    invoke-direct {v4, v6, v9, v9}, Lcom/voovio/voo3d/data/Vector3;-><init>(FFF)V

    .line 400
    .restart local v4    # "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->x:F

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->x:F

    .line 401
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->y:F

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->y:F

    .line 402
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    iget v7, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    iget v8, v5, Lcom/voovio/voo3d/data/Vector3;->z:F

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/voovio/voo3d/data/Vector3;->z:F

    .line 403
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v6}, Lcom/voovio/voo3d/data/Vector3;->normalize()F

    .line 406
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v6, v7}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 409
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->hasAutodrive()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 410
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->computeAutodriveVelocity()V

    .line 418
    :goto_3
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v7, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v6, v7}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 419
    return-void

    .line 360
    .end local v4    # "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    .end local v5    # "ptStart":Lcom/voovio/voo3d/data/Vector3;
    :cond_7
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 361
    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto :goto_0

    .line 363
    :cond_8
    if-eqz v2, :cond_9

    cmpl-float v6, v0, v9

    if-lez v6, :cond_9

    .line 364
    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto :goto_0

    .line 365
    :cond_9
    if-eqz v3, :cond_3

    cmpg-float v6, v1, v9

    if-gez v6, :cond_3

    .line 366
    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionR:Lcom/voovio/sweep/Transition;

    goto/16 :goto_0

    .line 371
    :cond_a
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v7, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_5

    .line 372
    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    goto :goto_1

    .line 374
    :cond_b
    if-eqz v2, :cond_c

    cmpg-float v6, v0, v9

    if-gez v6, :cond_c

    .line 375
    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    goto/16 :goto_1

    .line 376
    :cond_c
    if-eqz v3, :cond_5

    cmpl-float v6, v1, v9

    if-lez v6, :cond_5

    .line 377
    iput-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTurnTransitionL:Lcom/voovio/sweep/Transition;

    goto/16 :goto_1

    .line 385
    .restart local v4    # "ptEnd":Lcom/voovio/voo3d/data/Vector3;
    .restart local v5    # "ptStart":Lcom/voovio/voo3d/data/Vector3;
    :cond_d
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v6, :cond_11

    .line 386
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v6, v6, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v7, Lcom/voovio/sweep/Transition;->DIR_0_1:I

    if-ne v6, v7, :cond_f

    .line 387
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v5, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    .line 388
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v6, v6, v8

    aget-object v6, v6, v8

    iget-object v4, v6, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    .line 389
    :goto_4
    goto/16 :goto_2

    .line 388
    :cond_e
    sget-object v6, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v5, v6}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v4

    goto :goto_4

    .line 390
    :cond_f
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v6, v6, Lcom/voovio/sweep/Transition;->m_nDir:I

    sget v7, Lcom/voovio/sweep/Transition;->DIR_1_0:I

    if-ne v6, v7, :cond_6

    .line 391
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v10

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v6, v6, v10

    aget-object v6, v6, v10

    iget-object v5, v6, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    .line 392
    :goto_5
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v4, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    .line 394
    goto/16 :goto_2

    .line 391
    :cond_10
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v5, v6, Lcom/voovio/sweep/Voovio;->m_ptCamPos:Lcom/voovio/voo3d/data/Vector3;

    goto :goto_5

    .line 396
    :cond_11
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v5, v6, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    .line 397
    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v6, v6, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/voovio/sweep/Transition;->m_aPortals:[[Lcom/voovio/sweep/Portal;

    aget-object v6, v6, v8

    aget-object v6, v6, v8

    iget-object v4, v6, Lcom/voovio/sweep/Portal;->m_ptCenter:Lcom/voovio/voo3d/data/Vector3;

    :goto_6
    goto/16 :goto_2

    :cond_12
    sget-object v6, Lcom/voovio/voo3d/math/VectorMath;->UNIT_X:Lcom/voovio/voo3d/data/Vector3;

    invoke-static {v5, v6}, Lcom/voovio/voo3d/math/VectorMath;->add(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/voo3d/data/Vector3;

    move-result-object v4

    goto :goto_6

    .line 412
    :cond_13
    iput v9, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveDirection:F

    .line 414
    iget v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    goto/16 :goto_3
.end method

.method private setGLViewportAndProjection()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    new-instance v1, Lcom/voovio/sweep/SweepOffScreen$5;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/SweepOffScreen$5;-><init>(Lcom/voovio/sweep/SweepOffScreen;)V

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    .line 498
    return-void
.end method

.method private startFrom(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 306
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v2, :cond_0

    .line 333
    :goto_0
    return-void

    .line 309
    :cond_0
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 313
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateCameraViewport()V

    .line 316
    if-nez p1, :cond_3

    const/4 v2, 0x0

    :goto_2
    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    .line 318
    move v0, p1

    .line 319
    .local v0, "initialIndex":I
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v2}, Lcom/voovio/sweep/ResourceManager;->ClearQueue()V

    .line 320
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    new-instance v3, Lcom/voovio/sweep/SweepOffScreen$4;

    invoke-direct {v3, p0, v0}, Lcom/voovio/sweep/SweepOffScreen$4;-><init>(Lcom/voovio/sweep/SweepOffScreen;I)V

    invoke-virtual {v2, v3}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    .line 330
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v2, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    .line 331
    .local v1, "oVoovio":Lcom/voovio/sweep/Voovio;
    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepOffScreen;->cameraToVoovioStartPosition(Lcom/voovio/sweep/Voovio;)V

    .line 332
    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepOffScreen;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    goto :goto_0

    .line 310
    .end local v0    # "initialIndex":I
    .end local v1    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_2
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v2}, Lcom/voovio/sweep/Sweep;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v2}, Lcom/voovio/sweep/Sweep;->size()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    goto :goto_1

    .line 316
    :cond_3
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v2, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    goto :goto_2
.end method

.method private testTransition(Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)Lcom/voovio/sweep/Transition;
    .locals 4
    .param p1, "pt0"    # Lcom/voovio/voo3d/data/Vector3;
    .param p2, "pt1"    # Lcom/voovio/voo3d/data/Vector3;

    .prologue
    const/4 v2, 0x0

    .line 504
    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 518
    :cond_0
    :goto_0
    return-object v1

    .line 508
    :cond_1
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    move-object v1, v2

    .line 518
    goto :goto_0

    .line 510
    :cond_2
    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    .line 511
    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    aget-object v1, v3, v0

    .line 513
    .local v1, "oTransition":Lcom/voovio/sweep/Transition;
    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v1, v0, p1, p2, v3}, Lcom/voovio/sweep/Transition;->TestTransition(ILcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/scenegraph/Camera3D;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 508
    .end local v1    # "oTransition":Lcom/voovio/sweep/Transition;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateCameraViewport()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v9, 0x4000000000000000L

    .line 459
    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;->getViewport()Lcom/voovio/voo3d/view/Viewport;

    move-result-object v3

    .line 460
    .local v3, "oViewport":Lcom/voovio/voo3d/view/Viewport;
    invoke-virtual {v3, v6}, Lcom/voovio/voo3d/view/Viewport;->setOffsetX(F)V

    .line 461
    invoke-virtual {v3, v6}, Lcom/voovio/voo3d/view/Viewport;->setOffsetY(F)V

    .line 462
    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    invoke-virtual {v3, v5}, Lcom/voovio/voo3d/view/Viewport;->setWidth(I)V

    .line 463
    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    invoke-virtual {v3, v5}, Lcom/voovio/voo3d/view/Viewport;->setHeight(I)V

    .line 467
    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v5, v5, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Voovio;

    .line 469
    .local v4, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget v5, v4, Lcom/voovio/sweep/Voovio;->m_nWidth:I

    int-to-float v5, v5

    iget v6, v4, Lcom/voovio/sweep/Voovio;->m_nHeight:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 470
    .local v1, "fAspectVoovio":F
    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 472
    .local v0, "fAspectViewport":F
    cmpl-float v5, v0, v1

    if-lez v5, :cond_0

    iget v5, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    const v6, 0x3c8efa35

    mul-float/2addr v5, v6

    float-to-double v5, v5

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    float-to-double v7, v1

    mul-double/2addr v5, v7

    float-to-double v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    mul-double/2addr v5, v9

    const-wide v7, 0x404ca5dc00000000L

    mul-double/2addr v5, v7

    double-to-float v5, v5

    const v6, 0x3dcccccd

    sub-float v2, v5, v6

    .line 474
    .local v2, "fFOV":F
    :goto_0
    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v5, v2}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setFov(F)V

    .line 476
    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v6, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    invoke-virtual {v5, v6}, Lcom/voovio/sweep/FrustumLimiter;->UpdateFrustum(Lcom/voovio/voo3d/scenegraph/Camera3D;)V

    .line 479
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->setGLViewportAndProjection()V

    .line 480
    return-void

    .line 473
    .end local v2    # "fFOV":F
    :cond_0
    iget v2, v4, Lcom/voovio/sweep/Voovio;->m_fFOV:F

    goto :goto_0
.end method

.method private updateScene()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 596
    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nFramePeriod_ms:I

    int-to-float v4, v4

    const/high16 v5, 0x447a0000

    div-float v2, v4, v5

    .line 597
    .local v2, "fFactor":F
    const/4 v3, 0x0

    .local v3, "fX":F
    const/4 v0, 0x0

    .local v0, "fAngleX":F
    const/4 v1, 0x0

    .line 599
    .local v1, "fAngleY":F
    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveDirection:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    .line 600
    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocityForward:F

    mul-float v3, v4, v2

    .line 606
    :goto_0
    cmpl-float v4, v3, v6

    if-nez v4, :cond_0

    cmpl-float v4, v0, v6

    if-nez v4, :cond_0

    cmpl-float v4, v1, v6

    if-eqz v4, :cond_1

    .line 607
    :cond_0
    invoke-direct {p0, v3, v0, v1}, Lcom/voovio/sweep/SweepOffScreen;->processDisplacements(FFF)V

    .line 608
    :cond_1
    return-void

    .line 603
    :cond_2
    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveDirection:F

    iget v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocitySideward:F

    mul-float/2addr v4, v5

    mul-float v1, v4, v2

    goto :goto_0
.end method

.method private waitForTransitionReady()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 863
    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v3, :cond_2

    .line 864
    const/16 v2, 0x32

    .local v2, "timestep":I
    const/16 v1, 0x3e8

    .local v1, "timeout":I
    const/4 v0, 0x0

    .line 866
    .local v0, "time":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v3, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    iget-boolean v3, v3, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v3, v3, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    iget-boolean v3, v3, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v3, :cond_1

    .line 875
    :cond_0
    if-lt v0, v1, :cond_2

    .line 876
    const/4 v3, -0x1

    .line 879
    .end local v0    # "time":I
    .end local v1    # "timeout":I
    .end local v2    # "timestep":I
    :goto_1
    return v3

    .line 868
    .restart local v0    # "time":I
    .restart local v1    # "timeout":I
    .restart local v2    # "timestep":I
    :cond_1
    int-to-long v5, v2

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 869
    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    add-int/2addr v0, v2

    goto :goto_0

    .end local v0    # "time":I
    .end local v1    # "timeout":I
    .end local v2    # "timestep":I
    :cond_2
    move v3, v4

    .line 879
    goto :goto_1

    .line 871
    .restart local v0    # "time":I
    .restart local v1    # "timeout":I
    .restart local v2    # "timestep":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    .line 196
    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    .line 197
    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    .line 200
    :cond_0
    invoke-virtual {p0, v2}, Lcom/voovio/sweep/SweepOffScreen;->setSweep(Lcom/voovio/sweep/Sweep;)V

    .line 202
    iget-boolean v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_bResourceManagerInherited:Z

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    invoke-virtual {v0}, Lcom/voovio/sweep/ResourceManager;->dispose()V

    .line 204
    :cond_1
    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    .line 206
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    invoke-virtual {v0}, Lcom/voovio/sweep/GLOffScreen;->dispose()V

    .line 208
    iput-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    .line 210
    :cond_2
    return-void
.end method

.method public getNextFrame()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 773
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    .line 775
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateScene()V

    .line 777
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->waitForTransitionReady()I

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    const-string v1, "SweepOffScreen"

    const-string v2, "Timeout requesting next frame: Transition image not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :goto_0
    return-object v0

    .line 782
    :cond_0
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 783
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :goto_1
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    if-lez v1, :cond_1

    .line 784
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    .line 786
    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 782
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    invoke-virtual {v1}, Lcom/voovio/sweep/GLOffScreen;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public getNextFrameAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 794
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    .line 796
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateScene()V

    .line 798
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->waitForTransitionReady()I

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    const-string v1, "SweepOffScreen"

    const-string v2, "Timeout requesting next frame: Transition image not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :goto_0
    return-object v0

    .line 803
    :cond_0
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 804
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :goto_1
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    if-lez v1, :cond_1

    .line 805
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    .line 807
    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 803
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_2
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    invoke-virtual {v1}, Lcom/voovio/sweep/GLOffScreen;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1
.end method

.method public getNextFrameAsByteBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 815
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    .line 817
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateScene()V

    .line 819
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->waitForTransitionReady()I

    move-result v2

    if-eqz v2, :cond_0

    .line 820
    const-string v2, "SweepOffScreen"

    const-string v3, "Timeout requesting next frame: Transition image not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :goto_0
    return v1

    .line 824
    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    invoke-virtual {v2, p1}, Lcom/voovio/sweep/GLOffScreen;->getByteBuffer(Ljava/nio/ByteBuffer;)I

    .line 826
    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    if-le v2, v0, :cond_2

    .line 827
    .local v0, "bLastFrame":Z
    :goto_1
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    if-lez v1, :cond_1

    .line 828
    iget v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    .line 830
    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    move v1, v0

    .line 832
    goto :goto_0

    .end local v0    # "bLastFrame":Z
    :cond_2
    move v0, v1

    .line 826
    goto :goto_1
.end method

.method public getSweep()Lcom/voovio/sweep/Sweep;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    return-object v0
.end method

.method public getTotalNumberOfFrames()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 838
    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v2, v2, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    .line 840
    .local v1, "oVoovio":Lcom/voovio/sweep/Voovio;
    iput v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    .line 841
    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepOffScreen;->cameraToVoovioStartPosition(Lcom/voovio/sweep/Voovio;)V

    .line 842
    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepOffScreen;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, "frames":I
    :goto_0
    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 853
    iput v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    .line 854
    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepOffScreen;->cameraToVoovioStartPosition(Lcom/voovio/sweep/Voovio;)V

    .line 855
    invoke-direct {p0, v1}, Lcom/voovio/sweep/SweepOffScreen;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 857
    return v0

    .line 846
    :cond_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateScene()V

    .line 847
    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    if-lez v2, :cond_1

    .line 848
    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    .line 850
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public init(IIII)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I
    .param p4, "config"    # I

    .prologue
    const/16 v1, 0x64

    const/16 v7, 0x10

    const/4 v6, 0x2

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/voovio/sweep/SweepOffScreen;->setSize(II)V

    .line 127
    const/high16 v0, 0x447a0000

    int-to-float v2, p3

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nFramePeriod_ms:I

    .line 128
    iput p4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nConfig:I

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/voovio/sweep/GLOffScreen;

    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    iget v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    iget v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nConfig:I

    invoke-direct {v0, v2, v3, v4}, Lcom/voovio/sweep/GLOffScreen;-><init>(III)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    .line 134
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    invoke-virtual {v0, p0}, Lcom/voovio/sweep/GLOffScreen;->setRenderer(Lcom/voovio/sweep/GLOffScreen$Renderer;)V

    .line 137
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/voovio/sweep/ResourceManager;->setListener(Lcom/voovio/sweep/ResourceManager$OnReadyListener;)V

    .line 139
    new-instance v0, Lcom/voovio/sweep/SweepOffScreen$1;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepOffScreen$1;-><init>(Lcom/voovio/sweep/SweepOffScreen;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLTaskRunnable:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lcom/voovio/sweep/SweepOffScreen$2;

    invoke-direct {v0, p0}, Lcom/voovio/sweep/SweepOffScreen$2;-><init>(Lcom/voovio/sweep/SweepOffScreen;)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    .line 151
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRMLIntervalRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 154
    new-instance v0, Lcom/voovio/voo3d/scenegraph/Camera3D;

    const/high16 v3, 0x42480000

    const/high16 v4, 0x3f000000

    const v5, 0x461c4000

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;-><init>(IIFFF)V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    .line 157
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vMovementDir:Lcom/voovio/voo3d/data/Vector3;

    .line 160
    new-instance v0, Lcom/voovio/sweep/FrustumLimiter;

    invoke-direct {v0}, Lcom/voovio/sweep/FrustumLimiter;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    .line 163
    new-instance v0, Lcom/voovio/sweep/Rotation;

    invoke-direct {v0}, Lcom/voovio/sweep/Rotation;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oRotation:Lcom/voovio/sweep/Rotation;

    .line 166
    filled-new-array {v6, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fVoovioMatrices:[[F

    .line 167
    filled-new-array {v6, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    .line 170
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_pt0:Lcom/voovio/voo3d/data/Vector3;

    .line 171
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_pt1:Lcom/voovio/voo3d/data/Vector3;

    .line 172
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    .line 173
    new-instance v0, Lcom/voovio/voo3d/data/Vector3;

    invoke-direct {v0}, Lcom/voovio/voo3d/data/Vector3;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    .line 175
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 922
    const/16 v1, 0x4100

    invoke-static {v1}, Landroid/opengl/GLES11;->glClear(I)V

    .line 925
    const/16 v1, 0x1700

    invoke-static {v1}, Landroid/opengl/GLES11;->glMatrixMode(I)V

    .line 926
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, v1, Lcom/voovio/voo3d/scenegraph/Camera3D;->m_aViewMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glLoadMatrixf([FI)V

    .line 929
    const/4 v6, 0x1

    .line 930
    .local v6, "bDrawVoovio":Z
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v1, :cond_0

    .line 931
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v1, v1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    .line 932
    .local v0, "oVoovio0":Lcom/voovio/sweep/Voovio;
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v1, v1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/voovio/sweep/Voovio;

    .line 935
    .local v11, "oVoovio1":Lcom/voovio/sweep/Voovio;
    iget-boolean v1, v0, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v1, :cond_7

    iget-boolean v1, v11, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v1, :cond_7

    const/4 v6, 0x0

    .line 938
    :goto_0
    if-nez v6, :cond_0

    .line 939
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    invoke-virtual {v1}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 940
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES11;->glEnable(I)V

    .line 942
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    .line 943
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 945
    const/16 v1, 0x100

    invoke-static {v1}, Landroid/opengl/GLES11;->glClear(I)V

    .line 947
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    .line 948
    const/high16 v1, 0x3f800000

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v11}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v3

    invoke-virtual {v11, p1, v1, v2, v3}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 950
    const/16 v1, 0x100

    invoke-static {v1}, Landroid/opengl/GLES11;->glClear(I)V

    .line 952
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    .line 953
    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v4

    iget-object v5, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    check-cast v5, Lcom/voovio/sweep/Rotation;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/voovio/sweep/Voovio;->drawRotation(Ljavax/microedition/khronos/opengles/GL10;F[FILcom/voovio/sweep/Rotation;)V

    .line 955
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES11;->glDisable(I)V

    .line 976
    .end local v0    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    .end local v11    # "oVoovio1":Lcom/voovio/sweep/Voovio;
    :cond_0
    :goto_1
    if-eqz v6, :cond_6

    .line 978
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-boolean v1, v1, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v1, :cond_6

    .line 979
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x0

    aget-object v7, v1, v2

    .line 980
    .local v7, "oNextTransition":Lcom/voovio/sweep/Transition;
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_aTransitions:[Lcom/voovio/sweep/Transition;

    const/4 v2, 0x1

    aget-object v9, v1, v2

    .line 982
    .local v9, "oPrevTransition":Lcom/voovio/sweep/Transition;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v7, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    move-object v8, v1

    .line 983
    .local v8, "oNextVoovio":Lcom/voovio/sweep/Voovio;
    :goto_2
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/voovio/sweep/Transition;->isRotation()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v9, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    move-object v10, v1

    .line 985
    .local v10, "oPrevVoovio":Lcom/voovio/sweep/Voovio;
    :goto_3
    if-nez v10, :cond_1

    if-eqz v8, :cond_1

    iget-boolean v1, v8, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-nez v1, :cond_3

    .line 986
    :cond_1
    if-nez v8, :cond_2

    if-eqz v10, :cond_2

    iget-boolean v1, v10, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-nez v1, :cond_3

    .line 987
    :cond_2
    if-eqz v10, :cond_b

    iget-boolean v1, v10, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v1, :cond_b

    if-eqz v8, :cond_b

    iget-boolean v1, v8, Lcom/voovio/sweep/Voovio;->m_bCreated:Z

    if-eqz v1, :cond_b

    .line 988
    :cond_3
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES11;->glEnable(I)V

    .line 990
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    .line 991
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v4}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 993
    const/16 v1, 0x100

    invoke-static {v1}, Landroid/opengl/GLES11;->glClear(I)V

    .line 995
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    .line 996
    if-eqz v10, :cond_4

    .line 997
    const/high16 v1, 0x3f800000

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fVoovioMatrices:[[F

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v10}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v3

    invoke-virtual {v10, p1, v1, v2, v3}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 998
    :cond_4
    if-eqz v8, :cond_5

    .line 999
    const/high16 v1, 0x3f800000

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fVoovioMatrices:[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v8}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v3

    invoke-virtual {v8, p1, v1, v2, v3}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 1001
    :cond_5
    const/16 v1, 0x100

    invoke-static {v1}, Landroid/opengl/GLES11;->glClear(I)V

    .line 1003
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    .line 1004
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v4}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 1006
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES11;->glDisable(I)V

    .line 1015
    .end local v7    # "oNextTransition":Lcom/voovio/sweep/Transition;
    .end local v8    # "oNextVoovio":Lcom/voovio/sweep/Voovio;
    .end local v9    # "oPrevTransition":Lcom/voovio/sweep/Transition;
    .end local v10    # "oPrevVoovio":Lcom/voovio/sweep/Voovio;
    :cond_6
    :goto_4
    return-void

    .line 935
    .restart local v0    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    .restart local v11    # "oVoovio1":Lcom/voovio/sweep/Voovio;
    :cond_7
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 958
    :cond_8
    const/high16 v1, 0x3f800000

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 960
    const/16 v1, 0x100

    invoke-static {v1}, Landroid/opengl/GLES11;->glClear(I)V

    .line 962
    const/high16 v1, 0x3f800000

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v11, p1, v1, v2, v3}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 964
    const/16 v1, 0x100

    invoke-static {v1}, Landroid/opengl/GLES11;->glClear(I)V

    .line 966
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES11;->glEnable(I)V

    .line 967
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    .line 969
    const/high16 v1, 0x3f800000

    iget v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionFactor:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fTransitionMatrices:[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F[FI)V

    .line 971
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES11;->glDisable(I)V

    goto/16 :goto_1

    .line 982
    .end local v0    # "oVoovio0":Lcom/voovio/sweep/Voovio;
    .end local v11    # "oVoovio1":Lcom/voovio/sweep/Voovio;
    .restart local v7    # "oNextTransition":Lcom/voovio/sweep/Transition;
    .restart local v9    # "oPrevTransition":Lcom/voovio/sweep/Transition;
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 983
    .restart local v8    # "oNextVoovio":Lcom/voovio/sweep/Voovio;
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1009
    .restart local v10    # "oPrevVoovio":Lcom/voovio/sweep/Voovio;
    :cond_b
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES11;->glDisable(I)V

    .line 1011
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, p1, v2}, Lcom/voovio/sweep/Voovio;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_4
.end method

.method public onInit(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 890
    const/16 v0, 0x901

    invoke-static {v0}, Landroid/opengl/GLES11;->glFrontFace(I)V

    .line 892
    const/16 v0, 0x1d01

    invoke-static {v0}, Landroid/opengl/GLES11;->glShadeModel(I)V

    .line 893
    invoke-static {v1, v1, v1, v2}, Landroid/opengl/GLES11;->glClearColor(FFFF)V

    .line 894
    invoke-static {v2}, Landroid/opengl/GLES11;->glClearDepthf(F)V

    .line 895
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES11;->glEnable(I)V

    .line 896
    const/16 v0, 0x201

    invoke-static {v0}, Landroid/opengl/GLES11;->glDepthFunc(I)V

    .line 898
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-static {v0, v1}, Landroid/opengl/GLES11;->glHint(II)V

    .line 901
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/16 v2, 0x2100

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES11;->glTexEnvx(III)V

    .line 903
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-nez v0, :cond_1

    .line 906
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepOffScreen;->startFrom(I)V

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->setGLViewportAndProjection()V

    .line 913
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 216
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    const/high16 v2, -0x40800000

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    invoke-virtual {v1, v2, v3, v4}, Lcom/voovio/sweep/Transition;->GetPositionAndDirection(FLcom/voovio/voo3d/data/Vector3;Lcom/voovio/voo3d/data/Vector3;)V

    .line 219
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_ptPos:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setPosition(FFFZ)V

    .line 220
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen;->m_vDir:Lcom/voovio/voo3d/data/Vector3;

    iget v4, v4, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 223
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget-object v1, v1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    iget v2, v2, Lcom/voovio/sweep/Transition;->m_nPortalOut:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    .line 224
    .local v0, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eq v0, v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oPrevVoovio:Lcom/voovio/sweep/Voovio;

    .line 226
    invoke-direct {p0, v0}, Lcom/voovio/sweep/SweepOffScreen;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    .line 229
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 234
    .end local v0    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_1
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v1, v1, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 243
    :cond_3
    return-void

    .line 235
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    .line 236
    .restart local v0    # "oVoovio":Lcom/voovio/sweep/Voovio;
    iget v2, v0, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v3, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v2, v3, :cond_2

    .line 237
    invoke-virtual {v0}, Lcom/voovio/sweep/Voovio;->DestroyWithoutOpenGLContext()V

    .line 238
    sget v2, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v2, v0, Lcom/voovio/sweep/Voovio;->m_nState:I

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public setAutodriveVelocity(FF)V
    .locals 0
    .param p1, "fForward"    # F
    .param p2, "fSideward"    # F

    .prologue
    .line 766
    iput p1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocityForward:F

    .line 767
    iput p2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_fAutodriveVelocitySideward:F

    .line 768
    return-void
.end method

.method protected setSize(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nWidth:I

    .line 181
    iput p2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nHeight:I

    .line 183
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCamera:Lcom/voovio/voo3d/scenegraph/Camera3D;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v1, v1, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v1, v1, Lcom/voovio/voo3d/data/Vector3;->x:F

    iget-object v2, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v2, v2, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v2, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_vCamDir:Lcom/voovio/voo3d/data/Vector3;

    iget v3, v3, Lcom/voovio/voo3d/data/Vector3;->z:F

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/voovio/voo3d/scenegraph/Camera3D;->setDirection(FFFZ)V

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/voovio/sweep/SweepOffScreen;->updateCameraViewport()V

    .line 188
    :cond_1
    return-void
.end method

.method public setSweep(Lcom/voovio/sweep/Sweep;)V
    .locals 1
    .param p1, "sweep"    # Lcom/voovio/sweep/Sweep;

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/voovio/sweep/SweepOffScreen;->setSweep(Lcom/voovio/sweep/Sweep;I)V

    .line 261
    return-void
.end method

.method public setSweep(Lcom/voovio/sweep/Sweep;I)V
    .locals 2
    .param p1, "sweep"    # Lcom/voovio/sweep/Sweep;
    .param p2, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-ne v0, p1, :cond_0

    .line 301
    :goto_0
    return-void

    .line 270
    :cond_0
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oTransition:Lcom/voovio/sweep/Transition;

    .line 271
    iput-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    .line 275
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oGLOffScreen:Lcom/voovio/sweep/GLOffScreen;

    new-instance v1, Lcom/voovio/sweep/SweepOffScreen$3;

    invoke-direct {v1, p0}, Lcom/voovio/sweep/SweepOffScreen$3;-><init>(Lcom/voovio/sweep/SweepOffScreen;)V

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/GLOffScreen;->post(Ljava/lang/Runnable;)V

    .line 290
    :cond_1
    iput-object p1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 292
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setSweep(Lcom/voovio/sweep/Sweep;)V

    .line 294
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oLimiter:Lcom/voovio/sweep/FrustumLimiter;

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/FrustumLimiter;->Init(Lcom/voovio/sweep/Sweep;)V

    .line 297
    invoke-direct {p0, p2}, Lcom/voovio/sweep/SweepOffScreen;->startFrom(I)V

    .line 300
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/voovio/sweep/SweepOffScreen;->m_nLastFrame:I

    goto :goto_0
.end method
