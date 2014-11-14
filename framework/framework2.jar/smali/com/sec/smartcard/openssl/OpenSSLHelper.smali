.class public Lcom/sec/smartcard/openssl/OpenSSLHelper;
.super Ljava/lang/Object;
.source "OpenSSLHelper.java"


# static fields
.field private static final FUNCTION_LIST_NAME:Ljava/lang/String; = "TZ_CCM_C_GetFunctionList"

.field private static final LIBRARY_NAME:Ljava/lang/String; = "libtlc_tz_ccm.so"

.field static final TAG:Ljava/lang/String; = "OpenSSLHelper"


# instance fields
.field private pkey:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string/jumbo v0, "secopenssl_engine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;

    return-void
.end method


# virtual methods
.method public native deregisterEngineKeychain()I
.end method

.method public deregister_engine()Z
    .registers 4

    .prologue
    .line 90
    const-string v1, "OpenSSLHelper"

    const-string v2, "deregister_engine function"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v1, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    invoke-virtual {v1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->deregisterEngineKeychain()I

    move-result v0

    .line 93
    .local v0, "ret":I
    if-nez v0, :cond_1b

    .line 94
    const-string v1, "OpenSSLHelper"

    const-string v2, "DeRegister engine success"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, 0x1

    .line 98
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v2, "OpenSSLHelper"

    const-string v3, "getPrivateKey function"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v2, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;

    if-nez v2, :cond_18

    .line 104
    const-string/jumbo v2, "secpkcs11"

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLEngine;->getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngine;

    move-result-object v1

    .line 106
    .local v1, "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    :try_start_12
    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/OpenSSLEngine;->getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;
    :try_end_18
    .catch Ljava/security/InvalidKeyException; {:try_start_12 .. :try_end_18} :catch_1b

    .line 112
    .end local v1    # "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    :cond_18
    :goto_18
    iget-object v2, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;

    return-object v2

    .line 107
    .restart local v1    # "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    :catch_1b
    move-exception v0

    .line 108
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v2, "OpenSSLHelper"

    const-string v3, "InvalidKeyException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method protected getSlotID()J
    .registers 4

    .prologue
    .line 62
    const-string v1, "OpenSSLHelper"

    const-string v2, "getSlotID function"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    .line 65
    .local v0, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    if-eqz v0, :cond_17

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/ClientCertificateManager;->getSlotIdForCaller(Ljava/lang/String;)J

    move-result-wide v1

    .line 69
    :goto_16
    return-wide v1

    :cond_17
    const-wide/16 v1, -0x1

    goto :goto_16
.end method

.method public native registerEngineKeychain(Ljava/lang/String;Ljava/lang/String;J)I
.end method

.method public register_engine()Z
    .registers 7

    .prologue
    .line 74
    const-string v3, "OpenSSLHelper"

    const-string/jumbo v4, "register_engine function"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->getSlotID()J

    move-result-wide v1

    .line 77
    .local v1, "slot_id":J
    const-string v3, "OpenSSLHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slot ID is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v3, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v3}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    const-string v4, "libtlc_tz_ccm.so"

    const-string v5, "TZ_CCM_C_GetFunctionList"

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->registerEngineKeychain(Ljava/lang/String;Ljava/lang/String;J)I

    move-result v0

    .line 80
    .local v0, "ret":I
    if-nez v0, :cond_3c

    .line 81
    const-string v3, "OpenSSLHelper"

    const-string v4, "Register engine success"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v3, 0x1

    .line 85
    :goto_3b
    return v3

    :cond_3c
    const/4 v3, 0x0

    goto :goto_3b
.end method
