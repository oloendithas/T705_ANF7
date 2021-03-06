.class public Lcom/android/server/enterprise/lso/LSOService;
.super Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;
.source "LSOService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final MAX_SUPPORTED_LAYER:I = 0x3

.field private static final NO_ADMIN_SET:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LSO"

.field private static final singleAdmin:Z = true


# instance fields
.field private lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mItemData:[Landroid/app/enterprise/lso/LSOItemData;

.field private mOverlayAdminUid:I

.field private mWallpaperAdminUid:I

.field private screenDimesions:Landroid/graphics/Point;

.field private final storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;-><init>()V

    .line 68
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 82
    iput-object p1, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    .line 83
    new-instance v2, Lcom/android/server/enterprise/lso/LSOStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    .line 84
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 85
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getWallpaperAdminUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 86
    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 87
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminPref()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 90
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    .line 91
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 92
    .local v1, "winMgr":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 94
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_1

    .line 95
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 99
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/app/enterprise/lso/LSOItemData;

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    .line 100
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x3

    if-gt v0, v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlay(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v3

    aput-object v3, v2, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 103
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method private declared-synchronized deleteFiles(I)V
    .locals 6
    .param p1, "layer"    # I

    .prologue
    .line 462
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 464
    .local v1, "token":J
    if-eqz p1, :cond_1

    .line 465
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/enterprise/lso/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/app/enterprise/lso/LSOUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    :cond_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 475
    :goto_0
    monitor-exit p0

    return-void

    .line 467
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x3

    if-gt v0, v3, :cond_0

    .line 468
    :try_start_3
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/enterprise/lso/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/app/enterprise/lso/LSOUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 473
    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 462
    .end local v1    # "token":J
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 471
    .restart local v1    # "token":J
    :catch_0
    move-exception v3

    .line 473
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method private deleteWallpaperFiles()V
    .locals 3

    .prologue
    .line 453
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 455
    .local v0, "token":J
    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-static {v2}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 456
    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v2}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 458
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 459
    return-void
.end method

.method private enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCKSCREEN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCKSCREEN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "lockscreen_overlay"

    return-object v0
.end method

.method private sendConfigChangeNotfication()V
    .locals 5

    .prologue
    .line 445
    const-string v3, "LSO"

    const-string/jumbo v4, "sendConfigChangeNotfication:"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.sec.LSO_CONFIG_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 448
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 449
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 450
    return-void
.end method


# virtual methods
.method public canConfigure(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 256
    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canConfigure("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "allowedCnt":I
    const/4 v2, 0x0

    .line 261
    .local v2, "featureCnt":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 262
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 265
    .local v4, "uid":I
    const/4 p2, -0x1

    .line 269
    add-int/lit8 v2, v2, 0x1

    .line 270
    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v5, v8, :cond_0

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v5, v4, :cond_1

    .line 271
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 275
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 276
    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-eq v5, v8, :cond_2

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v4, :cond_3

    .line 277
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 283
    .end local v4    # "uid":I
    :cond_3
    :goto_0
    if-lez v2, :cond_4

    if-ne v2, v0, :cond_4

    const/4 v3, 0x1

    .line 284
    .local v3, "result":Z
    :goto_1
    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canConfigure("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return v3

    .line 279
    .end local v3    # "result":Z
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled exception in canConfigure: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public declared-synchronized copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "depth"    # I
    .param p4, "breadth"    # I

    .prologue
    .line 578
    monitor-enter p0

    :try_start_0
    const-string v1, "%s_%s%s_%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "destFile":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/app/enterprise/lso/LSOUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 578
    .end local v0    # "destFile":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized copyFiles(ILandroid/app/enterprise/lso/LSOItemData;I)Z
    .locals 7
    .param p1, "adminUid"    # I
    .param p2, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p3, "layer"    # I

    .prologue
    const/4 v4, 0x0

    .line 478
    monitor-enter p0

    :try_start_0
    const-string v5, "LSO"

    const-string v6, "copyFiles()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const/4 v1, 0x0

    .line 480
    .local v1, "retVal":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/enterprise/lso/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "layerDir":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 484
    .local v2, "token":J
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 486
    const-string v5, "/data/system/enterprise"

    invoke-static {v5}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_0

    .line 503
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 511
    :goto_0
    monitor-exit p0

    return v4

    .line 490
    :cond_0
    :try_start_3
    const-string v5, "/data/system/enterprise/lso"

    invoke-static {v5}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 503
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 478
    .end local v0    # "layerDir":Ljava/lang/String;
    .end local v1    # "retVal":Z
    .end local v2    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 494
    .restart local v0    # "layerDir":Ljava/lang/String;
    .restart local v1    # "retVal":Z
    .restart local v2    # "token":J
    :cond_1
    :try_start_5
    invoke-static {v0}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v5

    if-nez v5, :cond_2

    .line 503
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 498
    :cond_2
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, p2, v4, v5}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Landroid/app/enterprise/lso/LSOItemData;Ljava/lang/String;I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v1

    .line 499
    const/4 v1, 0x1

    .line 503
    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    :goto_1
    if-nez v1, :cond_3

    .line 508
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    :cond_3
    move v4, v1

    .line 511
    goto :goto_0

    .line 503
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 500
    :catch_0
    move-exception v4

    .line 503
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized copyFiles(Landroid/app/enterprise/lso/LSOItemData;Ljava/lang/String;I)Z
    .locals 13
    .param p1, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p2, "filePrefix"    # Ljava/lang/String;
    .param p3, "depth"    # I

    .prologue
    .line 516
    monitor-enter p0

    if-nez p1, :cond_1

    .line 517
    const/4 v8, 0x1

    .line 574
    :cond_0
    :goto_0
    monitor-exit p0

    return v8

    .line 520
    :cond_1
    :try_start_0
    const-string v10, "LSO"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyFiles() - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 523
    .local v2, "breadth":Ljava/lang/Integer;
    const/4 v8, 0x1

    .line 525
    .local v8, "retVal":Z
    :try_start_1
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v9

    .line 526
    .local v9, "type":I
    packed-switch v9, :pswitch_data_0

    .line 559
    :cond_2
    :goto_1
    if-eqz v8, :cond_0

    .line 560
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getAttrs()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v1

    .line 561
    .local v1, "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    if-eqz v1, :cond_0

    const-string v10, "android:src"

    invoke-virtual {v1, v10}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 562
    const-string v10, "android:src"

    invoke-virtual {v1, v10}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v0, p3

    invoke-virtual {p0, v10, p2, v0, v11}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 564
    .local v5, "imagePath":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 565
    const/4 v8, 0x0

    goto :goto_0

    .line 528
    .end local v1    # "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    .end local v5    # "imagePath":Ljava/lang/String;
    :pswitch_0
    move-object v0, p1

    check-cast v0, Landroid/app/enterprise/lso/LSOItemContainer;

    move-object v6, v0

    .line 529
    .local v6, "itemContainer":Landroid/app/enterprise/lso/LSOItemContainer;
    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 530
    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v0, p3

    invoke-virtual {p0, v10, p2, v0, v11}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 532
    .restart local v5    # "imagePath":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 533
    const/4 v8, 0x0

    .line 534
    goto :goto_1

    .line 536
    :cond_3
    invoke-virtual {v6, v5}, Landroid/app/enterprise/lso/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    .line 539
    .end local v5    # "imagePath":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemContainer;->getNumItems()I

    move-result v10

    if-ge v4, v10, :cond_2

    if-eqz v8, :cond_2

    .line 540
    invoke-virtual {v6, v4}, Landroid/app/enterprise/lso/LSOItemContainer;->getItem(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v10

    add-int/lit8 v11, p3, 0x1

    invoke-virtual {p0, v10, p2, v11}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Landroid/app/enterprise/lso/LSOItemData;Ljava/lang/String;I)Z

    move-result v8

    .line 539
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 546
    .end local v4    # "i":I
    .end local v6    # "itemContainer":Landroid/app/enterprise/lso/LSOItemContainer;
    :pswitch_1
    move-object v0, p1

    check-cast v0, Landroid/app/enterprise/lso/LSOItemImage;

    move-object v7, v0

    .line 547
    .local v7, "itemImage":Landroid/app/enterprise/lso/LSOItemImage;
    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 548
    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v0, p3

    invoke-virtual {p0, v10, p2, v0, v11}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 550
    .restart local v5    # "imagePath":Ljava/lang/String;
    if-nez v5, :cond_5

    .line 551
    const/4 v8, 0x0

    .line 552
    goto :goto_1

    .line 554
    :cond_5
    invoke-virtual {v7, v5}, Landroid/app/enterprise/lso/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    goto :goto_1

    .line 571
    .end local v5    # "imagePath":Ljava/lang/String;
    .end local v7    # "itemImage":Landroid/app/enterprise/lso/LSOItemImage;
    .end local v9    # "type":I
    :catch_0
    move-exception v3

    .line 572
    .local v3, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 567
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    .restart local v5    # "imagePath":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_6
    const-string v10, "android:src"

    invoke-virtual {p1, v10, v5}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 516
    .end local v1    # "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    .end local v2    # "breadth":Ljava/lang/Integer;
    .end local v5    # "imagePath":Ljava/lang/String;
    .end local v8    # "retVal":Z
    .end local v9    # "type":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 526
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getData(Landroid/app/enterprise/ContextInfo;I)Landroid/app/enterprise/lso/LSOItemData;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "layer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    const-string v0, "LSO"

    const-string v1, "getData()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    .line 155
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid layer. Layer must be 1...3"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getPreferences(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/lso/LSOAttributeSet;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    return-object v0
.end method

.method public isConfigured(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 223
    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isConfigured("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 p2, 0x0

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "featureCnt":I
    const/4 v2, 0x0

    .line 231
    .local v2, "resultCnt":I
    if-eqz p2, :cond_2

    .line 238
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 246
    :cond_1
    :goto_1
    if-nez p2, :cond_5

    .line 247
    if-lez v2, :cond_4

    .line 252
    .local v1, "result":Z
    :goto_2
    return v1

    .line 233
    .end local v1    # "result":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 234
    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v4, v7, :cond_0

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 241
    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-eq v4, v7, :cond_1

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v1, v3

    .line 247
    goto :goto_2

    .line 249
    :cond_5
    if-lez v0, :cond_6

    if-ne v0, v2, :cond_6

    .restart local v1    # "result":Z
    :goto_3
    goto :goto_2

    .end local v1    # "result":Z
    :cond_6
    move v1, v3

    goto :goto_3
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 418
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 442
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 422
    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne p1, v1, :cond_0

    .line 423
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 424
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    .line 425
    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 426
    iput-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 427
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object v4, v1, v0

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne p1, v1, :cond_1

    .line 433
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    .line 434
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 435
    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 438
    :cond_1
    return-void
.end method

.method public resetData(Landroid/app/enterprise/ContextInfo;I)V
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "layer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 163
    const-string v2, "LSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "sendNotification":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 167
    if-ltz p2, :cond_0

    if-le p2, v6, :cond_1

    .line 168
    :cond_0
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "Invalid layer. Layer must be 0...3"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 173
    const-string v2, "LSO"

    const-string v3, "Not allowed to reset Overlay"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_2
    :goto_0
    return-void

    .line 177
    :cond_3
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v2, v3, :cond_6

    .line 178
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 179
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    .line 180
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 182
    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 183
    iput-object v5, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 186
    :cond_4
    if-eqz p2, :cond_7

    .line 187
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object v5, v2, p2

    .line 194
    :cond_5
    const/4 v1, 0x1

    .line 197
    :cond_6
    if-eqz v1, :cond_2

    .line 198
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication()V

    goto :goto_0

    .line 189
    :cond_7
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, v6, :cond_5

    .line 190
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object v5, v2, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public resetWallpaper(Landroid/app/enterprise/ContextInfo;)V
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    const-string v1, "LSO"

    const-string v2, "resetWallpaper()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "sendNotification":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 206
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    const-string v1, "LSO"

    const-string v2, "Not allowed to reset Wallpaper"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne v1, v2, :cond_2

    .line 212
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 213
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    .line 214
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 215
    const/4 v0, 0x1

    .line 218
    :cond_2
    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication()V

    goto :goto_0
.end method

.method public declared-synchronized setData(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/lso/LSOItemData;I)I
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p3, "layer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v9, -0x1

    const/4 v10, -0x4

    .line 106
    monitor-enter p0

    :try_start_0
    const-string v0, "LSO"

    const-string/jumbo v1, "setData()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 109
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 111
    .local v8, "uid":I
    if-lt p3, v2, :cond_0

    if-le p3, v3, :cond_1

    .line 112
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid layer. Layer must be 1...3"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v8    # "uid":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 116
    .restart local v8    # "uid":I
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    const-string v0, "LSO"

    const-string v1, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v9

    .line 149
    :goto_0
    monitor-exit p0

    return v0

    .line 121
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 125
    .local v7, "telMgr":Landroid/telephony/TelephonyManager;
    if-ne p3, v3, :cond_4

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 126
    :cond_3
    const-string v0, "LSO"

    const-string v1, "Telephony is not supported"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, -0x3

    goto :goto_0

    .line 130
    :cond_4
    invoke-virtual {p0, v8, p2, p3}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(ILandroid/app/enterprise/lso/LSOItemData;I)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v10

    .line 131
    goto :goto_0

    .line 134
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v1, v8

    iget-object v5, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(JLandroid/app/enterprise/lso/LSOItemData;ILandroid/app/enterprise/lso/LSOAttributeSet;)Z

    move-result v6

    .line 135
    .local v6, "result":Z
    if-nez v6, :cond_7

    .line 136
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 137
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    const/4 v1, 0x0

    aput-object v1, v0, p3

    .line 138
    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v0, v9, :cond_6

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 141
    :cond_6
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    move v0, v10

    .line 142
    goto :goto_0

    .line 145
    :cond_7
    iput v8, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 146
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object p2, v0, p3

    .line 148
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreferences(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/lso/LSOAttributeSet;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pref"    # Landroid/app/enterprise/lso/LSOAttributeSet;

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x6

    .line 351
    const/4 v0, 0x1

    .line 353
    .local v0, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 355
    iget v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v3, v2, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v1

    .line 360
    :cond_1
    iget v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v3, v4, :cond_2

    .line 361
    const-string v1, "LSO"

    const-string v3, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 362
    goto :goto_0

    .line 365
    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 371
    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateAdminPref(Landroid/app/enterprise/lso/LSOAttributeSet;)Z

    move-result v0

    .line 373
    if-eqz v0, :cond_4

    .line 374
    iput-object p2, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 377
    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public setWallpaper(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "imageFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v7, -0x4

    .line 289
    const-string v8, "LSO"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setWallpaper("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 291
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 292
    .local v5, "uid":I
    const/4 v8, 0x2

    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 293
    const-string v7, "LSO"

    const-string v8, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_0
    return v6

    .line 297
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 298
    .local v3, "token":J
    const/4 v0, 0x0

    .line 300
    .local v0, "bCopied":Z
    :try_start_0
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/data/com.sec.android.gallery3d"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 301
    const-string v8, "LSO"

    const-string v9, "/data/data/com.sec.android.gallery3d does not exists"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    const/4 v6, -0x3

    .line 329
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 305
    :cond_1
    :try_start_1
    const-string v8, "/data/system/enterprise"

    invoke-static {v8}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-nez v8, :cond_2

    .line 329
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    .line 306
    goto :goto_0

    .line 309
    :cond_2
    :try_start_2
    const-string v8, "/data/system/enterprise/lso"

    invoke-static {v8}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-nez v8, :cond_3

    .line 329
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    .line 310
    goto :goto_0

    .line 313
    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v8}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 317
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v9, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    iget-object v10, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    invoke-static {p2, v8, v9, v10}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v0

    .line 319
    if-eqz v0, :cond_4

    .line 320
    const-string v8, "LSO"

    const-string v9, "Create Ripple image"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v8, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v10, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v8, v9, v10}, Landroid/app/enterprise/lso/LSOUtils;->createRippleImage(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 329
    :cond_4
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    if-nez v0, :cond_5

    .line 333
    const-string v6, "LSO"

    const-string v8, "Error in copying file"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 334
    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1

    .line 329
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 337
    :cond_5
    iget-object v8, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v9, v5

    invoke-virtual {v8, v9, v10, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setWallpaperData(JLjava/lang/String;)Z

    move-result v2

    .line 338
    .local v2, "result":Z
    if-nez v2, :cond_6

    .line 339
    iput v6, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 340
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    move v6, v7

    .line 341
    goto :goto_0

    .line 344
    :cond_6
    iput v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 346
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication()V

    .line 347
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 414
    return-void
.end method
