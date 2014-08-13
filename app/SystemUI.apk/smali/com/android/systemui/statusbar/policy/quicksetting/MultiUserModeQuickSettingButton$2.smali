.class Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiUserModeQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "action":Ljava/lang/String;
    const-string v4, "STATUSBAR-MultiUserModeQuickSettingButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v4, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    .line 104
    .local v2, "currentUser":I
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 106
    .local v1, "changedUser":I
    if-ne v1, v2, :cond_0

    .line 107
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->reloadUserInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1    # "changedUser":I
    .end local v2    # "currentUser":I
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v3

    .line 110
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v5, "Couldn\'t get current user id for profile change"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 112
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v4, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    .line 115
    .restart local v2    # "currentUser":I
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 118
    .restart local v1    # "changedUser":I
    if-ne v1, v2, :cond_0

    .line 120
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->updateDisplayName()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MultiUserModeQuickSettingButton;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 122
    .end local v1    # "changedUser":I
    .end local v2    # "currentUser":I
    :catch_1
    move-exception v3

    .line 123
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v4, "STATUSBAR-MultiUserModeQuickSettingButton"

    const-string v5, "Couldn\'t get current user id for profile change"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
