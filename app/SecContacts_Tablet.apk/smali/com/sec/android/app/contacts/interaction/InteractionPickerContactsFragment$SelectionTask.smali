.class Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;
.super Landroid/os/AsyncTask;
.source "InteractionPickerContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;)V
    .locals 0
    .param p2, "aMode"    # Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1712
    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->mMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    .line 1713
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;
    .param p3, "x2"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;

    .prologue
    .line 1707
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "aIsSelectAll"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1718
    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1719
    .local v0, "mIsSelectAll":Z
    const/4 v1, 0x0

    .line 1722
    .local v1, "result":Z
    sget-object v4, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->DEFAULT:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->mMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    if-ne v4, v5, :cond_2

    .line 1723
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    if-nez v0, :cond_0

    move v2, v3

    :cond_0
    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning:Z
    invoke-static {v4, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1302(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    .line 1724
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDataQueryTaskRunning2:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1400(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1725
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllCheckedContacts(Z)Z
    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1500(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1729
    :goto_0
    return-object v2

    .line 1727
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 1729
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setSelectAllCheckedVcard(Z)Z
    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1600(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1707
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 1736
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1737
    .local v0, "mSuccess":Z
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onSelectedInfoChanged()V

    .line 1739
    sget-object v2, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;->DEFAULT:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->mMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectAllTaskMode;

    if-ne v2, v3, :cond_1

    .line 1740
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1741
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V
    invoke-static {v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1700(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)V

    .line 1748
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 1749
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;Z)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1761
    return-void

    .line 1744
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCanShowMaxCountDialog:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1745
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V
    invoke-static {v2, v4}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1700(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1707
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
