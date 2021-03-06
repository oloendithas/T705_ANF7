.class public Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CPUCoreControlRequest"
.end annotation


# instance fields
.field mCPUCoreReleaser:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .registers 8
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 376
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 377
    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 370
    new-instance v0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$1;

    invoke-direct {v0, p0}, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest$1;-><init>(Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;)V

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mCPUCoreReleaser:Ljava/lang/Runnable;

    .line 378
    return-void
.end method


# virtual methods
.method public cancelFrequencyRequestImpl()V
    .registers 7

    .prologue
    .line 399
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 401
    :try_start_3
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mCPUCoreReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 402
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5}, Landroid/os/ICustomFrequencyManager;->releaseCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 403
    const/4 v1, 0x0

    # setter for: Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$402(Z)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1d} :catch_1f
    .catchall {:try_start_3 .. :try_end_1d} :catchall_39

    .line 407
    :goto_1d
    :try_start_1d
    monitor-exit v2

    .line 408
    return-void

    .line 404
    :catch_1f
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelFrequencyRequest :  RemoteException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_39
    move-exception v1

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public doFrequencyRequestImpl()V
    .registers 8

    .prologue
    .line 381
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPUCoreControlRequest : doFrequencyRequest::  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 384
    :try_start_29
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    iget v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/os/ICustomFrequencyManager;->requestCPUCore(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 385
    iget-wide v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_46

    .line 386
    const/4 v1, 0x1

    # setter for: Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$402(Z)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_44} :catch_56
    .catchall {:try_start_29 .. :try_end_44} :catchall_70

    .line 395
    :goto_44
    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_70

    .line 396
    return-void

    .line 388
    :cond_46
    :try_start_46
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;->mCPUCoreReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 389
    const/4 v1, 0x0

    # setter for: Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$402(Z)Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_55} :catch_56
    .catchall {:try_start_46 .. :try_end_55} :catchall_70

    goto :goto_44

    .line 392
    :catch_56
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_57
    const-string v1, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFrequencyRequest :  RemoteException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 395
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_70
    move-exception v1

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_57 .. :try_end_72} :catchall_70

    throw v1
.end method
