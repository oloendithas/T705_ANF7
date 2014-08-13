.class Lcom/sec/android/app/contacts/interaction/MergeDialogFragment$2;
.super Ljava/lang/Object;
.source "MergeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "dismissDialog":Z
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 118
    .local v4, "resId":I
    packed-switch v4, :pswitch_data_0

    .line 155
    const/4 v1, 0x1

    .line 156
    const-string v5, "MergeDialogFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    if-eqz v1, :cond_0

    .line 161
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 163
    :cond_0
    return-void

    .line 121
    :pswitch_0
    const/4 v1, 0x1

    .line 122
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, "checkIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 139
    .end local v0    # "checkIntent":Landroid/content/Intent;
    :pswitch_1
    const/4 v1, 0x1

    .line 141
    new-instance v3, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;

    invoke-direct {v3}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;-><init>()V

    .line 144
    .local v3, "fragment":Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/MergeDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/MergeDialogFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "MergeWithGoogleDialogFragment"

    invoke-virtual {v3, v5, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v5, "MergeDialogFragment"

    const-string v6, "Error occured : "

    invoke-static {v5, v6, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x7f0e022e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
