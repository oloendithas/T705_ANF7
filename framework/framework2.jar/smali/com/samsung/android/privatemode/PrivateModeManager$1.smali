.class final Lcom/samsung/android/privatemode/PrivateModeManager$1;
.super Ljava/lang/Object;
.source "PrivateModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/privatemode/PrivateModeManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/PrivateModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 142
    # getter for: Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$000()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 144
    :try_start_6
    const-string v1, "PPS_PrivateModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstance: Calling IPrivateModeClient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$000()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    # getter for: Lcom/samsung/android/privatemode/PrivateModeManager;->mPrivateClient:Lcom/samsung/android/privatemode/IPrivateModeClient;
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->access$000()Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/privatemode/IPrivateModeClient;->onStateChange(II)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2b} :catch_2c

    .line 151
    :cond_2b
    :goto_2b
    return-void

    .line 146
    :catch_2c
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2b
.end method
