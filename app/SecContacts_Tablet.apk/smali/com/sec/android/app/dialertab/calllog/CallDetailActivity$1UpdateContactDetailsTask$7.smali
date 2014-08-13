.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

.field final synthetic val$detailNumber:Ljava/lang/String;

.field final synthetic val$firstLine:Ljava/lang/String;

.field final synthetic val$secondLine:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2381
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;->val$detailNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;->val$firstLine:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;->val$secondLine:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 2383
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->isUsingTwoPanel:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2384
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mDisplayAllLogs:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$3702(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z

    .line 2385
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->allLogs_button_container:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2386
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;->val$detailNumber:Ljava/lang/String;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->displayAllLogs(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$5000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)V

    .line 2399
    :goto_0
    return-void

    .line 2388
    :cond_0
    const/4 v0, 0x0

    .line 2389
    .local v0, "duration_intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "duration_intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const-class v2, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2391
    .restart local v0    # "duration_intent":Landroid/content/Intent;
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->bVIP_BLog_Detail:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mEnableVIPApp:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2392
    const-string v1, "VIP_BlockedLogs_ALL"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2394
    :cond_1
    const-string v1, "number"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;->val$detailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2395
    const-string v1, "firstLine"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;->val$firstLine:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2396
    const-string v1, "secondLine"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;->val$secondLine:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2397
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
