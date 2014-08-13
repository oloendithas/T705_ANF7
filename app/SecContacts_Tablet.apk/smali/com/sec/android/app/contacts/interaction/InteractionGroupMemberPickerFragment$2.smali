.class Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;
.super Ljava/lang/Object;
.source "InteractionGroupMemberPickerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->showMaxCountAlertDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)V
    .locals 0

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iput-boolean p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->val$flag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mShowMaxCountDialog:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$502(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;Z)Z

    .line 1189
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->val$flag:Z

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->mSelectedContactHashMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->setDoneButton(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->access$700(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;I)V

    .line 1191
    :cond_0
    return-void
.end method
