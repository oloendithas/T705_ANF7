.class Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;
.super Landroid/os/AsyncTask;
.source "InteractionPickerFavoritesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
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
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V
    .locals 0

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;

    .prologue
    .line 1376
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "aIsSelectAll"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 1380
    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1381
    .local v0, "lIsSelectAll":Z
    const/4 v1, 0x0

    .line 1382
    .local v1, "result":Z
    if-eqz v0, :cond_0

    .line 1383
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$1402(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z

    .line 1388
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning2:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$1500(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1389
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSelectAllCheckedContacts(Z)Z
    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$1600(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z

    move-result v1

    .line 1393
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 1385
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    const/4 v3, 0x1

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$1402(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z

    goto :goto_0

    .line 1391
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1376
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 1399
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1400
    .local v0, "mSuccess":Z
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedInfoChanged()V

    .line 1402
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1403
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    const/4 v3, 0x0

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxCountAlertDialog(Z)V
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)V

    .line 1406
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 1407
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;Z)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1423
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1376
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
