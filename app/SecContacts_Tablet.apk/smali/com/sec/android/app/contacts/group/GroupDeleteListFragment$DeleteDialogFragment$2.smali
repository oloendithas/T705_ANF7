.class Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;
.super Ljava/lang/Object;
.source "GroupDeleteListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;

.field final synthetic val$menuAdapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;->val$menuAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v6, 0x7f0e0347

    const v5, 0x7f0e02d4

    const/4 v4, 0x1

    .line 347
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 349
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;->val$menuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 351
    .local v2, "resId":I
    packed-switch v2, :pswitch_data_0

    .line 439
    :goto_0
    return-void

    .line 353
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    # getter for: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    .local v1, "deleteDialog":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->access$600(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    const v3, 0x7f0e01d0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2$2;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2$1;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 390
    .local v0, "alert":Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->access$700(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 391
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 354
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_0
    const v3, 0x7f0e01d1

    goto :goto_1

    .line 395
    .end local v1    # "deleteDialog":Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    # getter for: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 396
    .restart local v1    # "deleteDialog":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->access$600(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    const v3, 0x7f0e01d2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2$4;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2$3;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 432
    .restart local v0    # "alert":Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->access$700(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 433
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 396
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_1
    const v3, 0x7f0e01d3

    goto :goto_2

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e025a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
