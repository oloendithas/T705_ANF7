.class public Lcom/android/keyguard/KeyguardPatternView;
.super Landroid/widget/LinearLayout;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardPatternView$11;,
        Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;,
        Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;,
        Lcom/android/keyguard/KeyguardPatternView$OneHandMode;,
        Lcom/android/keyguard/KeyguardPatternView$FooterMode;
    }
.end annotation


# instance fields
.field private mBackupPINButton:Landroid/widget/Button;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mEmergencyButtonArea:Landroid/widget/LinearLayout;

.field private mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mForgotPatternButton:Landroid/widget/Button;

.field private mHandGripChangeObserver:Landroid/database/ContentObserver;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsFlatMode:Z

.field private mIsPassInputEventToEffectView:Z

.field private mKeyguardEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

.field private mKeyguardGuestSelector:Landroid/view/View;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastFooterMode:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

.field private mLastPokeTime:J

.field private mLeftArrowImage:Landroid/widget/ImageView;

.field private mLeftPressed:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

.field private mOnehandClickLitener:Landroid/view/View$OnClickListener;

.field private mOnehandLockPattern:Landroid/widget/LinearLayout;

.field private mRegisterFlatListener:Z

.field private mRightArrowImage:Landroid/widget/ImageView;

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSecCameraArrow:Landroid/view/View;

.field private mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTotalFailedPatternAttempts:I

.field private mVzwEmergencyButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    iput v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 99
    iput v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    .line 101
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 126
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 127
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsFlatMode:Z

    .line 128
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    .line 134
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    .line 139
    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastFooterMode:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    .line 147
    const-wide/16 v1, -0x1b58

    iput-wide v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 152
    new-instance v1, Lcom/android/keyguard/KeyguardPatternView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 157
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 162
    new-instance v1, Lcom/android/keyguard/KeyguardPatternView$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandGripChangeObserver:Landroid/database/ContentObserver;

    .line 178
    new-instance v1, Lcom/android/keyguard/KeyguardPatternView$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    .line 801
    new-instance v1, Lcom/android/keyguard/KeyguardPatternView$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPatternView$8;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 887
    new-instance v1, Lcom/android/keyguard/KeyguardPatternView$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPatternView$9;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    .line 1034
    new-instance v1, Lcom/android/keyguard/KeyguardPatternView$10;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPatternView$10;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 226
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 229
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 232
    .local v0, "unlockEffect":I
    if-eqz v0, :cond_6f

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    .line 235
    :cond_6f
    return-void
.end method

.method private UnregisterFlatMotionListener()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1016
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    if-eqz v0, :cond_4b

    .line 1018
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    .line 1019
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_2c

    .line 1020
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 1023
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_35} :catch_4c

    .line 1027
    :goto_35
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "pref"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1028
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1029
    const-string v1, "flatlisten"

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1030
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1032
    :cond_4b
    return-void

    .line 1024
    :catch_4c
    move-exception v0

    .line 1025
    const-string v1, "SecurityPatternView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardPatternView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardPatternView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->startHandAdaptableObserver()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardPatternView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsFlatMode:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardPatternView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/keyguard/KeyguardPatternView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return p1
.end method

.method static synthetic access$2008(Lcom/android/keyguard/KeyguardPatternView;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsFlatMode:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/keyguard/KeyguardPatternView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$2108(Lcom/android/keyguard/KeyguardPatternView;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardPatternView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardPatternView;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # J

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardPatternView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isTactileFeedbackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardPatternView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardPatternView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardPatternView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->getOneHandSwitchState()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardPatternView$FooterMode;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastFooterMode:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardPatternView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/EmergencyCircleView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$OneHandMode;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardPatternView$OneHandMode;
    .param p2, "x2"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardPatternView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftPressed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftPressed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardPatternView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardPatternView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandAnyScreenMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardPatternView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->stopHandAdaptableObserver()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPatternView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private disableDevicePermanently()V
    .registers 4

    .prologue
    .line 1086
    const-string v0, "SecurityPatternView"

    const-string v1, "disableDevicePermanently start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 1088
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1089
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f0600c0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 1090
    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 611
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 612
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f06004e

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 616
    :goto_11
    return-void

    .line 614
    :cond_12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f06009b

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_11
.end method

.method private getHandAdaptableOperationValue()I
    .registers 5

    .prologue
    .line 956
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hand_adaptable_operation"

    const/4 v2, 0x3

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getOneHandSwitchState()I
    .registers 5

    .prologue
    .line 951
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_switch_state"

    const/4 v2, 0x3

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private handleAttemptLockout(J)V
    .registers 11
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 764
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 765
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 766
    .local v6, "elapsedRealtime":J
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z

    if-eqz v0, :cond_18

    .line 767
    sget-object v0, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    .line 770
    :cond_18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_24

    .line 771
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 774
    :cond_24
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$7;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardPatternView$7;-><init>(Lcom/android/keyguard/KeyguardPatternView;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 799
    return-void
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1069
    .line 1070
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "enterprise_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1072
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v2

    .line 1073
    const-string v3, "SecurityPatternView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "max failed attempt for device disable :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    if-lez v2, :cond_69

    .line 1076
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    .line 1077
    const-string v3, "SecurityPatternView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current failed attempt for device  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    if-lt v0, v2, :cond_67

    const/4 v0, 0x1

    .line 1081
    :goto_4e
    const-string v1, "SecurityPatternView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    return v0

    :cond_67
    move v0, v1

    .line 1078
    goto :goto_4e

    :cond_69
    move v0, v1

    goto :goto_4e
.end method

.method private isOnehandAnyScreenMode()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 960
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "any_screen_running"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method private isOnehandMode()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 965
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 968
    :goto_a
    return v1

    :cond_b
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand_pattern_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1c

    :goto_1a
    move v1, v0

    goto :goto_a

    :cond_1c
    move v0, v1

    goto :goto_1a
.end method

.method private isTactileFeedbackEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1064
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_vibration_feedback"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 706
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardPatternView$1;)V

    .line 707
    .local v0, "accountAnalyzer":Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->start()V

    .line 708
    return-void
.end method

.method private movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;Z)V
    .registers 8
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardPatternView$OneHandMode;
    .param p2, "bIsHandAdaptable"    # Z

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 908
    if-eqz p2, :cond_35

    .line 909
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 910
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 912
    :cond_10
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_19

    .line 913
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 915
    :cond_19
    sget-object v0, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v0, :cond_27

    .line 916
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_26

    .line 917
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 947
    :cond_26
    :goto_26
    return-void

    .line 919
    :cond_27
    sget-object v0, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v0, :cond_26

    .line 920
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_26

    .line 921
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_26

    .line 925
    :cond_35
    sget-object v0, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v0, :cond_55

    .line 926
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_42

    .line 927
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 929
    :cond_42
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_4b

    .line 930
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 932
    :cond_4b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_26

    .line 933
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_26

    .line 935
    :cond_55
    sget-object v0, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v0, :cond_26

    .line 936
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_62

    .line 937
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 939
    :cond_62
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_6b

    .line 940
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 942
    :cond_6b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_26

    .line 943
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_26
.end method

.method private registerFlatMotionListener()V
    .registers 5

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x1

    .line 998
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I

    move-result v0

    if-ne v0, v2, :cond_5a

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    if-nez v0, :cond_5a

    .line 1000
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    .line 1001
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_2d

    .line 1002
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 1004
    :cond_2d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    invoke-virtual {v0, v3}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1005
    const-string v0, "SecurityPatternView"

    const-string v1, "registerFlatMotionListener - notAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_3c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 1008
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1009
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1010
    const-string v1, "flatlisten"

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1011
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1013
    :cond_5a
    return-void
.end method

.method private startHandAdaptableObserver()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 972
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I

    move-result v1

    if-ne v1, v4, :cond_42

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandAnyScreenMode()Z

    move-result v1

    if-nez v1, :cond_42

    .line 973
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 974
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "Lockscreen_patternLock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 977
    const-string v1, "PackageName"

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 979
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 981
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_42
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "onehand_switch_state"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandGripChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 982
    return-void
.end method

.method private stopHandAdaptableObserver()V
    .registers 4

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_43

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandAnyScreenMode()Z

    move-result v1

    if-nez v1, :cond_43

    .line 986
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 987
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "Lockscreen_patternLock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    const-string v1, "SSRM_STATUS_VALUE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 990
    const-string v1, "PackageName"

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 992
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 994
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_43
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandGripChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 995
    return-void
.end method

.method private updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    .registers 11
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 412
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastFooterMode:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    .line 414
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v2, :cond_e

    .line 540
    :cond_d
    :goto_d
    return-void

    .line 415
    :cond_e
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v2, :cond_d

    .line 418
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 419
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v1

    .line 420
    .local v1, "phoneState":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    if-eqz v2, :cond_4a

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4a

    .line 421
    sget-object v2, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    if-eq p1, v2, :cond_4a

    sget-object v2, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    if-eq p1, v2, :cond_4a

    .line 422
    const-string v2, "SecurityPatternView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFooter return, mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 428
    .end local v1    # "phoneState":I
    :cond_4a
    sget-object v2, Lcom/android/keyguard/KeyguardPatternView$11;->$SwitchMap$com$android$keyguard$KeyguardPatternView$FooterMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1dc

    goto :goto_d

    .line 431
    :pswitch_56
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 434
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v2, :cond_d

    .line 435
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 444
    :pswitch_79
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v2

    if-eqz v2, :cond_114

    .line 446
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :goto_8b
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v2, :cond_9d

    .line 451
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraArrow:Landroid/view/View;

    if-eqz v2, :cond_9d

    .line 453
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraArrow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 456
    :cond_9d
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardGuestSelector:Landroid/view/View;

    if-eqz v2, :cond_a6

    .line 457
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardGuestSelector:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 459
    :cond_a6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v2

    if-eqz v2, :cond_be

    .line 460
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mVzwEmergencyButton:Landroid/widget/Button;

    if-eqz v2, :cond_b5

    .line 461
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mVzwEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 463
    :cond_b5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_be

    .line 464
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 468
    :cond_be
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v2

    if-eqz v2, :cond_cd

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_cd

    .line 469
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 472
    :cond_cd
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_f6

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    if-eqz v2, :cond_f6

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v2, :cond_f6

    .line 473
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    invoke-virtual {v2, v3, v4, v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZZ)V

    .line 477
    :cond_f6
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v2, :cond_ff

    .line 478
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 480
    :cond_ff
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_d

    .line 481
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 482
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 483
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_d

    .line 448
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_114
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8b

    .line 488
    :pswitch_11b
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 490
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v2, :cond_137

    .line 491
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraArrow:Landroid/view/View;

    if-eqz v2, :cond_137

    .line 493
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraArrow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 496
    :cond_137
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardGuestSelector:Landroid/view/View;

    if-eqz v2, :cond_140

    .line 497
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardGuestSelector:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 499
    :cond_140
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v2

    if-eqz v2, :cond_158

    .line 500
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mVzwEmergencyButton:Landroid/widget/Button;

    if-eqz v2, :cond_14f

    .line 501
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mVzwEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 503
    :cond_14f
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_158

    .line 504
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 508
    :cond_158
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v2

    if-eqz v2, :cond_167

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_167

    .line 509
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 513
    :cond_167
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_190

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    if-eqz v2, :cond_190

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v2, :cond_190

    .line 514
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 515
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    invoke-virtual {v2, v3, v4, v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZZ)V

    .line 518
    :cond_190
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v2, :cond_199

    .line 519
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 521
    :cond_199
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_d

    .line 522
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 523
    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 524
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_d

    .line 529
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_1ae
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 532
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_1d0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    if-eqz v2, :cond_1d0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v2, :cond_1d0

    .line 533
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 536
    :cond_1d0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v2, :cond_d

    .line 537
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_d

    .line 428
    :pswitch_data_1dc
    .packed-switch 0x1
        :pswitch_56
        :pswitch_79
        :pswitch_11b
        :pswitch_1ae
    .end packed-switch
.end method


# virtual methods
.method public hideBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 878
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 879
    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 885
    :goto_15
    return-void

    .line 882
    :cond_16
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_15
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 822
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 854
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 855
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->UnregisterFlatMotionListener()V

    .line 856
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->stopHandAdaptableObserver()V

    .line 857
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 859
    :cond_17
    return-void
.end method

.method protected onFinishInflate()V
    .registers 12

    .prologue
    const/4 v10, -0x2

    const/16 v9, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 250
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 251
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v4, :cond_215

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_13
    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "input_method"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 256
    const v4, 0x7f0b00a9

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockPatternView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 257
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 258
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 259
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v7, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$1;)V

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 262
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v4

    if-nez v4, :cond_219

    move v4, v5

    :goto_4e
    invoke-virtual {v7, v4}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 265
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 267
    const v4, 0x7f0b0026

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/sec/SecCameraShortcut;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    .line 268
    const v4, 0x7f0b00b9

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraArrow:Landroid/view/View;

    .line 269
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v4, :cond_9d

    .line 270
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "set_shortcuts_mode"

    invoke-static {v4, v7, v6, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 271
    .local v3, "shortcutSetting":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v4

    if-eqz v4, :cond_21c

    .line 273
    if-eq v3, v5, :cond_96

    .line 274
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraArrow:Landroid/view/View;

    if-eqz v4, :cond_96

    .line 276
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraArrow:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 287
    :cond_96
    :goto_96
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v4, v7}, Lcom/android/keyguard/sec/SecCameraShortcut;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 290
    .end local v3    # "shortcutSetting":I
    :cond_9d
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    if-eqz v4, :cond_ab

    .line 291
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v7, Lcom/android/keyguard/KeyguardPatternView$4;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardPatternView$4;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternView;->setOnTouchEventHandlerForKeyguardEffect(Lcom/android/internal/widget/LockPatternView$OnTouchEventHandlerForKeyguardEffect;)V

    .line 299
    :cond_ab
    const v4, 0x7f0b0045

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    .line 300
    const v4, 0x7f0b0046

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    .line 302
    const v4, 0x7f0b0049

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/EmergencyCarrierArea;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    .line 303
    const v4, 0x7f0b004a

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    .line 306
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 308
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    if-nez v4, :cond_e7

    sget-object v4, Lcom/android/keyguard/KeyguardHostView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v4, :cond_e7

    .line 309
    sget-object v4, Lcom/android/keyguard/KeyguardHostView;->mBackupPINButton:Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    .line 312
    :cond_e7
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v4, :cond_f3

    sget-object v4, Lcom/android/keyguard/KeyguardHostView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v4, :cond_f3

    .line 313
    sget-object v4, Lcom/android/keyguard/KeyguardHostView;->mForgotPatternButton:Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    .line 316
    :cond_f3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    if-nez v4, :cond_ff

    sget-object v4, Lcom/android/keyguard/KeyguardHostView;->sEmergencyButtonArea:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_ff

    .line 317
    sget-object v4, Lcom/android/keyguard/KeyguardHostView;->sEmergencyButtonArea:Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    .line 320
    :cond_ff
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v4, :cond_115

    .line 321
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    const v7, 0x7f060096

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 322
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/keyguard/KeyguardPatternView$5;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardPatternView$5;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    :cond_115
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v4, :cond_12b

    .line 334
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    const v7, 0x7f0600da

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 335
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/keyguard/KeyguardPatternView$6;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardPatternView$6;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    :cond_12b
    invoke-virtual {p0, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 348
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardPatternView;->maybeEnableFallback(Landroid/content/Context;)V

    .line 349
    new-instance v4, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 350
    const v4, 0x7f0b002d

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 351
    const v4, 0x7f0b002b

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 352
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_152

    .line 353
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 357
    :cond_152
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_176

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v4

    if-eqz v4, :cond_176

    .line 358
    const v4, 0x7f0b0019

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/sec/EmergencyCircleView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    .line 359
    const v4, 0x7f0b0044

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Landroid/widget/Button;

    .line 362
    :cond_176
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v4

    if-eqz v4, :cond_187

    .line 363
    const v4, 0x7f0b001b

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mVzwEmergencyButton:Landroid/widget/Button;

    .line 366
    :cond_187
    const v4, 0x7f0b0069

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardGuestSelector:Landroid/view/View;

    .line 369
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v4

    if-eqz v4, :cond_20b

    .line 370
    const v4, 0x7f0b00ab

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;

    .line 371
    const v4, 0x7f0b00ac

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    .line 372
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_1b7

    .line 373
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    :cond_1b7
    const v4, 0x7f0b00ad

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    .line 376
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_1cd

    .line 377
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    :cond_1cd
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I

    move-result v4

    if-ne v4, v5, :cond_23e

    .line 381
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "onehand_switch_state"

    invoke-static {v4, v7, v5, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_23c

    move v4, v5

    :goto_1e2
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftPressed:Z

    .line 386
    :goto_1e4
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "pref"

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 387
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v4, "flat"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsFlatMode:Z

    .line 388
    const-string v4, "flatlistener"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mRegisterFlatListener:Z

    .line 390
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I

    move-result v4

    if-ne v4, v5, :cond_258

    .line 391
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftPressed:Z

    if-eqz v4, :cond_252

    .line 392
    sget-object v4, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;Z)V

    .line 406
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_20b
    :goto_20b
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-eqz v4, :cond_214

    .line 407
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    .line 409
    :cond_214
    return-void

    .line 251
    .end local v0    # "bouncerFrameView":Landroid/view/View;
    :cond_215
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_13

    :cond_219
    move v4, v6

    .line 262
    goto/16 :goto_4e

    .line 280
    .restart local v3    # "shortcutSetting":I
    :cond_21c
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "kids_home_mode"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_23a

    move v1, v5

    .line 281
    .local v1, "isKidsMode":Z
    :goto_22b
    if-ne v3, v5, :cond_22f

    if-eqz v1, :cond_96

    .line 282
    :cond_22f
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraArrow:Landroid/view/View;

    if-eqz v4, :cond_96

    .line 283
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraArrow:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_96

    .end local v1    # "isKidsMode":Z
    :cond_23a
    move v1, v6

    .line 280
    goto :goto_22b

    .end local v3    # "shortcutSetting":I
    .restart local v0    # "bouncerFrameView":Landroid/view/View;
    :cond_23c
    move v4, v6

    .line 381
    goto :goto_1e2

    .line 383
    :cond_23e
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "onehand_operation_left_is_pressed"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_250

    move v4, v5

    :goto_24d
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftPressed:Z

    goto :goto_1e4

    :cond_250
    move v4, v6

    goto :goto_24d

    .line 394
    .restart local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_252
    sget-object v4, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;Z)V

    goto :goto_20b

    .line 397
    :cond_258
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftPressed:Z

    if-eqz v4, :cond_262

    .line 398
    sget-object v4, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v4, v6}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;Z)V

    goto :goto_20b

    .line 400
    :cond_262
    sget-object v4, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v4, v6}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;Z)V

    goto :goto_20b
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 828
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->stopHandAdaptableObserver()V

    .line 829
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->UnregisterFlatMotionListener()V

    .line 830
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 833
    :cond_17
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_23

    .line 834
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 835
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 837
    :cond_23
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 838
    return-void
.end method

.method public onResume(I)V
    .registers 6
    .param p1, "reason"    # I

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 843
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->startHandAdaptableObserver()V

    .line 844
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->registerFlatMotionListener()V

    .line 845
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 847
    :cond_1e
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    .line 848
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 849
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 544
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    if-eqz v4, :cond_f

    .line 545
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 547
    :cond_f
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 550
    .local v2, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long v0, v4, v6

    .line 551
    .local v0, "elapsed":J
    if-eqz v2, :cond_29

    const-wide/16 v4, 0x1af4

    cmp-long v4, v0, v4

    if-lez v4, :cond_29

    .line 552
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 554
    :cond_29
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 555
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 556
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 557
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_4c

    if-eqz v2, :cond_5d

    :cond_4c
    const/4 v2, 0x1

    .line 558
    :goto_4d
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 559
    return v2

    :cond_5d
    move v2, v3

    .line 557
    goto :goto_4d
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 631
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 632
    if-eqz p1, :cond_8

    .line 634
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    .line 636
    :cond_8
    return-void
.end method

.method public reset()V
    .registers 8

    .prologue
    const/4 v6, 0x5

    .line 563
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_15

    .line 564
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 567
    :cond_15
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 568
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 569
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 572
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    .line 573
    .local v2, "lDeviceDisableForMaxFailedAttempt":Z
    if-nez v2, :cond_9f

    .line 576
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 577
    .local v0, "deadline":J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_64

    .line 578
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    .line 584
    :goto_3a
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isITPolicyEnabled()Z

    move-result v3

    if-nez v3, :cond_4a

    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    if-eqz v3, :cond_68

    .line 585
    :cond_4a
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    .line 591
    :goto_56
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->isVerifyUnlockOnly()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 592
    sget-object v3, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    .line 608
    .end local v0    # "deadline":J
    :goto_63
    return-void

    .line 580
    .restart local v0    # "deadline":J
    :cond_64
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    goto :goto_3a

    .line 587
    :cond_68
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    goto :goto_56

    .line 593
    :cond_75
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z

    if-eqz v3, :cond_87

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v3

    if-lt v3, v6, :cond_87

    .line 595
    sget-object v3, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_63

    .line 596
    :cond_87
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v3

    if-eqz v3, :cond_99

    iget v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    if-lt v3, v6, :cond_99

    .line 598
    sget-object v3, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_63

    .line 600
    :cond_99
    sget-object v3, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_63

    .line 605
    .end local v0    # "deadline":J
    :cond_9f
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    goto :goto_63
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_d

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 242
    :cond_d
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 246
    return-void
.end method

.method public showBouncer(I)V
    .registers 6
    .param p1, "duration"    # I

    .prologue
    .line 868
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 869
    :cond_c
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 874
    :goto_15
    return-void

    .line 871
    :cond_16
    const v1, 0x7f0b002b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 872
    .local v0, "bouncerFrameView":Landroid/view/View;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    invoke-static {v1, v2, v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->startAnimationView(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_15
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 620
    return-void
.end method
