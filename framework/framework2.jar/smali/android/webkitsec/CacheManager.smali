.class public final Landroid/webkitsec/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/CacheManager$CacheResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Landroid/webkitsec/CacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/webkitsec/CacheManager;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static cacheDisabled()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public static endCacheTransaction()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public static getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkitsec/CacheManager$CacheResult;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkitsec/CacheManager$CacheResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 332
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCacheFileBaseDir()Ljava/io/File;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCacheSize(Landroid/content/Context;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 471
    const/4 v5, 0x0

    .line 472
    .local v5, "size":I
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "webviewCacheChromium"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 473
    .local v1, "cacheDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 474
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_19
    if-ge v3, v4, :cond_39

    aget-object v2, v0, v3

    .line 475
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "f_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 476
    int-to-long v6, v5

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v5, v6

    .line 474
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 480
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_39
    return v5
.end method

.method static saveCacheFile(Ljava/lang/String;JLandroid/webkitsec/CacheManager$CacheResult;)V
    .registers 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "postIdentifier"    # J
    .param p3, "cacheRet"    # Landroid/webkitsec/CacheManager$CacheResult;

    .prologue
    .line 414
    :try_start_0
    iget-object v1, p3, Landroid/webkitsec/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_f

    .line 436
    sget-boolean v1, Landroid/webkitsec/CacheManager;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 415
    :catch_f
    move-exception v0

    .line 437
    :cond_10
    return-void
.end method

.method public static saveCacheFile(Ljava/lang/String;Landroid/webkitsec/CacheManager$CacheResult;)V
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "cacheResult"    # Landroid/webkitsec/CacheManager$CacheResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 408
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/webkitsec/CacheManager;->saveCacheFile(Ljava/lang/String;JLandroid/webkitsec/CacheManager$CacheResult;)V

    .line 409
    return-void
.end method

.method public static startCacheTransaction()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method
