.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "InteractionTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 638
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "action":Ljava/lang/String;
    const-string v2, "ResponseAxT9Info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    const-string v2, "AxT9IME.isVisibleWindow"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 642
    .local v1, "isSipVisible":Z
    if-eqz v1, :cond_1

    .line 643
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 644
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    const/4 v3, 0x1

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSipHide:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$102(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Z)Z

    .line 650
    .end local v1    # "isSipVisible":Z
    :cond_0
    :goto_0
    return-void

    .line 645
    .restart local v1    # "isSipVisible":Z
    :cond_1
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSipHide:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->showSpeedDialTutorialPopup()V
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    .line 647
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSipHide:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$102(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Z)Z

    goto :goto_0
.end method
