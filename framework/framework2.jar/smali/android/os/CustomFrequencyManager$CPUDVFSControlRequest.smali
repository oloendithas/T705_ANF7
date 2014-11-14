.class public Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CPUDVFSControlRequest"
.end annotation


# instance fields
.field mCPUDVFSReleaser:Ljava/lang/Runnable;

.field mCallingID:I

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .registers 13
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 420
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 421
    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 413
    const/4 v3, -0x1

    iput v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCallingID:I

    .line 414
    new-instance v3, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$1;

    invoke-direct {v3, p0}, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$1;-><init>(Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;)V

    iput-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Ljava/lang/Runnable;

    .line 423
    packed-switch p2, :pswitch_data_46

    .line 428
    const-string v3, "CustomFrequencyManager"

    const-string v4, "CustomFrequencyManager : CPUDVFSControlRequest : invalid type"

    invoke-static {v3, v4}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iput-boolean v5, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    .line 451
    :cond_1c
    :goto_1c
    return-void

    .line 433
    :pswitch_1d
    invoke-virtual {p1}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v2

    .line 434
    .local v2, "supportedFrequency":[I
    if-nez v2, :cond_2d

    .line 435
    const-string v3, "CustomFrequencyManager"

    const-string v4, "CustomFrequencyManager : CPUDVFSControlRequest : getSupportedFrequency : null"

    invoke-static {v3, v4}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iput-boolean v5, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    goto :goto_1c

    .line 440
    :cond_2d
    const/4 v0, 0x0

    .line 441
    .local v0, "bFound":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    array-length v3, v2

    if-ge v1, v3, :cond_3a

    .line 442
    aget v3, v2, v1

    if-ne p3, v3, :cond_37

    .line 443
    const/4 v0, 0x1

    .line 441
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 446
    :cond_3a
    if-nez v0, :cond_1c

    .line 447
    const-string v3, "CustomFrequencyManager"

    const-string v4, "CustomFrequencyManager : CPUDVFSControlRequest : invalid frequency"

    invoke-static {v3, v4}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iput-boolean v5, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    goto :goto_1c

    .line 423
    :pswitch_data_46
    .packed-switch 0x6
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized cancelFrequencyRequest(I)V
    .registers 5
    .param p1, "callingID"    # I

    .prologue
    .line 493
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 494
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Landroid/os/ICustomFrequencyManager;->releasePersistentDVFSLock(ILjava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_15
    .catchall {:try_start_1 .. :try_end_13} :catchall_1a

    .line 498
    :goto_13
    monitor-exit p0

    return-void

    .line 495
    :catch_15
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_13

    .line 493
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public cancelFrequencyRequestImpl()V
    .registers 6

    .prologue
    .line 482
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 484
    :try_start_3
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 485
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/os/ICustomFrequencyManager;->releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_17} :catch_19
    .catchall {:try_start_3 .. :try_end_17} :catchall_1e

    .line 489
    :goto_17
    :try_start_17
    monitor-exit v2

    .line 490
    return-void

    .line 486
    :catch_19
    move-exception v0

    .line 487
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_17

    .line 489
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public declared-synchronized doFrequencyRequest(I)V
    .registers 7
    .param p1, "callingID"    # I

    .prologue
    .line 475
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    iget v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, v4}, Landroid/os/ICustomFrequencyManager;->acquirePersistentDVFSLock(IIILjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_10
    .catchall {:try_start_1 .. :try_end_e} :catchall_2a

    .line 479
    :goto_e
    monitor-exit p0

    return-void

    .line 476
    :catch_10
    move-exception v0

    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFrequencyRequest :  RemoteException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_2a

    goto :goto_e

    .line 475
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public doFrequencyRequestImpl()V
    .registers 8

    .prologue
    .line 454
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPUDVFSControlRequest : doFrequencyRequest::  = "

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

    .line 455
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 457
    :try_start_29
    iget v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCallingID:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_74

    .line 458
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    iget v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/os/ICustomFrequencyManager;->acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 459
    iget-wide v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_4b

    .line 460
    const/4 v1, 0x1

    # setter for: Landroid/os/CustomFrequencyManager;->infinitCPUBoostServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$502(Z)Z
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_49} :catch_57
    .catchall {:try_start_29 .. :try_end_49} :catchall_71

    .line 470
    :goto_49
    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_71

    .line 471
    return-void

    .line 462
    :cond_4b
    :try_start_4b
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCPUDVFSReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_56} :catch_57
    .catchall {:try_start_4b .. :try_end_56} :catchall_71

    goto :goto_49

    .line 467
    :catch_57
    move-exception v0

    .line 468
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_58
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

    goto :goto_49

    .line 470
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_71
    move-exception v1

    monitor-exit v2
    :try_end_73
    .catchall {:try_start_58 .. :try_end_73} :catchall_71

    throw v1

    .line 465
    :cond_74
    :try_start_74
    iget v1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->mCallingID:I

    invoke-virtual {p0, v1}, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;->doFrequencyRequest(I)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_79} :catch_57
    .catchall {:try_start_74 .. :try_end_79} :catchall_71

    goto :goto_49
.end method
