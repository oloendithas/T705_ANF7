.class public Lcom/android/keyguard/KeyguardSecurityModel;
.super Ljava/lang/Object;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityModel$2;,
        Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;,
        Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private static sLock:Ljava/lang/Object;

.field private static sPinLock:Ljava/lang/Object;

.field private static sPinUnlocking:Ljava/lang/Boolean;

.field private static sWaitIccId:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    const-string v0, "KeyguardSecurityModel"

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel;->TAG:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardSecurityModel;->sWaitIccId:Z

    .line 114
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel;->sPinUnlocking:Ljava/lang/Boolean;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel;->sPinLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    .line 86
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 88
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 90
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 92
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_43

    .line 93
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityModel$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecurityModel$1;-><init>(Lcom/android/keyguard/KeyguardSecurityModel;)V

    sput-object v1, Lcom/android/keyguard/KeyguardSecurityModel;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.enterprise.ICCID_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.sec.MDM_NOTIFY_ICCID_AVAILABLE"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 106
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_43
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecurityModel;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityModel;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecurityModel;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityModel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->unlockSimPin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel;->sPinLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 1
    .param p0, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 48
    sput-object p0, Lcom/android/keyguard/KeyguardSecurityModel;->sPinUnlocking:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecurityModel;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityModel;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isBiometricUnlockSuppressed()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 143
    .local v1, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_26

    move v0, v2

    .line 145
    .local v0, "backupIsTimedOut":Z
    :goto_10
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v4

    if-nez v4, :cond_24

    if-nez v0, :cond_24

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    if-eqz v4, :cond_25

    :cond_24
    move v3, v2

    :cond_25
    return v3

    .end local v0    # "backupIsTimedOut":Z
    :cond_26
    move v0, v3

    .line 143
    goto :goto_10
.end method

.method private unlockSimPin(Ljava/lang/String;)Z
    .registers 7
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v2, 0x0

    .line 196
    .local v2, "result":Z
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/enterprise/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 199
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getPinCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "pin":Ljava/lang/String;
    :try_start_17
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_24} :catch_26

    move-result v2

    .line 207
    .end local v1    # "pin":Ljava/lang/String;
    :cond_25
    :goto_25
    return v2

    .line 203
    .restart local v1    # "pin":Ljava/lang/String;
    :catch_26
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "EDM"

    const-string v4, "Failed to unlock SIM."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method private unlockSimPinIfNeeded(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 10
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 216
    move-object v2, p1

    .line 217
    .local v2, "result":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel;->sPinLock:Ljava/lang/Object;

    monitor-enter v4

    .line 220
    :try_start_4
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v3, :cond_11

    .line 221
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/android/keyguard/KeyguardSecurityModel;->sPinUnlocking:Ljava/lang/Boolean;

    .line 254
    :cond_f
    :goto_f
    monitor-exit v4

    .line 256
    return-object v2

    .line 224
    :cond_11
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel;->sPinUnlocking:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 225
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_f

    .line 230
    :cond_1c
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/enterprise/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v0

    .line 235
    .local v0, "hasSimcardLockedByAdmin":Z
    if-eqz v0, :cond_f

    .line 237
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "iccId":Ljava/lang/String;
    if-eqz v1, :cond_3d

    .line 239
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->unlockSimPin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    :goto_39
    goto :goto_f

    :cond_3a
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_39

    .line 242
    :cond_3d
    sget-boolean v3, Lcom/android/keyguard/KeyguardSecurityModel;->sWaitIccId:Z

    if-eqz v3, :cond_f

    .line 247
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/keyguard/KeyguardSecurityModel;->sWaitIccId:Z

    .line 248
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/android/keyguard/KeyguardSecurityModel;->sPinUnlocking:Ljava/lang/Boolean;

    .line 249
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 250
    new-instance v3, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;-><init>(Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/keyguard/KeyguardSecurityModel$1;)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Void;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_f

    .line 254
    .end local v0    # "hasSimcardLockedByAdmin":Z
    .end local v1    # "iccId":Ljava/lang/String;
    :catchall_66
    move-exception v3

    monitor-exit v4
    :try_end_68
    .catchall {:try_start_4 .. :try_end_68} :catchall_66

    throw v3
.end method


# virtual methods
.method public getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 3
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->isBiometricUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->isBiometricUnlockSuppressed()Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_18

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_18

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_1a

    .line 399
    :cond_18
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 401
    .end local p1    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_1a
    return-object p1
.end method

.method public getBackupSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 4
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 411
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$2;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 421
    .end local p1    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :goto_b
    return-object p1

    .line 413
    .restart local p1    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    goto :goto_b

    .line 415
    :pswitch_11
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_b

    .line 417
    :pswitch_14
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_b

    .line 419
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSignatureBackupSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    goto :goto_b

    .line 411
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 11

    .prologue
    .line 261
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    .line 262
    .local v6, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    .line 264
    .local v5, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v3, 0x0

    .line 265
    .local v3, "numPhones":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 266
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    .line 270
    :goto_15
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v7

    if-eqz v7, :cond_b4

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b4

    .line 271
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    .line 285
    :cond_2b
    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardSecurityModel;->unlockSimPinIfNeeded(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    .line 287
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v7

    if-eqz v7, :cond_83

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_83

    .line 288
    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSecurityMode() simState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 290
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v5, v7, :cond_83

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v5, v7, :cond_83

    .line 292
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINRequest()Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 293
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 296
    :cond_6b
    :goto_6b
    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSecurityMode() multi-simState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_83
    :goto_83
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 305
    .local v1, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v7, :cond_d2

    .line 306
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 376
    :cond_8b
    :goto_8b
    sget-boolean v7, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v7, :cond_a9

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v7, :cond_a7

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v7, :cond_a7

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v7, :cond_a7

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v7, :cond_a7

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v7, :cond_a7

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v7, :cond_a9

    .line 380
    :cond_a7
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 383
    :cond_a9
    return-object v1

    .line 268
    .end local v1    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_aa
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    goto/16 :goto_15

    .line 273
    :cond_b4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b5
    if-ge v0, v3, :cond_2b

    .line 274
    invoke-virtual {v6, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    .line 278
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v5, v7, :cond_2b

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v5, v7, :cond_2b

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    .line 294
    .end local v0    # "i":I
    :cond_c6
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPUKRequest()Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 295
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_6b

    .line 299
    :cond_cf
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_83

    .line 307
    .restart local v1    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_d2
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v7, :cond_e1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v7

    if-eqz v7, :cond_e1

    .line 309
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_8b

    .line 310
    :cond_e1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSIMPersoFeatureEnable()Z

    move-result v7

    if-eqz v7, :cond_ee

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v7, :cond_ee

    .line 312
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_8b

    .line 313
    :cond_ee
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 314
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_8b

    .line 315
    :cond_f9
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v7

    if-eqz v7, :cond_104

    .line 316
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLockPlus:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_8b

    .line 317
    :cond_104
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled()Z

    move-result v7

    if-eqz v7, :cond_110

    .line 318
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_8b

    .line 319
    :cond_110
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isRecoveryLockEnabled()Z

    move-result v7

    if-eqz v7, :cond_11c

    .line 320
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_8b

    .line 322
    :cond_11c
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    .line 323
    .local v4, "security":I
    sparse-switch v4, :sswitch_data_1cc

    .line 372
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown unlock mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 325
    :sswitch_13e
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v7

    if-eqz v7, :cond_14a

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 327
    :goto_148
    goto/16 :goto_8b

    .line 325
    :cond_14a
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_148

    .line 331
    :sswitch_14d
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v7

    if-eqz v7, :cond_159

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 333
    :goto_157
    goto/16 :goto_8b

    .line 331
    :cond_159
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_157

    .line 337
    :sswitch_15c
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v7

    if-eqz v7, :cond_8b

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 338
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v7

    if-eqz v7, :cond_178

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    :goto_176
    goto/16 :goto_8b

    :cond_178
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_176

    .line 344
    :sswitch_17b
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 345
    .local v2, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v7

    if-eqz v7, :cond_18d

    .line 346
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_8b

    .line 348
    :cond_18d
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v7

    if-eqz v7, :cond_199

    .line 349
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_8b

    .line 351
    :cond_199
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 353
    goto/16 :goto_8b

    .line 355
    .end local v2    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :sswitch_19d
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v7

    if-eqz v7, :cond_1b4

    .line 356
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v7

    if-eqz v7, :cond_1b1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    :goto_1af
    goto/16 :goto_8b

    :cond_1b1
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_1af

    .line 359
    :cond_1b4
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 361
    goto/16 :goto_8b

    .line 363
    :sswitch_1b8
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 364
    goto/16 :goto_8b

    .line 367
    :sswitch_1bc
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v7

    if-eqz v7, :cond_1c8

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 369
    :goto_1c6
    goto/16 :goto_8b

    .line 367
    :cond_1c8
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_1c6

    .line 323
    nop

    :sswitch_data_1cc
    .sparse-switch
        0x0 -> :sswitch_15c
        0x9000 -> :sswitch_1b8
        0x9100 -> :sswitch_17b
        0x10000 -> :sswitch_15c
        0x11000 -> :sswitch_19d
        0x20000 -> :sswitch_13e
        0x40000 -> :sswitch_14d
        0x50000 -> :sswitch_14d
        0x60000 -> :sswitch_14d
        0x70000 -> :sswitch_1bc
        0x90000 -> :sswitch_17b
    .end sparse-switch
.end method

.method public getSignatureBackupSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 2

    .prologue
    .line 425
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method isBiometricUnlockEnabled()Z
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 126
    return-void
.end method
