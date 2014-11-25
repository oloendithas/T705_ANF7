.class public Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;
.super Ljava/lang/Object;
.source "SensoryUDTSIDEngineWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SensoryUDTSIDEngineWrapper"

.field private static uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;
    .registers 3

    .prologue
    .line 14
    const-class v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-nez v0, :cond_1f

    .line 16
    const-string v0, "SensoryUDTSIDEngineWrapper"

    const-string v2, "getInstance() : make new SensoryUDTSIDEngine"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->init()I

    move-result v0

    if-nez v0, :cond_1b

    .line 20
    new-instance v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-direct {v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;-><init>()V

    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 28
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_27

    monitor-exit v1

    return-object v0

    .line 25
    :cond_1f
    :try_start_1f
    const-string v0, "SensoryUDTSIDEngineWrapper"

    const-string v2, "getInstance() : get existed SensoryUDTSIDEngine"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1b

    .line 14
    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0
.end method
