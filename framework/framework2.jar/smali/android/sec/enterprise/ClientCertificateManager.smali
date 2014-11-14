.class public Landroid/sec/enterprise/ClientCertificateManager;
.super Ljava/lang/Object;
.source "ClientCertificateManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string v0, "ClientCertificateManager"

    sput-object v0, Landroid/sec/enterprise/ClientCertificateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSlotIdForCaller(Ljava/lang/String;)J
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 72
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 73
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getSlotIdForCaller(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-wide v2

    .line 78
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return-wide v2

    .line 75
    :catch_b
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "getSlotIdForPackage returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const-wide/16 v2, -0x1

    goto :goto_a
.end method

.method public isCCMPolicyEnabledForCaller()Z
    .registers 5

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 60
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 61
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isCCMPolicyEnabledForCaller()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 66
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 63
    :catch_b
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "isCCMPolicyEnabledForPackage returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 84
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 85
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 90
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 87
    :catch_b
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "isCCMPolicyEnabledForPackage returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method
