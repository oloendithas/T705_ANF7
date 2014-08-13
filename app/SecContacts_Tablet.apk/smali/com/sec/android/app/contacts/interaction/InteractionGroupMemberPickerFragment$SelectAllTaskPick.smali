.class Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;
.super Landroid/os/AsyncTask;
.source "InteractionGroupMemberPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAllTaskPick"
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
    .line 1394
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1395
    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;->mSelectionMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    .line 1396
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;
    .param p3, "x2"    # Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$1;

    .prologue
    .line 1390
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1399
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;->mSelectionMode:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    sget-object v2, Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;->SELECT_ALL:Lcom/sec/android/app/contacts/list/OnSelectUnselectListener$SelectionMode;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setSelectAllCheckedPick(Z)Z
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$1000(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1390
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 1404
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1406
    .local v0, "mSuccess":Z
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onSelectedInfoChanged()V

    .line 1408
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1409
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    const/4 v3, 0x1

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog(Z)V
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)V

    .line 1412
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 1413
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;Z)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1426
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1390
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskPick;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
