.class Lcom/android/keyguard/sec/KeyguardMultiUserManager$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardMultiUserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardMultiUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardMultiUserManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardMultiUserManager;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager$1;->this$0:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 83
    :cond_1c
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager$1;->this$0:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->updateAndNotifyMultiUserInfo()V

    .line 93
    :cond_21
    :goto_21
    return-void

    .line 84
    :cond_22
    const-string v2, "com.android.Keyguard.SHOW_KEYGUARD_TO_CHANGE_USER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 85
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager$1;->this$0:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    # getter for: Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mKeyguardCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->access$000(Lcom/android/keyguard/sec/KeyguardMultiUserManager;)Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager$1;->this$0:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    # getter for: Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mKeyguardCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->access$000(Lcom/android/keyguard/sec/KeyguardMultiUserManager;)Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_21

    .line 86
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager$1;->this$0:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    # getter for: Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mKeyguardCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->access$000(Lcom/android/keyguard/sec/KeyguardMultiUserManager;)Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->doKeyguardLocked()V

    goto :goto_21

    .line 87
    :cond_48
    const-string v2, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 88
    const-string v2, "reason"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, "reason":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    .line 90
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager$1;->this$0:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->updateAndNotifyMultiUserInfo()V

    goto :goto_21
.end method
