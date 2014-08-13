.class Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;
.super Landroid/os/AsyncTask;
.source "InteractionPickerRCSeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAllTaskContacts"
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
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)V
    .locals 0

    .prologue
    .line 1743
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;

    .prologue
    .line 1743
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "checked"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 1747
    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1748
    .local v0, "ischecked":Z
    const/4 v1, 0x0

    .line 1749
    .local v1, "result":Z
    if-eqz v0, :cond_0

    .line 1750
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1802(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z

    .line 1753
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning2:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1900(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1754
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSelectAllCheckedContacts(Z)Z
    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$2000(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z

    move-result v1

    .line 1757
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 1752
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    const/4 v3, 0x1

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1802(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z

    goto :goto_0

    .line 1756
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1743
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 1762
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1764
    .local v0, "mSuccess":Z
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onSelectedInfoChanged()V

    .line 1766
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1767
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    const/4 v3, 0x0

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxCountAlertDialog(Z)V
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1500(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)V

    .line 1770
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 1771
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;Z)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1786
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1743
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
