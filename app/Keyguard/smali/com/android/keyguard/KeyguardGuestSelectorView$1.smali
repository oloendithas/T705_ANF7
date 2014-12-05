.class Lcom/android/keyguard/KeyguardGuestSelectorView$1;
.super Ljava/lang/Object;
.source "KeyguardGuestSelectorView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardGuestSelectorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPressedAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardGuestSelectorView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardGuestSelectorView;)V
    .registers 3

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/keyguard/KeyguardGuestSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardGuestSelectorView$1;->mPressedAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    return-void
.end method


# virtual methods
.method public Unlock(Landroid/widget/FrameLayout;)V
    .registers 10
    .param p1, "selectedView"    # Landroid/widget/FrameLayout;

    .prologue
    .line 81
    if-nez p1, :cond_3

    .line 101
    :goto_2
    return-void

    .line 83
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 85
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "num":I
    :goto_8
    if-ge v1, v3, :cond_4b

    .line 86
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 87
    .local v4, "v":Landroid/view/View;
    instance-of v5, v4, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-eqz v5, :cond_48

    move-object v0, v4

    .line 88
    check-cast v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .line 90
    .local v0, "avatar":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    :try_start_15
    const-string v5, "KeyguardGuestSelectorView"

    const-string v6, "Switch user"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 93
    iget-object v5, p0, Lcom/android/keyguard/KeyguardGuestSelectorView$1;->this$0:Lcom/android/keyguard/KeyguardGuestSelectorView;

    # invokes: Lcom/android/keyguard/KeyguardGuestSelectorView;->setMobileDataMultiUser()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardGuestSelectorView;->access$000(Lcom/android/keyguard/KeyguardGuestSelectorView;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2e} :catch_2f

    goto :goto_2

    .line 95
    :catch_2f
    move-exception v2

    .line 96
    .local v2, "re":Landroid/os/RemoteException;
    const-string v5, "KeyguardGuestSelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t switch user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v0    # "avatar":Lcom/android/keyguard/KeyguardMultiUserAvatar;
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 100
    .end local v4    # "v":Landroid/view/View;
    :cond_4b
    const-string v5, "KeyguardGuestSelectorView"

    const-string v6, "View is not avatar view"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
