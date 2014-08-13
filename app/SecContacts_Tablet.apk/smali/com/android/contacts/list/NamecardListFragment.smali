.class public Lcom/android/contacts/list/NamecardListFragment;
.super Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.source "NamecardListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/NamecardListFragment$OnLoadFinishedListener;
    }
.end annotation


# static fields
.field private static final SOFT_INPUT_MODE_DEFAULT:I = 0x10


# instance fields
.field private mHasFocus:Z

.field mListener:Lcom/android/contacts/list/NamecardListFragment$OnLoadFinishedListener;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/NamecardListFragment;->setPhotoLoaderEnabled(Z)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/NamecardListFragment;->setNamecardMode(Z)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/NamecardListFragment;->setSweepActionEnabled(Z)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/NamecardListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/NamecardListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/NamecardListFragment;->setFakeQueryModeEnabled(Z)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/NamecardListFragment;->setDirectorySearchMode(I)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/NamecardListFragment;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListFragment;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/contacts/list/NamecardListFragment;->requestSearchViewFocus(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/list/NamecardListFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/NamecardListFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .param p1, "isEmpty"    # Z

    .prologue
    const v1, 0x7f0901e1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 230
    iget-boolean v0, p0, Lcom/android/contacts/list/NamecardListFragment;->mCustomSearchMode:Z

    if-eqz v0, :cond_1

    .line 231
    if-eqz p1, :cond_0

    .line 232
    invoke-direct {p0, v3}, Lcom/android/contacts/list/NamecardListFragment;->showNoMatchesView(Z)V

    .line 233
    invoke-direct {p0}, Lcom/android/contacts/list/NamecardListFragment;->setNoMatchesText()V

    .line 245
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/contacts/list/NamecardListFragment;->showNoMatchesView(Z)V

    goto :goto_0

    .line 238
    :cond_1
    if-eqz p1, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :goto_1
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/contacts/list/NamecardListFragment;->setContactsUnavailableViewVisible(ZZZ)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private requestSearchViewFocus(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 356
    return-void
.end method

.method private setNoMatchesText()V
    .locals 4

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, "searchNoMatchesView":Landroid/view/View;
    const v2, 0x7f090437

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 257
    .local v1, "textView":Landroid/widget/TextView;
    const v2, 0x7f0e02de

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 258
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 259
    return-void
.end method

.method private setVisibleAccountfilterHeaderView(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "accountFilterHeaderContainer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 110
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_0
    return-void

    .line 110
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private showNoMatchesView(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0901a7

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 249
    .local v1, "noMatchView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0901e3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "listContentView":Landroid/view/View;
    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 252
    return-void

    :cond_0
    move v2, v4

    .line 250
    goto :goto_0

    :cond_1
    move v4, v3

    .line 251
    goto :goto_1
.end method


# virtual methods
.method public clearSearchResult()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    iput-boolean v2, p0, Lcom/android/contacts/list/NamecardListFragment;->mHasFocus:Z

    .line 169
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 170
    return-void
.end method

.method public clearSearchViewFocus()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 175
    :cond_0
    return-void
.end method

.method protected createCustomSearchbar()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 284
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 286
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 287
    .local v1, "menuBtn":Landroid/widget/ImageButton;
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 289
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090314

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 290
    .local v0, "addBtn":Landroid/widget/ImageButton;
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 293
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090100

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;

    .line 295
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 296
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 297
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, v2, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v5, v4, v5, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 298
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 299
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 300
    iget-boolean v2, p0, Lcom/android/contacts/list/NamecardListFragment;->mHasFocus:Z

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/contacts/list/NamecardListFragment$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/NamecardListFragment$1;-><init>(Lcom/android/contacts/list/NamecardListFragment;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0e01c2

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/NamecardListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/contacts/list/NamecardListFragment$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/NamecardListFragment$2;-><init>(Lcom/android/contacts/list/NamecardListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 352
    return-void
.end method

.method public bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->createListAdapter()Lcom/android/contacts/list/NamecardListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->createListAdapter()Lcom/android/contacts/list/NamecardListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public createListAdapter()Lcom/android/contacts/list/NamecardListAdapter;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Lcom/android/contacts/list/NamecardListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/NamecardListAdapter;-><init>(Landroid/content/Context;)V

    .line 271
    .local v0, "adapter":Lcom/android/contacts/list/NamecardListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/NamecardListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 272
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/NamecardListAdapter;->setDisplayPhotos(Z)V

    .line 273
    iget-boolean v1, p0, Lcom/android/contacts/list/NamecardListFragment;->mDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/NamecardListAdapter;->setDeleteMode(Z)V

    .line 274
    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 279
    const v0, 0x7f04019d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V
    .locals 5
    .param p1, "partitionIndex"    # I
    .param p2, "partition"    # Lcom/android/contacts/list/DirectoryPartition;

    .prologue
    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 216
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "directoryId"

    invoke-virtual {p2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 217
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v1

    .line 224
    .local v1, "cursorLoader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {v1}, Landroid/content/Loader;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    const/16 v2, 0x258

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/contacts/list/NamecardListFragment;->reLoadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;I)V

    .line 227
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/NamecardListFragment;->setSweepActionEnabled(Z)V

    .line 69
    :try_start_0
    check-cast p1, Lcom/android/contacts/list/NamecardListFragment$OnLoadFinishedListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/android/contacts/list/NamecardListFragment;->mListener:Lcom/android/contacts/list/NamecardListFragment$OnLoadFinishedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/list/NamecardListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnLoadFinishedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v9, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    move-object v6, p3

    .line 134
    check-cast v6, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 135
    .local v6, "info":Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    iget v7, v6, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v8

    sub-int v1, v7, v8

    .line 136
    .local v1, "adjPosition":I
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->clearCustomSearchViewFocus()V

    .line 137
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 139
    .local v2, "contactUri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "displayName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getUnknownNameText()Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "displayName":Ljava/lang/String;
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 142
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    .line 143
    .local v5, "inflater":Landroid/view/MenuInflater;
    const v7, 0x7f120007

    invoke-virtual {v5, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 145
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v3, "deleteIntent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 147
    const v7, 0x7f0904e6

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 151
    const v7, 0x7f0904e5

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 152
    const v7, 0x7f0904e8

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 153
    const v7, 0x7f0904ea

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 154
    const v7, 0x7f0904e7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 155
    const v7, 0x7f0904eb

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 156
    const v7, 0x7f0904ec

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 157
    const v7, 0x7f0904ed

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 158
    const v7, 0x7f0904ee

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 159
    const v7, 0x7f0904ef

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 160
    const v7, 0x7f0904f0

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 161
    const v7, 0x7f0904f1

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 162
    const v7, 0x7f0904f2

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    const v7, 0x7f0904f3

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 165
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 94
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/NamecardListFragment;->setVisibleAccountfilterHeaderView(Z)V

    .line 95
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onDestroy()V

    .line 264
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 266
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    iget-boolean v1, p0, Lcom/android/contacts/list/NamecardListFragment;->mDeleteMode:Z

    if-nez v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 369
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/NamecardListAdapter;

    .line 370
    .local v0, "adapter":Lcom/android/contacts/list/NamecardListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getDeleteUris()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/NamecardListAdapter;->setDeleteUris(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 179
    invoke-direct {p0, v3}, Lcom/android/contacts/list/NamecardListFragment;->setVisibleAccountfilterHeaderView(Z)V

    .line 180
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/contacts/list/NamecardListFragment;->configureEmptyView(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/NamecardListAdapter;

    .line 182
    .local v0, "adapter":Lcom/android/contacts/list/NamecardListAdapter;
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/NamecardListAdapter;->setEmptyView(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->hideTwIndexScrollbar()V

    .line 185
    iget-boolean v1, p0, Lcom/android/contacts/list/NamecardListFragment;->mEnabled:Z

    if-nez v1, :cond_2

    .line 199
    :goto_1
    return-void

    .end local v0    # "adapter":Lcom/android/contacts/list/NamecardListAdapter;
    :cond_1
    move v1, v3

    .line 180
    goto :goto_0

    .line 188
    .restart local v0    # "adapter":Lcom/android/contacts/list/NamecardListAdapter;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/NamecardListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 191
    iget-boolean v1, p0, Lcom/android/contacts/list/NamecardListFragment;->mFakeQueryModeEnabled:Z

    if-eqz v1, :cond_3

    .line 192
    iget v1, p0, Lcom/android/contacts/list/NamecardListFragment;->mFakeQueryStatus:I

    if-ne v1, v2, :cond_3

    .line 193
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/contacts/list/NamecardListFragment;->mFakeQueryStatus:I

    .line 194
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->startFullQuery()V

    .line 198
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/NamecardListFragment;->mListener:Lcom/android/contacts/list/NamecardListFragment$OnLoadFinishedListener;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/contacts/list/NamecardListFragment$OnLoadFinishedListener;->onCountChanged(I)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/NamecardListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onResume()V

    .line 118
    iget-boolean v1, p0, Lcom/android/contacts/list/NamecardListFragment;->mDeleteMode:Z

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/NamecardListFragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/NamecardListAdapter;

    .line 121
    .local v0, "adapter":Lcom/android/contacts/list/NamecardListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getDeleteUris()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getDeleteUris()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/NamecardListAdapter;->setDeleteUris(Ljava/util/ArrayList;)V

    .line 124
    .end local v0    # "adapter":Lcom/android/contacts/list/NamecardListAdapter;
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V

    .line 102
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->clearSearchViewFocus()V

    .line 104
    :cond_0
    return-void
.end method

.method public reOrder(I)V
    .locals 2
    .param p1, "sortOrder"    # I

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/NamecardListFragment;->setNamecardSortOrder(I)V

    .line 406
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/NamecardListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 407
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->reloadData()V

    .line 408
    return-void
.end method

.method public setNamecardSortOrder(I)V
    .locals 1
    .param p1, "sortOrder"    # I

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/NamecardListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/NamecardListAdapter;->setCustomSortOrder(I)V

    .line 402
    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/NamecardListFragment;->showEmptyUserProfile(Z)V

    .line 129
    return-void
.end method

.method protected startLoading()V
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/contacts/list/NamecardListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 210
    invoke-super {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startLoading()V

    goto :goto_0
.end method
