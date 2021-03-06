.class public Landroid/opengl/GLExternalSurfaceView;
.super Landroid/view/ExternalSurfaceView;
.source "GLExternalSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/GLExternalSurfaceView$1;,
        Landroid/opengl/GLExternalSurfaceView$GLThreadManager;,
        Landroid/opengl/GLExternalSurfaceView$LogWriter;,
        Landroid/opengl/GLExternalSurfaceView$GLThread;,
        Landroid/opengl/GLExternalSurfaceView$EglHelper;,
        Landroid/opengl/GLExternalSurfaceView$SimpleEGLConfigChooser;,
        Landroid/opengl/GLExternalSurfaceView$ComponentSizeChooser;,
        Landroid/opengl/GLExternalSurfaceView$BaseConfigChooser;,
        Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;,
        Landroid/opengl/GLExternalSurfaceView$DefaultWindowSurfaceFactory;,
        Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;,
        Landroid/opengl/GLExternalSurfaceView$DefaultContextFactory;,
        Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;,
        Landroid/opengl/GLExternalSurfaceView$Renderer;,
        Landroid/opengl/GLExternalSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field private static final LOG_ATTACH_DETACH:Z = true

.field private static final LOG_EGL:Z = true

.field private static final LOG_PAUSE_RESUME:Z = true

.field private static final LOG_RENDERER:Z = true

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = true

.field private static final LOG_THREADS:Z = true

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLExternalSurfaceView"

.field private static final sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

.field private mGLWrapper:Landroid/opengl/GLExternalSurfaceView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1723
    new-instance v0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;-><init>(Landroid/opengl/GLExternalSurfaceView$1;)V

    sput-object v0, Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/view/ExternalSurfaceView;-><init>(Landroid/content/Context;)V

    .line 1724
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z

    .line 93
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->init()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/ExternalSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1724
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z

    .line 102
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->init()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ExternalSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1724
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z

    .line 107
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->init()V

    .line 108
    return-void
.end method

.method static synthetic access$1000(Landroid/opengl/GLExternalSurfaceView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/opengl/GLExternalSurfaceView;

    .prologue
    .line 40
    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/opengl/GLExternalSurfaceView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/opengl/GLExternalSurfaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$GLThread;
    .registers 2
    .param p0, "x0"    # Landroid/opengl/GLExternalSurfaceView;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    return-object v0
.end method

.method static synthetic access$200(Landroid/opengl/GLExternalSurfaceView;)I
    .registers 2
    .param p0, "x0"    # Landroid/opengl/GLExternalSurfaceView;

    .prologue
    .line 40
    iget v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;
    .registers 2
    .param p0, "x0"    # Landroid/opengl/GLExternalSurfaceView;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;
    .registers 2
    .param p0, "x0"    # Landroid/opengl/GLExternalSurfaceView;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLContextFactory:Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;
    .registers 2
    .param p0, "x0"    # Landroid/opengl/GLExternalSurfaceView;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$GLWrapper;
    .registers 2
    .param p0, "x0"    # Landroid/opengl/GLExternalSurfaceView;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLWrapper:Landroid/opengl/GLExternalSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Landroid/opengl/GLExternalSurfaceView;)I
    .registers 2
    .param p0, "x0"    # Landroid/opengl/GLExternalSurfaceView;

    .prologue
    .line 40
    iget v0, p0, Landroid/opengl/GLExternalSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Landroid/opengl/GLExternalSurfaceView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/opengl/GLExternalSurfaceView;

    .prologue
    .line 40
    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .registers 3

    .prologue
    .line 1598
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    if-eqz v0, :cond_d

    .line 1599
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1602
    :cond_d
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 115
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 123
    return-void
.end method


# virtual methods
.method public flipExtDisplayFlag(Z)V
    .registers 2
    .param p1, "extFlag"    # Z

    .prologue
    .line 1606
    invoke-virtual {p0}, Landroid/opengl/GLExternalSurfaceView;->onPause()V

    .line 1607
    invoke-super {p0, p1}, Landroid/view/ExternalSurfaceView;->flipExtDisplayFlag(Z)V

    .line 1608
    invoke-virtual {p0}, Landroid/opengl/GLExternalSurfaceView;->onResume()V

    .line 1609
    return-void
.end method

.method public getDebugFlags()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Landroid/opengl/GLExternalSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .registers 2

    .prologue
    .line 189
    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    .line 452
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 454
    const-string v1, "GLExternalSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAttachedToWindow reattach ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/opengl/GLExternalSurfaceView;->mDetached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView;->mDetached:Z

    if-eqz v1, :cond_47

    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    if-eqz v1, :cond_47

    .line 457
    const/4 v0, 0x1

    .line 458
    .local v0, "renderMode":I
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    if-eqz v1, :cond_31

    .line 459
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v1}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    .line 461
    :cond_31
    new-instance v1, Landroid/opengl/GLExternalSurfaceView$GLThread;

    iget-object v2, p0, Landroid/opengl/GLExternalSurfaceView;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    invoke-direct {v1, p0, v2}, Landroid/opengl/GLExternalSurfaceView$GLThread;-><init>(Landroid/opengl/GLExternalSurfaceView;Landroid/opengl/GLExternalSurfaceView$Renderer;)V

    iput-object v1, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    .line 462
    const/4 v1, 0x1

    if-eq v0, v1, :cond_42

    .line 463
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v1, v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->setRenderMode(I)V

    .line 465
    :cond_42
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 467
    .end local v0    # "renderMode":I
    :cond_47
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView;->mDetached:Z

    .line 468
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 478
    const-string v0, "GLExternalSurfaceView"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    if-eqz v0, :cond_11

    .line 481
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->requestExitAndWait()V

    .line 483
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView;->mDetached:Z

    .line 484
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 485
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->onPause()V

    .line 423
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->onResume()V

    .line 434
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 443
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Landroid/opengl/GLExternalSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 444
    return-void
.end method

.method public requestRender()V
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->requestRender()V

    .line 388
    return-void
.end method

.method public setDebugFlags(I)V
    .registers 2
    .param p1, "debugFlags"    # I

    .prologue
    .line 152
    iput p1, p0, Landroid/opengl/GLExternalSurfaceView;->mDebugFlags:I

    .line 153
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .registers 15
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 313
    new-instance v0, Landroid/opengl/GLExternalSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/opengl/GLExternalSurfaceView$ComponentSizeChooser;-><init>(Landroid/opengl/GLExternalSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLExternalSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;)V

    .line 315
    return-void
.end method

.method public setEGLConfigChooser(Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;)V
    .registers 2
    .param p1, "configChooser"    # Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->checkRenderThreadState()V

    .line 277
    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;

    .line 278
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .registers 3
    .param p1, "needDepth"    # Z

    .prologue
    .line 295
    new-instance v0, Landroid/opengl/GLExternalSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Landroid/opengl/GLExternalSurfaceView$SimpleEGLConfigChooser;-><init>(Landroid/opengl/GLExternalSurfaceView;Z)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLExternalSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;)V

    .line 296
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .registers 2
    .param p1, "version"    # I

    .prologue
    .line 344
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->checkRenderThreadState()V

    .line 345
    iput p1, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLContextClientVersion:I

    .line 346
    return-void
.end method

.method public setEGLContextFactory(Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;)V
    .registers 2
    .param p1, "factory"    # Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;

    .prologue
    .line 245
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->checkRenderThreadState()V

    .line 246
    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLContextFactory:Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;

    .line 247
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;)V
    .registers 2
    .param p1, "factory"    # Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;

    .prologue
    .line 259
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->checkRenderThreadState()V

    .line 260
    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;

    .line 261
    return-void
.end method

.method public setGLWrapper(Landroid/opengl/GLExternalSurfaceView$GLWrapper;)V
    .registers 2
    .param p1, "glWrapper"    # Landroid/opengl/GLExternalSurfaceView$GLWrapper;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView;->mGLWrapper:Landroid/opengl/GLExternalSurfaceView$GLWrapper;

    .line 140
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .registers 2
    .param p1, "preserveOnPause"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Landroid/opengl/GLExternalSurfaceView;->mPreserveEGLContextOnPause:Z

    .line 183
    return-void
.end method

.method public setRenderMode(I)V
    .registers 3
    .param p1, "renderMode"    # I

    .prologue
    .line 365
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Landroid/opengl/GLExternalSurfaceView$GLThread;->setRenderMode(I)V

    .line 366
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLExternalSurfaceView$Renderer;)V
    .registers 5
    .param p1, "renderer"    # Landroid/opengl/GLExternalSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->checkRenderThreadState()V

    .line 220
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_10

    .line 221
    new-instance v0, Landroid/opengl/GLExternalSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/opengl/GLExternalSurfaceView$SimpleEGLConfigChooser;-><init>(Landroid/opengl/GLExternalSurfaceView;Z)V

    iput-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;

    .line 223
    :cond_10
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLContextFactory:Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1b

    .line 224
    new-instance v0, Landroid/opengl/GLExternalSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Landroid/opengl/GLExternalSurfaceView$DefaultContextFactory;-><init>(Landroid/opengl/GLExternalSurfaceView;Landroid/opengl/GLExternalSurfaceView$1;)V

    iput-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLContextFactory:Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;

    .line 226
    :cond_1b
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_26

    .line 227
    new-instance v0, Landroid/opengl/GLExternalSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Landroid/opengl/GLExternalSurfaceView$DefaultWindowSurfaceFactory;-><init>(Landroid/opengl/GLExternalSurfaceView$1;)V

    iput-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;

    .line 229
    :cond_26
    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    .line 230
    new-instance v0, Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-direct {v0, p0, p1}, Landroid/opengl/GLExternalSurfaceView$GLThread;-><init>(Landroid/opengl/GLExternalSurfaceView;Landroid/opengl/GLExternalSurfaceView$Renderer;)V

    iput-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    .line 231
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 232
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 412
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Landroid/opengl/GLExternalSurfaceView$GLThread;->onWindowResize(II)V

    .line 413
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 395
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->surfaceCreated()V

    .line 396
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 404
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->surfaceDestroyed()V

    .line 405
    return-void
.end method
