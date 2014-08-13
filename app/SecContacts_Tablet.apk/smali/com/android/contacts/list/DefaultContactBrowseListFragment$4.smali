.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;
.super Landroid/os/Handler;
.source "DefaultContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 788
    sget-boolean v1, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v1, :cond_0

    .line 789
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 837
    const-string v1, "DefaultContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - Entered into default case."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 791
    :sswitch_0
    const-string v1, "DefaultContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - mContactListhandler Called Msg - NOTIFICATION_INFO_EVT "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 797
    :sswitch_1
    const-string v1, "DefaultContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - mContactListhandler Called Msg:  HANDLE_200OK_EVENT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 800
    const-string v1, "DefaultContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - Within handler,Dialog not null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    .line 807
    :sswitch_2
    const-string v1, "DefaultContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - Within handler"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 809
    const-string v1, "DefaultContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - Within handler,Dialog not null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    .line 813
    :cond_1
    const-string v1, "DefaultContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - Do nothing,dialog already cancelled."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    :sswitch_3
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 820
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_3

    .line 821
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

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

    .line 824
    const-string v1, "DefaultContactBrowseListFragment"

    const-string v2, "Sending Subscribe"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sendsubscribe(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 829
    :cond_2
    const-string v1, "DefaultContactBrowseListFragment"

    const-string v2, "Sending Subscribe failed due to Initial publish 404"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 832
    :cond_3
    const-string v1, "DefaultContactBrowseListFragment"

    const-string v2, "EabContactBrowseListFragment - Content Resolver is null."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 789
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0xc -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method
