.class Lcom/android/internal/policy/impl/PhoneWindowManager$27;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
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
    .line 7380
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x64

    const/4 v6, 0x0

    .line 7383
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 7390
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 7391
    .local v1, "userId":I
    const-string v2, "old_user_id"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 7392
    .local v0, "oldUserId":I
    if-ge v1, v4, :cond_56

    if-ge v0, v4, :cond_56

    .line 7393
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1702(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I

    .line 7399
    :goto_25
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->onChange(Z)V

    .line 7401
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateSettings()V

    .line 7407
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 7408
    :try_start_3c
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 7409
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2400(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    .line 7410
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_6b

    .line 7412
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2502(I)I

    .line 7414
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->refreshKnoxInfo()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 7416
    .end local v0    # "oldUserId":I
    .end local v1    # "userId":I
    :cond_55
    return-void

    .line 7395
    .restart local v0    # "oldUserId":I
    .restart local v1    # "userId":I
    :cond_56
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_window_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1702(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I

    goto :goto_25

    .line 7410
    :catchall_6b
    move-exception v2

    :try_start_6c
    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v2
.end method
