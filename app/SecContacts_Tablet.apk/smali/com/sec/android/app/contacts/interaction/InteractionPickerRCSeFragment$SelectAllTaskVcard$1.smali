.class Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;
.super Ljava/lang/Object;
.source "InteractionPickerRCSeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;

.field final synthetic val$mSuccess:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;Z)V
    .locals 0

    .prologue
    .line 1723
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;

    iput-boolean p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;->val$mSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1728
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsSelectAllRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1602(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z

    .line 1730
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1700(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1702(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z

    .line 1733
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;->val$mSuccess:Z

    if-eqz v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onPickerResult()V

    .line 1738
    :cond_0
    return-void
.end method
