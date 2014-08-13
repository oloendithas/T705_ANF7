.class Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$2;
.super Ljava/lang/Object;
.source "GroupDeletionMenuDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

.field final synthetic val$menuAdapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$2;->val$menuAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 105
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$2;->val$menuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 106
    .local v0, "resId":I
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    .local v2, "targetFragment":Landroid/app/Fragment;
    move-object v1, v2

    .line 107
    check-cast v1, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$Listener;

    .line 109
    .local v1, "target":Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$Listener;
    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 111
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 112
    invoke-interface {v1}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$Listener;->onDeleteGroupOnlyChosen()V

    goto :goto_0

    .line 117
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 118
    invoke-interface {v1}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$Listener;->onDeleteGroupWithMemberChosen()V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e025a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
