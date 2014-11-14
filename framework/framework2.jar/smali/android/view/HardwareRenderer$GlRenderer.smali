.class abstract Landroid/view/HardwareRenderer$GlRenderer;
.super Landroid/view/HardwareRenderer;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "GlRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;,
        Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;
    }
.end annotation


# static fields
.field static final FUNCTOR_PROCESS_DELAY:I = 0x4

.field private static final OVERDRAW:[Ljava/lang/String;

.field private static final OVERDRAW_TYPE_COUNT:I = 0x1

.field private static final PROFILE_DRAW_COLORS:[I

.field private static final PROFILE_DRAW_CURRENT_FRAME_COLOR:I = -0x30a055b3

.field private static final PROFILE_DRAW_DP_PER_MS:I = 0x7

.field private static final PROFILE_DRAW_MARGIN:I = 0x0

.field private static final PROFILE_DRAW_THRESHOLD_COLOR:I = -0xa055b3

.field private static final PROFILE_DRAW_THRESHOLD_STROKE_WIDTH:I = 0x2

.field private static final PROFILE_DRAW_WIDTH:I = 0x3

.field static final SURFACE_STATE_ERROR:I = 0x0

.field static final SURFACE_STATE_SUCCESS:I = 0x1

.field static final SURFACE_STATE_UPDATED:I = 0x2

.field private static final VISUALIZERS:[Ljava/lang/String;

.field static sDirtyRegions:Z

.field static final sDirtyRegionsRequested:Z

.field static sEgl:Ljavax/microedition/khronos/egl/EGL10;

.field static sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field static final sEglContextStorage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/opengl/ManagedEGLContext;",
            ">;"
        }
    .end annotation
.end field

.field static sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field static final sEglLock:[Ljava/lang/Object;


# instance fields
.field mCanvas:Landroid/view/HardwareCanvas;

.field mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

.field mDebugDirtyRegions:Z

.field mDebugOverdraw:I

.field mDebugOverdrawLayer:Landroid/view/HardwareLayer;

.field mDebugOverdrawPaint:Landroid/graphics/Paint;

.field mDebugPaint:Landroid/graphics/Paint;

.field private mDestroyed:Z

.field mDirtyRegionsEnabled:Z

.field private mDrawDelta:J

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mEglThread:Ljava/lang/Thread;

.field mFrameCount:J

.field private final mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

.field mGl:Ljavax/microedition/khronos/opengles/GL;

.field final mGlVersion:I

.field mHeight:I

.field mName:Ljava/lang/String;

.field mProfileCurrentFrame:I

.field mProfileData:[F

.field mProfileEnabled:Z

.field mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mProfilePaint:Landroid/graphics/Paint;

.field mProfileShapes:[[F

.field mProfileVisualizerType:I

.field private final mRedrawClip:Landroid/graphics/Rect;

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceSize:[I

.field final mTranslucent:Z

.field mUpdateDirtyRegions:Z

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 812
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_48

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->PROFILE_DRAW_COLORS:[I

    .line 818
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "visual_bars"

    aput-object v2, v1, v3

    const-string/jumbo v2, "visual_lines"

    aput-object v2, v1, v4

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->VISUALIZERS:[Ljava/lang/String;

    .line 823
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "show"

    aput-object v2, v1, v3

    const-string v2, "count"

    aput-object v2, v1, v4

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->OVERDRAW:[Ljava/lang/String;

    .line 832
    new-array v1, v3, [Ljava/lang/Object;

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglLock:[Ljava/lang/Object;

    .line 835
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    .line 856
    const-string v1, "debug.hwui.render_dirty_regions"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "dirtyProperty":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    .line 859
    sget-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    sput-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegionsRequested:Z

    .line 860
    return-void

    .line 812
    :array_48
    .array-data 4
        -0x30c19934
        -0x3023c6ee
        -0x30196800
    .end array-data
.end method

.method constructor <init>(IZ)V
    .registers 6
    .param p1, "glVersion"    # I
    .param p2, "translucent"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 892
    invoke-direct {p0}, Landroid/view/HardwareRenderer;-><init>()V

    .line 833
    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    .line 838
    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurface:Landroid/view/Surface;

    .line 866
    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    .line 869
    const/4 v0, -0x3

    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 876
    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    .line 885
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    .line 887
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurfaceSize:[I

    .line 888
    new-instance v0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-direct {v0, p0}, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;-><init>(Landroid/view/HardwareRenderer$GlRenderer;)V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    .line 890
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    .line 893
    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGlVersion:I

    .line 894
    iput-boolean p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mTranslucent:Z

    .line 896
    invoke-virtual {p0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->loadSystemProperties(Landroid/view/Surface;)Z

    .line 897
    return-void
.end method

.method static synthetic access$100(Landroid/view/HardwareRenderer$GlRenderer;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Landroid/view/HardwareRenderer$GlRenderer;

    .prologue
    .line 803
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/HardwareRenderer$GlRenderer;Landroid/view/View$AttachInfo;I)V
    .registers 3
    .param p0, "x0"    # Landroid/view/HardwareRenderer$GlRenderer;
    .param p1, "x1"    # Landroid/view/View$AttachInfo;
    .param p2, "x2"    # I

    .prologue
    .line 803
    invoke-direct {p0, p1, p2}, Landroid/view/HardwareRenderer$GlRenderer;->handleFunctorStatus(Landroid/view/View$AttachInfo;I)V

    return-void
.end method

.method static synthetic access$300(IF)I
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # F

    .prologue
    .line 803
    invoke-static {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->dpToPx(IF)I

    move-result v0

    return v0
.end method

.method static synthetic access$400()[I
    .registers 1

    .prologue
    .line 803
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->PROFILE_DRAW_COLORS:[I

    return-object v0
.end method

.method private beginFrame(Landroid/view/HardwareCanvas;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .registers 9
    .param p1, "canvas"    # Landroid/view/HardwareCanvas;
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .param p3, "surfaceState"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1597
    const/4 v1, 0x2

    if-ne p3, v1, :cond_10

    .line 1598
    const/4 p2, 0x0

    .line 1599
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/HardwareRenderer$GlRenderer;->beginFrame([I)V

    .line 1614
    :cond_a
    :goto_a
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    if-eqz v1, :cond_f

    const/4 p2, 0x0

    .line 1616
    :cond_f
    return-object p2

    .line 1601
    :cond_10
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurfaceSize:[I

    .line 1602
    .local v0, "size":[I
    invoke-static {v0}, Landroid/view/HardwareRenderer$GlRenderer;->beginFrame([I)V

    .line 1604
    aget v1, v0, v4

    iget v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    if-ne v1, v2, :cond_21

    aget v1, v0, v3

    iget v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    if-eq v1, v2, :cond_a

    .line 1605
    :cond_21
    aget v1, v0, v3

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    .line 1606
    aget v1, v0, v4

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    .line 1608
    iget v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iget v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 1610
    const/4 p2, 0x0

    goto :goto_a
.end method

.method private buildDisplayList(Landroid/view/View;Landroid/view/HardwareCanvas;)Landroid/view/DisplayList;
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/view/HardwareCanvas;

    .prologue
    const-wide/16 v8, 0x8

    const/high16 v7, -0x80000000

    .line 1573
    iget-wide v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_f

    .line 1574
    iget-object v2, p1, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    .line 1590
    :goto_e
    return-object v2

    .line 1577
    :cond_f
    iget v3, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_36

    const/4 v3, 0x1

    :goto_15
    iput-boolean v3, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1579
    iget v3, p1, Landroid/view/View;->mPrivateFlags:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iput v3, p1, Landroid/view/View;->mPrivateFlags:I

    .line 1581
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->startBuildDisplayListProfiling()J

    move-result-wide v0

    .line 1582
    .local v0, "buildDisplayListStartTime":J
    invoke-virtual {p2}, Landroid/view/HardwareCanvas;->clearLayerUpdates()V

    .line 1584
    const-string v3, "getDisplayList"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1585
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v2

    .line 1586
    .local v2, "displayList":Landroid/view/DisplayList;
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1588
    invoke-direct {p0, v0, v1}, Landroid/view/HardwareRenderer$GlRenderer;->endBuildDisplayListProfiling(J)V

    goto :goto_e

    .line 1577
    .end local v0    # "buildDisplayListStartTime":J
    .end local v2    # "displayList":Landroid/view/DisplayList;
    :cond_36
    const/4 v3, 0x0

    goto :goto_15
.end method

.method private checkEglErrorsForced()V
    .registers 5

    .prologue
    .line 1037
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1038
    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_2e

    .line 1041
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/16 v1, 0x300e

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x1

    :goto_2b
    invoke-direct {p0, v1}, Landroid/view/HardwareRenderer$GlRenderer;->fallback(Z)V

    .line 1044
    :cond_2e
    return-void

    .line 1042
    :cond_2f
    const/4 v1, 0x0

    goto :goto_2b
.end method

.method private checkRenderContextUnsafe()I
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1780
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v4, 0x3059

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 1782
    :cond_20
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 1783
    const-string v2, "HardwareRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglMakeCurrent failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    invoke-direct {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->fallback(Z)V

    move v0, v1

    .line 1795
    :cond_56
    :goto_56
    return v0

    .line 1788
    :cond_57
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mUpdateDirtyRegions:Z

    if-eqz v0, :cond_60

    .line 1789
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->enableDirtyRegions()V

    .line 1790
    iput-boolean v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mUpdateDirtyRegions:Z

    .line 1792
    :cond_60
    const/4 v0, 0x2

    goto :goto_56
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 20

    .prologue
    .line 1156
    const/4 v2, 0x1

    new-array v11, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1157
    .local v11, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 1158
    .local v7, "configsCount":[I
    sget-boolean v2, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->getConfig(Z)[I

    move-result-object v4

    .line 1161
    .local v4, "configSpec":[I
    const-string v2, "debug.hwui.print_config"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1162
    .local v16, "debug":Ljava/lang/String;
    const-string v2, "all"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1163
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1165
    const/4 v2, 0x0

    aget v2, v7, v2

    new-array v5, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1166
    .local v5, "debugConfigs":[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    aget v6, v7, v6

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1169
    move-object v14, v5

    .local v14, "arr$":[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v0, v14

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_3e
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4c

    aget-object v15, v14, v17

    .line 1170
    .local v15, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v15}, Landroid/view/HardwareRenderer$GlRenderer;->printConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1169
    add-int/lit8 v17, v17, 0x1

    goto :goto_3e

    .line 1174
    .end local v5    # "debugConfigs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v14    # "arr$":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v15    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    :cond_4c
    sget-object v8, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v9, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v12, 0x1

    move-object v10, v4

    move-object v13, v7

    invoke-interface/range {v8 .. v13}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 1175
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eglChooseConfig failed "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v6

    invoke-static {v6}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1177
    :cond_7c
    const/4 v2, 0x0

    aget v2, v7, v2

    if-lez v2, :cond_95

    .line 1178
    const-string v2, "choice"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 1179
    const/4 v2, 0x0

    aget-object v2, v11, v2

    invoke-static {v2}, Landroid/view/HardwareRenderer$GlRenderer;->printConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1181
    :cond_91
    const/4 v2, 0x0

    aget-object v2, v11, v2

    .line 1184
    :goto_94
    return-object v2

    :cond_95
    const/4 v2, 0x0

    goto :goto_94
.end method

.method private createSurface(Landroid/view/Surface;)Z
    .registers 8
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 1349
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, p1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1351
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_47

    .line 1352
    :cond_17
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1353
    .local v0, "error":I
    const/16 v1, 0x300b

    if-ne v0, v1, :cond_2a

    .line 1354
    const-string v1, "HardwareRenderer"

    const-string v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    const/4 v1, 0x0

    .line 1368
    .end local v0    # "error":I
    :goto_29
    return v1

    .line 1357
    .restart local v0    # "error":I
    :cond_2a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWindowSurface failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1361
    .end local v0    # "error":I
    :cond_47
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 1362
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglMakeCurrent failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1366
    :cond_7a
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->enableDirtyRegions()V

    .line 1367
    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurface:Landroid/view/Surface;

    .line 1368
    const/4 v1, 0x1

    goto :goto_29
.end method

.method private debugDirtyRegions(Landroid/graphics/Rect;Landroid/view/HardwareCanvas;)V
    .registers 7
    .param p1, "dirty"    # Landroid/graphics/Rect;
    .param p2, "canvas"    # Landroid/view/HardwareCanvas;

    .prologue
    .line 1697
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    if-eqz v0, :cond_28

    .line 1698
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_16

    .line 1699
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    .line 1700
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x7fff0000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1703
    :cond_16
    if-eqz p1, :cond_28

    iget-wide v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    .line 1704
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1707
    :cond_28
    return-void
.end method

.method private debugOverdraw(Landroid/view/View$AttachInfo;Landroid/graphics/Rect;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;)V
    .registers 13
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .param p3, "canvas"    # Landroid/view/HardwareCanvas;
    .param p4, "displayList"    # Landroid/view/DisplayList;

    .prologue
    const/4 v7, 0x1

    .line 1526
    iget v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    if-ne v4, v7, :cond_1e

    .line 1527
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    if-nez v4, :cond_1f

    .line 1528
    iget v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iget v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    invoke-virtual {p0, v4, v5, v7}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v4

    iput-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    .line 1534
    :cond_13
    :goto_13
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1535
    const/4 v4, -0x1

    iput v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    .line 1551
    :cond_1e
    :goto_1e
    return-void

    .line 1529
    :cond_1f
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    if-ne v4, v5, :cond_33

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    if-eq v4, v5, :cond_13

    .line 1531
    :cond_33
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    iget v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iget v6, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/view/HardwareLayer;->resize(II)Z

    goto :goto_13

    .line 1539
    :cond_3d
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v4, p3, p2}, Landroid/view/HardwareLayer;->start(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 1540
    .local v0, "layerCanvas":Landroid/view/HardwareCanvas;
    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->countOverdraw(Landroid/view/HardwareCanvas;)V

    .line 1541
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 1542
    .local v3, "restoreCount":I
    const/4 v4, 0x0

    invoke-virtual {v0, p4, v4, v7}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    .line 1543
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1544
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v4, p3}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 1546
    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->getOverdraw(Landroid/view/HardwareCanvas;)F

    move-result v2

    .line 1547
    .local v2, "overdraw":F
    iget-object v4, p1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1549
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0, p3, v2, v4}, Landroid/view/HardwareRenderer$GlRenderer;->drawOverdrawCounter(Landroid/view/HardwareCanvas;FF)V

    goto :goto_1e
.end method

.method private static dpToPx(IF)I
    .registers 4
    .param p0, "dp"    # I
    .param p1, "density"    # F

    .prologue
    .line 1799
    int-to-float v0, p0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private drawDisplayList(Landroid/view/View$AttachInfo;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;I)I
    .registers 14
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "canvas"    # Landroid/view/HardwareCanvas;
    .param p3, "displayList"    # Landroid/view/DisplayList;
    .param p4, "status"    # I

    .prologue
    const-wide/16 v7, 0x8

    .line 1654
    const-wide/16 v0, 0x0

    .line 1655
    .local v0, "drawDisplayListStartTime":J
    iget-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v5, :cond_c

    .line 1656
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1659
    :cond_c
    const-string v5, "drawDisplayList"

    invoke-static {v7, v8, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1661
    :try_start_11
    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    const/4 v6, 0x1

    invoke-virtual {p2, p3, v5, v6}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_38

    move-result v5

    or-int/2addr p4, v5

    .line 1664
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 1667
    iget-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v5, :cond_34

    .line 1668
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1669
    .local v2, "now":J
    sub-long v5, v2, v0

    long-to-float v5, v5

    const v6, 0x358637bd

    mul-float v4, v5, v6

    .line 1670
    .local v4, "total":F
    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget v6, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    add-int/lit8 v6, v6, 0x1

    aput v4, v5, v6

    .line 1673
    .end local v2    # "now":J
    .end local v4    # "total":F
    :cond_34
    invoke-direct {p0, p1, p4}, Landroid/view/HardwareRenderer$GlRenderer;->handleFunctorStatus(Landroid/view/View$AttachInfo;I)V

    .line 1674
    return p4

    .line 1664
    :catchall_38
    move-exception v5

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    throw v5
.end method

.method private drawOverdrawCounter(Landroid/view/HardwareCanvas;FF)V
    .registers 11
    .param p1, "canvas"    # Landroid/view/HardwareCanvas;
    .param p2, "overdraw"    # F
    .param p3, "density"    # F

    .prologue
    const v6, 0x3e8f5c29

    .line 1554
    const-string v2, "%.2fx"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1555
    .local v1, "text":Ljava/lang/String;
    invoke-direct {p0, p3}, Landroid/view/HardwareRenderer$GlRenderer;->setupPaint(F)Landroid/graphics/Paint;

    move-result-object v0

    .line 1557
    .local v0, "paint":Landroid/graphics/Paint;
    mul-float v2, v6, p2

    const/high16 v3, 0x40600000

    div-float/2addr v2, v3

    sub-float v2, v6, v2

    const v3, 0x3f4ccccd

    const/high16 v4, 0x3f800000

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1559
    const/high16 v2, 0x40800000

    mul-float/2addr v2, p3

    iget v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1560
    return-void
.end method

.method private enableDirtyRegions()V
    .registers 3

    .prologue
    .line 1255
    sget-boolean v0, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    if-eqz v0, :cond_14

    .line 1256
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->preserveBackBuffer()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDirtyRegionsEnabled:Z

    if-nez v0, :cond_13

    .line 1257
    const-string v0, "HardwareRenderer"

    const-string v1, "Backbuffer cannot be preserved"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_13
    :goto_13
    return-void

    .line 1259
    :cond_14
    sget-boolean v0, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegionsRequested:Z

    if-eqz v0, :cond_13

    .line 1266
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->isBackBufferPreserved()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDirtyRegionsEnabled:Z

    goto :goto_13
.end method

.method private endBuildDisplayListProfiling(J)V
    .registers 8
    .param p1, "getDisplayListStartTime"    # J

    .prologue
    .line 1632
    iget-boolean v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v3, :cond_16

    .line 1633
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1634
    .local v0, "now":J
    sub-long v3, v0, p1

    long-to-float v3, v3

    const v4, 0x358637bd

    mul-float v2, v3, v4

    .line 1636
    .local v2, "total":F
    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    aput v2, v3, v4

    .line 1638
    .end local v0    # "now":J
    .end local v2    # "total":F
    :cond_16
    return-void
.end method

.method private fallback(Z)V
    .registers 4
    .param p1, "fallback"    # Z

    .prologue
    .line 1047
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->destroy(Z)V

    .line 1048
    if-eqz p1, :cond_11

    .line 1050
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer;->setRequested(Z)V

    .line 1051
    const-string v0, "HardwareRenderer"

    const-string v1, "Mountain View, we\'ve had a problem here. Switching back to software rendering."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_11
    return-void
.end method

.method private handleFunctorStatus(Landroid/view/View$AttachInfo;I)V
    .registers 7
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "status"    # I

    .prologue
    .line 1712
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_11

    .line 1713
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1714
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 1721
    :cond_11
    :goto_11
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1f

    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1723
    :cond_1f
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1724
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    iput-object p1, v0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->attachInfo:Landroid/view/View$AttachInfo;

    .line 1725
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1727
    :cond_33
    return-void

    .line 1716
    :cond_34
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 1717
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_11
.end method

.method private loadEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 4

    .prologue
    .line 1137
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 1138
    .local v0, "eglConfig":Ljavax/microedition/khronos/egl/EGLConfig;
    if-nez v0, :cond_23

    .line 1140
    sget-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    if-eqz v1, :cond_1b

    .line 1141
    const/4 v1, 0x0

    sput-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    .line 1142
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 1143
    if-nez v0, :cond_23

    .line 1144
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglConfig not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1147
    :cond_1b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglConfig not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1150
    :cond_23
    return-object v0
.end method

.method private prepareFrame(Landroid/graphics/Rect;)I
    .registers 6
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const-wide/16 v2, 0x8

    .line 1642
    const-string/jumbo v1, "prepareFrame"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1644
    :try_start_8
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->onPreDraw(Landroid/graphics/Rect;)I
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_10

    move-result v0

    .line 1646
    .local v0, "status":I
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1648
    return v0

    .line 1646
    .end local v0    # "status":I
    :catchall_10
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method private static printConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 6
    .param p0, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v4, 0x0

    .line 1188
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 1190
    .local v0, "value":[I
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL configuration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3024

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1193
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  RED_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3023

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1196
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  GREEN_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3022

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1199
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  BLUE_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3021

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1202
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ALPHA_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3025

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1205
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  DEPTH_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3026

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1208
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  STENCIL_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3032

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1211
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  SAMPLE_BUFFERS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3031

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1214
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  SAMPLES = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3033

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1217
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  SURFACE_TYPE = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3027

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1220
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  CONFIG_CAVEAT = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    return-void
.end method

.method private static search([Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 985
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 986
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 988
    .end local v0    # "i":I
    :goto_c
    return v0

    .line 985
    .restart local v0    # "i":I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 988
    :cond_10
    const/4 v0, -0x1

    goto :goto_c
.end method

.method private setupPaint(F)Landroid/graphics/Paint;
    .registers 6
    .param p1, "density"    # F

    .prologue
    const/4 v3, 0x0

    .line 1563
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_24

    .line 1564
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    .line 1565
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1566
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000

    mul-float/2addr v1, p1

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1567
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1569
    :cond_24
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private startBuildDisplayListProfiling()J
    .registers 3

    .prologue
    .line 1620
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v0, :cond_19

    .line 1621
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 1622
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v1, v1

    if-lt v0, v1, :cond_14

    .line 1623
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 1626
    :cond_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1628
    :goto_18
    return-wide v0

    :cond_19
    const-wide/16 v0, 0x0

    goto :goto_18
.end method

.method private swapBuffers(I)V
    .registers 10
    .param p1, "status"    # I

    .prologue
    .line 1678
    and-int/lit8 v5, p1, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_33

    .line 1679
    const-wide/16 v0, 0x0

    .line 1680
    .local v0, "eglSwapBuffersStartTime":J
    iget-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v5, :cond_f

    .line 1681
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1684
    :cond_f
    sget-object v5, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v6, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1686
    iget-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v5, :cond_30

    .line 1687
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1688
    .local v2, "now":J
    sub-long v5, v2, v0

    long-to-float v5, v5

    const v6, 0x358637bd

    mul-float v4, v5, v6

    .line 1689
    .local v4, "total":F
    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget v6, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    add-int/lit8 v6, v6, 0x2

    aput v4, v5, v6

    .line 1692
    .end local v2    # "now":J
    .end local v4    # "total":F
    :cond_30
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkEglErrors()V

    .line 1694
    .end local v0    # "eglSwapBuffersStartTime":J
    :cond_33
    return-void
.end method


# virtual methods
.method attachFunctor(Landroid/view/View$AttachInfo;I)Z
    .registers 7
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "functor"    # I

    .prologue
    .line 1738
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_1f

    .line 1739
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v0, p2}, Landroid/view/HardwareCanvas;->attachFunctor(I)V

    .line 1740
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    iput-object p1, v0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->attachInfo:Landroid/view/View$AttachInfo;

    .line 1741
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1742
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1743
    const/4 v0, 0x1

    .line 1745
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method canDraw()Z
    .registers 2

    .prologue
    .line 1406
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method checkEglErrors()V
    .registers 2

    .prologue
    .line 1031
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1032
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkEglErrorsForced()V

    .line 1034
    :cond_9
    return-void
.end method

.method checkRenderContext()I
    .registers 4

    .prologue
    .line 1760
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_37

    .line 1761
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hardware acceleration can only be used with a single UI thread.\nOriginal thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Current thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1766
    :cond_37
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContextUnsafe()I

    move-result v0

    return v0
.end method

.method abstract countOverdraw(Landroid/view/HardwareCanvas;)V
.end method

.method abstract createCanvas()Landroid/view/HardwareCanvas;
.end method

.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 10
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "eglDisplay"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 1278
    iget v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGlVersion:I

    add-int/lit16 v0, v3, 0xc8

    .line 1279
    .local v0, "HWUI_CONTEXT_OFFSET":I
    const/4 v3, 0x4

    new-array v1, v3, [I

    const/4 v3, 0x0

    const/16 v4, 0x3098

    aput v4, v1, v3

    const/4 v3, 0x1

    iget v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGlVersion:I

    aput v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x3038

    aput v4, v1, v3

    const/4 v3, 0x3

    aput v0, v1, v3

    .line 1282
    .local v1, "attribs":[I
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGlVersion:I

    if-eqz v4, :cond_4c

    .end local v1    # "attribs":[I
    :goto_1f
    invoke-interface {p1, p2, p3, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    .line 1284
    .local v2, "context":Ljavax/microedition/khronos/egl/EGLContext;
    if-eqz v2, :cond_29

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_4e

    .line 1286
    :cond_29
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create an EGL context. eglCreateContext failed with error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1282
    .end local v2    # "context":Ljavax/microedition/khronos/egl/EGLContext;
    .restart local v1    # "attribs":[I
    :cond_4c
    const/4 v1, 0x0

    goto :goto_1f

    .line 1291
    .end local v1    # "attribs":[I
    .restart local v2    # "context":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_4e
    return-object v2
.end method

.method createEglSurface(Landroid/view/Surface;)Ljavax/microedition/khronos/opengles/GL;
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 1225
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_c

    .line 1226
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1228
    :cond_c
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_18

    .line 1229
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1231
    :cond_18
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_24

    .line 1232
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1234
    :cond_24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_34

    .line 1235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HardwareRenderer cannot be used from multiple threads"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1240
    :cond_34
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->destroySurface()V

    .line 1243
    invoke-direct {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createSurface(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1244
    const/4 v0, 0x0

    .line 1249
    :goto_3e
    return-object v0

    .line 1247
    :cond_3f
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->initCaches()V

    .line 1249
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    goto :goto_3e
.end method

.method abstract createManagedContext(Ljavax/microedition/khronos/egl/EGLContext;)Landroid/opengl/ManagedEGLContext;
.end method

.method destroy(Z)V
    .registers 5
    .param p1, "full"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1296
    if-eqz p1, :cond_a

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_a

    .line 1297
    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    .line 1300
    :cond_a
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    if-eqz v0, :cond_18

    .line 1301
    :cond_14
    invoke-virtual {p0, v1}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    .line 1310
    :goto_17
    return-void

    .line 1305
    :cond_18
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->destroySurface()V

    .line 1306
    invoke-virtual {p0, v1}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    .line 1308
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    .line 1309
    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    goto :goto_17
.end method

.method destroySurface()V
    .registers 6

    .prologue
    .line 1313
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_33

    .line 1314
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1315
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1318
    :cond_27
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1319
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1321
    :cond_33
    return-void
.end method

.method detachFunctor(I)V
    .registers 3
    .param p1, "functor"    # I

    .prologue
    .line 1731
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_9

    .line 1732
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v0, p1}, Landroid/view/HardwareCanvas;->detachFunctor(I)V

    .line 1734
    :cond_9
    return-void
.end method

.method draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)V
    .registers 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "callbacks"    # Landroid/view/HardwareRenderer$HardwareDrawCallbacks;
    .param p4, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 1436
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->canDraw()Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 1437
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->hasDirtyRegions()Z

    move-result v10

    if-nez v10, :cond_e

    .line 1438
    const/16 p4, 0x0

    .line 1440
    :cond_e
    const/4 v10, 0x1

    move-object/from16 v0, p2

    iput-boolean v10, v0, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1441
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p2

    iput-wide v10, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 1443
    move-object/from16 v0, p1

    iget v10, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v10, v10, 0x20

    move-object/from16 v0, p1

    iput v10, v0, Landroid/view/View;->mPrivateFlags:I

    .line 1446
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContextUnsafe()I

    move-result v9

    .line 1447
    .local v9, "surfaceState":I
    if-eqz v9, :cond_4c

    .line 1448
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    .line 1449
    .local v2, "canvas":Landroid/view/HardwareCanvas;
    move-object/from16 v0, p2

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    .line 1451
    iget-boolean v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v10, :cond_3a

    .line 1452
    iget-object v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1455
    :cond_3a
    move-object/from16 v0, p4

    invoke-direct {p0, v2, v0, v9}, Landroid/view/HardwareRenderer$GlRenderer;->beginFrame(Landroid/view/HardwareCanvas;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p4

    .line 1457
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->buildDisplayList(Landroid/view/View;Landroid/view/HardwareCanvas;)Landroid/view/DisplayList;

    move-result-object v3

    .line 1462
    .local v3, "displayList":Landroid/view/DisplayList;
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContextUnsafe()I

    move-result v10

    if-nez v10, :cond_4d

    .line 1518
    .end local v2    # "canvas":Landroid/view/HardwareCanvas;
    .end local v3    # "displayList":Landroid/view/DisplayList;
    .end local v9    # "surfaceState":I
    :cond_4c
    :goto_4c
    return-void

    .line 1466
    .restart local v2    # "canvas":Landroid/view/HardwareCanvas;
    .restart local v3    # "displayList":Landroid/view/DisplayList;
    .restart local v9    # "surfaceState":I
    :cond_4d
    const/4 v5, 0x0

    .line 1467
    .local v5, "saveCount":I
    const/4 v8, 0x0

    .line 1469
    .local v8, "status":I
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->getSystemTime()J

    move-result-wide v6

    .line 1471
    .local v6, "start":J
    :try_start_53
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->prepareFrame(Landroid/graphics/Rect;)I

    move-result v8

    .line 1476
    iget-object v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/view/Surface;->isValid()Z

    move-result v10

    if-eqz v10, :cond_6a

    if-eqz p4, :cond_6a

    .line 1477
    iget-object v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/view/Surface;->setDirtyRect(Landroid/graphics/Rect;)V

    .line 1480
    :cond_6a
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1481
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePreDraw(Landroid/view/HardwareCanvas;)V

    .line 1483
    if-eqz v3, :cond_c5

    .line 1484
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v2, v3, v8}, Landroid/view/HardwareRenderer$GlRenderer;->drawDisplayList(Landroid/view/View$AttachInfo;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;I)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_7a} :catch_cb
    .catchall {:try_start_53 .. :try_end_7a} :catchall_103

    move-result v10

    or-int/2addr v8, v10

    .line 1492
    :goto_7c
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 1493
    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1494
    const/4 v10, 0x0

    move-object/from16 v0, p1

    iput-boolean v10, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1496
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->getSystemTime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    iput-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    .line 1498
    iget-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_b0

    .line 1499
    iget-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    .line 1501
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/HardwareRenderer$GlRenderer;->debugOverdraw(Landroid/view/View$AttachInfo;Landroid/graphics/Rect;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;)V

    .line 1502
    move-object/from16 v0, p4

    invoke-direct {p0, v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->debugDirtyRegions(Landroid/graphics/Rect;Landroid/view/HardwareCanvas;)V

    .line 1503
    :goto_ab
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->drawProfileData(Landroid/view/View$AttachInfo;)V

    .line 1507
    :cond_b0
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->onPostDraw()V

    .line 1509
    invoke-direct {p0, v8}, Landroid/view/HardwareRenderer$GlRenderer;->swapBuffers(I)V

    .line 1511
    iget-boolean v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v10, :cond_bf

    .line 1512
    iget-object v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1515
    :cond_bf
    const/4 v10, 0x0

    move-object/from16 v0, p2

    iput-boolean v10, v0, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    goto :goto_4c

    .line 1487
    :cond_c5
    :try_start_c5
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_ca} :catch_cb
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_103

    goto :goto_7c

    .line 1489
    :catch_cb
    move-exception v4

    .line 1490
    .local v4, "e":Ljava/lang/Exception;
    :try_start_cc
    const-string v10, "HardwareRenderer"

    const-string v11, "An error has occurred while drawing:"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d3
    .catchall {:try_start_cc .. :try_end_d3} :catchall_103

    .line 1492
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 1493
    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1494
    const/4 v10, 0x0

    move-object/from16 v0, p1

    iput-boolean v10, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1496
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->getSystemTime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    iput-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    .line 1498
    iget-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_b0

    .line 1499
    iget-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    .line 1501
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/HardwareRenderer$GlRenderer;->debugOverdraw(Landroid/view/View$AttachInfo;Landroid/graphics/Rect;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;)V

    .line 1502
    move-object/from16 v0, p4

    invoke-direct {p0, v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->debugDirtyRegions(Landroid/graphics/Rect;Landroid/view/HardwareCanvas;)V

    goto :goto_ab

    .line 1492
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_103
    move-exception v10

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 1493
    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1494
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-boolean v11, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1496
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->getSystemTime()J

    move-result-wide v11

    sub-long/2addr v11, v6

    iput-wide v11, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    .line 1498
    iget-wide v11, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDrawDelta:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_138

    .line 1499
    iget-wide v11, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    .line 1501
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/HardwareRenderer$GlRenderer;->debugOverdraw(Landroid/view/View$AttachInfo;Landroid/graphics/Rect;Landroid/view/HardwareCanvas;Landroid/view/DisplayList;)V

    .line 1502
    move-object/from16 v0, p4

    invoke-direct {p0, v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->debugDirtyRegions(Landroid/graphics/Rect;Landroid/view/HardwareCanvas;)V

    .line 1503
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->drawProfileData(Landroid/view/View$AttachInfo;)V

    .line 1492
    :cond_138
    throw v10
.end method

.method abstract drawProfileData(Landroid/view/View$AttachInfo;)V
.end method

.method dumpGfxInfo(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v2, 0x0

    .line 993
    iget-boolean v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v1, :cond_2a

    .line 994
    const-string v1, "\n\tDraw\tProcess\tExecute\n"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 996
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 998
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    :try_start_12
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 999
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    aget v1, v1, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2b

    .line 1006
    :cond_20
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v1, v1

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_6d

    .line 1008
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1011
    .end local v0    # "i":I
    :cond_2a
    return-void

    .line 1002
    .restart local v0    # "i":I
    :cond_2b
    :try_start_2b
    const-string v1, "\t%3.2f\t%3.2f\t%3.2f\n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1004
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v5, v0, 0x2

    const/high16 v6, -0x40800000

    aput v6, v4, v5

    aput v6, v2, v3

    aput v6, v1, v0
    :try_end_6a
    .catchall {:try_start_2b .. :try_end_6a} :catchall_6d

    .line 998
    add-int/lit8 v0, v0, 0x3

    goto :goto_12

    .line 1008
    :catchall_6d
    move-exception v1

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method getCanvas()Landroid/view/HardwareCanvas;
    .registers 2

    .prologue
    .line 1397
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    return-object v0
.end method

.method abstract getConfig(Z)[I
.end method

.method getFrameCount()J
    .registers 3

    .prologue
    .line 1015
    iget-wide v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    return-wide v0
.end method

.method getHeight()I
    .registers 2

    .prologue
    .line 1392
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    return v0
.end method

.method abstract getOverdraw(Landroid/view/HardwareCanvas;)F
.end method

.method getWidth()I
    .registers 2

    .prologue
    .line 1387
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    return v0
.end method

.method hasDirtyRegions()Z
    .registers 2

    .prologue
    .line 1022
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDirtyRegionsEnabled:Z

    return v0
.end method

.method abstract initAtlas()V
.end method

.method abstract initCaches()V
.end method

.method initialize(Landroid/view/Surface;)Z
    .registers 8
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1058
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 1059
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->initializeEgl()Z

    move-result v0

    .line 1060
    .local v0, "contextCreated":Z
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createEglSurface(Landroid/view/Surface;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v4

    iput-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    .line 1061
    iput-boolean v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    .line 1063
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    if-eqz v4, :cond_4f

    .line 1064
    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 1065
    .local v1, "err":I
    const/16 v4, 0x3000

    if-eq v1, v4, :cond_33

    .line 1066
    invoke-virtual {p0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->destroy(Z)V

    .line 1067
    invoke-virtual {p0, v3}, Landroid/view/HardwareRenderer;->setRequested(Z)V

    .line 1080
    :cond_2e
    :goto_2e
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v4, :cond_4d

    .line 1083
    .end local v0    # "contextCreated":Z
    .end local v1    # "err":I
    :goto_32
    return v2

    .line 1069
    .restart local v0    # "contextCreated":Z
    .restart local v1    # "err":I
    :cond_33
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-nez v4, :cond_44

    .line 1070
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->createCanvas()Landroid/view/HardwareCanvas;

    move-result-object v4

    iput-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    .line 1071
    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/view/HardwareCanvas;->setName(Ljava/lang/String;)V

    .line 1073
    :cond_44
    invoke-virtual {p0, v2}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    .line 1075
    if-eqz v0, :cond_2e

    .line 1076
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->initAtlas()V

    goto :goto_2e

    :cond_4d
    move v2, v3

    .line 1080
    goto :goto_32

    .end local v0    # "contextCreated":Z
    .end local v1    # "err":I
    :cond_4f
    move v2, v3

    .line 1083
    goto :goto_32
.end method

.method initializeEgl()Z
    .registers 7

    .prologue
    .line 1098
    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 1099
    :try_start_3
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v2, :cond_82

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_82

    .line 1100
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    sput-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1103
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    sput-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1105
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v4, :cond_49

    .line 1106
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglGetDisplay failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1121
    :catchall_46
    move-exception v2

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v2

    .line 1111
    :cond_49
    const/4 v2, 0x2

    :try_start_4a
    new-array v1, v2, [I

    .line 1112
    .local v1, "version":[I
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_79

    .line 1113
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglInitialize failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1117
    :cond_79
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkEglErrorsForced()V

    .line 1119
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->loadEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    sput-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1121
    .end local v1    # "version":[I
    :cond_82
    monitor-exit v3
    :try_end_83
    .catchall {:try_start_4a .. :try_end_83} :catchall_46

    .line 1123
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/ManagedEGLContext;

    .line 1124
    .local v0, "managedContext":Landroid/opengl/ManagedEGLContext;
    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Landroid/opengl/ManagedEGLContext;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    :goto_91
    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1125
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    .line 1127
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v2, :cond_b8

    .line 1128
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/HardwareRenderer$GlRenderer;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1129
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p0, v3}, Landroid/view/HardwareRenderer$GlRenderer;->createManagedContext(Ljavax/microedition/khronos/egl/EGLContext;)Landroid/opengl/ManagedEGLContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1130
    const/4 v2, 0x1

    .line 1133
    :goto_b5
    return v2

    .line 1124
    :cond_b6
    const/4 v2, 0x0

    goto :goto_91

    .line 1133
    :cond_b8
    const/4 v2, 0x0

    goto :goto_b5
.end method

.method invalidate(Landroid/view/Surface;)V
    .registers 8
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v5, 0x1

    .line 1327
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1329
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_28

    .line 1330
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1331
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    .line 1335
    :cond_28
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1336
    invoke-direct {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createSurface(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1346
    :cond_34
    :goto_34
    return-void

    .line 1340
    :cond_35
    iput-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mUpdateDirtyRegions:Z

    .line 1342
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_34

    .line 1343
    invoke-virtual {p0, v5}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    goto :goto_34
.end method

.method loadSystemProperties(Landroid/view/Surface;)Z
    .registers 16
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 902
    const/4 v0, 0x0

    .line 904
    .local v0, "changed":Z
    const-string v8, "debug.hwui.profile"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 905
    .local v6, "profiling":Ljava/lang/String;
    sget-object v8, Landroid/view/HardwareRenderer$GlRenderer;->VISUALIZERS:[Ljava/lang/String;

    invoke-static {v8, v6}, Landroid/view/HardwareRenderer$GlRenderer;->search([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 906
    .local v2, "graphType":I
    if-ltz v2, :cond_69

    const/4 v7, 0x1

    .line 908
    .local v7, "value":Z
    :goto_10
    iget v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    if-eq v2, v8, :cond_28

    .line 909
    const/4 v0, 0x1

    .line 910
    iput v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    .line 912
    const/4 v8, 0x0

    check-cast v8, [[F

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileShapes:[[F

    .line 913
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfilePaint:Landroid/graphics/Paint;

    .line 915
    if-eqz v7, :cond_6b

    .line 916
    new-instance v8, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;

    invoke-direct {v8, p0, v2}, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;-><init>(Landroid/view/HardwareRenderer$GlRenderer;I)V

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    .line 924
    :cond_28
    :goto_28
    if-nez v7, :cond_2e

    .line 925
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 928
    :cond_2e
    iget-boolean v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eq v7, v8, :cond_79

    .line 929
    const/4 v0, 0x1

    .line 930
    iput-boolean v7, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    .line 932
    iget-boolean v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v8, :cond_c1

    .line 933
    const-string v8, "HardwareRenderer"

    const-string v9, "Profiling hardware renderer"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-string v8, "debug.hwui.profile.maxframes"

    const/16 v9, 0x80

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 937
    .local v4, "maxProfileFrames":I
    mul-int/lit8 v8, v4, 0x3

    new-array v8, v8, [F

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    .line 938
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4f
    iget-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v8, v8

    if-ge v3, v8, :cond_6f

    .line 939
    iget-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget-object v9, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v12, v3, 0x2

    const/high16 v13, -0x40800000

    aput v13, v11, v12

    aput v13, v9, v10

    aput v13, v8, v3

    .line 938
    add-int/lit8 v3, v3, 0x3

    goto :goto_4f

    .line 906
    .end local v3    # "i":I
    .end local v4    # "maxProfileFrames":I
    .end local v7    # "value":Z
    :cond_69
    const/4 v7, 0x0

    goto :goto_10

    .line 918
    .restart local v7    # "value":Z
    :cond_6b
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    goto :goto_28

    .line 942
    .restart local v3    # "i":I
    .restart local v4    # "maxProfileFrames":I
    :cond_6f
    new-instance v8, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v8}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 949
    .end local v3    # "i":I
    .end local v4    # "maxProfileFrames":I
    :goto_76
    const/4 v8, -0x3

    iput v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 952
    :cond_79
    const-string v8, "debug.hwui.show_dirty_regions"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 953
    iget-boolean v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    if-eq v7, v8, :cond_92

    .line 954
    const/4 v0, 0x1

    .line 955
    iput-boolean v7, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    .line 957
    iget-boolean v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    if-eqz v8, :cond_92

    .line 958
    const-string v8, "HardwareRenderer"

    const-string v9, "Debugging dirty regions"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_92
    const-string v8, "debug.hwui.overdraw"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 963
    .local v5, "overdraw":Ljava/lang/String;
    sget-object v8, Landroid/view/HardwareRenderer$GlRenderer;->OVERDRAW:[Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/view/HardwareRenderer$GlRenderer;->search([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 964
    .local v1, "debugOverdraw":I
    iget v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    if-eq v1, v8, :cond_b9

    .line 965
    const/4 v0, 0x1

    .line 966
    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    .line 968
    iget v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdraw:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_b9

    .line 969
    iget-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    if-eqz v8, :cond_b9

    .line 970
    iget-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v8}, Landroid/view/HardwareLayer;->destroy()V

    .line 971
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawLayer:Landroid/view/HardwareLayer;

    .line 972
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugOverdrawPaint:Landroid/graphics/Paint;

    .line 977
    :cond_b9
    # invokes: Landroid/view/HardwareRenderer;->nLoadProperties()Z
    invoke-static {}, Landroid/view/HardwareRenderer;->access$000()Z

    move-result v8

    if-eqz v8, :cond_c0

    .line 978
    const/4 v0, 0x1

    .line 981
    :cond_c0
    return v0

    .line 944
    .end local v1    # "debugOverdraw":I
    .end local v5    # "overdraw":Ljava/lang/String;
    :cond_c1
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    .line 945
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 946
    const/4 v8, -0x1

    iput v8, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileVisualizerType:I

    goto :goto_76
.end method

.method onPostDraw()V
    .registers 1

    .prologue
    .line 1414
    return-void
.end method

.method onPreDraw(Landroid/graphics/Rect;)I
    .registers 3
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 1410
    const/4 v0, 0x0

    return v0
.end method

.method setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1402
    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mName:Ljava/lang/String;

    .line 1403
    return-void
.end method

.method setup(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1378
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->validate()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1379
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 1380
    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    .line 1381
    iput p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    .line 1383
    :cond_f
    return-void
.end method

.method updateSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 1088
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1089
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createEglSurface(Landroid/view/Surface;)Ljavax/microedition/khronos/opengles/GL;

    .line 1091
    :cond_f
    return-void
.end method

.method validate()Z
    .registers 2

    .prologue
    .line 1373
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkRenderContext()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
