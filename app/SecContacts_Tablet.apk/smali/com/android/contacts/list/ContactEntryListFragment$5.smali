.class Lcom/android/contacts/list/ContactEntryListFragment$5;
.super Lcom/sec/android/app/contacts/ContactCursorLoader;
.source "ContactEntryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactEntryListFragment;->createCursorLoaderToSupportSimContacts()Lcom/sec/android/app/contacts/ContactCursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactEntryListFragment;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/net/Uri;
    .param p4, "x2"    # [Ljava/lang/String;
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # [Ljava/lang/String;
    .param p7, "x5"    # Ljava/lang/String;

    .prologue
    .line 854
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment$5;, "Lcom/android/contacts/list/ContactEntryListFragment.5;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment$5;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/ContactCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 6

    .prologue
    .line 857
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment$5;, "Lcom/android/contacts/list/ContactEntryListFragment.5;"
    const/4 v1, 0x0

    .line 858
    .local v1, "isSimReady":Z
    const/4 v0, 0x0

    .line 859
    .local v0, "isSim2Ready":Z
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-nez v3, :cond_3

    .line 865
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment$5;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v1

    .line 867
    :goto_0
    if-eqz v1, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment$5;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, "selectionString":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 872
    const-string v3, " AND (link_type1 != \'vnd.sec.contact.sim\')"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 876
    const-string v3, "(link_type1 != \'vnd.sec.contact.sim\')"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 878
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-nez v3, :cond_4

    .line 888
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment$5;->setSelection(Ljava/lang/String;)V

    .line 889
    const-string v3, "ContactEntryListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimReady selectionString changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    .end local v2    # "selectionString":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 894
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment$5;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 895
    .restart local v2    # "selectionString":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 898
    const-string v3, " AND (link_type1 != \'vnd.sec.contact.sim2\')"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 902
    const-string v3, "(link_type1 != \'vnd.sec.contact.sim2\')"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 904
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment$5;->setSelection(Ljava/lang/String;)V

    .line 905
    const-string v3, "ContactEntryListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSim2Ready selectionString changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    .end local v2    # "selectionString":Ljava/lang/String;
    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/contacts/ContactCursorLoader;->onContentChanged()V

    .line 931
    return-void

    .line 860
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment$5;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v1

    .line 862
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment$5;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 881
    .restart local v2    # "selectionString":Ljava/lang/String;
    :cond_4
    const-string v3, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 883
    const-string v3, " AND (link_type1 != \'vnd.sec.contact.sim2\')"

    const-string v4, "(link_type1 != \'vnd.sec.contact.sim2\')"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method
