.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 2075
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2079
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    if-eqz v3, :cond_26

    .line 2080
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SAFETY_MESSAGE_TRIGGER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2081
    .local v2, "safetyMessage":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2082
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v4, 0xa

    invoke-virtual {v3, v7, v4, v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2083
    const-string v3, "SamsungWindowManager"

    const-string v4, "Safety mesage broadcasted"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    .end local v2    # "safetyMessage":Landroid/content/Intent;
    :cond_26
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 2089
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isOneTouchReportEnabled()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 2091
    const/4 v0, 0x0

    .line 2092
    .local v0, "intent":Landroid/content/Intent;
    :try_start_39
    sget-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_8a

    .line 2093
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const-string v5, "114"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .end local v0    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    move-object v0, v1

    .line 2097
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_4e
    const-string v3, "startFlag"

    const-string v4, "002"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2098
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2099
    const-string v3, "SamsungWindowManager"

    const-string v4, "OneTouchReport started"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_68} :catch_a4

    .line 2104
    :goto_68
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v4, 0xe

    invoke-virtual {v3, v7, v4, v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2111
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6f
    :goto_6f
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2112
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_89

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2113
    :cond_89
    return-void

    .line 2095
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_8a
    :try_start_8a
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const-string v5, "112"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9a} :catch_a4

    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    move-object v0, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_4e

    .line 2106
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9c
    const-string v3, "SamsungWindowManager"

    const-string v4, "OneTouchReport was disable"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 2101
    .restart local v0    # "intent":Landroid/content/Intent;
    :catch_a4
    move-exception v3

    goto :goto_68
.end method
