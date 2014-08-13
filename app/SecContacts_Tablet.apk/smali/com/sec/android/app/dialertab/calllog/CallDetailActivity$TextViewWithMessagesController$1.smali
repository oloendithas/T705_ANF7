.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController$1;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->setTemporaryText(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;)V
    .locals 0

    .prologue
    .line 5006
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5009
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->access$5800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5013
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->access$5900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 5014
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->access$5902(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5015
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;->access$6000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$TextViewWithMessagesController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 5020
    :cond_0
    monitor-exit v1

    .line 5021
    return-void

    .line 5020
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
