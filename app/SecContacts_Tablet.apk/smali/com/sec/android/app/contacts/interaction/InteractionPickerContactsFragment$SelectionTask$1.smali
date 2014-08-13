.class Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask$1;
.super Ljava/util/TimerTask;
.source "InteractionPickerContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;

.field final synthetic val$mSuccess:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;Z)V
    .locals 0

    .prologue
    .line 1749
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;

    iput-boolean p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask$1;->val$mSuccess:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1752
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsSelectAllRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1802(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    .line 1753
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1900(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$1902(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    .line 1755
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask$1;->val$mSuccess:Z

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$SelectionTask;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult()V

    .line 1759
    :cond_0
    return-void
.end method
