.class Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;
.super Landroid/os/AsyncTask;
.source "InteractionPickerFavoritesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAllTaskVcard"
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
    .line 1342
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$1;

    .prologue
    .line 1342
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "aIsSelectAll"    # [Ljava/lang/Boolean;

    .prologue
    .line 1346
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1347
    .local v0, "lIsSelectAll":Z
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setSelectAllCheckedVcard(Z)Z
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$1000(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1342
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 1352
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1354
    .local v0, "mSuccess":Z
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onSelectedInfoChanged()V

    .line 1356
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1357
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    const/4 v3, 0x1

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxCountAlertDialog(Z)V
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$1100(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)V

    .line 1360
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 1361
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;Z)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1374
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1342
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskVcard;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
