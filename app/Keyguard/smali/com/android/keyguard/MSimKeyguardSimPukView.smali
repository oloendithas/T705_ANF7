.class public Lcom/android/keyguard/MSimKeyguardSimPukView;
.super Lcom/android/keyguard/KeyguardSimPukView;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;,
        Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private isWrongPUK:Z

.field private isWrongPUKCrash:Z

.field private mHandler:Landroid/os/Handler;

.field private mPM:Landroid/os/PowerManager;

.field private mPukHandler:Landroid/os/Handler;

.field private mRemainingCount:I

.field private mRemainingCountTextView:Landroid/widget/TextView;

.field private mSubscription:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I

.field private old_Num_of_retry:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string v0, "MSimKeyguardSimPukView"

    sput-object v0, Lcom/android/keyguard/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSubscription:I

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mPukHandler:Landroid/os/Handler;

    .line 61
    iput-boolean v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUK:Z

    .line 62
    iput v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I

    .line 64
    iput-boolean v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUKCrash:Z

    .line 65
    iput v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->old_Num_of_retry:I

    .line 354
    new-instance v0, Lcom/android/keyguard/MSimKeyguardSimPukView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MSimKeyguardSimPukView$5;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView;)V

    iput-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MSimKeyguardSimPukView$MSimStateMachine;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    .line 127
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mPM:Landroid/os/PowerManager;

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/MSimKeyguardSimPukView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUK:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUK:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/MSimKeyguardSimPukView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUKCrash:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/MSimKeyguardSimPukView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->isWrongPUKCrash:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/MSimKeyguardSimPukView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/MSimKeyguardSimPukView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/MSimKeyguardSimPukView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getSimPukRetry()I

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/MSimKeyguardSimPukView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mPukHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/MSimKeyguardSimPukView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->old_Num_of_retry:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/MSimKeyguardSimPukView;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/MSimKeyguardSimPukView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPukView;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/keyguard/MSimKeyguardSimPukView;->handleTimeout(I)V

    return-void
.end method

.method private getSimPukRetry()I
    .registers 5

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 377
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSubscription:I

    .line 380
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 381
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSubscription:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    .line 382
    const-string v1, "phone"

    iget v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSubscription:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSimPukRetry()I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2b} :catch_62

    move-result v0

    .line 391
    :cond_2c
    :goto_2c
    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimPukRetry() mSubscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " # of remaining count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return v0

    .line 386
    :cond_51
    :try_start_51
    const-string v1, "phone_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mSubscription:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getIccPin1RetryCount(I)I
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_60} :catch_62

    move-result v0

    goto :goto_2c

    .line 389
    :catch_62
    move-exception v1

    goto :goto_2c
.end method

.method private handleTimeout(I)V
    .registers 4
    .param p1, "seq"    # I

    .prologue
    .line 366
    monitor-enter p0

    .line 367
    :try_start_1
    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakelockSequence:I

    if-ne p1, v0, :cond_11

    .line 369
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 371
    :cond_11
    monitor-exit p0

    .line 372
    return-void

    .line 371
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .registers 2

    .prologue
    .line 144
    const v0, 0x7f0b0056

    return v0
.end method

.method protected getSecurityMessageDisplay(I)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "resId"    # I

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600d8

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSecurityMessageDisplay(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600d8

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 149
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukView;->onFinishInflate()V

    .line 151
    const v2, 0x7f0b00c7

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCountTextView:Landroid/widget/TextView;

    .line 153
    const v2, 0x7f0b0062

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "ok":Landroid/view/View;
    if-eqz v0, :cond_20

    .line 155
    new-instance v2, Lcom/android/keyguard/MSimKeyguardSimPukView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/MSimKeyguardSimPukView$1;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :cond_20
    const v2, 0x7f0b0057

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, "pinDelete":Landroid/view/View;
    if-eqz v1, :cond_3c

    .line 169
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 170
    new-instance v2, Lcom/android/keyguard/MSimKeyguardSimPukView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/MSimKeyguardSimPukView$2;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    new-instance v2, Lcom/android/keyguard/MSimKeyguardSimPukView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/MSimKeyguardSimPukView$3;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 195
    :cond_3c
    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getSimPukRetry()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I

    .line 197
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 198
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->filterNum:Landroid/text/InputFilter;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 199
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 202
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 204
    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->updateRetryCount()V

    .line 205
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 206
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 215
    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 218
    :cond_1d
    return-void
.end method

.method public pokeWakelock(I)V
    .registers 7
    .param p1, "holdMs"    # I

    .prologue
    .line 344
    monitor-enter p0

    .line 345
    :try_start_1
    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pokeWakelock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 347
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakelockSequence:I

    .line 349
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 350
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 351
    monitor-exit p0

    .line 352
    return-void

    .line 351
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_42
    move-exception v1

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getSimPukRetry()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I

    .line 413
    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->updateRetryCount()V

    .line 414
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukView;->reset()V

    .line 415
    return-void
.end method

.method public resetState()V
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 140
    :cond_1c
    return-void
.end method

.method public updateRetryCount()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 396
    const-string v0, ""

    .line 397
    .local v0, "displayMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCountTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4e

    .line 398
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I

    if-ne v1, v3, :cond_4f

    .line 399
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060102

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getSecurityMessageDisplay(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :goto_2a
    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRetryCount():  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCountTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_4e
    return-void

    .line 403
    :cond_4f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060103

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->getSecurityMessageDisplay(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a
.end method

.method protected updateSim()V
    .registers 5

    .prologue
    .line 272
    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mRemainingCount:I

    iput v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->old_Num_of_retry:I

    .line 273
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 274
    const v0, 0xea60

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MSimKeyguardSimPukView;->pokeWakelock(I)V

    .line 276
    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    const-string v1, "updateSim()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-boolean v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mCheckInProgress:Z

    if-nez v0, :cond_35

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/MSimKeyguardSimPukView;->mCheckInProgress:Z

    .line 281
    new-instance v0, Lcom/android/keyguard/MSimKeyguardSimPukView$4;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/keyguard/MSimKeyguardSimPukView$4;-><init>(Lcom/android/keyguard/MSimKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 325
    :cond_35
    return-void
.end method
