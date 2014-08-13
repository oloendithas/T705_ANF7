.class Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectDetailDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->val$data:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 94
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->val$data:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->val$data:Ljava/lang/String;

    .line 97
    .local v0, "item":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;

    iget v2, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->val$type:I

    # invokes: Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->onItemSelected(IILjava/lang/String;)V
    invoke-static {v1, v2, p2, v0}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->access$100(Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;IILjava/lang/String;)V

    .line 98
    return-void

    .line 96
    .end local v0    # "item":Ljava/lang/String;
    :cond_0
    # getter for: Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->access$000()Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method
