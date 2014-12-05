.class Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;
.super Landroid/os/Handler;
.source "KeyguardMultiUserSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMultiUserSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V
    .registers 2

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 543
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_fa

    .line 603
    const-string v2, "KeyguardMultiUserSelectorView"

    const-string v3, "unknown msg type"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_10
    :goto_10
    return-void

    .line 546
    :pswitch_11
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$400(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 550
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$400(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 552
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$100(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 553
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$100(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    # setter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarWidth:I
    invoke-static {v3, v4}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$502(Lcom/android/keyguard/KeyguardMultiUserSelectorView;I)I

    .line 554
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # setter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;
    invoke-static {v3, v6}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$102(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .line 555
    const-string v3, "KeyguardMultiUserSelectorView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAvatarWidth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarWidth:I
    invoke-static {v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$500(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_5c
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$600(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 560
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 562
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v1, :cond_10

    .line 566
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->addUsers(Ljava/util/Collection;)V

    goto :goto_10

    .line 571
    .end local v0    # "um":Landroid/os/UserManager;
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :pswitch_76
    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserNow(Z)V

    .line 573
    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$100(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    move-result-object v4

    if-eqz v4, :cond_b5

    .line 574
    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$100(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    # setter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarWidth:I
    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$502(Lcom/android/keyguard/KeyguardMultiUserSelectorView;I)I

    .line 575
    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # setter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;
    invoke-static {v4, v6}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$102(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    .line 576
    const-string v4, "KeyguardMultiUserSelectorView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAvatarWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarWidth:I
    invoke-static {v6}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$500(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_b5
    :pswitch_b5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$700(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 584
    .restart local v0    # "um":Landroid/os/UserManager;
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 586
    .restart local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v1, :cond_10

    .line 590
    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$800(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    iget-object v4, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e2

    :goto_d9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    # invokes: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->startMoveAnimation(ZI)V
    invoke-static {v4, v2, v3}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$900(Lcom/android/keyguard/KeyguardMultiUserSelectorView;ZI)V

    goto/16 :goto_10

    :cond_e2
    move v2, v3

    goto :goto_d9

    .line 595
    .end local v0    # "um":Landroid/os/UserManager;
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :pswitch_e4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$800(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_10

    .line 599
    :pswitch_ef
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # getter for: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$800(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_10

    .line 543
    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_11
        :pswitch_b5
        :pswitch_76
        :pswitch_e4
        :pswitch_ef
    .end packed-switch
.end method
