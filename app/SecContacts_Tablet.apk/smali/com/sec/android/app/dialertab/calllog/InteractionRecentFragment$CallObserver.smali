.class Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;
.super Landroid/database/ContentObserver;
.source "InteractionRecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 829
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 830
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 834
    const-string v0, "InteractionRecentFragment"

    const-string v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/4 v0, 0x1

    # setter for: Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->access$002(Z)Z

    .line 837
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->access$100(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    # invokes: Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)V

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    # invokes: Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)V

    goto :goto_0
.end method
