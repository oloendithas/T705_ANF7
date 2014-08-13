.class public final Lcom/android/contacts/util/AccountsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    }
.end annotation


# static fields
.field private static final SIM_ONE:I = 0x1

.field private static final SIM_ZERO:I


# instance fields
.field private final mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountListFilter"    # Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountListFilter"    # Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    .param p3, "currentAccount"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/model/AccountWithDataSet;Z)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/model/AccountWithDataSet;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountListFilter"    # Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    .param p3, "currentAccount"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p4, "refreshWhenAccountsReloaded"    # Z

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    .line 97
    if-eqz p4, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    new-instance v1, Lcom/android/contacts/util/AccountsListAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/android/contacts/util/AccountsListAdapter$1;-><init>(Lcom/android/contacts/util/AccountsListAdapter;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->setListener(Lcom/android/contacts/model/AccountTypeManager$Listener;)V

    .line 106
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/contacts/util/AccountsListAdapter;->getAccounts(Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    .line 107
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {v0, p3}, Lcom/android/contacts/model/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, v2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 113
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 114
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/util/AccountsListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/util/AccountsListAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/util/AccountsListAdapter;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/util/AccountsListAdapter;
    .param p1, "x1"    # Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/contacts/util/AccountsListAdapter;->getAccounts(Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAccounts(Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;
    .locals 3
    .param p1, "accountListFilter"    # Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GROUP_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v0, :cond_0

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 154
    :goto_0
    return-object v0

    .line 119
    :cond_0
    sget-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GOOGLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v0, :cond_1

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getGoogleAccountsWithDataSet()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 122
    :cond_1
    sget-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SAMSUNG:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v0, :cond_2

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getSamsungAccountsWithDataSet()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 125
    :cond_2
    sget-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v0, :cond_3

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 128
    :cond_3
    sget-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM1:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v0, :cond_4

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim1()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 130
    :cond_4
    sget-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM2:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v0, :cond_5

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim2()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 132
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_DOCOMO:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v0, :cond_6

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getDocomoAccountsWithDataSet()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 135
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_AUID:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v0, :cond_7

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getAUIDAccountsWithDataSet()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 154
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    sget-object v0, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/model/AccountWithDataSet;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 253
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 160
    if-eqz p2, :cond_2

    move-object v3, p2

    .line 163
    .local v3, "resultView":Landroid/view/View;
    :goto_0
    const v6, 0x1020014

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 164
    .local v4, "text1":Landroid/widget/TextView;
    const v6, 0x1020015

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 165
    .local v5, "text2":Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 167
    .local v2, "icon":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 168
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 170
    .local v1, "accountType":Lcom/android/contacts/model/AccountType;
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e012f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 171
    const v6, 0x7f0e012f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 172
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :goto_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0281

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e03f0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 235
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    :cond_1
    return-object v3

    .line 160
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v2    # "icon":Landroid/widget/ImageView;
    .end local v3    # "resultView":Landroid/view/View;
    .end local v4    # "text1":Landroid/widget/TextView;
    .end local v5    # "text2":Landroid/widget/TextView;
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v7, 0x7f040000

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_0

    .line 173
    .restart local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .restart local v1    # "accountType":Lcom/android/contacts/model/AccountType;
    .restart local v2    # "icon":Landroid/widget/ImageView;
    .restart local v3    # "resultView":Landroid/view/View;
    .restart local v4    # "text1":Landroid/widget/TextView;
    .restart local v5    # "text2":Landroid/widget/TextView;
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0281

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 180
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 181
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    :goto_2
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 184
    :cond_4
    const v6, 0x7f0e0281

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 187
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0282

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 191
    const v6, 0x7f0e0282

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 192
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 193
    :cond_6
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e03f0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 195
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim2"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim2"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 198
    :cond_7
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0131

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 199
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 222
    :cond_8
    iget-object v6, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 229
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method
