.class Lcom/android/contacts/detail/ContactDetailFragment$14;
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

.field final synthetic val$entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 0

    .prologue
    .line 2219
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$14;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$14;->val$entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$14;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2224
    :goto_0
    return-void

    .line 2223
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$14;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$14;->val$entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v1, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->createSelectSimDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
