.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$7;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 795
    const-string v1, "feature_minimize_dialer_in_call"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isPenMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 797
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    .line 798
    .local v0, "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->minimizeWindow()V

    .line 799
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->sim2CallIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 800
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->backFromOthers:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$402(Z)Z

    .line 807
    .end local v0    # "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->sim2CallIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 805
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->sim2CallIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
