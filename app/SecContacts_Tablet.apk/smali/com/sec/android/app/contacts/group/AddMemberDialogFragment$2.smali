.class Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$2;
.super Ljava/lang/Object;
.source "AddMemberDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 110
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 112
    .local v0, "resId":I
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    .local v2, "targetFragment":Landroid/app/Fragment;
    move-object v1, v2

    .line 113
    check-cast v1, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$Listener;

    .line 114
    .local v1, "target":Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$Listener;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$Listener;

    if-nez v3, :cond_2

    .line 115
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 129
    const-string v3, "AddMemberDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_1
    if-eqz p1, :cond_1

    .line 134
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 121
    :sswitch_0
    invoke-interface {v1}, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$Listener;->onCreateChosen()V

    goto :goto_1

    .line 125
    :sswitch_1
    invoke-interface {v1}, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$Listener;->onUpdateChosen()V

    goto :goto_1

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x7f0e0268 -> :sswitch_1
        0x7f0e0321 -> :sswitch_0
    .end sparse-switch
.end method
