.class Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$4;
.super Ljava/lang/Object;
.source "InteractionPickerRCSeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxCountAlertDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)V
    .locals 0

    .prologue
    .line 1506
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iput-boolean p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$4;->val$flag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mShowMaxCountDialog:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$702(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z

    .line 1511
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$4;->val$flag:Z

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$800(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setDoneButton(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$900(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;I)V

    .line 1513
    :cond_0
    return-void
.end method
