.class Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts$1;
.super Ljava/util/TimerTask;
.source "InteractionPickerFavoritesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

.field final synthetic val$mSuccess:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;Z)V
    .locals 0

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    iput-boolean p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts$1;->val$mSuccess:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1409
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsSelectAllRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$1202(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z

    .line 1412
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDataQueryTaskRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$1402(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z

    .line 1414
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$1300(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$1302(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z

    .line 1417
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts$1;->val$mSuccess:Z

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPickerResult()V

    .line 1421
    :cond_0
    return-void
.end method
