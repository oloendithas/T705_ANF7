.class Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLExternalSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLExternalSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kADRENO:Ljava/lang/String; = "Adreno"

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Landroid/opengl/GLExternalSurfaceView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1613
    const-string v0, "GLThreadManager"

    sput-object v0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/opengl/GLExternalSurfaceView$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/opengl/GLExternalSurfaceView$1;

    .prologue
    .line 1612
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1696
    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_3f

    .line 1697
    const-string/jumbo v0, "ro.opengles.version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mGLESVersion:I

    .line 1700
    iget v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_17

    .line 1701
    iput-boolean v3, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1704
    :cond_17
    sget-object v0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGLESVersion mGLESVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mGLESVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMultipleGLESContextsAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    iput-boolean v3, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1709
    :cond_3f
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1677
    monitor-enter p0

    :try_start_3
    iget-boolean v3, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v3, :cond_66

    .line 1678
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1679
    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1680
    .local v0, "renderer":Ljava/lang/String;
    iget v3, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x20000

    if-ge v3, v4, :cond_24

    .line 1681
    const-string v3, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_68

    move v3, v2

    :goto_1f
    iput-boolean v3, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1683
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1685
    :cond_24
    iget-boolean v3, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v3, :cond_30

    const-string v3, "Adreno"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    :cond_30
    move v1, v2

    :cond_31
    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1687
    sget-object v1, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkGLDriver renderer = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" multipleContextsAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLimitedGLESContexts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_6a

    .line 1693
    .end local v0    # "renderer":Ljava/lang/String;
    :cond_66
    monitor-exit p0

    return-void

    .restart local v0    # "renderer":Ljava/lang/String;
    :cond_68
    move v3, v1

    .line 1681
    goto :goto_1f

    .line 1677
    .end local v0    # "renderer":Ljava/lang/String;
    :catchall_6a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Landroid/opengl/GLExternalSurfaceView$GLThread;)V
    .registers 3
    .param p1, "thread"    # Landroid/opengl/GLExternalSurfaceView$GLThread;

    .prologue
    .line 1658
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLExternalSurfaceView$GLThread;

    if-ne v0, p1, :cond_7

    .line 1659
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLExternalSurfaceView$GLThread;

    .line 1661
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1662
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .registers 2

    .prologue
    .line 1668
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .registers 2

    .prologue
    .line 1672
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1673
    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_d

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    .line 1672
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Landroid/opengl/GLExternalSurfaceView$GLThread;)V
    .registers 6
    .param p1, "thread"    # Landroid/opengl/GLExternalSurfaceView$GLThread;

    .prologue
    .line 1617
    monitor-enter p0

    :try_start_1
    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exiting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    const/4 v0, 0x1

    # setter for: Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z
    invoke-static {p1, v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->access$1202(Landroid/opengl/GLExternalSurfaceView$GLThread;Z)Z

    .line 1620
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLExternalSurfaceView$GLThread;

    if-ne v0, p1, :cond_28

    .line 1621
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLExternalSurfaceView$GLThread;

    .line 1623
    :cond_28
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 1624
    monitor-exit p0

    return-void

    .line 1617
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Landroid/opengl/GLExternalSurfaceView$GLThread;)Z
    .registers 4
    .param p1, "thread"    # Landroid/opengl/GLExternalSurfaceView$GLThread;

    .prologue
    const/4 v0, 0x1

    .line 1634
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLExternalSurfaceView$GLThread;

    if-eq v1, p1, :cond_9

    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLExternalSurfaceView$GLThread;

    if-nez v1, :cond_f

    .line 1635
    :cond_9
    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLExternalSurfaceView$GLThread;

    .line 1636
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1650
    :cond_e
    :goto_e
    return v0

    .line 1639
    :cond_f
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1640
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_e

    .line 1647
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLExternalSurfaceView$GLThread;

    if-eqz v0, :cond_1f

    .line 1648
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->mEglOwner:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->requestReleaseEglContextLocked()V

    .line 1650
    :cond_1f
    const/4 v0, 0x0

    goto :goto_e
.end method
