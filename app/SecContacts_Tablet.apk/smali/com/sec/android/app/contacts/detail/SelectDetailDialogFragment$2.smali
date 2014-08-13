.class Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$2;
.super Ljava/lang/Object;
.source "SelectDetailDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;Ljava/lang/String;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$2;->val$data:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$2;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$2;->val$data:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$2;->val$data:Ljava/lang/String;

    .line 113
    .local v0, "item":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$2;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->launch(Landroid/content/Context;Ljava/lang/String;I)V

    .line 114
    return v2

    .line 112
    .end local v0    # "item":Ljava/lang/String;
    :cond_0
    # getter for: Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->access$000()Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method
