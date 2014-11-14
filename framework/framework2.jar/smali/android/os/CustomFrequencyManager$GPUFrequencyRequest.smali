.class public Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GPUFrequencyRequest"
.end annotation


# instance fields
.field mGPUReleaser:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .registers 8
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 244
    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 237
    new-instance v0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$1;

    invoke-direct {v0, p0}, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$1;-><init>(Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;)V

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mGPUReleaser:Ljava/lang/Runnable;

    .line 245
    return-void
.end method


# virtual methods
.method public cancelFrequencyRequestImpl()V
    .registers 7

    .prologue
    .line 266
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 268
    :try_start_3
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mGPUReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 269
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5}, Landroid/os/ICustomFrequencyManager;->releaseGPU(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 270
    const/4 v1, 0x0

    # setter for: Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$102(Z)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1d} :catch_1f
    .catchall {:try_start_3 .. :try_end_1d} :catchall_39

    .line 274
    :goto_1d
    :try_start_1d
    monitor-exit v2

    .line 275
    return-void

    .line 271
    :catch_1f
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelFrequencyRequest:: RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 274
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
    .line 248
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPU : doFrequencyRequest::  = "

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

    .line 249
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 250
    :try_start_29
    const-string v1, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPU : doFrequencyRequest::  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Timeout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_29 .. :try_end_4f} :catchall_96

    .line 252
    :try_start_4f
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    iget v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/os/ICustomFrequencyManager;->requestGPU(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 253
    iget-wide v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_6c

    .line 254
    const/4 v1, 0x1

    # setter for: Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$102(Z)Z
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_6a} :catch_7c
    .catchall {:try_start_4f .. :try_end_6a} :catchall_96

    .line 262
    :goto_6a
    :try_start_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_96

    .line 263
    return-void

    .line 256
    :cond_6c
    :try_start_6c
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mGPUReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    const/4 v1, 0x0

    # setter for: Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z
    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$102(Z)Z
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_7b} :catch_7c
    .catchall {:try_start_6c .. :try_end_7b} :catchall_96

    goto :goto_6a

    .line 259
    :catch_7c
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_7d
    const-string v1, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFrequencyRequest:: RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_96
    move-exception v1

    monitor-exit v2
    :try_end_98
    .catchall {:try_start_7d .. :try_end_98} :catchall_96

    throw v1
.end method
