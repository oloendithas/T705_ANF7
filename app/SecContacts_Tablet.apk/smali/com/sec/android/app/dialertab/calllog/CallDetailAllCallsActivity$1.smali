.class Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity$1;
.super Ljava/lang/Object;
.source "CallDetailAllCallsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 207
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/common/widget/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 211
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v4, "CallDetailAllCallsActivity"

    const-string v5, " === setOnItemClickListener === "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eqz v0, :cond_0

    .line 213
    const/16 v4, 0xf

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 214
    .local v2, "logType":I
    const/16 v4, 0x19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "msgId":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v1, "intent":Landroid/content/Intent;
    const/16 v4, 0x12c

    if-ne v2, v4, :cond_1

    .line 218
    const-string v4, "CallDetailAllCallsActivity"

    const-string v5, " === ACTION_VIEW_SPAM_SMS === "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v4, "com.android.mms.spam.ACTION_VIEW_SPAM_SMS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v4, "msgId"

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 221
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 229
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "logType":I
    .end local v3    # "msgId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 222
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "logType":I
    .restart local v3    # "msgId":Ljava/lang/String;
    :cond_1
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_0

    .line 223
    const-string v4, "CallDetailAllCallsActivity"

    const-string v5, " === ACTION_VIEW_SPAM_MMS_NOTIFICATION === "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v4, "com.android.mms.spam.ACTION_VIEW_SPAM_MMS_NOTIFICATION"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v4, "msgId"

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 226
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailAllCallsActivity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
