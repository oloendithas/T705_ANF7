.class public Lcom/android/keyguard/sec/KeyguardSignatureView;
.super Landroid/widget/FrameLayout;
.source "KeyguardSignatureView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;,
        Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DBG_TOUCH:Z

.field private static mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;


# instance fields
.field private mBackupPIN:Landroid/widget/ImageButton;

.field private mBoundToSignService:Z

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

.field private mEngineStarted:Z

.field private mGuideText:Ljava/lang/String;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSignService:Lcom/android/internal/policy/ISignServiceInterface;

.field private final mSignServiceRunningLock:Ljava/lang/Object;

.field private mSignView:Lcom/android/internal/widget/SignView;

.field private mTotalFailedSignatureAttempts:I

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVerificationLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 64
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_14

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    .line 65
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_16

    :goto_11
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG_TOUCH:Z

    return-void

    :cond_14
    move v0, v2

    .line 64
    goto :goto_9

    :cond_16
    move v1, v2

    .line 65
    goto :goto_11
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 88
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;

    .line 313
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSignatureView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSignatureView$3;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 384
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSignatureView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSignatureView$5;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 112
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I

    .line 114
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 115
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 117
    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .prologue
    .line 62
    sput-object p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    return-object p0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG_TOUCH:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .registers 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardSignatureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/sec/KeyguardSignatureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardSignatureView;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;
    .param p1, "x1"    # J

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/keyguard/sec/KeyguardSignatureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/KeyguardSignatureView;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;
    .param p1, "x1"    # Lcom/android/internal/policy/ISignServiceInterface;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardSignatureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/KeyguardSignatureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardSignatureView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/sec/EmergencyCircleView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .registers 11
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SignView;->setUserInputEnabled(Z)V

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 366
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSignatureView$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/KeyguardSignatureView$4;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 382
    return-void
.end method

.method private initSignView()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 152
    sget-object v2, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->INIT:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    sput-object v2, Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 154
    new-instance v2, Lcom/android/internal/widget/BeautySignView;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/BeautySignView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    .line 157
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v2}, Lcom/android/internal/widget/SignView;->setVerifySign()V

    .line 159
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v2}, Lcom/android/internal/widget/SignView;->loadVerificationSettings()V

    .line 162
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getSignatureVerificationLevel()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mVerificationLevel:I

    .line 163
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mVerificationLevel:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setVerificationLevel(I)V

    .line 166
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setSignatureVisible(Z)V

    .line 168
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    new-instance v3, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;Lcom/android/keyguard/sec/KeyguardSignatureView$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V

    .line 171
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 173
    const v2, 0x7f0b00c4

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 174
    .local v1, "signViewContainer":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 176
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    return-void
.end method

.method private setAdditionalPinButton()V
    .registers 3

    .prologue
    .line 210
    const v0, 0x7f0b00c3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSignatureView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSignatureView$1;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 220
    return-void
.end method


# virtual methods
.method public bindToSignatureLock()V
    .registers 7

    .prologue
    .line 308
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 311
    return-void
.end method

.method public hideBouncer(I)V
    .registers 3
    .param p1, "duration"    # I

    .prologue
    const/4 v0, 0x0

    .line 303
    invoke-static {v0, v0, v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 304
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 181
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_30

    .line 182
    const-string v0, "KeyguardSignatureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSignatureView onAttachedToWindow, mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_30
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    if-nez v0, :cond_45

    .line 186
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_3f

    const-string v0, "KeyguardSignatureView"

    const-string v1, "Trying to connect to signature service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_3f
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->bindToSignatureLock()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    .line 191
    :cond_45
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 192
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 196
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_30

    .line 197
    const-string v0, "KeyguardSignatureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSignatureView onDetachedFromWindow, mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_30
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4a

    .line 201
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_40

    const-string v0, "KeyguardSignatureView"

    const-string v1, "Trying to disconnect to signature service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_40
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    .line 206
    :cond_4a
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 207
    return-void
.end method

.method protected onFinishInflate()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 123
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->initSignView()V

    .line 125
    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 129
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "unlock_text"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_61

    move v0, v1

    .line 131
    .local v0, "helpTextEnabled":Z
    :goto_1e
    if-eqz v0, :cond_63

    .line 132
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06010c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    .line 137
    :goto_2f
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 139
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->setAdditionalPinButton()V

    .line 142
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 145
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 146
    const v1, 0x7f0b0019

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/EmergencyCircleView;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    .line 147
    const v1, 0x7f0b0044

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyButton:Landroid/widget/Button;

    .line 149
    :cond_60
    return-void

    .line 129
    .end local v0    # "helpTextEnabled":Z
    :cond_61
    const/4 v0, 0x0

    goto :goto_1e

    .line 134
    .restart local v0    # "helpTextEnabled":Z
    :cond_63
    const-string v2, ""

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    goto :goto_2f
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 257
    const-string v0, "KeyguardSignatureView"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 262
    return-void
.end method

.method public onResume(I)V
    .registers 6
    .param p1, "reason"    # I

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->reset()V

    .line 268
    const-string v0, "KeyguardSignatureView"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSignatureView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSignatureView$2;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    return-void
.end method

.method public reset()V
    .registers 7

    .prologue
    .line 235
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 236
    .local v0, "deadline":J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_38

    .line 237
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->handleAttemptLockout(J)V

    .line 244
    :goto_f
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 245
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v3, :cond_37

    .line 246
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v2

    .line 247
    .local v2, "phoneState":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_37

    .line 248
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEmergencyButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 253
    .end local v2    # "phoneState":I
    :cond_37
    return-void

    .line 240
    :cond_38
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_f
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 225
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 230
    return-void
.end method

.method public showBouncer(I)V
    .registers 3
    .param p1, "duration"    # I

    .prologue
    const/4 v0, 0x0

    .line 298
    invoke-static {v0, v0, v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 299
    return-void
.end method

.method public showUsabilityHint()V
    .registers 3

    .prologue
    .line 292
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_b

    .line 293
    const-string v0, "KeyguardSignatureView"

    const-string v1, "Requested showUsabilityHint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_b
    return-void
.end method
