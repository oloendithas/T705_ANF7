.class public Landroid/sec/enterprise/DeviceAccountPolicy;
.super Ljava/lang/Object;
.source "DeviceAccountPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string v0, "SecurityPolicy"

    sput-object v0, Landroid/sec/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 60
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 61
    invoke-interface {v1, p1, p2, p3}, Landroid/sec/enterprise/IEDMProxy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
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
    sget-object v2, Landroid/sec/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isAccountAdditionAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 47
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 48
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 49
    invoke-interface {v1, p1, p2, p3}, Landroid/sec/enterprise/IEDMProxy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 54
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 51
    :catch_b
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isAccountRemovalAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method
