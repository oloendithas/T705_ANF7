.class Lcom/android/contacts/detail/ContactDetailFragment$16;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->buildEntries()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$menu:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2335
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$16;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$16;->val$menu:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailFragment$16;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$16;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2342
    :goto_0
    return-void

    .line 2339
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$16;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$16;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const/4 v2, 0x2

    const v3, 0x7f0e02a5

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$16;->val$menu:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$16;->val$data:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method
