.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_SHUTDOWN_TIMEOUT:I = 0xdac

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0xb4

.field private static final TOUCH_SLOP:I = 0x8

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 245
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/16 v0, 0xc

    const/16 v1, 0x8

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 254
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 255
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 256
    const/16 v0, 0x1f40

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 257
    const/16 v0, 0xa

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 258
    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 259
    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 260
    iput v2, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 261
    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 262
    iput v2, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 264
    const v0, 0x177000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 266
    const/4 v0, 0x6

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 268
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 282
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 283
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 284
    .local v1, "config":Landroid/content/res/Configuration;
    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 286
    .local v2, "density":F
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iput-object v11, p0, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    .line 287
    iget-object v11, p0, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    if-nez v11, :cond_1d

    .line 288
    iput-object p1, p0, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    .line 290
    :cond_1d
    const/4 v11, 0x4

    invoke-virtual {v1, v11}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v11

    if-eqz v11, :cond_cf

    .line 291
    const/high16 v11, 0x3fc00000

    mul-float v8, v2, v11

    .line 296
    .local v8, "sizeAndDensity":F
    :goto_28
    const/high16 v11, 0x41400000

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 297
    const/high16 v11, 0x41400000

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 298
    const/high16 v11, 0x42480000

    mul-float/2addr v11, v2

    const/high16 v12, 0x3f000000

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 299
    const/high16 v11, 0x45fa0000

    mul-float/2addr v11, v2

    const/high16 v12, 0x3f000000

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 300
    const/high16 v11, 0x41200000

    mul-float/2addr v11, v2

    const/high16 v12, 0x3f000000

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 301
    const/high16 v11, 0x42c80000

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 302
    const/high16 v11, 0x41800000

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 305
    const-string/jumbo v11, "window"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 306
    .local v9, "win":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 307
    .local v3, "display":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 308
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v3, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 309
    iget v11, v7, Landroid/graphics/Point;->x:I

    mul-int/lit8 v11, v11, 0x4

    iget v12, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v11, v12

    iput v11, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 311
    const/4 v11, 0x0

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 312
    const/high16 v11, 0x40c00000

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 314
    iget-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    if-nez v11, :cond_aa

    .line 315
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v10

    .line 317
    .local v10, "wm":Landroid/view/IWindowManager;
    :try_start_9e
    invoke-interface {v10}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v11

    if-nez v11, :cond_d2

    const/4 v11, 0x1

    :goto_a5
    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 318
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_aa} :catch_d4

    .line 324
    .end local v10    # "wm":Landroid/view/IWindowManager;
    :cond_aa
    :goto_aa
    const v11, 0x1110014

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 326
    const-string v11, "0"

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 327
    .local v0, "advancedTouchSlop":I
    if-nez v0, :cond_c2

    const v11, 0x1050008

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .end local v0    # "advancedTouchSlop":I
    :cond_c2
    iput v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 329
    iget v11, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    mul-int/lit8 v11, v11, 0x2

    iput v11, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 331
    iget v11, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    iput v11, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 332
    return-void

    .line 293
    .end local v3    # "display":Landroid/view/Display;
    .end local v7    # "size":Landroid/graphics/Point;
    .end local v8    # "sizeAndDensity":F
    .end local v9    # "win":Landroid/view/WindowManager;
    :cond_cf
    move v8, v2

    .restart local v8    # "sizeAndDensity":F
    goto/16 :goto_28

    .line 317
    .restart local v3    # "display":Landroid/view/Display;
    .restart local v7    # "size":Landroid/graphics/Point;
    .restart local v9    # "win":Landroid/view/WindowManager;
    .restart local v10    # "wm":Landroid/view/IWindowManager;
    :cond_d2
    const/4 v11, 0x0

    goto :goto_a5

    .line 319
    :catch_d4
    move-exception v4

    .line 320
    .local v4, "ex":Landroid/os/RemoteException;
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto :goto_aa
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 343
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c80000

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 345
    .local v1, "density":I
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .line 346
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    if-nez v0, :cond_22

    .line 347
    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 348
    .restart local v0    # "configuration":Landroid/view/ViewConfiguration;
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    :cond_22
    return-object v0
.end method

.method public static getDoubleTapMinTime()I
    .registers 1

    .prologue
    .line 470
    const/16 v0, 0x28

    return v0
.end method

.method public static getDoubleTapSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 555
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .registers 1

    .prologue
    .line 459
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 501
    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 394
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyShutdownTimeout()J
    .registers 2

    .prologue
    .line 703
    const-wide/16 v0, 0xdac

    return-wide v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .registers 2

    .prologue
    .line 690
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .registers 1

    .prologue
    .line 490
    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .registers 1

    .prologue
    .line 480
    const/16 v0, 0x96

    return v0
.end method

.method public static getJumpTapTimeout()I
    .registers 1

    .prologue
    .line 450
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .registers 1

    .prologue
    .line 432
    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .registers 1

    .prologue
    .line 425
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .registers 2

    .prologue
    .line 417
    const-string v0, "long_press_timeout"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 643
    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 623
    const/16 v0, 0x1f40

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 606
    const/16 v0, 0x32

    return v0
.end method

.method public static getPressedStateDuration()I
    .registers 1

    .prologue
    .line 409
    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .registers 1

    .prologue
    .line 377
    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .registers 1

    .prologue
    .line 384
    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .registers 1

    .prologue
    .line 713
    const v0, 0x3c75c28f

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .registers 2

    .prologue
    .line 576
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .registers 1

    .prologue
    .line 441
    const/16 v0, 0xb4

    return v0
.end method

.method public static getTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 519
    const/16 v0, 0x8

    return v0
.end method

.method public static getWindowTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 588
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .registers 2

    .prologue
    .line 679
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getScaledDoubleTapSlop()I
    .registers 2

    .prologue
    .line 563
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .registers 2

    .prologue
    .line 535
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .registers 2

    .prologue
    .line 509
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .registers 2

    .prologue
    .line 401
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .registers 2

    .prologue
    .line 652
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .registers 2

    .prologue
    .line 630
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .registers 2

    .prologue
    .line 613
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .registers 2

    .prologue
    .line 668
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .registers 2

    .prologue
    .line 660
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .registers 2

    .prologue
    .line 543
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .registers 2

    .prologue
    .line 370
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .registers 2

    .prologue
    .line 526
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .registers 2

    .prologue
    .line 596
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .registers 3

    .prologue
    .line 729
    iget-object v0, p0, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 730
    const/4 v0, 0x0

    .line 732
    :goto_10
    return v0

    :cond_11
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    goto :goto_10
.end method

.method public isFadingMarqueeEnabled()Z
    .registers 2

    .prologue
    .line 741
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method