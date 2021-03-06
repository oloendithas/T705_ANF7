.class public Landroid/view/SurfaceControl;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$PhysicalDisplayInfo;,
        Landroid/view/SurfaceControl$OutOfResourcesException;
    }
.end annotation


# static fields
.field public static final BUILT_IN_DISPLAY_ID_HDMI:I = 0x1

.field public static final BUILT_IN_DISPLAY_ID_MAIN:I = 0x0

.field private static final DEBUG_ACT_ACT:Z = false

.field public static final FLAG_FIXED_ORIENATION:I = 0x40000000

.field public static final FLAG_TRANSLUCENT_SCREENSHOT:I = 0x20000000

.field public static final FLAG_USAGE_INTERNAL_DISP:I = -0x80000000

.field public static final FX_SURFACE_DIM:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field private static final HEADLESS:Z

.field public static final HIDDEN:I = 0x4

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final OPAQUE:I = 0x400

.field public static final PROTECTED_APP:I = 0x800

.field public static final SECURE:I = 0x80

.field public static final SURFACE_HIDDEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceControl"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mName:Ljava/lang/String;

.field mNativeObject:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 106
    const-string v0, "1"

    const-string/jumbo v1, "ro.config.headless"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/SurfaceControl;->HEADLESS:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .registers 10
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/SurfaceControl$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 265
    if-nez p1, :cond_14

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_14
    if-nez p2, :cond_1f

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1f
    and-int/lit8 v0, p6, 0x4

    if-nez v0, :cond_40

    .line 273
    const-string v0, "SurfaceControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surfaces should always be created with the HIDDEN flag set to ensure that they are not made visible prematurely before all of the surface\'s properties have been configured.  Set the other properties and make the surface visible within a transaction.  New surface name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    :cond_40
    invoke-static {}, Landroid/view/SurfaceControl;->checkHeadless()V

    .line 283
    iput-object p2, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 284
    invoke-static/range {p1 .. p6}, Landroid/view/SurfaceControl;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    .line 285
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    if-nez v0, :cond_57

    .line 286
    new-instance v0, Landroid/view/SurfaceControl$OutOfResourcesException;

    const-string v1, "Couldn\'t allocate SurfaceControl native object"

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_57
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public static blankDisplay(Landroid/os/IBinder;)V
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .prologue
    .line 573
    if-nez p0, :cond_a

    .line 574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_a
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeBlankDisplay(Landroid/os/IBinder;)V

    .line 577
    return-void
.end method

.method private static checkHeadless()V
    .registers 2

    .prologue
    .line 748
    sget-boolean v0, Landroid/view/SurfaceControl;->HEADLESS:Z

    if-eqz v0, :cond_c

    .line 749
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Device is headless"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_c
    return-void
.end method

.method private checkNotReleased()V
    .registers 3

    .prologue
    .line 339
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "mNativeObject is null. Have you called release() already?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_d
    return-void
.end method

.method public static closeTransaction()V
    .registers 0

    .prologue
    .line 355
    invoke-static {}, Landroid/view/SurfaceControl;->nativeCloseTransaction()V

    .line 356
    return-void
.end method

.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    .prologue
    .line 627
    if-nez p0, :cond_b

    .line 628
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_b
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static destroyDisplay(Landroid/os/IBinder;)V
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .prologue
    .line 634
    if-nez p0, :cond_a

    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_a
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeDestroyDisplay(Landroid/os/IBinder;)V

    .line 638
    return-void
.end method

.method public static getBuiltInDisplay(I)Landroid/os/IBinder;
    .registers 2
    .param p0, "builtInDisplayId"    # I

    .prologue
    .line 641
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayInfo(Landroid/os/IBinder;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "outInfo"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    .line 580
    if-nez p0, :cond_a

    .line 581
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_a
    if-nez p1, :cond_15

    .line 584
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outInfo must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_15
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetDisplayInfo(Landroid/os/IBinder;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v0

    return v0
.end method

.method private static native nativeBlankDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeCloseTransaction()V
.end method

.method private static native nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/SurfaceControl$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
.end method

.method private static native nativeDestroy(I)V
.end method

.method private static native nativeDestroyDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeGetBuiltInDisplay(I)Landroid/os/IBinder;
.end method

.method private static native nativeGetDisplayInfo(Landroid/os/IBinder;Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z
.end method

.method private static native nativeOpenTransaction()V
.end method

.method private static native nativeRelease(I)V
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;IIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V
.end method

.method private static native nativeSetAlpha(IF)V
.end method

.method private static native nativeSetAnimationList(I)V
.end method

.method private static native nativeSetAnimationTransaction()V
.end method

.method private static native nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayProjection(Landroid/os/IBinder;IIIIIIIII)V
.end method

.method private static native nativeSetDisplaySurface(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetFlags(III)V
.end method

.method private static native nativeSetLayer(II)V
.end method

.method private static native nativeSetLayerStack(II)V
.end method

.method private static native nativeSetMatrix(IFFFF)V
.end method

.method private static native nativeSetMatrix3D(I[F)V
.end method

.method private static native nativeSetPosition(IFF)V
.end method

.method private static native nativeSetRotationAnimation(IFFFFFIFIFI)V
.end method

.method private static native nativeSetShaderAnim(IF)V
.end method

.method private static native nativeSetSize(III)V
.end method

.method private static native nativeSetTranslationAnimation(IFFFIII)V
.end method

.method private static native nativeSetTransparentRegionHint(ILandroid/graphics/Region;)V
.end method

.method private static native nativeSetVRCinemaMode(IZ)V
.end method

.method private static native nativeSetVRDepth(IF)V
.end method

.method private static native nativeSetVRMode(IZ)V
.end method

.method private static native nativeSetWindowCrop(IIIII)V
.end method

.method private static native nativeUnblankDisplay(Landroid/os/IBinder;)V
.end method

.method public static openTransaction()V
    .registers 0

    .prologue
    .line 350
    invoke-static {}, Landroid/view/SurfaceControl;->nativeOpenTransaction()V

    .line 351
    return-void
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 731
    invoke-static {v3}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 733
    .local v0, "displayToken":Landroid/os/IBinder;
    const/4 v5, 0x1

    move v1, p0

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(IIII)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "minLayer"    # I
    .param p3, "maxLayer"    # I

    .prologue
    const/4 v5, 0x0

    .line 712
    invoke-static {v5}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "displayToken":Landroid/os/IBinder;
    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 714
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;

    .prologue
    const/4 v2, 0x0

    .line 686
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    .line 687
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;II)V
    .registers 11
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 676
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    .line 677
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIII)V
    .registers 13
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minLayer"    # I
    .param p5, "maxLayer"    # I

    .prologue
    .line 661
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    .line 662
    return-void
.end method

.method private static screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V
    .registers 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minLayer"    # I
    .param p5, "maxLayer"    # I
    .param p6, "allLayers"    # Z

    .prologue
    .line 738
    if-nez p0, :cond_a

    .line 739
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_a
    if-nez p1, :cond_14

    .line 742
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "consumer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_14
    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    .line 745
    return-void
.end method

.method public static setAnimationTransaction()V
    .registers 0

    .prologue
    .line 360
    invoke-static {}, Landroid/view/SurfaceControl;->nativeSetAnimationTransaction()V

    .line 361
    return-void
.end method

.method public static setDisplayLayerStack(Landroid/os/IBinder;I)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "layerStack"    # I

    .prologue
    .line 606
    if-nez p0, :cond_a

    .line 607
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_a
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V

    .line 610
    return-void
.end method

.method public static setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 14
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "orientation"    # I
    .param p2, "layerStackRect"    # Landroid/graphics/Rect;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    .prologue
    .line 591
    if-nez p0, :cond_a

    .line 592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_a
    if-nez p2, :cond_14

    .line 595
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layerStackRect must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_14
    if-nez p3, :cond_1e

    .line 598
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayRect must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_1e
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v9}, Landroid/view/SurfaceControl;->nativeSetDisplayProjection(Landroid/os/IBinder;IIIIIIIII)V

    .line 603
    return-void
.end method

.method public static setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 613
    if-nez p0, :cond_a

    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_a
    if-eqz p1, :cond_19

    .line 618
    iget-object v1, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 619
    :try_start_f
    iget v0, p1, Landroid/view/Surface;->mNativeObject:I

    invoke-static {p0, v0}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(Landroid/os/IBinder;I)V

    .line 620
    monitor-exit v1

    .line 624
    :goto_15
    return-void

    .line 620
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v0

    .line 622
    :cond_19
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(Landroid/os/IBinder;I)V

    goto :goto_15
.end method

.method public static unblankDisplay(Landroid/os/IBinder;)V
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .prologue
    .line 566
    if-nez p0, :cond_a

    .line 567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_a
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeUnblankDisplay(Landroid/os/IBinder;)V

    .line 570
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    .line 331
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    if-eqz v0, :cond_c

    .line 332
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0}, Landroid/view/SurfaceControl;->nativeDestroy(I)V

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    .line 335
    :cond_c
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 336
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 296
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 297
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 299
    :cond_9
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    if-eqz v0, :cond_12

    .line 300
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0}, Landroid/view/SurfaceControl;->nativeRelease(I)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_16

    .line 303
    :cond_12
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 305
    return-void

    .line 303
    :catchall_16
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public hide()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 379
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 380
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, v1, v1}, Landroid/view/SurfaceControl;->nativeSetFlags(III)V

    .line 381
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 318
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    if-eqz v0, :cond_c

    .line 319
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0}, Landroid/view/SurfaceControl;->nativeRelease(I)V

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    .line 322
    :cond_c
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 323
    return-void
.end method

.method public setAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 394
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 395
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->nativeSetAlpha(IF)V

    .line 396
    return-void
.end method

.method public setAnimationList(Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/SmgAnimation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "smgAnimationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/SmgAnimation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 410
    .local v12, "currIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/animation/SmgAnimation;>;"
    :cond_4
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 411
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/animation/SmgAnimation;

    .line 413
    .local v11, "currAnim":Landroid/view/animation/SmgAnimation;
    iget v0, v11, Landroid/view/animation/SmgAnimation;->animationType:I

    sget-object v1, Landroid/view/animation/SmgAnimation$AnimationType;->SMG_ROTATION_ANIMATION:Landroid/view/animation/SmgAnimation$AnimationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_34

    .line 415
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    iget v1, v11, Landroid/view/animation/SmgAnimation;->curAngle:F

    iget v2, v11, Landroid/view/animation/SmgAnimation;->xAxis:F

    iget v3, v11, Landroid/view/animation/SmgAnimation;->yAxis:F

    iget v4, v11, Landroid/view/animation/SmgAnimation;->zAxis:F

    iget v5, v11, Landroid/view/animation/SmgAnimation;->pivot_x:F

    iget v6, v11, Landroid/view/animation/SmgAnimation;->ratioX:I

    iget v7, v11, Landroid/view/animation/SmgAnimation;->pivot_y:F

    iget v8, v11, Landroid/view/animation/SmgAnimation;->ratioY:I

    iget v9, v11, Landroid/view/animation/SmgAnimation;->pivot_z:F

    iget v10, v11, Landroid/view/animation/SmgAnimation;->ratioZ:I

    invoke-static/range {v0 .. v10}, Landroid/view/SurfaceControl;->nativeSetRotationAnimation(IFFFFFIFIFI)V

    goto :goto_4

    .line 429
    :cond_34
    iget v0, v11, Landroid/view/animation/SmgAnimation;->animationType:I

    sget-object v1, Landroid/view/animation/SmgAnimation$AnimationType;->SMG_TRANSLATION_ANIMATION:Landroid/view/animation/SmgAnimation$AnimationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_50

    .line 435
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    iget v1, v11, Landroid/view/animation/SmgAnimation;->tX:F

    iget v2, v11, Landroid/view/animation/SmgAnimation;->tY:F

    iget v3, v11, Landroid/view/animation/SmgAnimation;->tZ:F

    iget v4, v11, Landroid/view/animation/SmgAnimation;->ratioX:I

    iget v5, v11, Landroid/view/animation/SmgAnimation;->ratioY:I

    iget v6, v11, Landroid/view/animation/SmgAnimation;->ratioZ:I

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->nativeSetTranslationAnimation(IFFFIII)V

    goto :goto_4

    .line 446
    :cond_50
    iget v0, v11, Landroid/view/animation/SmgAnimation;->animationType:I

    sget-object v1, Landroid/view/animation/SmgAnimation$AnimationType;->SMG_SHADER_ANIMATION:Landroid/view/animation/SmgAnimation$AnimationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 451
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    iget v1, v11, Landroid/view/animation/SmgAnimation;->shaderAnimationEffect:F

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeSetShaderAnim(IF)V

    goto :goto_4

    .line 455
    .end local v11    # "currAnim":Landroid/view/animation/SmgAnimation;
    :cond_62
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0}, Landroid/view/SurfaceControl;->nativeSetAnimationList(I)V

    .line 456
    return-void
.end method

.method public setFlags(II)V
    .registers 4
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 482
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 483
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1, p2}, Landroid/view/SurfaceControl;->nativeSetFlags(III)V

    .line 484
    return-void
.end method

.method public setLayer(I)V
    .registers 3
    .param p1, "zorder"    # I

    .prologue
    .line 364
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 365
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->nativeSetLayer(II)V

    .line 366
    return-void
.end method

.method public setLayerStack(I)V
    .registers 3
    .param p1, "layerStack"    # I

    .prologue
    .line 497
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 498
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->nativeSetLayerStack(II)V

    .line 499
    return-void
.end method

.method public setMatrix(FFFF)V
    .registers 6
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    .line 399
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 400
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetMatrix(IFFFF)V

    .line 401
    return-void
.end method

.method public setMatrix3D([F)V
    .registers 3
    .param p1, "matrix"    # [F

    .prologue
    .line 461
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->nativeSetMatrix3D(I[F)V

    .line 462
    return-void
.end method

.method public setPosition(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 369
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 370
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1, p2}, Landroid/view/SurfaceControl;->nativeSetPosition(IFF)V

    .line 371
    return-void
.end method

.method public setSize(II)V
    .registers 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 374
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 375
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1, p2}, Landroid/view/SurfaceControl;->nativeSetSize(III)V

    .line 376
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 389
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 390
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(ILandroid/graphics/Region;)V

    .line 391
    return-void
.end method

.method public setVRCinemaMode(Z)V
    .registers 3
    .param p1, "bVRCinemaMode"    # Z

    .prologue
    .line 473
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->nativeSetVRCinemaMode(IZ)V

    .line 474
    return-void
.end method

.method public setVRDepth(F)V
    .registers 3
    .param p1, "fDepth"    # F

    .prologue
    .line 477
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->nativeSetVRDepth(IF)V

    .line 478
    return-void
.end method

.method public setVRMode(Z)V
    .registers 3
    .param p1, "bVRMode"    # Z

    .prologue
    .line 469
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->nativeSetVRMode(IZ)V

    .line 470
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 487
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 488
    if-eqz p1, :cond_14

    .line 489
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(IIIII)V

    .line 494
    :goto_13
    return-void

    .line 492
    :cond_14
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    invoke-static {v0, v1, v1, v1, v1}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(IIIII)V

    goto :goto_13
.end method

.method public show()V
    .registers 4

    .prologue
    .line 384
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 385
    iget v0, p0, Landroid/view/SurfaceControl;->mNativeObject:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/view/SurfaceControl;->nativeSetFlags(III)V

    .line 386
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
