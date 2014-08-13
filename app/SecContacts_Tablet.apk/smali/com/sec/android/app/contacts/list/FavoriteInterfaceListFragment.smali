.class public Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "FavoriteInterfaceListFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteAllTaskFavoriteList;,
        Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;,
        Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/sec/android/app/contacts/list/OnSelectUnselectListener;"
    }
.end annotation


# static fields
.field static final CLAUSE_DATA:Ljava/lang/String; = "data"

.field private static final KEY_ACTION_CODE:Ljava/lang/String; = "actionCode"

.field private static final KEY_FILTER:Ljava/lang/String; = "filter"

.field private static final KEY_SELECTED_INFO:Ljava/lang/String; = "selectedInfo"

.field private static final MAX_OPERATION_COUNT:I = 0xfa

.field private static sIsTablet:Z

.field private static sProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionCode:I

.field private mActivity:Landroid/app/Activity;

.field private mAddAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

.field private mDeleteAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteAllTaskFavoriteList;

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mListFrame:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;

.field private mNoMatchView:Landroid/view/View;

.field private mSearchMode:Z

.field private mSearchView:Landroid/widget/SearchView;

.field private mSearchViewLayout:Landroid/view/View;

.field private mSelectedInfoHashSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field private threadRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 599
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->threadRunning:Z

    .line 94
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setPhotoLoaderEnabled(Z)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setQuickContactEnabled(Z)V

    .line 97
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDirectorySearchMode(I)V

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->announceItStopped()V

    return-void
.end method

.method static synthetic access$502(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 58
    sput-object p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private addContactFromSelectAll(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    return-void
.end method

.method private addSelectedContact(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->checkIfRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onSelectedInfoChanged()V

    .line 379
    :cond_0
    return-void
.end method

.method private declared-synchronized announceItStopped()V
    .locals 1

    .prologue
    .line 609
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->threadRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    monitor-exit p0

    return-void

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized checkIfRunning()Z
    .locals 1

    .prologue
    .line 601
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->threadRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private configureSearchView()V
    .locals 11

    .prologue
    .line 293
    sget-boolean v9, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->sIsTwoPaneMode:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchViewLayout:Landroid/view/View;

    if-eqz v9, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    .line 297
    .local v4, "listView":Landroid/view/View;
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    if-nez v9, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    .line 301
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c011d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 306
    .local v1, "defaultSearchViewLeftRightPadding":I
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c011e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 311
    .local v2, "defaultSearchViewTopBottomPadding":I
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c011f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 315
    .local v6, "searchViewTopBottomPadding":I
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0120

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 320
    .local v7, "searchViewTopBottomPaddingInPopupList":I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int v3, v9, v1

    .line 322
    .local v3, "leftPadding":I
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchViewLayout:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int v5, v9, v1

    .line 325
    .local v5, "rightPadding":I
    sub-int v8, v6, v2

    .line 327
    .local v8, "topPadding":I
    sub-int v0, v6, v2

    .line 329
    .local v0, "bottomPadding":I
    iget-boolean v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mDeleteMode:Z

    if-nez v9, :cond_3

    .line 331
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getVerticalTwIndexScrollbarPosition()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 333
    add-int/lit8 v5, v5, 0xc

    .line 352
    :goto_0
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchViewLayout:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v8, v5, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 355
    .end local v0    # "bottomPadding":I
    .end local v1    # "defaultSearchViewLeftRightPadding":I
    .end local v2    # "defaultSearchViewTopBottomPadding":I
    .end local v3    # "leftPadding":I
    .end local v4    # "listView":Landroid/view/View;
    .end local v5    # "rightPadding":I
    .end local v6    # "searchViewTopBottomPadding":I
    .end local v7    # "searchViewTopBottomPaddingInPopupList":I
    .end local v8    # "topPadding":I
    :cond_1
    return-void

    .line 337
    .restart local v0    # "bottomPadding":I
    .restart local v1    # "defaultSearchViewLeftRightPadding":I
    .restart local v2    # "defaultSearchViewTopBottomPadding":I
    .restart local v3    # "leftPadding":I
    .restart local v4    # "listView":Landroid/view/View;
    .restart local v5    # "rightPadding":I
    .restart local v6    # "searchViewTopBottomPadding":I
    .restart local v7    # "searchViewTopBottomPaddingInPopupList":I
    .restart local v8    # "topPadding":I
    :cond_2
    add-int/lit8 v3, v3, 0xc

    goto :goto_0

    .line 344
    :cond_3
    sub-int v8, v7, v2

    .line 347
    sub-int v0, v7, v2

    goto :goto_0
.end method

.method private createCustomSearchbar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    const v1, 0x7f0901a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchViewLayout:Landroid/view/View;

    .line 242
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    const/16 v1, 0x15e

    if-ne v0, v1, :cond_2

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchViewLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchViewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0e01c2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;-><init>(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 280
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSearchView(Z)V

    .line 287
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->configureSearchView()V

    .line 289
    return-void

    .line 281
    :cond_2
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    const/16 v1, 0x15f

    if-ne v0, v1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchViewLayout:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchViewLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSearchView(Z)V

    goto :goto_0
.end method

.method private deleteFavoriteData(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v2, 0x0

    .line 735
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 736
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 737
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getFrequentDeleteUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 738
    .local v0, "contactFrequentDeleteUri":Landroid/net/Uri;
    invoke-virtual {p1, v0, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 740
    .end local v0    # "contactFrequentDeleteUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method protected static dismissProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 831
    sget-object v1, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    move-object v0, v2

    .line 832
    .local v0, "dialog":Landroid/app/ProgressDialog;
    :goto_0
    if-eqz v0, :cond_0

    .line 834
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :cond_0
    :goto_1
    sput-object v2, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    .line 840
    return-void

    .line 831
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :cond_1
    sget-object v1, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    move-object v0, v1

    goto :goto_0

    .line 835
    .restart local v0    # "dialog":Landroid/app/ProgressDialog;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private getFrequentDeleteUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "dataId"    # Ljava/lang/String;

    .prologue
    .line 743
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "usagefeedback_delete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 747
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private invalidateSelectedMap(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    .line 473
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    .line 474
    .local v4, "mTempadapterHashSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 475
    .local v0, "countId":I
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 476
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 479
    :cond_0
    :try_start_0
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 480
    .local v2, "lC_Id":J
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 481
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 482
    add-int/lit8 v0, v0, 0x1

    .line 484
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 489
    .end local v2    # "lC_Id":J
    :cond_2
    if-lez v0, :cond_3

    .line 490
    iput-object v4, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    .line 497
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 492
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 494
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method private isSelectedContact(J)Z
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized markAsItsRunning()V
    .locals 1

    .prologue
    .line 605
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->threadRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    monitor-exit p0

    return-void

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeContact(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->checkIfRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onSelectedInfoChanged()V

    .line 372
    :cond_0
    return-void
.end method

.method private removeContactFromSelectAll(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 400
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 403
    return-void
.end method

.method private setDoneButton(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 439
    if-nez p1, :cond_1

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListener:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;->onDoneButtonStateUpdated(Z)V

    .line 444
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListener:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;->onSelectionChanged(I)V

    .line 445
    return-void

    .line 441
    :cond_1
    if-lez p1, :cond_0

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListener:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_0
.end method

.method private setSelectAllChecked(Z)V
    .locals 7
    .param p1, "isChecked"    # Z

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 407
    .local v0, "adapter":Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v1

    .line 408
    .local v1, "headerEnabled":Z
    const/4 v5, 0x0

    .line 409
    .local v5, "startPos":I
    if-eqz v1, :cond_0

    .line 410
    add-int/lit8 v5, v5, 0x1

    .line 413
    :cond_0
    move v4, v5

    .local v4, "position":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 414
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 416
    .local v2, "id":J
    if-nez p1, :cond_1

    .line 417
    invoke-direct {p0, v4, v2, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->addContactFromSelectAll(IJ)V

    .line 413
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 419
    :cond_1
    invoke-direct {p0, v4, v2, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->removeContactFromSelectAll(IJ)V

    goto :goto_1

    .line 423
    .end local v2    # "id":J
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onSelectedInfoChanged()V

    .line 424
    return-void
.end method


# virtual methods
.method public actionDeleteFavoriteList()V
    .locals 24

    .prologue
    .line 636
    new-instance v21, Landroid/content/ContentValues;

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 637
    .local v21, "values":Landroid/content/ContentValues;
    const-string v4, "starred"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 639
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 640
    .local v20, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v4

    const/4 v4, 0x1

    const-string v7, "contact_id"

    aput-object v7, v5, v4

    .line 641
    .local v5, "ID_PROJECTION":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 643
    .local v11, "context":Landroid/content/Context;
    if-nez v11, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 651
    .local v3, "cr":Landroid/content/ContentResolver;
    const-string v6, " _id in (Select data_id from view_data_usage_stat where times_used>0 )"

    .line 653
    .local v6, "selectionStr":Ljava/lang/String;
    const/4 v13, 0x0

    .line 654
    .local v13, "dataIdCount":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v19, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v16, 0x0

    .line 656
    .local v16, "iterator":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    move-object/from16 v18, v0

    .line 658
    .local v18, "mtempSelectedInfoHashSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 662
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_5

    .line 663
    :cond_2
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 664
    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 665
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 666
    add-int/lit8 v13, v13, 0x1

    .line 668
    :cond_3
    const/16 v4, 0xfa

    if-ne v13, v4, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 669
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->deleteFavoriteData(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/StringBuffer;)V

    .line 670
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 671
    const/4 v13, 0x0

    goto :goto_1

    .line 674
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 677
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 678
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->deleteFavoriteData(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/StringBuffer;)V

    .line 680
    :cond_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 681
    .local v9, "contactId":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 683
    .local v10, "contactfavoriteUri":Landroid/net/Uri;
    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    const-wide/16 v7, 0x1

    add-long v16, v16, v7

    .line 706
    const-wide/16 v7, 0x3c

    rem-long v7, v16, v7

    const-wide/16 v22, 0x0

    cmp-long v4, v7, v22

    if-nez v4, :cond_7

    .line 708
    :try_start_0
    const-string v4, "com.android.contacts"

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 714
    :goto_3
    const-wide/16 v16, 0x0

    .line 715
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 709
    :catch_0
    move-exception v14

    .line 710
    .local v14, "e":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 711
    .end local v14    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    .line 712
    .local v14, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v14}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_3

    .line 719
    .end local v9    # "contactId":Ljava/lang/Long;
    .end local v10    # "contactfavoriteUri":Landroid/net/Uri;
    .end local v14    # "e":Landroid/content/OperationApplicationException;
    :cond_8
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 721
    :try_start_1
    const-string v4, "com.android.contacts"

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 722
    :catch_2
    move-exception v14

    .line 723
    .local v14, "e":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 724
    .end local v14    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v14

    .line 725
    .local v14, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v14}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public addFavoriteContactList()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    .line 553
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 554
    .local v10, "values":Landroid/content/ContentValues;
    const-string v11, "starred"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 555
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 557
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 563
    .local v3, "cr":Landroid/content/ContentResolver;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v9, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v6, 0x0

    .line 565
    .local v6, "iterator":J
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    .line 566
    .local v8, "mtempSelectedInfoHashSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 567
    .local v0, "contactId":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 569
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    const-wide/16 v11, 0x1

    add-long/2addr v6, v11

    .line 575
    const-wide/16 v11, 0x3c

    rem-long v11, v6, v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_2

    .line 577
    :try_start_0
    const-string v11, "com.android.contacts"

    invoke-virtual {v3, v11, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 583
    :goto_2
    const-wide/16 v6, 0x0

    .line 584
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 578
    :catch_0
    move-exception v4

    .line 579
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 580
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 581
    .local v4, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v4}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_2

    .line 587
    .end local v0    # "contactId":Ljava/lang/Long;
    .end local v1    # "contactUri":Landroid/net/Uri;
    .end local v4    # "e":Landroid/content/OperationApplicationException;
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 589
    :try_start_1
    const-string v11, "com.android.contacts"

    invoke-virtual {v3, v11, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 590
    :catch_2
    move-exception v4

    .line 591
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 592
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v4

    .line 593
    .local v4, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v4}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearSelectedArray()V
    .locals 1

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->checkIfRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 436
    :cond_0
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 215
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 216
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, "adapter":Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 191
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 197
    :goto_0
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setDisplayPhotos(Z)V

    .line 198
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setQuickContactEnabled(Z)V

    .line 199
    iget v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setActionCode(I)V

    .line 205
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
    :goto_1
    return-object v0

    .line 195
    .restart local v0    # "adapter":Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
    :cond_0
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    goto :goto_0

    .line 202
    .end local v0    # "adapter":Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
    :cond_1
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, "adapter":Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 204
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_1
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 144
    const v0, 0x7f0401d9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 150
    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setSelectedInfoHashSet(Ljava/util/Set;)V

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDoneButton(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->sIsTablet:Z

    .line 108
    if-eqz p1, :cond_1

    .line 109
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    .line 114
    :goto_1
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    goto :goto_1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 118
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActivity:Landroid/app/Activity;

    .line 121
    sget-boolean v2, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->sIsTablet:Z

    if-eqz v2, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->createCustomSearchbar()V

    .line 125
    :cond_0
    const v2, 0x7f0401f4

    invoke-virtual {p1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 126
    .local v1, "marginView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    const v3, 0x7f0901a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    .line 130
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    const v3, 0x7f0901e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListFrame:Landroid/view/View;

    .line 131
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListFrame:Landroid/view/View;

    if-nez v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    const v3, 0x7f0901a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListFrame:Landroid/view/View;

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    const v3, 0x7f090037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    .local v0, "mEmptyViewText":Landroid/widget/TextView;
    iget v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    const/16 v3, 0x15f

    if-ne v2, v3, :cond_2

    .line 136
    const v2, 0x7f0e02e2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    const v3, 0x7f090431

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mNoMatchView:Landroid/view/View;

    .line 140
    return-void
.end method

.method public onDeSelectAllClicked()V
    .locals 1

    .prologue
    .line 849
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSelectAllChecked(Z)V

    .line 850
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 384
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAddAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAddAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAddAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAddAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->cancel(Z)Z

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    .line 387
    .local v0, "lFavFrg":Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mFavObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_2

    .line 388
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mFavObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 390
    :cond_2
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDestroy()V

    .line 391
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 231
    .local v0, "selectedId":J
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->isSelectedContact(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->removeContact(IJ)V

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->addSelectedContact(IJ)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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
    .line 453
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEnabled:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 458
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->hasFavUpdatedInBg()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->invalidateSelectedMap(Landroid/database/Cursor;)V

    .line 461
    :cond_2
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    const/16 v1, 0x15f

    if-ne v0, v1, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setContactCursor(Landroid/database/Cursor;)V

    .line 463
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onSelectedInfoChanged()V

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDoneButton(I)V

    goto :goto_0

    .line 465
    :cond_3
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    const/16 v1, 0x15e

    if-ne v0, v1, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 466
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onSelectedInfoChanged()V

    goto :goto_0

    .line 467
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDoneButton(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    const-string v1, "selectedInfo"

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 163
    const-string v0, "filter"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 164
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    return-void
.end method

.method public onSelectAllClicked()V
    .locals 1

    .prologue
    .line 844
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSelectAllChecked(Z)V

    .line 845
    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setSelectedInfoHashSet(Ljava/util/Set;)V

    .line 428
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDoneButton(I)V

    .line 430
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 173
    if-nez p1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    .line 178
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 179
    const-string v0, "selectedInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    goto :goto_0
.end method

.method public runAddFavoriteListThread()V
    .locals 2

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->checkIfRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->markAsItsRunning()V

    .line 618
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;-><init>(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAddAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAddAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 621
    :cond_0
    return-void
.end method

.method public runDeleteFavoriteListThread()V
    .locals 2

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->checkIfRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->markAsItsRunning()V

    .line 628
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteAllTaskFavoriteList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteAllTaskFavoriteList;-><init>(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mDeleteAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteAllTaskFavoriteList;

    .line 629
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mDeleteAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteAllTaskFavoriteList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteAllTaskFavoriteList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 631
    :cond_0
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 449
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "delaySelection"    # Z

    .prologue
    .line 360
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 361
    return-void
.end method

.method public setSearchView(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchMode:Z

    .line 184
    return-void
.end method

.method public setonFavoritesActionBarUpdateListener(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListener:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;

    .line 546
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 5
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 501
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mNoMatchView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 507
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 508
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 509
    if-eqz v0, :cond_2

    .line 510
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListFrame:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 526
    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchMode:Z

    if-nez v2, :cond_5

    .line 527
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    .line 513
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListFrame:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 514
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 517
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 518
    if-eqz v0, :cond_4

    .line 519
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListFrame:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 520
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 522
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListFrame:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 523
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 531
    :cond_5
    const/4 v1, -0x1

    .line 532
    .local v1, "softInputMode":I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 533
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 534
    const/16 v1, 0x30

    .line 538
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v1, v2, :cond_0

    .line 539
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    .line 536
    :cond_6
    const/16 v1, 0x10

    goto :goto_2
.end method
