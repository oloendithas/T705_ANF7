.class final Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InvitableAccountTypesAdapter"
.end annotation


# instance fields
.field private final mAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactData"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 6596
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 6597
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mContext:Landroid/content/Context;

    .line 6598
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 6599
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 6600
    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getInvitableAccountTypes()Ljava/util/ArrayList;

    move-result-object v1

    .line 6601
    .local v1, "types":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountType;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mAccountTypes:Ljava/util/ArrayList;

    .line 6603
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 6604
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mAccountTypes:Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6607
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mAccountTypes:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/contacts/model/AccountType$DisplayLabelComparator;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/contacts/model/AccountType$DisplayLabelComparator;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6608
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 6652
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I

    .prologue
    .line 6638
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType;

    .line 6639
    .local v0, "accountType":Lcom/android/contacts/model/AccountType;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 6640
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, v0, Lcom/android/contacts/model/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6643
    const-string v2, "com.android.contacts.action.INVITE_CONTACT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6646
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6647
    return-object v1
.end method

.method public getItem(I)Lcom/android/contacts/model/AccountType;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 6657
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 6590
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->getItem(I)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 6662
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 6612
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 6616
    .local v4, "resultView":Landroid/view/View;
    :goto_0
    const v7, 0x1020014

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 6617
    .local v5, "text1":Landroid/widget/TextView;
    const v7, 0x1020015

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 6618
    .local v6, "text2":Landroid/widget/TextView;
    const v7, 0x1020006

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 6620
    .local v2, "icon":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType;

    .line 6622
    .local v0, "accountType":Lcom/android/contacts/model/AccountType;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/contacts/model/AccountType;->getInviteContactActionLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6623
    .local v1, "action":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 6624
    .local v3, "label":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6625
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6626
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6632
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6634
    return-object v4

    .line 6612
    .end local v0    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v1    # "action":Ljava/lang/CharSequence;
    .end local v2    # "icon":Landroid/widget/ImageView;
    .end local v3    # "label":Ljava/lang/CharSequence;
    .end local v4    # "resultView":Landroid/view/View;
    .end local v5    # "text1":Landroid/widget/TextView;
    .end local v6    # "text2":Landroid/widget/TextView;
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v8, 0x7f040000

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 6628
    .restart local v0    # "accountType":Lcom/android/contacts/model/AccountType;
    .restart local v1    # "action":Ljava/lang/CharSequence;
    .restart local v2    # "icon":Landroid/widget/ImageView;
    .restart local v3    # "label":Ljava/lang/CharSequence;
    .restart local v4    # "resultView":Landroid/view/View;
    .restart local v5    # "text1":Landroid/widget/TextView;
    .restart local v6    # "text2":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6629
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 6630
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
