.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;
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
    .line 650
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 653
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-boolean v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->keyPressed:Z

    if-nez v3, :cond_0

    .line 667
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iput-boolean v6, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->keyPressed:Z

    .line 669
    const-string v3, "feature_minimize_dialer_in_call"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 670
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isPenMultiWindow(Landroid/app/Activity;)Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 671
    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    .line 672
    .local v1, "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->minimizeWindow()V

    .line 673
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 674
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->backFromOthers:Z
    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$402(Z)Z

    goto :goto_0

    .line 675
    .end local v1    # "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    :cond_2
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v3, :cond_4

    .line 676
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    .line 677
    .local v0, "mMW":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 678
    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getZoneInfo()I

    move-result v2

    .line 679
    .local v2, "zoneInfo":I
    const-string v3, "CallDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zoneInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    const-string v4, "zone_info"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 682
    .end local v2    # "zoneInfo":I
    :cond_3
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->backFromOthers:Z
    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$402(Z)Z

    .line 683
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 685
    .end local v0    # "mMW":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 688
    :cond_5
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->isSupportMultiWindow:Z

    if-eqz v3, :cond_7

    .line 689
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    .line 690
    .restart local v0    # "mMW":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 691
    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getZoneInfo()I

    move-result v2

    .line 692
    .restart local v2    # "zoneInfo":I
    const-string v3, "CallDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zoneInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    const-string v4, "zone_info"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    .end local v2    # "zoneInfo":I
    :cond_6
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->backFromOthers:Z
    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$402(Z)Z

    .line 696
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 698
    .end local v0    # "mMW":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
