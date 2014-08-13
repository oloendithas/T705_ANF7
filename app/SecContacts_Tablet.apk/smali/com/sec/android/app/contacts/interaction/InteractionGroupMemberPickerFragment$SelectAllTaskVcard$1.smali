.class Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard$1;
.super Ljava/util/TimerTask;
.source "InteractionGroupMemberPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;

.field final synthetic val$mSuccess:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;Z)V
    .locals 0

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;

    iput-boolean p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard$1;->val$mSuccess:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1454
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsSelectAllRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$1202(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z

    .line 1456
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$1300(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$1302(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z

    .line 1459
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard$1;->val$mSuccess:Z

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard$1;->this$1:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onPickerResult()V

    .line 1463
    :cond_0
    return-void
.end method
