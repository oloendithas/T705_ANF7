.class public Landroid/sec/enterprise/BluetoothPolicy;
.super Ljava/lang/Object;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/BluetoothPolicy$BluetoothProfile;,
        Landroid/sec/enterprise/BluetoothPolicy$BluetoothUUID;
    }
.end annotation


# static fields
.field public static final NO_PROFILE:I = -0x1

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string v0, "BluetoothPolicy"

    sput-object v0, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method


# virtual methods
.method public bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 456
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 457
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_9

    .line 458
    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 463
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_9
    :goto_9
    return-void

    .line 460
    :catch_a
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-bluetoothLog returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public getAllowBluetoothDataTransfer(Z)Z
    .registers 6
    .param p1, "showMsg"    # Z

    .prologue
    .line 234
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 235
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 236
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getAllowBluetoothDataTransfer(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 241
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 238
    :catch_b
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getAllowBluetoothDataTransfer returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .registers 6
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 353
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 354
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 355
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 360
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 357
    :catch_b
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isBluetoothDeviceAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isBluetoothEnabled()Z
    .registers 6

    .prologue
    .line 422
    const/4 v1, 0x1

    .line 424
    .local v1, "enabled":Z
    :try_start_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    .line 425
    .local v2, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v2, :cond_15

    .line 426
    invoke-interface {v2}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothEnabled()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result v3

    .line 432
    .end local v2    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_b
    return v3

    .line 428
    :catch_c
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 430
    sget-object v3, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v4, "PXY-isBluetoothEnabled returning default value"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    move v3, v1

    .line 432
    goto :goto_b
.end method

.method public isBluetoothLogEnabled()Z
    .registers 5

    .prologue
    .line 439
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 440
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 441
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothLogEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 446
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 443
    :catch_b
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isBluetoothLogEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .registers 6
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 301
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 302
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 303
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 308
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 305
    :catch_b
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isBluetoothUUIDAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isDesktopConnectivityEnabled()Z
    .registers 5

    .prologue
    .line 270
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 271
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 272
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isDesktopConnectivityEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 277
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 274
    :catch_b
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isDesktopConnectivityEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isDiscoverableEnabled()Z
    .registers 5

    .prologue
    .line 388
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 389
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 390
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isDiscoverableEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 395
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 392
    :catch_b
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isDiscoverableEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isLimitedDiscoverableEnabled()Z
    .registers 5

    .prologue
    .line 406
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 407
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 408
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isLimitedDiscoverableEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 413
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 410
    :catch_b
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isLimitedDiscoverableEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isOutgoingCallsAllowed()Z
    .registers 5

    .prologue
    .line 252
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 253
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 254
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isOutgoingCallsAllowed()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 259
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 256
    :catch_b
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isOutgoingCallsAllowed returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isPairingEnabled()Z
    .registers 5

    .prologue
    .line 371
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 372
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 373
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isPairingEnabled()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 378
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 375
    :catch_b
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isPairingEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public isProfileEnabled(I)Z
    .registers 6
    .param p1, "profile"    # I

    .prologue
    .line 320
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 321
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_13

    .line 322
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isProfileEnabled(I)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 327
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_a
    return v2

    .line 324
    :catch_b
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isProfileEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v2, 0x1

    goto :goto_a
.end method
