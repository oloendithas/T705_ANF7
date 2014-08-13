.class Lcom/android/contacts/list/ContactListFilterControllerImpl;
.super Lcom/android/contacts/list/ContactListFilterController;
.source "ContactListFilterController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterController;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    .line 151
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    .line 152
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->checkFilterValidity(Z)V

    .line 154
    return-void
.end method

.method private filterAccountExists()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 236
    .local v0, "accountTypeManager":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountTypeManager;->getEnabledAccounts(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 242
    :goto_0
    return v2

    .line 240
    :cond_0
    new-instance v1, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v5, v5, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .local v1, "filterAccount":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->contains(Lcom/android/contacts/model/AccountWithDataSet;Z)Z

    move-result v2

    goto :goto_0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private notifyContactListFilterChanged()V
    .locals 3

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .line 201
    .local v1, "listener":Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    invoke-interface {v1}, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;->onContactListFilterChanged()V

    goto :goto_0

    .line 203
    .end local v1    # "listener":Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    :cond_0
    return-void
.end method

.method private setContactListFilter(Lcom/android/contacts/list/ContactListFilter;ZZ)V
    .locals 2
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;
    .param p2, "persistent"    # Z
    .param p3, "notifyListeners"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 184
    if-eqz p2, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    .line 187
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->notifyContactListFilterChanged()V

    .line 191
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public checkFilterValidity(Z)V
    .locals 2
    .param p1, "notifyListeners"    # Z

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v0, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 213
    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;ZZ)V

    goto :goto_0

    .line 218
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->filterAccountExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, -0x2

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;ZZ)V

    goto :goto_0

    .line 211
    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public selectCustomFilter()V
    .locals 2

    .prologue
    .line 195
    const/4 v0, -0x3

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 197
    return-void
.end method

.method public setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V
    .locals 1
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;
    .param p2, "persistent"    # Z

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;ZZ)V

    .line 178
    return-void
.end method
