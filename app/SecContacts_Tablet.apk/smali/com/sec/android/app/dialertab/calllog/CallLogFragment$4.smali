.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 1045
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1074
    return-void
.end method

.method public onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V
    .locals 4
    .param p1, "view"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollState:I
    invoke-static {v0, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$502(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)I

    .line 1048
    sget v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mKeyCode:I

    const/16 v1, 0xef

    if-eq v0, v1, :cond_2

    .line 1049
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setScrollState(I)V

    .line 1051
    :cond_0
    if-nez p2, :cond_3

    .line 1052
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1054
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1062
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->startRequestProcessing()V

    .line 1068
    :cond_2
    :goto_0
    return-void

    .line 1063
    :cond_3
    const/4 v0, 0x1

    if-eq v0, p2, :cond_4

    const/4 v0, 0x2

    if-ne v0, p2, :cond_2

    .line 1065
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    goto :goto_0
.end method
