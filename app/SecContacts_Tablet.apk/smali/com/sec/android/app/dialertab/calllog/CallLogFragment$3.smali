.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->callLogCoverReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCoverState:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$102(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)Z

    .line 668
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCoverState:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    const-string v0, "CallLogFragment"

    const-string v1, "state open"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->removeMissedCallNotifications()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    .line 673
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateVoicemailNotifications()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    const-string v0, "CallLogFragment"

    const-string v1, "state close"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
