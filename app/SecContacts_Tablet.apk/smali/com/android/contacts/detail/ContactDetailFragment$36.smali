.class Lcom/android/contacts/detail/ContactDetailFragment$36;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->makeVideoCallEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;

.field final synthetic val$numbers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 3429
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$36;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$36;->val$numbers:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 3432
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$36;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3436
    :goto_0
    return-void

    .line 3433
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$36;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$36;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v2, 0x0

    const v3, 0x7f0e031b

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$36;->val$numbers:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method
