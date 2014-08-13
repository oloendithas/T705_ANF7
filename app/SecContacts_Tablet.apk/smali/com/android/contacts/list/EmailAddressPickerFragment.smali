.class public Lcom/android/contacts/list/EmailAddressPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "EmailAddressPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_QUERY_STRING_LENGTH:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "EmailAddressPickerFragment"


# instance fields
.field private mEmptyView:Landroid/view/View;

.field protected mHasPhoneData:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

.field private mSearchNoMatchesView:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneData:Z

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setQuickContactEnabled(Z)V

    .line 64
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 66
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setDirectorySearchMode(I)V

    .line 68
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setSweepActionEnabled(Z)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setFakeQueryModeEnabled(Z)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/EmailAddressPickerFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/EmailAddressPickerFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .param p1, "isEmpty"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 273
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 279
    if-eqz p1, :cond_3

    .line 280
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 286
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    if-eqz p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 282
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 286
    goto :goto_2

    :cond_5
    move v2, v1

    .line 287
    goto :goto_3
.end method

.method private configureSearchView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 295
    iget-object v6, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mContext:Landroid/content/Context;

    .line 297
    :cond_0
    sget-boolean v6, Lcom/android/contacts/list/EmailAddressPickerFragment;->sIsTwoPaneMode:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v6, :cond_2

    .line 298
    iget-object v6, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c011e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 300
    .local v1, "defaultSearchViewTopBottomPadding":I
    iget-object v6, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c011f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 303
    .local v4, "searchViewTopBottomPadding":I
    iget-object v6, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0199

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 305
    .local v2, "leftPadding":I
    iget-object v6, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c019a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 307
    .local v3, "rightPadding":I
    sub-int v5, v4, v1

    .line 308
    .local v5, "topPadding":I
    sub-int v0, v4, v1

    .line 310
    .local v0, "bottomPadding":I
    iget-object v6, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 311
    iget-object v6, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v2, v8, v8, v8}, Landroid/widget/SearchView;->setPadding(IIII)V

    .line 316
    .end local v0    # "bottomPadding":I
    .end local v1    # "defaultSearchViewTopBottomPadding":I
    .end local v2    # "leftPadding":I
    .end local v3    # "rightPadding":I
    .end local v4    # "searchViewTopBottomPadding":I
    .end local v5    # "topPadding":I
    :cond_2
    :goto_0
    return-void

    .line 313
    .restart local v0    # "bottomPadding":I
    .restart local v1    # "defaultSearchViewTopBottomPadding":I
    .restart local v2    # "leftPadding":I
    .restart local v3    # "rightPadding":I
    .restart local v4    # "searchViewTopBottomPadding":I
    .restart local v5    # "topPadding":I
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v2, v5, v3, v0}, Landroid/widget/SearchView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private pickEmailAddress(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnEmailAddressPickerActionListener;->onPickEmailAddressAction(Landroid/net/Uri;)V

    .line 270
    return-void
.end method

.method private showNoMatchesView(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 262
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 263
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 263
    goto :goto_0

    :cond_2
    move v2, v1

    .line 264
    goto :goto_1
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 87
    new-instance v0, Lcom/android/contacts/list/EmailAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/EmailAddressListAdapter;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, "adapter":Lcom/android/contacts/list/EmailAddressListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/EmailAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 89
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/EmailAddressListAdapter;->setDisplayPhotos(Z)V

    .line 90
    const-string v1, "EmailAddressPickerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "member2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/contacts/list/EmailAddressListAdapter;->getCount()I

    move-result v3

    add-int/lit16 v3, v3, -0x3039

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const v4, 0x7f0901cd

    const/16 v3, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 109
    const v1, 0x7f040070

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0901a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 113
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 116
    :cond_0
    const v1, 0x7f090314

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 117
    const v1, 0x7f090314

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 120
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setFilters([Landroid/text/InputFilter;)V

    .line 129
    iget-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, v1, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v7, v5, v7, v5}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 130
    iget-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v6}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 132
    iget-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v5}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 133
    iget-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 134
    iget-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x7f0e01c2

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/android/contacts/list/EmailAddressPickerFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/EmailAddressPickerFragment$1;-><init>(Lcom/android/contacts/list/EmailAddressPickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 170
    invoke-direct {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->configureSearchView()V

    .line 172
    return-object v0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListContainer:Landroid/view/View;

    .line 100
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEmptyView:Landroid/view/View;

    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    .line 104
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/EmailAddressListAdapter;

    .line 82
    .local v0, "adapter":Lcom/android/contacts/list/EmailAddressListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/EmailAddressListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->pickEmailAddress(Landroid/net/Uri;)V

    .line 83
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 6
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    iget-boolean v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEnabled:Z

    if-nez v3, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 183
    .local v0, "loaderId":I
    if-ne v0, v4, :cond_4

    .line 184
    iput v5, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mDirectoryListStatus:I

    .line 185
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->startLoading()V

    .line 211
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    if-nez v0, :cond_3

    .line 213
    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 215
    iput-boolean v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneData:Z

    .line 219
    :cond_3
    :goto_2
    iget-boolean v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneData:Z

    if-nez v3, :cond_8

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->configureEmptyView(Z)V

    goto :goto_0

    .line 190
    :cond_4
    invoke-virtual {p0, v0, p2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 194
    invoke-direct {p0, v2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->configureEmptyView(Z)V

    goto :goto_1

    .line 196
    :cond_5
    iput v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mDirectoryListStatus:I

    .line 197
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 200
    iget-boolean v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v3, :cond_2

    .line 201
    iget v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mFakeQueryStatus:I

    if-ne v3, v1, :cond_6

    .line 202
    iput v5, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mFakeQueryStatus:I

    .line 203
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->startFullQuery()V

    goto :goto_1

    .line 204
    :cond_6
    iget v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mFakeQueryStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 205
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mFakeQueryStatus:I

    goto :goto_1

    .line 217
    :cond_7
    iput-boolean v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneData:Z

    goto :goto_2

    :cond_8
    move v1, v2

    .line 219
    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public setOnEmailAddressPickerActionListener(Lcom/android/contacts/list/OnEmailAddressPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

    .line 77
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 8
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    .line 226
    if-nez p2, :cond_0

    .line 227
    const-string v4, "EmailAddressPickerFragment"

    const-string v5, "Data is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/EmailAddressListAdapter;

    .line 235
    .local v0, "adapter":Lcom/android/contacts/list/EmailAddressListAdapter;
    if-nez v0, :cond_1

    .line 258
    :goto_1
    return-void

    .line 229
    .end local v0    # "adapter":Lcom/android/contacts/list/EmailAddressListAdapter;
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 230
    .local v1, "count":I
    const-string v4, "EmailAddressPickerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ready to display : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    .end local v1    # "count":I
    .restart local v0    # "adapter":Lcom/android/contacts/list/EmailAddressListAdapter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/list/EmailAddressListAdapter;->areAllPartitionsEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 242
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/contacts/list/EmailAddressPickerFragment;->showNoMatchesView(Z)V

    goto :goto_1

    .line 244
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f090437

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 245
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchNoMatchesView:Landroid/view/View;

    const v5, 0x7f09017e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 247
    .local v2, "progress":Landroid/widget/ProgressBar;
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/contacts/list/EmailAddressPickerFragment;->showNoMatchesView(Z)V

    .line 249
    invoke-virtual {v0}, Lcom/android/contacts/list/EmailAddressListAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 250
    const v4, 0x7f0e01a0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 251
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 253
    :cond_4
    const v4, 0x7f0e02de

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 254
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 255
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method
