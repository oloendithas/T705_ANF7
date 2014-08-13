.class public Lcom/android/contacts/VoLTEStateTracker;
.super Ljava/lang/Object;
.source "VoLTEStateTracker.java"


# static fields
.field private static final ACTION_VOLTE_STATE:Ljava/lang/String; = "com.samsung.volte.state"

.field private static final PROPERTY_IMS_REGISTERED:Ljava/lang/String; = "persist.sys.ims.reg"

.field private static final PROPERTY_IMS_VOLTE_SUPPORTED:Ljava/lang/String; = "persist.sys.ims.volte_supported"

.field private static final TAG:Ljava/lang/String; = "VolteStateTracker"

.field private static final VOICECALL_TYPE_CS:I = 0x1

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VoLTE:I = 0x0

.field private static final VOICECALL_TYPE_WB_AMR:I = 0x2


# instance fields
.field private isVolteEnabled:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIIMSListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mListener:Lcom/android/contacts/OnVoLTEStateChangedListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistrationStateObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled:Z

    .line 78
    new-instance v0, Lcom/android/contacts/VoLTEStateTracker$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/VoLTEStateTracker$1;-><init>(Lcom/android/contacts/VoLTEStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/VoLTEStateTracker;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/VoLTEStateTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/VoLTEStateTracker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/VoLTEStateTracker;)Lcom/android/contacts/OnVoLTEStateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/VoLTEStateTracker;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/contacts/VoLTEStateTracker;->mListener:Lcom/android/contacts/OnVoLTEStateChangedListener;

    return-object v0
.end method

.method private isFlightMode(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 361
    const/4 v1, 0x0

    .line 364
    .local v1, "flightMode":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 365
    const-string v5, "VolteStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flightmodecheck is on = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v2, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_1
    if-ne v1, v2, :cond_1

    :goto_2
    return v2

    :cond_0
    move v4, v3

    .line 365
    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    move v2, v3

    .line 372
    goto :goto_2
.end method

.method private isSupportVoLTE(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    .line 377
    .local v0, "available":Z
    return v0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 281
    new-instance v1, Lcom/android/contacts/VoLTEStateTracker$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/VoLTEStateTracker$3;-><init>(Lcom/android/contacts/VoLTEStateTracker;)V

    iput-object v1, p0, Lcom/android/contacts/VoLTEStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 292
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 293
    .local v0, "regFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.volte.state"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v1, "feature_wb_amr"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/VoLTEStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    return-void
.end method

.method private registerIIMSListener()V
    .locals 4

    .prologue
    .line 252
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 254
    .local v1, "imsInterface":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    if-nez v1, :cond_0

    .line 255
    const-string v2, "VolteStateTracker"

    const-string v3, "registerIIMSListener - imsInterface is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v2, Lcom/android/contacts/VoLTEStateTracker$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/VoLTEStateTracker$2;-><init>(Lcom/android/contacts/VoLTEStateTracker;)V

    iput-object v2, p0, Lcom/android/contacts/VoLTEStateTracker;->mIIMSListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 271
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/VoLTEStateTracker;->mIIMSListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    .line 272
    const-string v2, "VolteStateTracker"

    const-string v3, "IIMS Listener register registered"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e1":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    const-string v2, "VolteStateTracker"

    const-string v3, "IIMS Listener register failed"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isVoLteEnabled(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 352
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0, p2}, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 357
    :goto_0
    return v1

    .line 356
    :cond_0
    const-string v1, "VolteStateTracker"

    const-string v2, "isVoLteEnabled : intent > extra is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVolteEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public isVolteEnabled(Landroid/content/Context;Z)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "includeWbAmr"    # Z

    .prologue
    .line 99
    const-string v10, "VolteStateTracker"

    const-string v11, "isVolteEnabled api called"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    instance-of v10, p1, Landroid/content/ContextWrapper;

    if-eqz v10, :cond_2

    .line 101
    check-cast p1, Landroid/content/ContextWrapper;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    .line 112
    :goto_0
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, "salesCode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 114
    .local v0, "default_value":I
    const-string v10, "SKT"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 115
    const/4 v0, 0x1

    .line 121
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "voicecall_type"

    invoke-static {v10, v11, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 122
    .local v9, "voicecall_type":I
    iget-object v10, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 123
    .local v8, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_5

    const/4 v3, 0x1

    .line 125
    .local v3, "isLTEConnected":Z
    :goto_2
    const-string v10, "VolteStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Voice Call Setting = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v10, "VolteStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isLTEConnected - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz p2, :cond_7

    const-string v10, "feature_wb_amr"

    invoke-static {v10}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 131
    if-eqz v9, :cond_1

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 133
    :cond_1
    :try_start_0
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 134
    .local v5, "phone":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I

    move-result v7

    .line 135
    .local v7, "serviceState":I
    const-string v10, "VolteStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "serviceState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-nez v7, :cond_6

    iget-object v10, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcom/android/contacts/VoLTEStateTracker;->isFlightMode(Landroid/content/Context;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-nez v10, :cond_6

    .line 137
    const/4 v10, 0x1

    .line 194
    .end local v5    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v7    # "serviceState":I
    :goto_3
    return v10

    .line 103
    .end local v0    # "default_value":I
    .end local v3    # "isLTEConnected":Z
    .end local v6    # "salesCode":Ljava/lang/String;
    .end local v8    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v9    # "voicecall_type":I
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    goto/16 :goto_0

    .line 116
    .end local p1    # "context":Landroid/content/Context;
    .restart local v0    # "default_value":I
    .restart local v6    # "salesCode":Ljava/lang/String;
    :cond_3
    const-string v10, "KTT"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 117
    const/4 v0, 0x2

    goto/16 :goto_1

    .line 118
    :cond_4
    const-string v10, "LGT"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 119
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 123
    .restart local v8    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v9    # "voicecall_type":I
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 139
    .restart local v3    # "isLTEConnected":Z
    .restart local v5    # "phone":Lcom/android/internal/telephony/ITelephony;
    .restart local v7    # "serviceState":I
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 141
    .end local v5    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v7    # "serviceState":I
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Landroid/os/RemoteException;
    const-string v10, "VolteStateTracker"

    const-string v11, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v10, v11}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7
    :goto_4
    const-string v10, "VolteStateTracker"

    const-string v11, "in previous volte checking method"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v10, "true"

    const-string v11, "persist.sys.ims.reg"

    const-string v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 182
    .local v2, "isImsRegistered":Z
    const-string v10, "persist.sys.ims.volte_supported"

    const-string v11, "-1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 184
    .local v4, "isVolteSupported":I
    const-string v10, "VolteStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Is Ims registered = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v10, "VolteStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVolteSupported = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-eqz v2, :cond_9

    if-nez v4, :cond_9

    if-nez v9, :cond_9

    if-eqz v3, :cond_9

    .line 188
    const-string v10, "VolteStateTracker"

    const-string v11, "Volte is Enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 143
    .end local v2    # "isImsRegistered":Z
    .end local v4    # "isVolteSupported":I
    :catch_1
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    const-string v10, "VolteStateTracker"

    const-string v11, "Volte is Disabled"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 193
    .restart local v2    # "isImsRegistered":Z
    .restart local v4    # "isVolteSupported":I
    :cond_9
    const-string v10, "VolteStateTracker"

    const-string v11, "Volte is Disabled"

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v10, 0x0

    goto/16 :goto_3
.end method

.method public startTracking(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 198
    const-string v1, "VolteStateTracker"

    const-string v2, "startTracking"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 201
    check-cast p1, Landroid/content/ContextWrapper;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    .line 205
    :goto_0
    iput-object p2, p0, Lcom/android/contacts/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 208
    .local v0, "regFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.volte.state"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v1, "feature_wb_amr"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    return-void

    .line 203
    .end local v0    # "regFilter":Landroid/content/IntentFilter;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public startTracking(Landroid/content/Context;Lcom/android/contacts/OnVoLTEStateChangedListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/OnVoLTEStateChangedListener;

    .prologue
    .line 223
    const-string v0, "VolteStateTracker"

    const-string v1, "startTracking"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    .line 226
    check-cast p1, Landroid/content/ContextWrapper;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    .line 230
    :goto_0
    iput-object p2, p0, Lcom/android/contacts/VoLTEStateTracker;->mListener:Lcom/android/contacts/OnVoLTEStateChangedListener;

    .line 240
    invoke-direct {p0}, Lcom/android/contacts/VoLTEStateTracker;->registerBroadcastReceiver()V

    .line 249
    return-void

    .line 228
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public stopTracking()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 302
    const-string v0, "VolteStateTracker"

    const-string v1, "stopTracking"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/contacts/VoLTEStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/VoLTEStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 330
    const-string v0, "VolteStateTracker"

    const-string v1, "unregisterReceiver - new version"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 335
    const-string v0, "VolteStateTracker"

    const-string v1, "unregisterReceiver - old version"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1
    iput-object v2, p0, Lcom/android/contacts/VoLTEStateTracker;->mContext:Landroid/content/Context;

    .line 344
    iput-object v2, p0, Lcom/android/contacts/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 345
    iput-object v2, p0, Lcom/android/contacts/VoLTEStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    iput-object v2, p0, Lcom/android/contacts/VoLTEStateTracker;->mIIMSListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 347
    return-void
.end method
