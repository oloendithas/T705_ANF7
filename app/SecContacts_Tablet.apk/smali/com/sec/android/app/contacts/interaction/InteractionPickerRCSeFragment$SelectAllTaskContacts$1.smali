.class Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts$1;
.super Ljava/util/TimerTask;
.source "InteractionPickerRCSeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

.field final synthetic val$mSuccess:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;Z)V
    .locals 0

    .prologue
    .line 1771
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

    iput-boolean p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts$1;->val$mSuccess:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1773
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsSelectAllRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1602(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z

    .line 1775
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDataQueryTaskRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1802(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z

    .line 1777
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1700(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1702(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z

    .line 1780
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts$1;->val$mSuccess:Z

    if-eqz v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onPickerResult()V

    .line 1784
    :cond_0
    return-void
.end method
