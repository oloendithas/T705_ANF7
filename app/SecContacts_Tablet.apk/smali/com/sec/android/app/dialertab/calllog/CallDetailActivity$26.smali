.class final Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$26;
.super Landroid/os/Handler;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5062
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 5064
    const-string v0, "CallDetailActivity"

    const-string v1, "Set Video call button visible"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5065
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mVideoCallButtonView:Landroid/view/View;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$6100()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5066
    const/4 v0, 0x1

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isVtCallButtonenabled:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$6202(Z)Z

    .line 5067
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->voice_call_separator:Landroid/view/View;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$6300()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5068
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->voice_call_separator:Landroid/view/View;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$6300()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5069
    :cond_0
    return-void
.end method
