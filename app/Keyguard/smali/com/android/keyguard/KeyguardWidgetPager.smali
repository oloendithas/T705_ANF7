.class public Lcom/android/keyguard/KeyguardWidgetPager;
.super Lcom/android/keyguard/PagedView;
.source "KeyguardWidgetPager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;
.implements Lcom/android/keyguard/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;,
        Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F

.field protected static OVERSCROLL_MAX_ROTATION:F


# instance fields
.field private BOUNCER_SCALE_FACTOR:F

.field private final WAKEUP_BLOCK_DURATION:I

.field private mAddWidgetView:Landroid/view/View;

.field private final mBackgroundWorkerHandler:Landroid/os/Handler;

.field private final mBackgroundWorkerThread:Landroid/os/HandlerThread;

.field private mBouncerZoomInOutDuration:I

.field private mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

.field private mCameraEventInProgress:Z

.field private mCenterSmallWidgetsVertically:Z

.field protected mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

.field private mHasMeasure:Z

.field private mIsEasyUxOn:Z

.field private mIsMultipleLockOn:Z

.field private mIsMusicWidgetAdded:Z

.field private mIsWakeupBlocked:Z

.field private mIsZoomOutState:Z

.field private mLastHeightMeasureSpec:I

.field private mLastWidthMeasureSpec:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPage:I

.field protected mScreenCenter:I

.field protected mShowingInitialHints:Z

.field private mUnblockWakeupHandler:Landroid/os/Handler;

.field protected mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

.field private mWidgetToResetAfterFadeOut:I

.field mZInterpolator:Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;

.field showHintsAfterLayout:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const v0, 0x461c4000

    sput v0, Lcom/android/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    .line 69
    const/high16 v0, 0x41f00000

    sput v0, Lcom/android/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;

    const/high16 v3, 0x3f000000

    invoke-direct {v0, v3}, Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZInterpolator:Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;

    .line 83
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->showHintsAfterLayout:Z

    .line 90
    iput v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    .line 94
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mShowingInitialHints:Z

    .line 102
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    .line 103
    const v0, 0x3f2b851f

    iput v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    .line 117
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsMusicWidgetAdded:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsZoomOutState:Z

    .line 122
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->WAKEUP_BLOCK_DURATION:I

    .line 123
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsWakeupBlocked:Z

    .line 124
    new-instance v0, Lcom/android/keyguard/KeyguardWidgetPager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardWidgetPager$1;-><init>(Lcom/android/keyguard/KeyguardWidgetPager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mUnblockWakeupHandler:Landroid/os/Handler;

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_3a

    .line 141
    invoke-virtual {p0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 144
    :cond_3a
    invoke-virtual {p0, p0}, Lcom/android/keyguard/PagedView;->setPageSwitchListener(Lcom/android/keyguard/PagedView$PageSwitchListener;)V

    .line 146
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "KeyguardWidgetPager Worker"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    .line 151
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_mode_switch"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_78

    move v0, v1

    :goto_67
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsEasyUxOn:Z

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kg_multiple_lockscreen"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_7a

    :goto_75
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsMultipleLockOn:Z

    .line 157
    return-void

    :cond_78
    move v0, v2

    .line 151
    goto :goto_67

    :cond_7a
    move v2, v1

    .line 155
    goto :goto_75
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardWidgetPager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardWidgetPager;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsWakeupBlocked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardWidgetPager;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardWidgetPager;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardWidgetPager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardWidgetPager;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardWidgetPager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardWidgetPager;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardWidgetPager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardWidgetPager;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    return-void
.end method

.method private captureUserInteraction(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 347
    .local v0, "currentWidgetPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->onUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private enforceKeyguardWidgetFrame(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 555
    instance-of v0, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-nez v0, :cond_c

    .line 556
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyguardWidgetPager children must be KeyguardWidgetFrames"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_c
    return-void
.end method

.method private static findClockInHierarchy(Landroid/view/View;)I
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1102
    instance-of v4, p0, Landroid/widget/TextClock;

    if-eqz v4, :cond_b

    .line 1103
    check-cast p0, Landroid/widget/TextClock;

    .end local p0    # "view":Landroid/view/View;
    invoke-static {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getClockFlags(Landroid/widget/TextClock;)I

    move-result v0

    .line 1113
    .restart local p0    # "view":Landroid/view/View;
    :cond_a
    :goto_a
    return v0

    .line 1104
    :cond_b
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_26

    .line 1105
    const/4 v0, 0x0

    .local v0, "flags":I
    move-object v1, p0

    .line 1106
    check-cast v1, Landroid/view/ViewGroup;

    .line 1107
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 1108
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v3, :cond_a

    .line 1109
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardWidgetPager;->findClockInHierarchy(Landroid/view/View;)I

    move-result v4

    or-int/2addr v0, v4

    .line 1108
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1113
    .end local v0    # "flags":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_26
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static getClockFlags(Landroid/widget/TextClock;)I
    .registers 7
    .param p0, "clock"    # Landroid/widget/TextClock;

    .prologue
    .line 1123
    const/4 v0, 0x0

    .line 1125
    .local v0, "flags":I
    invoke-virtual {p0}, Landroid/widget/TextClock;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    .line 1126
    .local v3, "timeZone":Ljava/lang/String;
    if-eqz v3, :cond_17

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 1128
    const/4 v4, 0x0

    .line 1142
    :goto_16
    return v4

    .line 1131
    :cond_17
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1132
    .local v1, "format":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_37

    const/16 v2, 0x6b

    .line 1135
    .local v2, "hour":C
    :goto_23
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1136
    or-int/lit8 v0, v0, 0x1

    .line 1138
    :cond_2b
    const/16 v4, 0x6d

    invoke-static {v1, v4}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1139
    or-int/lit8 v0, v0, 0x2

    :cond_35
    move v4, v0

    .line 1142
    goto :goto_16

    .line 1132
    .end local v2    # "hour":C
    :cond_37
    const/16 v2, 0x68

    goto :goto_23
.end method

.method private hasContextualWidget()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 318
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_contextual_widget_ids"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "appWidgetIdString":Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    .line 328
    :cond_16
    :goto_16
    return v1

    .line 324
    :cond_17
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsMusicWidgetAdded:Z

    if-nez v2, :cond_16

    .line 328
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private isDefaultWidget(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 382
    instance-of v0, p1, Lcom/android/keyguard/KeyguardStatusView;

    if-nez v0, :cond_c

    instance-of v0, p1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    if-nez v0, :cond_c

    instance-of v0, p1, Lcom/android/keyguard/sec/ContextualEventContainer;

    if-eqz v0, :cond_e

    .line 385
    :cond_c
    const/4 v0, 0x1

    .line 388
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isWidgetEnabled()Z
    .registers 2

    .prologue
    .line 1066
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1067
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsMultipleLockOn:Z

    .line 1069
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v0

    goto :goto_8
.end method

.method private updatePageAlphaValues(I)V
    .registers 2
    .param p1, "screenCenter"    # I

    .prologue
    .line 637
    return-void
.end method

.method private updateWidgetFrameImportantForAccessibility(Lcom/android/keyguard/KeyguardWidgetFrame;)V
    .registers 4
    .param p1, "frame"    # Lcom/android/keyguard/KeyguardWidgetFrame;

    .prologue
    .line 282
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_e

    .line 283
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 287
    :cond_d
    :goto_d
    return-void

    .line 284
    :cond_e
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-nez v0, :cond_d

    .line 285
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_d
.end method

.method private updateWidgetFramesImportantForAccessibility()V
    .registers 4

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v2

    .line 275
    .local v2, "pageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v2, :cond_11

    .line 276
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 277
    .local v0, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/keyguard/KeyguardWidgetFrame;)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 279
    .end local v0    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_11
    return-void
.end method

.method private userActivity()V
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v0, :cond_e

    .line 291
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onUserActivityTimeoutChanged()V

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->userActivity()V

    .line 294
    :cond_e
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 521
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 522
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 531
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 532
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 551
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 552
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 541
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    return-void
.end method

.method public addWidget(Landroid/view/View;)V
    .registers 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 404
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 405
    return-void
.end method

.method public addWidget(Landroid/view/View;I)V
    .registers 15
    .param p1, "widget"    # Landroid/view/View;
    .param p2, "pageIndex"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v11, 0x0

    .line 463
    instance-of v7, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-nez v7, :cond_71

    .line 464
    new-instance v3, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 465
    .local v3, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 467
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x30

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 471
    invoke-virtual {p1, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 472
    invoke-virtual {v3, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    instance-of v7, p1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v7, :cond_33

    move-object v0, p1

    .line 476
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 477
    .local v0, "awhv":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 478
    .local v4, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_65

    .line 479
    invoke-virtual {v3, v11}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    .line 492
    .end local v0    # "awhv":Landroid/appwidget/AppWidgetHostView;
    .end local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_33
    :goto_33
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 494
    .local v6, "pageLp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 495
    iget-object v7, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWorkerHandler(Landroid/os/Handler;)V

    .line 497
    if-ne p2, v8, :cond_75

    .line 498
    invoke-virtual {p0, v3, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    :goto_45
    if-ne p1, v3, :cond_79

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v1

    .line 505
    .local v1, "content":Landroid/view/View;
    :goto_4b
    if-eqz v1, :cond_61

    .line 506
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v8, 0x7f060065

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, "contentDescription":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 511
    .end local v2    # "contentDescription":Ljava/lang/String;
    :cond_61
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/keyguard/KeyguardWidgetFrame;)V

    .line 512
    return-void

    .line 482
    .end local v1    # "content":Landroid/view/View;
    .end local v6    # "pageLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v0    # "awhv":Landroid/appwidget/AppWidgetHostView;
    .restart local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_65
    invoke-virtual {v3, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    .line 483
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCenterSmallWidgetsVertically:Z

    if-eqz v7, :cond_33

    .line 484
    const/16 v7, 0x11

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_33

    .end local v0    # "awhv":Landroid/appwidget/AppWidgetHostView;
    .end local v3    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_71
    move-object v3, p1

    .line 489
    check-cast v3, Lcom/android/keyguard/KeyguardWidgetFrame;

    .restart local v3    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    goto :goto_33

    .line 500
    .restart local v6    # "pageLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_75
    invoke-virtual {p0, v3, p2, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_45

    :cond_79
    move-object v1, p1

    .line 504
    goto :goto_4b
.end method

.method animateOutlinesAndSidePages(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 829
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V

    .line 830
    return-void
.end method

.method animateOutlinesAndSidePages(ZI)V
    .registers 16
    .param p1, "show"    # Z
    .param p2, "duration"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 841
    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_e

    .line 842
    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->cancel()V

    .line 843
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    .line 845
    :cond_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 847
    .local v4, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .local v2, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1e

    .line 850
    if-eqz p1, :cond_54

    const/16 p2, 0x64

    .line 854
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getNextPage()I

    move-result v5

    .line 855
    .local v5, "curPage":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_23
    if-ge v8, v4, :cond_62

    .line 857
    if-eqz p1, :cond_57

    .line 858
    iget v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v9, v8, v11}, Lcom/android/keyguard/KeyguardWidgetPager;->getAlphaForPage(IIZ)F

    move-result v6

    .line 864
    .local v6, "finalContentAlpha":F
    :goto_2d
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .line 866
    .local v3, "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    const-string v9, "contentAlpha"

    new-array v10, v11, [F

    aput v6, v10, v12

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 867
    .local v1, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v9, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v9, v12

    invoke-static {v3, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 868
    .local v0, "a":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    if-eqz p1, :cond_60

    iget v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v9, v8, v11}, Lcom/android/keyguard/KeyguardWidgetPager;->getOutlineAlphaForPage(IIZ)F

    move-result v7

    .line 871
    .local v7, "finalOutlineAlpha":F
    :goto_4e
    invoke-virtual {v3, p0, p1, v7, p2}, Lcom/android/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 855
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 850
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v5    # "curPage":I
    .end local v6    # "finalContentAlpha":F
    .end local v7    # "finalOutlineAlpha":F
    .end local v8    # "i":I
    :cond_54
    const/16 p2, 0x23f

    goto :goto_1e

    .line 859
    .restart local v5    # "curPage":I
    .restart local v8    # "i":I
    :cond_57
    if-nez p1, :cond_5e

    if-ne v8, v5, :cond_5e

    .line 860
    const/high16 v6, 0x3f800000

    .restart local v6    # "finalContentAlpha":F
    goto :goto_2d

    .line 862
    .end local v6    # "finalContentAlpha":F
    :cond_5e
    const/4 v6, 0x0

    .restart local v6    # "finalContentAlpha":F
    goto :goto_2d

    .line 870
    .restart local v0    # "a":Landroid/animation/ObjectAnimator;
    .restart local v1    # "alpha":Landroid/animation/PropertyValuesHolder;
    .restart local v3    # "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_60
    const/4 v7, 0x0

    goto :goto_4e

    .line 874
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v6    # "finalContentAlpha":F
    :cond_62
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    .line 875
    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 877
    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    int-to-long v10, p2

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 878
    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/keyguard/KeyguardWidgetPager$4;

    invoke-direct {v10, p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager$4;-><init>(Lcom/android/keyguard/KeyguardWidgetPager;Z)V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 901
    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 902
    return-void
.end method

.method boundByReorderablePages(Z[I)V
    .registers 7
    .param p1, "isReordering"    # Z
    .param p2, "range"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 722
    if-eqz p1, :cond_2e

    .line 724
    :goto_4
    aget v0, p2, v3

    aget v1, p2, v2

    if-lt v0, v1, :cond_19

    aget v0, p2, v3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 725
    aget v0, p2, v3

    add-int/lit8 v0, v0, -0x1

    aput v0, p2, v3

    goto :goto_4

    .line 727
    :cond_19
    :goto_19
    aget v0, p2, v2

    aget v1, p2, v3

    if-gt v0, v1, :cond_2e

    aget v0, p2, v2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 728
    aget v0, p2, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, v2

    goto :goto_19

    .line 731
    :cond_2e
    return-void
.end method

.method protected disablePageContentLayers()V
    .registers 4

    .prologue
    .line 602
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 603
    .local v0, "children":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 604
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->disableHardwareLayersForContent()V

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 606
    :cond_11
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    .line 301
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmPerformancePatchEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 302
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 314
    :cond_10
    :goto_10
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 304
    :cond_15
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsWakeupBlocked:Z

    if-nez v0, :cond_10

    .line 305
    const-string v0, "KeyguardWidgetPager"

    const-string v1, "call userActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsWakeupBlocked:Z

    .line 307
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mUnblockWakeupHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_10
.end method

.method protected enablePageContentLayers()V
    .registers 4

    .prologue
    .line 595
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 596
    .local v0, "children":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 597
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->enableHardwareLayersForContent()V

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 599
    :cond_11
    return-void
.end method

.method public getAlphaForPage(IIZ)F
    .registers 7
    .param p1, "screenCenter"    # I
    .param p2, "index"    # I
    .param p3, "showSidePages"    # Z

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000

    .line 640
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 641
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v2

    if-ne p2, v2, :cond_10

    .line 646
    :cond_f
    :goto_f
    return v0

    :cond_10
    move v0, v1

    .line 641
    goto :goto_f

    .line 643
    :cond_12
    if-nez p3, :cond_f

    .line 646
    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-eq p2, v2, :cond_f

    move v0, v1

    goto :goto_f
.end method

.method public getOutlineAlphaForPage(IIZ)F
    .registers 6
    .param p1, "screenCenter"    # I
    .param p2, "index"    # I
    .param p3, "showSidePages"    # Z

    .prologue
    .line 651
    if-eqz p3, :cond_b

    .line 652
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardWidgetPager;->getAlphaForPage(IIZ)F

    move-result v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    .line 655
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getUserActivityTimeout()J
    .registers 13

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 355
    iget v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    invoke-virtual {p0, v9}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 356
    .local v4, "page":Landroid/view/View;
    instance-of v9, v4, Landroid/view/ViewGroup;

    if-eqz v9, :cond_b4

    move-object v5, v4

    .line 357
    check-cast v5, Landroid/view/ViewGroup;

    .line 358
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 359
    .local v6, "view":Landroid/view/View;
    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->isDefaultWidget(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_9c

    .line 360
    const-string v9, "KeyguardWidgetPager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "view is not default widget : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "intelligent_sleep_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_98

    move v3, v7

    .line 363
    .local v3, "isSmartStayOn":Z
    :goto_40
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "psm_switch"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_9a

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "powersaving_switch"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_9a

    move v2, v7

    .line 366
    .local v2, "isPowerSavingOn":Z
    :goto_5d
    const-wide/16 v0, 0x2710

    .line 367
    .local v0, "displayTimeout":J
    if-ne v3, v7, :cond_67

    const-wide/16 v8, 0x1388

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .end local v0    # "displayTimeout":J
    :cond_67
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 369
    .restart local v0    # "displayTimeout":J
    if-ne v2, v7, :cond_77

    const-wide/16 v7, 0xbb8

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .end local v0    # "displayTimeout":J
    :cond_77
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 372
    .restart local v0    # "displayTimeout":J
    const-string v7, "KeyguardWidgetPager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUserActivityTimeout : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v0    # "displayTimeout":J
    .end local v2    # "isPowerSavingOn":Z
    .end local v3    # "isSmartStayOn":Z
    .end local v5    # "vg":Landroid/view/ViewGroup;
    .end local v6    # "view":Landroid/view/View;
    :goto_97
    return-wide v0

    .restart local v5    # "vg":Landroid/view/ViewGroup;
    .restart local v6    # "view":Landroid/view/View;
    :cond_98
    move v3, v8

    .line 361
    goto :goto_40

    .restart local v3    # "isSmartStayOn":Z
    :cond_9a
    move v2, v8

    .line 363
    goto :goto_5d

    .line 376
    .end local v3    # "isSmartStayOn":Z
    :cond_9c
    const-string v7, "KeyguardWidgetPager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "view is default widget : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v5    # "vg":Landroid/view/ViewGroup;
    .end local v6    # "view":Landroid/view/View;
    :cond_b4
    const-wide/16 v0, -0x1

    goto :goto_97
.end method

.method public getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 563
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    return-object v0
.end method

.method public getWidgetPageIndex(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 941
    instance-of v2, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_a

    .line 942
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 958
    :cond_9
    :goto_9
    return v1

    .line 945
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 946
    .local v0, "parentView":Landroid/view/View;
    if-eqz v0, :cond_9

    .line 947
    instance-of v2, v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_1d

    .line 948
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .end local v0    # "parentView":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    goto :goto_9

    .line 950
    .restart local v0    # "parentView":Landroid/view/View;
    :cond_1d
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "parentView":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 952
    .restart local v0    # "parentView":Landroid/view/View;
    if-eqz v0, :cond_9

    instance-of v2, v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_9

    .line 953
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .end local v0    # "parentView":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    goto :goto_9
.end method

.method public getWidgetToResetOnPageFadeOut()I
    .registers 2

    .prologue
    .line 837
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method public handleExternalCameraEvent(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1166
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->beginCameraEvent()V

    .line 1167
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 1168
    .local v0, "cameraPage":I
    const/4 v1, 0x0

    .line 1169
    .local v1, "endWarp":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v2

    if-nez v2, :cond_14

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCameraEventInProgress:Z

    if-eqz v2, :cond_23

    .line 1170
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_3a

    .line 1184
    :goto_1b
    :pswitch_1b
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1186
    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->stopPageWarp()V

    .line 1188
    :cond_23
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->endCameraEvent()V

    .line 1189
    return-void

    .line 1174
    :pswitch_27
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCameraEventInProgress:Z

    .line 1175
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 1176
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->startPageWarp(I)V

    goto :goto_1b

    .line 1180
    :pswitch_31
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCameraEventInProgress:Z

    .line 1181
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v1

    goto :goto_1b

    .line 1170
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_31
        :pswitch_1b
        :pswitch_31
    .end packed-switch
.end method

.method hideOutlinesAndSidePages()V
    .registers 2

    .prologue
    .line 755
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    .line 756
    return-void
.end method

.method public isAddPage(I)Z
    .registers 4

    .prologue
    .line 1074
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1075
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0022

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isCameraPage(I)Z
    .registers 4
    .param p1, "pageIndex"    # I

    .prologue
    .line 1079
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1080
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/android/keyguard/CameraWidgetFrame;

    if-nez v1, :cond_e

    instance-of v1, v0, Lcom/android/keyguard/sec/ShortCutWidgetFrame;

    if-eqz v1, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public isContextualPage(I)Z
    .registers 6
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 1146
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1162
    :cond_7
    :goto_7
    return v2

    .line 1150
    :cond_8
    if-ltz p1, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_7

    .line 1153
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1154
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_7

    instance-of v3, v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v3, :cond_7

    .line 1156
    instance-of v3, v1, Lcom/android/keyguard/sec/ShortCutWidgetFrame;

    if-nez v3, :cond_7

    move-object v0, v1

    .line 1159
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 1160
    .local v0, "kwf":Lcom/android/keyguard/KeyguardWidgetFrame;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isContextualWidget(I)Z

    move-result v2

    goto :goto_7
.end method

.method public isMusicWidgetAdded()Z
    .registers 2

    .prologue
    .line 1088
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsMusicWidgetAdded:Z

    return v0
.end method

.method protected isOverScrollChild(IF)Z
    .registers 9
    .param p1, "index"    # I
    .param p2, "scrollProgress"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 660
    iget v3, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    if-ltz v3, :cond_d

    iget v3, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    iget v4, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    if-le v3, v4, :cond_23

    :cond_d
    move v0, v1

    .line 661
    .local v0, "isInOverscroll":Z
    :goto_e
    if-eqz v0, :cond_25

    if-nez p1, :cond_16

    cmpg-float v3, p2, v5

    if-ltz v3, :cond_22

    :cond_16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_25

    cmpl-float v3, p2, v5

    if-lez v3, :cond_25

    :cond_22
    :goto_22
    return v1

    .end local v0    # "isInOverscroll":Z
    :cond_23
    move v0, v2

    .line 660
    goto :goto_e

    .restart local v0    # "isInOverscroll":Z
    :cond_25
    move v1, v2

    .line 661
    goto :goto_22
.end method

.method public isWidgetPage(I)Z
    .registers 6
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 702
    if-ltz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt p1, v3, :cond_a

    .line 714
    :cond_9
    :goto_9
    return v2

    .line 705
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 706
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_9

    instance-of v3, v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v3, :cond_9

    .line 708
    instance-of v3, v1, Lcom/android/keyguard/sec/ShortCutWidgetFrame;

    if-nez v3, :cond_9

    move-object v0, v1

    .line 711
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 712
    .local v0, "kwf":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    if-eqz v3, :cond_9

    const/4 v2, 0x1

    goto :goto_9
.end method

.method public onAddView(Landroid/view/View;I)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 434
    move-object v2, p1

    check-cast v2, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 435
    .local v0, "appWidgetId":I
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    array-length v2, v2

    new-array v1, v2, [I

    .line 436
    .local v1, "pagesRange":[I
    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    .line 437
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->boundByReorderablePages(Z[I)V

    .line 438
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v2, :cond_1c

    .line 439
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v2, p1}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onAddView(Landroid/view/View;)V

    .line 443
    :cond_1c
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v2, :cond_25

    .line 444
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardViewStateManager;->onAddView(Landroid/view/View;)V

    .line 449
    :cond_25
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/keyguard/KeyguardWidgetPager$3;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/android/keyguard/KeyguardWidgetPager$3;-><init>(Lcom/android/keyguard/KeyguardWidgetPager;II[I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 455
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 788
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 790
    return-void
.end method

.method public onBouncerStateChanged(Z)V
    .registers 2
    .param p1, "bouncerActive"    # Z

    .prologue
    .line 972
    if-eqz p1, :cond_6

    .line 973
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomOutToBouncer()V

    .line 977
    :goto_5
    return-void

    .line 975
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomInFromBouncer()V

    goto :goto_5
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/keyguard/PagedView;->onDetachedFromWindow()V

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 165
    return-void
.end method

.method protected onEndReordering()V
    .registers 1

    .prologue
    .line 746
    invoke-super {p0}, Lcom/android/keyguard/PagedView;->onEndReordering()V

    .line 747
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    .line 748
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 340
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsEasyUxOn:Z

    if-nez v1, :cond_1d

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsZoomOutState:Z

    if-nez v1, :cond_1d

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_17
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->hasContextualWidget()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 342
    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_2a
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 907
    iget-object v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardViewStateManager;->isChallengeOverlapping()Z

    move-result v3

    if-eqz v3, :cond_1e

    move v0, v2

    .line 910
    .local v0, "isChallengeOverlapping":Z
    :goto_13
    if-nez v0, :cond_20

    iget-object v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 920
    :cond_1d
    :goto_1d
    return v1

    .end local v0    # "isChallengeOverlapping":Z
    :cond_1e
    move v0, v1

    .line 907
    goto :goto_13

    .line 914
    .restart local v0    # "isChallengeOverlapping":Z
    :cond_20
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetEnabled()Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsEasyUxOn:Z

    if-nez v3, :cond_1d

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsMultipleLockOn:Z

    if-eqz v3, :cond_1d

    .line 917
    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->startReordering()Z

    move-result v3

    if-eqz v3, :cond_1d

    move v1, v2

    .line 918
    goto :goto_1d
.end method

.method protected onMeasure(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x1

    .line 793
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastWidthMeasureSpec:I

    .line 794
    iput p2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastHeightMeasureSpec:I

    .line 796
    const/4 v4, -0x1

    .line 797
    .local v4, "maxChallengeTop":I
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 798
    .local v5, "parent":Landroid/view/View;
    const/4 v0, 0x0

    .line 802
    .local v0, "challengeShowing":Z
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v8, :cond_4c

    .line 803
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 804
    .local v6, "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-virtual {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->getMaxChallengeTop()I

    move-result v7

    .line 808
    .local v7, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int v4, v7, v8

    .line 810
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int/2addr v4, v8

    .line 811
    invoke-virtual {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    .line 813
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 814
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    if-ge v3, v1, :cond_4c

    .line 815
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    .line 816
    .local v2, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setMaxChallengeTop(I)V

    .line 819
    if-eqz v0, :cond_49

    iget v8, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-ne v3, v8, :cond_49

    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    if-nez v8, :cond_49

    .line 820
    invoke-virtual {v2, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    .line 814
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 824
    .end local v1    # "count":I
    .end local v2    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v3    # "i":I
    .end local v6    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    .end local v7    # "top":I
    :cond_4c
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/PagedView;->onMeasure(II)V

    .line 825
    iput-boolean v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 826
    return-void
.end method

.method protected onPageBeginMoving()V
    .registers 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_9

    .line 573
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageBeginMoving()V

    .line 575
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 576
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    .line 578
    :cond_13
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 579
    return-void
.end method

.method public onPageBeginWarp()V
    .registers 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageBeginWarp()V

    .line 256
    return-void
.end method

.method protected onPageEndMoving()V
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_9

    .line 584
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageEndMoving()V

    .line 589
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 590
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    .line 592
    :cond_13
    return-void
.end method

.method public onPageEndWarp()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getNextPage()I

    move-result v3

    if-ne v2, v3, :cond_15

    move v0, v1

    .line 262
    .local v0, "duration":I
    :goto_c
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V

    .line 263
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageEndWarp()V

    .line 264
    return-void

    .line 261
    .end local v0    # "duration":I
    :cond_15
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .registers 14
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 191
    const/4 v5, 0x0

    .line 192
    .local v5, "showingClock":Z
    const/4 v1, 0x0

    .line 194
    .local v1, "isSupportMagazine":Z
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_14

    move-object v6, p1

    .line 195
    check-cast v6, Landroid/view/ViewGroup;

    .line 196
    .local v6, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Lcom/android/keyguard/KeyguardStatusView;

    if-eqz v7, :cond_14

    .line 197
    const/4 v5, 0x1

    .line 201
    .end local v6    # "vg":Landroid/view/ViewGroup;
    :cond_14
    if-eqz p1, :cond_1e

    invoke-static {p1}, Lcom/android/keyguard/KeyguardWidgetPager;->findClockInHierarchy(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1e

    .line 203
    const/4 v5, 0x1

    .line 206
    :cond_1e
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->hasContextualWidget()Z

    move-result v7

    if-nez v7, :cond_36

    :cond_30
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v7

    if-eqz v7, :cond_37

    .line 208
    :cond_36
    const/4 v5, 0x0

    .line 211
    :cond_37
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 212
    const/4 v1, 0x1

    .line 216
    :cond_3e
    if-nez v1, :cond_4c

    .line 217
    if-eqz v5, :cond_9a

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v7

    const/high16 v8, 0x800000

    or-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 225
    :cond_4c
    :goto_4c
    iget v7, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    if-eq v7, p2, :cond_90

    .line 226
    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    .line 227
    .local v3, "oldPageIndex":I
    iput p2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    .line 228
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 229
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v4

    .line 230
    .local v4, "oldWidgetPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v4, :cond_60

    .line 231
    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    .line 233
    :cond_60
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    .line 234
    .local v2, "newWidgetPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v2, :cond_6f

    .line 235
    invoke-virtual {v2, v10}, Lcom/android/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    .line 236
    invoke-virtual {v2, v10}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 237
    invoke-virtual {v2}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 239
    :cond_6f
    iget-object v7, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v7, :cond_90

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_90

    .line 240
    const/16 v7, 0x1000

    invoke-static {v7}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 242
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 243
    invoke-virtual {p0, v0}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 244
    iget-object v7, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v7, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 247
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "newWidgetPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v3    # "oldPageIndex":I
    .end local v4    # "oldWidgetPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_90
    iget-object v7, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v7, :cond_99

    .line 248
    iget-object v7, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v7, p1, p2}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageSwitched(Landroid/view/View;I)V

    .line 250
    :cond_99
    return-void

    .line 220
    :cond_9a
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v7

    const v8, -0x800001

    and-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_4c
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .registers 5
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v1, :cond_9

    .line 178
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageSwitching(Landroid/view/View;I)V

    .line 181
    :cond_9
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    if-eq v1, p2, :cond_19

    .line 182
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 183
    .local v0, "currentWidgetPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_19

    .line 184
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    .line 187
    .end local v0    # "currentWidgetPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_19
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "deletePermanently"    # Z

    .prologue
    .line 408
    move-object v1, p1

    check-cast v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 409
    .local v0, "appWidgetId":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v1, :cond_10

    .line 410
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v1, p1, p2}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveView(Landroid/view/View;Z)V

    .line 414
    :cond_10
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v1, :cond_19

    .line 415
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardViewStateManager;->onRemoveView(Landroid/view/View;)V

    .line 418
    :cond_19
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/KeyguardWidgetPager$2;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager$2;-><init>(Lcom/android/keyguard/KeyguardWidgetPager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v0, :cond_9

    .line 429
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveViewAnimationCompleted()V

    .line 431
    :cond_9
    return-void
.end method

.method protected onStartReordering()V
    .registers 1

    .prologue
    .line 739
    invoke-super {p0}, Lcom/android/keyguard/PagedView;->onStartReordering()V

    .line 740
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->enablePageContentLayers()V

    .line 741
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->reorderStarting()V

    .line 742
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 333
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsEasyUxOn:Z

    if-nez v1, :cond_1d

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsZoomOutState:Z

    if-nez v1, :cond_1d

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_17
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->hasContextualWidget()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 335
    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_2a
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showPagingFeedback()V

    .line 568
    return-void
.end method

.method protected overScroll(F)V
    .registers 2
    .param p1, "amount"    # F

    .prologue
    .line 629
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->acceleratedOverScroll(F)V

    .line 630
    return-void
.end method

.method public removeWidget(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 924
    instance-of v0, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v0, :cond_8

    .line 925
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 938
    :goto_7
    return-void

    .line 929
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v0

    .line 930
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 931
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 932
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 933
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_7

    .line 935
    :cond_1c
    const-string v0, "KeyguardWidgetPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeWidget() can\'t find:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method protected reorderStarting()V
    .registers 1

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    .line 735
    return-void
.end method

.method protected screenScrolled(I)V
    .registers 12
    .param p1, "screenCenter"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 667
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    .line 668
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->updatePageAlphaValues(I)V

    .line 669
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_74

    .line 670
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v5

    .line 671
    .local v5, "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    iget-object v6, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-ne v5, v6, :cond_19

    .line 669
    :cond_16
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 672
    :cond_19
    if-eqz v5, :cond_16

    .line 673
    invoke-virtual {p0, p1, v5, v1}, Lcom/android/keyguard/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 675
    .local v4, "scrollProgress":F
    iget v6, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    sget v8, Lcom/android/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    mul-float/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/view/View;->setCameraDistance(F)V

    .line 677
    invoke-virtual {p0, v1, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->isOverScrollChild(IF)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 678
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v2, v6

    .line 679
    .local v2, "pivotX":F
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    .line 680
    .local v3, "pivotY":F
    invoke-virtual {v5, v2}, Landroid/view/View;->setPivotX(F)V

    .line 681
    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotY(F)V

    .line 682
    sget v6, Lcom/android/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    neg-float v6, v6

    mul-float/2addr v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setRotationY(F)V

    .line 683
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v6, v4, v9

    if-gez v6, :cond_61

    const/4 v6, 0x1

    :goto_51
    invoke-virtual {v5, v8, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    .line 689
    .end local v2    # "pivotX":F
    .end local v3    # "pivotY":F
    :goto_54
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 692
    .local v0, "alpha":F
    cmpl-float v6, v0, v9

    if-nez v6, :cond_6a

    .line 693
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16

    .end local v0    # "alpha":F
    .restart local v2    # "pivotX":F
    .restart local v3    # "pivotY":F
    :cond_61
    move v6, v7

    .line 683
    goto :goto_51

    .line 685
    .end local v2    # "pivotX":F
    .end local v3    # "pivotY":F
    :cond_63
    invoke-virtual {v5, v9}, Landroid/view/View;->setRotationY(F)V

    .line 686
    invoke-virtual {v5, v9, v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    goto :goto_54

    .line 694
    .restart local v0    # "alpha":F
    :cond_6a
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_16

    .line 695
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16

    .line 699
    .end local v0    # "alpha":F
    .end local v4    # "scrollProgress":F
    .end local v5    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_74
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .param p1, "eventType"    # I

    .prologue
    .line 268
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 269
    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 271
    :cond_d
    return-void
.end method

.method setAddWidgetEnabled(Z)V
    .registers 4

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    .line 1049
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;I)V

    .line 1052
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastWidthMeasureSpec:I

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1054
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 1055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    .line 1063
    :cond_1d
    :goto_1d
    return-void

    .line 1056
    :cond_1e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    if-nez v0, :cond_1d

    if-nez p1, :cond_1d

    .line 1057
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1058
    if-eqz v0, :cond_1d

    .line 1059
    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    .line 1060
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1d
.end method

.method setBouncerAnimationDuration(I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    .line 980
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    .line 981
    return-void
.end method

.method public setCallbacks(Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    .line 393
    return-void
.end method

.method setCurrentPage(I)V
    .registers 3
    .param p1, "currentPage"    # I

    .prologue
    .line 781
    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->setCurrentPage(I)V

    .line 782
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateChildrenContentAlpha(F)V

    .line 783
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    .line 784
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "l"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 173
    return-void
.end method

.method public setMusicWidgetAdded(Z)V
    .registers 2
    .param p1, "added"    # Z

    .prologue
    .line 1084
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsMusicWidgetAdded:Z

    .line 1085
    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .registers 4
    .param p1, "viewIndex"    # I
    .param p2, "isHovering"    # Z

    .prologue
    .line 965
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 966
    .local v0, "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setIsHoveringOverDeleteDropTarget(Z)V

    .line 967
    return-void
.end method

.method public setViewStateManager(Lcom/android/keyguard/KeyguardViewStateManager;)V
    .registers 2
    .param p1, "viewStateManager"    # Lcom/android/keyguard/KeyguardViewStateManager;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    .line 169
    return-void
.end method

.method public setWidgetToResetOnPageFadeOut(I)V
    .registers 2
    .param p1, "widget"    # I

    .prologue
    .line 833
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    .line 834
    return-void
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .registers 3
    .param p1, "childIndex"    # I

    .prologue
    .line 1093
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method showOutlinesAndSidePages()V
    .registers 2

    .prologue
    .line 751
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    .line 752
    return-void
.end method

.method public showPagingFeedback()V
    .registers 1

    .prologue
    .line 352
    return-void
.end method

.method updateChildrenContentAlpha(F)V
    .registers 7
    .param p1, "sidePageAlpha"    # F

    .prologue
    const/4 v4, 0x0

    .line 759
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 760
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_22

    .line 761
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 762
    .local v0, "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    iget v3, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-eq v2, v3, :cond_19

    .line 764
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 766
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    .line 760
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 768
    :cond_19
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 769
    const/high16 v3, 0x3f800000

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    goto :goto_16

    .line 772
    .end local v0    # "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_22
    return-void
.end method

.method zoomInFromBouncer()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    .line 985
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1009
    :cond_a
    :goto_a
    return-void

    .line 988
    :cond_b
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsZoomOutState:Z

    .line 990
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 991
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 993
    :cond_1e
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 994
    if-eqz v0, :cond_a

    .line 997
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    cmpg-float v1, v1, v6

    if-ltz v1, :cond_38

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpg-float v1, v1, v6

    if-gez v1, :cond_78

    .line 998
    :cond_38
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 999
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1002
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1003
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1004
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1006
    :cond_78
    instance-of v1, v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v1, :cond_a

    .line 1007
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->onBouncerShowing(Z)V

    goto :goto_a
.end method

.method zoomOutToBouncer()V
    .registers 9

    .prologue
    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1013
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1045
    :cond_b
    :goto_b
    return-void

    .line 1016
    :cond_c
    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mIsZoomOutState:Z

    .line 1018
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1019
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1021
    :cond_1f
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    .line 1022
    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1023
    if-eqz v0, :cond_b

    .line 1026
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1027
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1030
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 1031
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1033
    :cond_3f
    if-eqz v0, :cond_95

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_95

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_95

    .line 1034
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 1035
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const-string v3, "scaleX"

    new-array v4, v6, [F

    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v5, v4, v7

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "scaleY"

    new-array v4, v6, [F

    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v5, v4, v7

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1038
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1039
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1040
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1042
    :cond_95
    instance-of v1, v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v1, :cond_b

    .line 1043
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->onBouncerShowing(Z)V

    goto/16 :goto_b
.end method
