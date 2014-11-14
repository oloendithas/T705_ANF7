.class public Lcom/sec/tima_keychain/TimaKeychain;
.super Ljava/lang/Object;
.source "TimaKeychain.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TIMA_KeyChain"

.field private static final TIMA_SERVICE:Ljava/lang/String; = "tima"

.field private static mTimaService:Landroid/service/tima/ITimaService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAliasListFromTimaKeystore()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, "aliases_enum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const-string v7, "TIMA_KeyChain"

    const-string v8, "getCertificateAdapterFromTimaKeystore"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_8
    const-string v7, "TimaKeyStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 172
    .local v6, "key_store":Ljava/security/KeyStore;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 173
    invoke-virtual {v6}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;
    :try_end_16
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_16} :catch_1e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_16} :catch_30
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_16} :catch_39

    move-result-object v2

    .line 183
    .end local v6    # "key_store":Ljava/security/KeyStore;
    :goto_17
    if-nez v2, :cond_42

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 187
    .local v1, "aliasList_ccm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1d
    return-object v1

    .line 174
    .end local v1    # "aliasList_ccm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1e
    move-exception v4

    .line 175
    .local v4, "e":Ljava/security/KeyStoreException;
    const-string v7, "TIMA_KeyChain"

    const-string v8, "KeyStore Exception"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 176
    .end local v4    # "e":Ljava/security/KeyStoreException;
    :catch_27
    move-exception v5

    .line 177
    .local v5, "ioe":Ljava/io/IOException;
    const-string v7, "TIMA_KeyChain"

    const-string v8, "IOException"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 178
    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_30
    move-exception v0

    .line 179
    .local v0, "ae":Ljava/security/NoSuchAlgorithmException;
    const-string v7, "TIMA_KeyChain"

    const-string v8, "NoSuchAlgorithmException"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 180
    .end local v0    # "ae":Ljava/security/NoSuchAlgorithmException;
    :catch_39
    move-exception v3

    .line 181
    .local v3, "ce":Ljava/security/cert/CertificateException;
    const-string v7, "TIMA_KeyChain"

    const-string v8, "CertificateException"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 183
    .end local v3    # "ce":Ljava/security/cert/CertificateException;
    :cond_42
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1d
.end method

.method public static getCertificateChainFromTimaKeystore(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 11
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v3, 0x0

    .line 129
    .local v3, "certchain":[Ljava/security/cert/Certificate;
    const-string v8, "TIMA_KeyChain"

    const-string v9, "getCertificateChainFromTimaKeystore called"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_8
    const-string v8, "TimaKeyStore"

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 133
    .local v7, "key_store":Ljava/security/KeyStore;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 134
    invoke-virtual {v7, p0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    :try_end_16
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_16} :catch_2a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_16} :catch_3c
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_16} :catch_45

    move-result-object v3

    .line 144
    .end local v7    # "key_store":Ljava/security/KeyStore;
    :goto_17
    const/4 v2, 0x0

    .line 145
    .local v2, "cert_chain":[Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_4e

    .line 146
    array-length v8, v3

    new-array v2, v8, [Ljava/security/cert/X509Certificate;

    .line 147
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1e
    array-length v8, v3

    if-ge v5, v8, :cond_4e

    .line 148
    aget-object v8, v3, v5

    check-cast v8, Ljava/security/cert/X509Certificate;

    aput-object v8, v2, v5

    .line 147
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 135
    .end local v2    # "cert_chain":[Ljava/security/cert/X509Certificate;
    .end local v5    # "i":I
    :catch_2a
    move-exception v4

    .line 136
    .local v4, "e":Ljava/security/KeyStoreException;
    const-string v8, "TIMA_KeyChain"

    const-string v9, "KeyStoreException"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 137
    .end local v4    # "e":Ljava/security/KeyStoreException;
    :catch_33
    move-exception v6

    .line 138
    .local v6, "ioe":Ljava/io/IOException;
    const-string v8, "TIMA_KeyChain"

    const-string v9, "IOException"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 139
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_3c
    move-exception v0

    .line 140
    .local v0, "ae":Ljava/security/NoSuchAlgorithmException;
    const-string v8, "TIMA_KeyChain"

    const-string v9, "NoSuchAlgorithmException"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 141
    .end local v0    # "ae":Ljava/security/NoSuchAlgorithmException;
    :catch_45
    move-exception v1

    .line 142
    .local v1, "ce":Ljava/security/cert/CertificateException;
    const-string v8, "TIMA_KeyChain"

    const-string v9, "CertificateException"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 150
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    .restart local v2    # "cert_chain":[Ljava/security/cert/X509Certificate;
    :cond_4e
    return-object v2
.end method

.method public static getPrivateKeyFromOpenSSL(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 5
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 154
    const-string v2, "TIMA_KeyChain"

    const-string v3, "getPrivateKeyFromOpenSSL called"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    .line 156
    .local v0, "opensslhelper":Lcom/sec/smartcard/openssl/OpenSSLHelper;
    invoke-virtual {v0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->register_engine()Z

    move-result v1

    .line 157
    .local v1, "ret":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 158
    const-string v2, "TIMA_KeyChain"

    const-string v3, "Register engine success"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v0, p0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 162
    :goto_1e
    return-object v2

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method public static isTimaKeystoreAndCCMEnabledForCaller()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "ccm_enabled":Z
    const/4 v4, 0x0

    .line 64
    .local v4, "tima_keystore_enabled":Z
    const-string v7, "TIMA_KeyChain"

    const-string v8, "isTimaKeystoreAndCCMEnabled called"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :try_start_b
    const-string/jumbo v7, "tima"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v7

    sput-object v7, Lcom/sec/tima_keychain/TimaKeychain;->mTimaService:Landroid/service/tima/ITimaService;

    .line 68
    sget-object v7, Lcom/sec/tima_keychain/TimaKeychain;->mTimaService:Landroid/service/tima/ITimaService;

    if-nez v7, :cond_1d

    .line 88
    :cond_1c
    :goto_1c
    return v5

    .line 70
    :cond_1d
    sget-object v7, Lcom/sec/tima_keychain/TimaKeychain;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 71
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    .line 72
    .local v0, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    if-eqz v0, :cond_39

    .line 73
    invoke-virtual {v0}, Landroid/sec/enterprise/ClientCertificateManager;->isCCMPolicyEnabledForCaller()Z

    move-result v1

    .line 76
    :cond_39
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;

    move-result-object v3

    .line 77
    .local v3, "tima_keystore":Landroid/sec/enterprise/TimaKeystore;
    if-eqz v3, :cond_47

    .line 78
    invoke-virtual {v3}, Landroid/sec/enterprise/TimaKeystore;->isTimaKeystoreEnabled()Z
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_46} :catch_4d

    move-result v4

    .line 85
    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v3    # "tima_keystore":Landroid/sec/enterprise/TimaKeystore;
    :cond_47
    :goto_47
    if-ne v1, v6, :cond_1c

    if-ne v4, v6, :cond_1c

    move v5, v6

    .line 86
    goto :goto_1c

    .line 81
    :catch_4d
    move-exception v2

    .line 82
    .local v2, "re":Landroid/os/RemoteException;
    const-string v7, "TIMA_KeyChain"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47
.end method

.method public static isTimaKeystoreAndCCMEnabledForPackage(Ljava/lang/String;)Z
    .registers 11
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "ccm_enabled":Z
    const/4 v4, 0x0

    .line 95
    .local v4, "tima_keystore_enabled":Z
    const-string v7, "TIMA_KeyChain"

    const-string v8, "isTimaKeystoreAndCCMEnabled"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_b
    const-string/jumbo v7, "tima"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v7

    sput-object v7, Lcom/sec/tima_keychain/TimaKeychain;->mTimaService:Landroid/service/tima/ITimaService;

    .line 101
    sget-object v7, Lcom/sec/tima_keychain/TimaKeychain;->mTimaService:Landroid/service/tima/ITimaService;

    if-nez v7, :cond_1d

    .line 124
    :cond_1c
    :goto_1c
    return v5

    .line 103
    :cond_1d
    sget-object v7, Lcom/sec/tima_keychain/TimaKeychain;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 105
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    .line 106
    .local v0, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    if-eqz v0, :cond_39

    .line 107
    invoke-virtual {v0, p0}, Landroid/sec/enterprise/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z

    move-result v1

    .line 110
    :cond_39
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;

    move-result-object v3

    .line 111
    .local v3, "tima_keystore":Landroid/sec/enterprise/TimaKeystore;
    if-eqz v3, :cond_47

    .line 112
    invoke-virtual {v3, p0}, Landroid/sec/enterprise/TimaKeystore;->isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_46} :catch_7d

    move-result v4

    .line 119
    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v3    # "tima_keystore":Landroid/sec/enterprise/TimaKeystore;
    :cond_47
    :goto_47
    const-string v7, "TIMA_KeyChain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "is ccm enabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v7, "TIMA_KeyChain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "is tima keystore enabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-ne v1, v6, :cond_1c

    if-ne v4, v6, :cond_1c

    move v5, v6

    .line 122
    goto :goto_1c

    .line 115
    :catch_7d
    move-exception v2

    .line 116
    .local v2, "re":Landroid/os/RemoteException;
    const-string v7, "TIMA_KeyChain"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47
.end method
