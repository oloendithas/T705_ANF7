.class public final Lcom/sec/android/app/camera/PlugInShootingModesStorage;
.super Ljava/lang/Object;
.source "PlugInShootingModesStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;,
        Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;,
        Lcom/sec/android/app/camera/PlugInShootingModesStorage$CameraTypes;,
        Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
    }
.end annotation


# static fields
.field private static final PRELOADED_THUMBNAILS_COUNT:I = 0xf

.field private static final SHOOTING_MODE_MAJOR_VERSION:I = 0x1

.field private static final SHOOTING_MODE_MINOR_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PlugInShootingModesStorage"

.field private static mInstance:Lcom/sec/android/app/camera/PlugInShootingModesStorage;


# instance fields
.field private mBaseResources:Landroid/content/res/Resources;

.field private mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

.field private mCachedImagesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalModes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExternalResourcesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mInstance:Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    .line 53
    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBaseResources:Landroid/content/res/Resources;

    .line 55
    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 295
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    .line 299
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mCachedImagesMap:Ljava/util/HashMap;

    .line 301
    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    .line 389
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/PlugInShootingModesStorage;Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/PlugInShootingModesStorage;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getPackageResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/PlugInShootingModesStorage;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/PlugInShootingModesStorage;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->setImagesCache(Ljava/util/HashMap;)V

    return-void
.end method

.method private declared-synchronized addAutoMode(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 638
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Auto"

    const v3, 0x7f0b0041

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b0056

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f02034b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, "both"

    const/4 v10, -0x1

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)V

    .line 644
    .local v0, "autoMode":Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 645
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    const-string v1, "com.sec.android.app.camera.Auto"

    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v1, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    monitor-exit p0

    return-void

    .line 638
    .end local v0    # "autoMode":Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static checkShootingModeVersion(ILjava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
    .locals 5
    .param p0, "shootingMode"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 490
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    .line 491
    .local v0, "error":Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getMode(ILjava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v2

    .line 493
    .local v2, "mode":Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    invoke-static {p0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModePreloaded(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 516
    .end local v0    # "error":Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
    .local v1, "error":Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
    :goto_0
    return-object v1

    .line 498
    .end local v1    # "error":Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
    .restart local v0    # "error":Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
    :cond_0
    if-eqz v2, :cond_1

    .line 499
    iget v3, v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->majorVersion:I

    if-nez v3, :cond_2

    .line 500
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->INVALID_VERSION_INFORMATION:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    :cond_1
    :goto_1
    move-object v1, v0

    .line 516
    .end local v0    # "error":Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
    .restart local v1    # "error":Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
    goto :goto_0

    .line 501
    .end local v1    # "error":Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
    .restart local v0    # "error":Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;
    :cond_2
    iget v3, v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->majorVersion:I

    if-ge v3, v4, :cond_3

    .line 502
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->SHOOTING_MODE_UPDATE_NEEDED:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    goto :goto_1

    .line 503
    :cond_3
    iget v3, v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->majorVersion:I

    if-le v3, v4, :cond_4

    .line 504
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->DEVICE_UPDATE_NEEDED:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    goto :goto_1

    .line 505
    :cond_4
    iget v3, v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->majorVersion:I

    if-ne v3, v4, :cond_1

    .line 506
    iget v3, v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->minorVersion:I

    if-gez v3, :cond_5

    .line 507
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    goto :goto_1

    .line 508
    :cond_5
    iget v3, v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->minorVersion:I

    if-lez v3, :cond_6

    .line 509
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    goto :goto_1

    .line 510
    :cond_6
    iget v3, v2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->minorVersion:I

    if-nez v3, :cond_1

    .line 511
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;->NO_ERROR:Lcom/sec/android/app/camera/PlugInShootingModesStorage$VersionErrors;

    goto :goto_1
.end method

.method private clearAll()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->clearCachedResources()V

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->clearShootingModes()V

    .line 235
    return-void
.end method

.method private clearCachedResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 218
    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 223
    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mCachedImagesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 227
    return-void
.end method

.method public static clearResources()V
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v0

    invoke-direct {v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->clearCachedResources()V

    .line 208
    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v0

    invoke-direct {v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->clearAll()V

    .line 201
    return-void
.end method

.method private getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mCachedImagesMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mCachedImagesMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static getCachedBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "id"    # I

    .prologue
    .line 127
    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getCameraShootingModeOrder(Lcom/sec/android/app/camera/Camera;Ljava/util/HashSet;)Ljava/lang/String;
    .locals 12
    .param p1, "cameraActivity"    # Lcom/sec/android/app/camera/Camera;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/Camera;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 596
    .local p2, "allowedItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .local v8, "orderString":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v7, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 605
    iget-object v9, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 606
    .local v2, "commandId":I
    iget-object v9, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 608
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-nez v5, :cond_1

    .line 604
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 610
    :cond_1
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    .line 611
    .local v6, "mode":Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    const/4 v9, 0x6

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x3

    aput v2, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-direct {v1, v9}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;-><init>([I)V

    .line 612
    .local v1, "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    iget-object v9, v6, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setName(Ljava/lang/String;)V

    .line 613
    iget v9, v6, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->order:I

    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setOrder(I)V

    .line 614
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 596
    .end local v1    # "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v2    # "commandId":I
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    .end local v6    # "mode":Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    .end local v7    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;>;"
    .end local v8    # "orderString":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 618
    .restart local v3    # "i":I
    .restart local v7    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;>;"
    .restart local v8    # "orderString":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    new-instance v9, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle$Comparator;

    invoke-direct {v9}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle$Comparator;-><init>()V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 620
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .line 621
    .local v0, "b":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 624
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :cond_3
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 630
    .end local v0    # "b":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    monitor-exit p0

    return-object v9
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;
    .locals 2

    .prologue
    .line 308
    const-class v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mInstance:Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    invoke-direct {v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mInstance:Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    .line 312
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mInstance:Lcom/sec/android/app/camera/PlugInShootingModesStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMode(ILjava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    .locals 3
    .param p0, "commandId"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getExternalModes(I)Ljava/util/Map;

    move-result-object v0

    .line 93
    .local v0, "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    .line 103
    :goto_0
    return-object v1

    .line 98
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 99
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    goto :goto_0

    .line 103
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getModesCopy()Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 568
    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v1

    .line 569
    .local v1, "instance":Lcom/sec/android/app/camera/PlugInShootingModesStorage;
    iget-object v5, v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 570
    .local v2, "itemsClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;>;"
    iget-object v5, v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 572
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 573
    iget-object v5, v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 575
    .local v3, "key":I
    new-instance v6, Ljava/util/HashMap;

    iget-object v5, v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    .end local v3    # "key":I
    :cond_0
    return-object v2
.end method

.method private declared-synchronized getPackageResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBaseResources:Landroid/content/res/Resources;

    if-nez v2, :cond_1

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBaseResources:Landroid/content/res/Resources;

    .line 149
    :cond_1
    if-nez p2, :cond_3

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBaseResources:Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .local v1, "res":Landroid/content/res/Resources;
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    .line 152
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    if-nez v2, :cond_4

    .line 153
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    .line 156
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    .line 158
    .restart local v1    # "res":Landroid/content/res/Resources;
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 160
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 165
    :goto_1
    if-eqz v1, :cond_2

    .line 166
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalResourcesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 141
    .end local v1    # "res":Landroid/content/res/Resources;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 161
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v2, "PlugInShootingModesStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to obtain resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getPackageResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static isShootingModeAvailable(ILjava/lang/String;)Z
    .locals 3
    .param p0, "commandId"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 553
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getMode(ILjava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v0

    .line 554
    .local v0, "mode":Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    if-eqz v0, :cond_0

    .line 555
    const/4 v1, 0x1

    .line 558
    :goto_0
    return v1

    .line 557
    :cond_0
    const-string v1, "PlugInShootingModesStorage"

    const-string v2, "isShootingModeAvailable return : false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadExternalLibrary(ILjava/lang/String;)V
    .locals 5
    .param p0, "shootingModeCommand"    # I
    .param p1, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 527
    const-string v2, "PlugInShootingModesStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/16 v2, 0x155

    if-eq p0, v2, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getExternalModes(I)Ljava/util/Map;

    move-result-object v1

    .line 532
    .local v1, "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 533
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    .line 535
    .local v0, "mode":Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    if-eqz v0, :cond_1

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 541
    .end local v0    # "mode":Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    .end local v1    # "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :cond_1
    const-string v2, "PlugInShootingModesStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " done"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void
.end method

.method private declared-synchronized setImagesCache(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "images":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;Landroid/graphics/Bitmap;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mCachedImagesMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearShootingModes()V
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mCachedImagesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBackCameraShootingModeOrder(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .locals 2
    .param p1, "cameraActivity"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 582
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->initializeDefaultBackCameraShootingModeOrderList()V

    .line 583
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultBackCameraShootingModeOrder()Ljava/util/HashSet;

    move-result-object v0

    .line 585
    .local v0, "allowedItemsBackCamera":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getCameraShootingModeOrder(Lcom/sec/android/app/camera/Camera;Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getExternalModes(I)Ljava/util/Map;
    .locals 2
    .param p1, "commandId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 324
    .local v0, "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v0    # "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :cond_0
    monitor-exit p0

    return-object v0

    .line 322
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getFrontCameraShootingModeOrder(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .locals 2
    .param p1, "cameraActivity"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 589
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->initializeDefaultFrontCameraShootingModeOrderList()V

    .line 590
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultFrontCameraShootingModeOrder()Ljava/util/HashSet;

    move-result-object v0

    .line 592
    .local v0, "allowedItemsFrontCamera":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getCameraShootingModeOrder(Lcom/sec/android/app/camera/Camera;Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getModesListsAt(I)Ljava/util/Map$Entry;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 343
    .local v0, "modeCommand":I
    iget-object v2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 345
    .local v1, "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 342
    .end local v0    # "modeCommand":I
    .end local v1    # "modes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getModesListsCount()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized getPackageNativeLibraryDirMapping()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 463
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "com.sec.android.app.camera"

    const-string v7, "libseccameracore.so"

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v6, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    if-eqz v6, :cond_1

    .line 466
    iget-object v6, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 468
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 469
    iget-object v6, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 471
    .local v4, "modesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    .line 472
    .local v3, "mode":Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    iget-object v6, v3, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    iget-object v7, v3, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 460
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "mode":Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    .end local v4    # "modesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    .end local v5    # "size":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 468
    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "modesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    .restart local v5    # "size":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "modesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    .end local v5    # "size":I
    :cond_1
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized setExternalModes(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 9
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p2, "externalModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->clearCachedResources()V

    .line 358
    if-nez p2, :cond_0

    new-instance p2, Landroid/util/SparseArray;

    .end local p2    # "externalModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;>;"
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    .line 359
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->addAutoMode(Landroid/content/Context;)V

    .line 361
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v5, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v6, 0x0

    .local v6, "numberOfCachedModes":I
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    const/16 v7, 0xf

    if-ge v6, v7, :cond_3

    .line 364
    iget-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 365
    .local v2, "key":I
    iget-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mExternalModes:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 367
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    if-nez v3, :cond_2

    .line 363
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    .line 371
    .local v4, "modeToCache":Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 376
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    .end local v4    # "modeToCache":Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    if-eqz v7, :cond_4

    .line 377
    iget-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 378
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    .line 382
    :cond_4
    new-instance v7, Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    invoke-direct {v7, p1, p0, v5}, Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/PlugInShootingModesStorage;Ljava/util/ArrayList;)V

    iput-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    .line 383
    iget-object v7, p0, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->mBitmapsCacheTask:Lcom/sec/android/app/camera/PlugInShootingModesStorage$BitmapsCacheTask;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    monitor-exit p0

    return-void

    .line 356
    .end local v0    # "i":I
    .end local v5    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;>;"
    .end local v6    # "numberOfCachedModes":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
