.class public Lcom/android/keyguard/sec/SecCameraShortcut;
.super Landroid/widget/FrameLayout;
.source "SecCameraShortcut.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCameraButton:Landroid/widget/ImageView;

.field private mCurrentOrientation:F

.field private mDistance:D

.field private mFirstBorder:I

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsFirst:Z

.field private mIsLandscapeAvailable:Z

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mSecCameraArrow:Landroid/widget/ImageView;

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F

.field private mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, "SecCameraShortcut"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-string v0, "SecCameraShortcut"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const-string v0, "SecCameraShortcut"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecCameraShortcut;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecCameraShortcut;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecCameraShortcut;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecCameraShortcut;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecCameraShortcut;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecCameraShortcut;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecCameraShortcut;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecCameraShortcut;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z

    return v0
.end method

.method private getUnlockDelay()J
    .registers 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    if-eqz v0, :cond_12

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->getUnlockDelay()J

    move-result-wide v0

    .line 274
    :goto_11
    return-wide v0

    .line 273
    :cond_12
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v0

    goto :goto_11
.end method

.method private handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    if-eqz v0, :cond_11

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 266
    :goto_10
    return-void

    .line 263
    :cond_11
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_10
.end method

.method private handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    if-eqz v0, :cond_16

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->reset()V

    .line 287
    :goto_15
    return-void

    .line 284
    :cond_16
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_15
.end method

.method private isLandscapeLayoutAvailable()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 343
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->shouldEnableScreenRotation()Z

    move-result v0

    .line 344
    .local v0, "enableScreenRotation":Z
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1a

    move v1, v2

    .line 346
    .local v1, "isAutoRotation":Z
    :goto_15
    if-eqz v0, :cond_1c

    if-eqz v1, :cond_1c

    .line 349
    :goto_19
    return v2

    .end local v1    # "isAutoRotation":Z
    :cond_1a
    move v1, v3

    .line 344
    goto :goto_15

    .restart local v1    # "isAutoRotation":Z
    :cond_1c
    move v2, v3

    .line 349
    goto :goto_19
.end method

.method private shouldEnableScreenRotation()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 337
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 338
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_17

    const/high16 v2, 0x7f080000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 354
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 355
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->isLandscapeLayoutAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z

    .line 357
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_18

    .line 358
    new-instance v0, Lcom/android/keyguard/sec/SecCameraShortcut$3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut$3;-><init>(Lcom/android/keyguard/sec/SecCameraShortcut;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 376
    :cond_18
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 379
    :cond_25
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 383
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_f

    .line 385
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 388
    :cond_f
    return-void
.end method

.method protected onFinishInflate()V
    .registers 13

    .prologue
    const/4 v11, -0x2

    const/16 v10, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 74
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 76
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mPowerManager:Landroid/os/PowerManager;

    .line 78
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 79
    const v4, 0x7f0b0027

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    .line 80
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c0033

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mFirstBorder:I

    .line 81
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c0034

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecondBorder:I

    .line 83
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "set_shortcuts_mode"

    invoke-static {v4, v7, v5, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 85
    .local v3, "shortcutSetting":I
    iget-object v4, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shortcutSetting:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-ne v3, v5, :cond_133

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v4

    if-nez v4, :cond_133

    .line 87
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :goto_7c
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 93
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_92

    .line 94
    invoke-virtual {p0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :cond_92
    iget-object v4, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v9, 0x7f060068

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v9, 0x7f0600c3

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "kids_home_mode"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_138

    move v1, v5

    .line 101
    .local v1, "isKidsMode":Z
    :goto_cf
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "emergency_mode"

    invoke-static {v4, v7, v6, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_13a

    move v0, v5

    .line 104
    .local v0, "isEmergencyMode":Z
    :goto_de
    iget-object v4, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isKidsMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v4, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmergencyMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-nez v1, :cond_112

    if-eqz v0, :cond_115

    .line 108
    :cond_112
    invoke-virtual {p0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_115
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v4

    if-eqz v4, :cond_132

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v4

    if-eqz v4, :cond_132

    .line 111
    invoke-static {v6}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINRequestWithSlot(I)Z

    move-result v4

    if-eqz v4, :cond_132

    invoke-static {v5}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINRequestWithSlot(I)Z

    move-result v4

    if-eqz v4, :cond_132

    .line 112
    iget-object v4, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    :cond_132
    return-void

    .line 89
    .end local v0    # "isEmergencyMode":Z
    .end local v1    # "isKidsMode":Z
    .end local v2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_133
    invoke-virtual {p0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7c

    .restart local v2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_138
    move v1, v6

    .line 100
    goto :goto_cf

    .restart local v1    # "isKidsMode":Z
    :cond_13a
    move v0, v6

    .line 101
    goto :goto_de
.end method

.method public onScreenTurnedOff()V
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_10

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 334
    :cond_10
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_10

    .line 327
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 328
    :cond_10
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 27
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "touched"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    move/from16 v19, v0

    if-nez v19, :cond_26

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    packed-switch v19, :pswitch_data_28a

    .line 129
    :goto_1a
    :pswitch_1a
    const/16 v19, 0x1

    .line 255
    :goto_1c
    return v19

    .line 124
    :pswitch_1d
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    goto :goto_1a

    .line 132
    :cond_26
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 133
    .local v15, "touchedEventX":F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    .line 135
    .local v16, "touchedEventY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 136
    .local v4, "action":I
    packed-switch v4, :pswitch_data_294

    .line 253
    :cond_41
    :goto_41
    const-string v19, "ShortcutWidget"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SecCameraShortcut;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 255
    const/16 v19, 0x1

    goto :goto_1c

    .line 139
    :pswitch_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "action down"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStartX:F

    .line 143
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/SecCameraShortcut;->mStartY:F

    .line 144
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f020036

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecCameraArrow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_41

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v19

    if-eqz v19, :cond_41

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecCameraArrow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_41

    .line 153
    :pswitch_99
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f02000b

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecCameraArrow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_41

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v19

    if-eqz v19, :cond_41

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecCameraArrow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_41

    .line 160
    :pswitch_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "action up/cancel mDistance: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mFirstBorder:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-wide/from16 v21, v0

    cmpg-double v19, v19, v21

    if-gez v19, :cond_114

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecondBorder:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpg-double v19, v19, v21

    if-ltz v19, :cond_129

    :cond_114
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecondBorder:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpl-double v19, v19, v21

    if-ltz v19, :cond_148

    .line 165
    :cond_129
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SecCameraShortcut;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 166
    new-instance v19, Lcom/android/keyguard/sec/SecCameraShortcut$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut$1;-><init>(Lcom/android/keyguard/sec/SecCameraShortcut;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->getUnlockDelay()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    :cond_148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f02000b

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecCameraArrow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_16d

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v19

    if-eqz v19, :cond_16d

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecCameraArrow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    :cond_16d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_41

    goto/16 :goto_41

    .line 195
    :pswitch_177
    const/4 v5, 0x0

    .line 196
    .local v5, "diffX":I
    const/4 v6, 0x0

    .line 201
    .local v6, "diffY":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v17, v19, 0x2

    .line 202
    .local v17, "viewCenterX":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v18, v19, 0x2

    .line 203
    .local v18, "viewCenterY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v5, v0

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v6, v0

    .line 206
    int-to-double v0, v5

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000000000000000L

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    int-to-double v0, v6

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000000000000000L

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    add-double v9, v19, v21

    .line 207
    .local v9, "distance_square":D
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 208
    .local v7, "distance":D
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    mul-int/lit8 v19, v19, 0x3

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-double v13, v0

    .line 209
    .local v13, "threshold":D
    div-double v11, v7, v13

    .line 211
    .local v11, "mDistanceRatio":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStartX:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    move/from16 v0, v19

    float-to-int v5, v0

    .line 212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStartY:F

    move/from16 v19, v0

    sub-float v19, v16, v19

    move/from16 v0, v19

    float-to-int v6, v0

    .line 214
    int-to-double v0, v5

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000000000000000L

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    int-to-double v0, v6

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000000000000000L

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    add-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ACTION_MOVE mDistance: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecondBorder:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    cmpl-double v19, v19, v21

    if-ltz v19, :cond_258

    .line 217
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    .line 218
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SecCameraShortcut;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 219
    new-instance v19, Lcom/android/keyguard/sec/SecCameraShortcut$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut$2;-><init>(Lcom/android/keyguard/sec/SecCameraShortcut;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->getUnlockDelay()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    :cond_258
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    move-wide/from16 v21, v0

    cmpg-double v19, v19, v21

    if-gez v19, :cond_27b

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f020037

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_41

    .line 242
    :cond_27b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f020036

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_41

    .line 121
    nop

    :pswitch_data_28a
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_1d
    .end packed-switch

    .line 136
    :pswitch_data_294
    .packed-switch 0x0
        :pswitch_56
        :pswitch_c8
        :pswitch_177
        :pswitch_99
    .end packed-switch
.end method

.method protected rotateIcon(F)V
    .registers 9
    .param p1, "currentOrientation"    # F

    .prologue
    const/high16 v6, 0x43870000

    const/high16 v4, 0x3f000000

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 307
    iget v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 308
    iget v1, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    .line 309
    .local v1, "fromDegrees":F
    move v2, p1

    .line 310
    .local v2, "toDegrees":F
    cmpl-float v0, v1, v5

    if-nez v0, :cond_3e

    cmpl-float v0, v2, v6

    if-nez v0, :cond_3e

    .line 311
    const/high16 v1, 0x43b40000

    .line 315
    :cond_1f
    :goto_1f
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 318
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 320
    iput p1, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    .line 322
    .end local v1    # "fromDegrees":F
    .end local v2    # "toDegrees":F
    :cond_3d
    return-void

    .line 312
    .restart local v1    # "fromDegrees":F
    .restart local v2    # "toDegrees":F
    :cond_3e
    cmpl-float v0, v1, v6

    if-nez v0, :cond_1f

    cmpl-float v0, v2, v5

    if-nez v0, :cond_1f

    .line 313
    const/high16 v2, 0x43b40000

    goto :goto_1f
.end method

.method public setAdditionalUnlockView(Lcom/android/keyguard/sec/KeyguardEffectViewNone;)V
    .registers 2
    .param p1, "unlockView"    # Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    .line 304
    return-void
.end method

.method public setCameraArrowAnimView(Landroid/widget/ImageView;)V
    .registers 2
    .param p1, "cameraArrow"    # Landroid/widget/ImageView;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecCameraArrow:Landroid/widget/ImageView;

    .line 392
    return-void
.end method

.method public setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 290
    if-nez p1, :cond_c

    .line 291
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "setCallback(): null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_9
    iput-object p1, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 296
    return-void

    .line 293
    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "setCallback(): not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
