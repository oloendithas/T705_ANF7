.class public Landroid/os/DssHelper;
.super Ljava/lang/Object;
.source "DssHelper.java"


# static fields
.field private static mInstance:Landroid/os/DssHelper;


# instance fields
.field private final DEFAULT_FACTOR:D

.field mWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    .line 58
    const-wide/high16 v0, 0x3fe0000000000000L

    iput-wide v0, p0, Landroid/os/DssHelper;->DEFAULT_FACTOR:D

    .line 29
    return-void
.end method

.method public static getInstance()Landroid/os/DssHelper;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    if-nez v0, :cond_b

    .line 35
    new-instance v0, Landroid/os/DssHelper;

    invoke-direct {v0}, Landroid/os/DssHelper;-><init>()V

    sput-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    .line 37
    :cond_b
    sget-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addPackage(Ljava/lang/String;D)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # D

    .prologue
    .line 45
    monitor-enter p0

    const-wide/high16 v0, 0x3ff0000000000000L

    cmpl-double v0, p2, v0

    if-nez v0, :cond_16

    .line 46
    :try_start_7
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 47
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_20

    .line 52
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    .line 50
    :cond_16
    :try_start_16
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_20

    goto :goto_14

    .line 45
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScalingFactor()D
    .registers 3

    .prologue
    .line 61
    monitor-enter p0

    const-wide/high16 v0, 0x3fe0000000000000L

    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized getScalingFactor(Ljava/lang/String;)D
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 66
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    move-result-wide v0

    .line 68
    :goto_15
    monitor-exit p0

    return-wide v0

    :cond_17
    const-wide/high16 v0, 0x3fe0000000000000L

    goto :goto_15

    .line 65
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPackageExist(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 55
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
