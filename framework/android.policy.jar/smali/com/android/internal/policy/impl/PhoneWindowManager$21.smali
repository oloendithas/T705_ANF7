.class Lcom/android/internal/policy/impl/PhoneWindowManager$21;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2

    .prologue
    .line 6531
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 6534
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v5

    .line 6535
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eq v4, p0, :cond_d

    .line 6536
    monitor-exit v5

    .line 6569
    :goto_c
    return-void

    .line 6538
    :cond_d
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 6539
    .local v1, "messenger":Landroid/os/Messenger;
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 6540
    .local v2, "msg":Landroid/os/Message;
    move-object v3, p0

    .line 6541
    .local v3, "myConn":Landroid/content/ServiceConnection;
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$21;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 6553
    .local v0, "h":Landroid/os/Handler;
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 6554
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg2:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 6555
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_45

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 6556
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 6557
    :cond_45
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_58

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 6558
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->arg2:I

    .line 6560
    :cond_58
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_6b

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 6561
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->arg2:I
    :try_end_6b
    .catchall {:try_start_5 .. :try_end_6b} :catchall_70

    .line 6565
    :cond_6b
    :try_start_6b
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_6e} :catch_73
    .catchall {:try_start_6b .. :try_end_6e} :catchall_70

    .line 6568
    :goto_6e
    :try_start_6e
    monitor-exit v5

    goto :goto_c

    .end local v0    # "h":Landroid/os/Handler;
    .end local v1    # "messenger":Landroid/os/Messenger;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "myConn":Landroid/content/ServiceConnection;
    :catchall_70
    move-exception v4

    monitor-exit v5
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_70

    throw v4

    .line 6566
    .restart local v0    # "h":Landroid/os/Handler;
    .restart local v1    # "messenger":Landroid/os/Messenger;
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "myConn":Landroid/content/ServiceConnection;
    :catch_73
    move-exception v4

    goto :goto_6e
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 6571
    return-void
.end method
