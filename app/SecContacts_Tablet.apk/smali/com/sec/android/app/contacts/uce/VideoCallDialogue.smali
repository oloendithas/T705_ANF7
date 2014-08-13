.class public Lcom/sec/android/app/contacts/uce/VideoCallDialogue;
.super Ljava/lang/Object;
.source "VideoCallDialogue.java"


# static fields
.field public static DATA_DISABLED:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "mjs VoiceCallDialogue"

.field public static VIDEO_DISABLED:Ljava/lang/String; = null

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VoLTE:I

.field public static VOICE_CALL_OVER_LTE:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final MOBILE_DATA_DISABLED:I

.field private final VIDEO_CALL_DISABLED:I

.field private final VOICE_CALL_OVER_LTE_DISABLED:I

.field private mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private mPhonenumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mPhonenumber"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->VOICE_CALL_OVER_LTE_DISABLED:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->VIDEO_CALL_DISABLED:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->MOBILE_DATA_DISABLED:I

    .line 43
    iput-object p1, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mPhonenumber:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->enableVoiceOverLTE()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->isVideoCallEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->placeVideoCall()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->enableVideoCall()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/uce/VideoCallDialogue;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->enableMobileData(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->isVoiceOverLTEEnabled()Z

    move-result v0

    return v0
.end method

.method private enableMobileData(Z)V
    .locals 11
    .param p1, "enabled"    # Z

    .prologue
    .line 354
    sget-object v7, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 357
    .local v0, "conman":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 360
    .local v1, "conmanClass":Ljava/lang/Class;
    const-string v7, "mService"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 363
    .local v5, "iConnectivityManagerField":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 365
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 368
    .local v3, "iConnectivityManager":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 371
    .local v4, "iConnectivityManagerClass":Ljava/lang/Class;
    const-string v7, "setMobileDataEnabled"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 374
    .local v6, "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 377
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 387
    .end local v1    # "conmanClass":Ljava/lang/Class;
    .end local v3    # "iConnectivityManager":Ljava/lang/Object;
    .end local v4    # "iConnectivityManagerClass":Ljava/lang/Class;
    .end local v5    # "iConnectivityManagerField":Ljava/lang/reflect/Field;
    .end local v6    # "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v2

    .line 379
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v7, "mjs VoiceCallDialogue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 382
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v7, "mjs VoiceCallDialogue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception illegal Access "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 385
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "mjs VoiceCallDialogue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception Generic"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableVideoCall()V
    .locals 3

    .prologue
    .line 340
    iget-object v1, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallEnable()V

    .line 343
    const/4 v0, 0x1

    .line 344
    .local v0, "volteVTEnabled":I
    sget-object v1, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volteVTEnabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 346
    const-string v1, "mjs VoiceCallDialogue"

    const-string v2, "enabling video over LTE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v0    # "volteVTEnabled":I
    :cond_0
    return-void
.end method

.method private enableVoiceOverLTE()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 292
    iget-object v1, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_1

    .line 294
    const-string v1, "mjs VoiceCallDialogue"

    const-string v2, "enabling voice over LTE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-object v1, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voicecall_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureEnable()V

    .line 299
    sget-object v1, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volteVTEnabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 301
    .local v0, "volteVTEnabled":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallEnable()V

    .line 308
    .end local v0    # "volteVTEnabled":I
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const-string v1, "mjs VoiceCallDialogue"

    const-string v2, "enabling voice over LTE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isDataEnabled(Landroid/content/Context;)Z
    .locals 10
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 391
    const/4 v3, 0x0

    .line 392
    .local v3, "haveConnectedWifi":Z
    const/4 v2, 0x0

    .line 394
    .local v2, "haveConnectedMobile":Z
    const-string v8, "connectivity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 397
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 398
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v6

    .line 399
    .local v6, "netInfo":[Landroid/net/NetworkInfo;
    move-object v0, v6

    .local v0, "arr$":[Landroid/net/NetworkInfo;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v7, v0, v4

    .line 400
    .local v7, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WIFI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 401
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 402
    const/4 v3, 0x1

    .line 403
    :cond_0
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MOBILE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 404
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 405
    const/4 v2, 0x1

    .line 399
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 408
    .end local v0    # "arr$":[Landroid/net/NetworkInfo;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "netInfo":[Landroid/net/NetworkInfo;
    .end local v7    # "ni":Landroid/net/NetworkInfo;
    :cond_2
    return v2
.end method

.method private isVideoCallEnabled()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLTEVideoCallEnabled()Z

    move-result v0

    .line 335
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceOverLTEEnabled()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 312
    const/4 v2, 0x0

    .line 313
    .local v2, "isVolteEnabled":Z
    iget-object v5, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v5, :cond_0

    .line 314
    sget-object v5, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_type"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 317
    .local v3, "voicecallTypeValue":I
    iget-object v5, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v5}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isVoLTEFeatureEnabled()Z

    move-result v0

    .line 319
    .local v0, "isImsVoLTEEnabled":Z
    iget-object v5, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v5}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLTEVideoCallEnabled()Z

    move-result v1

    .line 321
    .local v1, "isImsVoLTEVideoEnabled":Z
    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 323
    :goto_0
    const-string v4, "mjs VoiceCallDialogue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isImsVoLTEEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isImsVoLTEVideoEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isVoLTEEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v0    # "isImsVoLTEEnabled":Z
    .end local v1    # "isImsVoLTEVideoEnabled":Z
    .end local v3    # "voicecallTypeValue":I
    :cond_0
    return v2

    .restart local v0    # "isImsVoLTEEnabled":Z
    .restart local v1    # "isImsVoLTEVideoEnabled":Z
    .restart local v3    # "voicecallTypeValue":I
    :cond_1
    move v2, v4

    .line 321
    goto :goto_0
.end method

.method private static makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 270
    move-object v0, p0

    .line 272
    .local v0, "aa":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 273
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_0
    :goto_1
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 276
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 278
    :cond_1
    :goto_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 279
    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 281
    :cond_2
    :goto_3
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 282
    const-string v1, "("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 284
    :cond_3
    :goto_4
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 285
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 287
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private placeVideoCall()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 239
    iget-object v2, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mPhonenumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    const-string v2, "mjs VoiceCallDialogue"

    const-string v3, "In placeVideoCall method"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v2, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mPhonenumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "number":Ljava/lang/String;
    const/4 v0, 0x0

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mPhonenumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "sip"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 253
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const-string v2, "videocall"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    sget-object v2, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 261
    const-string v2, "mjs VoiceCallDialogue"

    const-string v3, "Out placeVideoCall method"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "number":Ljava/lang/String;
    :goto_1
    return-void

    .line 249
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "number":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 264
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "number":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;

    const-string v3, "Enter Valid Number"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public showVideoCallDialogue(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "ID"    # I

    .prologue
    const v3, 0x7f0e04f8

    const v2, 0x7f0e02d4

    .line 50
    sput-object p1, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;

    .line 51
    sget-object v0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;

    const v1, 0x7f0e03c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->VOICE_CALL_OVER_LTE:Ljava/lang/String;

    .line 53
    const/4 v0, 0x7

    sget-object v1, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v0, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mIMSInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 55
    packed-switch p2, :pswitch_data_0

    .line 232
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 63
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->VOICE_CALL_OVER_LTE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$2;-><init>(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$1;-><init>(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e03c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$4;-><init>(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$3;-><init>(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 182
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e04ee

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$6;-><init>(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$5;-><init>(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
