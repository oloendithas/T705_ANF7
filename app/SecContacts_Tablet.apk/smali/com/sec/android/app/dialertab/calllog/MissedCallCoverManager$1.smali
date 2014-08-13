.class Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;
.super Ljava/lang/Object;
.source "MissedCallCoverManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;-><init>(Landroid/content/Context;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    const/4 v2, 0x1

    .line 72
    const-string v0, "MissedCallCoverManager"

    const-string v1, "mCoverStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    # setter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mCoverOpen:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->access$102(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;Z)Z

    .line 77
    const-string v0, "MissedCallCoverManager"

    const-string v1, "onCoverStateChanged:SWITCH_STATE_COVER_OPEN  Dismiss Dialong"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->dismissMissedCallCover()V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateCallDetailData()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mInitCoverOpenState:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->access$200(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const-string v0, "MissedCallCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCoverStateListener SWITCH_STATE_COVER_CLOSE mInitCoverOpenState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mInitCoverOpenState:Z
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->access$200(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 91
    :cond_2
    const-string v0, "MissedCallCoverManager"

    const-string v1, "mCoverStateListener SWITCH_STATE_COVER_CLOSE Show Dialong"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    # setter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mInitCoverOpenState:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->access$202(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;Z)Z

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$1;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->showMissedCallDialog()V

    goto :goto_0
.end method
