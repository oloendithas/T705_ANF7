.class Lcom/android/contacts/detail/ContactDetailFragment$18;
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

.field final synthetic val$groups:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2646
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$18;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$18;->val$groups:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 2649
    const/4 v8, 0x0

    .line 2650
    .local v8, "isGoogleAccount":Z
    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment$18;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v10}, Lcom/android/contacts/detail/ContactDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment$18;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;
    invoke-static {v11}, Lcom/android/contacts/detail/ContactDetailFragment;->access$900(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 2652
    .local v3, "contactUri":Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 2679
    :goto_0
    return-void

    .line 2653
    :cond_0
    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment$18;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->isKnoxOrPersonalAccount()Z
    invoke-static {v10}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2654
    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment$18;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0e018e

    invoke-static {v10, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2657
    :cond_1
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 2659
    .local v1, "contactId":J
    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment$18;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v10}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Entity;

    .line 2660
    .local v5, "entity":Landroid/content/Entity;
    invoke-virtual {v5}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 2661
    .local v4, "entValues":Landroid/content/ContentValues;
    const-string v10, "account_type"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2663
    .local v0, "accountType":Ljava/lang/String;
    const-string v10, "com.google"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2664
    const/4 v8, 0x1

    .line 2668
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v4    # "entValues":Landroid/content/ContentValues;
    .end local v5    # "entity":Landroid/content/Entity;
    :cond_3
    new-instance v7, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment$18;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v10}, Lcom/android/contacts/detail/ContactDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-direct {v7, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2669
    .local v7, "intent":Landroid/content/Intent;
    const-string v10, "android.intent.extra.CONTACT_ID"

    invoke-virtual {v7, v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2670
    const-string v10, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment$18;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v11, v11, Lcom/android/contacts/detail/ContactDetailFragment;->mlistGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2671
    const-string v10, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment$18;->val$groups:Ljava/util/ArrayList;

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2672
    const-string v10, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2674
    const-string v10, "hasPhoneNumber"

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment$18;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I
    invoke-static {v11}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)I

    move-result v11

    if-lez v11, :cond_4

    const/4 v9, 0x1

    :cond_4
    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2675
    const/high16 v9, 0x20000

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2677
    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$18;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v7, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
