.class public Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
.super Ljava/lang/Object;
.source "KnoxCustomManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxCustomManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSealedNotificationMessagesState()Z
    .registers 5

    .prologue
    .line 115
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 116
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_17

    .line 117
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/enterprise/IEDMProxy;->getSealedNotificationMessagesState()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 122
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_e
    return v2

    .line 119
    :catch_f
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManager"

    const-string v3, "PXY-getSealedNotificationMessagesState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    const/4 v2, 0x1

    goto :goto_e
.end method

.method public getSealedState()Z
    .registers 5

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 87
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_17

    .line 88
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/enterprise/IEDMProxy;->getSealedState()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 93
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_e
    return v2

    .line 90
    :catch_f
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManager"

    const-string v3, "PXY-getSealedState returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    const/4 v2, 0x0

    goto :goto_e
.end method
