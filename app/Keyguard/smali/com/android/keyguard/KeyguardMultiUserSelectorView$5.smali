.class Lcom/android/keyguard/KeyguardMultiUserSelectorView$5;
.super Ljava/lang/Object;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardMultiUserSelectorView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

.field final synthetic val$avatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Lcom/android/keyguard/KeyguardMultiUserAvatar;)V
    .registers 3

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$5;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$5;->val$avatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 454
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$5;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$5;->val$avatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    # setter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$102(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .line 457
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$5;->val$avatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 459
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$5;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # invokes: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setMobileDataMultiUser()V
    invoke-static {v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$200(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1b} :catch_1c

    .line 463
    :goto_1b
    return-void

    .line 460
    :catch_1c
    move-exception v0

    .line 461
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "KeyguardMultiUserSelectorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t switch user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method