.class Lcom/android/keyguard/KeyguardHostView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 2

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .registers 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$200(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 467
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$200(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 468
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->access$202(Lcom/android/keyguard/KeyguardHostView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 470
    :cond_17
    return-void
.end method

.method public onMusicClientIdChanged(IZLandroid/app/PendingIntent;)V
    .registers 8
    .param p1, "clientGeneration"    # I
    .param p2, "clearing"    # Z
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v0, 0x2

    .line 481
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget v1, v1, Lcom/android/keyguard/KeyguardHostView;->mClientGeneration:I

    if-ne v1, p1, :cond_d

    if-eqz p2, :cond_2d

    .line 482
    :cond_d
    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_58

    const-string v1, "hide"

    :goto_18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " transport, gen:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2d
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iput p1, v1, Lcom/android/keyguard/KeyguardHostView;->mClientGeneration:I

    .line 485
    if-eqz p2, :cond_5b

    const/4 v0, 0x0

    .line 488
    .local v0, "newState":I
    :cond_34
    :goto_34
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$400(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v0, v1, :cond_57

    .line 489
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # setter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardHostView;->access$402(Lcom/android/keyguard/KeyguardHostView;I)I

    .line 490
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_4c

    const-string v1, "KeyguardHostView"

    const-string v2, "update widget: transport state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_4c
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$500(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 493
    :cond_57
    return-void

    .line 482
    .end local v0    # "newState":I
    :cond_58
    const-string v1, "show"

    goto :goto_18

    .line 485
    :cond_5b
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$400(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v1, v0, :cond_34

    const/4 v0, 0x1

    goto :goto_34
.end method

.method public onMusicPlaybackStateChanged(IJ)V
    .registers 9
    .param p1, "playbackState"    # I
    .param p2, "eventTime"    # J

    .prologue
    const/4 v1, 0x1

    .line 496
    sget-boolean v2, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v2, :cond_1d

    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "music state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_1d
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$400(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v2

    if-eqz v2, :cond_52

    .line 498
    # invokes: Lcom/android/keyguard/KeyguardHostView;->isMusicPlaying(I)Z
    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostView;->access$600(I)Z

    move-result v2

    if-eqz v2, :cond_53

    const/4 v0, 0x2

    .line 500
    .local v0, "newState":I
    :goto_2c
    if-ne p1, v1, :cond_2f

    .line 501
    const/4 v0, -0x1

    .line 503
    :cond_2f
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$400(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v0, v1, :cond_52

    .line 504
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # setter for: Lcom/android/keyguard/KeyguardHostView;->mTransportState:I
    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardHostView;->access$402(Lcom/android/keyguard/KeyguardHostView;I)I

    .line 505
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_47

    const-string v1, "KeyguardHostView"

    const-string v2, "update widget: play state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_47
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$500(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 509
    .end local v0    # "newState":I
    :cond_52
    return-void

    :cond_53
    move v0, v1

    .line 498
    goto :goto_2c
.end method

.method public onUserSwitchComplete(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 474
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$2;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V

    .line 476
    :cond_12
    return-void
.end method
