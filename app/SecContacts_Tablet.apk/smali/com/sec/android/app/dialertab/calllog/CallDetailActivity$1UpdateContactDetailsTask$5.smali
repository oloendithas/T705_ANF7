.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$5;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;)V
    .locals 0

    .prologue
    .line 2309
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$5;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2311
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$5;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$4200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 2312
    .local v0, "details_item":Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    if-eqz v0, :cond_0

    .line 2313
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2314
    .local v1, "intent":Landroid/content/Intent;
    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0x12c

    if-ne v2, v3, :cond_1

    .line 2315
    const-string v2, "CallDetailActivity"

    const-string v3, " === ACTION_VIEW_SPAM_SMS === "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    const-string v2, "com.android.mms.spam.ACTION_VIEW_SPAM_SMS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2317
    const-string v2, "msgId"

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->msgId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2318
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$5;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2326
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2319
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 2320
    const-string v2, "CallDetailActivity"

    const-string v3, " === ACTION_VIEW_SPAM_MMS_NOTIFICATION === "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    const-string v2, "com.android.mms.spam.ACTION_VIEW_SPAM_MMS_NOTIFICATION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2322
    const-string v2, "msgId"

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->msgId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2323
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$5;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
