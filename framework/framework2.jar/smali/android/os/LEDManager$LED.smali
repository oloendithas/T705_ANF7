.class public final Landroid/os/LEDManager$LED;
.super Ljava/lang/Object;
.source "LEDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/LEDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LED"
.end annotation


# instance fields
.field private final mId:I

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/os/LEDManager;


# direct methods
.method constructor <init>(Landroid/os/LEDManager;I)V
    .registers 4
    .param p2, "id"    # I

    .prologue
    .line 60
    iput-object p1, p0, Landroid/os/LEDManager$LED;->this$0:Landroid/os/LEDManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p2, p0, Landroid/os/LEDManager$LED;->mId:I

    .line 62
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    .line 63
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v1, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 69
    :try_start_3
    iget-object v0, p0, Landroid/os/LEDManager$LED;->this$0:Landroid/os/LEDManager;

    iget-object v0, v0, Landroid/os/LEDManager;->mService:Landroid/os/ILEDManager;

    iget-object v2, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/os/LEDManager$LED;->mId:I

    invoke-interface {v0, v2, v3}, Landroid/os/ILEDManager;->turnOffLED(Landroid/os/IBinder;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_13
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 72
    :goto_e
    :try_start_e
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_10

    throw v0

    .line 70
    :catch_13
    move-exception v0

    goto :goto_e
.end method

.method public setFlashing(IIII)V
    .registers 13
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .prologue
    .line 76
    iget-object v7, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    monitor-enter v7

    .line 78
    :try_start_3
    iget-object v0, p0, Landroid/os/LEDManager$LED;->this$0:Landroid/os/LEDManager;

    iget-object v0, v0, Landroid/os/LEDManager;->mService:Landroid/os/ILEDManager;

    iget-object v1, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/os/LEDManager$LED;->mId:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Landroid/os/ILEDManager;->setFlashingLED(Landroid/os/IBinder;IIIII)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_17
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 81
    :goto_12
    :try_start_12
    monitor-exit v7

    .line 82
    return-void

    .line 81
    :catchall_14
    move-exception v0

    monitor-exit v7
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_14

    throw v0

    .line 79
    :catch_17
    move-exception v0

    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 95
    iget-object v1, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 96
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LED Service mId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/os/LEDManager$LED;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 97
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public turnOff()V
    .registers 5

    .prologue
    .line 85
    iget-object v1, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    monitor-enter v1

    .line 87
    :try_start_3
    iget-object v0, p0, Landroid/os/LEDManager$LED;->this$0:Landroid/os/LEDManager;

    iget-object v0, v0, Landroid/os/LEDManager;->mService:Landroid/os/ILEDManager;

    iget-object v2, p0, Landroid/os/LEDManager$LED;->mToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/os/LEDManager$LED;->mId:I

    invoke-interface {v0, v2, v3}, Landroid/os/ILEDManager;->turnOffLED(Landroid/os/IBinder;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_13
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 90
    :goto_e
    :try_start_e
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_10

    throw v0

    .line 88
    :catch_13
    move-exception v0

    goto :goto_e
.end method
