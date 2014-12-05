.class public Lcom/android/keyguard/KeyguardWidgetFrame;
.super Landroid/widget/FrameLayout;
.source "KeyguardWidgetFrame.java"


# static fields
.field private static final sAddBlendMode:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private final HIDE_FRAME_DELAY:J

.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundLightRect:Landroid/graphics/Rect;

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mBgAlphaController:Ljava/lang/Object;

.field private mContentAlpha:F

.field private mForegroundAlpha:I

.field private mForegroundGradient:Landroid/graphics/LinearGradient;

.field private final mForegroundRect:Landroid/graphics/Rect;

.field private mFrameFade:Landroid/animation/Animator;

.field private mFrameHeight:I

.field private mFrameStrokeAdjustment:I

.field private mGradientColor:I

.field private mGradientPaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private mIsHoveringOverDeleteDropTarget:Z

.field private mIsReordering:Z

.field private mIsSmall:Z

.field mLeftToRight:Z

.field private mLeftToRightGradient:Landroid/graphics/LinearGradient;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

.field private mMaxChallengeTop:I

.field private mOverScrollAmount:F

.field private mPerformAppWidgetSizeUpdateOnBootComplete:Z

.field private mRightToLeftGradient:Landroid/graphics/LinearGradient;

.field private mSmallFrameHeight:I

.field private mSmallWidgetHeight:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWidgetLockedSmall:Z

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/keyguard/KeyguardWidgetFrame;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    .line 61
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    .line 63
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    .line 64
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    .line 65
    iput v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    .line 68
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 73
    const/high16 v3, 0x3f800000

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    .line 75
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    .line 81
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    .line 82
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    .line 145
    new-instance v3, Lcom/android/keyguard/KeyguardWidgetFrame$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardWidgetFrame$1;-><init>(Lcom/android/keyguard/KeyguardWidgetFrame;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 564
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsReordering:Z

    .line 577
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    .line 580
    const-wide/16 v3, 0x15e

    iput-wide v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->HIDE_FRAME_DELAY:J

    .line 582
    new-instance v3, Lcom/android/keyguard/KeyguardWidgetFrame$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardWidgetFrame$2;-><init>(Lcom/android/keyguard/KeyguardWidgetFrame;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v3, Lcom/android/keyguard/CheckLongPressHelper;

    invoke-direct {v3, p0}, Lcom/android/keyguard/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 112
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 113
    .local v0, "density":F
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41000000

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 114
    .local v1, "padding":I
    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v3, v1, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 116
    const/high16 v3, 0x40000000

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    .line 120
    const v3, 0x7f0c002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    .line 122
    const v3, 0x7f020198

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 123
    const v3, 0x7f070005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    .line 125
    const v3, 0x7f0201a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    iget-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/android/keyguard/KeyguardWidgetFrame;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 127
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardWidgetFrame;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardWidgetFrame;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardWidgetFrame;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardWidgetFrame;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardWidgetFrame;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardWidgetFrame;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V

    return-void
.end method

.method private drawGradientOverlay(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 247
    return-void
.end method

.method private drawHoveringOverDeleteOverlay(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    if-eqz v0, :cond_9

    .line 251
    const/high16 v0, -0x66010000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 253
    :cond_9
    return-void
.end method

.method private performAppWidgetSizeCallbacksIfNecessary()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 508
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v7

    .line 509
    .local v7, "content":Landroid/view/View;
    instance-of v1, v7, Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_a

    .line 525
    :goto_9
    return-void

    .line 511
    :cond_a
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-nez v1, :cond_19

    .line 512
    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    goto :goto_9

    :cond_19
    move-object v0, v7

    .line 519
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 520
    .local v0, "awhv":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    .line 522
    .local v8, "density":F
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    float-to-int v2, v1

    .line 523
    .local v2, "width":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    float-to-int v3, v1

    .line 524
    .local v3, "height":I
    const/4 v1, 0x0

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    goto :goto_9
.end method

.method private setWidgetHeight(I)V
    .registers 6
    .param p1, "height"    # I

    .prologue
    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "needLayout":Z
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v2

    .line 371
    .local v2, "widget":Landroid/view/View;
    if-eqz v2, :cond_14

    .line 372
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 373
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, p1, :cond_14

    .line 374
    const/4 v1, 0x1

    .line 375
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 378
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_14
    if-eqz v1, :cond_19

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 381
    :cond_19
    return-void
.end method

.method private updateGradient()V
    .registers 16

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 474
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    if-eqz v0, :cond_2f

    move v1, v2

    .line 475
    .local v1, "x0":F
    :goto_7
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    .line 476
    .local v3, "x1":F
    :goto_12
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLeftToRightGradient:Landroid/graphics/LinearGradient;

    .line 478
    new-instance v7, Landroid/graphics/LinearGradient;

    iget v12, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v8, v3

    move v9, v2

    move v10, v1

    move v11, v2

    move v13, v6

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mRightToLeftGradient:Landroid/graphics/LinearGradient;

    .line 480
    return-void

    .line 474
    .end local v1    # "x0":F
    .end local v3    # "x1":F
    :cond_2f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    goto :goto_7

    .restart local v1    # "x0":F
    :cond_37
    move v3, v2

    .line 475
    goto :goto_12
.end method


# virtual methods
.method public adjustFrame(I)V
    .registers 4
    .param p1, "challengeTop"    # I

    .prologue
    .line 401
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int v0, p1, v1

    .line 402
    .local v0, "frameHeight":I
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 403
    return-void
.end method

.method public cancelLongPress()V
    .registers 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/CheckLongPressHelper;->cancelLongPress()V

    .line 240
    return-void
.end method

.method public disableHardwareLayersForContent()V
    .registers 4

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 307
    .local v0, "widget":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 308
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 310
    :cond_b
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->drawBg(Landroid/graphics/Canvas;)V

    .line 280
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->drawGradientOverlay(Landroid/graphics/Canvas;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->drawHoveringOverDeleteOverlay(Landroid/graphics/Canvas;)V

    .line 284
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 286
    return-void
.end method

.method protected drawBg(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x437f0000

    .line 256
    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3b

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 259
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 260
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 261
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 264
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsReordering:Z

    if-nez v2, :cond_3b

    .line 266
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    .local v1, "bgLight":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 268
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 269
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 272
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bgLight":Landroid/graphics/drawable/Drawable;
    :cond_3b
    return-void
.end method

.method public enableHardwareLayersForContent()V
    .registers 4

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, "widget":Landroid/view/View;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 296
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 298
    :cond_11
    return-void
.end method

.method public fadeFrame(Ljava/lang/Object;ZFI)V
    .registers 10
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "takeControl"    # Z
    .param p3, "alpha"    # F
    .param p4, "duration"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 455
    if-eqz p2, :cond_6

    .line 456
    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    .line 459
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    if-eq v1, p1, :cond_f

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    if-eqz v1, :cond_f

    .line 471
    :goto_e
    return-void

    .line 463
    :cond_f
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    if-eqz v1, :cond_1b

    .line 464
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 465
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    .line 467
    :cond_1b
    const-string v1, "backgroundAlpha"

    new-array v2, v4, [F

    aput p3, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 468
    .local v0, "bgAlpha":Landroid/animation/PropertyValuesHolder;
    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    .line 469
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 470
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_e
.end method

.method public getBackgroundAlpha()F
    .registers 2

    .prologue
    .line 330
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    return v0
.end method

.method public getContent()Landroid/view/View;
    .registers 2

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentAlpha()F
    .registers 2

    .prologue
    .line 352
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mContentAlpha:F

    return v0
.end method

.method public getContentAppWidgetId()I
    .registers 3

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 318
    .local v0, "content":Landroid/view/View;
    instance-of v1, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_f

    .line 319
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .end local v0    # "content":Landroid/view/View;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    .line 325
    :goto_e
    return v1

    .line 320
    .restart local v0    # "content":Landroid/view/View;
    :cond_f
    instance-of v1, v0, Lcom/android/keyguard/KeyguardStatusView;

    if-eqz v1, :cond_1a

    .line 321
    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    .end local v0    # "content":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->getAppWidgetId()I

    move-result v1

    goto :goto_e

    .line 322
    .restart local v0    # "content":Landroid/view/View;
    :cond_1a
    instance-of v1, v0, Lcom/android/keyguard/sec/ContextualEventContainer;

    if-eqz v1, :cond_25

    .line 323
    check-cast v0, Lcom/android/keyguard/sec/ContextualEventContainer;

    .end local v0    # "content":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/keyguard/sec/ContextualEventContainer;->getAppWidgetId()I

    move-result v1

    goto :goto_e

    .line 325
    .restart local v0    # "content":Landroid/view/View;
    :cond_25
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getSmallFrameHeight()I
    .registers 2

    .prologue
    .line 415
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    return v0
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hideFrame(Ljava/lang/Object;)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/Object;

    .prologue
    .line 446
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x23f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 447
    return-void
.end method

.method public hideFrameTouched(Ljava/lang/Object;)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/Object;

    .prologue
    .line 567
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x23f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 568
    return-void
.end method

.method public isSmall()Z
    .registers 2

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    return v0
.end method

.method public onActive(Z)V
    .registers 2
    .param p1, "isActive"    # Z

    .prologue
    .line 544
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 141
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 142
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 143
    return-void
.end method

.method public onBouncerShowing(Z)V
    .registers 2
    .param p1, "showing"    # Z

    .prologue
    .line 553
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 133
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 134
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->cancelLongPress()V

    .line 135
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 137
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 173
    .local v0, "appWidgetId":I
    if-nez v0, :cond_8

    .line 200
    :cond_7
    :goto_7
    return v2

    .line 177
    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isContextualWidget(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_42

    :pswitch_17
    goto :goto_7

    .line 184
    :pswitch_18
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/CheckLongPressHelper;->postCheckForLongPress(Landroid/view/MotionEvent;)V

    .line 185
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 186
    :cond_31
    invoke-virtual {p0, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->showFrame(Ljava/lang/Object;)V

    goto :goto_7

    .line 190
    :pswitch_35
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/CheckLongPressHelper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_7

    .line 195
    :pswitch_3b
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_7

    .line 182
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_18
        :pswitch_3b
        :pswitch_35
        :pswitch_3b
        :pswitch_17
        :pswitch_3b
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 503
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 504
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V

    .line 505
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v6, 0x0

    .line 484
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 486
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    if-nez v0, :cond_a

    .line 487
    iput p2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    .line 492
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 495
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 498
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->updateGradient()V

    .line 499
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 500
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x3

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_42

    .line 227
    :cond_8
    :goto_8
    :pswitch_8
    const/4 v1, 0x1

    return v1

    .line 209
    :pswitch_a
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/CheckLongPressHelper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_8

    .line 213
    :pswitch_10
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_8

    .line 216
    :pswitch_16
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/CheckLongPressHelper;->cancelLongPress()V

    .line 217
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 218
    :cond_2f
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 220
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    .line 207
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_16
        :pswitch_a
        :pswitch_10
        :pswitch_8
        :pswitch_10
    .end packed-switch
.end method

.method public onUserInteraction(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->cancelLongPress()V

    .line 234
    return-void
.end method

.method public resetSize()V
    .registers 2

    .prologue
    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 427
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    if-nez v0, :cond_b

    .line 428
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 430
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 431
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 345
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_d

    .line 346
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    .line 347
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 349
    :cond_d
    return-void
.end method

.method public setContentAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 356
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mContentAlpha:F

    .line 357
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 358
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 359
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 361
    :cond_b
    return-void
.end method

.method public setFrameHeight(I)V
    .registers 9
    .param p1, "height"    # I

    .prologue
    const/4 v6, 0x0

    .line 434
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    .line 435
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 440
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundLightRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundLightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 441
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->updateGradient()V

    .line 442
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 443
    return-void
.end method

.method setIsHoveringOverDeleteDropTarget(Z)V
    .registers 8
    .param p1, "isHovering"    # Z

    .prologue
    .line 158
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    if-eq v2, p1, :cond_27

    .line 159
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    .line 160
    if-eqz p1, :cond_28

    const v0, 0x7f06007f

    .line 162
    .local v0, "resId":I
    :goto_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 167
    .end local v0    # "resId":I
    .end local v1    # "text":Ljava/lang/String;
    :cond_27
    return-void

    .line 160
    :cond_28
    const v0, 0x7f060080

    goto :goto_b
.end method

.method public setIsReordering(Z)V
    .registers 2
    .param p1, "isReordering"    # Z

    .prologue
    .line 571
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsReordering:Z

    .line 572
    return-void
.end method

.method public setMaxChallengeTop(I)V
    .registers 4
    .param p1, "top"    # I

    .prologue
    .line 384
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    if-eq v1, p1, :cond_27

    const/4 v0, 0x1

    .line 385
    .local v0, "dirty":Z
    :goto_5
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    .line 386
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    .line 387
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    .line 388
    if-eqz v0, :cond_29

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    if-eqz v1, :cond_29

    .line 389
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 390
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 394
    :cond_26
    :goto_26
    return-void

    .line 384
    .end local v0    # "dirty":Z
    :cond_27
    const/4 v0, 0x0

    goto :goto_5

    .line 391
    .restart local v0    # "dirty":Z
    :cond_29
    if-eqz v0, :cond_26

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    if-eqz v1, :cond_26

    .line 392
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    goto :goto_26
.end method

.method setOverScrollAmount(FZ)V
    .registers 6
    .param p1, "r"    # F
    .param p2, "left"    # Z

    .prologue
    .line 528
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_30

    .line 529
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    .line 530
    if-eqz p2, :cond_31

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLeftToRightGradient:Landroid/graphics/LinearGradient;

    :goto_e
    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundGradient:Landroid/graphics/LinearGradient;

    .line 531
    const/high16 v1, 0x3f000000

    mul-float/2addr v1, p1

    const/high16 v2, 0x437f0000

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    .line 535
    const v1, 0x3f19999a

    const v2, 0x3ecccccc

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 537
    .local v0, "bgAlpha":F
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 538
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 540
    .end local v0    # "bgAlpha":F
    :cond_30
    return-void

    .line 530
    :cond_31
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mRightToLeftGradient:Landroid/graphics/LinearGradient;

    goto :goto_e
.end method

.method public setWidgetLockedSmall(Z)V
    .registers 3
    .param p1, "locked"    # Z

    .prologue
    .line 419
    if-eqz p1, :cond_7

    .line 420
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 422
    :cond_7
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    .line 423
    return-void
.end method

.method public setWorkerHandler(Landroid/os/Handler;)V
    .registers 2
    .param p1, "workerHandler"    # Landroid/os/Handler;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWorkerHandler:Landroid/os/Handler;

    .line 557
    return-void
.end method

.method public showFrame(Ljava/lang/Object;)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/Object;

    .prologue
    .line 450
    const/4 v0, 0x1

    const v1, 0x3f19999a

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 452
    return-void
.end method

.method public shrinkWidget(Z)V
    .registers 3
    .param p1, "alsoShrinkFrame"    # Z

    .prologue
    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 407
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 409
    if-eqz p1, :cond_f

    .line 410
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 412
    :cond_f
    return-void
.end method
