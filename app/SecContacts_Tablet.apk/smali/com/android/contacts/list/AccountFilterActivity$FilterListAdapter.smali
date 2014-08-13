.class Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/AccountFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterListAdapter"
.end annotation


# instance fields
.field private final mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field private mContext:Landroid/content/Context;

.field private final mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListContainer:Landroid/widget/LinearLayout;

.field private mSettingLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "current"    # Lcom/android/contacts/list/ContactListFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;",
            "Lcom/android/contacts/list/ContactListFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 263
    .local p2, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 264
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 266
    iput-object p2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    .line 267
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mContext:Landroid/content/Context;

    .line 268
    iput-object p3, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 269
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    .line 270
    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/list/ContactListFilter;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->getItem(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 279
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 289
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 290
    check-cast v1, Lcom/android/contacts/list/ContactListFilterView;

    .line 295
    .local v1, "view":Lcom/android/contacts/list/ContactListFilterView;
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListFilterView;->setSingleAccount(Z)V

    .line 296
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 297
    .local v0, "filter":Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListFilterView;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 298
    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactListFilterView;->bindView(Z)V

    .line 299
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 300
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListFilterView;->setActivated(Z)V

    .line 301
    const v2, 0x7f090196

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mListContainer:Landroid/widget/LinearLayout;

    .line 302
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mListContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter$1;-><init>(Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;Lcom/android/contacts/list/ContactListFilterView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    const v2, 0x7f090197

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mSettingLayout:Landroid/widget/FrameLayout;

    .line 316
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mSettingLayout:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter$2;-><init>(Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    return-object v1

    .line 292
    .end local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    .end local v1    # "view":Lcom/android/contacts/list/ContactListFilterView;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04006c

    invoke-virtual {v4, v5, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilterView;

    .restart local v1    # "view":Lcom/android/contacts/list/ContactListFilterView;
    goto :goto_0
.end method
