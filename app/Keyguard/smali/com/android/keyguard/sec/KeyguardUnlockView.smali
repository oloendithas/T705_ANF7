.class public Lcom/android/keyguard/sec/KeyguardUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;,
        Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private isIgnoreTouch:Z

.field private mAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mBouncerFrameView:Landroid/view/View;

.field private mBouncerHelpText:Landroid/widget/TextView;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mClearCoverOpened:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContextualEventManagerCallback:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

.field private mDefaultHelpText:Ljava/lang/String;

.field private mDistance:D

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeView:Landroid/view/View;

.field private mFirstBorder:I

.field private final mHandler:Landroid/os/Handler;

.field private mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

.field private mHelpTextView:Landroid/widget/TextView;

.field private mIsAirViewEnabled:Z

.field private mIsBouncing:Z

.field private mIsFoundBigUnlockFrame:Z

.field private mIsHelpTextEnabled:Z

.field private mIsKeyguardDismissing:Z

.field private mIsTouchExplorationEnabled:Z

.field private mIsUnlockStarted:Z

.field private mIsVoiceUnlockFailed:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResumedTimeMillis:J

.field private mSecCameraArrow:Landroid/widget/ImageView;

.field private mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

.field private mSecondBorder:I

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

.field private mStartX:F

.field private mStartY:F

.field private mTextChageHandler:Landroid/os/Handler;

.field private mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mUsingWakeUpCommand:Z

.field private mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

.field private mVoiceHelpTextView:Landroid/widget/TextView;

.field private mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v6, 0x3f800000

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 259
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    .line 108
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsFoundBigUnlockFrame:Z

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    .line 116
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 118
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 119
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 127
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    .line 128
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsKeyguardDismissing:Z

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    .line 132
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    .line 133
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    .line 137
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    .line 140
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 141
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsAirViewEnabled:Z

    .line 142
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    .line 145
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsUnlockStarted:Z

    .line 147
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    .line 150
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mTextChageHandler:Landroid/os/Handler;

    .line 152
    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$1;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContextualEventManagerCallback:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    .line 175
    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$2;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    .line 216
    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$3;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$4;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    .line 944
    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$11;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$11;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    .line 260
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 261
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAudioManager:Landroid/media/AudioManager;

    .line 263
    invoke-virtual {p0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 264
    invoke-virtual {p0, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFirstBorder:I

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecondBorder:I

    .line 270
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-nez v1, :cond_bf

    .line 271
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "touch_exploration_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 274
    .local v0, "exploreByTouchMode":I
    if-ne v0, v5, :cond_f5

    .line 275
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 276
    const-string v1, "SecuritySelectorView"

    const-string v2, "explore by touch mode on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "exploreByTouchMode":I
    :cond_bf
    :goto_bf
    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$5;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/KeyguardUnlockView$5;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContentObserver:Landroid/database/ContentObserver;

    .line 295
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "touch_exploration_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 298
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 299
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 301
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 302
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 304
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->checkWakeUpCommandCondition()V

    .line 305
    return-void

    .line 278
    .restart local v0    # "exploreByTouchMode":I
    :cond_f5
    const-string v1, "SecuritySelectorView"

    const-string v2, "explore by touch mode off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->dismissKeyguard()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/sec/KeyguardUnlockView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->handleChangeTouchExploration()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardUnlockView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardUnlockView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/KeyguardUnlockView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->refreshDefaultHelpText()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardUnlockView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/KeyguardUnlockView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/view/animation/AlphaAnimation;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mTextChageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method private checkWakeUpCommandCondition()V
    .registers 7

    .prologue
    const/4 v5, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 832
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wake_up_lock_screen"

    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_7e

    move v0, v2

    .line 835
    :goto_12
    if-eqz v0, :cond_28

    .line 837
    :try_start_14
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.vlingo.midas"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 839
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_80

    .line 840
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_28} :catch_84

    .line 849
    :cond_28
    :goto_28
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v0, :cond_3f

    .line 852
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_mode_switch"

    invoke-static {v0, v3, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_8f

    move v0, v1

    .line 855
    :goto_3b
    if-eqz v0, :cond_3f

    .line 856
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    .line 859
    :cond_3f
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v0, :cond_5b

    .line 860
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "enabled_accessibility_services"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 863
    if-eqz v0, :cond_5b

    .line 864
    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 865
    if-eqz v0, :cond_5b

    .line 866
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    .line 870
    :cond_5b
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v0, :cond_7d

    .line 871
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "driving_mode_on"

    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 872
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 875
    if-ne v0, v2, :cond_7d

    if-ne v3, v2, :cond_7d

    .line 876
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    .line 878
    :cond_7d
    return-void

    :cond_7e
    move v0, v1

    .line 832
    goto :goto_12

    .line 842
    :cond_80
    const/4 v0, 0x0

    :try_start_81
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z
    :try_end_83
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_81 .. :try_end_83} :catch_84

    goto :goto_28

    .line 843
    :catch_84
    move-exception v0

    .line 844
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    .line 845
    const-string v0, "SecuritySelectorView"

    const-string v3, "package not found"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_8f
    move v0, v2

    .line 852
    goto :goto_3b
.end method

.method private dismissKeyguard()V
    .registers 3

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsKeyguardDismissing:Z

    if-nez v0, :cond_d

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsKeyguardDismissing:Z

    .line 590
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 592
    :cond_d
    return-void
.end method

.method private findBigUnlockView()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 881
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsFoundBigUnlockFrame:Z

    if-ne v0, v2, :cond_6

    .line 894
    :goto_5
    return-void

    .line 884
    :cond_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 885
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 886
    if-eqz v0, :cond_2b

    .line 887
    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    .line 888
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    const v1, 0x7f020191

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 889
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 893
    :cond_2b
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsFoundBigUnlockFrame:Z

    goto :goto_5
.end method

.method private handleChangeTouchExploration()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 811
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "touch_exploration_enabled"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 814
    if-ne v0, v4, :cond_46

    .line 815
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 816
    const-string v0, "SecuritySelectorView"

    const-string v1, "[handleChangeTouchExploration]explore by touch mode on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :goto_1a
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->checkWakeUpCommandCondition()V

    .line 823
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->refreshDefaultHelpText()V

    .line 824
    const-string v0, "SecuritySelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleChangeTouchExploration] mDefaultHelpText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_45

    .line 827
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    :cond_45
    return-void

    .line 818
    :cond_46
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 819
    const-string v0, "SecuritySelectorView"

    const-string v1, "[handleChangeTouchExploration]explore by touch mode off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private pokeWakelockWithTimeCheck()V
    .registers 12

    .prologue
    const-wide/16 v9, 0x7530

    const-wide/16 v7, 0x4e20

    .line 662
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 663
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    sub-long v0, v2, v4

    .line 664
    .local v0, "diff":J
    const-string v4, "SecuritySelectorView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck time diffence = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    cmp-long v4, v0, v7

    if-gtz v4, :cond_37

    .line 667
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 668
    const-string v4, "SecuritySelectorView"

    const-string v5, "pokeWakelockWithTimeCheck mCallback.pokeWakelock(AWAKE_INTERVAL_DEFAULT_MS)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :goto_36
    return-void

    .line 669
    :cond_37
    cmp-long v4, v0, v7

    if-lez v4, :cond_69

    cmp-long v4, v0, v9

    if-gez v4, :cond_69

    .line 670
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    long-to-int v5, v0

    rsub-int v5, v5, 0x7530

    int-to-long v5, v5

    invoke-interface {v4, v5, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 671
    const-string v4, "SecuritySelectorView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck mCallback.pokeWakelock("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v9, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 674
    :cond_69
    const-string v4, "SecuritySelectorView"

    const-string v5, "pokeWakelockWithTimeCheck do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private refreshDefaultHelpText()V
    .registers 3

    .prologue
    const v1, 0x7f0600c4

    .line 897
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v0, :cond_14

    .line 898
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    .line 905
    :goto_13
    return-void

    .line 900
    :cond_14
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_25

    .line 901
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_13

    .line 903
    :cond_25
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_13
.end method


# virtual methods
.method doTransition(Landroid/view/View;F)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "to"    # F

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 729
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 731
    :cond_9
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 732
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 733
    return-void
.end method

.method public hideBouncer(I)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 774
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    .line 775
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    .line 776
    const-string v0, "SecuritySelectorView"

    const-string v3, "hideBouncer mBouncerHelpText != null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 780
    :cond_1d
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v3, v4, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 781
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "set_shortcuts_mode"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 782
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v4

    .line 783
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1040595

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 784
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "airplane_mode_on"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8f

    move v0, v1

    .line 787
    :goto_57
    if-eqz v0, :cond_91

    move v0, v1

    .line 789
    :goto_5a
    if-eqz v4, :cond_69

    .line 790
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_69

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    move v0, v1

    .line 795
    :cond_69
    if-ne v3, v2, :cond_7f

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v4, :cond_7f

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v4, :cond_7f

    if-ne v0, v2, :cond_7f

    .line 796
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 799
    :cond_7f
    const/4 v0, 0x2

    if-ne v3, v0, :cond_8b

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    if-eqz v0, :cond_8b

    .line 800
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 802
    :cond_8b
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->findBigUnlockView()V

    .line 803
    return-void

    :cond_8f
    move v0, v2

    .line 784
    goto :goto_57

    :cond_91
    move v0, v2

    goto :goto_5a
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 434
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 435
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContextualEventManagerCallback:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/ContextualEventManager;->registerContextualEventManagerCallback(Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;)V

    .line 436
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 440
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 443
    :try_start_3
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v1, :cond_10

    .line 444
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_10} :catch_31

    .line 450
    :cond_10
    :goto_10
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 452
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v1, :cond_24

    .line 453
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->cleanUp()V

    .line 455
    :cond_24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    .line 456
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEventManagerCallback()V

    .line 457
    return-void

    .line 445
    :catch_31
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SecuritySelectorView"

    const-string v2, "Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10
.end method

.method protected onFinishInflate()V
    .registers 14

    .prologue
    const/16 v11, 0x8

    const/4 v12, -0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 309
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 310
    const v7, 0x7f0b0047

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    .line 311
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0600c4

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    .line 312
    const v7, 0x7f0b0048

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    .line 313
    const v7, 0x7f0b0044

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/EmergencyButton;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 314
    const v7, 0x7f0b00ec

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    .line 316
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-nez v7, :cond_56

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_56

    .line 317
    sget-object v7, Lcom/android/keyguard/KeyguardHostView;->mHelpTextView:Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    .line 320
    :cond_56
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    if-nez v7, :cond_64

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_64

    .line 321
    sget-object v7, Lcom/android/keyguard/KeyguardHostView;->mVoiceHelpTextView:Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    .line 324
    :cond_64
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    if-eqz v7, :cond_6d

    .line 325
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_6d
    const v7, 0x7f0b00ed

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/sec/KeyguardShortcutView;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    .line 329
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    if-eqz v7, :cond_8a

    .line 330
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 331
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setHelpTextCallback(Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;)V

    .line 334
    :cond_8a
    const v7, 0x7f0b0026

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/sec/SecCameraShortcut;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    .line 335
    const v7, 0x7f0b00b9

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    .line 336
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v7, :cond_dc

    .line 337
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 338
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "set_shortcuts_mode"

    invoke-static {v7, v10, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 340
    .local v4, "shortcutSetting":I
    if-eq v4, v9, :cond_c2

    .line 341
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    .end local v4    # "shortcutSetting":I
    :cond_c2
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v7, :cond_ce

    .line 346
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    const v10, 0x7f040004

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    :cond_ce
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/sec/SecCameraShortcut;->setCameraArrowAnimView(Landroid/widget/ImageView;)V

    .line 349
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/sec/SecCameraShortcut;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 352
    :cond_dc
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->refreshDefaultHelpText()V

    .line 354
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_ea

    .line 355
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    :cond_ea
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "easy_mode_switch"

    invoke-static {v7, v10, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v9, :cond_1d0

    move v2, v8

    .line 361
    .local v2, "isEasyUxOn":Z
    :goto_f9
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "emergency_mode"

    invoke-static {v7, v10, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v9, :cond_1d3

    move v3, v9

    .line 364
    .local v3, "isEmergencyOn":Z
    :goto_108
    if-nez v2, :cond_10c

    if-eqz v3, :cond_117

    .line 366
    :cond_10c
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_117

    .line 367
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    const/high16 v10, 0x41b80000

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 371
    :cond_117
    if-nez v2, :cond_12d

    .line 372
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    if-nez v7, :cond_128

    .line 373
    new-instance v7, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    invoke-direct {v7, v10, v11}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;)V

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    .line 375
    :cond_128
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 379
    :cond_12d
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "unlock_text"

    invoke-static {v7, v10, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v9, :cond_1d6

    move v7, v9

    :goto_13c
    iput-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    .line 380
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_1d9

    iget-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    if-eqz v7, :cond_1d9

    .line 381
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    new-instance v10, Lcom/android/keyguard/sec/KeyguardUnlockView$6;

    invoke-direct {v10, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$6;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 388
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    new-instance v10, Lcom/android/keyguard/sec/KeyguardUnlockView$7;

    invoke-direct {v10, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$7;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 398
    :cond_15f
    :goto_15f
    const v7, 0x7f0b00a1

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 399
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_16f

    .line 400
    new-instance v7, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 402
    :cond_16f
    const v7, 0x7f0b00e9

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    .line 403
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 407
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "finger_air_view"

    invoke-static {v7, v10, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v9, :cond_1e5

    :goto_18e
    iput-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsAirViewEnabled:Z

    .line 408
    const-string v7, "SecuritySelectorView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsAirViewEnabled ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsAirViewEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v7, :cond_1cf

    .line 412
    :try_start_1ae
    const-string v7, "window"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6

    .line 413
    .local v6, "wm":Landroid/view/IWindowManager;
    invoke-interface {v6}, Landroid/view/IWindowManager;->isCoverOpen()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z
    :try_end_1be
    .catch Landroid/os/RemoteException; {:try_start_1ae .. :try_end_1be} :catch_1e7

    .line 419
    .end local v6    # "wm":Landroid/view/IWindowManager;
    :goto_1be
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 420
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v7, "com.samsung.cover.OPEN"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 430
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_1cf
    return-void

    .end local v2    # "isEasyUxOn":Z
    .end local v3    # "isEmergencyOn":Z
    .end local v5    # "view":Landroid/view/View;
    :cond_1d0
    move v2, v9

    .line 359
    goto/16 :goto_f9

    .restart local v2    # "isEasyUxOn":Z
    :cond_1d3
    move v3, v8

    .line 361
    goto/16 :goto_108

    .restart local v3    # "isEmergencyOn":Z
    :cond_1d6
    move v7, v8

    .line 379
    goto/16 :goto_13c

    .line 394
    :cond_1d9
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_15f

    .line 395
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_15f

    .restart local v5    # "view":Landroid/view/View;
    :cond_1e5
    move v9, v8

    .line 407
    goto :goto_18e

    .line 414
    :catch_1e7
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "SecuritySelectorView"

    const-string v8, "IWindowManager RemoteException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1be
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 606
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 607
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 608
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 609
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 610
    :cond_13
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    .line 611
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 613
    :cond_1c
    return-void
.end method

.method public onResume(I)V
    .registers 6
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 617
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsKeyguardDismissing:Z

    .line 619
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    if-eqz v0, :cond_15

    .line 620
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->onResume()V

    .line 622
    :cond_15
    if-ne p1, v2, :cond_2b

    .line 623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    .line 624
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsUnlockStarted:Z

    .line 625
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_2b

    .line 626
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    const v1, 0x7f040004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 631
    :cond_2b
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_34

    .line 632
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 633
    :cond_34
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3d

    .line 634
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 635
    :cond_3d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 467
    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsUnlockStarted:Z

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v4

    const-wide/16 v6, 0x385

    cmp-long v4, v4, v6

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    .line 557
    :goto_11
    return v4

    .line 475
    :cond_12
    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    if-eqz v4, :cond_28

    .line 476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    .line 477
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    .line 479
    :cond_20
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const/4 v5, 0x0

    invoke-interface {v4, v5, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_11

    .line 482
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 483
    .local v2, "touchedEventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 485
    .local v3, "touchedEventY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_11c

    .line 557
    :cond_37
    :goto_37
    :pswitch_37
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const/4 v5, 0x0

    invoke-interface {v4, v5, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_11

    .line 487
    :pswitch_3f
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mStartX:F

    .line 488
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mStartY:F

    .line 489
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    .line 490
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/sec/KeyguardUnlockView;->doTransition(Landroid/view/View;F)V

    goto :goto_37

    .line 494
    :pswitch_4e
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_55

    .line 495
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->pokeWakelockWithTimeCheck()V

    .line 499
    :cond_55
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mStartX:F

    sub-float v4, v2, v4

    float-to-int v0, v4

    .line 500
    .local v0, "diffX":I
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mStartY:F

    sub-float v4, v3, v4

    float-to-int v1, v4

    .line 502
    .local v1, "diffY":I
    int-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    .line 503
    sget-boolean v4, Lcom/android/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    if-eqz v4, :cond_92

    .line 504
    const-string v4, "SecuritySelectorView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_MOVE mDistance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_92
    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecondBorder:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_37

    .line 507
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const/4 v5, 0x0

    invoke-interface {v4, v5, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 508
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsUnlockStarted:Z

    .line 510
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_37

    .line 511
    new-instance v4, Lcom/android/keyguard/sec/KeyguardUnlockView$8;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$8;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v5}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_37

    .line 525
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    :pswitch_b7
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    .line 527
    :pswitch_ba
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    const/high16 v5, 0x3f800000

    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/sec/KeyguardUnlockView;->doTransition(Landroid/view/View;F)V

    .line 528
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    goto/16 :goto_37

    .line 531
    :pswitch_c7
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    const/high16 v5, 0x3f800000

    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/sec/KeyguardUnlockView;->doTransition(Landroid/view/View;F)V

    .line 532
    sget-boolean v4, Lcom/android/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    if-eqz v4, :cond_ec

    .line 533
    const-string v4, "SecuritySelectorView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP mDistance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_ec
    iget v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFirstBorder:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_37

    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecondBorder:I

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_37

    .line 536
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const/4 v5, 0x0

    invoke-interface {v4, v5, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 537
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsUnlockStarted:Z

    .line 539
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_37

    .line 540
    new-instance v4, Lcom/android/keyguard/sec/KeyguardUnlockView$9;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$9;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v5}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_37

    .line 485
    nop

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_c7
        :pswitch_4e
        :pswitch_ba
        :pswitch_37
        :pswitch_37
        :pswitch_b7
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 639
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 640
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v1, "SecuritySelectorView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_53

    const-string v0, "focused"

    :goto_18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_23
    if-eqz p1, :cond_56

    .line 644
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v0, :cond_36

    .line 645
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    if-eqz v0, :cond_36

    .line 646
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->onResume()V

    .line 652
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_52

    .line 653
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_60

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 654
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 659
    :cond_52
    :goto_52
    return-void

    .line 640
    :cond_53
    const-string v0, "unfocused"

    goto :goto_18

    .line 649
    :cond_56
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v0, :cond_36

    .line 650
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->onPause()V

    goto :goto_36

    .line 656
    :cond_60
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_52
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 596
    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .registers 4
    .param p1, "carrierArea"    # Landroid/view/View;

    .prologue
    .line 908
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    .line 909
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 910
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$10;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$10;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 916
    :cond_10
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 568
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    if-eqz v0, :cond_b

    .line 569
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 571
    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_16

    .line 572
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 574
    :cond_16
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_21

    .line 575
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyButton;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 576
    :cond_21
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 580
    return-void
.end method

.method public showBouncer(I)V
    .registers 11
    .param p1, "duration"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 737
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->findBigUnlockView()V

    .line 738
    iput-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    .line 739
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "set_shortcuts_mode"

    const/4 v5, -0x2

    invoke-static {v3, v4, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 741
    .local v2, "shortcutSetting":I
    if-ne v2, v8, :cond_29

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v3, :cond_29

    .line 742
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 743
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 745
    :cond_29
    const/4 v3, 0x2

    if-ne v2, v3, :cond_35

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    if-eqz v3, :cond_35

    .line 746
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 748
    :cond_35
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v3

    if-nez v3, :cond_41

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 749
    :cond_41
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v4, v5, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 770
    :cond_4a
    :goto_4a
    return-void

    .line 751
    :cond_4b
    const v3, 0x7f0b002b

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 752
    .local v0, "bouncerFrameView":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 754
    .local v1, "outRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 755
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 759
    :goto_62
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 761
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v4, v5, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 762
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    invoke-static {v3, v4, v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->startAnimationView(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    .line 764
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    if-eqz v3, :cond_4a

    .line 765
    const-string v3, "SecuritySelectorView"

    const-string v4, "showBouncer mBouncerHelpText != null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 767
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4a

    .line 757
    :cond_91
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_62
.end method

.method public showUnlockAffordance()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 924
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 926
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 927
    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 932
    :goto_10
    const-string v2, "SecuritySelectorView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-string v2, "SecuritySelectorView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    if-eqz v0, :cond_49

    .line 936
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 938
    :cond_49
    return-void

    .line 929
    :cond_4a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_10
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 921
    return-void
.end method
