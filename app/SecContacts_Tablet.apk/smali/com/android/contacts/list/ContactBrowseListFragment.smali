.class public abstract Lcom/android/contacts/list/ContactBrowseListFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "ContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUTOSELECT_FIRST_FOUND_CONTACT_MIN_QUERY_LENGTH:I = 0x2

.field private static final DELAY_AUTOSELECT_FIRST_FOUND_CONTACT_MILLIS:I = 0x1f4

.field private static final KEY_FILTER:Ljava/lang/String; = "filter"

.field private static final KEY_LAST_SELECTED_POSITION:Ljava/lang/String; = "lastSelected"

.field private static final KEY_SELECTED_URI:Ljava/lang/String; = "selectedUri"

.field private static final KEY_SELECTION_VERIFIED:Ljava/lang/String; = "selectionVerified"

.field private static final MESSAGE_AUTOSELECT_FIRST_FOUND_CONTACT:I = 0x1

.field private static final PERSISTENT_SELECTION_PREFIX:Ljava/lang/String; = "defaultContactBrowserSelection"

.field private static final TAG:Ljava/lang/String; = "ContactList"


# instance fields
.field private mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

.field private mDelaySelection:Z

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mHandler:Landroid/os/Handler;

.field private mLastSelectedPosition:I

.field protected mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

.field private mPersistentSelectionPrefix:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRefreshingContactUri:Z

.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field private mSelectedContactUri:Landroid/net/Uri;

.field private mSelectionPersistenceRequested:Z

.field private mSelectionRequired:Z

.field private mSelectionToScreenRequested:Z

.field private mSelectionVerified:Z

.field private mSmoothScrollRequested:Z

.field protected mStartedLoading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 100
    const-string v0, "defaultContactBrowserSelection"

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    .line 105
    return-void
.end method

.method private checkSelection()V
    .locals 15

    .prologue
    const/4 v14, -0x6

    const/4 v13, 0x0

    .line 454
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    if-eqz v1, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    if-nez v1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isLoadingDirectoryList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 467
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    if-eqz v0, :cond_0

    .line 471
    const/4 v8, 0x1

    .line 472
    .local v8, "directoryLoading":Z
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionCount()I

    move-result v6

    .line 473
    .local v6, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_2

    .line 474
    invoke-virtual {v0, v10}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v11

    .line 475
    .local v11, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v1, v11, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v1, :cond_5

    move-object v7, v11

    .line 476
    check-cast v7, Lcom/android/contacts/list/DirectoryPartition;

    .line 477
    .local v7, "directory":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 478
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v8

    .line 484
    .end local v7    # "directory":Lcom/android/contacts/list/DirectoryPartition;
    .end local v11    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_2
    if-nez v8, :cond_0

    .line 488
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    .line 491
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactPosition()I

    move-result v12

    .line 492
    .local v12, "selectedPosition":I
    const/4 v1, -0x1

    if-eq v12, v1, :cond_6

    .line 493
    iput v12, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 532
    :goto_2
    iput-boolean v13, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 533
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 535
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    if-eqz v1, :cond_3

    .line 536
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveSelectedUri(Landroid/net/Uri;)V

    .line 537
    iput-boolean v13, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    .line 540
    :cond_3
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    if-eqz v1, :cond_4

    .line 541
    invoke-virtual {p0, v12}, Lcom/android/contacts/list/ContactBrowseListFragment;->requestSelectionToScreen(I)V

    .line 545
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidateViews()V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_3
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onSelectionChange()V

    goto :goto_0

    .line 473
    .end local v12    # "selectedPosition":I
    .restart local v11    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 495
    .end local v11    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .restart local v12    # "selectedPosition":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 496
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mDelaySelection:Z

    if-eqz v1, :cond_a

    .line 497
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->selectFirstFoundContactAfterDelay()V

    .line 498
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onSelectionChange()V

    goto/16 :goto_0

    .line 503
    :cond_7
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-eqz v1, :cond_9

    .line 509
    iput-boolean v13, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 512
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v1, v14, :cond_8

    .line 514
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->reloadData()V

    goto/16 :goto_0

    .line 517
    :cond_8
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->notifyInvalidSelection()V

    goto/16 :goto_0

    .line 520
    :cond_9
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v1, v14, :cond_a

    .line 524
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->notifyInvalidSelection()V

    goto/16 :goto_0

    .line 528
    :cond_a
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveSelectedUri(Landroid/net/Uri;)V

    .line 529
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->selectDefaultContact()V

    goto :goto_2

    .line 546
    :catch_0
    move-exception v9

    .line 547
    .local v9, "e":Landroid/database/StaleDataException;
    invoke-virtual {v9}, Landroid/database/StaleDataException;->printStackTrace()V

    goto :goto_3
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/android/contacts/list/ContactBrowseListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactBrowseListFragment$1;-><init>(Lcom/android/contacts/list/ContactBrowseListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPersistentSelectionKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    .line 718
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilter;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyInvalidSelection()V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onInvalidSelection()V

    .line 667
    :cond_0
    return-void
.end method

.method private parseSelectedContactUri()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    .line 380
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 381
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    const-string v3, "directory"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "directoryParam":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-wide v2, v4

    :goto_0
    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    .line 385
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 387
    .local v1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 388
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 389
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    .line 406
    .end local v0    # "directoryParam":Ljava/lang/String;
    .end local v1    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 383
    .restart local v0    # "directoryParam":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 391
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v6, :cond_3

    .line 393
    iput-object v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 394
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1

    .line 396
    :cond_3
    const-string v2, "ContactList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported contact URI: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iput-object v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 398
    iput-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1

    .line 402
    .end local v0    # "directoryParam":Ljava/lang/String;
    :cond_4
    iput-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    .line 403
    iput-object v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 404
    iput-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1
.end method

.method private restoreFilter()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 712
    return-void
.end method

.method private restoreSelectedUri(Z)V
    .locals 7
    .param p1, "willReloadData"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 694
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-eqz v0, :cond_0

    .line 704
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 699
    .local v6, "selectedUri":Ljava/lang/String;
    if-nez v6, :cond_1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, p1

    .line 700
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0

    .line 702
    :cond_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0
.end method

.method private saveFilter()V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    .line 708
    return-void
.end method

.method private saveSelectedUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    .line 682
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 683
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1

    .line 684
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 688
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 686
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private setSelectedContactUri(Landroid/net/Uri;ZZZZ)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "required"    # Z
    .param p3, "smoothScroll"    # Z
    .param p4, "persistent"    # Z
    .param p5, "willReloadData"    # Z

    .prologue
    .line 352
    iput-boolean p3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    .line 353
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 355
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 357
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 358
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 359
    iput-boolean p4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    .line 360
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 361
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    .line 363
    if-nez p5, :cond_2

    .line 366
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 367
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    if-eqz v0, :cond_2

    .line 368
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    .line 370
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidateViews()V

    .line 375
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->refreshSelectedContactUri()V

    .line 377
    :cond_3
    return-void
.end method


# virtual methods
.method public addToFavorites(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onAddToFavoritesAction(Landroid/net/Uri;)V

    .line 651
    :cond_0
    return-void
.end method

.method public callContact(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onCallContactAction(Landroid/net/Uri;)V

    .line 659
    :cond_0
    return-void
.end method

.method protected configureAdapter()V
    .locals 8

    .prologue
    .line 410
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 412
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 413
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    if-nez v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v7

    .line 418
    .local v7, "searchMode":Z
    if-nez v7, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 420
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_2

    .line 422
    :cond_1
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    .line 428
    :cond_2
    const/4 v6, 0x1

    .line 430
    .local v6, "includeProfile":Z
    if-eqz v7, :cond_4

    .line 431
    const/4 v6, 0x0

    .line 437
    :cond_3
    :goto_1
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactListAdapter;->setIncludeProfile(Z)V

    goto :goto_0

    .line 432
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/16 v2, -0x11

    if-ne v1, v2, :cond_3

    .line 435
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public createNewContact()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onCreateNewContactAction()V

    .line 634
    :cond_0
    return-void
.end method

.method public deleteContact(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onDeleteContactAction(Landroid/net/Uri;)V

    .line 647
    :cond_0
    return-void
.end method

.method public editContact(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onEditContactAction(Landroid/net/Uri;)V

    .line 643
    :cond_0
    return-void
.end method

.method protected finish()V
    .locals 1

    .prologue
    .line 671
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->finish()V

    .line 672
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onFinishAction()V

    .line 673
    :cond_0
    return-void
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public getSelectedContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    .line 186
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 187
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreFilter()V

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    .line 189
    return-void
.end method

.method protected onContactUriQueryFinished(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    .line 281
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 282
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    .line 283
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->checkSelection()V

    .line 284
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 748
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDestroy()V

    .line 749
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 751
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->destroy()V

    .line 753
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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
    .line 442
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 446
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->refreshSelectedContactUri()V

    .line 447
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 730
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onPause()V

    .line 731
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 733
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->pause()V

    .line 735
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 739
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onResume()V

    .line 740
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 742
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->resume()V

    .line 744
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 248
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 249
    const-string v0, "selectedUri"

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 250
    const-string v0, "selectionVerified"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    const-string v0, "lastSelected"

    iget v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    return-void
.end method

.method protected prepareEmptyView()V
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSyncActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    const v0, 0x7f0e00a7

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->setEmptyText(I)V

    goto :goto_0

    .line 294
    :cond_1
    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->setEmptyText(I)V

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    const v0, 0x7f0e00a6

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->setEmptyText(I)V

    goto :goto_0

    .line 300
    :cond_3
    const v0, 0x7f0e00a8

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->setEmptyText(I)V

    goto :goto_0
.end method

.method protected refreshSelectedContactUri()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 255
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->cancel()V

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSelectionVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    :goto_0
    return-void

    .line 263
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    .line 265
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    goto :goto_0

    .line 270
    :cond_2
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 272
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    goto :goto_0

    .line 274
    :cond_3
    new-instance v1, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;-><init>(Lcom/android/contacts/list/ContactBrowseListFragment;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    .line 275
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public reloadData()V
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mStartedLoading:Z

    if-eqz v0, :cond_0

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 623
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 624
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 626
    :cond_0
    return-void
.end method

.method public reloadDataAndSetSelectedUri(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    .line 615
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    .line 616
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->reloadData()V

    .line 617
    return-void
.end method

.method public removeFromFavorites(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onRemoveFromFavoritesAction(Landroid/net/Uri;)V

    .line 655
    :cond_0
    return-void
.end method

.method protected requestSelectionToScreen(I)V
    .locals 3
    .param p1, "selectedPosition"    # I

    .prologue
    .line 594
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/AutoScrollListView;

    .line 596
    .local v0, "listView":Lcom/android/contacts/widget/AutoScrollListView;
    invoke-virtual {v0}, Lcom/android/contacts/widget/AutoScrollListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/widget/AutoScrollListView;->requestPositionToScreen(IZ)V

    .line 598
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 600
    .end local v0    # "listView":Lcom/android/contacts/widget/AutoScrollListView;
    :cond_0
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 234
    if-nez p1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 238
    :cond_0
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 239
    const-string v0, "selectedUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 240
    const-string v0, "selectionVerified"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 241
    const-string v0, "lastSelected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 242
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    goto :goto_0
.end method

.method protected selectDefaultContact()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 575
    const/4 v1, 0x0

    .line 576
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    .line 577
    .local v6, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    iget v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 578
    invoke-virtual {v6}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v7

    .line 579
    .local v7, "count":I
    iget v8, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 580
    .local v8, "pos":I
    if-lt v8, v7, :cond_0

    if-lez v7, :cond_0

    .line 581
    add-int/lit8 v8, v7, -0x1

    .line 583
    :cond_0
    invoke-virtual {v6, v8}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 586
    .end local v7    # "count":I
    .end local v8    # "pos":I
    :cond_1
    if-nez v1, :cond_2

    .line 587
    invoke-virtual {v6}, Lcom/android/contacts/list/ContactListAdapter;->getFirstContactUri()Landroid/net/Uri;

    move-result-object v1

    .line 590
    :cond_2
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    .line 591
    return-void
.end method

.method public selectFirstFoundContactAfterDelay()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 561
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 562
    .local v6, "handler":Landroid/os/Handler;
    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 564
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v7

    .line 565
    .local v7, "queryString":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 567
    const-wide/16 v0, 0x1f4

    invoke-virtual {v6, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 203
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;Z)V
    .locals 3
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;
    .param p2, "restoreSelectedUri"    # Z

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    :cond_2
    const-string v0, "ContactList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 218
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveFilter()V

    .line 219
    if-eqz p2, :cond_3

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->reloadData()V

    goto :goto_0
.end method

.method public setOnContactListActionListener(Lcom/android/contacts/list/OnContactBrowserActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/OnContactBrowserActionListener;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    .line 630
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "delaySelection"    # Z

    .prologue
    .line 318
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mDelaySelection:Z

    .line 319
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 320
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 194
    if-nez p1, :cond_0

    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    .line 197
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 199
    :cond_1
    return-void
.end method

.method public setSelectedContactUri(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 313
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    .line 314
    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 333
    return-void
.end method

.method public smsContact(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onSmsContactAction(Landroid/net/Uri;)V

    .line 663
    :cond_0
    return-void
.end method

.method protected startLoading()V
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mStartedLoading:Z

    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 611
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 612
    return-void
.end method

.method public viewContact(Landroid/net/Uri;)V
    .locals 6
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 637
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    .line 638
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onViewContactAction(Landroid/net/Uri;)V

    .line 639
    :cond_0
    return-void
.end method
