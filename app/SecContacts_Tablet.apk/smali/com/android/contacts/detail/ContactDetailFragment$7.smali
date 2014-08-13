.class Lcom/android/contacts/detail/ContactDetailFragment$7;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$7;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1606
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$7;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/util/StreamItemEntry;

    .line 1607
    .local v0, "firstEntry":Lcom/android/contacts/util/StreamItemEntry;
    if-eqz v0, :cond_0

    .line 1608
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$7;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/contacts/util/StreamItemEntry;->getRawContactId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->loadProfileIntentWithRawContactId(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 1609
    .local v1, "profileIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$7;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1611
    .end local v1    # "profileIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
