.class Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;
.super Landroid/os/Handler;
.source "EabContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 142
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 182
    const-string v1, "EAB-EabContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - Entered into default case."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 144
    :sswitch_0
    const-string v1, "EAB-EabContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - mContactListhandler Called Msg - NOTIFICATION_INFO_EVT "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v1, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;

    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;-><init>(Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 148
    :sswitch_1
    const-string v1, "EAB-EabContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - mContactListhandler Called Msg:  HANDLE_200OK_EVENT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    iget-object v1, v1, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 150
    const-string v1, "EAB-EabContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - Within handler,Dialog not null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    iget-object v1, v1, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    .line 156
    :sswitch_2
    const-string v1, "EAB-EabContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - Within handler"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    iget-object v1, v1, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 158
    const-string v1, "EAB-EabContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - Within handler,Dialog not null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    iget-object v1, v1, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    .line 161
    :cond_1
    const-string v1, "EAB-EabContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - Do nothing,dialog already cancelled."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    # invokes: Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 166
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_3

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    iget-object v1, v1, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish404()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish403()Z

    move-result v1

    if-nez v1, :cond_2

    .line 169
    const-string v1, "EAB-EabContactBrowseListFragment"

    const-string v2, "Sending Subscribe"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    iget-object v1, v1, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sendsubscribe(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_2
    const-string v1, "EAB-EabContactBrowseListFragment"

    const-string v2, "Sending Subscribe failed due to Initial publish 404"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    :cond_3
    const-string v1, "EAB-EabContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - Content Resolver is null."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 142
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0xc -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method
