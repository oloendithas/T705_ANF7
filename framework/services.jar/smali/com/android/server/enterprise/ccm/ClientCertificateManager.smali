.class public Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.super Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;
.source "ClientCertificateManager.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;,
        Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final KNOX_CCM_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CCM"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private final TZ_CCM_SUCCESS:J

.field private mContext:Landroid/content/Context;

.field private mDefaultCertAlias:Ljava/lang/String;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsTimaVersion30:Z

.field private mPersonaMgr:Landroid/os/PersonaManager;

.field private mPersonaObr:Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

.field private mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotCount:I

.field private final mTimaService:Landroid/service/tima/ITimaService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    .line 108
    const-string v0, "ClientCertificateManager Service"

    sput-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 132
    invoke-direct {p0}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;-><init>()V

    .line 110
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    .line 111
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 112
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 113
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    .line 114
    new-instance v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

    invoke-direct {v4, p0, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;)V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObr:Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

    .line 115
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    .line 116
    iput v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 117
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    .line 119
    const-string/jumbo v4, "tima"

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TIMA_SERVICE:Ljava/lang/String;

    .line 123
    iput-boolean v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    .line 128
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TZ_CCM_SUCCESS:J

    .line 1711
    new-instance v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 134
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "ClientCertificateManager Constructor"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    .line 136
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 137
    const-string/jumbo v4, "tima"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setupIntentFilters()V

    .line 141
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    .line 143
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObr:Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    .line 145
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v4, v7}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    .line 146
    .local v3, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_1

    .line 147
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 148
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    iget v4, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->registerPersonaObserver(I)V

    goto :goto_0

    .line 151
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v4

    iput v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 154
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v4, :cond_3

    .line 156
    :try_start_0
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_2

    .line 157
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "Called TIMA service getTimaVersion"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v4}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_3
    :goto_1
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->registerPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->unregisterPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfile(I)Z

    move-result v0

    return v0
.end method

.method static native ccm_create_slot(IIILjava/lang/String;)J
.end method

.method static native ccm_delete_certificate(IILjava/lang/String;)J
.end method

.method static native ccm_delete_csr_profile(IILjava/lang/String;)J
.end method

.method static native ccm_delete_slot(II)J
.end method

.method static native ccm_gen_csr_using_template(IILjava/lang/String;Ljava/lang/String;[B)[B
.end method

.method static native ccm_generate_csr(IILjava/lang/String;)[B
.end method

.method static native ccm_get_error_message(J)Ljava/lang/String;
.end method

.method static native ccm_install_certificate(IIZZLjava/lang/String;[BLjava/lang/String;)J
.end method

.method static native ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;)J
.end method

.method static native ccm_manage_exempt_list(ZIII)J
.end method

.method static native ccm_set_csr_profile(IILjava/lang/String;I[BI)J
.end method

.method static native ccm_update_lock_status(IIZ)J
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 1702
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1707
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1703
    :catch_0
    move-exception v0

    .line 1704
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1705
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private convertToPem([B)[B
    .locals 10
    .param p1, "certBytes"    # [B

    .prologue
    const/4 v7, 0x0

    .line 1910
    const/4 v5, 0x0

    .line 1911
    .local v5, "pemBytes":[B
    const/4 v1, 0x0

    .line 1913
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-nez p1, :cond_0

    .line 1914
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v8, "convertToPem failed - Invalid arguments"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 1937
    :goto_0
    return-object v6

    .line 1919
    :cond_0
    :try_start_0
    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 1921
    .local v2, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1922
    .local v4, "in":Ljava/io/InputStream;
    invoke-virtual {v2, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1929
    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/security/cert/Certificate;

    const/4 v8, 0x0

    aput-object v1, v6, v8

    invoke-static {v6}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    move-object v6, v5

    .line 1937
    goto :goto_0

    .line 1923
    .end local v2    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 1924
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convertToPem failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 1925
    goto :goto_0

    .line 1930
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 1931
    .local v3, "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v8, "Could not convert to PEM"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 1932
    goto :goto_0

    .line 1933
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 1934
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v8, "Could not convert to PEM"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 1935
    goto :goto_0
.end method

.method private deleteCCMProfile(I)Z
    .locals 9
    .param p1, "containerId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 841
    iget-boolean v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v5, :cond_1

    .line 842
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 843
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "deleteCCMProfile - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_0
    :goto_0
    return v3

    .line 849
    :cond_1
    const-wide/16 v5, 0x0

    invoke-static {v3, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 850
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 851
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "in deleteCCMProfile - native ccm_delete_slot failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 856
    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v5, "uid"

    aput-object v5, v1, v3

    .line 857
    .local v1, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "contId":Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    .line 859
    .local v2, "sValues":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ClientCertificateManagerTable"

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 862
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v3

    iput v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    move v3, v4

    .line 864
    goto :goto_0
.end method

.method private deleteCCMProfileUsingAdminId(II)Z
    .locals 9
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 811
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_1

    .line 812
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 813
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "deleteCCMProfileUsingAdminId - TIMA version does not include CCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_0
    :goto_0
    return v2

    .line 819
    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 820
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 821
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "in deleteCCMProfileUsingAdminId - native ccm_delete_slot failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 827
    :cond_2
    new-array v0, v8, [Ljava/lang/String;

    const-string v4, "adminUid"

    aput-object v4, v0, v2

    const-string/jumbo v4, "uid"

    aput-object v4, v0, v3

    .line 828
    .local v0, "sColumns":[Ljava/lang/String;
    new-array v1, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 831
    .local v1, "sValues":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ClientCertificateManagerTable"

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 834
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    move v2, v3

    .line 836
    goto :goto_0
.end method

.method private deleteCertificateProfile(I)Z
    .locals 9
    .param p1, "containerId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1009
    iget-boolean v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v5, :cond_1

    .line 1010
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 1011
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "deleteCertificateProfile - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_0
    :goto_0
    return v3

    .line 1017
    :cond_1
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v3, p1, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 1018
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 1019
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "in deleteCertificateProfile - native ccm_delete_certificate failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1024
    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v5, "uid"

    aput-object v5, v1, v3

    .line 1025
    .local v1, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "contId":Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    .line 1027
    .local v2, "sValues":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move v3, v4

    .line 1029
    goto :goto_0
.end method

.method private deleteCertificateProfileUsingAdminId(II)Z
    .locals 11
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 980
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 981
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v7, "in deleteCertificateProfileUsingAdminId"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v6, :cond_2

    .line 984
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 985
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "deleteCertificateProfileUsingAdminId - TIMA version does not include CCM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_1
    :goto_0
    return v4

    .line 991
    :cond_2
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static {p1, p2, v8}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 993
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 994
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "in deleteCertificateProfileUsingAdminId - native ccm_delete_certificate failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 999
    :cond_3
    new-array v2, v10, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v2, v4

    const-string/jumbo v6, "uid"

    aput-object v6, v2, v5

    .line 1000
    .local v2, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, "adminId":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1002
    .local v1, "contId":Ljava/lang/String;
    new-array v3, v10, [Ljava/lang/String;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    .line 1003
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMCertTable"

    invoke-virtual {v4, v6, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move v4, v5

    .line 1005
    goto :goto_0
.end method

.method private deleteCertificateUsingAdminId(IIILjava/lang/String;)Z
    .locals 9
    .param p1, "callerUid"    # I
    .param p2, "adminUid"    # I
    .param p3, "userId"    # I
    .param p4, "alias"    # Ljava/lang/String;

    .prologue
    .line 949
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 950
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "in deleteCertificateUsingAdminId"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v5, :cond_2

    .line 953
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 954
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "deleteCertificateUsingAdminId - TIMA version does not include CCM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_1
    const/4 v5, 0x0

    .line 975
    :goto_0
    return v5

    .line 960
    :cond_2
    const-wide/16 v5, 0x0

    invoke-static {p2, p3, p4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    .line 961
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_3

    .line 962
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "in deleteCertificateUsingAdminId - native ccm_delete_certificate failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 967
    :cond_4
    const/4 v5, 0x4

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "adminUid"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "uid"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "alias"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "installerId"

    aput-object v6, v3, v5

    .line 969
    .local v3, "sColumns":[Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "adminId":Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 971
    .local v1, "contId":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, "installerId":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object p4, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 973
    .local v4, "sValues":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMCertTable"

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 975
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_CCM"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 191
    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    .line 193
    return-object p1
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)V
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 177
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_CCM"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_0
.end method

.method private getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;I)I
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "userId"    # I

    .prologue
    .line 1947
    const/4 v1, -0x1

    .line 1948
    .local v1, "adminId":I
    const/4 v3, 0x0

    .line 1956
    .local v3, "caller":Ljava/lang/String;
    const/4 v14, 0x2

    :try_start_0
    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "uid"

    aput-object v15, v10, v14

    const/4 v14, 0x1

    const-string v15, "pkgName"

    aput-object v15, v10, v14

    .line 1958
    .local v10, "sColumns":[Ljava/lang/String;
    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "adminUid"

    aput-object v15, v11, v14

    .line 1959
    .local v11, "sReturnColumns":[Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1960
    .local v13, "userIdString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 1963
    .local v9, "pkgNames":[Ljava/lang/String;
    move-object v2, v9

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v8, v2, v6

    .line 1964
    .local v8, "pkgName":Ljava/lang/String;
    const/4 v14, 0x2

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v14, 0x1

    aput-object v8, v12, v14

    .line 1966
    .local v12, "sValues":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "ClientCertificateManagerTable"

    invoke-virtual {v14, v15, v10, v12, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1969
    .local v4, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_3

    .line 1970
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    const-string v15, "adminUid"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1980
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "pkgNames":[Ljava/lang/String;
    .end local v10    # "sColumns":[Ljava/lang/String;
    .end local v11    # "sReturnColumns":[Ljava/lang/String;
    .end local v12    # "sValues":[Ljava/lang/String;
    .end local v13    # "userIdString":Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v14, -0x1

    if-ne v14, v1, :cond_2

    .line 1981
    const/4 v14, 0x2

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "uid"

    aput-object v15, v10, v14

    const/4 v14, 0x1

    const-string v15, "allowAllPkgs"

    aput-object v15, v10, v14

    .line 1983
    .restart local v10    # "sColumns":[Ljava/lang/String;
    const/4 v14, 0x2

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    .line 1985
    .restart local v12    # "sValues":[Ljava/lang/String;
    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "adminUid"

    aput-object v15, v11, v14

    .line 1987
    .restart local v11    # "sReturnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "ClientCertificateManagerTable"

    invoke-virtual {v14, v15, v10, v12, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1990
    .restart local v4    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_1

    .line 1991
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    const-string v15, "adminUid"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1995
    :cond_1
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_2

    .line 1996
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAdminIdForCaller - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    .end local v4    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v10    # "sColumns":[Ljava/lang/String;
    .end local v11    # "sReturnColumns":[Ljava/lang/String;
    .end local v12    # "sValues":[Ljava/lang/String;
    :cond_2
    return v1

    .line 1963
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "pkgName":Ljava/lang/String;
    .restart local v9    # "pkgNames":[Ljava/lang/String;
    .restart local v10    # "sColumns":[Ljava/lang/String;
    .restart local v11    # "sReturnColumns":[Ljava/lang/String;
    .restart local v12    # "sValues":[Ljava/lang/String;
    .restart local v13    # "userIdString":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1975
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "pkgNames":[Ljava/lang/String;
    .end local v10    # "sColumns":[Ljava/lang/String;
    .end local v11    # "sReturnColumns":[Ljava/lang/String;
    .end local v12    # "sValues":[Ljava/lang/String;
    .end local v13    # "userIdString":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1976
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getErrorMessage(J)Ljava/lang/String;
    .locals 1
    .param p1, "errorCode"    # J

    .prologue
    .line 1942
    invoke-static {p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_get_error_message(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageUid(ILjava/lang/String;)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 1649
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 1650
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "in getPackageUid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1654
    if-nez p2, :cond_2

    .line 1655
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    .line 1656
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "getPackageUid - Invalid Arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_1
    :goto_0
    return v2

    .line 1660
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_3

    .line 1661
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "getPackageUid - Invalid Context "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1665
    :cond_3
    const/4 v1, 0x0

    .line 1667
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1669
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1670
    :catch_0
    move-exception v0

    .line 1671
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    .line 1672
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in getPackageUid - Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSlotCount()I
    .locals 5

    .prologue
    .line 1848
    const/4 v1, 0x0

    .line 1852
    .local v1, "slotCount":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ClientCertificateManagerTable"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1858
    :goto_0
    return v1

    .line 1854
    :catch_0
    move-exception v0

    .line 1855
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getValidString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1691
    if-nez p0, :cond_1

    .line 1696
    :cond_0
    :goto_0
    return-object v1

    .line 1691
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 1693
    :catch_0
    move-exception v0

    .line 1694
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static native get_ccm_version()Ljava/lang/String;
.end method

.method static native get_default_cert_alias()Ljava/lang/String;
.end method

.method private insertOrUpdateCCMProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;J)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CCMProfile;
    .param p3, "slotId"    # J

    .prologue
    .line 735
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_0

    .line 736
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v11, "in insertOrUpdateCCMProfile"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_0
    const/4 v6, 0x1

    .line 739
    .local v6, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 742
    .local v9, "userId":I
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_1

    .line 743
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AdminId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ContainerId -  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " UserId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " whiteListAllPackages - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p2, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_1
    const/4 v10, 0x2

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "uid"

    aput-object v11, v7, v10

    .line 749
    .local v7, "sColumns":[Ljava/lang/String;
    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "adminId":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, "contId":Ljava/lang/String;
    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v8, v10

    const/4 v10, 0x1

    aput-object v1, v8, v10

    .line 753
    .local v8, "sValues":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 757
    iget-boolean v10, p2, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    if-eqz v10, :cond_3

    .line 759
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 760
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 762
    const-string v10, "accessType"

    iget-object v11, p2, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v11}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v10, "pinLen"

    iget v11, p2, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiPinLength:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 765
    const-string/jumbo v10, "slotId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 766
    const-string v10, "allowAllPkgs"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 768
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 769
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 772
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v6

    .line 774
    const/4 v10, 0x1

    if-eq v10, v6, :cond_2

    .line 775
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_2

    .line 776
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v11, "insertOrUpdateCCMProfile whiteListAllPackages - DB operation failed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    :cond_2
    :goto_0
    return v6

    .line 781
    :cond_3
    iget-object v10, p2, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 782
    .local v5, "pkg":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 783
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 784
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 785
    const-string v10, "accessType"

    iget-object v11, p2, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v11}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v10, "pinLen"

    iget v11, p2, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiPinLength:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 788
    const-string/jumbo v10, "slotId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 789
    const-string v10, "pkgName"

    invoke-virtual {v2, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 792
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 793
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 794
    const-string v10, "pkgName"

    invoke-virtual {v3, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "ClientCertificateManagerTable"

    invoke-virtual {v11, v12, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v11

    if-eq v10, v11, :cond_4

    .line 798
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_5

    .line 799
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v11, "insertOrUpdateCCMProfile packages - DB operation failed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_5
    const/4 v6, 0x0

    .line 802
    goto/16 :goto_0
.end method

.method private insertOrUpdateCertificateProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;II)Z
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .param p3, "adminId"    # I
    .param p4, "userId"    # I

    .prologue
    .line 869
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_0

    .line 870
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v12, "in insertOrUpdateCertificateProfile"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_0
    const/4 v10, 0x1

    .line 874
    .local v10, "ret":Z
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InstallerId - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ContainerId - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " allowAllPackages - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-boolean v13, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AdminId - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    if-eqz v11, :cond_2

    .line 879
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 880
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v11, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 881
    const-string/jumbo v11, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 882
    const-string v11, "alias"

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v11, "allowAllPkgs"

    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 884
    const-string v11, "allowWiFi"

    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 885
    const-string v11, "installerId"

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 887
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 888
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v11, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 889
    const-string/jumbo v11, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 890
    const-string v11, "alias"

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v11, "installerId"

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 893
    iget-object v11, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "CCMCertTable"

    invoke-virtual {v11, v12, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v10

    .line 944
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    :cond_1
    :goto_0
    return v10

    .line 900
    :cond_2
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    if-nez v11, :cond_4

    .line 901
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_3

    .line 902
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v12, "insertOrUpdateCertificateProfile - Invalid Package list"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iput-object v11, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    .line 908
    :cond_4
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 911
    .local v9, "pkgNames":[Ljava/lang/String;
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v8, v1, v5

    .line 912
    .local v8, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 914
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "pkgNames":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 915
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 918
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 919
    .local v7, "pkg":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 920
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v11, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 921
    const-string/jumbo v11, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 922
    const-string v11, "alias"

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v11, "pkgName"

    invoke-virtual {v2, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const-string v11, "allowWiFi"

    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 925
    const-string v11, "installerId"

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 927
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 928
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    const-string v11, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 929
    const-string/jumbo v11, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 930
    const-string v11, "alias"

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v11, "pkgName"

    invoke-virtual {v3, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v11, "installerId"

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 934
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "CCMCertTable"

    invoke-virtual {v12, v13, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v12

    if-eq v11, v12, :cond_6

    .line 936
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_7

    .line 937
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v12, "insertOrUpdateCertificateProfile - DB operation failed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_7
    const/4 v10, 0x0

    .line 940
    goto/16 :goto_0
.end method

.method private registerPersonaObserver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1789
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1790
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1791
    new-instance v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V

    .line 1792
    .local v0, "observer":Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1, v0}, Landroid/os/PersonaManager;->registerObserver(ILandroid/content/pm/IPersonaObserver;)V

    .line 1793
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    .end local v0    # "observer":Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
    :cond_0
    return-void
.end method

.method private setupIntentFilters()V
    .locals 3

    .prologue
    .line 1679
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 1680
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "in setupIntentFilters"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1682
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1683
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1684
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1685
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1686
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1687
    return-void
.end method

.method private unregisterPersonaObserver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1799
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;

    .line 1801
    .local v0, "observer":Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
    if-eqz v0, :cond_0

    .line 1802
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v1, v0}, Landroid/os/PersonaManager;->unregisterObserver(Landroid/content/pm/IPersonaObserver;)V

    .line 1803
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    :cond_0
    return-void
.end method

.method private updateLockStatus(IZZ)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "isContainerClbk"    # Z
    .param p3, "lock"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1866
    const/4 v1, 0x0

    .line 1867
    .local v1, "isLocked":Z
    const/4 v3, 0x0

    .line 1869
    .local v3, "rowCount":I
    iget-boolean v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v5, :cond_1

    .line 1870
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 1871
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateLockStatus - TIMA version does not include CCM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_0
    :goto_0
    return v4

    .line 1878
    :cond_1
    :try_start_0
    iget v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    if-lez v5, :cond_0

    .line 1883
    if-eqz p2, :cond_2

    .line 1888
    const/4 v4, 0x0

    invoke-static {v4, p1, p3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_update_lock_status(IIZ)J

    .line 1906
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1892
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 1894
    .local v2, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    .line 1900
    const/4 v4, 0x0

    invoke-static {v4, p1, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_update_lock_status(IIZ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1903
    .end local v2    # "km":Landroid/app/KeyguardManager;
    :catch_0
    move-exception v0

    .line 1904
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private validatePackageList(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 670
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_0

    .line 671
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v11, "in validatePackageList"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 677
    .local v7, "userId":I
    const/4 v5, 0x0

    .line 678
    .local v5, "rowCount":I
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 681
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 682
    .local v0, "adminId":Ljava/lang/Long;
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_1

    .line 683
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AdminId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " UserId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 686
    .local v2, "cvW":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    invoke-virtual {v2, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 687
    const-string/jumbo v10, "uid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    const-string v10, "allowAllPkgs"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 690
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v10

    add-int/2addr v5, v10

    .line 692
    goto :goto_0

    .line 694
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v2    # "cvW":Landroid/content/ContentValues;
    :cond_2
    if-lez v5, :cond_4

    .line 695
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_3

    .line 696
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v10, "All packages are allowed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_3
    :goto_1
    return v8

    .line 701
    :cond_4
    iget-boolean v10, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    if-eqz v10, :cond_6

    .line 702
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_5

    .line 703
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v10, "CCM profile does not allow all packages"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v8, v9

    .line 704
    goto :goto_1

    .line 708
    :cond_6
    iget-object v10, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v10, :cond_7

    iget-object v10, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 709
    :cond_7
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_8

    .line 710
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v10, "Invalid package list"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v8, v9

    .line 711
    goto :goto_1

    .line 713
    :cond_9
    const/4 v6, 0x0

    .line 716
    .local v6, "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 717
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 718
    const-string/jumbo v10, "uid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 719
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    const-string v12, "pkgName"

    invoke-virtual {v10, v11, v12, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 726
    iget-object v10, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_3

    move v8, v9

    .line 730
    goto :goto_1
.end method

.method private verifyCertificateInstaller(IIILjava/lang/String;)Z
    .locals 6
    .param p1, "callerUid"    # I
    .param p2, "adminId"    # I
    .param p3, "userId"    # I
    .param p4, "alias"    # Ljava/lang/String;

    .prologue
    .line 2006
    :try_start_0
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 2007
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdminId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UserId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " InstallerId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Alias - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2011
    .local v0, "cvW":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2012
    const-string/jumbo v3, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2013
    const-string v3, "installerId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2014
    const-string v3, "alias"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CCMCertTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 2019
    .local v2, "rowCount":I
    if-lez v2, :cond_2

    .line 2020
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    .line 2021
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "Caller is certificate installer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2022
    :cond_1
    const/4 v3, 0x1

    .line 2028
    .end local v0    # "cvW":Landroid/content/ContentValues;
    .end local v2    # "rowCount":I
    :goto_0
    return v3

    .line 2024
    :catch_0
    move-exception v1

    .line 2025
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2028
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPackageToExemptList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1555
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 1556
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "in addPackageToExemptList"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1559
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_2

    .line 1560
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    .line 1561
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "addPackageToExemptList - TIMA version does not include CCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_1
    :goto_0
    return v2

    .line 1566
    :cond_2
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1567
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    .line 1568
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "addPackageToExemptList - CCM is not enabled by admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1573
    :cond_3
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 1575
    .local v1, "userId":I
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v0

    .line 1577
    .local v0, "uid":I
    const/4 v4, -0x1

    if-eq v4, v0, :cond_1

    .line 1578
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3, v2, v1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIII)J

    move v2, v3

    .line 1583
    goto :goto_0
.end method

.method public deleteCCMProfile(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 456
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 457
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "in deleteCCMProfile"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 460
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v3, :cond_2

    .line 461
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 462
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "deleteCCMProfile - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_1
    :goto_0
    return v1

    .line 467
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 470
    .local v0, "userId":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfileUsingAdminId(II)Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 472
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 473
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "in deleteCCMProfile - failed to delete certificates"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    :cond_3
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfileUsingAdminId(II)Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 479
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 480
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "in deleteCCMProfile - failed to delete profile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    move v1, v2

    .line 486
    goto :goto_0
.end method

.method public deleteCSRProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "templateName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1373
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 1374
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v7, "in deleteCSRProfile"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v6, :cond_2

    .line 1378
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 1379
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "deleteCSRProfile - TIMA version does not include CCM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_1
    :goto_0
    return v4

    .line 1384
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 1385
    :cond_3
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 1386
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "deleteCSRProfile - Invalid Arguments"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1390
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1391
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 1392
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "deleteCSRProfile - CCM is not enabled for caller"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1396
    :cond_5
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1399
    .local v3, "userId":I
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;I)I

    move-result v0

    .line 1400
    .local v0, "adminId":I
    const/4 v6, -0x1

    if-ne v6, v0, :cond_6

    .line 1401
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 1402
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "in deleteCSRProfile - failed to get admin Id"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1406
    :cond_6
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v6, v0, v3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1408
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 1409
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "in deleteCSRProfile - verifyCertificateInstaller failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1414
    :cond_7
    const-wide/16 v6, 0x0

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8, v3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_csr_profile(IILjava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    .line 1416
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 1417
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "in deleteCSRProfile - native ccm_delete_csr_profile failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1423
    :cond_8
    new-array v1, v12, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v1, v4

    const-string/jumbo v6, "uid"

    aput-object v6, v1, v5

    const-string v6, "alias"

    aput-object v6, v1, v10

    const-string v6, "installerId"

    aput-object v6, v1, v11

    .line 1425
    .local v1, "sColumns":[Ljava/lang/String;
    new-array v2, v12, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    aput-object p2, v2, v10

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v11

    .line 1427
    .local v2, "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMCertTable"

    invoke-virtual {v4, v6, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move v4, v5

    .line 1429
    goto/16 :goto_0
.end method

.method public deleteCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 558
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 559
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "in deleteCertificate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_2

    .line 563
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    .line 564
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "deleteCertificate - TIMA version does not include CCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_1
    :goto_0
    return v2

    .line 569
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 570
    :cond_3
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    .line 571
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "deleteCertificate - Invalid Arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    :cond_4
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 578
    .local v1, "userId":I
    const/16 v0, 0x3e8

    .line 581
    .local v0, "adminId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 582
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;I)I

    move-result v0

    .line 583
    const/4 v4, -0x1

    if-ne v4, v0, :cond_5

    .line 584
    const/16 v0, 0x3e8

    .line 585
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_5

    .line 586
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "in deleteCertificate - failed to get admin Id"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_5
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4, v0, v1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 592
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    .line 593
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "in deleteCertificate - verifyCertificateInstaller failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 598
    :cond_6
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4, v0, v1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateUsingAdminId(IIILjava/lang/String;)Z

    move-result v4

    if-eq v3, v4, :cond_7

    .line 600
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    .line 601
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "in deleteCertificate - failed to delete certificate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    move v2, v3

    .line 606
    goto :goto_0
.end method

.method public generateCSR(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "UID"    # I
    .param p3, "tokenName"    # Ljava/lang/String;
    .param p4, "tokenPassword"    # Ljava/lang/String;
    .param p5, "objectAlias"    # Ljava/lang/String;
    .param p6, "isTrustedBootRequired"    # Z

    .prologue
    .line 202
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 203
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "in ccmGenerateCSR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 206
    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v1, :cond_2

    .line 207
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_1

    .line 208
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "generateCSR - TIMA version does not include CCM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_1
    const/4 v1, 0x0

    .line 215
    :goto_0
    return-object v1

    .line 212
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 215
    .local v0, "userId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1, v0, p5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_generate_csr(IILjava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public generateCSRUsingTemplate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "templateName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "challengePassword"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1435
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 1436
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v8, "in generateCSRUsingTemplate"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v7, :cond_2

    .line 1440
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 1441
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v8, "generateCSRUsingTemplate - TIMA version does not include CCM"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    :cond_1
    :goto_0
    return-object v6

    .line 1446
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x40

    if-le v7, v8, :cond_4

    .line 1451
    :cond_3
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 1452
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v8, "generateCSRUsingTemplate - Invalid Arguments"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1456
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1457
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 1458
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v8, "generateCSRUsingTemplate - CCM is not enabled for caller"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1463
    :cond_5
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_6

    .line 1464
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateCSRUsingTemplate - challengePassword is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_6
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 1469
    .local v4, "userId":I
    const/4 v2, 0x0

    .line 1470
    .local v2, "challPwdBytes":[B
    const/4 v1, 0x0

    .line 1472
    .local v1, "buf":[B
    if-eqz p4, :cond_7

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 1474
    :try_start_0
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1475
    .local v5, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v7, p4}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1477
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_challengePassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v8, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v7, v8}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1480
    .local v0, "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getEncoded()[B

    move-result-object v2

    .line 1482
    array-length v7, v2

    const/16 v8, 0x7f

    if-le v7, v8, :cond_8

    .line 1484
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 1485
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v8, "generateCSRUsingTemplate - challenge password too long"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1502
    .end local v0    # "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    .end local v5    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :catch_0
    move-exception v3

    .line 1503
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_7

    .line 1504
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "in generateCSRUsingTemplate - Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_1
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6, v4, p2, p3, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_gen_csr_using_template(IILjava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v6

    goto/16 :goto_0

    .line 1488
    .restart local v0    # "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    .restart local v5    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_8
    :try_start_1
    array-length v7, v2

    if-gtz v7, :cond_9

    .line 1489
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 1490
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v8, "generateCSRUsingTemplate - challenge password length equal or less than 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1494
    :cond_9
    array-length v6, v2

    add-int/lit8 v6, v6, 0x2

    new-array v1, v6, [B

    .line 1495
    const/4 v6, 0x0

    const/4 v7, 0x2

    array-length v8, v2

    invoke-static {v2, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1499
    const/4 v6, 0x0

    const/16 v7, -0x60

    aput-byte v7, v1, v6

    .line 1500
    const/4 v6, 0x1

    array-length v7, v2

    int-to-byte v7, v7

    aput-byte v7, v1, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getCCMProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CCMProfile;

    .prologue
    const/4 v10, 0x0

    .line 392
    const/4 v5, 0x0

    .line 393
    .local v5, "ret":Z
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_0

    .line 394
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v12, "in getCCMProfile"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    iget-boolean v11, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v11, :cond_2

    .line 397
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_1

    .line 398
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v12, "getCCMProfile - TIMA version does not include CCM"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_1
    :goto_0
    return v10

    .line 402
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 404
    .local v9, "userId":I
    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;I)I

    move-result v1

    .line 406
    .local v1, "adminId":I
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_3

    .line 407
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AdminId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " UserId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_3
    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "uid"

    aput-object v11, v6, v10

    .line 411
    .local v6, "sColumns":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    .line 414
    .local v8, "sValues":[Ljava/lang/String;
    const/4 v10, 0x3

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "accessType"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string v11, "allowAllPkgs"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string v11, "pinLen"

    aput-object v11, v7, v10

    .line 418
    .local v7, "sReturnColumns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v6, v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 421
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 422
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string v11, "accessType"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "accessCntrlMethd":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->valueOf(Ljava/lang/String;)Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    move-result-object v10

    iput-object v10, p2, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 426
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string v11, "allowAllPkgs"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, p2, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    .line 428
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string v11, "pinLen"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p2, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiPinLength:I

    .line 432
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 433
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 435
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    const-string v12, "pkgName"

    invoke-virtual {v10, v11, v12, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p2, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    .line 439
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_4

    .line 440
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PackageList - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p2, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :cond_4
    const/4 v5, 0x1

    .end local v0    # "accessCntrlMethd":Ljava/lang/String;
    .end local v1    # "adminId":I
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "sColumns":[Ljava/lang/String;
    .end local v7    # "sReturnColumns":[Ljava/lang/String;
    .end local v8    # "sValues":[Ljava/lang/String;
    .end local v9    # "userId":I
    :cond_5
    :goto_1
    move v10, v5

    .line 451
    goto/16 :goto_0

    .line 446
    :catch_0
    move-exception v4

    .line 447
    .local v4, "ex":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 448
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getCCMVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1620
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 1621
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "in getCCMVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 1624
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 1625
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "getCCMVersion - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :cond_1
    const/4 v0, 0x0

    .line 1629
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->get_ccm_version()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1633
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 1634
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "in getDefaultCertificateAlias"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 1637
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 1638
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultCertificateAlias - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_1
    const/4 v0, 0x0

    .line 1645
    :goto_0
    return-object v0

    .line 1643
    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->get_default_cert_alias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    .line 1645
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSlotIdForCaller(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 1136
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 1137
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v8, "in getSlotIdForCaller"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v7, :cond_2

    .line 1140
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v8, "getSlotIdForCaller - Invalid Context "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const-wide/16 v5, -0x1

    .line 1153
    :cond_1
    return-wide v5

    .line 1144
    :cond_2
    const-wide/16 v5, -0x1

    .line 1145
    .local v5, "slotId":J
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1147
    .local v4, "pkgNames":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1148
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotIdForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    .line 1149
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_1

    .line 1147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getSlotIdForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 1159
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_0

    .line 1160
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v13, "in getSlotIdForPackage"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v12, :cond_3

    .line 1163
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_1

    .line 1164
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v13, "getSlotIdForPackage - TIMA version does not include CCM"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_1
    const-wide/16 v9, -0x1

    .line 1269
    :cond_2
    :goto_0
    return-wide v9

    .line 1170
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    if-nez v12, :cond_4

    .line 1171
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDefaultCertificateAlias()Ljava/lang/String;

    .line 1175
    :cond_4
    if-eqz p3, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "Digital Signature"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1179
    :cond_5
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v12

    if-nez v12, :cond_6

    .line 1180
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 1182
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    const-string v15, "knox_ccm_policy"

    const-string v16, "getSlotIdForPackage"

    invoke-static/range {v12 .. v16}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_7

    .line 1185
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Security Exception Occurred while pid["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] with uid["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] trying to access methodName ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "getSlotIdForPackage"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] in ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "knox_ccm_policy"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] service"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1192
    .local v4, "e":Ljava/lang/SecurityException;
    throw v4

    .line 1197
    .end local v4    # "e":Ljava/lang/SecurityException;
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 1200
    .local v11, "userId":I
    if-nez p2, :cond_8

    .line 1201
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v13, "getSlotIdForPackage failed - Invalid arguments"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-wide/16 v9, -0x1

    goto/16 :goto_0

    .line 1205
    :cond_8
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 1206
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_9

    .line 1207
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v13, "in getSlotIdForPackage - token access is not permitted"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_9
    const-wide/16 v9, -0x1

    goto/16 :goto_0

    .line 1212
    :cond_a
    const/4 v5, 0x0

    .line 1213
    .local v5, "rowCount":I
    const-wide/16 v9, -0x1

    .line 1215
    .local v9, "slotId":J
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_b

    .line 1216
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UserId - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " packageName - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " alias - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :cond_b
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1221
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1222
    const-string v12, "pkgName"

    move-object/from16 v0, p2

    invoke-virtual {v3, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    if-eqz p3, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_c

    .line 1226
    const-string v12, "alias"

    move-object/from16 v0, p3

    invoke-virtual {v3, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "CCMCertTable"

    invoke-virtual {v12, v13, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v12

    add-int/2addr v5, v12

    .line 1233
    if-nez v5, :cond_e

    .line 1234
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1235
    .local v2, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1236
    const-string v12, "allowAllPkgs"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1239
    if-eqz p3, :cond_d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_d

    .line 1240
    const-string v12, "alias"

    move-object/from16 v0, p3

    invoke-virtual {v2, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "CCMCertTable"

    invoke-virtual {v12, v13, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v12

    add-int/2addr v5, v12

    .line 1246
    if-lez v5, :cond_e

    .line 1247
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_e

    .line 1248
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v13, "in getSlotIdForPackage - all packages are allowed access"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    .end local v2    # "cvW":Landroid/content/ContentValues;
    :cond_e
    if-gtz v5, :cond_f

    if-eqz p3, :cond_f

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_2

    .line 1256
    :cond_f
    const/4 v12, 0x1

    new-array v6, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "uid"

    aput-object v13, v6, v12

    .line 1257
    .local v6, "sColumns":[Ljava/lang/String;
    const/4 v12, 0x1

    new-array v8, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    .line 1259
    .local v8, "sValues":[Ljava/lang/String;
    const/4 v12, 0x1

    new-array v7, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "slotId"

    aput-object v13, v7, v12

    .line 1261
    .local v7, "sReturnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "ClientCertificateManagerTable"

    invoke-virtual {v12, v13, v6, v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1264
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 1265
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    const-string/jumbo v13, "slotId"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto/16 :goto_0
.end method

.method public installCertificate(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;[BLjava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .param p3, "certBytes"    # [B
    .param p4, "privateKeyPassword"    # Ljava/lang/String;

    .prologue
    .line 493
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 494
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "in installCertificate"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 499
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 500
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "installCertificate - TIMA version does not include CCM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_1
    const/4 v0, 0x0

    .line 552
    :goto_0
    return v0

    .line 505
    :cond_2
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 507
    :cond_3
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    .line 508
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "installCertificate - Invalid Arguments"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 512
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 513
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    .line 514
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "installCertificate - CCM is not enabled for caller"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 518
    :cond_7
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 529
    .local v1, "userId":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;I)I

    move-result v7

    .line 530
    .local v7, "adminId":I
    const/4 v0, -0x1

    if-ne v0, v7, :cond_9

    .line 531
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_8

    .line 532
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "in installCertificate - failed to get admin Id"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 537
    :cond_9
    const-wide/16 v8, 0x0

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget-boolean v2, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    iget-boolean v3, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    iget-object v4, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_certificate(IIZZLjava/lang/String;[BLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v8, v2

    if-eqz v0, :cond_b

    .line 540
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_a

    .line 541
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "in installCertificate - native ccm_install_certificate failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_a
    const/4 v0, 0x0

    goto :goto_0

    .line 547
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v7, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;II)Z

    move-result v2

    if-eq v0, v2, :cond_c

    .line 549
    const/4 v0, 0x0

    goto :goto_0

    .line 552
    :cond_c
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public installObject(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "UID"    # I
    .param p3, "tokenName"    # Ljava/lang/String;
    .param p4, "tokenPassword"    # Ljava/lang/String;
    .param p5, "objectAlias"    # Ljava/lang/String;
    .param p6, "objectType"    # I
    .param p7, "objectData"    # [B
    .param p8, "objectPassword"    # Ljava/lang/String;
    .param p9, "isTrustedBootRequired"    # Z

    .prologue
    .line 225
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 226
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "in ccmInstallObject"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 230
    iget-boolean v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_2

    .line 231
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 232
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "installObject - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    const/4 v2, -0x1

    .line 272
    :goto_0
    return v2

    .line 236
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 239
    .local v1, "userId":I
    const/16 v0, 0x3e8

    .line 242
    .local v0, "adminId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;I)I

    move-result v0

    .line 244
    const/4 v2, -0x1

    if-ne v2, v0, :cond_3

    .line 245
    const/16 v0, 0x3e8

    .line 246
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_3

    .line 247
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "in installObject - failed to get admin Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_3
    const-wide/16 v7, 0x0

    move-object v2, p5

    move v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v7, v2

    if-eqz v2, :cond_5

    .line 253
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_4

    .line 254
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "in installObject - native ccm_install_object failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_4
    const/4 v2, -0x1

    goto :goto_0

    .line 260
    :cond_5
    new-instance v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct {v6}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 261
    .local v6, "profile":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    iput-object p5, v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 262
    const/4 v2, 0x1

    iput-boolean v2, v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 263
    const/4 v2, 0x1

    iput-boolean v2, v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    .line 265
    const/4 v2, 0x1

    invoke-direct {p0, p1, v6, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;II)Z

    move-result v3

    if-eq v2, v3, :cond_7

    .line 267
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_6

    .line 268
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "in installObjectWithType - failed to add DB entry"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_6
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2, v1, p5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    .line 270
    const/4 v2, -0x1

    goto :goto_0

    .line 272
    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public installObjectWithType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I[BLjava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "objectAlias"    # Ljava/lang/String;
    .param p3, "objectType"    # I
    .param p4, "objectData"    # [B
    .param p5, "objectPassword"    # Ljava/lang/String;

    .prologue
    .line 615
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 616
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "in installObjectWithType"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 619
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 620
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "installObjectWithType - TIMA version does not include CCM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_1
    const/4 v0, 0x0

    .line 665
    :goto_0
    return v0

    .line 625
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 626
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_3

    .line 627
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "installObjectWithType - CCM is not enabled for caller"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 632
    :cond_4
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 636
    .local v1, "userId":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;I)I

    move-result v6

    .line 637
    .local v6, "adminId":I
    const/4 v0, -0x1

    if-ne v0, v6, :cond_6

    .line 638
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_5

    .line 639
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "in installObjectWithType - failed to get admin Id"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 643
    :cond_6
    const-wide/16 v8, 0x0

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v8, v2

    if-eqz v0, :cond_8

    .line 645
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_7

    .line 646
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "in installObjectWithType - native ccm_install_object failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 651
    :cond_8
    new-instance v7, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct {v7}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 652
    .local v7, "profile":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    iput-object p2, v7, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 653
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    .line 657
    const/4 v0, 0x1

    invoke-direct {p0, p1, v7, v6, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;II)Z

    move-result v2

    if-eq v0, v2, :cond_a

    .line 659
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_9

    .line 660
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "in installObjectWithType - failed to add DB entry"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_9
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0, v1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    .line 662
    const/4 v0, 0x0

    goto :goto_0

    .line 665
    :cond_a
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCCMPolicyEnabledByAdmin(I)Z
    .locals 6
    .param p1, "adminId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1519
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 1520
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "in isCCMPolicyEnabledByAdmin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v3, :cond_2

    .line 1523
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    .line 1524
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "isCCMPolicyEnabledByAdmin - TIMA version does not include CCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_1
    :goto_0
    return v2

    .line 1529
    :cond_2
    const/4 v1, 0x0

    .line 1531
    .local v1, "rowCount":I
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_3

    .line 1532
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCCMPolicyEnabledByAdmin - AdminId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1535
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1537
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ClientCertificateManagerTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 1540
    if-lez v1, :cond_1

    .line 1541
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1034
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 1035
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v7, "in isCCMPolicyEnabledForCaller"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v6, :cond_2

    .line 1038
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v7, "isCCMPolicyEnabledForCaller - Invalid Context "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v5, 0x0

    .line 1060
    :cond_1
    :goto_0
    return v5

    .line 1042
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_3

    .line 1043
    const/4 v5, 0x1

    goto :goto_0

    .line 1050
    :cond_3
    const/4 v5, 0x0

    .line 1051
    .local v5, "ret":Z
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1053
    .local v4, "pkgNames":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1054
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    .line 1055
    if-nez v5, :cond_1

    .line 1053
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1066
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_0

    .line 1067
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v10, "in isCCMPolicyEnabledForPackage"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_0
    iget-boolean v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v9, :cond_2

    .line 1070
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 1071
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v9, "isCCMPolicyEnabledForPackage - TIMA version does not include CCM"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_1
    :goto_0
    return v7

    .line 1076
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1080
    .local v6, "userId":I
    invoke-direct {p0, v6, v7, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZ)Z

    .line 1082
    if-nez p2, :cond_3

    .line 1083
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v9, "isCCMPolicyEnabledForPackage failed - Invalid arguments"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1088
    :cond_3
    const/4 v5, 0x0

    .line 1090
    .local v5, "rowCount":I
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1094
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1095
    .local v0, "adminId":Ljava/lang/Long;
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_4

    .line 1096
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AdminId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " UserId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " packageName - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_4
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1100
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v9, "uid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1101
    const-string v9, "adminUid"

    invoke-virtual {v3, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1102
    const-string v9, "pkgName"

    invoke-virtual {v3, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ClientCertificateManagerTable"

    invoke-virtual {v9, v10, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v9

    add-int/2addr v5, v9

    .line 1106
    goto :goto_1

    .line 1109
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    :cond_5
    if-nez v5, :cond_7

    .line 1110
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1111
    .restart local v0    # "adminId":Ljava/lang/Long;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1112
    .local v2, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v9, "uid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1113
    const-string v9, "adminUid"

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1114
    const-string v9, "allowAllPkgs"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1116
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ClientCertificateManagerTable"

    invoke-virtual {v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v9

    add-int/2addr v5, v9

    .line 1119
    if-lez v5, :cond_6

    .line 1120
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_6

    .line 1121
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v10, "in isCCMPolicyEnabledForPackage - all packages are allowed access"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1127
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v2    # "cvW":Landroid/content/ContentValues;
    :cond_7
    if-lez v5, :cond_1

    move v7, v8

    .line 1128
    goto/16 :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1743
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1755
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1749
    return-void
.end method

.method public registerForDefaultCertificate(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "UID"    # I
    .param p3, "registrationPassword"    # Ljava/lang/String;
    .param p4, "oldPassword"    # Ljava/lang/String;
    .param p5, "isTrustedBootRequired"    # Z

    .prologue
    const/4 v1, -0x1

    .line 281
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 282
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "in registerForDefaultCertificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 286
    iget-boolean v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_2

    .line 287
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 288
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "registerForDefaultCertificate - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1
    :goto_0
    return v1

    .line 293
    :cond_2
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_3

    .line 294
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in registerForDefaultCertificate - calling UID is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_3
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v2, :cond_1

    .line 299
    :try_start_0
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_4

    .line 300
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "Called TIMA service registerForDefaultCertificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_4
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v2, p2, p3, p4, p5}, Landroid/service/tima/ITimaService;->ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removePackageFromExemptList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1588
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 1589
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "in removePackageFromExemptList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1592
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v3, :cond_2

    .line 1593
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    .line 1594
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "removePackageFromExemptList - TIMA version does not include CCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_1
    :goto_0
    return v2

    .line 1599
    :cond_2
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1600
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    .line 1601
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "addPackageToExemptList - CCM is not enabled by admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1606
    :cond_3
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 1608
    .local v1, "userId":I
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v0

    .line 1610
    .local v0, "uid":I
    const/4 v3, -0x1

    if-eq v3, v0, :cond_1

    .line 1611
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2, v3, v1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIII)J

    .line 1616
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setCCMProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CCMProfile;

    .prologue
    .line 314
    const/4 v11, 0x1

    .line 315
    .local v11, "ret":Z
    const-wide/16 v12, 0x0

    .line 316
    .local v12, "slotId":J
    sget-boolean v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v15, :cond_0

    .line 317
    sget-object v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v16, "in setCCMProfile"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 320
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v15, :cond_2

    .line 321
    sget-boolean v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v15, :cond_1

    .line 322
    sget-object v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setCCMProfile - TIMA version does not include CCM"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    const/4 v11, 0x0

    .line 387
    .end local v11    # "ret":Z
    :goto_0
    return v11

    .line 326
    .restart local v11    # "ret":Z
    :cond_2
    if-nez p2, :cond_4

    .line 327
    sget-boolean v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v15, :cond_3

    .line 328
    sget-object v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setCCMProfile - Invalid Arguments"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 332
    :cond_4
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 333
    .local v3, "accessControlMethod":Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;
    const/4 v8, 0x0

    .line 335
    .local v8, "password":Ljava/lang/String;
    sget-object v15, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v15, v3, :cond_6

    .line 336
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlPassword:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 337
    if-nez v8, :cond_6

    .line 338
    sget-boolean v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v15, :cond_5

    .line 339
    sget-object v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setCCMProfile - Invalid Access Control arguments"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 345
    :cond_6
    move-object/from16 v0, p2

    iget-boolean v15, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    if-nez v15, :cond_9

    .line 350
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    if-nez v15, :cond_8

    .line 351
    sget-boolean v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v15, :cond_7

    .line 352
    sget-object v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setCCMProfile - Invalid Package list"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_7
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iput-object v15, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    .line 357
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    .line 360
    .local v10, "pkgNames":[Ljava/lang/String;
    move-object v4, v10

    .local v4, "arr$":[Ljava/lang/String;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_9

    aget-object v9, v4, v6

    .line 361
    .local v9, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 363
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "pkgNames":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 364
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v14

    .line 371
    .local v14, "userId":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->ordinal()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v15, v14, v0, v8}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v12

    .line 374
    const-wide/16 v15, -0x1

    cmp-long v15, v15, v12

    if-nez v15, :cond_b

    .line 375
    sget-boolean v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v15, :cond_a

    .line 376
    sget-object v15, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v16, "in setCCMProfile - native create_slot failed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 380
    :cond_b
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCCMProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;J)Z

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_c

    .line 381
    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v15, v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 382
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 385
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    goto/16 :goto_0
.end method

.method public setCSRProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CSRProfile;)Z
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CSRProfile;

    .prologue
    .line 1274
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 1275
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "in setCSRProfile"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v1, :cond_2

    .line 1279
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_1

    .line 1280
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCSRProfile - TIMA version does not include CCM"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_1
    const/4 v1, 0x0

    .line 1368
    :goto_0
    return v1

    .line 1284
    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 1286
    :cond_3
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_4

    .line 1287
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCSRProfile - Invalid Arguments"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1291
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1292
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_6

    .line 1293
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCSRProfile - CCM is not enabled for caller"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 1297
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1300
    .local v2, "userId":I
    const/4 v5, 0x0

    .line 1302
    .local v5, "subj":[B
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1303
    .local v12, "str":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->commonName:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CN="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->commonName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    :cond_8
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->domainComponent:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DC="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->domainComponent:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    :cond_9
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->organization:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "O="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->organization:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    :cond_a
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->locality:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->locality:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    :cond_b
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->state:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ST="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->state:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    :cond_c
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->country:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->country:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    :cond_d
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->emailAddress:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 1322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emailAddress="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->emailAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    :cond_e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 1326
    .local v10, "length":I
    const/4 v1, 0x2

    if-le v10, v1, :cond_f

    .line 1327
    add-int/lit8 v1, v10, -0x2

    invoke-virtual {v12, v1, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1331
    :try_start_0
    new-instance v11, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    .line 1332
    .local v11, "prncpal":Lcom/android/org/bouncycastle/jce/X509Principal;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/jce/X509Principal;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1341
    .end local v11    # "prncpal":Lcom/android/org/bouncycastle/jce/X509Principal;
    :cond_f
    :goto_1
    const-wide/16 v13, 0x0

    move-object/from16 v0, p1

    iget v1, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyLength:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->profileType:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->ordinal()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_set_csr_profile(IILjava/lang/String;I[BI)J

    move-result-wide v3

    cmp-long v1, v13, v3

    if-eqz v1, :cond_11

    .line 1344
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_10

    .line 1345
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "in setCSRProfile - native ccm_set_csr_profile failed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1334
    :catch_0
    move-exception v9

    .line 1335
    .local v9, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_f

    .line 1336
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in setCSRProfile - Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1351
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_11
    new-instance v8, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct {v8}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 1352
    .local v8, "certProf":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    iput-object v1, v8, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 1353
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 1354
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    .line 1356
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;I)I

    move-result v7

    .line 1357
    .local v7, "adminId":I
    const/4 v1, -0x1

    if-ne v1, v7, :cond_13

    .line 1358
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_12

    .line 1359
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "in setCSRProfile - failed to get admin Id"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1363
    :cond_13
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v8, v7, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;II)Z

    move-result v3

    if-eq v1, v3, :cond_14

    .line 1365
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1368
    :cond_14
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1737
    return-void
.end method
