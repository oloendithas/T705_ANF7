.class Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$9;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V
    .locals 0

    .prologue
    .line 5596
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$9;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5599
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$9;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2200(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v3

    if-nez v3, :cond_1

    .line 5607
    :cond_0
    :goto_0
    return-void

    .line 5600
    :cond_1
    if-eqz p1, :cond_0

    .line 5601
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .line 5602
    .local v1, "entry":Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 5603
    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 5604
    .local v0, "detailViewEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->thirdIntent:Landroid/content/Intent;

    .line 5605
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 5606
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$9;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2200(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onItemClicked(Landroid/content/Intent;)V

    goto :goto_0
.end method
