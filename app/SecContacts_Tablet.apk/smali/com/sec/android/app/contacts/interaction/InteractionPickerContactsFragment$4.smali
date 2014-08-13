.class Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$4;
.super Ljava/lang/Object;
.source "InteractionPickerContactsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->showMaxCountAlertDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)V
    .locals 0

    .prologue
    .line 1516
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iput-boolean p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$4;->val$flag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x0

    .line 1520
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mShowMaxCountDialog:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$502(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    .line 1521
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mCanShowMaxCountDialog:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$602(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;Z)Z

    .line 1522
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$4;->val$flag:Z

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mSelectedContactHashMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$700(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->setDoneButton(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$800(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;I)V

    .line 1524
    :cond_0
    return-void
.end method
