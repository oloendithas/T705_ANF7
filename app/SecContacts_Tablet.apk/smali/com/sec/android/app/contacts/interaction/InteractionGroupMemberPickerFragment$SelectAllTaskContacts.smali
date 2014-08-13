.class Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;
.super Landroid/os/AsyncTask;
.source "InteractionGroupMemberPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAllTaskContacts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelectionMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V
    .locals 0
    .param p2, "aSelectionMode"    # Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1472
    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->mSelectionMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    .line 1473
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;
    .param p3, "x2"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;

    .prologue
    .line 1467
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1477
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->mSelectionMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    sget-object v4, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 1478
    .local v0, "lIsSelectAll":Z
    :goto_0
    if-nez v0, :cond_1

    .line 1479
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$1502(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z

    .line 1483
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning2:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$1600(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1484
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSelectAllCheckedContacts(Z)Z
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$1700(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1486
    :goto_2
    return-object v1

    .end local v0    # "lIsSelectAll":Z
    :cond_0
    move v0, v2

    .line 1477
    goto :goto_0

    .line 1481
    .restart local v0    # "lIsSelectAll":Z
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDataQueryTaskRunning:Z
    invoke-static {v2, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$1502(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z

    goto :goto_1

    .line 1486
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1467
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 1491
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1493
    .local v0, "mSuccess":Z
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onSelectedInfoChanged()V

    .line 1495
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1496
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    const/4 v3, 0x0

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog(Z)V
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)V

    .line 1499
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 1500
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;Z)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1513
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1467
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskContacts;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
