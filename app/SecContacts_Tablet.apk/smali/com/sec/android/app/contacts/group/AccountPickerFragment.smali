.class public Lcom/sec/android/app/contacts/group/AccountPickerFragment;
.super Landroid/app/Fragment;
.source "AccountPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/contacts/list/OnActionBarClickListener;
.implements Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;,
        Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountPickerFragment"


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mHeaderView:Landroid/view/View;

.field private mList:Landroid/widget/ListView;

.field private mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

.field private mRootView:Landroid/view/View;

.field private mSelectedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    return-object v0
.end method

.method private addAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 1
    .param p1, "accountWithDataSet"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method private addAllAccountWithDataSet()V
    .locals 4

    .prologue
    .line 158
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 159
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 160
    .local v0, "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v0    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->getAllDocomoAccounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 166
    .restart local v0    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    .end local v0    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KDDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->getAllAUIDAccounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 173
    .restart local v0    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 176
    .end local v0    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_2
    return-void
.end method

.method private getAllAUIDAccounts()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "AUIDAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v2

    .line 213
    .local v2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    .line 214
    .local v1, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v4, "com.kddi.ast.auoneid"

    iget-object v5, v1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v1    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    return-object v0
.end method

.method private getAllDocomoAccounts()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v0, "DocomoAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v2

    .line 199
    .local v2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    .line 200
    .local v1, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v4, "com.android.nttdocomo"

    iget-object v5, v1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    .end local v1    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    return-object v0
.end method

.method private getAllGoogleAccounts()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v2, "googleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v1

    .line 184
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 185
    .local v0, "account":Lcom/android/contacts/model/AccountWithDataSet;
    const-string v4, "com.google"

    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "vnd.sec.contact.phone"

    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    .end local v0    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_2
    return-object v2
.end method

.method private removeAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 1
    .param p1, "accountWithDataSet"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method private removeAllAccountWithDataSet()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    return-void
.end method

.method private updateHeaderViewAndDoneButton()V
    .locals 5

    .prologue
    const v4, 0x7f09011e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->getCount()I

    move-result v0

    .line 224
    .local v0, "total":I
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onDoneButtonStateUpdated(Z)V

    .line 236
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    if-nez v1, :cond_3

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onTitleUpdated(II)V

    .line 240
    :goto_2
    return-void

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    invoke-interface {v1, v3}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_1

    .line 239
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onTitleUpdated(II)V

    goto :goto_2
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 97
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 99
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    .local v0, "allGoogleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->getAllDocomoAccounts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KDDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->getAllAUIDAccounts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_1
    new-instance v1, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    const v2, 0x7f04003c

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;-><init>(Lcom/sec/android/app/contacts/group/AccountPickerFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    .line 111
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 121
    const v0, 0x7f04014e

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mRootView:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    .line 123
    const v0, 0x7f0401df

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->updateHeaderViewAndDoneButton()V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDeSelectAllClicked()V
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->removeAllAccountWithDataSet()V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->notifyDataSetChanged()V

    .line 329
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->updateHeaderViewAndDoneButton()V

    .line 330
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method

.method public onDoneClicked()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onSelectedAction(Ljava/util/List;)V

    .line 309
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 136
    .local v0, "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->removeAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->notifyDataSetChanged()V

    .line 142
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->updateHeaderViewAndDoneButton()V

    .line 143
    return-void

    .line 139
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->addAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0
.end method

.method public onRevertAction()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onRevertAction()V

    .line 316
    :cond_0
    return-void
.end method

.method public onSelectAllClicked()V
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->addAllAccountWithDataSet()V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->notifyDataSetChanged()V

    .line 322
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->updateHeaderViewAndDoneButton()V

    .line 323
    return-void
.end method

.method public setAccountPickerActionListener(Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    .line 83
    return-void
.end method

.method public setSelectedAccounts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "selectedAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-nez p1, :cond_0

    .line 87
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    goto :goto_0
.end method
