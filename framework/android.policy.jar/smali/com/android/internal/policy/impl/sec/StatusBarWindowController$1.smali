.class Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/StatusBarWindowController;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 98
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v3, :cond_1b

    const-string v3, "StatusBarWindowController"

    const-string v4, "Receive COLLAPSED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1b
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->performShowStatusBarOnFullScreen(Z)V

    .line 101
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v5, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    .line 119
    :cond_2f
    :goto_2f
    return-void

    .line 102
    :cond_30
    const-string v3, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 104
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v3, :cond_45

    const-string v3, "StatusBarWindowController"

    const-string v4, "Receive EXPANDED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_45
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iput-boolean v6, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mStatusBarExpanded:Z

    .line 106
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultHideOnFullScreen:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2f

    .line 107
    :cond_55
    const-string v3, "com.system.action.NOTIFICATION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 108
    const-string v3, "com.system.notification.DashNotificationManagerService.Type"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 109
    .local v2, "type":I
    const-string v3, "com.system.notification.DashNotificationManagerService.Disable"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 110
    .local v1, "disabled":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->SAFE_DEBUG:Z

    if-eqz v3, :cond_9f

    .line 111
    const-string v3, "StatusBarWindowController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive ACTION_NOTIFICATION_ARRIVED : mTopIsFullScreen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , disabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_9f
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mTopIsFullScreen:Z

    if-eqz v3, :cond_2f

    if-ne v2, v6, :cond_2f

    if-nez v1, :cond_2f

    .line 115
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/StatusBarWindowController$1;->this$0:Lcom/android/internal/policy/impl/sec/StatusBarWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;->mDefaultShowOnFullScreenByNotification:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2f
.end method
