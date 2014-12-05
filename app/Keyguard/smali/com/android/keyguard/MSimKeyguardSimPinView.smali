.class public Lcom/android/keyguard/MSimKeyguardSimPinView;
.super Lcom/android/keyguard/KeyguardSimPinView;
.source "MSimKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sCancelledCount:I


# instance fields
.field private isWrongPIN:Z

.field private isWrongPINCrash:Z

.field private mHandler:Landroid/os/Handler;

.field private mPM:Landroid/os/PowerManager;

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
    .line 55
    const-string v0, "MSimKeyguardSimPinView"

    sput-object v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MSimKeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    .line 63
    iput v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    .line 64
    iput-boolean v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPIN:Z

    .line 66
    iput-boolean v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPINCrash:Z

    .line 67
    iput v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->old_Num_of_retry:I

    .line 414
    new-instance v0, Lcom/android/keyguard/MSimKeyguardSimPinView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MSimKeyguardSimPinView$5;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView;)V

    iput-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    .line 76
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 77
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DSNETWORK"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSimPinView--DSNETWORK VALUE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "DSNETWORK"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_52
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mPM:Landroid/os/PowerManager;

    .line 81
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/MSimKeyguardSimPinView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPinView;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/MSimKeyguardSimPinView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPinView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/MSimKeyguardSimPinView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPinView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimPinRetry()I

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPinView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPINCrash:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPinView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/MSimKeyguardSimPinView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPinView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->handleTimeout(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/MSimKeyguardSimPinView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPinView;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/MSimKeyguardSimPinView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPinView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPinView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPinView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->closeKeyGuard(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPinView;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPinView;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPinView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPIN:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/MSimKeyguardSimPinView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MSimKeyguardSimPinView;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->old_Num_of_retry:I

    return v0
.end method

.method private closeKeyGuard(Z)V
    .registers 12
    .param p1, "bAuthenticated"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    .line 200
    .local v5, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    const/4 v1, 0x0

    .line 201
    .local v1, "numCardsConfigured":I
    const/4 v3, 0x0

    .line 202
    .local v3, "numPinLocked":I
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 205
    .local v4, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 206
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    .line 211
    .local v2, "numPhones":I
    :goto_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, v2, :cond_43

    .line 212
    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    .line 213
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v6, :cond_25

    .line 214
    add-int/lit8 v3, v3, 0x1

    .line 219
    :cond_25
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v6, :cond_35

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v6, :cond_35

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v6, :cond_35

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v6, :cond_37

    .line 223
    :cond_35
    add-int/lit8 v1, v1, 0x1

    .line 211
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 208
    .end local v0    # "i":I
    .end local v2    # "numPhones":I
    :cond_3a
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .restart local v2    # "numPhones":I
    goto :goto_18

    .line 229
    .restart local v0    # "i":I
    :cond_43
    if-nez p1, :cond_52

    .line 230
    sget v6, Lcom/android/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    add-int/lit8 v7, v1, -0x1

    if-lt v6, v7, :cond_4c

    .line 256
    :goto_4b
    return-void

    .line 233
    :cond_4c
    sget v6, Lcom/android/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    .line 239
    :cond_52
    if-gt v3, v9, :cond_56

    .line 240
    sput v8, Lcom/android/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    .line 245
    :cond_56
    if-nez p1, :cond_5e

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    .line 249
    :cond_5e
    iget v6, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    if-ltz v6, :cond_67

    iget v6, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 250
    :cond_67
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 251
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 252
    invoke-static {v8}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    .line 255
    :cond_7c
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_4b
.end method

.method private getSimPinRetry()I
    .registers 5

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 437
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    .line 439
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 440
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    .line 441
    const-string v1, "phone"

    iget v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSimPinRetry()I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2b} :catch_62

    move-result v0

    .line 450
    :cond_2c
    :goto_2c
    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimPinRetry() mSubscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

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

    .line 451
    return v0

    .line 445
    :cond_51
    :try_start_51
    const-string v1, "phone_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getIccPin1RetryCount(I)I
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_60} :catch_62

    move-result v0

    goto :goto_2c

    .line 448
    :catch_62
    move-exception v1

    goto :goto_2c
.end method

.method private handleTimeout(I)V
    .registers 4
    .param p1, "seq"    # I

    .prologue
    .line 426
    monitor-enter p0

    .line 427
    :try_start_1
    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakelockSequence:I

    if-ne p1, v0, :cond_11

    .line 429
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 431
    :cond_11
    monitor-exit p0

    .line 432
    return-void

    .line 431
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
    .line 104
    const v0, 0x7f0b0056

    return v0
.end method

.method protected getSecurityMessageDisplay(I)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "resId"    # I

    .prologue
    .line 374
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 375
    .local v1, "simSlotNum":I
    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "mSimMode":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 379
    const/4 v1, 0x2

    .line 384
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600d8

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getSecurityMessageDisplay(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 391
    .local v1, "simSlotNum":I
    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "mSimMode":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 395
    const/4 v1, 0x2

    .line 399
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600d8

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected onFinishInflate()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 109
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPinView;->onFinishInflate()V

    .line 110
    const v2, 0x7f0b00c7

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    .line 112
    sget-object v2, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    const-string v3, "onFinishInflate "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const v2, 0x7f0b0062

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, "ok":Landroid/view/View;
    if-eqz v0, :cond_27

    .line 116
    new-instance v2, Lcom/android/keyguard/MSimKeyguardSimPinView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/MSimKeyguardSimPinView$1;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_27
    const v2, 0x7f0b0057

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 129
    .local v1, "pinDelete":Landroid/view/View;
    if-eqz v1, :cond_43

    .line 130
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 131
    new-instance v2, Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/MSimKeyguardSimPinView$2;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    new-instance v2, Lcom/android/keyguard/MSimKeyguardSimPinView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/MSimKeyguardSimPinView$3;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 156
    :cond_43
    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimPinRetry()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    .line 158
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 159
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->filterNum:Landroid/text/InputFilter;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 160
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 163
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 164
    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->updateRetryCount()V

    .line 165
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 174
    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 177
    :cond_1d
    return-void
.end method

.method public pokeWakelock(I)V
    .registers 7
    .param p1, "holdMs"    # I

    .prologue
    .line 404
    monitor-enter p0

    .line 405
    :try_start_1
    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

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

    .line 406
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 407
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 408
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakelockSequence:I

    .line 409
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 410
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 411
    monitor-exit p0

    .line 412
    return-void

    .line 411
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
    .line 471
    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimPinRetry()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    .line 472
    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->updateRetryCount()V

    .line 473
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPinView;->reset()V

    .line 474
    return-void
.end method

.method public resetState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 87
    iget-boolean v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPIN:Z

    if-eqz v0, :cond_27

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f0600a3

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 89
    iput-boolean v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPIN:Z

    .line 96
    :goto_10
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 100
    :cond_26
    return-void

    .line 90
    :cond_27
    iget-boolean v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPINCrash:Z

    if-eqz v0, :cond_36

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x1040885

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 92
    iput-boolean v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPINCrash:Z

    goto :goto_10

    .line 94
    :cond_36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f06009c

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_10
.end method

.method public updateRetryCount()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 455
    const-string v0, ""

    .line 456
    .local v0, "displayMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_42

    .line 457
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    if-ne v1, v3, :cond_43

    .line 458
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060100

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSecurityMessageDisplay(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :goto_2a
    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRetryCount():  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_42
    return-void

    .line 462
    :cond_43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060101

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSecurityMessageDisplay(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a
.end method

.method protected verifyPasswordAndUnlock()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 306
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "entry":Ljava/lang/String;
    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyPasswordAndUnlock(): entry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_45

    .line 311
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x7f0600a4

    invoke-virtual {p0, v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 313
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 371
    :cond_44
    :goto_44
    return-void

    .line 318
    :cond_45
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->old_Num_of_retry:I

    .line 320
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 321
    const v1, 0xea60

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->pokeWakelock(I)V

    .line 323
    iget-boolean v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    if-nez v1, :cond_44

    .line 324
    iput-boolean v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    .line 326
    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    const-string v2, "startCheckSimPin(), Multi SIM enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v1, Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/keyguard/MSimKeyguardSimPinView$4;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView;Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_44
.end method
